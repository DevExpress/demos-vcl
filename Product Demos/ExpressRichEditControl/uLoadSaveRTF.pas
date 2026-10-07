unit uLoadSaveRTF;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditLoadSaveRTF = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditLoadSaveRTF: TfrmRichEditLoadSaveRTF;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditLoadSaveRTF }

function TfrmRichEditLoadSaveRTF.GetDescription: string;
begin
  Result := sdxFrameLoadSaveRTF;
end;

function TfrmRichEditLoadSaveRTF.GetStartDocumentName: string;
begin
  Result := sdxLoadSaveRTFStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditLoadSaveRTFID, TfrmRichEditLoadSaveRTF,
    RichEditLoadSaveRTFFrameName, DocumentManagementGroupIndex, -1, -1);

finalization

end.
