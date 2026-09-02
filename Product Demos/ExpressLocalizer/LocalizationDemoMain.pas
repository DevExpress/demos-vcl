unit LocalizationDemoMain;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, cxCalendar,
  Vcl.StdCtrls, cxLocalization, cxClasses, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxGraphics, Vcl.ComCtrls, cxCustomData, cxFilter, cxData, Data.DB, cxLookAndFeelPainters, cxLookAndFeels, cxMemo, cxDBEdit,
  cxCurrencyEdit, cxLabel, cxNavigator, cxDBNavigator, cxFilterControl, cxButtons, Vcl.ExtCtrls, dxCore, cxBlobEdit,
  dxmdaset, Vcl.Grids, Vcl.DBGrids, dxSpellChecker, cxStyles, cxScheduler, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerDateNavigator, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerHolidays, cxSchedulerGanttView, dxBar, cxPC,
  dxLayoutControl, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, dxPrnDev, dxPrnDlg, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSCore, dxPScxCommon, dxSkinsdxRibbonPainter, dxPScxGridLnk,
  dxLayoutContainer, dxSkinscxPCPainter, dxSkinsCore, dxSkinscxSchedulerPainter, dxSkinsdxBarPainter, dxSkinsForm,
  Vcl.ActnList, dxLayoutLookAndFeels, cxGroupBox, dxGDIPlusClasses, dxLayoutcxEditAdapters, dxBarSkinnedCustForm,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxForms, dxBarBuiltInMenu, cxSchedulerAgendaView,
  cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor, dxLayoutControlAdapters, dxPScxGridLayoutViewLnk,
  dxSpellCheckerCore, cxDataControllerConditionalFormattingRulesManagerDialog, cxSchedulerTreeListBrowser, dxDateRanges,
  dxScrollbarAnnotations, System.Actions;

type
  TForm1 = class(TdxForm, IdxLocalizerListener)
    cxLocalizer1: TcxLocalizer;
    DataSource1: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1Picture: TBlobField;
    dxMemData1Model: TStringField;
    dxMemData1PurchaseDate: TDateTimeField;
    dxMemData1Time: TDateTimeField;
    dxMemData1PaymentAmount: TCurrencyField;
    dxMemData1PaymentType: TStringField;
    dxMemData1Quantity: TIntegerField;
    dxMemData1CustomerName: TStringField;
    dxMemData1Company: TStringField;
    dxBarManager1: TdxBarManager;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lgOrderInfo: TdxLayoutGroup;
    liPurchaseDate: TdxLayoutItem;
    cxDBDateEdit2: TcxDBDateEdit;
    liPaymentAmount: TdxLayoutItem;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    liPaymentType: TdxLayoutItem;
    cxDBTextEdit6: TcxDBTextEdit;
    liQuantity: TdxLayoutItem;
    cxDBTextEdit7: TcxDBTextEdit;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Group3: TdxLayoutGroup;
    lgCar: TdxLayoutGroup;
    lgCustomer: TdxLayoutGroup;
    liModel: TdxLayoutItem;
    cxDBTextEdit8: TcxDBTextEdit;
    liPicture: TdxLayoutItem;
    cxDBBlobEdit2: TcxDBBlobEdit;
    liName: TdxLayoutItem;
    cxDBTextEdit9: TcxDBTextEdit;
    liCompany: TdxLayoutItem;
    cxDBTextEdit10: TcxDBTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    cxDBNavigator2: TcxDBNavigator;
    dxLayoutControl1Item10: TdxLayoutItem;
    btnCheckSpelling: TcxButton;
    dxBarManager1Bar2: TdxBar;
    Close1: TdxBarButton;
    File1: TdxBarSubItem;
    cxScheduler1: TcxScheduler;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1RecId: TcxGridDBColumn;
    cxGrid1DBTableView1Picture: TcxGridDBColumn;
    cxGrid1DBTableView1Model: TcxGridDBColumn;
    cxGrid1DBTableView1PurchaseDate: TcxGridDBColumn;
    cxGrid1DBTableView1Time: TcxGridDBColumn;
    cxGrid1DBTableView1PaymentAmount: TcxGridDBColumn;
    cxGrid1DBTableView1PaymentType: TcxGridDBColumn;
    cxGrid1DBTableView1Quantity: TcxGridDBColumn;
    cxGrid1DBTableView1CustomerName: TcxGridDBColumn;
    cxGrid1DBTableView1Company: TcxGridDBColumn;
    lgButtons: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    Language1: TdxBarSubItem;
    bbReload: TdxBarButton;
    cxSchedulerStorage1: TcxSchedulerStorage;
    bbPrint: TdxBarButton;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink: TdxGridReportLink;
    dxSkinController1: TdxSkinController;
    siHelp: TdxBarSubItem;
    bsiView: TdxBarSubItem;
    alMain: TActionList;
    actDownloads: TAction;
    actSupport: TAction;
    actDXOnTheWeb: TAction;
    actProducts: TAction;
    actFeatures: TAction;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxSpellChecker1: TdxSpellChecker;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    dxMemData2: TdxMemData;
    DataSource2: TDataSource;
    dxMemData2ProductName: TStringField;
    dxMemData2ResourceStringName: TWideStringField;
    dxMemData2OriginalValue: TWideStringField;
    dxMemData2ResourceStringValue: TWideStringField;
    dxMemData2Translated: TBooleanField;
    cxGrid2DBTableView1RecId: TcxGridDBColumn;
    cxGrid2DBTableView1ProductName: TcxGridDBColumn;
    cxGrid2DBTableView1ResourceStringName: TcxGridDBColumn;
    cxGrid2DBTableView1OriginalValue: TcxGridDBColumn;
    cxGrid2DBTableView1ResourceStringValue: TcxGridDBColumn;
    cxGrid2DBTableView1Translated: TcxGridDBColumn;
    bbRefresh: TdxBarButton;
    bbSave: TdxBarButton;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    lliDescription: TdxLayoutLabeledItem;
    dxLayoutImageItem1: TdxLayoutImageItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutImageItem2: TdxLayoutImageItem;
    procedure FormCreate(Sender: TObject);
    procedure btnCheckSpellingClick(Sender: TObject);
    procedure bbReloadClick(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
    procedure actDownloadsExecute(Sender: TObject);
    procedure actDXOnTheWebExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure dxMemData2AfterPost(DataSet: TDataSet);
    procedure dxMemData2CalcFields(DataSet: TDataSet);
    procedure bbRefreshClick(Sender: TObject);
    procedure bbSaveClick(Sender: TObject);
  private
    FPopulatingLocalizationPage: Boolean;
    procedure PopulateLocalizationPage;
    procedure PopulateLanguages;
    procedure SelectLanguage(ASender: TObject);
    procedure UpdateLanguageItemNames;
  public
    procedure TranslationChanged;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  dxDemoUtils, LocalizationDemoRes;

procedure TForm1.FormCreate(Sender: TObject);
begin
  dxResourceStringsRepository.AddListener(Self);
  cxLocalizer1.Active := True;
  PopulateLanguages;
  CreateSkinsMenuItems(dxBarManager1, bsiView, dxSkinController1);
  CreateHelpMenuItems(dxBarManager1, siHelp);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  dxResourceStringsRepository.RemoveListener(Self);
end;

procedure TForm1.TranslationChanged;
begin
  Caption := cxGetResourceString(@sAppName) + ' ' + cxLocalizer1.Language;

  //Bar
  File1.Caption := cxGetResourceString(@sFile1);
  bbReload.Caption := cxGetResourceString(@sReload);
  bbSave.Caption := cxGetResourceString(@sSave);
  bbRefresh.Caption := cxGetResourceString(@sRefresh);
  Language1.Caption := cxGetResourceString(@sLanguage1);
  siHelp.Caption := cxGetResourceString(@sHelp);
  bsiView.Caption := cxGetResourceString(@sView);
  Close1.Caption := cxGetResourceString(@sClose1);
  bbPrint.Caption := cxGetResourceString(@sPrint);

  // Description label
  lliDescription.Caption := cxGetResourceString(@sDescription);

  // Layout
  lgOrderInfo.Caption := cxGetResourceString(@sOrderInfo);
  lgCar.Caption := cxGetResourceString(@sCar);
  lgCustomer.Caption := cxGetResourceString(@sCustomer);

  liPaymentType.Caption := cxGetResourceString(@sPaymentType);
  liQuantity.Caption := cxGetResourceString(@sQuantity);
  liPurchaseDate.Caption := cxGetResourceString(@sPurchaseDate);
  liPaymentAmount.Caption := cxGetResourceString(@sPaymentAmount);
  liModel.Caption := cxGetResourceString(@sModel);
  liPicture.Caption := cxGetResourceString(@sPicture);
  liCompany.Caption := cxGetResourceString(@sCompany);
  liName.Caption := cxGetResourceString(@sName);

  btnCheckSpelling.Caption := cxGetResourceString(@sCheckSpelling);
end;

procedure TForm1.PopulateLocalizationPage;
var
  I, J: Integer;
  AResStringName, AResStringValue: string;
begin
  FPopulatingLocalizationPage := True;
  dxMemData2.DisableControls;
  try
    dxMemData2.Close;
    dxMemData2.Open;
    if cxLocalizer1.LanguageIndex <> -1 then
      for I := 0 to dxResourceStringsRepository.ProductsCount - 1 do
        for J := 0 to dxResourceStringsRepository.Products[I].ResStringsCount - 1 do
        begin
          dxMemData2.Append;
          dxMemData2ProductName.Value := dxStringToAnsiString(dxResourceStringsRepository.Products[I].Name);
          AResStringName := dxResourceStringsRepository.Products[I].Names[J];
          dxMemData2ResourceStringName.Value := AResStringName;
          dxMemData2OriginalValue.Value := dxResourceStringsRepository.Products[I].Values[J];
          cxLocalizer1.Languages[cxLocalizer1.LanguageIndex].FindTranslation(AResStringName, AResStringValue);
          dxMemData2ResourceStringValue.Value := AResStringValue;
          dxMemData2.Post;
        end;
  finally
    dxMemData2.EnableControls;
    FPopulatingLocalizationPage := False;
  end;
end;

procedure TForm1.PopulateLanguages;

  procedure PopulateItem(AParentItem: TdxBarSubItem);
  var
    I: Integer;
    AButton: TdxBarButton;
  begin
    AParentItem.ItemLinks.Clear;
    for I := -1 to cxLocalizer1.Languages.Count - 1 do
    begin
      AButton := dxBarManager1.AddButton;
      AButton.OnClick := SelectLanguage;
      AButton.Tag := I;
      AButton.ButtonStyle := bsChecked;
      AButton.GroupIndex := 1;
      AParentItem.ItemLinks.Add(AButton);
    end;
  end;

begin
  PopulateItem(Language1);
  UpdateLanguageItemNames;

  if cxLocalizer1.Languages.Count > 0 then
  begin
    cxLocalizer1.Locale := GetSystemDefaultLangID;
    TdxBarButton(Language1.ItemLinks[cxLocalizer1.LanguageIndex + 1].Item).Click;
  end;
end;

procedure TForm1.SelectLanguage(ASender: TObject);
begin
  cxLocalizer1.LanguageIndex := TdxBarButton(ASender).Tag;
  Caption := cxGetResourceString(@sAppName) + ' ' + cxLocalizer1.Language;
  PopulateLocalizationPage;
end;

procedure TForm1.UpdateLanguageItemNames;
var
  I: Integer;
begin
  Language1.ItemLinks[0].Item.Caption := ANoActiveLanguage;
  for I := 1 to cxLocalizer1.Languages.Count do
    Language1.ItemLinks[I].Item.Caption := cxLocalizer1.Languages[I - 1].Name;
end;

procedure TForm1.btnCheckSpellingClick(Sender: TObject);
begin
  dxSpellChecker1.CheckContainer(Self, True);
end;

procedure TForm1.actDownloadsExecute(Sender: TObject);
begin
  Browse(spDownloads);
end;

procedure TForm1.actDXOnTheWebExecute(Sender: TObject);
begin
  Browse(spMyDX);
end;

procedure TForm1.bbPrintClick(Sender: TObject);
begin
  dxComponentPrinter.Print(True, nil);
end;

procedure TForm1.bbReloadClick(Sender: TObject);
begin
  cxLocalizer1.LoadFromFile;
  PopulateLanguages;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.dxMemData2AfterPost(DataSet: TDataSet);
begin
  if not FPopulatingLocalizationPage then
  begin
    if dxMemData2ResourceStringValue.Value <> '' then
      cxLocalizer1.Languages[cxLocalizer1.LanguageIndex].SetTranslation(dxMemData2ResourceStringName.Value, dxMemData2ResourceStringValue.Value)
    else
      cxLocalizer1.Languages[cxLocalizer1.LanguageIndex].ResetValue(dxMemData2ResourceStringName.Value);
  end;
end;

procedure TForm1.dxMemData2CalcFields(DataSet: TDataSet);
begin
  dxMemData2Translated.Value := dxMemData2ResourceStringValue.Value <> '';
end;

procedure TForm1.bbRefreshClick(Sender: TObject);
begin
  cxLocalizer1.Translate;
end;

procedure TForm1.bbSaveClick(Sender: TObject);
begin
  Cursor := crHourGlass;
  try
    Application.ProcessMessages;
    cxLocalizer1.SaveToFile(cxLocalizer1.FileName {$IFDEF DELPHI12}, False{$ENDIF});
  finally
    Cursor := crDefault;
  end;
end;

initialization
  dxMegaDemoProductIndex := dxLocalizerIndex;
  TdxVisualRefinements.LightBorders := True;
end.
