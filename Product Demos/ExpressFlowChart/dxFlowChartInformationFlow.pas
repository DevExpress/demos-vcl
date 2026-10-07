unit dxFlowChartInformationFlow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxFlowChartBaseDiagramDesignerFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControlAdapters, dxBar, cxClasses,
  dxLayoutLookAndFeels, Vcl.ExtCtrls, dxLayoutControl,
  System.ImageList, Vcl.ImgList, cxImageList;

type
  TfrmFlowChartInformationFlow = class(TdxFlowChartBaseDiagramDesignerForm)
    fcImages: TcxImageList;
  public
    class function GetID: Integer; override;
    function GetCaption: string; override;
    function GetFileName: string; override;
    function GetImages: TcxImageList; override;
  end;

implementation

{$R *.dfm}

{ TfrmFlowChartInformationFlow }

function TfrmFlowChartInformationFlow.GetCaption: string;
begin
  Result := 'Information Flow Diagram';
end;

function TfrmFlowChartInformationFlow.GetFileName: string;
begin
  Result := 'InformationFlow.flc';
end;

function TfrmFlowChartInformationFlow.GetImages: TcxImageList;
begin
  Result := fcImages;
end;

class function TfrmFlowChartInformationFlow.GetID: Integer;
begin
  Result :=  3;
end;

initialization
  TfrmFlowChartInformationFlow.Register;

end.
