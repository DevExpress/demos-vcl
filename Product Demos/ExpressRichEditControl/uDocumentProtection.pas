unit uDocumentProtection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels, dxRibbon,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types,
  dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRichEdit.Control.Core, dxLayoutContainer, cxClasses,
  dxLayoutControl, dxLayoutLookAndFeels, cxGeometry, dxFramedControl, dxPanel;

type
  TfrmRichEditDocumentProtection = class(TfrmRichEditFrame)
    lcInfo: TdxLayoutControl;
    lcInfoGroup_Root: TdxLayoutGroup;
    liPermission: TdxLayoutLabeledItem;
    liAccess: TdxLayoutLabeledItem;
    dxLayoutSkinLookAndFeelFontBold: TdxLayoutSkinLookAndFeel;
    pnlInfo: TdxPanel;
    dxLayoutSkinLookAndFeelFontBlack: TdxLayoutSkinLookAndFeel;
    procedure RichEditControlDocumentProtectionChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  end;

var
  frmRichEditDocumentProtection: TfrmRichEditDocumentProtection;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmRichEditDocumentProtection }

function TfrmRichEditDocumentProtection.GetDescription: string;
begin
  Result := sdxFrameDocumentProtection;
end;

function TfrmRichEditDocumentProtection.GetStartDocumentName: string;
begin
  Result := sdxDocumentProtectionDocumentName;
end;

procedure TfrmRichEditDocumentProtection.RichEditControlDocumentProtectionChanged(
  Sender: TObject);
begin
  pnlInfo.Visible := RichEditControl.Document.IsDocumentProtected;
  RichEditControl.ClearUndo;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditDocumentProtectionID, TfrmRichEditDocumentProtection,
    RichEditDocumentProtectionFrameName, HighlightFeaturesGroupIndex, DocumentManagementGroupIndex, -1);

end.
