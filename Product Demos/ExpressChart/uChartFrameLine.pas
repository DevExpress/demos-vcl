unit uChartFrameLine;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxChartCustomFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxGeometry, cxClasses, cxVariants, dxCustomData, cxCustomCanvas, dxCoreGraphics, dxChartCore, dxChartData,
  dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView, dxChartXYSeriesAreaView,
  dxChartMarkers, dxChartXYSeriesBarView, dxChartDBData, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxCoreClasses, dxLayoutLookAndFeels, dxChartControl, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutControl, MainData, Data.DB, dxChartPalette;

type
  TdxChartLineFrame = class(TdxChartCustomFrame)
    cdLine: TdxChartXYDiagram;
    csLineEurope: TdxChartXYSeries;
    csLineAmericas: TdxChartXYSeries;
    csLineAfrica: TdxChartXYSeries;
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

{ TdxChartLineFrame }

function TdxChartLineFrame.GetDescription: string;
begin
  Result := 'This demo illustrates a Chart control that displays multiple Line series on an XY diagram.' +
    ' You can click legend checkboxes to hide or display the corresponding line series. Use the "Options" pane to customize diagram and series appearance.' +
    ' The "Designer" button invokes the Chart Designer dialog where you can find more chart customization options.';
end;

initialization
  dxFrameManager.RegisterFrame(ChartControlLineID, TdxChartLineFrame, ChartControlLineName,
    ChartViewsGroupIndex, ChartViewsGroupIndex, -1);
end.
