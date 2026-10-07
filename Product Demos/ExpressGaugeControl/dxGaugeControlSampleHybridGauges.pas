unit dxGaugeControlSampleHybridGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmSampleHybridGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl6SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl6SplitterItem2: TdxLayoutSplitterItem;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeCircularScale1: TdxGaugeCircularScale;
    dxGaugeDigitalScale1: TdxGaugeDigitalScale;
    dxGaugeCircularScale2: TdxGaugeCircularScale;
    gcHybridIceColdZoneCircularScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    gcHybrid: TdxGaugeControl;
    dxGaugeCircularScale5: TdxGaugeCircularScale;
    dxGaugeControl11dxGaugeDigitalScale1: TdxGaugeDigitalScale;
    gcHybridContainerScale1: TdxGaugeContainerScale;
    gcHybridLinearScale1: TdxGaugeLinearScale;
    gcHybridLinearScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    gcHybridCircularWideScale1: TdxGaugeCircularWideScale;
    gcHybridDarkNight: TdxGaugeControl;
    dxGaugeCircularScale3: TdxGaugeCircularScale;
    dxGaugeDigitalScale4: TdxGaugeDigitalScale;
    dxLayoutControl6Item1: TdxLayoutItem;
    dxLayoutControl6Item2: TdxLayoutItem;
    dxLayoutControl6Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmSampleHybridGauges.GetID: Integer;
begin
  Result := 5;
end;

function TfrmSampleHybridGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with circular and digital scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmSampleHybridGauges.Register;

end.
