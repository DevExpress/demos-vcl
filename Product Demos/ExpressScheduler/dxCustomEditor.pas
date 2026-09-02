unit dxCustomEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxSchedulerEventEditor, Vcl.Menus, cxLookAndFeelPainters,
  cxGraphics, cxCheckComboBox, cxMemo, cxDropDownEdit, cxCheckBox,
  cxSpinEdit, cxTimeEdit, cxCalendar, cxMaskEdit, cxImageComboBox,
  cxTextEdit, Vcl.StdCtrls, cxControls, cxContainer, cxEdit, cxGroupBox,
  Vcl.ExtCtrls, cxButtons, Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, cxRichEdit,
  cxColorComboBox, cxLookAndFeels, cxLabel, dxBevel, dxCore, cxDateUtils, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutLookAndFeels, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxSchedulerRibbonStyleEventEditor, dxRibbonSkins,
  dxRibbonCustomizationForm, dxBar, dxBarApplicationMenu, dxRibbon,
  cxBarEditItem, cxImageList, cxSchedulerStorage, dxCoreClasses, dxGDIPlusAPI,
  dxGDIPlusClasses, dxRichEdit.NativeApi, dxRichEdit.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxRichEdit.Control.SpellChecker,
  dxRichEdit.Dialogs.EventArgs, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core, cxFontNameComboBox,
  dxRichEdit.Actions, dxRibbonColorGallery, dxActions;

type
  TcxSchedulerEventCustomEditor = class(TcxSchedulerEventRibbonStyleEditorForm)
    recMessage: TdxRichEditControl;
    dxRichEditControlPasteSelection: TdxRichEditControlPasteSelection;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarClipboard: TdxBar;
    dxBarLargeButtonPaste: TdxBarLargeButton;
    dxRichEditControlCutSelection: TdxRichEditControlCutSelection;
    dxBarButtonCut: TdxBarButton;
    dxRichEditControlCopySelection: TdxRichEditControlCopySelection;
    dxBarButtonCopy: TdxBarButton;
    dxRichEditControlSelectAll: TdxRichEditControlSelectAll;
    dxBarButtonSelectAll: TdxBarButton;
    dxRichEditControlChangeFontName: TdxRichEditControlChangeFontName;
    dxBarFont: TdxBar;
    cxBarEditItemFont: TcxBarEditItem;
    dxRichEditControlChangeFontSize: TdxRichEditControlChangeFontSize;
    cxBarEditItemFontSize: TcxBarEditItem;
    dxRichEditControlIncreaseFontSize: TdxRichEditControlIncreaseFontSize;
    dxBarButtonGrowFont: TdxBarButton;
    dxRichEditControlDecreaseFontSize: TdxRichEditControlDecreaseFontSize;
    dxBarButtonShrinkFont: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxRichEditControlTextUpperCase: TdxRichEditControlTextUpperCase;
    dxBarLargeButtonUPPERCASE: TdxBarLargeButton;
    dxRichEditControlTextLowerCase: TdxRichEditControlTextLowerCase;
    dxBarLargeButtonlowercase: TdxBarLargeButton;
    dxRichEditControlToggleTextCase: TdxRichEditControlToggleTextCase;
    dxBarLargeButtontOGGLEcASE: TdxBarLargeButton;
    dxRichEditControlToggleFontBold: TdxRichEditControlToggleFontBold;
    dxBarButtonBold: TdxBarButton;
    dxRichEditControlToggleFontItalic: TdxRichEditControlToggleFontItalic;
    dxBarButtonItalic: TdxBarButton;
    dxRichEditControlToggleFontUnderline: TdxRichEditControlToggleFontUnderline;
    dxBarButtonUnderline: TdxBarButton;
    dxRichEditControlToggleFontDoubleUnderline: TdxRichEditControlToggleFontDoubleUnderline;
    dxBarButtonDoubleUnderline: TdxBarButton;
    dxRichEditControlToggleFontStrikeout: TdxRichEditControlToggleFontStrikeout;
    dxBarButtonStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontDoubleStrikeout: TdxRichEditControlToggleFontDoubleStrikeout;
    dxBarButtonDoubleStrikethrough: TdxBarButton;
    dxRichEditControlToggleFontSubscript: TdxRichEditControlToggleFontSubscript;
    dxBarButtonSubscript: TdxBarButton;
    dxRichEditControlToggleFontSuperscript: TdxRichEditControlToggleFontSuperscript;
    dxBarButtonSuperscript: TdxBarButton;
    dxRichEditControlTextHighlight: TdxRichEditControlTextHighlight;
    dxRibbonColorGalleryItemTextHighlightColor: TdxRibbonColorGalleryItem;
    dxRichEditControlChangeFontColor: TdxRichEditControlChangeFontColor;
    dxRibbonColorGalleryItemFontColor: TdxRibbonColorGalleryItem;
    dxRichEditControlToggleBulletedList: TdxRichEditControlToggleBulletedList;
    dxBarParagraph: TdxBar;
    dxBarButtonBullets: TdxBarButton;
    dxRichEditControlToggleSimpleNumberingList: TdxRichEditControlToggleSimpleNumberingList;
    dxBarButtonNumbering: TdxBarButton;
    dxRichEditControlToggleMultiLevelList: TdxRichEditControlToggleMultiLevelList;
    dxBarButtonMultilevellist: TdxBarButton;
    dxRichEditControlDecrementIndent: TdxRichEditControlDecrementIndent;
    dxBarButtonDecreaseIndent: TdxBarButton;
    dxRichEditControlIncrementIndent: TdxRichEditControlIncrementIndent;
    dxBarButtonIncreaseIndent: TdxBarButton;
    dxRichEditControlToggleShowWhitespace: TdxRichEditControlToggleShowWhitespace;
    dxBarButtonShowHide: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentLeft: TdxRichEditControlToggleParagraphAlignmentLeft;
    dxBarButtonAlignTextLeft: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentCenter: TdxRichEditControlToggleParagraphAlignmentCenter;
    dxBarButtonCenter: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentRight: TdxRichEditControlToggleParagraphAlignmentRight;
    dxBarButtonAlignTextRight: TdxBarButton;
    dxRichEditControlToggleParagraphAlignmentJustify: TdxRichEditControlToggleParagraphAlignmentJustify;
    dxBarButtonJustify: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxRichEditControlSetSingleParagraphSpacing: TdxRichEditControlSetSingleParagraphSpacing;
    dxBarLargeButton10: TdxBarLargeButton;
    dxRichEditControlSetSesquialteralParagraphSpacing: TdxRichEditControlSetSesquialteralParagraphSpacing;
    dxBarLargeButton15: TdxBarLargeButton;
    dxRichEditControlSetDoubleParagraphSpacing: TdxRichEditControlSetDoubleParagraphSpacing;
    dxBarLargeButton20: TdxBarLargeButton;
    dxRichEditControlShowParagraphForm: TdxRichEditControlShowParagraphForm;
    dxBarLargeButtonParagraph: TdxBarLargeButton;
    dxRichEditControlSearchFind: TdxRichEditControlSearchFind;
    dxBarEditing: TdxBar;
    dxBarButtonFind: TdxBarButton;
    dxRichEditControlSearchReplace: TdxRichEditControlSearchReplace;
    dxBarButtonReplace: TdxBarButton;
    dxRichEditControlUndo: TdxRichEditControlUndo;
    dxBarLargeButtonUndo: TdxBarLargeButton;
    dxRichEditControlRedo: TdxRichEditControlRedo;
    dxBarLargeButtonRedo: TdxBarLargeButton;
    dxRichEditControlShowInsertTableForm: TdxRichEditControlShowInsertTableForm;
    dxRibbonTabInsert: TdxRibbonTab;
    dxBarTables: TdxBar;
    dxBarLargeButtonTable: TdxBarLargeButton;
    dxRichEditControlInsertPicture: TdxRichEditControlInsertPicture;
    dxBarIllustrations: TdxBar;
    dxBarLargeButtonInlinePicture: TdxBarLargeButton;
    dxRichEditControlInsertFloatingObjectPicture: TdxRichEditControlInsertFloatingObjectPicture;
    dxBarLargeButtonPicture: TdxBarLargeButton;
    dxRichEditControlShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    dxBarLinks: TdxBar;
    dxBarLargeButtonBookmark: TdxBarLargeButton;
    dxRichEditControlShowHyperlinkForm: TdxRichEditControlShowHyperlinkForm;
    dxBarLargeButtonHyperlink: TdxBarLargeButton;
    dxRichEditControlInsertTextBox: TdxRichEditControlInsertTextBox;
    dxBarText: TdxBar;
    dxBarLargeButtonTextBox: TdxBarLargeButton;
    dxRichEditControlShowSymbolForm: TdxRichEditControlShowSymbolForm;
    dxBarSymbols: TdxBar;
    dxBarLargeButtonSymbol: TdxBarLargeButton;
    procedure recMessageModifiedChanged(Sender: TObject);
  protected
    procedure SetActiveControl; override;
    procedure CheckControlStates; override;
    procedure DoHelperSaveChanges; override;
    procedure LoadEventValuesIntoControls; override;
  end;

  { TcxShedulerDemoEventEditorFormStyleInfo }

  TcxShedulerDemoEventEditorFormStyleInfo = class(TcxShedulerRibbon2016StyleEventEditorFormStyleInfo)
  public
    class function CreateEditor(AEvent: TcxSchedulerControlEvent): IcxSchedulerEventEditorForm; override;
    class function GetName: string; override;
  end;

implementation

uses
  cxSchedulerEditorFormManager;

{$R *.dfm}

{ TcxSchedulerEventCustomEditor }

procedure TcxSchedulerEventCustomEditor.CheckControlStates;
begin
  inherited CheckControlStates;
  recMessage.ReadOnly := ReadOnly;
end;

procedure TcxSchedulerEventCustomEditor.DoHelperSaveChanges;
begin
  inherited DoHelperSaveChanges;
  Event.Message := recMessage.Document.RtfText;
end;

procedure TcxSchedulerEventCustomEditor.LoadEventValuesIntoControls;
begin
  inherited LoadEventValuesIntoControls;
  recMessage.Document.RtfText := Event.Message;
  recMessage.Enabled := Storage.IsMessageAvailable;
end;

procedure TcxSchedulerEventCustomEditor.recMessageModifiedChanged(
  Sender: TObject);
begin
  EditorsChanged(Sender);
end;

procedure TcxSchedulerEventCustomEditor.SetActiveControl;
begin
  if recMessage.CanFocus then
    ActiveControl := recMessage
  else
    inherited SetActiveControl;
end;

{ TcxShedulerDemoEventEditorFormStyleInfo }

class function TcxShedulerDemoEventEditorFormStyleInfo.CreateEditor(
  AEvent: TcxSchedulerControlEvent): IcxSchedulerEventEditorForm;
begin
  Result := TcxSchedulerEventCustomEditor.CreateEx(AEvent);
  InitialRibbonStyle(Result);
end;

class function TcxShedulerDemoEventEditorFormStyleInfo.GetName: string;
begin
  Result := 'Custom Editor';
end;

initialization
  cxSchedulerEditorManager.RegisterShedulerEditorForm(TcxShedulerDemoEventEditorFormStyleInfo);

finalization
  cxSchedulerEditorManager.UnregisterShedulerEditorForm(TcxShedulerDemoEventEditorFormStyleInfo);


end.



