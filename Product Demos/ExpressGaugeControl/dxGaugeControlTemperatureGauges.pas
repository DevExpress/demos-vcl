unit dxGaugeControlTemperatureGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxClasses, cxGraphics, dxGDIPlusClasses, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel, dxBar, cxImage, dxGaugeCustomScale, dxGaugeControl, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeDigitalScale, dxGaugeLinearScale, dxGaugeControlBaseFormUnit, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels;

type
  TfrmGaugeControlTemperatureGauges = class(TdxGaugeControlDemoUnitForm)
    tTemperatureTimer: TTimer;
    dxLayoutItem1: TdxLayoutItem;
    dxGaugeControl1: TdxGaugeControl;
    gsPressureValue: TdxGaugeCircularScale;
    gsPressureValueCaption1: TdxGaugeQuantitativeScaleCaption;
    gsPressureValueCaption2: TdxGaugeQuantitativeScaleCaption;
    gsPressureValueRange1: TdxGaugeCircularScaleRange;
    gsPressureValueRange2: TdxGaugeCircularScaleRange;
    gsVolumeValue: TdxGaugeLinearScale;
    gsVolumeValueCaption1: TdxGaugeQuantitativeScaleCaption;
    gsVolumeValueSecondary: TdxGaugeLinearScale;
    gsVolumeValueSecondaryCaption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl1LinearScale2Range: TdxGaugeLinearScaleRange;
    dxGaugeControl1LinearScale2Range1: TdxGaugeLinearScaleRange;
    dxGaugeControl1LinearScale2Range2: TdxGaugeLinearScaleRange;
    dxGaugeControl1ContainerScale1: TdxGaugeContainerScale;
    procedure FormCreate(Sender: TObject);
    procedure tTemperatureTimerTimer(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

uses
  System.Types, System.SysUtils, System.Math;

{$R *.dfm}

function GetRandomValueDelta(AFrom, ATo, ARange: Integer): Single;
begin
  Randomize;
  Result := Sign(RandomFrom([-1, 1])) * RandomRange(AFrom, ATo) / ARange;
end;

procedure TfrmGaugeControlTemperatureGauges.tTemperatureTimerTimer(Sender: TObject);
begin
  gsVolumeValue.Value := gsVolumeValue.Value + GetRandomValueDelta(1, 150, 1);
  gsPressureValue.Value := Min(Max(gsPressureValue.Value + GetRandomValueDelta(1, 1, 1), 0.5), 6.5);
end;

class function TfrmGaugeControlTemperatureGauges.GetID: Integer;
begin
  Result := 8;
end;

procedure TfrmGaugeControlTemperatureGauges.FormCreate(Sender: TObject);
begin
  inherited;
  gsVolumeValueSecondaryCaption1.Text := 'Temperature ' + Chr(176) + 'C';
  tTemperatureTimer.Enabled := True;
end;

function TfrmGaugeControlTemperatureGauges.GetDescription: string;
begin
  Result :=
    'This demo illustrates a sample temperature, volume and pressure gauge created with circular, linear, and digital scales. ' +
    'Resize the application''s window to scale the gauge.';
end;

initialization
  TfrmGaugeControlTemperatureGauges.Register;

end.
