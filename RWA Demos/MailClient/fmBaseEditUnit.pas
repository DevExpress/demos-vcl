unit fmBaseEditUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, dxSkinsForm,
  Vcl.Dialogs, Winapi.RichEdit, dxCore, dxSkinsCore, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxRibbonSkins, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, cxTextEdit, cxMemo,
  cxDBRichEdit, dxLayoutControl, cxClasses, dxRibbon, dxBar, Vcl.ImgList, Data.DB,
  dxBarExtItems, dxRibbonGallery, dxMailClientDemoUtils, MailClientDemoData,
  dxSkinsdxRibbonPainter, dxSkinscxPCPainter, cxDropDownEdit, cxBarEditItem, cxFontNameComboBox,
  dxRibbonCustomizationForm, dxGallery, dxRibbonColorGallery, dxForms,
  cxImageList, dxOfficeSearchBox, System.Actions, Vcl.ActnList, System.ImageList;

type
  TfmBaseEdit = class(TdxForm)
    dxBarManager1: TdxBarManager;
    RibbonTab1: TdxRibbonTab;
    Ribbon: TdxRibbon;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    tbClipboard: TdxBar;
    tbEditing: TdxBar;
    tbParagraph: TdxBar;
    lbPaste: TdxBarLargeButton;
    bCut: TdxBarButton;
    bCopy: TdxBarButton;
    bSelectAll: TdxBarButton;
    tbFont: TdxBar;
    cmbFontName: TcxBarEditItem;
    cmbFontSize: TcxBarEditItem;
    cxSmallImages: TcxImageList;
    bFontColor: TdxRibbonColorGalleryItem;
    rgiFontColor: TdxRibbonGalleryItem;
    rgiColorTheme: TdxRibbonGalleryItem;
    bHighlighting: TdxRibbonColorGalleryItem;
    rgiHighlighting: TdxRibbonGalleryItem;
    bBold: TdxBarLargeButton;
    bItalic: TdxBarLargeButton;
    bUnderline: TdxBarLargeButton;
    bBullets: TdxBarLargeButton;
    bAlignLeft: TdxBarLargeButton;
    bAlignCenter: TdxBarLargeButton;
    bAlignRight: TdxBarLargeButton;
    bFind: TdxBarLargeButton;
    bReplace: TdxBarLargeButton;
    rgiItemSymbol: TdxRibbonGalleryItem;
    cxLargeImages: TcxImageList;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    dxBarStatic1: TdxBarStatic;
    ActionList1: TActionList;
    actAlignLeft: TAction;
    actAlignCenter: TAction;
    actAlignRight: TAction;
    ilSmallImagesSVG: TcxImageList;
    ilLargeImagesSVG: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure bFontColorClick(Sender: TObject);
    procedure bHighlightingClick(Sender: TObject);
    procedure bBoldClick(Sender: TObject);
    procedure bItalicClick(Sender: TObject);
    procedure bUnderlineClick(Sender: TObject);
    procedure bBulletsClick(Sender: TObject);
    procedure bAlignClick(Sender: TObject);
    procedure cmbFontNameChange(Sender: TObject);
    procedure cmbFontSizeChange(Sender: TObject);
    procedure bFindClick(Sender: TObject);
    procedure bReplaceClick(Sender: TObject);
    procedure bClearClick(Sender: TObject);
    procedure rgiItemSymbolGroupItemClick(Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
    procedure FindDialogFind(Sender: TObject);
    procedure ReplaceDialogReplace(Sender: TObject);
    procedure lbPasteClick(Sender: TObject);
    procedure bCopyClick(Sender: TObject);
    procedure bCutClick(Sender: TObject);
    procedure bSelectAllClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    FEditor: TcxDBRichEdit;
    FIsNew: Boolean;

    procedure AssignFontColorGlyph;
    procedure AssignHighlightingGlyph;
    procedure SetEditor(AValue: TcxDBRichEdit);
    procedure SetHighlighting;
    procedure EditorSelectionChange(Sender: TObject);
  protected
    function GetDataSet: TDataSet; virtual;

    procedure InitializeNewRecord; virtual;
    procedure ScaleFactorChanged(M, D: Integer); override;

    property DataSet: TDataSet read GetDataSet;
    property Editor: TcxDBRichEdit read FEditor write SetEditor;
  public
    constructor Create(AOwner: TComponent; AIsNew: Boolean); reintroduce; virtual;

    property IsNew: Boolean read FIsNew;
  end;

implementation

{$R *.dfm}

uses
  Vcl.ComCtrls, Vcl.Clipbrd, MailClientDemoMain, dxOffice11, cxGeometry, MailCloseDialog,
  LocalizationStrs;

type
  TClipboardAccess = class(TClipboard);
  TdxCustomRibbonAccess = class(TdxCustomRibbon);

constructor TfmBaseEdit.Create(AOwner: TComponent; AIsNew: Boolean);
var
  ASkinController: TdxSkinController;
begin
  inherited Create(AOwner);
  ASkinController := fmMailClientDemoMain.SkinController;
  if not ASkinController.NativeStyle and (ASkinController.SkinName <> '') then
    Ribbon.ColorSchemeName := ASkinController.SkinName;
  dxLayoutControl1.LookAndFeel := fmMailClientDemoMain.LookAndFeel;

  AssignFontColorGlyph;
  AssignHighlightingGlyph;

  PopulateSymbolGallery(dxBarManager1, rgiItemSymbol);
  FIsNew := AIsNew;
end;

procedure TfmBaseEdit.FormCreate(Sender: TObject);
begin
//
  lbPaste.Caption := cxGetResourceString(@sdxBarButtonPaste);
  bCut.Caption := cxGetResourceString(@sdxBarButtonCut);
  bCopy.Caption := cxGetResourceString(@sdxBarButtonCopy);
  bSelectAll.Caption := cxGetResourceString(@sdxBarButtonSelectAll);
  bFontColor.Hint := cxGetResourceString(@sFontColor);
  rgiFontColor.Caption := cxGetResourceString(@sFontColor);
  bFind.Caption := cxGetResourceString(@sdxBarButtonFind);
  bFind.Hint := cxGetResourceString(@sdxBarButtonFind);
  bReplace.Caption := cxGetResourceString(@sdxBarButtonReplace);
  bReplace.Hint := cxGetResourceString(@sdxBarButtonReplace);
  bBold.Caption := cxGetResourceString(@sbBold);
  bItalic.Caption := cxGetResourceString(@sbItalic);
  bUnderline.Caption := cxGetResourceString(@sbUnderline);
  tbFont.Caption := cxGetResourceString(@stFontDialogHeader);
  tbClipboard.Caption := cxGetResourceString(@sClipboard);
  tbEditing.Caption := cxGetResourceString(@sEditing);
  tbParagraph.Caption := cxGetResourceString(@sParagraph);
  bBullets.Caption := cxGetResourceString(@sBulletedList);
  rgiItemSymbol.Caption := cxGetResourceString(@sSymbols);
  bHighlighting.Hint := cxGetResourceString(@sHighlighting);
  if UseRightToLeftAlignment then
  begin
    bAlignLeft.Action := actAlignRight;
    bAlignLeft.ScreenTip := DM.stAlignRight;
    bAlignRight.Action := actAlignLeft;
    bAlignRight.ScreenTip := DM.stAlignLeft;
  end
  else
  begin
    bAlignLeft.Action := actAlignLeft;
    bAlignLeft.ScreenTip := DM.stAlignLeft;
    bAlignRight.Action := actAlignRight;
    bAlignRight.ScreenTip := DM.stAlignRight;
  end;
//
  TdxCustomRibbonAccess(Ribbon).OnMinimizeButtonPopulatePopupMenu := fmMailClientDemoMain.RibbonMinimizeButtonPopulatePopupMenu;
end;

procedure TfmBaseEdit.AssignFontColorGlyph;
begin
  DrawHelpedFontColor(ScaleFactor, bFontColor.Glyph, bFontColor.Color);
end;

procedure TfmBaseEdit.AssignHighlightingGlyph;
begin
  DrawHelpedHighlightColor(ScaleFactor, bHighlighting.Glyph, bHighlighting.Color);
end;

procedure TfmBaseEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DataSet.State <> dsBrowse then
    if ModalResult = mrOk then
      DataSet.Post
    else
      DataSet.Cancel;
end;

procedure TfmBaseEdit.FormShow(Sender: TObject);
begin
  if IsNew then
  begin
    DataSet.Append;
    InitializeNewRecord;
  end
  else
    DataSet.Edit;
  Editor.ClearSelection;
end;

function TfmBaseEdit.GetDataSet: TDataSet;
begin
  Result := nil;
end;

procedure TfmBaseEdit.InitializeNewRecord;
begin
end;

procedure TfmBaseEdit.ScaleFactorChanged(M, D: Integer);
begin
  inherited ScaleFactorChanged(M, D);
  PopulateSymbolGallery(dxBarManager1, rgiItemSymbol);
end;

procedure TfmBaseEdit.SetEditor(AValue: TcxDBRichEdit);
begin
  FEditor := AValue;
  FEditor.Properties.OnSelectionChange := EditorSelectionChange;
end;

procedure TfmBaseEdit.SetHighlighting;
begin
  Editor.SelAttributes2.BackgroundColor := bHighlighting.Color;
end;

procedure TfmBaseEdit.bFontColorClick(Sender: TObject);
begin
  Editor.SelAttributes.Color := bFontColor.Color;
  AssignFontColorGlyph;
end;

procedure TfmBaseEdit.bHighlightingClick(Sender: TObject);
begin
  SetHighlighting;
  AssignHighlightingGlyph;
end;

procedure TfmBaseEdit.bBoldClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfmBaseEdit.bItalicClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bItalic.Down then
      Style := Style + [fsItalic]
    else
      Style := Style - [fsItalic];
end;

procedure TfmBaseEdit.bUnderlineClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bUnderline.Down then
      Style := Style + [fsUnderline]
    else
      Style := Style - [fsUnderline];
end;

procedure TfmBaseEdit.bBulletsClick(Sender: TObject);
begin
  Editor.Paragraph.Numbering := TNumberingStyle(bBullets.Down);
end;

procedure TfmBaseEdit.bAlignClick(Sender: TObject);
var
  AAlignment: TAlignment;
begin
  if TAction(Sender).Checked then
    AAlignment := TAlignment(TAction(Sender).Tag)
  else
    AAlignment := taLeftJustify;

  if UseRightToLeftAlignment then
    Editor.Paragraph.Alignment :=TdxRightToLeftLayoutConverter.ConvertAlignment(AAlignment)
  else
    Editor.Paragraph.Alignment := AAlignment;
end;

procedure TfmBaseEdit.EditorSelectionChange(Sender: TObject);
begin
  with Editor, SelAttributes do
  begin
    cmbFontSize.OnChange := nil;
    cmbFontName.OnChange := nil;
    try
       bCopy.Enabled := SelLength > 0;
       bCut.Enabled := bCopy.Enabled;
       lbPaste.Enabled := SendMessage(Editor.InnerControl.Handle, EM_CANPASTE, 0, 0) <> 0;

       cmbFontSize.EditValue := Size;
       cmbFontName.EditValue := Name;

       bBold.Down := fsBold in Style;
       bItalic.Down := fsItalic in Style;
       bUnderline.Down := fsUnderline in Style;
       bBullets.Down := Boolean(Paragraph.Numbering);

       case Ord(Paragraph.Alignment) of
         0: actAlignLeft.Checked := True;
         1: actAlignRight.Checked := True;
         2: actAlignCenter.Checked := True;
       end;
    finally
      cmbFontSize.OnChange := cmbFontSizeChange;
      cmbFontName.OnChange := cmbFontNameChange;
    end;
  end;
end;

procedure TfmBaseEdit.cmbFontNameChange(Sender: TObject);
begin
  Editor.SelAttributes.Name := cmbFontName.EditValue;
end;

procedure TfmBaseEdit.cmbFontSizeChange(Sender: TObject);
begin
  Editor.SelAttributes.Size := cmbFontSize.EditValue;
end;

procedure TfmBaseEdit.bFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfmBaseEdit.bReplaceClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  ReplaceDialog.Execute;
end;

procedure TfmBaseEdit.bClearClick(Sender: TObject);
begin
  SendMessage(Editor.InnerControl.Handle, WM_KEYDOWN, VK_DELETE, 0);
end;

procedure TfmBaseEdit.rgiItemSymbolGroupItemClick(
  Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);

  procedure InsertSymbol(AChar: WideChar);
  var
    S: WideString;
  begin
    Editor.SelAttributes.Name := AItem.Description;
    with TClipboardAccess(Clipboard) do
    begin
      Open;
      try
        S := AChar;
        SetBuffer(CF_UNICODETEXT, PWideChar(S)^, (Length(S) + 1) * SizeOf(WideChar));
      finally
        Close;
      end;
    end;
    Editor.PasteFromClipboard;
  end;

begin
  InsertSymbol(WideChar(AItem.Tag));
end;

procedure TfmBaseEdit.FindDialogFind(Sender: TObject);
begin
  FindOne(Sender, Editor);
end;

procedure TfmBaseEdit.ReplaceDialogReplace(Sender: TObject);
begin
  ReplaceOne(Sender, Editor);
end;

procedure TfmBaseEdit.lbPasteClick(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TfmBaseEdit.bCopyClick(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TfmBaseEdit.bCutClick(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TfmBaseEdit.bSelectAllClick(Sender: TObject);
begin
  Editor.SelectAll;
end;

end.
