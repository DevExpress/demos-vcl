unit dxGaugeControlQuarterCircularGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmQuarterCircularGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl3SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl3SplitterItem2: TdxLayoutSplitterItem;
    gcCircularQuarterYellowSubmarine: TdxGaugeControl;
    dxGaugeControl7CircularQuarterLeftScale1: TdxGaugeCircularQuarterLeftScale;
    gcCircularQuarterDeepFire: TdxGaugeControl;
    dxGaugeControl8CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale;
    dxGaugeControl8CircularQuarterRightScale1Range: TdxGaugeCircularScaleRange;
    dxGaugeControl8CircularQuarterRightScale1Range1: TdxGaugeCircularScaleRange;
    dxGaugeControl8CircularQuarterRightScale1Range2: TdxGaugeCircularScaleRange;
    gcCircularQuarterSmart: TdxGaugeControl;
    dxGaugeControl9CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale;
    dxLayoutControl3Item1: TdxLayoutItem;
    dxLayoutControl3Item2: TdxLayoutItem;
    dxLayoutControl3Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmQuarterCircularGauges.GetID: Integer;
begin
  Result := 2;
end;

function TfrmQuarterCircularGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with quarter-circular scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;


initialization
  TfrmQuarterCircularGauges.Register;

end.
