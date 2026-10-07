unit dxGaugeControlDigitalGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmDigitalGauges = class(TdxGaugeControlDemoUnitForm)
    gcDigitalScaleText: TdxGaugeControl;
    dxGaugeDigitalScale7: TdxGaugeDigitalScale;
    gcDigitalClassic: TdxGaugeControl;
    dxGaugeDigitalScale1: TdxGaugeDigitalScale;
    gcDigitalFuture: TdxGaugeControl;
    dxGaugeDigitalScale8: TdxGaugeDigitalScale;
    gcDigitalIceColdZone: TdxGaugeControl;
    dxGaugeDigitalScale3: TdxGaugeDigitalScale;
    gcDigitalDeepFire: TdxGaugeControl;
    dxGaugeDigitalScale5: TdxGaugeDigitalScale;
    gcDigitalWhite: TdxGaugeControl;
    dxGaugeDigitalScale6: TdxGaugeDigitalScale;
    dxLayoutControl5Item1: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutControl5Item5: TdxLayoutItem;
    dxLayoutControl5Item6: TdxLayoutItem;
    dxLayoutControl5Item7: TdxLayoutItem;
    dxLayoutControl5Group1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5SplitterItem2: TdxLayoutSplitterItem;
    dxLayoutControl5SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl5SplitterItem3: TdxLayoutSplitterItem;
    dxLayoutControl5SplitterItem4: TdxLayoutSplitterItem;
    dxLayoutControl5SplitterItem5: TdxLayoutSplitterItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmDigitalGauges.GetID: Integer;
begin
  Result := 4;
end;

function TfrmDigitalGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with digital scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmDigitalGauges.Register;

end.
