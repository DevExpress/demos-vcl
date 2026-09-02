unit dxGaugeControlDigitalScale;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit, cxMaskEdit, cxSpinEdit, cxTextEdit, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxTrackBar, cxGroupBox, cxRadioGroup;

type
  TfrmLabelOrientation = class(TdxGaugeControlDemoUnitForm)
    dxGaugeControl1: TdxGaugeControl;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxGaugeControl2: TdxGaugeControl;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxGaugeControl3: TdxGaugeControl;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxGaugeControl4: TdxGaugeControl;
    dxGaugeControl3DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl4DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl2DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale;
    dxGaugeControl1DigitalScale2: TdxGaugeDigitalScale;
    dxGaugeControl2DigitalScale2: TdxGaugeDigitalScale;
    procedure cbLabelOrientationPropertiesChange(Sender: TObject);
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

class function TfrmLabelOrientation.GetID: Integer;
begin
  Result := 16;
end;

procedure TfrmLabelOrientation.cbLabelOrientationPropertiesChange(Sender: TObject);
begin
  UpdateGauge;
end;

function TfrmLabelOrientation.GetDescription: string;
begin
  Result :=
  'This demo illustrates the available display modes for digital scales and shows which font symbols are supported in these modes.';
end;

procedure TfrmLabelOrientation.UpdateGauge;
begin
end;

initialization
  TfrmLabelOrientation.Register;

end.
