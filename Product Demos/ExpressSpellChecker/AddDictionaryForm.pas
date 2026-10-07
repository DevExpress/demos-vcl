unit AddDictionaryForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxCheckListBox, cxEdit, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxHyperLinkEdit, dxSpellChecker, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls, cxDropDownEdit, cxMaskEdit, cxButtonEdit, cxClasses, dxForms, cxLabel, dxShellDialogs,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxCoreGraphics;

type
  TfmAddDictionary = class(TdxForm)
    beAffixFile: TcxButtonEdit;
    beDictionaryFile: TcxButtonEdit;
    btnAdd: TcxButton;
    btnCancel: TcxButton;
    cbCodePage: TcxComboBox;
    cbLanguage: TcxComboBox;
    OpenDialog: TdxOpenFileDialog;
    lgRoot: TdxLayoutGroup;
    lcAddDictionary: TdxLayoutControl;
    lgDictionaryType: TdxLayoutGroup;
    lgDictionaryTypeHunspell: TdxLayoutRadioButtonItem;
    lgDictionaryTypeOpenOffice: TdxLayoutRadioButtonItem;
    lgDictionaryTypeISpell: TdxLayoutRadioButtonItem;
    lgLink: TdxLayoutGroup;
    liLink: TdxLayoutLabeledItem;
    lgOptions: TdxLayoutGroup;
    liAffixFile: TdxLayoutItem;
    liDictionaryFile: TdxLayoutItem;
    liLanguage: TdxLayoutItem;
    liCode_Page: TdxLayoutItem;
    liSeparator: TdxLayoutSeparatorItem;
    lgButtons: TdxLayoutGroup;
    liButtonAdd: TdxLayoutItem;
    liButtonCancel: TdxLayoutItem;
    dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel;

    procedure beAffixFilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure CanAddDictionary(Sender: TObject);
    procedure beDictionaryFilePropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure rgDictionaryTypePropertiesChange(Sender: TObject);
  public
    procedure Add(ASpellChecker: TdxCustomSpellChecker);
  end;

var
  fmAddDictionary: TfmAddDictionary;

procedure AddDictionary(ASpellChecker: TdxCustomSpellChecker);

implementation

{$R *.dfm}

uses
  dxISpellDecompressor, dxHunspellDictionary, dxSpellCheckerUtils, Winapi.ShellAPI;

procedure AddDictionary(ASpellChecker: TdxCustomSpellChecker);
begin
  if fmAddDictionary.ShowModal = mrOk then
    fmAddDictionary.Add(ASpellChecker);
end;

{ TfmAddDictionary }

procedure TfmAddDictionary.FormCreate(Sender: TObject);
var
  ACodePages: TdxSpellCheckerCodePages;
  I: Integer;
begin
  for I := 0 to dxLanguages.Count - 1 do
    cbLanguage.Properties.Items.AddObject(dxLanguages.Name[I], Pointer(dxLanguages.LocaleID[I]));
  cbLanguage.ItemIndex := dxLanguages.IndexOf(dxLanguages.GetDefaultLanguageLCID);
  ACodePages := TdxSpellCheckerCodePages.Create(True);
  try
    for I := 0 to ACodePages.Count - 1 do
      cbCodePage.Properties.Items.AddObject(ACodePages.Name[I], Pointer(ACodePages.Code[I]));
    for I := 0 to ACodePages.Count - 1 do
      if ACodePages.Code[I] = GetACP then
      begin
        cbCodePage.ItemIndex := I;
        Break;
      end;
  finally
    ACodePages.Free;
  end;
end;

procedure TfmAddDictionary.Add(ASpellChecker: TdxCustomSpellChecker);
var
  ADictionaryItem: TdxSpellCheckerDictionaryItem;

  procedure InitializeHunspell;
  var
    D: TdxHunspellDictionary;
  begin
    ADictionaryItem.DictionaryTypeClass := TdxHunspellDictionary;
    D := ADictionaryItem.DictionaryType as TdxHunspellDictionary;
    D.GrammarPath := beAffixFile.Text;
    D.DictionaryPath := beDictionaryFile.Text;
    D.Language := Integer(cbLanguage.Properties.Items.Objects[cbLanguage.ItemIndex]);
  end;

  procedure InitializeOffice;
  var
    D: TdxOpenOfficeDictionary;
  begin
    ADictionaryItem.DictionaryTypeClass := TdxOpenOfficeDictionary;
    D := ADictionaryItem.DictionaryType as TdxOpenOfficeDictionary;
    D.GrammarPath := beAffixFile.Text;
    D.DictionaryPath := beDictionaryFile.Text;
    D.Language := Integer(cbLanguage.Properties.Items.Objects[cbLanguage.ItemIndex]);
  end;

  procedure InitializeISpell;
  var
    D: TdxISpellDictionary;
  begin
    ADictionaryItem.DictionaryTypeClass := TdxISpellDictionary;
    D := ADictionaryItem.DictionaryType as TdxISpellDictionary;
    D.GrammarPath := beAffixFile.Text;
    D.DictionaryPath := beDictionaryFile.Text;
    D.Language := Integer(cbLanguage.Properties.Items.Objects[cbLanguage.ItemIndex]);
    D.CodePage := Integer(cbCodePage.Properties.Items.Objects[cbCodePage.ItemIndex]);
  end;

begin
  ADictionaryItem := ASpellChecker.DictionaryItems.Add;
  if lgDictionaryTypeHunspell.Checked then
    InitializeHunspell
  else
    if lgDictionaryTypeOpenOffice.Checked then
      InitializeOffice
    else
      if lgDictionaryTypeISpell.Checked then
        InitializeISpell
      else
        Assert(False);
  ShowHourglassCursor;
  try
    ADictionaryItem.DictionaryType.Load(dlmDirectLoad);
  finally
    HideHourglassCursor;
  end;
end;

procedure TfmAddDictionary.rgDictionaryTypePropertiesChange(Sender: TObject);
begin
  lcAddDictionary.Visible := lgDictionaryTypeOpenOffice.Checked;
  lgLink.Visible := not lcAddDictionary.Visible;
end;

procedure TfmAddDictionary.beAffixFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  OpenDialog.FileName := '';
  OpenDialog.Filter := 'Affix files (*.aff)|*.aff|All files (*.*)|*.*';
  if OpenDialog.Execute then
    beAffixFile.Text := OpenDialog.FileName;
end;

procedure TfmAddDictionary.beDictionaryFilePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  OpenDialog.FileName := '';
  OpenDialog.Filter := 'Dictionary files (*.dic)|*.dic|All files (*.*)|*.*';
  if OpenDialog.Execute then
    beDictionaryFile.Text := OpenDialog.FileName;
end;

procedure TfmAddDictionary.CanAddDictionary(Sender: TObject);
begin
  btnAdd.Enabled := FileExists(beAffixFile.Text) and FileExists(beDictionaryFile.Text);
end;

end.
