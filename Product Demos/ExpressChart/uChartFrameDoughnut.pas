unit uChartFrameDoughnut;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxChartCustomFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGeometry, cxClasses, cxVariants, dxCustomData, cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData,
  dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView, dxChartXYSeriesAreaView,
  dxChartMarkers, dxChartXYSeriesBarView, dxChartDBData, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxCoreClasses, dxLayoutLookAndFeels, dxChartControl, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutControl, MainData, Data.DB;

type
  TdxChartFrameDoughnut = class(TdxChartCustomFrame)
    cdDoughnut: TdxChartSimpleDiagram;
    csDoughnut: TdxChartSimpleSeries;
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
  public
    { Public declarations }
  end;

var
  dxChartFrameDoughnut: TdxChartFrameDoughnut;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs;

{ TdxChartFrameDoughnut }

function TdxChartFrameDoughnut.GetDescription: string;
begin
  Result := 'This demo shows a Doughnut series. You can click legend checkboxes to hide or display the corresponding the corresponding series values. ' +
    'Use the "Options" pane to customize diagram and series appearance. ' +
    'The "Designer" button invokes the Chart Designer dialog where you can find more chart customization options.';
end;

initialization
  dxFrameManager.RegisterFrame(ChartControlDoughnutID, TdxChartFrameDoughnut, ChartControlDoughnutName,
    ChartViewsGroupIndex, ChartViewsGroupIndex, -1);
end.
