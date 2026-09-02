unit uCharacterFormatting;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmCharacterFormatting = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmCharacterFormatting: TfrmCharacterFormatting;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmCharacterFormatting }

function TfrmCharacterFormatting.GetDescription: string;
begin
  Result := sdxFrameCharacterFormattingDescription;
end;

function TfrmCharacterFormatting.GetStartDocumentName: string;
begin
  Result := sdxCharacterFormattingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditCharacterFormattingID, TfrmCharacterFormatting,
    RichEditCharacterFormattingFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
