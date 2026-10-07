unit dxGaugeControlWideCircularGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxClasses, cxLookAndFeelPainters,
  dxGDIPlusClasses, dxBarBuiltInMenu, cxPC, cxImage,  cxContainer, cxEdit, cxTrackBar, dxBar, cxLabel,
  dxGaugeDigitalScale, dxGaugeCustomScale, dxGaugeCircularScale, dxGaugeLinearScale, dxGaugeQuantitativeScale,
  dxGaugeControl, dxGaugeControlBaseFormUnit, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels;

type
  TfmWideCircularGauges = class(TdxGaugeControlDemoUnitForm)
    gcDigitalDeepFire: TdxGaugeControl;
    gcDigitalIceColdZone: TdxGaugeControl;
    gcDigitalWhite: TdxGaugeControl;
    gcDigitalScaleText: TdxGaugeControl;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5Group2: TdxLayoutAutoCreatedGroup;
    dxLayoutControl5SplitterItem2: TdxLayoutSplitterItem;
    dxLayoutControl5Item4: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutControl5Item3: TdxLayoutItem;
    dxLayoutControl5Item7: TdxLayoutItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl5SplitterItem5: TdxLayoutSplitterItem;
    gcDigitalIceColdZoneCircularWideScale1: TdxGaugeCircularWideScale;
    gcDigitalWhiteCircularWideScale1: TdxGaugeCircularWideScale;
    gcDigitalScaleTextCircularWideScale1: TdxGaugeCircularWideScale;
    gcDigitalDeepFireCircularWideScale1: TdxGaugeCircularWideScale;
    gcDigitalDeepFireCircularWideScale1Range1: TdxGaugeCircularWideScaleRange;
    gcDigitalDeepFireCircularWideScale1Range2: TdxGaugeCircularWideScaleRange;
    gcDigitalDeepFireCircularWideScale1Range3: TdxGaugeCircularWideScaleRange;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
 end;

implementation

uses
  System.SysUtils, Vcl.Graphics, dxCore, dxCoreGraphics, cxDateUtils;

{$R *.dfm}

class function TfmWideCircularGauges.GetID: Integer;
begin
  Result := 12;
end;

function TfmWideCircularGauges.GetDescription: string;
begin
  Result :=
    'This demo illustrates sample gauges created with wide circular scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfmWideCircularGauges.Register;

end.
