unit uRibbonUI;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditRibbonUI = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditRibbonUI: TfrmRichEditRibbonUI;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditRibbonUI }

function TfrmRichEditRibbonUI.GetDescription: string;
begin
  Result := sdxFrameRibbonUI;
end;

function TfrmRichEditRibbonUI.GetStartDocumentName: string;
begin
  Result := sdxRibbonUIStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditRibbonUIID, TfrmRichEditRibbonUI,
    RichEditRibbonUIFrameName, HighlightFeaturesGroupIndex, LayoutAndNavigationGroupIndex, -1);

finalization

end.
