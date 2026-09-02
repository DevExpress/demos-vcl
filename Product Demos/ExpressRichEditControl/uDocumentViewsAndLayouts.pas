unit uDocumentViewsAndLayouts;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditDocumentViewsAndLayouts = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditDocumentViewsAndLayouts: TfrmRichEditDocumentViewsAndLayouts;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditDocumentViewsAndLayouts }

function TfrmRichEditDocumentViewsAndLayouts.GetDescription: string;
begin
  Result := sdxFrameDocumentViewsAndLayouts;
end;

function TfrmRichEditDocumentViewsAndLayouts.GetStartDocumentName: string;
begin
  Result := sdxDocumentViewsAndLayoutsStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditDocumentViewsAndLayoutsID, TfrmRichEditDocumentViewsAndLayouts,
    RichEditDocumentViewsAndLayoutsFrameName, LayoutAndNavigationGroupIndex, -1, -1);

finalization

end.
