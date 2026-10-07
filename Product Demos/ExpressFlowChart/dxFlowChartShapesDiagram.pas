unit dxFlowChartShapesDiagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters, System.ImageList, Vcl.ImgList, cxImageList, dxBar,
  cxClasses, dxLayoutLookAndFeels, Vcl.ExtCtrls, dxLayoutControl, Vcl.StdCtrls;

type
  TfrmFlowChartShapesDiagram = class(TdxFlowChartBaseDiagramDesignerForm)
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
  end;

implementation

{$R *.dfm}

{ TfrmFlowChartShapesDiagram }

class function TfrmFlowChartShapesDiagram.GetID: Integer;
begin
  Result := 7;
end;

function TfrmFlowChartShapesDiagram.GetCaption: string;
begin
  Result := 'Shapes'
end;

function TfrmFlowChartShapesDiagram.GetDescription: string;
begin
  Result := 'This demo shows diagram shapes and their customization options.';
end;

function TfrmFlowChartShapesDiagram.GetFileName: string;
begin
  Result := 'Shapes.flc';
end;

initialization
  TfrmFlowChartShapesDiagram.Register;

end.
