unit uUIAdorners;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxUIAdorners, Vcl.ActnList, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxRatingControl,
  cxTrackBar, cxProgressBar, cxTextEdit, cxLabel, cxMemo, dxZoomTrackBar,
  cxImage, dxGDIPlusClasses, dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, MainData, cxCheckBox, dxCore, cxMaskEdit,
  cxDropDownEdit, dxColorEdit, cxColorComboBox, cxSpinEdit, cxCalendar, cxDBEdit,
  cxImageComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxMessageDialog,
  cxButtonEdit, cxEditRepositoryItems;

type
  TfrmUIAdorners = class(TdxCustomDemoFrame)
    Image: TcxImage;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    rbShowBadges: TcxRadioButton;
    dxLayoutItem4: TdxLayoutItem;
    rbShowGuides: TcxRadioButton;
    dxLayoutItem9: TdxLayoutItem;
    rbNone: TcxRadioButton;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    bdgImage: TdxBadge;
    dxLayoutGroup5: TdxLayoutGroup;
    TableView: TcxGridDBTableView;
    Level: TcxGridLevel;
    Grid: TcxGrid;
    dxLayoutItem11: TdxLayoutItem;
    TableViewRecId: TcxGridDBColumn;
    TableViewNN: TcxGridDBColumn;
    clmCreatedOn: TcxGridDBColumn;
    clmSubject: TcxGridDBColumn;
    clmManager: TcxGridDBColumn;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup9: TdxLayoutGroup;
    gdFullName: TdxGuide;
    gdDepartment: TdxGuide;
    gdStatus: TdxGuide;
    gdHireDate: TdxGuide;
    gdEmail: TdxGuide;
    gdImage: TdxGuide;
    gdCreatedOn: TdxGuide;
    gdSubject: TdxGuide;
    gdManager: TdxGuide;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    cbUseImage: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cbAllowCallout: TcxCheckBox;
    dxLayoutItem13: TdxLayoutItem;
    ceBorderColor: TdxColorEdit;
    dxLayoutItem14: TdxLayoutItem;
    ceLayerColor: TdxColorEdit;
    dxLayoutItem15: TdxLayoutItem;
    seOpacity: TcxSpinEdit;
    dxLayoutItem16: TdxLayoutItem;
    imgBadge2Image: TcxImage;
    liBadge2Image: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    ceBadgeBackgroundColor: TdxColorEdit;
    dxLayoutItem18: TdxLayoutItem;
    teText: TcxTextEdit;
    dxLayoutItem20: TdxLayoutItem;
    dxLayoutGroup12: TdxLayoutGroup;
    cbHorizontalAlignment: TcxComboBox;
    dxLayoutItem21: TdxLayoutItem;
    cbVerticalAlignment: TcxComboBox;
    dxLayoutItem22: TdxLayoutItem;
    teFullName: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    edEmail: TcxDBButtonEdit;
    dxLayoutItem5: TdxLayoutItem;
    edDepartment: TcxDBLookupComboBox;
    dxLayoutItem6: TdxLayoutItem;
    edStatus: TcxDBImageComboBox;
    dxLayoutItem7: TdxLayoutItem;
    edHireDate: TcxDBDateEdit;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    bdgEmail: TdxBadge;
    cxEditRepository1: TcxEditRepository;
    edrepStatus: TcxEditRepositoryImageComboBoxItem;
    cbSelectBadge: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    imgBadge1Image: TcxImage;
    liBadge1Image: TdxLayoutItem;
    ceTextColor: TdxColorEdit;
    dxLayoutItem17: TdxLayoutItem;
    seHeight: TcxSpinEdit;
    dxLayoutItem23: TdxLayoutItem;
    seWidth: TcxSpinEdit;
    dxLayoutItem24: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    seOffsetX: TcxSpinEdit;
    dxLayoutItem19: TdxLayoutItem;
    seOffsetY: TcxSpinEdit;
    dxLayoutItem25: TdxLayoutItem;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    procedure rbShowAdornersClick(Sender: TObject);
    procedure bdgBadgeClick(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner);
    procedure amAdornersActiveChanged(AManager: TdxUIAdornerManager; AAdorners: TdxCustomAdorners);
    procedure amAdornersGuideGetCalloutPopupControl(AManager: TdxUIAdornerManager; AGuide: TdxGuide;
      var AControl: TWinControl);
    procedure cbAllowCalloutPropertiesEditValueChanged(Sender: TObject);
    procedure ceBorderColorPropertiesEditValueChanged(Sender: TObject);
    procedure ceLayerChanged(Sender: TObject);
    procedure cbBadgeImageChanged(Sender: TObject);
    procedure teTextPropertiesChange(Sender: TObject);
    procedure cbHorizontalAlignmentPropertiesEditValueChanged(Sender: TObject);
    procedure cbVerticalAlignmentPropertiesEditValueChanged(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure ceBadgeBackgroundColorPropertiesEditValueChanged(Sender: TObject);
    procedure ceTextColorPropertiesEditValueChanged(Sender: TObject);
    procedure seHeightPropertiesEditValueChanged(Sender: TObject);
    procedure seWidthPropertiesEditValueChanged(Sender: TObject);
    procedure seOffsetXPropertiesEditValueChanged(Sender: TObject);
    procedure seOffsetYPropertiesEditValueChanged(Sender: TObject);
  private
    FGuidesLabel: TcxLabel;
    FLockUpdateOptionsCount: Integer;
    function GetLockUpdateOptions: Boolean;
  protected
    procedure ChangeScaleEx(M, D: Integer; isDpiChange: Boolean); override;
    function FindColumnByGuideName(AName: string; AView: TcxGridTableView): TcxGridColumn;
    procedure InitGuidesLabel;
    procedure UpdateBadgeImageLayoutItemVisibility(ALayoutItem: TdxLayoutItem);
    procedure UpdateOptions;
    procedure UpdateOptionsForDPI(M, D: Integer);
    function ActiveBadge: TdxBadge;
    function ActiveImage: TcxImage;
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AfterShow; override;
    property LockUpdateOptions: Boolean read GetLockUpdateOptions;
  end;

implementation

uses
  System.UITypes, cxGeometry, uStrsConst, dxFrames, FrameIDs, dxCoreGraphics;

{$R *.dfm}

procedure TfrmUIAdorners.ChangeScaleEx(M, D: Integer; isDpiChange: Boolean);
begin
  inherited ChangeScaleEx(M, D, isDpiChange);
  UpdateOptionsForDPI(M, D);
end;

constructor TfrmUIAdorners.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FGuidesLabel := TcxLabel.Create(nil);
  InitGuidesLabel;
end;

procedure TfrmUIAdorners.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  UpdateOptions;
end;

destructor TfrmUIAdorners.Destroy;
begin
  FreeAndNil(FGuidesLabel);
  inherited Destroy;
end;

function TfrmUIAdorners.FindColumnByGuideName(AName: string; AView: TcxGridTableView): TcxGridColumn;
const
  AColumnPrefixCharCount = 3;
  AGuidePrefixCharCount = 2;
var
  I: Integer;
  AColumnName: string;
begin
  Delete(AName, 1, AGuidePrefixCharCount);
  for I := 0 to AView.ColumnCount - 1 do
  begin
    Result := AView.Columns[I];
    AColumnName := Result.Name;
    Delete(AColumnName, 1, AColumnPrefixCharCount);
    if AnsiCompareText(AName, AColumnName) = 0 then
      Exit;
  end;
  Result := nil;
end;

function TfrmUIAdorners.GetDescription: string;
begin
  Result := sdxFrameUIAdornersDescription;
end;

function TfrmUIAdorners.GetLockUpdateOptions: Boolean;
begin
  Result := FLockUpdateOptionsCount > 0;
end;

procedure TfrmUIAdorners.InitGuidesLabel;
begin
  FGuidesLabel.AutoSize := False;
  FGuidesLabel.Properties.Alignment.Horz := taCenter;
  FGuidesLabel.Properties.Alignment.Vert := taVCenter;
  FGuidesLabel.Width := 250;
  FGuidesLabel.Transparent := True;
end;

procedure TfrmUIAdorners.UpdateBadgeImageLayoutItemVisibility(ALayoutItem: TdxLayoutItem);
begin
  ALayoutItem.Visible := ALayoutItem.Control = ActiveImage;
end;

procedure TfrmUIAdorners.UpdateOptions;
var
  ABackgroundColor: TColor;
begin
  Inc(FLockUpdateOptionsCount);
  try
    UpdateBadgeImageLayoutItemVisibility(liBadge1Image);
    UpdateBadgeImageLayoutItemVisibility(liBadge2Image);
    cbHorizontalAlignment.ItemIndex := Integer(ActiveBadge.Alignment.Horz);
    cbVerticalAlignment.ItemIndex := Integer(ActiveBadge.Alignment.Vert);
    teText.Text := ActiveBadge.Text;
    ABackgroundColor := ActiveBadge.Background.Color;
    if ABackgroundColor = clDefault then
      if ActiveBadge = bdgImage then
        ABackgroundColor := clHighlight
      else
        ABackgroundColor := clRed;
    ceBadgeBackgroundColor.ColorValue := ABackgroundColor;
    ceTextColor.ColorValue := ActiveBadge.Font.Color;
    cbUseImage.Checked := not ActiveBadge.Background.Glyph.Empty;
    seHeight.Value := ActiveBadge.Size.Height;
    seWidth.Value := ActiveBadge.Size.Width;
    seOffsetX.Value := ActiveBadge.Offset.X;
    seOffsetY.Value := ActiveBadge.Offset.Y;
  finally
    Dec(FLockUpdateOptionsCount);
  end;
end;

procedure TfrmUIAdorners.UpdateOptionsForDPI(M, D: Integer);

  procedure UpdateMinMax(AProperties: TcxSpinEditProperties);
  begin
    AProperties.BeginUpdate;
    try
      AProperties.MinValue := MulDiv(Round(AProperties.MinValue), M, D);
      AProperties.MaxValue := MulDiv(Round(AProperties.MaxValue), M, D);
    finally
      AProperties.EndUpdate;
    end;
  end;

begin
  Inc(FLockUpdateOptionsCount);
  try
    UpdateMinMax(seHeight.Properties);
    UpdateMinMax(seWidth.Properties);
    UpdateMinMax(seOffsetX.Properties);
    UpdateMinMax(seOffsetY.Properties);
    UpdateOptions;
  finally
    Dec(FLockUpdateOptionsCount);
  end;
end;

function TfrmUIAdorners.ActiveBadge: TdxBadge;
begin
  if cbSelectBadge.ItemIndex = 1 then
    Result := bdgImage
  else
    Result := bdgEmail;
end;

function TfrmUIAdorners.ActiveImage: TcxImage;
begin
  if cbSelectBadge.ItemIndex = 1 then
    Result := imgBadge1Image
  else
    Result := imgBadge2Image;
end;

procedure TfrmUIAdorners.AfterShow;
begin
  inherited AfterShow;
  UpdateOptions;
end;

procedure TfrmUIAdorners.amAdornersActiveChanged(AManager: TdxUIAdornerManager; AAdorners: TdxCustomAdorners);
begin
  if AAdorners = amAdorners.Guides then
    if AAdorners.Active then
      rbShowGuides.Checked := True
    else
      rbNone.Checked := True;
end;

procedure TfrmUIAdorners.amAdornersGuideGetCalloutPopupControl(AManager: TdxUIAdornerManager; AGuide: TdxGuide;
  var AControl: TWinControl);

  function GetInplaceEditorCaption(const APropertiesClassName: string): string;
    begin
      Result := 'In-place Editor: ' + StringReplace(APropertiesClassName, 'Properties', '', []);
    end;

begin
  AControl := FGuidesLabel;
  case AGuide.Tag of
    1:
      FGuidesLabel.Caption := 'Editor: ' + TdxAdornerTargetElementControl(AGuide.TargetElement).Control.ClassName;
    2:
      FGuidesLabel.Caption := GetInplaceEditorCaption(FindColumnByGuideName(AGuide.Name, TableView).GetProperties.ClassName);
  end;
end;

procedure TfrmUIAdorners.bdgBadgeClick(AManager: TdxUIAdornerManager;
  AAdorner: TdxCustomAdorner);
begin
  dxMessageDlg('Clicked', TMsgDlgType.mtInformation, [mbOK]);
end;

procedure TfrmUIAdorners.cbAllowCalloutPropertiesEditValueChanged(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to amAdorners.Guides.Count - 1 do
    amAdorners.Guides[I].AllowCalloutPopup := cbAllowCallout.Checked;
end;

procedure TfrmUIAdorners.cbBadgeImageChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  if cbUseImage.Checked then
  begin
    ActiveBadge.Background.Glyph.Assign(ActiveImage.Picture.Graphic);
    ActiveBadge.Background.Color := clDefault;
  end
  else
  begin
    ActiveBadge.Background.Glyph.Clear;
    ActiveBadge.Background.Color := ceBadgeBackgroundColor.ColorValue;
  end;
end;

procedure TfrmUIAdorners.cbHorizontalAlignmentPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Alignment.Horz := TcxEditHorzAlignment(cbHorizontalAlignment.ItemIndex);
end;

procedure TfrmUIAdorners.cbVerticalAlignmentPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Alignment.Vert := TcxEditVertAlignment(cbVerticalAlignment.ItemIndex);
end;

procedure TfrmUIAdorners.ceBadgeBackgroundColorPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  if not cbUseImage.Checked then
    ActiveBadge.Background.Color := ceBadgeBackgroundColor.ColorValue;
end;

procedure TfrmUIAdorners.ceBorderColorPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  amAdorners.Guides.BorderColor := ceBorderColor.ColorValue;
end;

procedure TfrmUIAdorners.ceLayerChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  amAdorners.Guides.LayerColor := dxColorToAlphaColor(ceLayerColor.ColorValue, seOpacity.Value);
end;

procedure TfrmUIAdorners.ceTextColorPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Font.Color := ceTextColor.ColorValue;
end;

procedure TfrmUIAdorners.rbShowAdornersClick(Sender: TObject);
begin
  amAdorners.Badges.Active := rbShowBadges.Checked;
  amAdorners.Guides.Active := rbShowGuides.Checked;
end;

procedure TfrmUIAdorners.seHeightPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Size.Height := seHeight.Value;
end;

procedure TfrmUIAdorners.seOffsetXPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Offset.X := seOffsetX.Value;
end;

procedure TfrmUIAdorners.seOffsetYPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Offset.Y := seOffsetY.Value;
end;

procedure TfrmUIAdorners.seWidthPropertiesEditValueChanged(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Size.Width := seWidth.Value;
end;

procedure TfrmUIAdorners.teTextPropertiesChange(Sender: TObject);
begin
  if LockUpdateOptions then
    Exit;
  ActiveBadge.Text := teText.Text;
end;

initialization
  dxFrameManager.RegisterFrame(UIAdornersFrameID, TfrmUIAdorners, UIAdornersFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
