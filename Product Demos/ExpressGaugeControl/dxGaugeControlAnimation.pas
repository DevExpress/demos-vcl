unit dxGaugeControlAnimation;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit, cxMaskEdit, cxSpinEdit, cxTextEdit, dxLayoutcxEditAdapters,
  cxDropDownEdit, cxTrackBar, cxGroupBox, cxRadioGroup;

type
  TfrmAnimation = class(TdxGaugeControlDemoUnitForm)
    dxGaugeControl2: TdxGaugeControl;
    dxGaugeControl2CircularScale1: TdxGaugeCircularScale;
    dxGaugeControl2LinearScale1: TdxGaugeLinearScale;
    rgTransitionEffect: TcxRadioGroup;
    cbTransitionEffectMode: TcxComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    Timer1: TTimer;
    dxGaugeControl2CircularScale1Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale1Range2: TdxGaugeCircularScaleRange;
    dxGaugeControl2CircularScale1Range3: TdxGaugeCircularScaleRange;
    dxGaugeControl2LinearScale1Range1: TdxGaugeLinearScaleRange;
    dxGaugeControl2LinearScale1Range2: TdxGaugeLinearScaleRange;
    dxGaugeControl2LinearScale1Range4: TdxGaugeLinearScaleRange;
    procedure FormCreate(Sender: TObject);
    procedure cbTransitionEffectModePropertiesChange(Sender: TObject);
    procedure rgTransitionEffectPropertiesChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

uses
  System.Math, dxAnimation;

{$R *.dfm}

function GetRandomValueDelta(AFrom, ATo, ARange: Integer): Single;
begin
  Randomize;
  Result := Sign(RandomFrom([-1, 1])) * RandomRange(AFrom, ATo) / ARange;
end;

class function TfrmAnimation.GetID: Integer;
begin
  Result := 15;
end;

procedure TfrmAnimation.rgTransitionEffectPropertiesChange(Sender: TObject);
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeControl2CircularScale1.OptionsAnimate.TransitionEffect := TdxGaugeQuantitativeScaleAnimationTransitionEffect(rgTransitionEffect.ItemIndex);
  dxGaugeControl2LinearScale1.OptionsAnimate.TransitionEffect := TdxGaugeQuantitativeScaleAnimationTransitionEffect(rgTransitionEffect.ItemIndex);
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmAnimation.Timer1Timer(Sender: TObject);
var
  AValue: Single;
begin
  dxGaugeControl2.BeginUpdate;
  AValue := dxGaugeControl2CircularScale1.Value + GetRandomValueDelta(20, 50, 1);
  while SameValue(Min(Max(AValue, 0), 100), dxGaugeControl2CircularScale1.Value) do
    AValue := dxGaugeControl2CircularScale1.Value + GetRandomValueDelta(20, 50, 1);
  dxGaugeControl2CircularScale1.Value := AValue;
  dxGaugeControl2LinearScale1.Value := AValue;
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmAnimation.cbTransitionEffectModePropertiesChange(Sender: TObject);
begin
  dxGaugeControl2.BeginUpdate;
  dxGaugeControl2CircularScale1.OptionsAnimate.TransitionEffectMode := TdxAnimationTransitionEffectMode(cbTransitionEffectMode.ItemIndex);
  dxGaugeControl2LinearScale1.OptionsAnimate.TransitionEffectMode := TdxAnimationTransitionEffectMode(cbTransitionEffectMode.ItemIndex);
  dxGaugeControl2.EndUpdate;
end;

procedure TfrmAnimation.FormCreate(Sender: TObject);
begin
  inherited;
  rgTransitionEffect.Properties.Items.Add.Caption := 'Linear';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Accelerate/Decelerate';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Cubic';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Tanh';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Back';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Bounce';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Circle';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Elastic';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Exponential';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Sine';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Quadratic';
  rgTransitionEffect.Properties.Items.Add.Caption := 'Quartic';
  rgTransitionEffect.ItemIndex := 0;
end;

function TfrmAnimation.GetDescription: string;
begin
  Result :=
    'This demo illustrates how to animate gauge value changes using built-in transition effects. ' +
    'Select the required transition effect and its mode located on the right to apply a corresponding easing function to animations.';
end;

initialization
  TfrmAnimation.Register;

end.
