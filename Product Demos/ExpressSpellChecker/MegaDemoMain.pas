unit MegaDemoMain;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSpellChecker, Vcl.StdCtrls, Vcl.ComCtrls, cxControls, cxContainer,
  cxEdit, cxTextEdit, cxMemo, cxRichEdit, Vcl.Menus, cxLookAndFeelPainters,
  cxButtons, cxLookAndFeels, cxLabel, cxDropDownEdit, cxCalendar,
  cxMaskEdit, Vcl.ExtCtrls, cxGroupBox, Vcl.ActnList, Vcl.ImgList, cxGraphics, Winapi.ShellAPI,
  cxClasses, cxPC,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  dxmdaset, cxGridLevel, cxGridCustomView, cxGrid, dxBar, cxImage,
  cxBarEditItem, cxColorComboBox, cxBlobEdit, dxGDIPlusClasses,
  cxCheckBox, cxRadioGroup, cxCheckGroup, dxSkinsCore, dxSkinsForm,
  dxSkinsLookAndFeelPainter, dxSkinsStrs, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxBarSkinnedCustForm, cxPCdxBarPopupMenu, dxCore,
  cxDateUtils, cxNavigator, dxForms, dxBarBuiltInMenu, dxSpellCheckerCore,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxGeometry, dxFramedControl, dxPanel, cxImageList, System.ImageList, System.Actions;

type
  TfmMain = class(TdxForm)
    dxSpellChecker1: TdxSpellChecker;
    alMain: TActionList;
    actExit: TAction;
    aOutlookSpellType: TAction;
    aWordSpellType: TAction;
    aCheckFromCursorPos: TAction;
    aCheckSelectedTextFirst: TAction;
    aIgnoreEmails: TAction;
    aIgnoreMixedCaseWords: TAction;
    aCAYTActive: TAction;
    aIgnoreRepeatedWords: TAction;
    aIgnoreUpperCaseWords: TAction;
    aIgnoreURLs: TAction;
    aIgnoreWordsWithNumbers: TAction;
    aCheckSpelling: TAction;
    DataSource1: TDataSource;
    dxBarManager: TdxBarManager;
    dxBarSubItem1: TdxBarSubItem;
    dxBarManager1Bar1: TdxBar;
    CheckSpelling1: TdxBarButton;
    Exit1: TdxBarButton;
    File1: TdxBarSubItem;
    Outlook1: TdxBarButton;
    Word1: TdxBarButton;
    dfsd1: TdxBarSubItem;
    aCAYTActive1: TdxBarButton;
    CheckFromCursorPos1: TdxBarButton;
    CheckSelectedTextFirst1: TdxBarButton;
    IgnoreEmails1: TdxBarButton;
    IgnoreMixedCaseWords1: TdxBarButton;
    IgnoreRepeatedWords1: TdxBarButton;
    IgnoreUppercaseWords1: TdxBarButton;
    IgnoreURLs1: TdxBarButton;
    Spelling1: TdxBarSubItem;
    Options1: TdxBarSubItem;
    View1: TdxBarSubItem;
    Help1: TdxBarSubItem;
    beiSearch: TcxBarEditItem;
    dxSkinController: TdxSkinController;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxMemData1: TdxMemData;
    dxMemData1Photo: TBlobField;
    dxMemData1TitleOfCourtesy: TStringField;
    dxMemData1FirstName: TStringField;
    dxMemData1LastName: TStringField;
    dxMemData1Title: TStringField;
    dxMemData1BirthDate: TDateField;
    dxMemData1Notes: TMemoField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    ilSpellCheck: TcxImageList;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutLookAndFeelList3: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel;
    dxLayoutControl1: TdxLayoutControl;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1Photo: TcxGridDBColumn;
    cxGrid1DBTableView1CourtesyTitle: TcxGridDBColumn;
    cxGrid1DBTableView1FirstName: TcxGridDBColumn;
    cxGrid1DBTableView1LastName: TcxGridDBColumn;
    cxGrid1DBTableView1Title: TcxGridDBColumn;
    cxGrid1DBTableView1BirthDate: TcxGridDBColumn;
    cxGrid1DBTableView1Notes: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    btnCheckSpelling: TcxButton;
    cxButton1: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    lgPages: TdxLayoutGroup;
    lgGridPage: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lgSpellingOptions: TdxLayoutGroup;
    lgSpellingFormType: TdxLayoutGroup;
    lgSpellingFormTypeOutlook: TdxLayoutRadioButtonItem;
    lgSpellingFormTypeWord: TdxLayoutRadioButtonItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutCheckBoxItem1: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem2: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem3: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem4: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem5: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem6: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem7: TdxLayoutCheckBoxItem;
    dxLayoutCheckBoxItem8: TdxLayoutCheckBoxItem;
    dxLayoutImageItem1: TdxLayoutImageItem;
    dxLayoutCheckBoxItem9: TdxLayoutCheckBoxItem;
    lgEditorsPage: TdxLayoutGroup;
    edtName: TcxTextEdit;
    deBirthDate: TcxDateEdit;
    edtObjective: TcxTextEdit;
    reAbout: TcxRichEdit;
    edtAdress: TcxTextEdit;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    memInterests: TcxMemo;
    cxButton5: TcxButton;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutImageItem2: TdxLayoutImageItem;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutItem12: TdxLayoutItem;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem14: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;

    procedure actExitExecute(Sender: TObject);
    procedure aOutlookSpellTypeExecute(Sender: TObject);
    procedure aCheckFromCursorPosExecute(Sender: TObject);
    procedure aCheckSelectedTextFirstExecute(Sender: TObject);
    procedure aIgnoreEmailsExecute(Sender: TObject);
    procedure aIgnoreMixedCaseWordsExecute(Sender: TObject);
    procedure aCAYTActiveExecute(Sender: TObject);
    procedure aIgnoreRepeatedWordsExecute(Sender: TObject);
    procedure aIgnoreUpperCaseWordsExecute(Sender: TObject);
    procedure aIgnoreWordsWithNumbersExecute(Sender: TObject);
    procedure aIgnoreURLsExecute(Sender: TObject);
    procedure aCheckSpellingExecute(Sender: TObject);

    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgSpellingFormTypeClick(Sender: TObject);
    procedure aAddDictionaryExecute(Sender: TObject);
    procedure dxSpellChecker1CheckAsYouTypeStart(Sender: TdxCustomSpellChecker; AControl: TWinControl; var AAllow: Boolean);
    procedure lgPagesTabChanged(Sender: TObject);
  private
    procedure SpellingOptionsChanged(Sender: TdxSpellCheckerSpellingOptions);
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses
  dxSpellCheckerDialogs, dxSpellCheckerSpellingOptionsDialog, AddDictionaryForm,
  dxDemoUtils;

type
  TcxCheckGroupAccess = class(TcxCheckGroup);

  TSpellingOptionsForm = class(TfmSpellCheckerSpellingOptionsForm)
  protected
    procedure Save; override;
  end;

procedure TSpellingOptionsForm.Save;
begin
  inherited;
  fmMain.SpellingOptionsChanged(nil);
end;

procedure TfmMain.actExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.aOutlookSpellTypeExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingFormType := TdxSpellCheckerSpellingFormType(TAction(Sender).Tag);
  case TAction(Sender).Tag of
    0:
      lgSpellingFormTypeOutlook.Checked := True;
    1:
      lgSpellingFormTypeWord.Checked := True;
  end;
end;

procedure TfmMain.aCheckFromCursorPosExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.CheckFromCursorPos := aCheckFromCursorPos.Checked;
end;

procedure TfmMain.aCheckSelectedTextFirstExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.CheckSelectedTextFirst := aCheckSelectedTextFirst.Checked;
end;

procedure TfmMain.aIgnoreEmailsExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreEmails := aIgnoreEmails.Checked;
end;

procedure TfmMain.aIgnoreMixedCaseWordsExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreMixedCaseWords := aIgnoreMixedCaseWords.Checked;
end;

procedure TfmMain.aIgnoreRepeatedWordsExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreRepeatedWords := aIgnoreRepeatedWords.Checked;
end;

procedure TfmMain.aIgnoreUpperCaseWordsExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreUpperCaseWords := aIgnoreUpperCaseWords.Checked;
end;

procedure TfmMain.aIgnoreURLsExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreUrls := aIgnoreURLs.Checked;
end;

procedure TfmMain.aIgnoreWordsWithNumbersExecute(Sender: TObject);
begin
  dxSpellChecker1.SpellingOptions.IgnoreWordsWithNumbers := aIgnoreWordsWithNumbers.Checked;
end;

procedure TfmMain.aCAYTActiveExecute(Sender: TObject);
begin
  dxSpellChecker1.CheckAsYouTypeOptions.Active := aCAYTActive.Checked;
end;

procedure TfmMain.aCheckSpellingExecute(Sender: TObject);
begin
  dxSpellChecker1.CheckContainer(dxLayoutControl1, True)
end;

procedure TfmMain.cxButton2Click(Sender: TObject);
begin
  dxSpellChecker1.Check(edtObjective);
end;

procedure TfmMain.cxButton3Click(Sender: TObject);
begin
  dxSpellChecker1.Check(edtAdress);
end;

procedure TfmMain.cxButton4Click(Sender: TObject);
begin
  dxSpellChecker1.Check(reAbout);
end;

procedure TfmMain.cxButton5Click(Sender: TObject);
begin
  dxSpellChecker1.Check(memInterests);
end;

procedure TfmMain.SpellingOptionsChanged(Sender: TdxSpellCheckerSpellingOptions);
begin
  aCheckFromCursorPos.Checked := dxSpellChecker1.SpellingOptions.CheckFromCursorPos;
  aCheckSelectedTextFirst.Checked := dxSpellChecker1.SpellingOptions.CheckSelectedTextFirst;
  aIgnoreEmails.Checked := dxSpellChecker1.SpellingOptions.IgnoreEmails;
  aIgnoreMixedCaseWords.Checked := dxSpellChecker1.SpellingOptions.IgnoreMixedCaseWords;
  aIgnoreRepeatedWords.Checked := dxSpellChecker1.SpellingOptions.IgnoreRepeatedWords;
  aIgnoreUpperCaseWords.Checked := dxSpellChecker1.SpellingOptions.IgnoreUpperCaseWords;
  aIgnoreURLs.Checked := dxSpellChecker1.SpellingOptions.IgnoreUrls;
  aIgnoreWordsWithNumbers.Checked := dxSpellChecker1.SpellingOptions.IgnoreWordsWithNumbers;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  dxSpellCheckerSpellingOptionsDialogClass := TSpellingOptionsForm;
  CreateSkinsMenuItems(dxBarManager, View1, dxSkinController);
  CreateHelpMenuItems(dxBarManager, Help1);
end;

procedure TfmMain.lgPagesTabChanged(Sender: TObject);
begin
  if lgEditorsPage.ActuallyVisible then
    dxLayoutLabeledItem1.Caption := 'ExpressEditors'
  else
    if lgGridPage.ActuallyVisible then
      dxLayoutLabeledItem1.Caption := 'ExpressQuantumGrid';
end;

procedure TfmMain.rgSpellingFormTypeClick(Sender: TObject);
begin
 if lgSpellingFormTypeOutlook.Checked then
   aOutlookSpellType.Execute
 else
   if lgSpellingFormTypeWord.Checked then
     aWordSpellType.Execute;
end;

procedure TfmMain.aAddDictionaryExecute(Sender: TObject);
begin
  AddDictionary(dxSpellChecker1);
end;

procedure TfmMain.dxSpellChecker1CheckAsYouTypeStart(
  Sender: TdxCustomSpellChecker; AControl: TWinControl;
  var AAllow: Boolean);
begin
  AAllow := GetParentForm(AControl) <> fmAddDictionary;
end;

initialization
  dxMegaDemoProductIndex := dxSpellCheckerIndex;
  TdxVisualRefinements.LightBorders := True;
end.
