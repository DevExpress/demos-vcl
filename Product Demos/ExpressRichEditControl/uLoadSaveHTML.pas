unit uLoadSaveHTML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditLoadSaveHTML = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditLoadSaveHTML: TfrmRichEditLoadSaveHTML;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

function TfrmRichEditLoadSaveHTML.GetDescription: string;
begin
  Result := sdxFrameLoadSaveHTML;
end;

function TfrmRichEditLoadSaveHTML.GetStartDocumentName: string;
begin
  Result := sdxLoadSaveHTMLDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditLoadSaveHTMLID, TfrmRichEditLoadSaveHTML,
    RichEditLoadSaveHTMLFrameName, DocumentManagementGroupIndex, -1, -1);

end.
