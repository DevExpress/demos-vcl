unit dxGaugeControlCarBreakTester;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxControls, cxClasses, cxLookAndFeels, cxLookAndFeelPainters, dxBar, cxImage, cxContainer, cxLabel, cxEdit,
  cxGraphics, dxGDIPlusClasses, dxGaugeCustomScale, dxGaugeDigitalScale, dxGaugeControl, dxGaugeQuantitativeScale,
  dxGaugeCircularScale, dxGaugeLinearScale, dxGaugeControlBaseFormUnit, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, cxGroupBox;

type
  TfrmGaugeControlCarBreakTester = class(TdxGaugeControlDemoUnitForm)
    tCarTesterTimer: TTimer;
    gcTester: TdxGaugeControl;
    gsMainScaleBackground: TdxGaugeCircularScale;
    gsColoredScaleBackground: TdxGaugeCircularScale;
    gsTesterValue4: TdxGaugeCircularScale;
    dxGaugeControl3CircularScale3Range: TdxGaugeCircularScaleRange;
    dxGaugeControl3CircularScale3Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl3CircularScale3Range2: TdxGaugeCircularScaleRange;
    gsTesterValue5: TdxGaugeDigitalScale;
    gsTesterValue6: TdxGaugeDigitalScale;
    gsTesterValue7: TdxGaugeDigitalScale;
    gsTesterValue3: TdxGaugeCircularScale;
    gsTesterValue3Caption1: TdxGaugeQuantitativeScaleCaption;
    gsScaleTicks2: TdxGaugeCircularScale;
    dxGaugeControl3CircularScale5Range: TdxGaugeCircularScaleRange;
    gsScaleTicks1: TdxGaugeCircularScale;
    dxGaugeControl3CircularScale6Range: TdxGaugeCircularScaleRange;
    gsMainBackground: TdxGaugeLinearScale;
    gsBackground: TdxGaugeDigitalScale;
    gsTesterValue1: TdxGaugeCircularScale;
    gsTesterValue1Caption1: TdxGaugeQuantitativeScaleCaption;
    gsTesterValue1Caption2: TdxGaugeQuantitativeScaleCaption;
    gsTesterValue1Caption3: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl3CircularScale7Range: TdxGaugeCircularScaleRange;
    gsTesterValue2: TdxGaugeCircularScale;
    cxGroupBox1: TcxGroupBox;
    dxLayoutItem1: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure tCarTesterTimerTimer(Sender: TObject);
  private
    procedure LoadCustomStyles;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

uses
  System.SysUtils, System.Types, System.Math, dxCore;

{$R *.dfm}

const
  Offset = 5;

function GetRandomValueDelta(AFrom, ATo, ARange: Integer): Single;
begin
  Randomize;
  Result := Sign(RandomFrom([-1, 1])) * RandomRange(AFrom, ATo) / ARange;
end;

procedure TfrmGaugeControlCarBreakTester.tCarTesterTimerTimer(Sender: TObject);
var
  AFormatSettings: TFormatSettings;
begin
  gsTesterValue1.Value := gsTesterValue1.Value + GetRandomValueDelta(1, 5, 100);
  gsTesterValue2.Value := gsTesterValue2.Value + GetRandomValueDelta(1, 20, 10);
  gsTesterValue3.Value := gsTesterValue3.Value + GetRandomValueDelta(1, 4, 10);
  gsTesterValue4.Value := gsTesterValue4.Value + GetRandomValueDelta(1, 3, 1);
  AFormatSettings.DecimalSeparator := ',';
  gsTesterValue5.Value := FormatFloat('000.0',
    Min(Max(dxStrToFloat(gsTesterValue5.Value, ',') + GetRandomValueDelta(1, 5, 10), 0), 100), AFormatSettings);
  gsTesterValue6.Value := FormatFloat('000',
    Min(Max(dxStrToFloat(gsTesterValue6.Value, ',') + GetRandomValueDelta(-10, 10, 1), -99), 999), AFormatSettings);
  gsTesterValue7.Value := IntToStr(StrToInt(gsTesterValue7.Value) + Round(GetRandomValueDelta(-1, 1, 1)));
end;

class function TfrmGaugeControlCarBreakTester.GetID: Integer;
begin
  Result := 9;
end;

procedure TfrmGaugeControlCarBreakTester.LoadCustomStyles;
begin
  dxGaugeUnregisterStyle(stCircularScale, 'RedNeedle');
  dxGaugeUnregisterStyle(stCircularScale, 'GreenNeedle');
  dxGaugeUnregisterStyle(stLinearScale, 'CustomLinearScaleStyle');
  dxGaugeRegisterStyleFromFile(stCircularScale, 'Data\RedNeedle.xml');
  dxGaugeRegisterStyleFromFile(stCircularScale, 'Data\GreenNeedle.xml');
  dxGaugeRegisterStyleFromFile(stLinearScale, 'Data\CustomLinearScaleStyle.xml');
  gsMainBackground.OptionsView.ShowBackground := True;
  gsMainBackground.StyleName := 'CustomLinearScaleStyle';
  gsTesterValue1.StyleName := 'GreenNeedle';
  gsTesterValue2.StyleName := 'RedNeedle';
end;

procedure TfrmGaugeControlCarBreakTester.FormCreate(Sender: TObject);
begin
  inherited;
  tCarTesterTimer.Enabled := True;
  LoadCustomStyles;
  gsTesterValue3.Value := 0;
  gsTesterValue7.Value := '1345';
end;

function TfrmGaugeControlCarBreakTester.GetDescription: string;
begin
  Result :=
    'This demo illustrates a sample car brake and suspension tester created with circular, linear, and digital scales. ' +
    'Resize the application''s window to scale the tester.';
end;

initialization
  TfrmGaugeControlCarBreakTester.Register;

end.
