unit uChartFrameLogarithmicAxes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxChartCustomFrameUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGeometry, cxClasses, cxVariants, dxCustomData, cxCustomCanvas,
  dxCoreGraphics, dxChartCore, dxChartData, dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram,
  dxChartXYSeriesLineView, dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutLookAndFeels, dxChartPalette, dxChartControl, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutControl, dxCoreClasses;

type
  TdxChartFrameLogarithmicAxes = class(TdxChartCustomFrame)
    cdLogarithmicScale: TdxChartXYDiagram;
    csHeadphone1Spl90: TdxChartXYSeries;
    csHeadphone1Spl100: TdxChartXYSeries;
    csHeadphone2Spl90: TdxChartXYSeries;
    csHeadphone2Spl100: TdxChartXYSeries;
  private
    procedure ColorizeSeries;
    procedure LoadData;
  protected
    function IsValueLabelsControlVisible: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    function IsDesignerAvailable: Boolean; override;
    procedure PaletteChanged; override;
  end;

var
  dxChartFrameLogarithmicAxes: TdxChartFrameLogarithmicAxes;

implementation

{$R *.dfm}
uses
  dxFrames, FrameIDs, dxCore;

{ TdxChartFrameLogarithmicAxes }

constructor TdxChartFrameLogarithmicAxes.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  LoadData;
  ColorizeSeries;
end;

function TdxChartFrameLogarithmicAxes.IsDesignerAvailable: Boolean;
begin
  Result := False;
end;

function TdxChartFrameLogarithmicAxes.IsValueLabelsControlVisible: Boolean;
begin
  Result := False;
end;

procedure TdxChartFrameLogarithmicAxes.ColorizeSeries;
  procedure Colorize(AView: TdxChartXYSeriesLineView; AColor: TdxAlphaColor);
  begin
    AView.Appearance.StrokeOptions.Color := AColor;
    AView.ValueLabels.Appearance.TextColor := AColor;
    AView.Markers.Appearance.FillOptions.Color := AColor;
    AView.Markers.Appearance.BorderColor := TdxAlphaColors.FromArgb(TdxAlphaColors.R(AColor) * 235 div 255,
                                      TdxAlphaColors.G(AColor) * 235 div 255,
                                      TdxAlphaColors.B(AColor) * 235 div 255
                                     );
  end;
var
  ALineView: TdxChartXYSeriesLineView;
begin
  inherited PaletteChanged;
  if Safe.Cast<TdxChartXYSeriesLineView>(csHeadphone1Spl90.View, ALineView) then
    Colorize(ALineView, ccDemoChart.Palette.Items[0].Color);
  if Safe.Cast<TdxChartXYSeriesLineView>(csHeadphone1Spl100.View, ALineView) then
    Colorize(ALineView, ccDemoChart.Palette.GetColorsForIndex(ccDemoChart.Palette.Count).Color);
  if Safe.Cast<TdxChartXYSeriesLineView>(csHeadphone2Spl90.View, ALineView) then
    Colorize(ALineView, ccDemoChart.Palette.Items[1].Color);
  if Safe.Cast<TdxChartXYSeriesLineView>(csHeadphone2Spl100.View, ALineView) then
    Colorize(ALineView, ccDemoChart.Palette.GetColorsForIndex(ccDemoChart.Palette.Count + 1).Color);
end;

procedure TdxChartFrameLogarithmicAxes.LoadData;
var
  AStrings: TStringList;
  AFileName: string;
  ALine: string;
  ACells: TArray<string>;
  AFrequency, ASpl90Db, ASpl100Db: Double;
  AFormatSettings: TFormatSettings;
begin
  AFormatSettings := TFormatSettings.Invariant;
  AStrings := TStringList.Create;
  try
    AFileName := ExtractFilePath(Application.ExeName) + 'Data\HeadphoneComparison.dat';
    AStrings.LoadFromFile(AFileName);
    for ALine in AStrings do
    begin
      if (ALine = '') or ALine.StartsWith('//') then
        Continue;
      ACells := ALine.Split([',']);
      if Length(ACells) < 4 then
        Continue;
      AFrequency := StrToFloat(ACells[1], AFormatSettings);
      ASpl90Db := StrToFloat(ACells[2], AFormatSettings);
      ASpl100Db := StrToFloat(ACells[3], AFormatSettings);
      if ACells[0] = 'Headphones 1' then
      begin
        csHeadphone1Spl90.Points.Add(AFrequency, ASpl90Db);
        csHeadphone1Spl100.Points.Add(AFrequency, ASpl100Db);
      end
      else if ACells[0] = 'Headphones 2' then
      begin
        csHeadphone2Spl90.Points.Add(AFrequency, ASpl90Db);
        csHeadphone2Spl100.Points.Add(AFrequency, ASpl100Db);
      end;
    end;
  finally
    FreeAndNil(AStrings);
  end;
end;

procedure TdxChartFrameLogarithmicAxes.PaletteChanged;
begin
  inherited PaletteChanged;
  ColorizeSeries;
end;

initialization
  dxFrameManager.RegisterFrame(ChartControlLogarithmicAxesID, TdxChartFrameLogarithmicAxes, ChartControlLogarithmicAxes,
    HighlightFeaturesGroupIndex, HighlightFeaturesGroupIndex, -1);

end.
