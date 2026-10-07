unit uTables;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditTables = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditTables: TfrmRichEditTables;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditBulletsAndNumbering }

function TfrmRichEditTables.GetDescription: string;
begin
  Result := sdxFrameTables;
end;

function TfrmRichEditTables.GetStartDocumentName: string;
begin
  Result := sdxTablesStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditTablesID, TfrmRichEditTables,
    RichEditTablesFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
