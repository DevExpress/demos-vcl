unit dxGaugeControlFullCircularGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmFullCircularGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    gcCircularDeepFire: TdxGaugeControl;
    dxGaugeCircularScale3: TdxGaugeCircularScale;
    dxGaugeCircularScale3Caption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeCircularScale3Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeControl6dxGaugeCircularScale1: TdxGaugeCircularScale;
    dxGaugeControl6dxGaugeCircularScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    dxLayoutControl1Item1: TdxLayoutItem;
    gcCircularWhite: TdxGaugeControl;
    dxGaugeCircularScale4: TdxGaugeCircularScale;
    dxGaugeCircularScale4Caption1: TdxGaugeQuantitativeScaleCaption;
    dxGaugeCircularScale4Caption2: TdxGaugeQuantitativeScaleCaption;
    dxGaugeCircularScale4Range: TdxGaugeCircularScaleRange;
    dxGaugeCircularScale4Range1: TdxGaugeCircularScaleRange;
    dxGaugeCircularScale4Range2: TdxGaugeCircularScaleRange;
    gcCircularCleanWhite: TdxGaugeControl;
    dxGaugeCircularScale1: TdxGaugeCircularScale;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmFullCircularGauges.GetID: Integer;
begin
  Result := 0;
end;

function TfrmFullCircularGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with full circular scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmFullCircularGauges.Register;

end.
