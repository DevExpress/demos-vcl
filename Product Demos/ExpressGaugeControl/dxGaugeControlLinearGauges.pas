unit dxGaugeControlLinearGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmLinearGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl4SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl4SplitterItem2: TdxLayoutSplitterItem;
    gcLinearSmart: TdxGaugeControl;
    dxGaugeLinearScale1: TdxGaugeLinearScale;
    dxGaugeControl2LinearScale1: TdxGaugeLinearScale;
    dxGaugeControl2LinearScale1Range: TdxGaugeLinearScaleRange;
    dxGaugeControl2LinearScale1Range1: TdxGaugeLinearScaleRange;
    gcLinearYellowSubmarine: TdxGaugeControl;
    dxGaugeLinearScale2: TdxGaugeLinearScale;
    dxGaugeControl3LinearScale1: TdxGaugeLinearScale;
    gcLinearIceColdZone: TdxGaugeControl;
    dxGaugeControl1LinearScale1: TdxGaugeLinearScale;
    dxGaugeControl1LinearScale1Caption1: TdxGaugeQuantitativeScaleCaption;
    dxLayoutControl4Item1: TdxLayoutItem;
    dxLayoutControl4Item2: TdxLayoutItem;
    dxLayoutControl4Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmLinearGauges.GetID: Integer;
begin
  Result := 3;
end;

function TfrmLinearGauges.GetDescription: string;
begin
  Result := 'This demo illustrates sample gauges created with linear scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmLinearGauges.Register;

end.
