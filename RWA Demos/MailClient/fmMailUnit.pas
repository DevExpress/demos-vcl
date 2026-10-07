unit fmMailUnit;

{$I cxVer.inc}

interface

uses
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore, dxBar, Vcl.StdCtrls, dxBarExtItems, cxControls,
  Vcl.ImgList, Vcl.ActnList, cxLookAndFeels, dxStatusBar, cxGraphics,
  dxRibbonForm, dxRibbon, cxClasses, Vcl.Menus, dxRibbonStatusBar, cxStyles,
  dxRibbonGallery, dxOffice11, cxGeometry, Datasnap.DBClient,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonBackstageView,
  dxBarApplicationMenu, cxContainer,
  dxGDIPlusClasses, dxRibbonMiniToolbar, dxSkinsCore,
  dxSkinsdxBarPainter, cxEdit, cxGroupBox, cxTextEdit, cxMemo, cxRichEdit,
  cxLabel, dxSkinsdxRibbonPainter, cxButtons, Vcl.Buttons, dxMailClientDemoUtils,
  Datasnap.Provider, Data.DB, Vcl.Grids, Vcl.DBGrids, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxSkinscxPCPainter, dxLayoutLookAndFeels, cxFontNameComboBox,
  cxDropDownEdit, cxBarEditItem, dxRibbonCustomizationForm, dxGallery, dxRibbonColorGallery, MidasLib, dxTokenEdit,
  cxImageList, dxOfficeSearchBox, System.Actions, dxShellDialogs, dxSkinInfo, System.ImageList;

type
  TRibbonDemoStyle = (rdsOffice2007, rdsOffice2010, rdsOffice2013, rdsOffice2016, rdsOffice2016Tablet, rdsOffice2019, rdsOffice365);

  TRichEditUndoController = class
  private
    FLastMessageID: Integer;
    FLastSelStart: Integer;
    FIsLocked: Boolean;
    FGalleryItem: TdxRibbonGalleryItem;
    FEditor: TcxRichEdit;
  protected
    procedure AddAction(AnActionID: Integer);
    function GetActionCount: Integer;
    function NeedAddAction(const AMessageID: Integer): Boolean;
    procedure PopUndo;
    procedure PushUndo(AnAction: string);
    procedure StoreLastConstants(const AMessageID: Integer);
  public
    constructor Create(AGalleryItem: TdxRibbonGalleryItem; AEditor: TcxRichEdit);
    procedure AnalyseMessage;
    procedure Lock;
    procedure UnLock;
    property ActionCount: Integer read GetActionCount;
  end;

  TfmMail = class;

  TdxMailFormsManager = class
  private
    FItems: TList;
    function GetItem(AIndex: Integer): TfmMail;
    function GetCount: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddItem(AItem: TfmMail);
    function IsEmpty: Boolean;
    procedure RemoveItem(AItem: TfmMail); overload;
    procedure RemoveItem(I: Integer); overload;
    procedure SetColorSchemeToRibbons(const AName: string);
    procedure TryCloseItems;

    property Count: Integer read GetCount;
    property Items[AIndex: Integer]: TfmMail read GetItem; default;
  end;

  TfmMail = class(TdxRibbonForm)
    BarManager: TdxBarManager;
    dxBarButtonSave: TdxBarLargeButton;
    dxBarButtonPrint: TdxBarLargeButton;
    dxBarButtonClose: TdxBarLargeButton;
    dxBarButtonUndo: TdxBarLargeButton;
    dxBarButtonCut: TdxBarLargeButton;
    dxBarButtonCopy: TdxBarLargeButton;
    dxBarButtonPaste: TdxBarLargeButton;
    dxBarButtonClear: TdxBarLargeButton;
    dxBarButtonSelectAll: TdxBarLargeButton;
    dxBarButtonFind: TdxBarLargeButton;
    dxBarButtonReplace: TdxBarLargeButton;
    bBold: TdxBarLargeButton;
    bItalic: TdxBarLargeButton;
    bUnderline: TdxBarLargeButton;
    dxBarButtonBullets: TdxBarLargeButton;
    dxBarButtonProtected: TdxBarLargeButton;
    dxBarButtonAlignLeft: TdxBarLargeButton;
    dxBarButtonCenter: TdxBarLargeButton;
    dxBarButtonAlignRight: TdxBarLargeButton;
    dxBarSeparator: TdxBarSeparator;

    OpenDialog: TdxOpenFileDialog;
    SaveDialog: TdxSaveFileDialog;
    PrintDialog: TPrintDialog;
    FontDialog: TFontDialog;
    dxBarPopupMenu: TdxRibbonPopupMenu;
    dxBarGroup1: TdxBarGroup;
    ilStatusBarImages: TImageList;
    dxStatusBar: TdxRibbonStatusBar;
    FindDialog: TFindDialog;
    ReplaceDialog: TReplaceDialog;
    tabHome: TdxRibbonTab;
    Ribbon: TdxRibbon;
    tbFont: TdxBar;
    BarManagerBar7: TdxBar;
    ApplicationMenu: TdxBarApplicationMenu;
    tbClipboard: TdxBar;
    tbEditing: TdxBar;
    tbParagraph: TdxBar;
    BarManagerBar11: TdxBar;
    cxLargeImages: TcxImageList;
    cxSmallImages: TcxImageList;
    BarManagerBar6: TdxBar;
    BarManagerBar13: TdxBar;
    btnLineNumber: TdxBarButton;
    btnColumnNumber: TdxBarButton;
    btnLocked: TdxBarButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    stModified: TdxBarStatic;
    rgiFontColor: TdxRibbonGalleryItem;
    bFontColor: TdxRibbonColorGalleryItem;
    rgiItemSymbol: TdxRibbonGalleryItem;
    UndoDropDownGallery: TdxRibbonDropDownGallery;
    rgiUndo: TdxRibbonGalleryItem;
    bstSelectionInfo: TdxBarStatic;
    dxBarSubItem1: TdxBarSubItem;
    dxBarStatic1: TdxBarStatic;
    dxBarButton8: TdxBarButton;
    tabSelection: TdxRibbonTab;
    BarManagerBar14: TdxBar;
    BackstageView: TdxRibbonBackstageView;
    MiniToolbar: TdxRibbonMiniToolbar;
    rgiHighlighting: TdxRibbonGalleryItem;
    bHighlighting: TdxRibbonColorGalleryItem;
    tbSend: TdxBar;
    bSend: TdxBarLargeButton;
    clValidationContacts: TClientDataSet;
    pvdValidationContacts: TDataSetProvider;
    clValidationContactsCustomerID: TIntegerField;
    clValidationContactsMiddleName: TStringField;
    clValidationContactsFirstName: TStringField;
    clValidationContactsLastName: TStringField;
    clValidationContactsName: TStringField;
    dxBarStatic2: TdxBarStatic;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    btnTo: TcxButton;
    liBtnTo: TdxLayoutItem;
    lgGroupTo: TdxLayoutGroup;
    edtSubject: TcxTextEdit;
    liSubjectEd: TdxLayoutItem;
    Editor: TcxRichEdit;
    liEditor: TdxLayoutItem;
    clValidationContactsEmail: TStringField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    cmbFontName: TcxBarEditItem;
    cmbFontSize: TcxBarEditItem;
    teTo: TdxTokenEdit;
    liTokenEditTo: TdxLayoutItem;
    clValidationContactsGender: TIntegerField;
    ActionList1: TActionList;
    actAlignLeft: TAction;
    actAlignCenter: TAction;
    actAlignRight: TAction;
    liSubject: TdxLayoutLabeledItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    ilLargeImagesSVG: TcxImageList;
    ilSmallImagesSVG: TcxImageList;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButtonCloseClick(Sender: TObject);
    procedure dxBarButtonPrintClick(Sender: TObject);
    procedure dxBarButtonExitClick(Sender: TObject);

    procedure dxBarButtonUndoClick(Sender: TObject);
    procedure dxBarButtonCutClick(Sender: TObject);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure dxBarButtonPasteClick(Sender: TObject);
    procedure dxBarButtonClearClick(Sender: TObject);
    procedure dxBarButtonSelectAllClick(Sender: TObject);
    procedure dxBarButtonFindClick(Sender: TObject);
    procedure dxBarButtonReplaceClick(Sender: TObject);
    procedure bBoldClick(Sender: TObject);
    procedure bItalicClick(Sender: TObject);
    procedure bUnderlineClick(Sender: TObject);
    procedure dxBarButtonBulletsClick(Sender: TObject);
    procedure dxBarButtonAlignClick(Sender: TObject);
    procedure dxBarButtonProtectedClick(Sender: TObject);
    procedure FindOne(Sender: TObject);
    procedure ReplaceOne(Sender: TObject);

    procedure EditorChange(Sender: TObject);
    procedure EditorSelectionChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnLockedClick(Sender: TObject);
    procedure RibbonHideMinimizedByClick(Sender: TdxCustomRibbon; AWnd: HWND;
      AShift: TShiftState; const APos: TPoint; var AAllowProcessing: Boolean);
    procedure bFontColorClick(Sender: TObject);
    procedure rgiItemSymbolGroupItemClick(Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
    procedure rgiUndoHotTrackedItemChanged(APrevHotTrackedGroupItem, ANewHotTrackedGroupItem: TdxRibbonGalleryGroupItem);
    procedure rgiUndoGroupItemClick(Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
    procedure pbFrameBackgroundPaint(Sender: TObject);
    procedure pbSeparatorPaint(Sender: TObject);
    procedure EditorMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure bHighlightingClick(Sender: TObject);
    procedure bSendClick(Sender: TObject);
    procedure dxBarButtonSaveClick(Sender: TObject);
    procedure btnToClick(Sender: TObject);
    procedure EditorContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbFontNameChange(Sender: TObject);
    procedure cmbFontSizeChange(Sender: TObject);
    procedure cmbFontSizeClick(Sender: TObject);
    procedure EditorPropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
    procedure teToPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
  private
    FBoxNumber: Integer;
    FCanOnChange: Boolean;
    FMailID: Integer;
    FMode: TdxMakeModeType;
    FUpdating: Boolean;
    FEditorUndoController: TRichEditUndoController;

    function GetMailFormsManager: TdxMailFormsManager;

    function GetEditorColumn: Integer;
    function GetEditorRow: Integer;
    function GetFocusedEditor: TcxCustomTextEdit;
    procedure SetDocumentName(AName: string);
    procedure UpdateRibbonDemoStyle(AStyle: TRibbonDemoStyle);

    procedure SetFontColor;
    procedure SetFontColorGlyph;
    procedure SetHighlighting;
    procedure SetHighlightingGlyph;

    procedure Undo(Count: Integer);

    procedure OpenValidationContacts;
    procedure PrepareContactsPickerEditor;
    procedure SaveAndClose(ADestination: Integer);
    procedure SaveMail(ABoxKind: Integer);
  protected
    procedure CheckUndoButtonEnabled;
    procedure CreateParams(var Params: TCreateParams); override;
    function GetContactEmail(AContactName: string): string;
    function IsValidAddress(const AAddress: string): Boolean;
    procedure ScaleFactorChanged(M, D: Integer); override;

    property FocusedEditor: TcxCustomTextEdit read GetFocusedEditor;
    property MailFormsManager: TdxMailFormsManager read GetMailFormsManager;
  public
    function IsDataModified: Boolean;
    function NeedQuerySaveAndClose: Integer;
    procedure ResetDataModified;
    procedure SetModified(Value: Boolean);
    procedure SetColorSchemeToRibbon(const AName: string);
    procedure ShowItems(AShow: Boolean);

    property BoxNumber: Integer read FBoxNumber write FBoxNumber;
    property MailID: Integer read FMailID write FMailID;
    property Mode: TdxMakeModeType read FMode write FMode;
    property EditorColumn: Integer read GetEditorColumn;
    property EditorRow: Integer read GetEditorRow;
    property EditorUndoController: TRichEditUndoController read FEditorUndoController;
  end;

implementation

{$R *.DFM}
{$R fmMailGlyphs.res}

uses
  Winapi.RichEdit, Vcl.Clipbrd, System.Math, System.Variants, dxGDIPlusAPI, dxCoreGraphics, MailClientDemoMain, MailClientDemoMails,
  MailClientDemoData, fmWhomSelectUnit, MailCloseDialog, LocalizationStrs, dxDemoUtils, dxDPIAwareUtils;

const
  RTFFilter = 'Rich Text Files (*.RTF)|*.RTF';
  TXTFilter = 'Plain text (*.TXT)|*.TXT';

type
  TdxCustomRibbonAccess = class(TdxCustomRibbon);

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

{  TdxMailFormsManager  }

constructor TdxMailFormsManager.Create;
begin
  inherited Create;
  FItems := TList.Create;
end;

destructor TdxMailFormsManager.Destroy;
begin
  FreeAndNil(FItems);
  inherited Destroy;
end;

procedure TdxMailFormsManager.AddItem(AItem: TfmMail);
begin
  FItems.Add(AItem);
end;

function TdxMailFormsManager.GetCount: Integer;
begin
  Result := FItems.Count;
end;

function TdxMailFormsManager.GetItem(AIndex: Integer): TfmMail;
begin
  Result := TfmMail(FItems[AIndex])
end;

function TdxMailFormsManager.IsEmpty: Boolean;
begin
  Result := Count = 0;
end;

procedure TdxMailFormsManager.RemoveItem(I: Integer);
begin
  if I >= 0 then
  begin
    Items[I].Release;
    FItems.Delete(I);
  end;
end;

procedure TdxMailFormsManager.RemoveItem(AItem: TfmMail);
begin
  RemoveItem(FItems.IndexOf(AItem));
end;

procedure TdxMailFormsManager.SetColorSchemeToRibbons(const AName: string);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    Items[I].SetColorSchemeToRibbon(AName);
end;

procedure TdxMailFormsManager.TryCloseItems;
var
  I: Integer;
  AItem: TfmMail;
begin
  for I := Count - 1 downto 0 do
  begin
    AItem := Items[I];
    AItem.BringToFront;
    AItem.Close;
    if I = (Count - 1) then
      Break;
  end;
end;

{  TfmMail  }

procedure TfmMail.CheckUndoButtonEnabled;
begin
  dxBarButtonUndo.Enabled := (SendMessage(Editor.InnerControl.Handle, EM_CANUNDO, 0, 0) <> 0) and
    (EditorUndoController.ActionCount > 0);
end;

procedure TfmMail.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := 0;
end;

procedure TfmMail.cmbFontNameChange(Sender: TObject);
begin
  if not FUpdating then
  begin
    Editor.SelAttributes.Name := cmbFontName.EditValue;
    EditorUndoController.AddAction(6);
    CheckUndoButtonEnabled;
  end;
end;

function TfmMail.GetEditorColumn: Integer;
begin
  with Editor do
    Result := SelStart - SendMessage(Handle, EM_LINEINDEX, EditorRow, 0);
end;

function TfmMail.GetEditorRow: Integer;
begin
  with Editor do
    Result := SendMessage(Handle, EM_LINEFROMCHAR, SelStart, 0);
end;

function TfmMail.GetContactEmail(AContactName: string): string;
begin
  Result := AContactName;
  if Pos('@', Result) > 0 then Exit;
  if clValidationContacts.Locate('Name', AContactName, [loCaseInsensitive]) then
    Result := clValidationContacts.FieldByName('Email').AsString;
end;

function TfmMail.GetFocusedEditor: TcxCustomTextEdit;
var
  I: Integer;
begin
  Result := Editor;
  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TcxCustomTextEdit) and TcxCustomTextEdit(Components[I]).Focused then
    begin
      Result := TcxCustomTextEdit(Components[I]);
      Break;
    end;
end;

function TfmMail.GetMailFormsManager: TdxMailFormsManager;
begin
  Result := fmMailClientDemoMain.MailFormsManager;
end;

function TfmMail.IsDataModified: Boolean;
begin
  Result := Editor.EditModified or edtSubject.ModifiedAfterEnter or teTo.ModifiedAfterEnter;
end;

function TfmMail.IsValidAddress(const AAddress: string): Boolean;
var
  ALastAtPos, ALastDotPos: Integer;
begin
  Result := clValidationContacts.Locate('Name', AAddress, [loCaseInsensitive]) or (AAddress = '');
  if not Result then
  begin
    ALastAtPos := LastDelimiter('@', AAddress);
    ALastDotPos := LastDelimiter('.', AAddress);
    Result := (ALastAtPos > 1) and (ALastAtPos = Pos('@', AAddress)) and
      (ALastDotPos > (ALastAtPos + 1)) and (ALastDotPos < Length(AAddress));
  end;
end;

procedure TfmMail.SetDocumentName(AName: string);
begin
  if AName <> '' then
    Caption := AName
  else
    Caption := 'New Message';
end;

procedure TfmMail.FindOne(Sender: TObject);
begin
  dxMailClientDemoUtils.FindOne(Sender, Editor);
end;

procedure TfmMail.ReplaceOne(Sender: TObject);
begin
  dxMailClientDemoUtils.ReplaceOne(Sender, Editor);
end;

procedure TfmMail.ResetDataModified;
begin
  Editor.EditModified := False;
  edtSubject.ModifiedAfterEnter := False;
  teTo.ModifiedAfterEnter := False;
end;

procedure TfmMail.EditorChange(Sender: TObject);
begin
  if Editor = nil then Exit;
  Editor.Properties.OnSelectionChange(Editor);
  SetModified(Editor.EditModified);
  EditorUndoController.AnalyseMessage;
  CheckUndoButtonEnabled;
end;

procedure TfmMail.EditorContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  if Editor.SelLength <> 0 then
    MiniToolbar.Popup(dxBarPopupMenu)
  else
    dxBarPopupMenu.PopupFromCursorPos;
  Handled := True;
end;

procedure TfmMail.EditorMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) and (Editor.SelLength <> 0) then
    MiniToolbar.Popup;
end;

procedure TfmMail.EditorPropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
begin
  dxShellExecute(URLText);
end;

procedure TfmMail.EditorSelectionChange(Sender: TObject);

  procedure CheckSelectionContext;
  const
    SelectionContextIndex = 0;
  begin
    if dxBarButtonCopy.Enabled then
      Ribbon.Contexts[SelectionContextIndex].Activate(False)
    else
      Ribbon.Contexts[SelectionContextIndex].Visible := False;
  end;

begin
  with Editor, SelAttributes do
  begin
    FUpdating := True;
    cmbFontSize.OnChange := nil;
    cmbFontName.OnChange := nil;
    try
       btnLineNumber.Caption := Format(' Line: %3d ', [1 + EditorRow]);
       btnColumnNumber.Caption := Format(' Row: %3d ', [1 + EditorColumn]);

       dxBarButtonCopy.Enabled := SelLength > 0;
       dxBarButtonCut.Enabled := dxBarButtonCopy.Enabled;
       dxBarButtonPaste.Enabled := SendMessage(Editor.InnerControl.Handle, EM_CANPASTE, 0, 0) <> 0;
       dxBarButtonClear.Enabled := dxBarButtonCopy.Enabled;

       cmbFontSize.EditValue := Size;
       cmbFontName.EditValue := Name;

       bBold.Down := fsBold in Style;
       bItalic.Down := fsItalic in Style;
       bUnderline.Down := fsUnderline in Style;

       dxBarButtonBullets.Down := Boolean(Paragraph.Numbering);
       case Ord(Paragraph.Alignment) of
         0: actAlignLeft.Checked := True;
         1: actAlignRight.Checked := True;
         2: actAlignCenter.Checked := True;
       end;
       dxBarButtonProtected.Down := Protected;
    finally
      FUpdating := False;
      cmbFontSize.OnChange := cmbFontSizeChange;
      cmbFontName.OnChange := cmbFontNameChange;
    end;
  end;
  CheckSelectionContext;
end;

procedure TfmMail.pbFrameBackgroundPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
  begin
    dxGpFillRect(Canvas.Handle, ClientRect, clWhite, 200);
    ExcludeClipRect(Canvas.Handle, 1, 1, Width - 1, Height - 1);
    dxGpFillRect(Canvas.Handle, ClientRect, clWhite);
  end;
end;

procedure TfmMail.pbSeparatorPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    Ribbon.ColorScheme.DrawMenuSeparatorHorz(Canvas.Handle, ClientRect);
end;

function TfmMail.NeedQuerySaveAndClose: Integer;
var
  AFormMailCloseDialog: TfmMailCloseDialog;
begin
  AFormMailCloseDialog := TfmMailCloseDialog.Create(Self);
  try
    Result := AFormMailCloseDialog.ShowModal;
  finally
    AFormMailCloseDialog.Release;
  end;
end;

procedure TfmMail.SetModified(Value: Boolean);
begin
  Editor.EditModified := Value;
  if Value then
  begin
    stModified.ImageIndex := 2;
    stModified.Caption := 'Modified';
  end
  else
  begin
    stModified.ImageIndex := -1;
    stModified.Caption := '';
  end;
end;

procedure TfmMail.SetColorSchemeToRibbon(const AName: string);
begin
  DisableAero := RibbonStyle >= rs2013;
end;

procedure TfmMail.ShowItems(AShow: Boolean);
begin
  BarManager.BeginUpdate;
  try
    if not AShow then
    begin
      btnLineNumber.Caption := '';
      btnColumnNumber.Caption := '';
      stModified.Caption := '';
    end;
    BarManager.Groups[0].Enabled := AShow;
  finally
    BarManager.EndUpdate(False);
  end;
end;

procedure TfmMail.UpdateRibbonDemoStyle(AStyle: TRibbonDemoStyle);
const
  StyleMap: array[TRibbonDemoStyle] of TdxRibbonStyle = (rs2007, rs2010, rs2013, rs2016, rs2016Tablet, rs2019, rsOffice365);
begin
  Ribbon.Style := StyleMap[AStyle];
  Ribbon.EnableTabAero := AStyle = rdsOffice2010;
  if AStyle = rdsOffice2010 then
    Ribbon.ApplicationButton.Menu := BackstageView
  else
    Ribbon.ApplicationButton.Menu := ApplicationMenu;
  if Ribbon.Style = rs2007 then
  begin
    Ribbon.ApplicationButton.Glyph.LoadFromResource(HInstance, PChar('RIBBONAPPGLYPH'), RT_BITMAP);
    Ribbon.ApplicationButton.StretchGlyph := True;
  end
  else
  begin
    Ribbon.ApplicationButton.StretchGlyph := False;
    Ribbon.ApplicationButton.Glyph.Assign(DM.icImagesSVG.Items[0].Picture.Graphic);
  end;
  DisableAero := Ribbon.Style >= rs2013;
  if dxSkinInfo.dxISkinManager <> nil then
    Ribbon.ColorSchemeName := dxSkinInfo.dxISkinManager.SkinName;
  Ribbon.Layout := TdxRibbonLayout.Simplified;
end;

procedure TfmMail.SetFontColor;
begin
  Editor.SelAttributes.Color := bFontColor.Color;
  EditorUndoController.AddAction(8);
  CheckUndoButtonEnabled;
  SetFontColorGlyph;
end;

procedure TfmMail.SetFontColorGlyph;
begin
  DrawHelpedFontColor(ScaleFactor, bFontColor.Glyph, bFontColor.Color);
end;

procedure TfmMail.SetHighlighting;
begin
  Editor.SelAttributes2.BackgroundColor := bHighlighting.Color;
  EditorUndoController.AddAction(9);
  CheckUndoButtonEnabled;
  SetHighlightingGlyph;
end;

procedure TfmMail.SetHighlightingGlyph;
begin
  DrawHelpedHighlightColor(ScaleFactor, bHighlighting.Glyph, bHighlighting.Color);
end;

procedure TfmMail.Undo(Count: Integer);
begin
  EditorUndoController.Lock;
  try
    while Count > 0 do
    begin
      SendMessage(Editor.InnerControl.Handle, EM_UNDO, 0, 0);
      EditorUndoController.PopUndo;
      Dec(Count);
    end;
  finally
    EditorUndoController.Unlock;
  end;
end;

procedure TfmMail.FormActivate(Sender: TObject);
begin
  if FCanOnChange then
    Editor.Properties.OnChange(Editor)
  else
    FCanOnChange := True;
  SetDocumentName(edtSubject.Text);
  bSend.Enabled := teTo.Text <> '';
  Editor.SetFocus;
  Editor.Properties.ReadOnly := Mode = dxmmtView;
end;

procedure TfmMail.FormCreate(Sender: TObject);
var
  ATextWidth: Integer;

  procedure InitializeRGIUndo;
  begin
    rgiUndo.GalleryOptions.ItemPullHighlighting.Active := True;
    rgiUndo.GalleryOptions.ColumnCount := 1;
    rgiUndo.GalleryOptions.SubMenuResizing := gsrNone;
    rgiUndo.GalleryGroups.Add;
  end;

begin
  FMailID := -1;
  if fmMailClientDemoMain.HasSkinPalette then
  begin
    BarManager.LargeImages := ilLargeImagesSVG;
    BarManager.Images := ilSmallImagesSVG;
  end;

  OpenDialog.Filter := RTFFilter;
  OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog.InitialDir := OpenDialog.InitialDir;
  ShowItems(True);

  PopulateSymbolGallery(BarManager, rgiItemSymbol);

  FEditorUndoController := TRichEditUndoController.Create(rgiUndo, Editor);

  ATextWidth := cxTextWidth(BarManager.Font, 'Undo 9999 Actions');
  InitializeRGIUndo;
  bstSelectionInfo.Width := ATextWidth;
  bstSelectionInfo.Caption := 'Cancel';
  UpdateRibbonDemoStyle(rdsOffice365);
  OpenValidationContacts;
  PrepareContactsPickerEditor;
  MailFormsManager.AddItem(Self);

  tabHome.Caption := cxGetResourceString(@sHomeTabCaption);
  tbFont.Caption := cxGetResourceString(@stFontDialogHeader);
  tbClipboard.Caption := cxGetResourceString(@sClipboard);
  tbEditing.Caption := cxGetResourceString(@sEditing);
  tbParagraph.Caption := cxGetResourceString(@sParagraph);
  tbSend.Caption := cxGetResourceString(@sSend);
  dxBarButtonSave.Caption := cxGetResourceString(@sdxBarButtonSave);
  dxBarButtonSave.Hint := cxGetResourceString(@sBarButtonSaveHint);
  dxBarButtonPrint.Caption := cxGetResourceString(@sdxBarButtonPrint);
  dxBarButtonClose.Caption := cxGetResourceString(@sCloseButton);
  dxBarButtonClose.Hint := cxGetResourceString(@sCloseButton);
  dxBarButtonUndo.Caption := cxGetResourceString(@sUndo);
  dxBarButtonUndo.Hint := cxGetResourceString(@sUndo);
  dxBarButtonCut.Caption := cxGetResourceString(@sdxBarButtonCut);
  dxBarButtonCut.Hint := cxGetResourceString(@sBarButtonCutHint);
  dxBarButtonCopy.Caption := cxGetResourceString(@sdxBarButtonCopy);
  dxBarButtonCopy.Hint := cxGetResourceString(@sBarButtonCopyHint);
  dxBarButtonPaste.Caption := cxGetResourceString(@sdxBarButtonPaste);
  dxBarButtonPaste.Hint := cxGetResourceString(@sBarButtonPasteHint);
  dxBarButtonClear.Caption := cxGetResourceString(@sClear);
  dxBarButtonClear.Hint := cxGetResourceString(@sClear);
  dxBarButtonSelectAll.Caption := cxGetResourceString(@sdxBarButtonSelectAll);
  dxBarButtonSelectAll.Hint := cxGetResourceString(@sBarButtonSelectAllHint);
  dxBarButtonFind.Caption := cxGetResourceString(@sdxBarButtonFind);
  dxBarButtonFind.Hint := cxGetResourceString(@sBarButtonFindHint);
  dxBarButtonReplace.Caption := cxGetResourceString(@sdxBarButtonReplace);
  dxBarButtonReplace.Hint := cxGetResourceString(@sBarButtonReplaceHint);
  rgiUndo.Caption := cxGetResourceString(@sUndo);
  bBold.Caption := cxGetResourceString(@sbBold);
  bItalic.Caption := cxGetResourceString(@sbItalic);
  bUnderline.Caption := cxGetResourceString(@sbUnderline);
  bFontColor.Caption := cxGetResourceString(@sFontColor);
  rgiFontColor.Caption := cxGetResourceString(@sFontColor);
  bFontColor.Hint := cxGetResourceString(@sFontColor);
  liSubject.CaptionOptions.Text := cxGetResourceString(@sSubjectColumn);
  btnTo.Caption := cxGetResourceString(@sTo);
  dxBarButtonBullets.Caption := cxGetResourceString(@sBulletedList);
  rgiItemSymbol.Caption := cxGetResourceString(@sSymbols);
  bSend.Caption := cxGetResourceString(@sSendMessage);
  bHighlighting.Caption := cxGetResourceString(@sHighlighting);
  rgiHighlighting.Caption := cxGetResourceString(@sHighlighting);
  rgiHighlighting.Hint := cxGetResourceString(@sHighlighting);
  bHighlighting.Hint := cxGetResourceString(@sHighlighting);
  if UseRightToLeftAlignment then
  begin
    dxBarButtonAlignLeft.Action := actAlignRight;
    dxBarButtonAlignLeft.ScreenTip := DM.stAlignRight;
    dxBarButtonAlignRight.Action := actAlignLeft;
    dxBarButtonAlignRight.ScreenTip := DM.stAlignLeft;
  end
  else
  begin
    dxBarButtonAlignLeft.Action := actAlignLeft;
    dxBarButtonAlignLeft.ScreenTip := DM.stAlignLeft;
    dxBarButtonAlignRight.Action := actAlignRight;
    dxBarButtonAlignRight.ScreenTip := DM.stAlignRight;
  end;
  SetHighlightingGlyph;
  SetFontColorGlyph;
  TdxCustomRibbonAccess(Ribbon).OnMinimizeButtonPopulatePopupMenu := fmMailClientDemoMain.RibbonMinimizeButtonPopulatePopupMenu;
end;

procedure TfmMail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IsDataModified then
    case NeedQuerySaveAndClose of
      mrYes:
        begin
          SaveMail(bkDrafts);
          MailFormsManager.RemoveItem(Self);
        end;
      mrNo:
        MailFormsManager.RemoveItem(Self);
      mrCancel:
        Action := caNone;
    end
  else
    MailFormsManager.RemoveItem(Self);
end;

procedure TfmMail.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FEditorUndoController);
  clValidationContacts.Close;
end;

procedure TfmMail.dxBarButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMail.dxBarButtonPrintClick(Sender: TObject);
begin
  if PrintDialog.Execute then
    Editor.Print(edtSubject.Text);
end;

procedure TfmMail.dxBarButtonExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMail.dxBarButtonUndoClick(Sender: TObject);
begin
  Undo(1);
end;

procedure TfmMail.dxBarButtonCutClick(Sender: TObject);
begin
  FocusedEditor.CutToClipboard;
end;

procedure TfmMail.dxBarButtonCopyClick(Sender: TObject);
begin
  FocusedEditor.CopyToClipboard;
end;

procedure TfmMail.dxBarButtonPasteClick(Sender: TObject);
begin
  FocusedEditor.PasteFromClipboard;
end;

procedure TfmMail.dxBarButtonClearClick(Sender: TObject);
begin
  SendMessage(Editor.InnerControl.Handle, WM_KEYDOWN, VK_DELETE, 0);
end;

procedure TfmMail.dxBarButtonSelectAllClick(Sender: TObject);
begin
  Editor.SelectAll;
end;

procedure TfmMail.dxBarButtonFindClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  FindDialog.Execute;
end;

procedure TfmMail.dxBarButtonReplaceClick(Sender: TObject);
begin
  Editor.SelLength := 0;
  ReplaceDialog.Execute;
end;

procedure TfmMail.cmbFontSizeChange(Sender: TObject);
begin
  if not FUpdating then
  begin
    Editor.SelAttributes.Size := cmbFontSize.EditValue;
    EditorUndoController.AddAction(7);
    CheckUndoButtonEnabled;
  end;
end;

procedure TfmMail.cmbFontSizeClick(Sender: TObject);
begin
  FontDialog.Font.Assign(Editor.SelAttributes);
  if FontDialog.Execute then
    Editor.SelAttributes.Assign(FontDialog.Font);
end;

procedure TfmMail.bBoldClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bBold.Down then
      Style := Style + [fsBold]
    else
      Style := Style - [fsBold];
end;

procedure TfmMail.bItalicClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bItalic.Down then
      Style := Style + [fsItalic]
    else
      Style := Style - [fsItalic];
end;

procedure TfmMail.bUnderlineClick(Sender: TObject);
begin
  with Editor.SelAttributes do
    if bUnderline.Down then
      Style := Style + [fsUnderline]
    else
      Style := Style - [fsUnderline];
end;

procedure TfmMail.dxBarButtonBulletsClick(Sender: TObject);
begin
  Editor.Paragraph.Numbering := TNumberingStyle(dxBarButtonBullets.Down);
end;

procedure TfmMail.btnLockedClick(Sender: TObject);
var
  AHint: string;
begin
  Editor.Properties.ReadOnly := TdxBarButton(Sender).Down;
  if Editor.Properties.ReadOnly then
  begin
    AHint := 'Editing protection: Read only. Click for editing.';
    cxStyle1.TextColor := clMaroon;
  end
  else
  begin
    AHint := 'Editing protection: Writable. Click for read-only mode.';
    cxStyle1.TextColor := clGray;
  end;
  TdxBarButton(Sender).Hint := AHint;
  EditorSelectionChange(nil);
end;

procedure TfmMail.dxBarButtonAlignClick(Sender: TObject);
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

procedure TfmMail.dxBarButtonProtectedClick(Sender: TObject);
begin
  with Editor.SelAttributes do Protected := not Protected;
end;

procedure TfmMail.RibbonHideMinimizedByClick(
  Sender: TdxCustomRibbon; AWnd: HWND; AShift: TShiftState;
  const APos: TPoint; var AAllowProcessing: Boolean);
begin
  AAllowProcessing := AWnd <> Editor.InnerControl.Handle;
end;

procedure TfmMail.bFontColorClick(Sender: TObject);
begin
  SetFontColor;
end;

procedure TfmMail.bHighlightingClick(Sender: TObject);
begin
  SetHighlighting;
end;

type
  TClipboardAccess = class(TClipboard);

procedure TfmMail.rgiItemSymbolGroupItemClick(
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

type
  TStringsArray = array of string;

constructor TRichEditUndoController.Create(AGalleryItem: TdxRibbonGalleryItem;
  AEditor: TcxRichEdit);
begin
  inherited Create;
  FGalleryItem := AGalleryItem;
  FEditor := AEditor;
end;

procedure TRichEditUndoController.AnalyseMessage;
var
  AMessageID: Integer;
begin
  if FIsLocked then Exit;
  AMessageID := SendMessage(FEditor.InnerControl.Handle, EM_GETUNDONAME, 0, 0);
  if NeedAddAction(AMessageID) then
    AddAction(AMessageID);
end;

procedure TRichEditUndoController.Lock;
begin
  FIsLocked := True;
end;

function TRichEditUndoController.NeedAddAction(const AMessageID: Integer): Boolean;
begin
  Result := (AMessageID >= 1) and
    ((ActionCount = 0) or (FLastMessageID <> AMessageID) or (FLastSelStart + 1 <> FEditor.SelStart));
  StoreLastConstants(AMessageID);
end;

procedure TRichEditUndoController.UnLock;
begin
  FIsLocked := False;
end;

procedure TRichEditUndoController.AddAction(AnActionID: Integer);
const
  RichEditAction: array[0..9] of string = ('Unknown', 'Typing', 'Delete',
    'Drag And Drop', 'Cut', 'Paste',
    'Font Name Change', 'Font Size Change',
    'Font Color Change', 'Highlighting Color Change');
begin
  if not (AnActionID in [6 .. 9]) or (FEditor.SelLength <> 0) then
    PushUndo(RichEditAction[AnActionID]);
  StoreLastConstants(AnActionID);
end;

function TRichEditUndoController.GetActionCount: Integer;
begin
  Result := FGalleryItem.GalleryGroups[0].Items.Count;
end;

procedure TRichEditUndoController.PopUndo;
var
  AGroup: TdxRibbonGalleryGroup;
begin
  AGroup := FGalleryItem.GalleryGroups[0];
  if AGroup.Items.Count > 0 then
    AGroup.Items.Delete(0);
end;

procedure TRichEditUndoController.PushUndo(AnAction: string);
var
  AGroup: TdxRibbonGalleryGroup;
begin
  AGroup := FGalleryItem.GalleryGroups[0];
  AGroup.Items.Insert(0);
  AGroup.Items[0].Caption := AnAction;
end;

procedure TRichEditUndoController.StoreLastConstants(const AMessageID: Integer);
begin
  FLastMessageID := AMessageID;
  FLastSelStart := FEditor.SelStart;
end;

procedure TfmMail.rgiUndoHotTrackedItemChanged(
  APrevHotTrackedGroupItem,
  ANewHotTrackedGroupItem: TdxRibbonGalleryGroupItem);
var
  ACount: Integer;
  AString: string;
begin
  if ANewHotTrackedGroupItem <> nil then
  begin
    ACount := ANewHotTrackedGroupItem.Index + 1;
    AString := Format('Undo %d Action', [ACount]);
    if ACount <> 1 then
      AString := AString + 's';
    bstSelectionInfo.Caption := AString;
  end
  else
    bstSelectionInfo.Caption := 'Cancel';
end;

procedure TfmMail.rgiUndoGroupItemClick(
  Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
begin
  Undo(AItem.Index + 1);
end;

procedure TfmMail.OpenValidationContacts;
begin
  clValidationContacts.Close;
  DM.clPersons.First;
  clValidationContacts.Open;
  clValidationContacts.IndexFieldNames := 'Name';
end;

procedure TfmMail.PrepareContactsPickerEditor;
var
  AToken: TdxTokenEditToken;
begin
  teTo.Properties.BeginUpdate;
  try
    clValidationContacts.First;
    while not clValidationContacts.Eof do
    begin
      AToken := teTo.Properties.Tokens.Add;
      AToken.Text := clValidationContacts.FieldByName('Email').AsString;
      AToken.DisplayText := clValidationContacts.FieldByName('Name').AsString;
      AToken.ImageIndex := 6 - clValidationContacts.FieldByName('Gender').AsInteger;
      AToken.Hint := AToken.DisplayText + ' (' + AToken.Text + ')';
      AToken.Tag := NativeInt(clValidationContacts.Fields);
      clValidationContacts.Next;
    end;
  finally
    teTo.Properties.EndUpdate;
  end;
  teTo.Properties.MaxLength := DM.clMails.FieldByName('To').Size;
end;

procedure TfmMail.SaveAndClose(ADestination: Integer);
begin
  SaveMail(ADestination);
  ResetDataModified;
  Close;
end;

procedure TfmMail.SaveMail(ABoxKind: Integer);
const
  AAttachmentID = 0;
  AIsUnread = False;
  APriority = 1;
var
  ASubject: string;
  AContent: TMemoryStream;
  AEmails: string;
begin
  AContent := TMemoryStream.Create;
  try
    Editor.Lines.SaveToStream(AContent);
    AEmails := teTo.Text;
    ASubject := edtSubject.Text;
    TMailClientDemoMailsFrame(Owner).SaveMail(BoxNumber, ABoxKind, MailID, APriority, AAttachmentID,
      AEmails, ASubject, AIsUnread, Now, AContent);
  finally
    FreeAndNil(AContent);
  end;
end;

procedure TfmMail.ScaleFactorChanged(M, D: Integer);
begin
  inherited ScaleFactorChanged(M, D);
  PopulateSymbolGallery(BarManager, rgiItemSymbol);
  SetFontColorGlyph;
  SetHighlightingGlyph;
end;

procedure TfmMail.bSendClick(Sender: TObject);
begin
  SaveAndClose(bkSent);
end;

procedure TfmMail.dxBarButtonSaveClick(Sender: TObject);
begin
  SaveAndClose(bkDrafts);
end;

procedure TfmMail.btnToClick(Sender: TObject);
begin
  fmWhomSelect := TfmWhomSelect.Create(Self);
  try
    fmWhomSelect.teTo.Properties.Tokens.Assign(teTo.Properties.Tokens);
    fmWhomSelect.teTo.Properties.MaxLength := teTo.Properties.MaxLength;
    fmWhomSelect.teTo.EditValue := teTo.EditValue;
    if (fmWhomSelect.ShowModal = mrOk) and (teTo.EditValue <> fmWhomSelect.teTo.EditValue) then
    begin
      teTo.Text := fmWhomSelect.teTo.Text;
      teTo.ValidateEdit;
      teTo.ModifiedAfterEnter := True;
    end;
  finally
    fmWhomSelect.Free;
  end;
end;

procedure TfmMail.teToPropertiesValidate(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AError: Boolean;
begin
  AError := not IsValidAddress(VarToStr(DisplayValue));
  Error := Error or AError;
  if AError then
  begin
    if ErrorText <> '' then
      ErrorText := ErrorText + #13#10;
    ErrorText := ErrorText + 'Invalid email address: ' + VarToStr(DisplayValue);
  end;
  bSend.Enabled := not (Error or (teTo.Text = ''));
end;

end.
