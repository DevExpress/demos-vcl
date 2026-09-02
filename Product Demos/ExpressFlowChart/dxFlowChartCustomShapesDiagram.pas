unit dxFlowChartCustomShapesDiagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters, System.ImageList, Vcl.ImgList, cxImageList, dxBar,
  cxClasses, dxLayoutLookAndFeels, Vcl.ExtCtrls, dxLayoutControl, dxflchrt, Vcl.StdCtrls,
  dxGDIPlusClasses, dxFlowChartShapes;

type
  TfrmFlowChartCustomShapesDiagram = class(TdxFlowChartBaseDiagramDesignerForm)
  strict private
    FCustomStencil: TdxFlowChartAdvancedShapeStencil;
    procedure LoadDocumentImages;
    procedure OnDrawObjectExHandler(Sender: TdxCustomFlowChart; AObject: TdxFcObject; ACanvas: TdxGPCanvas;
      APaintData: TdxFcDrawExEventPaintData);
  protected
    FDOCXDocumentImage: TdxSmartImage;
    FXLSXDocumentImage: TdxSmartImage;

    function GetDescription: string; override;
    procedure RegisterCustomShapes; override;
    procedure UnRegisterCustomShapes; override;
  public
    destructor Destroy; override;
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
    procedure LoadDiagram; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, System.Math, cxGeometry, dxCoreGraphics, dxFlowChartDesigner;

const
  CustomShapeStencilID = 'Custom Shapes';
  CustomShapeStencilCaption = 'Custom Shapes';

type
  TdxFlowChartDesignerAccess = class(TdxFlowChartDesigner);
  TdxFlowChartAdvancedShapeRepositoryAccess = class(TdxFlowChartAdvancedShapeRepository);

{ TdxFlowChartBaseDiagramDesignerForm1 }

destructor TfrmFlowChartCustomShapesDiagram.Destroy;
begin
  FreeAndNil(FDOCXDocumentImage);
  FreeAndNil(FXLSXDocumentImage);
  inherited Destroy;
end;

class function TfrmFlowChartCustomShapesDiagram.GetID: Integer;
begin
  Result := 6;
end;

function TfrmFlowChartCustomShapesDiagram.GetCaption: string;
begin
  Result := 'Custom Shapes';
end;

function TfrmFlowChartCustomShapesDiagram.GetFileName: string;
begin
  Result := 'CustomShapes.flc'
end;

procedure TfrmFlowChartCustomShapesDiagram.LoadDiagram;
var
  ACustomShapesStencilMenuButton: TdxBarButton;
begin
  inherited LoadDiagram;
  LoadDocumentImages;
  FlowChart.OnDrawObjectEx := OnDrawObjectExHandler;
  ACustomShapesStencilMenuButton := TdxBarButton(ChartDesigner.bpmStencils.ItemLinks[ChartDesigner.bpmStencils.ItemLinks.Count - 1].Item);
  ACustomShapesStencilMenuButton.Down := True;
  ACustomShapesStencilMenuButton.DoClick;
end;

procedure TfrmFlowChartCustomShapesDiagram.OnDrawObjectExHandler(Sender: TdxCustomFlowChart; AObject: TdxFcObject;
  ACanvas: TdxGPCanvas; APaintData: TdxFcDrawExEventPaintData);

  procedure DrawStarShape;
  var
    ABrush: TdxGPBrush;
    ARadius: TPoint;
    APen: TdxGPPen;
  begin
    APaintData.FontBrush.Color := dxColorToAlphaColor(clWhite);
    ABrush := TdxGPBrush.Create;
    APen := TdxGPPen.Create;
    try
      APen.Brush.Color := TdxAlphaColors.Green;
      ABrush.Style := gpbsGradient;
      ABrush.GradientMode := gpbgmHorizontal;
      ABrush.GradientPoints.Add(0, TdxAlphaColors.Red);
      ABrush.GradientPoints.Add(0.5, TdxAlphaColors.Green);
      ABrush.GradientPoints.Add(1, TdxAlphaColors.Blue);
      ARadius.X := APaintData.Bounds.Width div 6;
      ARadius.Y := APaintData.Bounds.Width div 6;
      ACanvas.Ellipse(cxRectContent(APaintData.Bounds, cxRect(ARadius, ARadius)), APen, ABrush);
    finally
      APen.Free;
      ABrush.Free;
    end;
  end;

  procedure DrawRectangleShape;
  var
    ABrush: TdxGPBrush;
  begin
    APaintData.FontBrush.Color := dxColorToAlphaColor(clWhite);
    ABrush := TdxGPBrush.Create;
    try
      ABrush.Style := gpbsGradient;
      ABrush.GradientMode := gpbgmForwardDiagonal;
      ABrush.GradientPoints.Add(0, TdxAlphaColors.Red);
      ABrush.GradientPoints.Add(0.5, TdxAlphaColors.Green);
      ABrush.GradientPoints.Add(1, TdxAlphaColors.Blue);
      ACanvas.FillRectangle(APaintData.Bounds, ABrush);
    finally
      ABrush.Free;
    end;
  end;

  procedure DrawDocumentShape;
  const
    ImageOffset = 10;

    procedure DrawImage(ALeft, AOffset, AImageSize: Integer; AImage: TdxSmartImage);
    var
      ABounds: TRect;
    begin
      ABounds := cxNullRect;
      ABounds.Left := ALeft + AOffset;
      ABounds.Right := ABounds.Left;
      ABounds.Inflate(AImageSize, AImageSize);
      ABounds.Offset(0, AImageSize + ImageOffset);
      AImage.SetSize(AImageSize, AImageSize);
      ACanvas.Draw(AImage, ABounds);
//      ACanvas.FillRectangle(ABounds, dxColorToAlphaColor(clRed));
    end;

  var
    AImageSize: Integer;
  begin
    AImageSize := Min(APaintData.Bounds.Height, APaintData.Bounds.Width) div 4 - ImageOffset;
    DrawImage(APaintData.Bounds.Left, ImageOffset + AImageSize, AImageSize, FDOCXDocumentImage);
    DrawImage(APaintData.Bounds.Right, -(ImageOffset + AImageSize), AImageSize, FXLSXDocumentImage);
  end;

begin
  if AObject.AdvancedShape.ID = 'BasicShapes.Star32' then
    DrawStarShape
  else
    if AObject.AdvancedShape.ID = 'BasicFlowchartShapes.Process' then
      DrawRectangleShape
    else
      if AObject.AdvancedShape.ID = 'SDLDiagramShapes.Document' then
        DrawDocumentShape;
end;

function TfrmFlowChartCustomShapesDiagram.GetDescription: string;
begin
  Result := 'This example shows how to custom paint shapes and load custom shapes from an XML file.'
end;

procedure TfrmFlowChartCustomShapesDiagram.RegisterCustomShapes;
begin
  inherited RegisterCustomShapes;
  TdxFlowChart.Repository.LoadShapesFromFile('Data\CustomShapes.xml', CustomShapeStencilID, CustomShapeStencilCaption);
  FCustomStencil := TdxFlowChartAdvancedShapeRepositoryAccess(TdxFlowChart.Repository).FindStencilByID(CustomShapeStencilID);
  if FCustomStencil = nil then
    raise Exception.Create('Invalid stencil');
end;

procedure TfrmFlowChartCustomShapesDiagram.UnRegisterCustomShapes;
begin
  while FCustomStencil.Count > 0 do
    TdxFlowChartAdvancedShapeRepositoryAccess(TdxFlowChart.Repository).RemoveUserShapeByID(FCustomStencil.Shapes[0].ID);
  inherited UnRegisterCustomShapes;
end;

procedure TfrmFlowChartCustomShapesDiagram.LoadDocumentImages;

  function CreateAndLoadImage(const AFileName: string): TdxSmartImage;
  begin
    Result := TdxSmartImage.CreateSize(150, 150);
    Result.LoadFromFile('Data\' + AFileName);
  end;

begin
  FDOCXDocumentImage := CreateAndLoadImage('DocumentDOCXImage.svg');
  FXLSXDocumentImage := CreateAndLoadImage('DocumentXLSXImage.svg');
end;

initialization
  TfrmFlowChartCustomShapesDiagram.Register;

end.
