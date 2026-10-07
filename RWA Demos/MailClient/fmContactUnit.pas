unit fmContactUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, fmBaseEditUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinsdxBarPainter,
  dxBar, dxLayoutContainer, dxLayoutControl, cxClasses, dxRibbon,
  cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxMemo, cxTextEdit, cxImage, Vcl.StdCtrls, cxButtons,
  cxDBEdit, cxDBRichEdit, MailClientDemoContacts, cxRichEdit, Data.DB,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxImageComboBox,
  Vcl.ImgList, dxRibbonGallery, dxBarExtItems, dxMailClientDemoUtils,
  dxSkinsdxRibbonPainter, dxSkinscxPCPainter, cxFontNameComboBox, cxBarEditItem, dxRibbonCustomizationForm,
  dxGallery, dxRibbonColorGallery, dxOfficeSearchBox, System.Actions, Vcl.ActnList, System.ImageList, cxImageList;

type
  TfmContact = class(TfmBaseEdit)
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem;
    edNotes: TcxDBRichEdit;
    liNotes: TdxLayoutItem;
    cxbtnOK: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxbtnCancel: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    edPhoto: TcxDBImage;
    dxLayoutControl1Item1: TdxLayoutItem;
    dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem;
    edFirstName: TcxDBTextEdit;
    liFirstName: TdxLayoutItem;
    edMiddleName: TcxDBTextEdit;
    liMiddleName: TdxLayoutItem;
    dxLayoutControl1Group5: TdxLayoutGroup;
    edLastName: TcxDBTextEdit;
    liLastName: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    lgAddressTab: TdxLayoutGroup;
    lgInfoTab: TdxLayoutGroup;
    edAddressLine: TcxDBMemo;
    liAddressLine: TdxLayoutItem;
    edTitle: TcxDBImageComboBox;
    liTitle: TdxLayoutItem;
    edCity: TcxDBComboBox;
    liCity: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    edState: TcxDBComboBox;
    liState: TdxLayoutItem;
    edZipCode: TcxDBTextEdit;
    liZipCode: TdxLayoutItem;
    edEmail: TcxDBTextEdit;
    liEmail: TdxLayoutItem;
    edPhone: TcxDBTextEdit;
    liPhone: TdxLayoutItem;
    edGender: TcxDBImageComboBox;
    liGender: TdxLayoutItem;
    edBirthDate: TcxDBDateEdit;
    liBirthDate: TdxLayoutItem;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1SpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    dxLayoutControl1SpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    dxLayoutControl1SpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  protected
    function GetDataSet: TDataSet; override;
    procedure InitializeNewRecord; override;
  end;

implementation

{$R *.dfm}

uses
  MailClientDemoData, MailClientDemoMain, LocalizationStrs, dxBarStrs;

procedure TfmContact.FormCreate(Sender: TObject);

  procedure InternalAddItem(AComboBox: TcxDBComboBox; const S: string);
  begin
    if (Trim(S) <> '') and (AComboBox.Properties.Items.IndexOf(S) < 0) then
      AComboBox.Properties.Items.Add(S);
  end;

var
  AData: TDataSet;
begin
  inherited;
  if fmMailClientDemoMain.HasSkinPalette then
  begin
    dxBarManager1.LargeImages := ilLargeImagesSVG;
    dxBarManager1.Images := ilSmallImagesSVG;
  end;
  Editor := edNotes;
  AData := DM.clPersons;
  AData.First;
  while not AData.Eof do
  begin
    InternalAddItem(edCity, dm.clPersonsCity.AsString);
    InternalAddItem(edState, dm.clPersonsState.AsString);
    AData.Next;
  end;
//
  liNotes.CaptionOptions.Text := cxGetResourceString(@sNotes) + ':';
  cxbtnOK.Caption := cxGetResourceString(@dxSBAR_OK);
  cxbtnCancel.Caption := cxGetResourceString(@sCancelButton);
  liFirstName.CaptionOptions.Text := cxGetResourceString(@sFirstName) + ':';
  liMiddleName.CaptionOptions.Text := cxGetResourceString(@sMiddleName) + ':';
  liLastName.CaptionOptions.Text := cxGetResourceString(@sLastName) + ':';
  lgAddressTab.CaptionOptions.Text := cxGetResourceString(@sAddressColumn);
  lgInfoTab.CaptionOptions.Text := cxGetResourceString(@sInfo);
  liAddressLine.CaptionOptions.Text := cxGetResourceString(@sAddressLine) + ':';
  liTitle.CaptionOptions.Text := cxGetResourceString(@sTitleColumn) + ':';
  liCity.CaptionOptions.Text := cxGetResourceString(@sCityColumn) + ':';
  liState.CaptionOptions.Text := cxGetResourceString(@sStateColumn) + ':';
  liZipCode.CaptionOptions.Text := cxGetResourceString(@sZipCodeColumn) + ':';
  liEmail.CaptionOptions.Text := cxGetResourceString(@sEmail) + ':';
  liPhone.CaptionOptions.Text := cxGetResourceString(@sPhoneColumn) + ':';
 // liGender.CaptionOptions.Text := cxGetResourceString(@stFontDialogHeader);
  liBirthDate.CaptionOptions.Text := cxGetResourceString(@sBirthDate) + ':';
  Ribbon.Style := rsOffice365;
  Ribbon.Layout := TdxRibbonLayout.Simplified;
end;

procedure TfmContact.FormShow(Sender: TObject);
begin
  inherited;
  Caption := GetFullName(edFirstName.Text, edMiddleName.Text, edLastName.Text);
end;

function TfmContact.GetDataSet: TDataSet;
begin
  Result := DM.clContacts;
end;

procedure TfmContact.InitializeNewRecord;
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FirstName').AsString := 'First';
    FieldByName('LastName').AsString := 'Last';
    FieldByName('Gender').AsInteger := gvMale;
  end;
end;

end.
