unit dxFlowChartConnectors;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters, System.ImageList, Vcl.ImgList, cxImageList, dxBar,
  cxClasses, dxLayoutLookAndFeels, Vcl.ExtCtrls, dxLayoutControl, Vcl.StdCtrls;

type
  TfrmFlowChartConnectors = class(TdxFlowChartBaseDiagramDesignerForm)
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, cxGeometry;

{ TfrmFlowChartConnectors }

class function TfrmFlowChartConnectors.GetID: Integer;
begin
  Result := 8;
end;

function TfrmFlowChartConnectors.GetFileName: string;
begin
  Result := 'Connectors.flc';
end;

function TfrmFlowChartConnectors.GetCaption: string;
begin
  Result := 'Connectors';
end;

function TfrmFlowChartConnectors.GetDescription: string;
begin
  Result := 'This demo illustrates supported connectors and their appearance settings.';
end;

initialization
  TfrmFlowChartConnectors.Register;

end.
