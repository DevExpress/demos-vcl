unit uBulletsAndNumbering;

interface

uses
  System.Classes, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.Controls, Vcl.ExtCtrls, dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, dxLayoutContainer, cxClasses, dxLayoutControl;

type
  TfrmRichEditBulletsAndNumbering = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditBulletsAndNumbering: TfrmRichEditBulletsAndNumbering;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditBulletsAndNumbering }

function TfrmRichEditBulletsAndNumbering.GetDescription: string;
begin
  Result := sdxFrameBulletsAndNumberingDescription;
end;

function TfrmRichEditBulletsAndNumbering.GetStartDocumentName: string;
begin
  Result := sdxBulletsAndNumberingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditBulletsAndNumberingID, TfrmRichEditBulletsAndNumbering,
    RichEditBulletsAndNumberingFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
