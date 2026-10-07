unit dxFlowChartCycleDiagram;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutLookAndFeels, cxClasses,
  dxBar, Vcl.ExtCtrls, dxLayoutControl;

type
  { TfrmFlowChartCycleDiagram }

  TfrmFlowChartCycleDiagram = class(TdxFlowChartBaseDiagramDesignerForm)
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
  end;

implementation

{$R *.dfm}

{ TfrmFlowChartCycleDiagram }

function TfrmFlowChartCycleDiagram.GetCaption: string;
begin
  Result := 'Cycle Diagram';
end;

function TfrmFlowChartCycleDiagram.GetDescription: string;
begin
  Result := 'With the ExpressFlowChart control, you can design and edit shapes, and use them to create charts and block' +
  ' diagrams. You can position these shapes anywhere in the control''s area, connect them with customizable lines, add' +
  ' inscriptions and/or images, rotate objects, perform clipboard and undo/redo operations with them, and zoom the con' +
  'tent with the Ctrl+Mouse Wheel gesture.';
end;

function TfrmFlowChartCycleDiagram.GetFileName: string;
begin
  Result := 'CycleDiagram.flc';
end;

class function TfrmFlowChartCycleDiagram.GetID: Integer;
begin
  Result := 2;
end;

initialization
  TfrmFlowChartCycleDiagram.Register;

end.
