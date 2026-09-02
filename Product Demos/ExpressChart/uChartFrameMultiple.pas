unit uChartFrameMultiple;

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
  TdxChartFrameMultiple = class(TdxChartCustomFrame)
    cdVisitors: TdxChartXYDiagram;
    csStackedBarNewVisitors: TdxChartXYSeries;
    csStackedBarReturnVisitors: TdxChartXYSeries;
    cdUserTraffic: TdxChartXYDiagram;
    csLineUniqueUsers: TdxChartXYSeries;
    csLineResponseTime: TdxChartXYSeries;
    cdHTTPErrorStatusCodesNewVisitors: TdxChartXYDiagram;
    csBarNewVisitors: TdxChartXYSeries;
    csLineClientErrors: TdxChartXYSeries;
    csAreaServerErrors: TdxChartXYSeries;
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs;

{ TdxChartFrameMultiple }

function TdxChartFrameMultiple.GetDescription: string;
begin
  Result := 'This demo illustrates a Chart control that displays multiple diagrams with different series types on the same diagram. ' +
    'You can click the "Designer" button to invoke the Chart Designer dialog where you can customize the appearance of all diagrams and series.';
end;

initialization
  dxFrameManager.RegisterFrame(ChartControlMultipleDiagramsID, TdxChartFrameMultiple, ChartControlMultipleDiagramsName,
    ChartViewsGroupIndex, ChartViewsGroupIndex, -1);
end.
