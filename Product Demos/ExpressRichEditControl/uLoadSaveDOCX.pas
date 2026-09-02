unit uLoadSaveDOCX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxRichEdit.Control.SpellChecker, dxHttpIndyRequest,
  dxBarBuiltInMenu, dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditLoadSaveDOCX = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditLoadSaveDOCX: TfrmRichEditLoadSaveDOCX;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

function TfrmRichEditLoadSaveDOCX.GetDescription: string;
begin
  Result := sdxFrameLoadSaveDOCX;
end;

function TfrmRichEditLoadSaveDOCX.GetStartDocumentName: string;
begin
  Result := sdxLoadSaveDOCXDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditLoadSaveDOCXID, TfrmRichEditLoadSaveDOCX,
    RichEditLoadSaveDOCXFrameName, DocumentManagementGroupIndex, -1, -1);

end.
