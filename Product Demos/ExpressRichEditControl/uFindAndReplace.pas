unit uFindAndReplace;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditFindAndReplace = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditFindAndReplace: TfrmRichEditFindAndReplace;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditFindAndReplace }

function TfrmRichEditFindAndReplace.GetDescription: string;
begin
  Result := sdxFrameFindAndReplace;
end;

function TfrmRichEditFindAndReplace.GetStartDocumentName: string;
begin
  Result := sdxFindAndReplaceStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditFindAndReplaceID, TfrmRichEditFindAndReplace,
    RichEditFindAndReplaceFrameName, LayoutAndNavigationGroupIndex, -1, -1);

finalization

end.
