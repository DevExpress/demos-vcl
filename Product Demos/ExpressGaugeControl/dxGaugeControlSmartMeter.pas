unit dxGaugeControlSmartMeter;

interface

uses
  Vcl.Forms, Vcl.StdCtrls, System.Classes, Vcl.Controls, Vcl.ExtCtrls, cxClasses, cxGraphics, dxGDIPlusClasses, cxLookAndFeels,
  cxLookAndFeelPainters, cxImage, dxLayoutLookAndFeels, cxControls, cxSplitter, cxContainer, cxEdit, cxLabel, dxBar,
  dxLayoutContainer, dxLayoutControl, dxGaugeCustomScale, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeControl, dxGaugeDigitalScale, dxGaugeControlBaseFormUnit;

type

  TfrmSmartMeter = class(TdxGaugeControlDemoUnitForm)
    Timer1: TTimer;
    dxLayoutItem1: TdxLayoutItem;
    dxGaugeControl2: TdxGaugeControl;
    gcsGas: TdxGaugeCircularScale;
    gcsHazeGasCaptionValue: TdxGaugeQuantitativeScaleCaption;
    gcsHazeCaption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale1Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale1Range2: TdxGaugeCircularScaleRange;
    dxGaugeControl2ContainerScale1: TdxGaugeContainerScale;
    gcsColdWater: TdxGaugeCircularScale;
    gcsHazeColdWaterCaptionValue: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale1Caption3: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale1Range3: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale1Range4: TdxGaugeCircularScaleRange;
    gcsHotWater: TdxGaugeCircularScale;
    gcsHazeHotWaterCaptionValue: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale2Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale2Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale2Range2: TdxGaugeCircularScaleRange;
    gcsElectricity: TdxGaugeCircularScale;
    gcsHazeElectricityCaptionValue: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale3Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl2CircularScale3Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale3Range2: TdxGaugeCircularScaleRange;
    procedure Timer1Timer(Sender: TObject);
    procedure gcsGasAnimate(Sender: TObject);
    procedure gcsColdWaterAnimate(Sender: TObject);
    procedure gcsElectricityAnimate(Sender: TObject);
    procedure gcsHotWaterAnimate(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, System.SysUtils, System.Math;

{ TfrmSmartMeter }

function GetRandomValueDelta(AFrom, ATo, ARange: Integer): Single;
begin
  Randomize;
  Result := Sign(RandomFrom([-1, 1])) * RandomRange(AFrom, ATo) / ARange;
end;

class function TfrmSmartMeter.GetID: Integer;
begin
  Result := 13;
end;

procedure TfrmSmartMeter.Timer1Timer(Sender: TObject);
begin
  gcsGas.Value := Max(gcsGas.Value + GetRandomValueDelta(1, 30, 1), 10);
  gcsColdWater.Value := Max(gcsColdWater.Value + GetRandomValueDelta(1, 30, 1), 10);
  gcsHotWater.Value := Max(gcsHotWater.Value + GetRandomValueDelta(1, 30, 1), 10);
  gcsElectricity.Value := Max(gcsElectricity.Value + GetRandomValueDelta(1, 30, 1), 10);
end;

function TfrmSmartMeter.GetDescription: string;
begin
  Result :=
    'This demo illustrates a sample smart meter measuring gas, water, and electricity consumption. ' +
    'The gauge is created with circular scales, custom scale captions, and range bars. ' +
    'Resize the application''s window to scale the gauge.';
end;

procedure TfrmSmartMeter.gcsGasAnimate(Sender: TObject);
begin
  gcsHazeGasCaptionValue.Text := IntToStr(Round(gcsGas.Value));
end;

procedure TfrmSmartMeter.gcsColdWaterAnimate(Sender: TObject);
begin
  gcsHazeColdWaterCaptionValue.Text := IntToStr(Round(gcsColdWater.Value));
end;

procedure TfrmSmartMeter.gcsElectricityAnimate(Sender: TObject);
begin
  gcsHazeElectricityCaptionValue.Text := IntToStr(Round(gcsElectricity.Value));
end;

procedure TfrmSmartMeter.gcsHotWaterAnimate(Sender: TObject);
begin
  gcsHazeHotWaterCaptionValue.Text := IntToStr(Round(gcsHotWater.Value));
end;

initialization
  TfrmSmartMeter.Register;

end.
