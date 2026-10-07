unit uLineNumbering;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditLineNumbering = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditLineNumbering: TfrmRichEditLineNumbering;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditLineNumbering }

function TfrmRichEditLineNumbering.GetDescription: string;
begin
  Result := sdxFrameLineNumbering;
end;

function TfrmRichEditLineNumbering.GetStartDocumentName: string;
begin
  Result := sdxLineNumberingStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditLineNumberingID, TfrmRichEditLineNumbering,
    RichEditLineNumberingFrameName, LayoutAndNavigationGroupIndex, -1, -1);

finalization

end.
