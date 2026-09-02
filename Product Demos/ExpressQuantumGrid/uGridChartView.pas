unit uGridChartView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxLabel, cxGrid,
  Vcl.ExtCtrls, cxClasses, cxGridLevel, cxCustomData, Data.DB, cxDBData, cxFilter,
  cxData, cxDataStorage, dxmdaset, Vcl.ImgList, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridChartView, cxGridDBChartView,
  dxLayoutLookAndFeels, System.Actions,
  cxGridCustomView, dxOffice11, cxNavigator, dxGDIPlusClasses, cxImage, cxGroupBox, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations,
  dxPanel, cxGeometry, dxFramedControl;

type
  TdxGridChartViewFrame = class(TdxGridFrame)
    PaymentTypeImages: TImageList;
    ChartViewStyles: TcxStyleRepository;
    cvStyle1: TcxStyle;
    cvStyle2: TcxStyle;
    cvStyle3: TcxStyle;
    cvStyle4: TcxStyle;
    cvStyle5: TcxStyle;
    cvStyle6: TcxStyle;
    cvStyle7: TcxStyle;
    gvBarsChartView: TcxGridDBChartView;
    cxGridDBChartSeries1: TcxGridDBChartSeries;
    cxGridDBChartSeries2: TcxGridDBChartSeries;
    cxGridDBChartSeries3: TcxGridDBChartSeries;
    cxGridDBChartSeries4: TcxGridDBChartSeries;
    cxGridDBChartSeries5: TcxGridDBChartSeries;
    cxGridDBChartSeries6: TcxGridDBChartSeries;
    glBarsChart: TcxGridLevel;
    dsSales: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1Country: TStringField;
    dxMemData1Male14: TFloatField;
    dxMemData1Male64: TFloatField;
    dxMemData1Male65: TFloatField;
    dxMemData1Female14: TFloatField;
    dxMemData1Female64: TFloatField;
    dxMemData1Female65: TFloatField;
    glBarsTable: TcxGridLevel;
    gvBarsTableView: TcxGridDBTableView;
    gvBarsTableViewRecId: TcxGridDBColumn;
    gvBarsTableViewCountry: TcxGridDBColumn;
    gvBarsTableViewMale14: TcxGridDBColumn;
    gvBarsTableViewMale64: TcxGridDBColumn;
    gvBarsTableViewMale65: TcxGridDBColumn;
    gvBarsTableViewFemale14: TcxGridDBColumn;
    gvBarsTableViewFemale64: TcxGridDBColumn;
    gvBarsTableViewFemale65: TcxGridDBColumn;
    dxMemData2: TdxMemData;
    dxMemData2Politics: TIntegerField;
    dxMemData2Category: TDateTimeField;
    dxMemData2Entertainment: TIntegerField;
    dxMemData2Travel: TIntegerField;
    glAreaChart: TcxGridLevel;
    glAreaTable: TcxGridLevel;
    gvAreaChartView: TcxGridDBChartView;
    DataSource1: TDataSource;
    gvAreaChartViewSeries1: TcxGridDBChartSeries;
    gvAreaChartViewSeries2: TcxGridDBChartSeries;
    gvAreaChartViewSeries3: TcxGridDBChartSeries;
    gvAreaTableView: TcxGridDBTableView;
    gvAreaTableViewRecId: TcxGridDBColumn;
    gvAreaTableViewCategory: TcxGridDBColumn;
    gvAreaTableViewPolitics: TcxGridDBColumn;
    gvAreaTableViewEntertainment: TcxGridDBColumn;
    gvAreaTableViewTravel: TcxGridDBColumn;
    procedure gvChartViewDiagramStackedBarCustomDrawValue(
      Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
      AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
    procedure ChartViewActiveDiagramChanged(Sender: TcxGridChartView;
      ADiagram: TcxGridChartDiagram);
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
    function GetDescription: string; override;
    procedure UpdateTitles;
  end;

implementation

uses maindata, dxFrames, FrameIDs, uStrsConst, dxDemoUtils;

{$R *.dfm}

constructor TdxGridChartViewFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  ActualizeDateTimesFields(dxMemData2, ['CATEGORY', 30]);
end;

procedure TdxGridChartViewFrame.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
    UpdateTitles;
end;

function TdxGridChartViewFrame.GetDescription: string;
begin
  Result := sdxFrameChartViewDescription;
end;

procedure TdxGridChartViewFrame.gvChartViewDiagramStackedBarCustomDrawValue(
  Sender: TcxGridChartDiagram; ACanvas: TcxCanvas;
  AViewInfo: TcxGridChartDiagramValueViewInfo; var ADone: Boolean);
var
  C1: TColor;
begin
  C1 := dxGetLighterColor(AViewInfo.Params.Color, 75);
  FillGradientRect(ACanvas.Handle, AViewInfo.Bounds, C1,
    AViewInfo.Params.Color, Sender is TcxGridChartStackedBarDiagram);
  ADone := True;
end;

procedure TdxGridChartViewFrame.ChartViewActiveDiagramChanged(
  Sender: TcxGridChartView; ADiagram: TcxGridChartDiagram);
begin
  UpdateTitles;
end;

procedure TdxGridChartViewFrame.UpdateTitles;
const
  Description: array[TcxGridChartStackedDiagramStyle] of string = (
    'Stacked %s Diagram', 'Full Stacked %s Diagram',
    'Side-By-Side Stacked %s Diagram', 'Side-By-Side Full Stacked %s Diagram'
  );
  Orientation: array[Boolean] of string = ('Bars', 'Columns');
begin
  if gvBarsChartView.ActiveDiagram is TcxGridChartStackedColumnDiagram then
    glBarsChart.Caption := 'Population - ' +
      Format(Description[TcxGridChartStackedColumnDiagram(gvBarsChartView.ActiveDiagram).StackedStyle],
      [Orientation[gvBarsChartView.ActiveDiagram is TcxGridChartStackedColumnDiagram]])
  else
    glBarsChart.Caption := 'Population - ' + gvBarsChartView.ActiveDiagram.DisplayText;

  glAreaChart.Caption := 'Website Popularity - ' + gvAreaChartView.ActiveDiagram.DisplayText;
end;

initialization
  dxFrameManager.RegisterFrame(GridChartViewFrameID, TdxGridChartViewFrame,
    GridChartViewFrameName, GridChartViewImageIndex, GridViewGroupIndex, -1, -1);


end.
