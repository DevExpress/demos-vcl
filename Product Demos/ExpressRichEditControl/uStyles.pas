unit uStyles;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls;

type
  TfrmRichEditStyles = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditStyles: TfrmRichEditStyles;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditStyles }

function TfrmRichEditStyles.GetDescription: string;
begin
  Result := sdxFrameRichEditStylesDescription;
end;

function TfrmRichEditStyles.GetStartDocumentName: string;
begin
  Result := sdxStylesStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditStylesID, TfrmRichEditStyles,
    RichEditStylesFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
