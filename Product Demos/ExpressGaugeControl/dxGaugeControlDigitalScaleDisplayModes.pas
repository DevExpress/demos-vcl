unit dxGaugeControlDigitalScaleDisplayModes;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit, cxMaskEdit, cxSpinEdit, cxTextEdit, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxTrackBar, cxGroupBox, cxRadioGroup;

type
  TfrmGaugeControlDigitalGaugeDisplayModes = class(TdxGaugeControlDemoUnitForm)
    dxGaugeControl1: TdxGaugeControl;
    cbDisplayModes: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl1DigitalScale2: TdxGaugeDigitalScale;
    dxGaugeControl1DigitalScale3: TdxGaugeDigitalScale;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    sedtDigitSpacingFactor: TcxSpinEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure cbDisplayModesPropertiesChange(Sender: TObject);
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
  protected
    function GetDescription: string; override;
    procedure UpdateGauge;
  public
    class function GetID: Integer; override;
  end;

implementation

uses
  System.Math;

{$R *.dfm}

class function TfrmGaugeControlDigitalGaugeDisplayModes.GetID: Integer;
begin
  Result := 17;
end;

procedure TfrmGaugeControlDigitalGaugeDisplayModes.cbDisplayModesPropertiesChange(Sender: TObject);
begin
  UpdateGauge;
end;

procedure TfrmGaugeControlDigitalGaugeDisplayModes.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
  UpdateGauge;
end;

procedure TfrmGaugeControlDigitalGaugeDisplayModes.FormCreate(Sender: TObject);
begin
  inherited;
  cbDisplayModes.ItemIndex := 0;
  sedtDigitSpacingFactor.EditValue := dxGaugeControl1DigitalScale1.OptionsView.DigitSpacingFactor;
  UpdateGauge;
end;

function TfrmGaugeControlDigitalGaugeDisplayModes.GetDescription: string;
begin
  Result := 'This demo illustrates digital gauges. Try various display modes and digit spacing options.';
end;

procedure TfrmGaugeControlDigitalGaugeDisplayModes.UpdateGauge;
const
  DisplayModeMap: array[0..5] of TdxGaugeDigitalScaleDisplayMode = (sdmMatrix8x14Dots, sdmMatrix8x14Squares,
    sdmMatrix5x8Dots, sdmMatrix5x8Squares, sdmFourteenSegment, sdmSevenSegment);
begin
  dxGaugeControl1.BeginUpdate;
  dxGaugeControl1DigitalScale1.OptionsView.DigitSpacingFactor := sedtDigitSpacingFactor.Value;
  dxGaugeControl1DigitalScale2.OptionsView.DigitSpacingFactor := sedtDigitSpacingFactor.Value;
  dxGaugeControl1DigitalScale3.OptionsView.DigitSpacingFactor := sedtDigitSpacingFactor.Value;
  dxGaugeControl1DigitalScale1.OptionsView.DisplayMode := DisplayModeMap[cbDisplayModes.ItemIndex];
  dxGaugeControl1DigitalScale2.OptionsView.DisplayMode := DisplayModeMap[cbDisplayModes.ItemIndex];
  dxGaugeControl1DigitalScale3.OptionsView.DisplayMode := DisplayModeMap[cbDisplayModes.ItemIndex];
  dxGaugeControl1.EndUpdate;
end;

initialization
  TfrmGaugeControlDigitalGaugeDisplayModes.Register;

end.
