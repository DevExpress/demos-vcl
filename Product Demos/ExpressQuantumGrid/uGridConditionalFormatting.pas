unit uGridConditionalFormatting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, Data.DB, cxDBData,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxGridLevel, cxDataStorage, cxLabel, cxContainer,
  cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, cxGridCustomLayoutView,
  cxNavigator, dxGDIPlusClasses, cxImage, cxGroupBox, dxCustomDemoFrameUnit, Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxButtons, dxLayoutControl, cxMemo, cxCurrencyEdit, cxTextEdit, cxImageComboBox, cxHyperLinkEdit,
  cxBlobEdit, Vcl.ActnList, cxGridTableView, cxGridDBTableView, dxBar, dxRibbon, dxMessageDialog,
  dxBarExtItems, dxGallery, dxRibbonGallery, Vcl.ImgList, cxImageList, dxBarBuiltInMenu,
  dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetConditionalFormatting,
  cxDataControllerConditionalFormatting, dxDateRanges, dxScrollbarAnnotations,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutLookAndFeels, System.Actions,
  dxPanel, cxGeometry, dxFramedControl, System.ImageList;

type
  TfrmGridConditionalFormatting = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    dxLayoutItem1: TdxLayoutItem;
    btnManageRules: TcxButton;
    tvConditionalFormatting: TcxGridDBTableView;
    tvConditionalFormattingState: TcxGridDBColumn;
    tvConditionalFormattingSales: TcxGridDBColumn;
    tvConditionalFormattingProfit: TcxGridDBColumn;
    tvConditionalFormattingSalesVsTarget: TcxGridDBColumn;
    tvConditionalFormattingMarketShare: TcxGridDBColumn;
    tvConditionalFormattingCustomersSatisfaction: TcxGridDBColumn;
    ilConditionalFormatting: TcxImageList;
    ilBarSmall: TcxImageList;
    dxBarManager: TdxBarManager;
    bbManageConditionalFormattingRules: TdxBarButton;
    rgiColorScaleTemplates: TdxRibbonGalleryItem;
    rgiColorScaleTemplatesGroup1: TdxRibbonGalleryGroup;
    rgiColorScaleTemplatesGroup1Item1: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item2: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item3: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item4: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item5: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item6: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item12: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item7: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item8: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item9: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item10: TdxRibbonGalleryGroupItem;
    rgiColorScaleTemplatesGroup1Item11: TdxRibbonGalleryGroupItem;
    rgiDataBarTemplates: TdxRibbonGalleryItem;
    rgiDataBarTemplatesGroup1: TdxRibbonGalleryGroup;
    rgiDataBarTemplatesGroup1Item3: TdxRibbonGalleryGroupItem;
    rgiDataBarTemplatesGroup1Item4: TdxRibbonGalleryGroupItem;
    rgiDataBarTemplatesGroup2: TdxRibbonGalleryGroup;
    rgiDataBarTemplatesGroup1Item2: TdxRibbonGalleryGroupItem;
    rgiDataBarTemplatesGroup1Item1: TdxRibbonGalleryGroupItem;
    bbTop10: TdxBarButton;
    bbTop10Percents: TdxBarButton;
    bbBottom10: TdxBarButton;
    bbBottom10Percents: TdxBarButton;
    bbAboveAverage: TdxBarButton;
    bbBelowAverage: TdxBarButton;
    bsiTopBottomRules: TdxBarSubItem;
    rgiIconSets: TdxRibbonGalleryItem;
    rgiIconSetsGroup1: TdxRibbonGalleryGroup;
    bbClearRules: TdxBarButton;
    bbClearColumnRules: TdxBarButton;
    biHintContainer: TdxBarControlContainerItem;
    ConditionalFormattingPopupMenu: TdxBarPopupMenu;
    procedure btnManageRulesClick(Sender: TObject);
    procedure rgiIconSetsClick(Sender: TObject);
    procedure rgiDataBarTemplatesCreateDataBarRuleClick(Sender: TObject);
    procedure bbTop10Click(Sender: TObject);
    procedure dxRibbonGalleryItemCreateThreeColorScaleClick(Sender: TObject);
    procedure dxRibbonGalleryItemCreateTwoColorScaleClick(Sender: TObject);
    procedure bbClearRulesClick(Sender: TObject);
    procedure bbClearColumnRulesClick(Sender: TObject);
    procedure tvConditionalFormattingSalesVsTargetGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure tvConditionalFormattingSalesVsTargetGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure tvConditionalFormattingMarketShareGetFilterDisplayText(
      Sender: TcxCustomGridTableItem; const AValue: Variant;
      var ADisplayText: string);
    procedure tvConditionalFormattingMarketShareGetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
  private
    procedure PopulateIconSets;
  protected
    procedure AddOperationsToPopupMenu; override;
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  end;

  { TcxDataControllerConditionalFormattingMenuHelper }

  TcxDataControllerConditionalFormattingMenuHelper = class sealed
  public
    class procedure AddDataBarRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; APositiveBarColor, ANegativeBarColor: TColor; AIsSolidFill: Boolean); static;
    class procedure AddThreeColorScaleRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AColor1, AColor2, AColor3: TColor); static;
    class procedure AddTwoColorScaleRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AColor1, AColor2: TColor); static;
    class procedure AddTopBottomRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; ADirection: TdxSpreadSheetConditionalFormattingRuleTopBottomValuesDirection;
      AValueType: TdxSpreadSheetConditionalFormattingRuleTopBottomValuesValueType); static;
    class procedure AddAboveOrBelowAverageRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AComparisonOperator: TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverageComparisonOperator); static;
    class procedure AddIconSetRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; APresetIndex: Integer); static;
    class procedure ClearRulesFromSelectedArea(AConditionalFormatting: TcxDataControllerConditionalFormatting); static;
    class procedure RemoveRulesFromSelectedArea(AConditionalFormatting: TcxDataControllerConditionalFormatting; ARuleClass: TdxSpreadSheetConditionalFormattingCustomRuleClass); static;
  end;

implementation

{$R *.dfm}

uses
  System.Generics.Collections,
  System.Types, System.UITypes, dxFrames, FrameIDs, maindata, uStrsConst,
  dxSpreadSheetConditionalFormattingIconSet,
  dxTypeHelpers;

{ TfrmGridConditionalFormatting }

procedure TfrmGridConditionalFormatting.AddOperationsToPopupMenu;
begin
  inherited AddOperationsToPopupMenu;
  PopulateIconSets;
end;

procedure TfrmGridConditionalFormatting.bbClearColumnRulesClick(
  Sender: TObject);
begin
  TcxDataControllerConditionalFormattingMenuHelper.ClearRulesFromSelectedArea(tvConditionalFormatting.ConditionalFormatting);
end;

procedure TfrmGridConditionalFormatting.bbClearRulesClick(Sender: TObject);
begin
  if dxMessageDlg('Do you want to clear all conditional formatting rules?', mtConfirmation, mbYesNoCancel) = mrYes then
    tvConditionalFormatting.ConditionalFormatting.Clear;
end;

procedure TfrmGridConditionalFormatting.bbTop10Click(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: TcxDataControllerConditionalFormattingMenuHelper.AddTopBottomRule(tvConditionalFormatting.ConditionalFormatting, tbvdTop, tbvvtRank);
    1: TcxDataControllerConditionalFormattingMenuHelper.AddTopBottomRule(tvConditionalFormatting.ConditionalFormatting, tbvdTop, tbvvtPercent);
    2: TcxDataControllerConditionalFormattingMenuHelper.AddTopBottomRule(tvConditionalFormatting.ConditionalFormatting, tbvdBottom, tbvvtRank);
    3: TcxDataControllerConditionalFormattingMenuHelper.AddTopBottomRule(tvConditionalFormatting.ConditionalFormatting, tbvdBottom, tbvvtPercent);
    4: TcxDataControllerConditionalFormattingMenuHelper.AddAboveOrBelowAverageRule(tvConditionalFormatting.ConditionalFormatting, abacoAboveAverage);
    5: TcxDataControllerConditionalFormattingMenuHelper.AddAboveOrBelowAverageRule(tvConditionalFormatting.ConditionalFormatting, abacoBelowAverage);
  end;
end;

procedure TfrmGridConditionalFormatting.btnManageRulesClick(Sender: TObject);
begin
  tvConditionalFormatting.ConditionalFormatting.ShowRulesManagerDialog;
end;

procedure TfrmGridConditionalFormatting.dxRibbonGalleryItemCreateThreeColorScaleClick(
  Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $6B69F8, $84EBFF, $7BBE63);
    1: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $7BBE63, $84EBFF, $6B69F8);
    2: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $6B69F8, $FFFFFF, $7BBE63);
    3: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $7BBE63, $FFFFFF, $6B69F8);
    4: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $6B69F8, $FFFFFF, $C68A5A);
    5: TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $C68A5A, $FFFFFF, $6B69F8);
  end;
end;

procedure TfrmGridConditionalFormatting.dxRibbonGalleryItemCreateTwoColorScaleClick(
  Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $6B69F8, $FFFFFF);
    1: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $FFFFFF, $6B69F8);
    2: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $FFFFFF, $7BBE63);
    3: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $7BBE63, $FFFFFF);
    4: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $84EBFF, $7BBE63);
    5: TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(tvConditionalFormatting.ConditionalFormatting, $7BBE63, $84EBFF);
  end;
end;

function TfrmGridConditionalFormatting.GetDescription: string;
begin
  Result := sdxFrameConditionalFormattingDescription;
end;

function TfrmGridConditionalFormatting.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridConditionalFormatting.PopulateIconSets;
var
  AItem: TdxRibbonGalleryGroupItem;
  APreset: TdxSpreadSheetConditionalFormattingIconSetPreset;
  I: Integer;
begin
  rgiIconSets.GalleryOptions.Images := ConditionalFormattingIconSet.PresetPreviews;
  rgiIconSetsGroup1.Items.BeginUpdate;
  try
    for I := 0 to ConditionalFormattingIconSet.Presets.Count - 1 do
    begin
      APreset := ConditionalFormattingIconSet.Presets[I];
      if APreset.IndexOf(-1) < 0 then
      begin
        AItem := rgiIconSetsGroup1.Items.Add;
        AItem.Caption := APreset.Description;
        AItem.OnClick := rgiIconSetsClick;
        AItem.ImageIndex := I;
        AItem.Tag := I;
      end;
    end;
  finally
    rgiIconSetsGroup1.Items.EndUpdate;
  end;
end;

procedure TfrmGridConditionalFormatting.rgiDataBarTemplatesCreateDataBarRuleClick(
  Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0: TcxDataControllerConditionalFormattingMenuHelper.AddDataBarRule(tvConditionalFormatting.ConditionalFormatting, $C68E63, clRed, True);
    1: TcxDataControllerConditionalFormattingMenuHelper.AddDataBarRule(tvConditionalFormatting.ConditionalFormatting, $84C363, clRed, True);
    2: TcxDataControllerConditionalFormattingMenuHelper.AddDataBarRule(tvConditionalFormatting.ConditionalFormatting, $C68E63, clRed, False);
    3: TcxDataControllerConditionalFormattingMenuHelper.AddDataBarRule(tvConditionalFormatting.ConditionalFormatting, $84C363, clRed, False);
  end;
end;

procedure TfrmGridConditionalFormatting.rgiIconSetsClick(Sender: TObject);
begin
  TcxDataControllerConditionalFormattingMenuHelper.AddIconSetRule(tvConditionalFormatting.ConditionalFormatting, TComponent(Sender).Tag);
end;

procedure TfrmGridConditionalFormatting.tvConditionalFormattingMarketShareGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  V: Variant;
  AValue: Double;
begin
  V := tvConditionalFormatting.DataController.Values[ARecord.RecordIndex, Sender.Index];
  if VarIsNumeric(V) then
  begin
    AValue := V * 100;
    AText := Format('%d%%', [Round(AValue)]);
  end;
end;

procedure TfrmGridConditionalFormatting.tvConditionalFormattingMarketShareGetFilterDisplayText(
  Sender: TcxCustomGridTableItem; const AValue: Variant;
  var ADisplayText: string);
var
  ANewValue: Double;
begin
  if VarIsNumeric(AValue) then
  begin
    ANewValue := AValue * 100;
    ADisplayText := Format('%d%%', [Round(ANewValue)]);
  end;
end;

procedure TfrmGridConditionalFormatting.tvConditionalFormattingSalesVsTargetGetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
var
  V: Variant;
  AValue: Double;
begin
  V := tvConditionalFormatting.DataController.Values[ARecord.RecordIndex, Sender.Index];
  if VarIsNumeric(V) then
  begin
    AValue := V * 100;
    AText := Format('%g%%', [AValue]);
  end;
end;

procedure TfrmGridConditionalFormatting.tvConditionalFormattingSalesVsTargetGetFilterDisplayText(
  Sender: TcxCustomGridTableItem; const AValue: Variant;
  var ADisplayText: string);
var
  ANewValue: Double;
begin
  if VarIsNumeric(AValue) then
  begin
    ANewValue := AValue * 100;
    ADisplayText := Format('%g%%', [ANewValue]);
  end;
end;

{ TcxDataControllerConditionalFormattingMenuHelper }

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddDataBarRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; APositiveBarColor, ANegativeBarColor: TColor; AIsSolidFill: Boolean);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleDataBar;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleDataBar);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleDataBar, ARule);
    ARule.BeginUpdate;
    try
      ARule.Style.NegativeBarColor := ANegativeBarColor;
      ARule.Style.NegativeBarBorderColor := ANegativeBarColor;
      ARule.Style.PositiveBarColor := APositiveBarColor;
      ARule.Style.PositiveBarBorderColor := APositiveBarColor;
      if AIsSolidFill then
        ARule.Style.FillMode := dbfmSolid
      else
        ARule.Style.FillMode := dbfmGradient;
    finally
      ARule.EndUpdate;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddThreeColorScaleRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AColor1, AColor2, AColor3: TColor);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleThreeColorScale;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleCustomColorScale);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleThreeColorScale, ARule);
    ARule.BeginUpdate;
    try
      ARule.MinValue.Color := AColor1;
      ARule.MiddleValue.Color := AColor2;
      ARule.MiddleValue.ValueType := cssvtPercentile;
      ARule.MaxValue.Color := AColor3;
    finally
      ARule.EndUpdate;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddTwoColorScaleRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AColor1, AColor2: TColor);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleTwoColorScale;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleCustomColorScale);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleTwoColorScale, ARule);
    ARule.BeginUpdate;
    try
      ARule.MinValue.Color := AColor1;
      ARule.MaxValue.Color := AColor2;
    finally
      ARule.EndUpdate;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddTopBottomRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; ADirection: TdxSpreadSheetConditionalFormattingRuleTopBottomValuesDirection;
  AValueType: TdxSpreadSheetConditionalFormattingRuleTopBottomValuesValueType);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleTopBottomValues;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverage);
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleTopBottomValues);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleTopBottomValues, ARule);
    ARule.BeginUpdate;
    try
      ARule.Style.Brush.BackgroundColor := $9CFFFF;
      ARule.Direction := ADirection;
      ARule.ValueType := AValueType;
      ARule.Value := 10;
    finally
      ARule.EndUpdate;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddAboveOrBelowAverageRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; AComparisonOperator: TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverageComparisonOperator);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverage;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverage);
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleTopBottomValues);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleAboveOrBelowAverage, ARule);
    ARule.BeginUpdate;
    try
      ARule.ComparisonOperator := AComparisonOperator;
      ARule.Style.Brush.BackgroundColor := $9CFFFF;
    finally
      ARule.EndUpdate;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.AddIconSetRule(AConditionalFormatting: TcxDataControllerConditionalFormatting; APresetIndex: Integer);
var
  ARule: TdxSpreadSheetConditionalFormattingRuleIconSet;
begin
  AConditionalFormatting.BeginUpdate;
  try
    RemoveRulesFromSelectedArea(AConditionalFormatting, TdxSpreadSheetConditionalFormattingRuleIconSet);
    AConditionalFormatting.Add(AConditionalFormatting.Owner.GetSelectionArea.Left, TdxSpreadSheetConditionalFormattingRuleIconSet, ARule);
    ARule.PresetName := ConditionalFormattingIconSet.Presets[APresetIndex].Name;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.ClearRulesFromSelectedArea(AConditionalFormatting: TcxDataControllerConditionalFormatting);
var
  AArea: TRect;
  ARule: TdxSpreadSheetCustomConditionalFormattingRule;
  I: Integer;
begin
  AConditionalFormatting.BeginUpdate;
  try
    AArea := AConditionalFormatting.Owner.GetSelectionArea;
    for I := AConditionalFormatting.RuleCount - 1 downto 0 do
    begin
      ARule := AConditionalFormatting.Rules[I];
      if ARule.Area.IntersectsWith(AArea) then
        ARule.Free;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

class procedure TcxDataControllerConditionalFormattingMenuHelper.RemoveRulesFromSelectedArea(AConditionalFormatting: TcxDataControllerConditionalFormatting; ARuleClass: TdxSpreadSheetConditionalFormattingCustomRuleClass);
var
  AArea: TRect;
  ARule: TdxSpreadSheetCustomConditionalFormattingRule;
  I: Integer;
begin
  AConditionalFormatting.BeginUpdate;
  try
    AArea := AConditionalFormatting.Owner.GetSelectionArea;
    for I := AConditionalFormatting.RuleCount - 1 downto 0 do
    begin
      ARule := AConditionalFormatting.Rules[I];
      if ARule.Area.IsEqual(AArea) and (ARule is ARuleClass) then
        ARule.Free;
    end;
  finally
    AConditionalFormatting.EndUpdate;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(GridConditionalFormattingFrameID, TfrmGridConditionalFormatting, GridConditionalFormattingFrameName,
    -1, FilteringGroupIndex, -1, -1);

end.
