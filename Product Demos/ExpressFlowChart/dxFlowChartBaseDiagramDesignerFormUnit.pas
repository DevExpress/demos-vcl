unit dxFlowChartBaseDiagramDesignerFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutLookAndFeels, cxClasses, dxBar, dxLayoutControl,
  dxflchrt, dxFlowChartDesigner, Vcl.StdCtrls, dxLayoutControlAdapters,
  Vcl.ExtCtrls, System.ImageList, Vcl.ImgList, cxImageList;

type
  { TdxFlowChartBaseDiagramDesignerForm }

  TdxFlowChartBaseDiagramDesignerForm = class(TdxFlowChartDemoUnitForm)
    pnlFlowChartDesigner: TPanel;
    dxLayoutItem1: TdxLayoutItem;
    ilBase: TcxImageList;
  strict private
    FDesigner: TdxFlowChartDesigner;
    function GetFlowChart: TdxFlowChart;
  protected
    function GetDescription: string; override;
    procedure RegisterCustomShapes; virtual;
    procedure UnRegisterCustomShapes; virtual;

    procedure SaveChart;

    property ChartDesigner: TdxFlowChartDesigner read FDesigner;
    property FlowChart: TdxFlowChart read GetFlowChart;
  public
    function GetCaption: string; override;
    function GetBarManager: TdxBarManager; override;
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

    function GetFileName: string; virtual;
    function GetImages: TcxImageList; virtual;
    procedure LoadDiagram; virtual;
  end;

implementation

{$R *.dfm}

uses
  Main, cxGeometry, dxRibbon;

type
  TdxFlowChartRibbonStyleEditorAccess = class(TdxFlowChartDesigner);
  TdxFlowChartDesignerAccess = class(TdxFlowChartDesigner);

{ TdxFlowChartBaseDiagramDesignerForm }

procedure TdxFlowChartBaseDiagramDesignerForm.AfterConstruction;
begin
  inherited AfterConstruction;
  RegisterCustomShapes;
  FDesigner := TdxFlowChartDesigner.Create(Self);
  lcMain.BeginUpdate;
  try
    TdxFlowChartRibbonStyleEditorAccess(FDesigner).Chart.Parent := pnlFlowChartDesigner;
    FDesigner.dsShapes.Parent := pnlFlowChartDesigner;
    FDesigner.dsProperties.Parent := pnlFlowChartDesigner;
    FDesigner.dsProperties.Width := ScaleFactor.Apply(292);
    LoadDiagram;
  finally
    lcMain.EndUpdate;
  end;
end;

procedure TdxFlowChartBaseDiagramDesignerForm.BeforeDestruction;
begin
  UnRegisterCustomShapes;
  inherited BeforeDestruction;
end;

function TdxFlowChartBaseDiagramDesignerForm.GetFileName: string;
begin
  Result := '';
end;

function TdxFlowChartBaseDiagramDesignerForm.GetImages: TcxImageList;
begin
  Result := ilBase;
end;

procedure TdxFlowChartBaseDiagramDesignerForm.LoadDiagram;
var
  AFileName: string;
begin
  AFileName := GetFileName;
  if AFileName <> '' then
  begin
    TdxFlowChartRibbonStyleEditorAccess(FDesigner).Chart.Images := GetImages;
    FDesigner.LoadFromFile('Data\' + AFileName);
  end;
end;

function TdxFlowChartBaseDiagramDesignerForm.GetCaption: string;
begin
  Result := 'Diagram Designer';
end;

function TdxFlowChartBaseDiagramDesignerForm.GetDescription: string;
begin
  Result := 'This example shows a diagram created using the ExpressFlowChart control. All the basic and advanced operati' +
    'ons on the diagram are supported. You can move, resize, connect, and delete shapes, change their text and images,' +
    ' perform clipboard and undo/redo operations, and zoom the content with the Ctrl+Mouse Wheel gesture.';
end;

function TdxFlowChartBaseDiagramDesignerForm.GetFlowChart: TdxFlowChart;
begin
  Result := TdxFlowChartDesignerAccess(ChartDesigner).Chart;
end;

procedure TdxFlowChartBaseDiagramDesignerForm.RegisterCustomShapes;
begin
// do nothing
end;

procedure TdxFlowChartBaseDiagramDesignerForm.UnRegisterCustomShapes;
begin
// do nothing
end;

procedure TdxFlowChartBaseDiagramDesignerForm.SaveChart;
begin
  FlowChart.SaveToFile('Data\' + GetFileName);
end;

function TdxFlowChartBaseDiagramDesignerForm.GetBarManager: TdxBarManager;
begin
  Result := FDesigner.bmManager;
end;

end.
