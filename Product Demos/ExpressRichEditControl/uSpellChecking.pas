unit uSpellChecking;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRichEdit.Control.SpellChecker, dxSpellCheckerCore, cxClasses,
  dxSpellChecker, dxBar, MainData, cxCheckBox, cxBarEditItem, dxRichEdit.NativeApi, dxRichEdit.Dialogs.EventArgs,
  dxRichEdit.Control.Core, dxLayoutContainer, dxLayoutControl;

type
  TfrmRichEditSpellChecking = class(TfrmRichEditFrame)
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  public
    procedure AfterShow; override;
    procedure BeforeHide; override;
  end;

var
  frmRichEditSpellChecking: TfrmRichEditSpellChecking;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxSpellCheckerDialogs;

{ TfrmRichEditSpellChecking }

procedure TfrmRichEditSpellChecking.AfterShow;
begin
  inherited AfterShow;
  dmMain.SpellChecker.CheckAsYouTypeOptions.Active := True;
  dmMain.SpellChecker.AutoCorrectOptions.Active := True;
end;

procedure TfrmRichEditSpellChecking.BeforeHide;
begin
  dmMain.SpellChecker.CheckAsYouTypeOptions.Active := False;
  dmMain.SpellChecker.AutoCorrectOptions.Active := False;
  inherited BeforeHide;
end;

function TfrmRichEditSpellChecking.GetDescription: string;
begin
  Result := sdxFrameSpellChecking;
end;

function TfrmRichEditSpellChecking.GetStartDocumentName: string;
begin
  Result := sdxSpellCheckingDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditSpellCheckingID, TfrmRichEditSpellChecking,
    RichEditSpellCheckingFrameName, HighlightFeaturesGroupIndex, EditingFeaturesGroupIndex, -1);
end.
