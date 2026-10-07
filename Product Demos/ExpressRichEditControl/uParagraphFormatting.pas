unit uParagraphFormatting;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmParagraphFormatting = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmParagraphFormatting: TfrmParagraphFormatting;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;


{ TfrmParagraphFormatting }

function TfrmParagraphFormatting.GetDescription: string;
begin
  Result := sdxFrameParagraphFormattingDescription;
end;

function TfrmParagraphFormatting.GetStartDocumentName: string;
begin
  Result := sdxParagraphFormattingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditParagraphFormattingID, TfrmParagraphFormatting,
    RichEditParagraphFormattingFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
