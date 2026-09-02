unit dxGaugeControlCircularScales;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxClasses, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, cxGroupBox, dxGaugeControl, dxLayoutControl, cxTrackBar, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCheckBox, dxBarBuiltInMenu, cxPC, Vcl.StdCtrls, dxColorEdit, dxLayoutLookAndFeels,
  dxSkinsForm, dxGaugeControlBaseFormUnit, dxBar, dxGDIPlusClasses, cxImage, cxLabel, Vcl.ExtCtrls, Vcl.ActnList;

type
  TfrmGaugeControlCircularScale = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxGaugeControl1: TdxGaugeControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxGaugeControl1CircularScale1: TdxGaugeCircularScale;
    tbScaleValue: TcxTrackBar;
    dxLayoutControl1Item5: TdxLayoutItem;
    tbScaleMinValue: TcxTrackBar;
    dxLayoutControl1Item6: TdxLayoutItem;
    tbScaleMaxValue: TcxTrackBar;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    tbScaleEndAngle: TcxTrackBar;
    dxLayoutControl1Item4: TdxLayoutItem;
    tbScaleStartAngle: TcxTrackBar;
    dxLayoutControl1Item9: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    tbScaleMajorTickCount: TcxTrackBar;
    tbScaleMinorTickCount: TcxTrackBar;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Item11: TdxLayoutItem;
    cbScaleLabelOrientation: TcxComboBox;
    cbScaleLabelsVisible: TcxCheckBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item12: TdxLayoutItem;
    cbScaleShowFirstTick: TcxCheckBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    cbScaleShowLastTick: TcxCheckBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    cbScaleShowTicks: TcxCheckBox;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dxLayoutControl2: TdxLayoutControl;
    tbScale2Value: TcxTrackBar;
    dxGaugeControl2: TdxGaugeControl;
    dxGaugeCircularScale1: TdxGaugeCircularScale;
    tbRangeWidthFactor: TcxTrackBar;
    tbRangeRadiusFactor: TcxTrackBar;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxGaugeCircularScale1Range1: TdxGaugeCircularScaleRange;
    cbShowNeedle: TcxCheckBox;
    dxLayoutControl2Item1: TdxLayoutItem;
    cbLinkedWith: TcxComboBox;
    dxLayoutControl2Item2: TdxLayoutItem;
    tbStartValue: TcxTrackBar;
    tbEndValue: TcxTrackBar;
    dxLayoutControl2Item3: TdxLayoutItem;
    dxLayoutControl2Item4: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxTabSheet3: TcxTabSheet;
    dxLayoutControl3: TdxLayoutControl;
    dxGaugeControl3: TdxGaugeControl;
    dxGaugeCircularScale2: TdxGaugeCircularScale;
    tbScale3Value: TcxTrackBar;
    tbLabelCenterPositionFactorX: TcxTrackBar;
    tbLabelCenterPositionFactorY: TcxTrackBar;
    tbRotationAngle: TcxTrackBar;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxGaugeCircularScale3Caption1: TdxGaugeQuantitativeScaleCaption;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    ActionList1: TActionList;
    acScaleLabelsVisible: TAction;
    acScaleShowTicks: TAction;
    acScaleShowLastTick: TAction;
    acScaleShowFirstTick: TAction;
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
    procedure Button1Click(Sender: TObject);
    procedure tbScale2ValuePropertiesChange(Sender: TObject);
    procedure tbRangeRadiusFactorPropertiesChange(Sender: TObject);
    procedure cbLinkedWithPropertiesChange(Sender: TObject);
    procedure cbShowNeedlePropertiesChange(Sender: TObject);
    procedure tbStartValuePropertiesChange(Sender: TObject);
    procedure tbEndValuePropertiesChange(Sender: TObject);
    procedure tbScale3ValuePropertiesChange(Sender: TObject);
    procedure tbLabelCenterPositionFactorXPropertiesChange(Sender: TObject);
    procedure tbLabelCenterPositionFactorYPropertiesChange(Sender: TObject);
    procedure tbRotationAnglePropertiesChange(Sender: TObject);
    procedure acScaleLabelsVisibleExecute(Sender: TObject);
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
  frmGaugeControlCircularScale: TfrmGaugeControlCircularScale;

implementation

type
  TdxGaugeQuantitativeScaleAccess = class(TdxGaugeQuantitativeScale);
  TdxGaugeQuantitativeScaleViewInfoAccess = class(TdxGaugeQuantitativeScaleViewInfo);

{$R *.dfm}

procedure TfrmGaugeControlCircularScale.UpdateScale;
begin
  dxGaugeControl1.BeginUpdate;
  dxGaugeControl1CircularScale1.OptionsView.AngleStart := tbScaleStartAngle.Position;
  dxGaugeControl1CircularScale1.OptionsView.AngleEnd := tbScaleEndAngle.Position;
  dxGaugeControl1CircularScale1.OptionsView.MajorTickCount := tbScaleMajorTickCount.Position;
  dxGaugeControl1CircularScale1.OptionsView.MinorTickCount := tbScaleMinorTickCount.Position;
  dxGaugeControl1CircularScale1.OptionsView.MaxValue := tbScaleMaxValue.Position;
  dxGaugeControl1CircularScale1.OptionsView.MinValue := tbScaleMinValue.Position;
  dxGaugeControl1CircularScale1.OptionsView.ShowLabels := acScaleLabelsVisible.Checked;
  dxGaugeControl1CircularScale1.OptionsView.ShowFirstTick := acScaleShowFirstTick.Checked;
  dxGaugeControl1CircularScale1.OptionsView.ShowLastTick := acScaleShowLastTick.Checked;
  dxGaugeControl1CircularScale1.OptionsView.ShowTicks := acScaleShowTicks.Checked;
  dxGaugeControl1CircularScale1.Value := dxGaugeControl1CircularScale1.OptionsView.MinValue + tbScaleValue.Position *
    (dxGaugeControl1CircularScale1.OptionsView.MaxValue - dxGaugeControl1CircularScale1.OptionsView.MinValue) / 100;
  UpdateLabelOrientation;
  dxGaugeControl1.EndUpdate;
end;

procedure TfrmGaugeControlCircularScale.Button1Click(Sender: TObject);
begin
  dxGaugeCircularScale1Range1.RadiusFactor := 0;
end;

procedure TfrmGaugeControlCircularScale.cbLinkedWithPropertiesChange(Sender: TObject);
const
  LinkedValueMap: array[0..2] of TdxGaugeScaleRangeValueLinkedWithScaleValue = (rlsvNone, rlsvValueStart, rlsvValueEnd);
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeCircularScale1Range1.LinkedWithScaleValue := LinkedValueMap[cbLinkedWith.ItemIndex];
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmGaugeControlCircularScale.cbRangeWidthFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.cbScaleLabelOrientationPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.acScaleLabelsVisibleExecute(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.cbShowNeedlePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.cxTrackBar1PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.cxTrackBar2PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.cxTrackBar3PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.cxTrackBar6PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.cxTrackBar7PropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.UpdateLabelOrientation;
const
  LabelOrientationMap: array[0..4] of TdxGaugeCircularScaleLabelOrientation =
    (loLeftToRight, loCircular, loCircularInward, loCircularOutward, loRadial);
begin
  dxGaugeControl1.BeginUpdate;
  dxGaugeControl1CircularScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1CircularScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1CircularScale1.OptionsView.LabelOrientation := LabelOrientationMap[cbScaleLabelOrientation.ItemIndex];
  dxGaugeControl1.EndUpdate;
end;

procedure TfrmGaugeControlCircularScale.UpdateRange;
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeCircularScale1.Value := dxGaugeCircularScale1.OptionsView.MinValue + tbScale2Value.Position *
    (dxGaugeCircularScale1.OptionsView.MaxValue - dxGaugeCircularScale1.OptionsView.MinValue) / 100;
  dxGaugeCircularScale1Range1.WidthFactor := tbRangeWidthFactor.Position / 100;
  dxGaugeCircularScale1Range1.RadiusFactor := tbRangeRadiusFactor.Position / 100;
  dxGaugeCircularScale1Range1.ValueEnd := dxGaugeCircularScale1.OptionsView.MinValue + tbEndValue.Position *
    (dxGaugeCircularScale1.OptionsView.MaxValue - dxGaugeCircularScale1.OptionsView.MinValue) / 100;
  dxGaugeCircularScale1Range1.ValueStart := dxGaugeCircularScale1.OptionsView.MinValue + tbStartValue.Position *
    (dxGaugeCircularScale1.OptionsView.MaxValue - dxGaugeCircularScale1.OptionsView.MinValue) / 100;
  dxGaugeCircularScale1.OptionsView.ShowNeedle := cbShowNeedle.Checked;
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmGaugeControlCircularScale.UpdateScaleLabel;
begin
  dxGaugeControl3.BeginUpdate;
  dxGaugeCircularScale2.Value := dxGaugeCircularScale2.OptionsView.MinValue + tbScale3Value.Position *
    (dxGaugeCircularScale2.OptionsView.MaxValue - dxGaugeCircularScale2.OptionsView.MinValue) / 100;
  dxGaugeCircularScale3Caption1.OptionsLayout.CenterPositionFactorX := tbLabelCenterPositionFactorX.Position / 100;
  dxGaugeCircularScale3Caption1.OptionsLayout.CenterPositionFactorY := tbLabelCenterPositionFactorY.Position / 100;
  dxGaugeCircularScale3Caption1.OptionsView.RotationAngle := tbRotationAngle.Position;
  dxGaugeCircularScale3Caption1.Text := 'Value: ' + FormatFloat('0.0', dxGaugeCircularScale2.Value);
  dxGaugeControl3.EndUpdate;
end;

procedure TfrmGaugeControlCircularScale.FormCreate(Sender: TObject);
begin
  inherited;
  cxPageControl1.ActivePageIndex := 0;
  TdxGaugeQuantitativeScaleViewInfoAccess(TdxGaugeQuantitativeScaleAccess(dxGaugeControl1CircularScale1).ViewInfo).OnGetTickmarkLabelDrawInfo := OnGetTickmarkLabelInfo;
  tbScaleStartAngle.Position := dxGaugeControl1CircularScale1.OptionsView.AngleStart;
  tbScaleEndAngle.Position := dxGaugeControl1CircularScale1.OptionsView.AngleEnd;
  tbScaleMajorTickCount.Position := dxGaugeControl1CircularScale1.OptionsView.MajorTickCount;
  tbScaleMajorTickCount.Properties.Max := 16;
  tbScaleMajorTickCount.Properties.Min := 2;
  tbScaleMinorTickCount.Properties.Max := 10;
  tbScaleMinorTickCount.Properties.Min := 0;
  tbScaleMinorTickCount.Position := dxGaugeControl1CircularScale1.OptionsView.MinorTickCount;
  tbScaleMinValue.Position := Round(dxGaugeControl1CircularScale1.OptionsView.MinValue);
  tbScaleMaxValue.Position := Round(dxGaugeControl1CircularScale1.OptionsView.MaxValue);
  acScaleLabelsVisible.Checked := dxGaugeControl1CircularScale1.OptionsView.ShowLabels;
  acScaleShowFirstTick.Checked := dxGaugeControl1CircularScale1.OptionsView.ShowFirstTick;
  acScaleShowLastTick.Checked := dxGaugeControl1CircularScale1.OptionsView.ShowLastTick;
  acScaleShowTicks.Checked := dxGaugeControl1CircularScale1.OptionsView.ShowTicks;

  tbScale2Value.Position := Round(dxGaugeCircularScale1.Value);
  tbRangeWidthFactor.Position := Round(dxGaugeCircularScale1Range1.WidthFactor * 100);
  tbRangeRadiusFactor.Position := Round(dxGaugeCircularScale1Range1.RadiusFactor * 100);

  tbLabelCenterPositionFactorX.Position := Round(dxGaugeCircularScale3Caption1.OptionsLayout.CenterPositionFactorX * 100);
  tbLabelCenterPositionFactorY.Position := Round(dxGaugeCircularScale3Caption1.OptionsLayout.CenterPositionFactorY * 100);
  tbRotationAngle.Position := Round(dxGaugeCircularScale3Caption1.OptionsView.RotationAngle);
  tbScale3Value.Position := Round(dxGaugeCircularScale2.Value);
end;

function TfrmGaugeControlCircularScale.GetDescription: string;
begin
  Result :=
    'This demo illustrates a circular scale type. Practice customizing various display options, and ' +
    'immediately see the result in the preview pane.';
end;

class function TfrmGaugeControlCircularScale.GetID: Integer;
begin
  Result := 20;
end;

procedure TfrmGaugeControlCircularScale.OnGetTickmarkLabelInfo(ASender: TObject; const AValue: Single;
  var ADrawInfo: TdxGaugeQuantitativeScaleTickmarkLabelDrawInfo);
begin
  ADrawInfo.Text := FormatFloat('0.0', AValue);
end;

procedure TfrmGaugeControlCircularScale.tbEndValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.tbLabelCenterPositionFactorXPropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlCircularScale.tbLabelCenterPositionFactorYPropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlCircularScale.tbRangeRadiusFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.tbRangeWidthFactorPropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.tbRotationAnglePropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlCircularScale.tbScale2ValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

procedure TfrmGaugeControlCircularScale.tbScale3ValuePropertiesChange(Sender: TObject);
begin
  UpdateScaleLabel;
end;

procedure TfrmGaugeControlCircularScale.tbScaleEndAnglePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbScaleMajorTickCountPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbScaleMaxValuePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbScaleMinorTickCountPropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbScaleMinValuePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbScaleStartAnglePropertiesChange(Sender: TObject);
begin
  UpdateScale;
end;

procedure TfrmGaugeControlCircularScale.tbStartValuePropertiesChange(Sender: TObject);
begin
  UpdateRange;
end;

initialization
  TfrmGaugeControlCircularScale.Register;

end.
