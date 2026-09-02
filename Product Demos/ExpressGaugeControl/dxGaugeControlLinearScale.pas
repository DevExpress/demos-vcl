unit dxGaugeControlLinearScale;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxClasses, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, cxGroupBox, dxGaugeControl, dxLayoutControl, cxTrackBar, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, dxColorEdit, dxGaugeLinearScale,
  dxLayoutLookAndFeels, dxGaugeControlBaseFormUnit, dxBar, dxGDIPlusClasses, cxImage, cxLabel, Vcl.ExtCtrls, Vcl.ActnList;

type
  TfrmGaugeControlLinearScale = class(TdxGaugeControlDemoUnitForm)
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutItem1: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    dxLayoutControl1: TdxLayoutControl;
    tbScaleValue: TcxTrackBar;
    tbScaleMinValue: TcxTrackBar;
    tbScaleMaxValue: TcxTrackBar;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeControl1LinearScale1: TdxGaugeLinearScale;
    tbScaleMajorTickCount: TcxTrackBar;
    tbScaleMinorTickCount: TcxTrackBar;
    cbScaleLabelOrientation: TcxComboBox;
    cbScaleLabelsVisible: TcxCheckBox;
    cbScaleShowTicks: TcxCheckBox;
    cbScaleShowLastTick: TcxCheckBox;
    cbScaleShowFirstTick: TcxCheckBox;
    cbAlignElements: TcxComboBox;
    cbRotationAngle: TcxComboBox;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    dxGaugeControl2: TdxGaugeControl;
    dxGaugeControl2LinearScale1: TdxGaugeLinearScale;
    dxGaugeControl2LinearScale1Range1: TdxGaugeLinearScaleRange;
    tbRangeWidthFactor: TcxTrackBar;
    tbEndValue: TcxTrackBar;
    tbStartValue: TcxTrackBar;
    cbShowNeedle: TcxCheckBox;
    cbLinkedWith: TcxComboBox;
    tbRangeCenterPositionFactor: TcxTrackBar;
    tbScale2Value: TcxTrackBar;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item5: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxGaugeControl3: TdxGaugeControl;
    dxGaugeControl3LinearScale1: TdxGaugeLinearScale;
    dxGaugeControl3LinearScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    tbLabelCenterPositionFactorX: TcxTrackBar;
    tbLabelCenterPositionFactorY: TcxTrackBar;
    tbRotationAngle: TcxTrackBar;
    tbScale3Value: TcxTrackBar;
    cbLabelShowLevelBar: TcxCheckBox;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl3Item1: TdxLayoutItem;
    ActionList1: TActionList;
    acScaleLabelsVisible: TAction;
    acScaleShowTicks: TAction;
    acScaleShowLastTick: TAction;
    acScaleShowFirstTick: TAction;
    acShowNeedle: TAction;
    acLabelShowLevelBar: TAction;
    procedure cxTrackBar3PropertiesChange(Sender: TObject);
    procedure cxTrackBar2PropertiesChange(Sender: TObject);
    procedure cxTrackBar1PropertiesChange(Sender: TObject);
    procedure tbScaleMinorTickCountPropertiesChange(Sender: TObject);
    procedure tbScaleMajorTickCountPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTrackBar7PropertiesChange(Sender: TObject);
    procedure cxTrackBar6PropertiesChange(Sender: TObject);
    procedure tbScaleEndAnglePropertiesChange(Sender: TObject);
    procedure tbScaleStartAnglePropertiesChange(Sender: TObject);
    procedure tbScaleMaxValuePropertiesChange(Sender: TObject);
    procedure tbScaleMinValuePropertiesChange(Sender: TObject);
    procedure cbScaleLabelOrientationPropertiesChange(Sender: TObject);
    procedure cbRangeWidthFactorPropertiesChange(Sender: TObject);
    procedure tbRangeWidthFactorPropertiesChange(Sender: TObject);
    procedure tbScale2ValuePropertiesChange(Sender: TObject);
    procedure tbRangeRadiusFactorPropertiesChange(Sender: TObject);
    procedure cbLinkedWithPropertiesChange(Sender: TObject);
    procedure tbStartValuePropertiesChange(Sender: TObject);
    procedure tbEndValuePropertiesChange(Sender: TObject);
    procedure tbScale3ValuePropertiesChange(Sender: TObject);
    procedure tbLabelCenterPositionFactorXPropertiesChange(Sender: TObject);
    procedure tbLabelCenterPositionFactorYPropertiesChange(Sender: TObject);
    procedure tbRotationAnglePropertiesChange(Sender: TObject);
    procedure cbRotationAnglePropertiesChange(Sender: TObject);
    procedure tbRangeCenterPositionFactorPropertiesChange(Sender: TObject);
    procedure acScaleLabelsVisibleExecute(Sender: TObject);
    procedure acShowNeedleExecute(Sender: TObject);
    procedure acLabelShowLevelBarExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    procedure UpdateScaleLabel;
    procedure UpdateLabelOrientation;
    procedure UpdateRange;
    procedure UpdateScale;
    procedure OnGetTickmarkLabelInfo(ASender: TObject; const AValue: Single; var ADrawInfo: TdxGaugeQuantitativeScaleTickmarkLabelDrawInfo);
  end;

var
  frmGaugeControlLinearScale: TfrmGaugeControlLinearScale;

implementation

uses
  dxCore;

type
  TdxGaugeQuantitativeScaleAccess = class(TdxGaugeQuantitativeScale);
  TdxGaugeQuantitativeScaleViewInfoAccess = class(TdxGaugeQuantitativeScaleViewInfo);

{$R *.dfm}

class function TfrmGaugeControlLinearScale.GetID: Integer;
begin
  Result := 21;
end;

procedure TfrmGaugeControlLinearScale.UpdateScale;
const
  RotationAngleMap: array[0..3] of TcxRotationAngle = (ra0, raPlus90, raMinus90, ra180);
  AlignElementsMap: array[0..1] of TLeftRight = (taLeftJustify, taRightJustify);
begin
  dxGaugeControl1.BeginUpdate;
  dxGaugeControl1LinearScale1.OptionsView.MajorTickCount := tbScaleMajorTickCount.Position;
  dxGaugeControl1LinearScale1.OptionsView.MinorTickCount := tbScaleMinorTickCount.Position;
  dxGaugeControl1LinearScale1.OptionsView.MaxValue := tbScaleMaxValue.Position;
  dxGaugeControl1LinearScale1.OptionsView.MinValue := tbScaleMinValue.Position;
  dxGaugeControl1LinearScale1.OptionsView.ShowLabels := acScaleLabelsVisible.Checked;
  dxGaugeControl1LinearScale1.OptionsView.ShowFirstTick := acScaleShowFirstTick.Checked;
  dxGaugeControl1LinearScale1.OptionsView.ShowLastTick := acScaleShowLastTick.Checked;
  dxGaugeControl1LinearScale1.OptionsView.ShowTicks := acScaleShowTicks.Checked;
  dxGaugeControl1LinearScale1.OptionsView.AlignElements := AlignElementsMap[cbAlignElements.ItemIndex];
  dxGaugeControl1LinearScale1.OptionsView.RotationAngle := RotationAngleMap[cbRotationAngle.ItemIndex];
  dxGaugeControl1LinearScale1.Value := dxGaugeControl1LinearScale1.OptionsView.MinValue + tbScaleValue.Position *
    (dxGaugeControl1LinearScale1.OptionsView.MaxValue - dxGaugeControl1LinearScale1.OptionsView.MinValue) / 100;
  UpdateLabelOrientation;
  dxGaugeControl1.EndUpdate;
end;

procedure TfrmGaugeControlLinearScale.acLabelShowLevelBarExecute(Sender: TObject);
begin
  UpdateScaleLabel;
  Application.ProcessMessages;
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.cbLinkedWithPropertiesChange(Sender: TObject);
const
  LinkedValueMap: array[0..2] of TdxGaugeScaleRangeValueLinkedWithScaleValue = (rlsvNone, rlsvValueStart, rlsvValueEnd);
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeControl2LinearScale1Range1.LinkedWithScaleValue := LinkedValueMap[cbLinkedWith.ItemIndex];
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmGaugeControlLinearScale.cbRangeWidthFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.cbRotationAnglePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.cbScaleLabelOrientationPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.acScaleLabelsVisibleExecute(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.acShowNeedleExecute(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.cxTrackBar2PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.cxTrackBar3PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.cxTrackBar6PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.cxTrackBar7PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.UpdateLabelOrientation;
const
  LabelOrientationMap: array[0..2] of TdxGaugeLinearScaleLabelOrientation =
    (toLeftToRight, toTopToBottom, toBottomToTop);
begin
  dxGaugeControl1.BeginUpdate;
  dxGaugeControl1LinearScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1LinearScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1LinearScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1.EndUpdate;
end;

procedure TfrmGaugeControlLinearScale.UpdateRange;
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeControl2LinearScale1.Value := dxGaugeControl2LinearScale1.OptionsView.MinValue + tbScale2Value.Position *
    (dxGaugeControl2LinearScale1.OptionsView.MaxValue - dxGaugeControl2LinearScale1.OptionsView.MinValue) / 100;
  dxGaugeControl2LinearScale1Range1.WidthFactor := tbRangeWidthFactor.Position / 100;
  dxGaugeControl2LinearScale1Range1.CenterPositionFactor := tbRangeCenterPositionFactor.Position / 100;
  dxGaugeControl2LinearScale1Range1.ValueEnd := dxGaugeControl2LinearScale1.OptionsView.MinValue + tbEndValue.Position *
    (dxGaugeControl2LinearScale1.OptionsView.MaxValue - dxGaugeControl2LinearScale1.OptionsView.MinValue) / 100;
  dxGaugeControl2LinearScale1Range1.ValueStart := dxGaugeControl2LinearScale1.OptionsView.MinValue + tbStartValue.Position *
    (dxGaugeControl2LinearScale1.OptionsView.MaxValue - dxGaugeControl2LinearScale1.OptionsView.MinValue) / 100;
  dxGaugeControl2LinearScale1.OptionsView.ShowLevelBar := acShowNeedle.Checked;
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmGaugeControlLinearScale.UpdateScaleLabel;
begin
  dxGaugeControl3.BeginUpdate;
  dxGaugeControl3LinearScale1.OptionsView.ShowLevelBar := acLabelShowLevelBar.Checked;
  dxGaugeControl3LinearScale1.Value := dxGaugeControl3LinearScale1.OptionsView.MinValue + tbScale3Value.Position *
    (dxGaugeControl3LinearScale1.OptionsView.MaxValue - dxGaugeControl3LinearScale1.OptionsView.MinValue) / 100;
  dxGaugeControl3LinearScale1Caption1.OptionsLayout.CenterPositionFactorX := tbLabelCenterPositionFactorX.Position / 100;
  dxGaugeControl3LinearScale1Caption1.OptionsLayout.CenterPositionFactorY := tbLabelCenterPositionFactorY.Position / 100;
  dxGaugeControl3LinearScale1Caption1.OptionsView.RotationAngle := tbRotationAngle.Position;
  dxGaugeControl3LinearScale1Caption1.Text := 'Value: ' + FormatFloat('0.0', dxGaugeControl3LinearScale1.Value);
  dxGaugeControl3.EndUpdate;
end;

procedure TfrmGaugeControlLinearScale.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := 0;
  TdxGaugeQuantitativeScaleViewInfoAccess(TdxGaugeQuantitativeScaleAccess(dxGaugeControl1LinearScale1).ViewInfo).OnGetTickmarkLabelDrawInfo := OnGetTickmarkLabelInfo;
  tbScaleMajorTickCount.Position := dxGaugeControl1LinearScale1.OptionsView.MajorTickCount;
  tbScaleMajorTickCount.Properties.Max := 16;
  tbScaleMajorTickCount.Properties.Min := 2;
  tbScaleMinorTickCount.Properties.Max := 10;
  tbScaleMinorTickCount.Properties.Min := 0;
  tbScaleMinorTickCount.Position := dxGaugeControl1LinearScale1.OptionsView.MinorTickCount;
  tbScaleMinValue.Position := Round(dxGaugeControl1LinearScale1.OptionsView.MinValue);
  tbScaleMaxValue.Position := Round(dxGaugeControl1LinearScale1.OptionsView.MaxValue);
  acScaleLabelsVisible.Checked := dxGaugeControl1LinearScale1.OptionsView.ShowLabels;
  acScaleShowFirstTick.Checked := dxGaugeControl1LinearScale1.OptionsView.ShowFirstTick;
  acScaleShowLastTick.Checked := dxGaugeControl1LinearScale1.OptionsView.ShowLastTick;
  acScaleShowTicks.Checked := dxGaugeControl1LinearScale1.OptionsView.ShowTicks;
  cbRotationAngle.ItemIndex := 2;
  cbAlignElements.ItemIndex := 0;

  tbScale2Value.Position := Round(dxGaugeControl2LinearScale1.Value);
  tbRangeWidthFactor.Position := Round(dxGaugeControl2LinearScale1Range1.WidthFactor * 100);
  tbRangeCenterPositionFactor.Position := Round(dxGaugeControl2LinearScale1Range1.CenterPositionFactor * 100);

  tbLabelCenterPositionFactorX.Position := Round(dxGaugeControl3LinearScale1Caption1.OptionsLayout.CenterPositionFactorX * 100);
  tbLabelCenterPositionFactorY.Position := Round(dxGaugeControl3LinearScale1Caption1.OptionsLayout.CenterPositionFactorY * 100);
  tbRotationAngle.Position := 90;
  tbScale3Value.Position := Round(dxGaugeControl3LinearScale1.Value);
end;

function TfrmGaugeControlLinearScale.GetDescription: string;
begin
  Result :=
    'This demo illustrates a linear scale type. Practice customizing various display options, and ' +
    'immediately see the result in the preview pane.';
end;

procedure TfrmGaugeControlLinearScale.OnGetTickmarkLabelInfo(ASender: TObject; const AValue: Single;
  var ADrawInfo: TdxGaugeQuantitativeScaleTickmarkLabelDrawInfo);
begin
  ADrawInfo.Text := FormatFloat('0.0', AValue);
end;

procedure TfrmGaugeControlLinearScale.tbEndValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.tbLabelCenterPositionFactorXPropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlLinearScale.tbLabelCenterPositionFactorYPropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlLinearScale.tbRangeCenterPositionFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.tbRangeRadiusFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.tbRangeWidthFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.tbRotationAnglePropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlLinearScale.tbScale2ValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlLinearScale.tbScale3ValuePropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlLinearScale.tbScaleEndAnglePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbScaleMajorTickCountPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbScaleMaxValuePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbScaleMinorTickCountPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbScaleMinValuePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbScaleStartAnglePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlLinearScale.tbStartValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

initialization
  TfrmGaugeControlLinearScale.Register;

end.
