unit uHyperlinksAndBookmarks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.UITypes,
  Vcl.Dialogs, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu, dxRichEdit.NativeApi,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, dxRibbon, cxCheckBox,
  cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxColorComboBox,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, cxClasses,
  dxLayoutControl, dxLayoutLookAndFeels;

type
  TfrmRichEditHyperlinksAndBookmarks = class(TfrmRichEditFrame)
    ccbBookmarksColor: TcxColorComboBox;
    lcTopGroup_Root: TdxLayoutGroup;
    lcTop: TdxLayoutControl;
    lgBookmarks: TdxLayoutGroup;
    lgHyperlinks: TdxLayoutGroup;
    liBookmarksColor: TdxLayoutItem;
    lgKeys: TdxLayoutGroup;
    llbModifierKeys: TdxLayoutLabeledItem;
    llflTop: TdxLayoutLookAndFeelList;
    llfTop: TdxLayoutCxLookAndFeel;
    liShowBookmarks: TdxLayoutCheckBoxItem;
    liCtrl: TdxLayoutCheckBoxItem;
    liAlt: TdxLayoutCheckBoxItem;
    liShift: TdxLayoutCheckBoxItem;
    liShowTooltip: TdxLayoutCheckBoxItem;
    procedure liShowBookmarksClick(Sender: TObject);
    procedure ccbBookmarksColorPropertiesEditValueChanged(Sender: TObject);
    procedure liShowTooltipClick(Sender: TObject);
    procedure liModifierKeysClick(Sender: TObject);
  protected
    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  public
    procedure AfterShow; override;
  end;

var
  frmRichEditHyperlinksAndBookmarks: TfrmRichEditHyperlinksAndBookmarks;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxCoreGraphics;

{ TfrmRichEditHyperlinkAndBookmarks }

procedure TfrmRichEditHyperlinksAndBookmarks.AfterShow;
begin
  inherited AfterShow;
  liShowBookmarksClick(liShowBookmarks);
  ccbBookmarksColorPropertiesEditValueChanged(ccbBookmarksColor);
  liModifierKeysClick(liCtrl);
  liShowTooltipClick(liShowBookmarks);
end;

procedure TfrmRichEditHyperlinksAndBookmarks.liModifierKeysClick(Sender: TObject);
var
  AShortCut: TShortCut;
begin
  AShortCut := 0;
  if liCtrl.Checked then
    Inc(AShortCut, scCtrl);
  if liShift.Checked then
    Inc(AShortCut, scShift);
  if liAlt.Checked then
    Inc(AShortCut, scAlt);
  RichEditControl.Options.Hyperlinks.ModifierKeys := AShortCut;
end;

procedure TfrmRichEditHyperlinksAndBookmarks.liShowBookmarksClick(Sender: TObject);
begin
  if liShowBookmarks.Checked then
    RichEditControl.Options.Bookmarks.Visibility := TdxRichEditBookmarkVisibility.Visible
  else
    RichEditControl.Options.Bookmarks.Visibility := TdxRichEditBookmarkVisibility.Hidden;
end;

procedure TfrmRichEditHyperlinksAndBookmarks.liShowTooltipClick(Sender: TObject);
begin
  RichEditControl.Options.Hyperlinks.ShowToolTip := liShowTooltip.Checked;
end;

procedure TfrmRichEditHyperlinksAndBookmarks.ccbBookmarksColorPropertiesEditValueChanged(Sender: TObject);
begin
  RichEditControl.Options.Bookmarks.Color := TdxAlphaColors.FromColor(ccbBookmarksColor.ColorValue);
end;

function TfrmRichEditHyperlinksAndBookmarks.GetDescription: string;
begin
  Result := sdxFrameHyperlinksDescription;
end;

function TfrmRichEditHyperlinksAndBookmarks.GetStartDocumentName: string;
begin
  Result := sdxHyperlinksAndBookmarksStartDocumentName;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditHyperlinksAndBookmarksID, TfrmRichEditHyperlinksAndBookmarks,
    RichEditHyperlinksAndBookmarksFrameName, EditingFeaturesGroupIndex, -1, -1);

finalization

end.
