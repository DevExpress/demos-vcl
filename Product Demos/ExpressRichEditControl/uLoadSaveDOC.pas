unit uLoadSaveDOC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditLoadSaveDOC = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditLoadSaveDOC: TfrmRichEditLoadSaveDOC;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditLoadSaveDOC }

function TfrmRichEditLoadSaveDOC.GetDescription: string;
begin
  Result := sdxFrameLoadSaveDOC;
end;

function TfrmRichEditLoadSaveDOC.GetStartDocumentName: string;
begin
  Result := sdxLoadSaveDOCDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditLoadSaveDOCID, TfrmRichEditLoadSaveDOC,
    RichEditLoadSaveDOCFrameName, DocumentManagementGroupIndex, -1, -1);

finalization

end.
