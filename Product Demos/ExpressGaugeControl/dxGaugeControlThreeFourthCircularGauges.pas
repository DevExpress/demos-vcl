unit dxGaugeControlThreeFourthCircularGauges;

interface

uses
  System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxGDIPlusClasses, cxClasses, cxContainer, cxEdit,
  dxLayoutContainer, dxLayoutControl, cxLabel, dxBarBuiltInMenu, dxLayoutLookAndFeels, cxPC, dxBar, cxImage,
  dxGaugeCustomScale, dxGaugeControl, dxGaugeCircularScale, dxGaugeQuantitativeScale, dxGaugeDigitalScale,
  dxGaugeLinearScale, dxGaugeControlBaseFormUnit;

type
  TfrmThreeFourthCircularGauges = class(TdxGaugeControlDemoUnitForm)
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    gcCircularThreeFourthAfrica: TdxGaugeControl;
    dxGaugeControl5CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale;
    gcCircularThreeFourthFuture: TdxGaugeControl;
    dxGaugeControl6CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale;
    gcCircularThreeFourthDisco: TdxGaugeControl;
    dxGaugeControl7CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1Item2: TdxLayoutItem;
    dxLayoutControl1Item3: TdxLayoutItem;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmThreeFourthCircularGauges.GetID: Integer;
begin
  Result := 11;
end;

function TfrmThreeFourthCircularGauges.GetDescription: string;
begin
  Result :=
    'This demo illustrates sample gauges created with three-forth circular scales. Resize the application''s ' +
    'window or drag the splitters between the gauges to scale them.';
end;

initialization
  TfrmThreeFourthCircularGauges.Register;

end.
