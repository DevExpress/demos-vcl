unit dxGaugeControlWeatherForecast;

interface

uses
  Vcl.Forms, Vcl.StdCtrls, System.Classes, Vcl.Controls, Vcl.ExtCtrls, cxClasses, cxGraphics, dxGDIPlusClasses, cxLookAndFeels,
  cxLookAndFeelPainters, cxImage, dxLayoutLookAndFeels, cxControls, cxSplitter, cxContainer, cxEdit, cxLabel, dxBar,
  dxLayoutContainer, dxLayoutControl, dxGaugeCustomScale, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeControl, dxGaugeDigitalScale, dxGaugeControlBaseFormUnit;

type

  TfrmWeatherForecast = class(TdxGaugeControlDemoUnitForm)
    Timer1: TTimer;
    dxLayoutItem1: TdxLayoutItem;
    gcWeather: TdxGaugeControl;
    dxGaugeControl3ContainerScale1: TdxGaugeContainerScale;
    gcsWeatherLosAnglesHumidity: TdxGaugeCircularScale;
    gcsWeatherLosAnglesHumidityCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale1Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl3CircularScale1Range2: TdxGaugeCircularScaleRange;
    gcsWeatherLosAnglesTemperature: TdxGaugeCircularScale;
    gcsWeatherLosAnglesTemperatureCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale3Caption3: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale3Range3: TdxGaugeCircularScaleRange;
    gcsWeatherLosAnglesTemperatureRange: TdxGaugeCircularScaleRange;
    gcsWeatherMoscowHumidity: TdxGaugeCircularScale;
    gcsWeatherMoscowHumidityCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale4Range1: TdxGaugeCircularScaleRange;
    gcsWeatherMowcowHumidityRange: TdxGaugeCircularScaleRange;
    gcsWeatherMoscowTemperature: TdxGaugeCircularScale;
    gcsWeatherMoscowTemperatureCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale2Caption3: TdxGaugeQuantitativeScaleCaption;
    gcsWeatherDate: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale2Range1: TdxGaugeCircularScaleRange;
    gcsWeatherMoscowTemperatureRange: TdxGaugeCircularScaleRange;
    gcsWeatherLondonHumidity: TdxGaugeCircularScale;
    gcsWeatherLondonHumidityCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale5Range1: TdxGaugeCircularScaleRange;
    gcsWeatherLondonHumidityRange: TdxGaugeCircularScaleRange;
    gcsWeatherLondonTemperature: TdxGaugeCircularScale;
    gcsWeatherLondonTemperatureCaption: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale6Caption3: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale6Range1: TdxGaugeCircularScaleRange;
    gcsWeatherLondonTemperatureRange: TdxGaugeCircularScaleRange;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure gcsWeatherLosAnglesHumidityAnimate(Sender: TObject);
    procedure gcsWeatherMoscowHumidityAnimate(Sender: TObject);
    procedure gcsWeatherLondonHumidityAnimate(Sender: TObject);
    procedure gcsWeatherLosAnglesTemperatureAnimate(Sender: TObject);
    procedure gcsWeatherMoscowTemperatureAnimate(Sender: TObject);
    procedure gcsWeatherLondonTemperatureAnimate(Sender: TObject);
  protected
    FDate: TDateTime;
    function GetDescription: string; override;
    procedure UpdateLondonWeather;
    procedure UpdateLosAngeles;
    procedure UpdateMoscowWeather;
    procedure UpdateWeatherDate;

    procedure UpdateHumidity(ACaption: TdxGaugeQuantitativeScaleCaption; AValue: Single);
    procedure UpdateTemperatureIndicators(ACaption: TdxGaugeQuantitativeScaleCaption;
      ARange: TdxGaugeCircularScaleRange; AValue: Single);
    procedure UpdateSityWeather(ATemperatureScale, AHumidityScale: TdxGaugeCircularScale;
      ATemperature, AHumidity: Single);
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, System.SysUtils, System.DateUtils, System.Math, Vcl.Graphics, dxCoreGraphics;

{ TfrmSmartMeter }

function GetRandomValue(AFrom, ATo, ARange: Integer): Single;
begin
  Randomize;
  Result := RandomRange(AFrom, ATo) / ARange;
end;

procedure TfrmWeatherForecast.gcsWeatherLondonHumidityAnimate(Sender: TObject);
begin
  UpdateHumidity(gcsWeatherLondonHumidityCaption, gcsWeatherLondonHumidity.Value);
end;

procedure TfrmWeatherForecast.gcsWeatherLondonTemperatureAnimate(Sender: TObject);
begin
  UpdateTemperatureIndicators(gcsWeatherLondonTemperatureCaption, gcsWeatherLondonTemperatureRange,
    gcsWeatherLondonTemperature.Value);
end;

procedure TfrmWeatherForecast.gcsWeatherLosAnglesHumidityAnimate(Sender: TObject);
begin
  UpdateHumidity(gcsWeatherLosAnglesHumidityCaption, gcsWeatherLosAnglesHumidity.Value);
end;

procedure TfrmWeatherForecast.gcsWeatherLosAnglesTemperatureAnimate(Sender: TObject);
begin
  UpdateTemperatureIndicators(gcsWeatherLosAnglesTemperatureCaption, gcsWeatherLosAnglesTemperatureRange,
    gcsWeatherLosAnglesTemperature.Value);
end;

procedure TfrmWeatherForecast.gcsWeatherMoscowHumidityAnimate(Sender: TObject);
begin
  UpdateHumidity(gcsWeatherMoscowHumidityCaption, gcsWeatherMoscowHumidity.Value);
end;

procedure TfrmWeatherForecast.gcsWeatherMoscowTemperatureAnimate(Sender: TObject);
begin
  UpdateTemperatureIndicators(gcsWeatherMoscowTemperatureCaption, gcsWeatherMoscowTemperatureRange,
    gcsWeatherMoscowTemperature.Value);
end;

class function TfrmWeatherForecast.GetID: Integer;
begin
  Result := 14;
end;

procedure TfrmWeatherForecast.UpdateWeatherDate;
var
  ADate: string;
begin
  ADate := gcsWeatherDate.Text;
  FDate := FDate + GetRandomValue(15, 30, 1);
  DateTimeToString(ADate, 'dd MMMM', FDate);
  gcsWeatherDate.Text := ADate;
end;

procedure TfrmWeatherForecast.UpdateHumidity(ACaption: TdxGaugeQuantitativeScaleCaption; AValue: Single);
begin
  ACaption.Text := 'h: ' + IntToStr(Round(AValue)) + '%';
end;

procedure TfrmWeatherForecast.UpdateTemperatureIndicators(ACaption: TdxGaugeQuantitativeScaleCaption;
  ARange: TdxGaugeCircularScaleRange; AValue: Single);
const
  ColorMap: array[Boolean] of TColor = (clBlue, clRed);
var
  ATempValue: Integer;
begin
  ATempValue := Round(AValue);
  gcWeather.BeginUpdate;
  ACaption.Text := 't: ' + IntToStr(ATempValue) + ' ' + Chr(176) + 'C';
  ACaption.OptionsView.Font.Color := ColorMap[ATempValue >= 0];
  ARange.Color := dxColorToAlphaColor(ColorMap[ATempValue >= 0]);
  gcWeather.EndUpdate;
end;

procedure TfrmWeatherForecast.UpdateLondonWeather;
var
  ATemperature: Single;
  AHumidity: Single;
begin
  ATemperature := 10 * Sin(((DayOfTheYear(FDate) * Pi) / 90) / 2 - ((91 * Pi) / 180)) + GetRandomValue(-5, 2, 1) + 13;
  AHumidity := GetRandomValue(65, 100, 1);
  UpdateSityWeather(gcsWeatherLondonTemperature, gcsWeatherLondonHumidity, ATemperature, AHumidity);
end;

procedure TfrmWeatherForecast.UpdateLosAngeles;
var
  ATemperature: Single;
  AHumidity: Single;
begin
  ATemperature := 7.5 * Sin(((DayOfTheYear(FDate) * Pi) / 90) / 2 - ((91 * Pi) / 180)) + GetRandomValue(-2, 2, 1) + 20.5;
  AHumidity := GetRandomValue(40, 92, 1);
  UpdateSityWeather(gcsWeatherLosAnglesTemperature, gcsWeatherLosAnglesHumidity, ATemperature, AHumidity);
end;

procedure TfrmWeatherForecast.UpdateMoscowWeather;
var
  ATemperature: Single;
  AHumidity: Single;
begin
  ATemperature := 28 * Sin(((DayOfTheYear(FDate) * Pi) / 90) / 2 - ((91 * Pi) / 180)) + GetRandomValue(0, 2, 1);
  AHumidity := GetRandomValue(60, 100, 1);
  UpdateSityWeather(gcsWeatherMoscowTemperature, gcsWeatherMoscowHumidity, ATemperature, AHumidity);
end;

procedure TfrmWeatherForecast.UpdateSityWeather(ATemperatureScale, AHumidityScale: TdxGaugeCircularScale;
  ATemperature, AHumidity: Single);
begin
  ATemperatureScale.Value := ATemperature;
  AHumidityScale.Value := AHumidity;
end;

procedure TfrmWeatherForecast.Timer1Timer(Sender: TObject);
begin
  UpdateWeatherDate;
  UpdateLosAngeles;
  UpdateMoscowWeather;
  UpdateLondonWeather;
end;

procedure TfrmWeatherForecast.FormCreate(Sender: TObject);
begin
  inherited;
  FDate := Now;
  UpdateWeatherDate;
  UpdateLosAngeles;
  UpdateMoscowWeather;
  UpdateLondonWeather;
end;

function TfrmWeatherForecast.GetDescription: string;
begin
  Result :=
    'This demo illustrates fictional weather forecasts (temperature and relative humidity) for certain cities, ' +
    'visualized with the gauge created with circular scales, custom scale captions, and range bars. ' +
    'Resize the application''s window to scale the gauge.';
end;

initialization
  TfrmWeatherForecast.Register;

end.
