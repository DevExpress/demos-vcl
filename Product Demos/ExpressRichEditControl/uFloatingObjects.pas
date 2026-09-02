unit uFloatingObjects;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditFloatingObjects = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditFloatingObjects: TfrmRichEditFloatingObjects;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditFloatingObject }

function TfrmRichEditFloatingObjects.GetDescription: string;
begin
  Result := sdxFrameFloatingObjects;
end;

function TfrmRichEditFloatingObjects.GetStartDocumentName: string;
begin
  Result := sdxFloatingObjectsStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditFloatingObjectsID, TfrmRichEditFloatingObjects,
    RichEditFloatingObjectsFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
