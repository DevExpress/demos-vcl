unit WizardControlDemoSetupForm;

{$I cxVer.inc}
                
interface

uses
  dxSkinsForm,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox, cxListBox,
  dxCustomWizardControl, dxWizardControl, cxGroupBox, cxRadioGroup, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLabel, Vcl.ComCtrls, cxTreeView,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutControl, dxLayoutLookAndFeels, dxGalleryControl, Vcl.ImgList, cxClasses,
  dxSkinsCore, dxSkinsDefaultPainters, dxForms, cxImageList, dxSkinNames;

type
  { TdxWizardControlDemoSetupForm }

  TdxWizardControlDemoSetupForm = class(TdxForm)
    btnStartDemo: TcxButton;
    cbSkinForm: TcxCheckBox;
    dxLayoutCxLookAndFeel: TdxLayoutCxLookAndFeel;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxSetupFormLayoutControl: TdxLayoutControl;
    dxSetupFormLayoutControlGroup_Root: TdxLayoutGroup;
    dxSetupFormLayoutControlItem1: TdxLayoutItem;
    dxSetupFormLayoutControlItem3: TdxLayoutItem;
    dxSetupFormLayoutControlItem4: TdxLayoutItem;
    dxSetupFormLayoutControlItem5: TdxLayoutItem;
    dxSetupFormLayoutControlItem6: TdxLayoutItem;
    lbChooseSkin: TcxLabel;
    rgTransitionEffect: TcxRadioGroup;
    rgViewStyle: TcxRadioGroup;
    cxImageList1: TcxImageList;
    dxGalleryControl1: TdxGalleryControl;
    dxSetupFormLayoutControlItem2: TdxLayoutItem;
    dxSetupFormLayoutControlGroup2: TdxLayoutGroup;
    dxSetupFormLayoutControlGroup3: TdxLayoutGroup;
    dxSetupFormLayoutControlGroup6: TdxLayoutGroup;
    procedure cbSkinFormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxGalleryControl1ItemClick(Sender: TObject; AItem: TdxGalleryControlItem);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FSkinController: TdxSkinController;
    function GetSkinForm: Boolean;
    function GetTransitionEffect: TdxWizardControlTransitionEffect;
    function GetViewStyle: TdxWizardControlViewStyle;
    procedure PopulateGallery(AGroups: TdxGalleryControlGroups);
  public
    property SkinForm: Boolean read GetSkinForm;
    property TransitionEffect: TdxWizardControlTransitionEffect read GetTransitionEffect;
    property ViewStyle: TdxWizardControlViewStyle read GetViewStyle;
  end;

  TItemInfo = class
  private
    FDisplayName: string;
    FGroupName: string;
    FImageIndex: TcxImageIndex;
    FOwner: TdxWizardControlDemoSetupForm;
  protected
    procedure DoApplyStyle; virtual; abstract;
    procedure GetDetails(ADetails: TdxSkinDetails); virtual;
  public
    constructor Create(AOwner: TdxWizardControlDemoSetupForm);
    procedure ApplyStyle; virtual;

    property DisplayName: string read FDisplayName;
    property GroupName: string read FGroupName;
    property ImageIndex: TcxImageIndex read FImageIndex;
  end;

  TLFItemInfo = class(TItemInfo)
  private
    FLookAndFeelStyle: TcxLookAndFeelStyle;
  protected
    procedure DoApplyStyle; override;
    procedure GetPainterDetails(APainter: TcxCustomLookAndFeelPainter);
  public
    constructor Create(AOwner: TdxWizardControlDemoSetupForm; APainter: TcxCustomLookAndFeelPainter);
  end;

  TSkinItemInfo = class(TItemInfo)
  private
    FName: string;
  protected
    procedure DoApplyStyle; override;
    procedure GetDetails(ADetails: TdxSkinDetails); override;
  public
    constructor Create(AOwner: TdxWizardControlDemoSetupForm; ADetails: TdxSkinDetails);
    property Name: string read FName;
  end;

implementation

uses
  dxCore, dxDemoUtils;

{$R *.dfm}

const
  sGroupNameBuiltInStyles = 'Built-In Styles';
  sGroupNameOfficeSkins = 'Office Skins';
  sGroupNameVectorSkins = 'Vector Skins';

{ TdxWizardControlDemoSetupForm }

function TdxWizardControlDemoSetupForm.GetSkinForm: Boolean;
begin
  Result := cbSkinForm.Checked and cbSkinForm.Enabled;
end;
 
function TdxWizardControlDemoSetupForm.GetTransitionEffect:
  TdxWizardControlTransitionEffect;
const
  TransitionEffectMap: array [0..2] of TdxWizardControlTransitionEffect =
    (wcteNone, wcteFade, wcteSlide);
begin
  Result := TransitionEffectMap[rgTransitionEffect.ItemIndex];
end;

function TdxWizardControlDemoSetupForm.GetViewStyle: TdxWizardControlViewStyle;
const
  ViewStyleMap: array[0..1] of TdxWizardControlViewStyle = (wcvsAero, wcvsWizard97);
begin
  Result := ViewStyleMap[rgViewStyle.ItemIndex];
end;
 
procedure TdxWizardControlDemoSetupForm.PopulateGallery(AGroups: TdxGalleryControlGroups);

  procedure AddGroupAndItem(AItemInfo: TItemInfo);
  var
    AGroup: TdxGalleryControlGroup;
    AItem: TdxGalleryControlItem;
  begin
    if not AGroups.FindByCaption(AItemInfo.GroupName, AGroup) then
    begin
      AGroup := AGroups.Add;
      AGroup.Caption := AItemInfo.GroupName;
    end;
    AItem := AGroup.Items.Add;
    AItem.Caption := AItemInfo.DisplayName;
    AItem.ImageIndex := AItemInfo.ImageIndex;
    AItem.Tag := TdxNativeUInt(AItemInfo);
  end;

var
  AGroup: TdxGalleryControlGroup;
  APainter: TcxCustomLookAndFeelPainter;
  I, J: Integer;
  AStream: TStream;
  AReader: TdxSkinBinaryReader;
  ADetails: TdxSkinDetails;
  AItemInfo: TItemInfo;
  ADefaultItemCaption: string;
begin
  ADefaultItemCaption := '';
  AGroups.BeginUpdate;
  try
    AGroups.Clear;
    for I := 0 to cxLookAndFeelPaintersManager.Count - 1 do
    begin
      APainter := cxLookAndFeelPaintersManager.Items[I];
      if not APainter.IsInternalPainter then
      begin
        AItemInfo := TLFItemInfo.Create(Self, APainter);
        AddGroupAndItem(AItemInfo);
      end;
    end;
    if GetSkinResFileName <> '' then
    begin
      AStream := TFileStream.Create(GetSkinResFileName, fmOpenRead or fmShareDenyNone);
      try
        AReader := TdxSkinBinaryReader.Create(AStream, True);
        try
          for I := 0 to AReader.Count - 1 do
          begin
            ADetails := AReader.SkinDetails[I];
            if ADetails.GroupName = '' then
              Continue;
            AItemInfo := TSkinItemInfo.Create(Self, ADetails);
            if TSkinItemInfo(AItemInfo).Name = sdxFirstSelectedSkinName then
              ADefaultItemCaption := TSkinItemInfo(AItemInfo).DisplayName;
            AddGroupAndItem(AItemInfo);
          end;
        finally
          AReader.Free;
        end;
      finally
        AStream.Free;
      end;
    end;

    if AGroups.FindByCaption(sGroupNameVectorSkins, AGroup) then
      AGroup.Index := 0;
    if AGroups.FindByCaption(sGroupNameBuiltInStyles, AGroup) then
      AGroup.Index := AGroups.Count - 1;

    if ADefaultItemCaption <> '' then
      for I := 0 to AGroups.Count - 1 do
      begin
        for J := 0 to AGroups.Groups[I].ItemCount - 1 do
          if AGroups.Groups[I].Items[J].Caption = ADefaultItemCaption then
          begin
            AGroups.Groups[I].Items[J].Checked := True;
            ADefaultItemCaption := '';
            Break;
          end;
        if ADefaultItemCaption = '' then
          Break;
      end
    else
      AGroups.Groups[0].Items[0].Checked := True;
  finally
    AGroups.EndUpdate;
  end;
end;

procedure TdxWizardControlDemoSetupForm.cbSkinFormClick(Sender: TObject);
begin
  if cbSkinForm.Checked then
    FSkinController := TdxSkinController.Create(Self)
  else
    FreeAndNil(FSkinController);
end;

procedure TdxWizardControlDemoSetupForm.dxGalleryControl1ItemClick(
  Sender: TObject; AItem: TdxGalleryControlItem);
begin
  TItemInfo(AItem.Tag).ApplyStyle;
end;

procedure TdxWizardControlDemoSetupForm.FormCreate(Sender: TObject);
begin
  PopulateGallery(dxGalleryControl1.Gallery.Groups);
  cbSkinForm.Checked := True;
end;

procedure TdxWizardControlDemoSetupForm.FormDestroy(Sender: TObject);
var
  I, J: Integer;
  AItemInfo: TItemInfo;
begin
  for I := 0 to dxGalleryControl1.Gallery.Groups.Count - 1 do
    for J := 0 to dxGalleryControl1.Gallery.Groups[I].Items.Count - 1 do
    begin
      AItemInfo := TItemInfo(dxGalleryControl1.Gallery.Groups[I].Items[J].Tag);
      AItemInfo.Free;
    end;
end;

procedure TdxWizardControlDemoSetupForm.FormShow(Sender: TObject);
begin
  dxSetupFormLayoutControl.Width := dxSetupFormLayoutControlGroup_Root.Width;
  dxSetupFormLayoutControl.Height := dxSetupFormLayoutControlGroup_Root.Height;
end;

{ TLFItemInfo }

constructor TLFItemInfo.Create(AOwner: TdxWizardControlDemoSetupForm; APainter: TcxCustomLookAndFeelPainter);
begin
  inherited Create(AOwner);
  GetPainterDetails(APainter);
end;

procedure TLFItemInfo.DoApplyStyle;
begin
  RootLookAndFeel.SkinName := '';
  RootLookAndFeel.SetStyle(FLookAndFeelStyle);
  FOwner.cbSkinForm.Enabled := False;
end;

procedure TLFItemInfo.GetPainterDetails(APainter: TcxCustomLookAndFeelPainter);
var
  ADetails: TdxSkinDetails;
begin
  FLookAndFeelStyle := APainter.LookAndFeelStyle;
  if APainter.GetPainterDetails(ADetails) then
    GetDetails(ADetails)
  else
  begin
    FGroupName := sGroupNameBuiltInStyles;
    FDisplayName := APainter.LookAndFeelName;
    FImageIndex := 0;
  end;
end;

{ TSkinItemInfo }

constructor TSkinItemInfo.Create(AOwner: TdxWizardControlDemoSetupForm; ADetails: TdxSkinDetails);
begin
  inherited Create(AOwner);
  GetDetails(ADetails);
end;

procedure TSkinItemInfo.DoApplyStyle;
begin
  RootLookAndFeel.NativeStyle := False;
  dxSkinsUserSkinLoadFromFile(GetSkinResFileName, FName);
  RootLookAndFeel.SkinName := sdxSkinsUserSkinName;
  FOwner.cbSkinForm.Enabled := True;
end;

procedure TSkinItemInfo.GetDetails(ADetails: TdxSkinDetails);
begin
  inherited GetDetails(ADetails);
  FName := ADetails.Name;
end;

{ TItemInfo }

procedure TItemInfo.ApplyStyle;
begin
  RootLookAndFeel.BeginUpdate;
  try
    DoApplyStyle;
  finally
    RootLookAndFeel.EndUpdate;
  end;
end;

constructor TItemInfo.Create(AOwner: TdxWizardControlDemoSetupForm);
begin
  inherited Create;
  FOwner := AOwner;
end;

procedure TItemInfo.GetDetails(ADetails: TdxSkinDetails);
begin
  FGroupName := ADetails.GroupName;
  FDisplayName := ADetails.DisplayName;
  FImageIndex := FOwner.cxImageList1.Add(ADetails.Icons[sis48], nil);
end;

end.
