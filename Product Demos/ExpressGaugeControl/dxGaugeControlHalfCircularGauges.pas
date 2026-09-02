unit dxGaugeControlHalfCircularGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmHalfCircularGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl2SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl2SplitterItem2: TdxLayoutSplitterItem;
    gcCircularHalfCleanWhite: TdxGaugeControl;
    dxGaugeCircularHalfScale2: TdxGaugeCircularHalfScale;
    dxGaugeCircularHalfScale2Range: TdxGaugeCircularScaleRange;
    dxGaugeCircularHalfScale2Range1: TdxGaugeCircularScaleRange;
    dxGaugeCircularHalfScale2Range2: TdxGaugeCircularScaleRange;
    gcCircularHalfClassic: TdxGaugeControl;
    dxGaugeCircularHalfScale1: TdxGaugeCircularHalfScale;
    gcCircularHalfYellowSubmarine: TdxGaugeControl;
    dxGaugeControl4CircularHalfScale1: TdxGaugeCircularHalfScale;
    dxGaugeControl4CircularHalfScale2: TdxGaugeCircularHalfScale;
    dxLayoutControl2Item1: TdxLayoutItem;
    dxLayoutControl2Item2: TdxLayoutItem;
    dxLayoutControl2Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmHalfCircularGauges.GetID: Integer;
begin
  Result := 1;
end;

function TfrmHalfCircularGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with half-circular scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmHalfCircularGauges.Register;

end.
