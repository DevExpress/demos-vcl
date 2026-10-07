unit uConditionalFormatting;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditConditionalFormatting = class(TfrmRichEditFrame)
  protected
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditConditionalFormatting: TfrmRichEditConditionalFormatting;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditConditionalFormatting }

function TfrmRichEditConditionalFormatting.GetStartDocumentName: string;
begin
  Result := sdxConditionalFormattingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditConditionalFormattingID, TfrmRichEditConditionalFormatting,
    RichEditConditionalFormattingFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
