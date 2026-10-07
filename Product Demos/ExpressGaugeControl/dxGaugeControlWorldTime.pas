unit dxGaugeControlWorldTime;

interface

uses
  Vcl.Forms, Vcl.StdCtrls, System.Classes, Vcl.Controls, Vcl.ExtCtrls, cxClasses, cxGraphics, dxGDIPlusClasses, cxLookAndFeels,
  cxLookAndFeelPainters, cxImage, dxLayoutLookAndFeels, cxControls, cxSplitter, cxContainer, cxEdit, cxLabel, dxBar,
  dxLayoutContainer, dxLayoutControl, dxGaugeCustomScale, dxGaugeQuantitativeScale, dxGaugeCircularScale,
  dxGaugeControl, dxGaugeDigitalScale, dxGaugeControlBaseFormUnit, dxLayoutcxEditAdapters;

type
  TTimeInfo = record
    Hour: Word;
    Min: Word;
    Sec: Word;
  end;

  TfrmWorldTime = class(TdxGaugeControlDemoUnitForm)
    Timer1: TTimer;
    gcWashingtonTime: TdxGaugeControl;
    gsWashingtonTimeBackgroundLayer: TdxGaugeCircularScale;
    gsWashingtonTimeHourNeedle: TdxGaugeCircularScale;
    gsWashingtonTimeMinuteNeedle: TdxGaugeCircularScale;
    gsWashingtonTimeSecondNeedle: TdxGaugeCircularScale;
    gcParisTime: TdxGaugeControl;
    dxGaugeCircularScale1: TdxGaugeCircularScale;
    dxGaugeCircularScale2: TdxGaugeCircularScale;
    dxGaugeCircularScale3: TdxGaugeCircularScale;
    dxGaugeCircularScale4: TdxGaugeCircularScale;
    gcMoscowTime: TdxGaugeControl;
    dxGaugeCircularScale5: TdxGaugeCircularScale;
    dxGaugeCircularScale6: TdxGaugeCircularScale;
    dxGaugeCircularScale7: TdxGaugeCircularScale;
    dxGaugeCircularScale8: TdxGaugeCircularScale;
    gcLocalTime: TdxGaugeControl;
    gsDigital: TdxGaugeDigitalScale;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Item4: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    dxLayoutControl1SplitterItem3: TdxLayoutSplitterItem;
    cxLabel1: TcxLabel;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup;
    cxLabel2: TcxLabel;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup;
    dxLayoutControl1Item8: TdxLayoutItem;
    cxLabel3: TcxLabel;
    dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  protected
    function GetDescription: string; override;
    function GetTimeInfo(ATimeZone: Integer): TTimeInfo;
    procedure UpdateClock(AGaugeControl: TdxGaugeControl; ATimeInfo: TTimeInfo);
    procedure UpdateClocks;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, Winapi.Windows, System.SysUtils, cxDateUtils;

{ TfrmWorldTime }

function TfrmWorldTime.GetTimeInfo(ATimeZone: Integer): TTimeInfo;
var
  AMilli : Word;
  ASystemTime: TSystemTime;
begin
  GetSystemTime(ASystemTime);
  DecodeTime(SystemTimeToDateTime(ASystemTime), Result.Hour, Result.Min, Result.Sec, AMilli);
  Result.Hour := (Result.Hour + ATimeZone) mod 12;
end;

procedure TfrmWorldTime.UpdateClock(AGaugeControl: TdxGaugeControl; ATimeInfo: TTimeInfo);
begin
  AGaugeControl.BeginUpdate;
  TdxGaugeCircularScale(AGaugeControl.Scales[3]).Value := ATimeInfo.Min;
  TdxGaugeCircularScale(AGaugeControl.Scales[2]).Value := ATimeInfo.Hour + ATimeInfo.Min / 60;
  TdxGaugeCircularScale(AGaugeControl.Scales[1]).Value := ATimeInfo.Sec;
  AGaugeControl.EndUpdate;
end;

procedure TfrmWorldTime.UpdateClocks;
begin
  UpdateClock(gcWashingtonTime, GetTimeInfo(-4));
  UpdateClock(gcParisTime, GetTimeInfo(1));
  UpdateClock(gcMoscowTime, GetTimeInfo(3));
  gsDigital.Value := cxTimeToStr(Now, 'hh:mm:ss');
end;

class function TfrmWorldTime.GetID: Integer;
begin
  Result := 10;
end;

procedure TfrmWorldTime.Timer1Timer(Sender: TObject);
begin
  UpdateClocks;
end;

procedure TfrmWorldTime.FormCreate(Sender: TObject);
begin
  inherited;
  UpdateClocks;
end;

function TfrmWorldTime.GetDescription: string;
begin
  Result :=
    'In this demo, gauges are used to show the current time in certain cities around the world. Resize the application' +
    '''' + 's window or drag the splitters between the clocks to scale the gauges.';
end;

initialization
  TfrmWorldTime.Register;

end.
