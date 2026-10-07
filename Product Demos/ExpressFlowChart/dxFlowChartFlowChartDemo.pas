unit dxFlowChartFlowChartDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControlAdapters, dxLayoutLookAndFeels, cxClasses,
  dxBar, Vcl.ExtCtrls, dxLayoutControl;

type
  TfrmFlowChartFlowChartDemo = class(TdxFlowChartBaseDiagramDesignerForm)
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
  end;

implementation

{$R *.dfm}

{ TfrmFlowChartFlowChartDemo }

function TfrmFlowChartFlowChartDemo.GetCaption: string;
begin
  Result := 'Flow Chart';
end;

function TfrmFlowChartFlowChartDemo.GetFileName: string;
begin
  Result := 'FlowChart.flc';
end;

function TfrmFlowChartFlowChartDemo.GetDescription: string;
begin
  Result := 'This example shows a flow chart created using the ExpressFlowChart control. All the basic and advanced operations on the diagram are supported. You can move, resize, connect, and delete shapes, ' +
    'change their text, perform clipboard and undo/redo operations, and zoom the content with the Ctrl+Mouse Wheel gesture.';
end;

class function TfrmFlowChartFlowChartDemo.GetID: Integer;
begin
  Result := 1;
end;

initialization
  TfrmFlowChartFlowChartDemo.Register;

end.
