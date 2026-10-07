unit uZooming;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditZooming = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditZooming: TfrmRichEditZooming;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditZooming }

function TfrmRichEditZooming.GetDescription: string;
begin
  Result := sdxFrameZooming;
end;

function TfrmRichEditZooming.GetStartDocumentName: string;
begin
  Result := sdxZoomingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditZoomingID, TfrmRichEditZooming,
    RichEditZoomingFrameName, LayoutAndNavigationGroupIndex, -1, -1);

finalization

end.
