unit uChartFrameSecondaryAxes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxChartCustomFrameUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGeometry, cxClasses, cxVariants, dxCustomData, cxCustomCanvas,
  dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram,
  dxChartXYSeriesLineView, dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutLookAndFeels, dxChartPalette, dxChartControl, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutControl, dxCoreClasses, dxChartDBData, MainData;

type
  TdxChartFrameSecondaryAxes = class(TdxChartCustomFrame)
    cdSecondaryAxes: TdxChartXYDiagram;
    csSales: TdxChartXYSeries;
    csPrice: TdxChartXYSeries;
    csIncome: TdxChartXYSeries;
    procedure cdSecondaryAxesGetAxisValueLabelDrawParameters(Sender:
        TdxChartCustomDiagram; AArgs:
        TdxChartGetAxisValueLabelDrawParametersEventArgs);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dxChartFrameSecondaryAxes: TdxChartFrameSecondaryAxes;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs;

procedure
    TdxChartFrameSecondaryAxes.cdSecondaryAxesGetAxisValueLabelDrawParameters(
    Sender: TdxChartCustomDiagram; AArgs:
    TdxChartGetAxisValueLabelDrawParametersEventArgs);
begin
  if VarIsNumeric(AArgs.Value) then begin
    if AArgs.Value >= 1000.0 * 1000 then
      AArgs.Text := Format('%gM', [Double(AArgs.Value) / 1000000])
    else if AArgs.Value >= 1000.0 then
      AArgs.Text := Format('%gk', [Double(AArgs.Value) / 1000]);
  end;
end;

initialization
  dxFrameManager.RegisterFrame(ChartControlSecondaryAxesID, TdxChartFrameSecondaryAxes, ChartControlSecondaryAxes,
    HighlightFeaturesGroupIndex, HighlightFeaturesGroupIndex, -1);
end.
