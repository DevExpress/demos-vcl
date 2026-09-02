unit dxCustomDemoFrameUnit;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, dxPSCore, dxPgsDlg, cxLookAndFeels, cxLookAndFeelPainters,
  dxOffice11,
  dxDemoObjectInspector, cxLabel,
  cxGraphics, cxControls, cxContainer, cxEdit, dxDemoUtils, cxImage, cxGroupBox, dxGDIPlusClasses, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxToggleSwitch, cxCheckBox, cxGeometry, dxUIAdorners, System.Actions, dxSkinsCore;

type
  TdxDemoFrameSetupMode = (fsmVisible, fsmSizeable);
  TdxDemoFrameSetupModes = set of TdxDemoFrameSetupMode;

type

  TdxCustomDemoFrameClass = class of TdxCustomDemoFrame;

  TdxCustomDemoFrame = class(TFrame)
    lcFrame: TdxLayoutControl;
    lcFrameGroup_Root: TdxLayoutGroup;
    lgContent: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    ActionList1: TActionList;
    amAdorners: TdxUIAdornerManager;
    lcControlContent: TdxLayoutControl;
    lcControlContentGroup_Root: TdxLayoutGroup;
    lgParentContent: TdxLayoutGroup;
    liParentContent: TdxLayoutItem;
    procedure amAdornersActiveChanged(AManager: TdxUIAdornerManager; AAdorners: TdxCustomAdorners);
  private
    FCaption: string;
    FChangingVisibility: Boolean;
    FReportLink: TBasedxReportLink;
    FShowingCounter: Integer;

    function GetActive: Boolean;
    function GetActualTouchMode: Boolean;
    function GetComponentPrinter: TdxComponentPrinter;
    function GetHasHint: Boolean;
    function GetPrintStyleManager: TdxPrintStyleManager;
    function GetShowingCounter: Integer;
    function GetScaleFactor: TdxScaleFactor;
  protected
    procedure AddOperationsToPopupMenu; virtual;
    procedure AssignGlyph(AGlyph: TdxSmartGlyph; AImage: TcxImage);
    procedure CheckActualTouchMode;
    procedure DoCheckActualTouchMode; virtual;
    function GetCaption: string;
    function GetDescription: string; virtual;
    function GetHint: string; virtual;
    function GetInspectedObject: TPersistent; virtual;
    function GetInitialShowInspector: Boolean; virtual;
    function GetPrintableComponent: TComponent; virtual;
    function GetSplashCaption: string; virtual;
    function NeedInspector: Boolean; virtual;
    function NeedSetup: Boolean; virtual;
    function NeedWaitForm: Boolean; virtual;

    procedure CheckControlStartProperties; virtual;
    procedure CheckDescription;
    procedure SetCaption(Value: string); virtual;

    function CreateReportLink: TBasedxReportLink;
    function GetReportLink: TBasedxReportLink; virtual;
    function GetReportLinkClass: TdxReportLinkClass;
    procedure PrepareLink(AReportLink: TBasedxReportLink); virtual;

  {$IFDEF DELPHIBERLIN}
    procedure ChangeScale(M, D: Integer; isDpiChange: Boolean); override; final;
  {$ELSE}
    procedure ChangeScale(M, D: Integer); overload; override; final;
  {$ENDIF}
    procedure ChangeScaleEx(M, D: Integer; isDpiChange: Boolean); virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
    property HasHint: Boolean read GetHasHint;
    property ShowingCounter: Integer read GetShowingCounter;
  public
    constructor Create(AOwner: TComponent); override;
    procedure BeforeDestruction; override;

    procedure AfterShow; virtual;
    function CanDeactivate: Boolean; virtual;
    procedure ChangeVisibility(AShow: Boolean); virtual;
    procedure ChangeGuidesVisibility(AShow: Boolean); virtual;
    function GetReportLinkName: string; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean); virtual;
    function ExportFileName: string; virtual;
    function IsSupportExport: Boolean; virtual;

    property Active: Boolean read GetActive;
    property Caption: string read GetCaption write SetCaption;
    property ComponentPrinter: TdxComponentPrinter read GetComponentPrinter;
    property InspectedObject: TPersistent read GetInspectedObject;
    property PrintableComponent: TComponent read GetPrintableComponent;
    property PrintStyleManager: TdxPrintStyleManager read GetPrintStyleManager;
    property ReportLink: TBasedxReportLink read GetReportLink;
    property ScaleFactor: TdxScaleFactor read GetScaleFactor;
  end;

implementation

{$R *.DFM}

uses
  Main, dxBar, dxBarExtItems, System.Types, uStrsConst, System.Math, dxSplashForms, dxThreading, dxFrames, dxDPIAwareUtils;

{ TdxFrame }

constructor TdxCustomDemoFrame.Create(AOwner: TComponent);
begin
  if NeedWaitForm then
    TdxSplashFormManager.WaitForm.Show(Application.MainForm); 
  inherited Create(AOwner);
  Visible := False;
  AddOperationsToPopupMenu;
  lcFrame.LayoutLookAndFeel := frmMain.dxLayoutSkinLookAndFeel1;
  liDescription.LookAndFeel := frmMain.dxLayoutSkinLookAndFeelDescription;
  lcControlContent.LayoutLookAndFeel := frmMain.dxLayoutSkinLookAndFeel1;
  LookAndFeelChanged;
  FShowingCounter := 0;
end;

function TdxCustomDemoFrame.GetActive: Boolean;
begin
  Result := Visible;
end;

function TdxCustomDemoFrame.GetActualTouchMode: Boolean;
begin
  Result := frmMain.dxSkinController1.TouchMode;
end;

function TdxCustomDemoFrame.GetCaption: string;
begin
  Result := FCaption;
end;

function TdxCustomDemoFrame.GetComponentPrinter: TdxComponentPrinter;
var
  I: Integer;
  Component: TComponent;
begin
  with frmMain do
    for I := 0 to ComponentCount - 1 do
    begin
      Component := Components[I];
      if Component is TdxComponentPrinter then
      begin
        Result := TdxComponentPrinter(Component);
        Exit;
      end;
    end;
  Result := nil;
end;

function TdxCustomDemoFrame.GetHasHint: Boolean;
begin
  Result := GetHint <> '';
end;

function TdxCustomDemoFrame.GetPrintStyleManager: TdxPrintStyleManager;
var
  I: Integer;
  Component: TComponent;
begin
  with frmMain do
    for I := 0 to ComponentCount - 1 do
    begin
      Component := Components[I];
      if Component is TdxPrintStyleManager then
      begin
        Result := TdxPrintStyleManager(Component);
        Exit;
      end;
    end;
  Result := nil;
end;

function TdxCustomDemoFrame.GetScaleFactor: TdxScaleFactor;
begin
  Result := dxGetScaleFactor(GetParentForm(Self));
end;

function TdxCustomDemoFrame.GetShowingCounter: Integer;
begin
  Result := dxFrameManager.ActiveFrameInfo.ShowingCounter;
end;

procedure TdxCustomDemoFrame.SetCaption(Value: string);
begin
  FCaption := ' ' + Value;
end;

function TdxCustomDemoFrame.GetReportLink: TBasedxReportLink;
begin
  if FReportLink = nil then
    FReportLink := CreateReportLink;
  Result := FReportLink;

  if Result <> nil then
    with Result do
    begin
      ReportTitle.Text := Caption;
      RestoreFromOriginal;
      Component := PrintableComponent;
    end;
end;

procedure TdxCustomDemoFrame.CheckControlStartProperties;
begin
//
end;

procedure TdxCustomDemoFrame.CheckDescription;
begin
  liDescription.Caption := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxCustomDemoFrame.AddOperationsToPopupMenu;
begin
end;

procedure TdxCustomDemoFrame.AssignGlyph(AGlyph: TdxSmartGlyph; AImage: TcxImage);
var
  ABitmap: TcxBitmap32;
begin
  ABitmap := TcxBitmap32.CreateSize(AImage.ClientWidth - 2, AImage.ClientHeight - 2);
  try
    ABitmap.Clear;
    TdxImageDrawer.DrawImage(ABitmap.cxCanvas, Rect(0, 0, ABitmap.Width, ABitmap.Height), AImage.Picture.Graphic, ifmNormal);
    AGlyph.Assign(ABitmap);
  finally
    ABitmap.Free;
  end;
end;

procedure TdxCustomDemoFrame.BeforeDestruction;
begin
  TdxUIThreadSyncService.Unsubscribe(Self);
  inherited BeforeDestruction;
end;

procedure TdxCustomDemoFrame.CheckActualTouchMode;
begin
  lcFrame.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcFrame.EndUpdate(False);
  end;
end;

procedure TdxCustomDemoFrame.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

function TdxCustomDemoFrame.GetDescription: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.GetHint: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.GetInspectedObject: TPersistent;
begin
  Result := nil;
end;

function TdxCustomDemoFrame.GetInitialShowInspector: Boolean;
begin
  Result := False;
end;

function TdxCustomDemoFrame.GetPrintableComponent: TComponent;
begin
  Result := nil;
end;

function TdxCustomDemoFrame.GetSplashCaption: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.NeedInspector: Boolean;
begin
  Result := GetInspectedObject <> nil;
end;

function TdxCustomDemoFrame.NeedSetup: Boolean;
begin
  Result := False;
end;

function TdxCustomDemoFrame.NeedWaitForm: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.LookAndFeelChanged;
begin
  Color := frmMain.Color;
  CheckActualTouchMode;
end;

procedure TdxCustomDemoFrame.AfterShow;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  Inc(FShowingCounter);
  if FShowingCounter = 1 then
    CheckControlStartProperties;
  CheckActualTouchMode;
  if NeedWaitForm then
    TdxUIThreadSyncService.EnqueueInvokeInUIThread(Self,
      procedure ()
      begin
        TdxSplashFormManager.WaitForm.Hide;
      end
      );
  frmMain.biCustomProperties.Visible := AVisible[NeedSetup];
  frmMain.biShowInspector.Visible := AVisible[InspectedObject <> nil];
end;

procedure TdxCustomDemoFrame.amAdornersActiveChanged(AManager: TdxUIAdornerManager; AAdorners: TdxCustomAdorners);
begin
  frmMain.ChangeShowGuidesState(amAdorners.Guides.Active);
end;

function TdxCustomDemoFrame.CanDeactivate: Boolean;
begin
  Result := True;
end;

procedure TdxCustomDemoFrame.ChangeVisibility(AShow: Boolean);
begin
  try
    FChangingVisibility := True;
    Visible := AShow;
    if AShow then
      CheckDescription
    else
      ChangeGuidesVisibility(False);
  finally
    FChangingVisibility := False;
  end;
end;

procedure TdxCustomDemoFrame.ChangeGuidesVisibility(AShow: Boolean);
begin
  amAdorners.Guides.Active := AShow;
end;

function TdxCustomDemoFrame.GetReportLinkName: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.CreateReportLink: TBasedxReportLink;
begin
  Result := ComponentPrinter.AddEmptyLink(GetReportLinkClass);
  if Result <> nil then
    PrepareLink(Result);
end;

function TdxCustomDemoFrame.GetReportLinkClass: TdxReportLinkClass;
begin
  if PrintableComponent <> nil then
    Result := dxPSCore.dxPSLinkClassByCompClass
      (TComponentClass(PrintableComponent.ClassType))
  else
    Result := nil;
end;

procedure TdxCustomDemoFrame.PrepareLink(AReportLink: TBasedxReportLink);
begin
  AReportLink.StyleManager := self.PrintStyleManager;
  AReportLink.Active := False;
end;

function TdxCustomDemoFrame.IsSupportExport: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean);
begin
end;

function TdxCustomDemoFrame.ExportFileName: string;
begin
  Result := 'dxExport';
end;

procedure TdxCustomDemoFrame.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

{$IFDEF DELPHIBERLIN}
procedure TdxCustomDemoFrame.ChangeScale(M, D: Integer; isDpiChange: Boolean);
begin
  ChangeScaleEx(M, D, isDpiChange);
end;
{$ELSE}
procedure TdxCustomDemoFrame.ChangeScale(M, D: Integer);
begin
  ChangeScaleEx(M, D, False);
end;
{$ENDIF}

procedure TdxCustomDemoFrame.ChangeScaleEx(M, D: Integer; isDpiChange: Boolean);
begin
  inherited ChangeScale(M, D{$IFDEF DELPHIBERLIN}, isDpiChange{$ENDIF});
end;

end.
