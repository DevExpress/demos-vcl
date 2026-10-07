unit uMultiColumnContent;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmRichEditMultiColumnContent = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditMultiColumnContent: TfrmRichEditMultiColumnContent;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditMultiColumnContent }

function TfrmRichEditMultiColumnContent.GetDescription: string;
begin
  Result := sdxFrameMultiColumnContent;
end;

function TfrmRichEditMultiColumnContent.GetStartDocumentName: string;
begin
  Result := sdxMultiColumnContentStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditMultiColumnContentID, TfrmRichEditMultiColumnContent,
    RichEditMultiColumnContentFrameName, LayoutAndNavigationGroupIndex, -1, -1);

finalization

end.
