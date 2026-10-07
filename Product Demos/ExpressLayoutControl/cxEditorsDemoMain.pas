unit cxEditorsDemoMain;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxLayoutControl, cxControls, Vcl.StdCtrls, cxLookAndFeels, Vcl.DBCtrls, Vcl.Mask,
  dxLayoutLookAndFeels, Vcl.ExtCtrls, Vcl.Menus, dxLayoutControlAdapters, Vcl.Grids,
  cxGraphics, cxCurrencyEdit, cxDBEdit, cxCalc, cxDropDownEdit, cxSpinEdit,
  cxTimeEdit, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxCalendar,
  cxCheckBox, cxHyperLinkEdit, cxMemo, cxImage, cxNavigator, cxDBNavigator,
  dxLayoutcxEditAdapters, Vcl.ImgList, Vcl.ActnList, cxLookAndFeelPainters,
  dxmdaset, Data.DB, dxBar, cxClasses, dxSkinsCore, dxBarSkinnedCustForm, dxSkinsForm,
  dxSkinsdxBarPainter, dxLayoutContainer, dxPSdxLCLnk, dxSkinscxPCPainter,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, cxDrawTextUtils,
  dxPSPrVwStd, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxDBEditorLnks, dxPSCore, dxPSContainerLnk,
  cxLabel, dxPSPDFExportCore, dxPSPDFExport, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPSTextLnk, cxImageList, dxPScxEditorLnks, dxCore;

type
  TfrmEditorsDemoMain = class(TdxSkinForm)
    lcMain: TdxLayoutControl;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxDBComboBox1: TcxDBComboBox;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBHyperLinkEdit1: TcxDBHyperLinkEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBHyperLinkEdit2: TcxDBHyperLinkEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBSpinEdit5: TcxDBSpinEdit;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBImage1: TcxDBImage;
    cxDBMemo1: TcxDBMemo;
    cxDBNavigator1: TcxDBNavigator;
    lcMainGroup_Root1: TdxLayoutGroup;
    lcMainGroup2: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    lcMainItem2: TdxLayoutItem;
    lcMainItem3: TdxLayoutItem;
    lcMainItem24: TdxLayoutItem;
    lcMainItem4: TdxLayoutItem;
    lcMainItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    lcMainGroup18: TdxLayoutGroup;
    lcMainGroup17: TdxLayoutGroup;
    lcMainItem8: TdxLayoutItem;
    lcMainItem6: TdxLayoutItem;
    lcMainItem7: TdxLayoutItem;
    lcMainSeparatorItem2: TdxLayoutSeparatorItem;
    lcMainItem9: TdxLayoutItem;
    dxLayoutSplitterItem1: TdxLayoutSplitterItem;
    lcMainGroup10: TdxLayoutGroup;
    lcMainItem14: TdxLayoutItem;
    lcMainItem15: TdxLayoutItem;
    lcMainItem16: TdxLayoutItem;
    lcMainSplitterItem2: TdxLayoutSplitterItem;
    lcMainGroup16: TdxLayoutGroup;
    lcMainItem12: TdxLayoutItem;
    lcMainItem10: TdxLayoutItem;
    lcMainItem13: TdxLayoutItem;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    lcMainItem17: TdxLayoutItem;
    lcMainGroup13: TdxLayoutGroup;
    lcMainItem18: TdxLayoutItem;
    lcMainItem19: TdxLayoutItem;
    lcMainItem20: TdxLayoutItem;
    lcMainGroup3: TdxLayoutGroup;
    lcMainGroup4: TdxLayoutGroup;
    lcMainItem21: TdxLayoutItem;
    lcMainItem22: TdxLayoutItem;
    lcMainItem23: TdxLayoutItem;
    lcMainGroup5: TdxLayoutGroup;
    lcMainGroup14: TdxLayoutGroup;
    lcMainItem25: TdxLayoutItem;
    lcMainItem26: TdxLayoutItem;
    lcMainItem27: TdxLayoutItem;
    lcMainGroup15: TdxLayoutGroup;
    lcMainItem31: TdxLayoutItem;
    lcMainItem30: TdxLayoutItem;
    lcMainGroup6: TdxLayoutGroup;
    lcMainItem32: TdxLayoutItem;
    lcMainItem33: TdxLayoutItem;
    lcMainItem34: TdxLayoutItem;
    lcMainItem11: TdxLayoutItem;
    lcMainItem28: TdxLayoutItem;
    lcMainItem29: TdxLayoutItem;
    cxImageList1: TcxImageList;
    llcfMain: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxMemData1: TdxMemData;
    dxMemData1PurchaseDate: TDateTimeField;
    dxMemData1Orders_Time: TDateTimeField;
    dxMemData1PaymentType: TStringField;
    dxMemData1PaymentAmount: TFloatField;
    dxMemData1Quantity: TIntegerField;
    dxMemData1FirstName: TStringField;
    dxMemData1LastName: TStringField;
    dxMemData1Company: TStringField;
    dxMemData1Prefix: TStringField;
    dxMemData1Title: TStringField;
    dxMemData1Address: TStringField;
    dxMemData1City: TStringField;
    dxMemData1State: TStringField;
    dxMemData1ZipCode: TStringField;
    dxMemData1Source: TStringField;
    dxMemData1Customer: TStringField;
    dxMemData1HomePhone: TStringField;
    dxMemData1FaxPhone: TStringField;
    dxMemData1Spouse: TStringField;
    dxMemData1Occupation: TStringField;
    dxMemData1Email: TStringField;
    dxMemData1Trademark: TStringField;
    dxMemData1Model: TStringField;
    dxMemData1HP: TSmallintField;
    dxMemData1Liter: TFloatField;
    dxMemData1Cyl: TSmallintField;
    dxMemData1TransmissSpeedCount: TSmallintField;
    dxMemData1TransmissAutomatic: TStringField;
    dxMemData1MPG_City: TSmallintField;
    dxMemData1MPG_Highway: TSmallintField;
    dxMemData1Category: TStringField;
    dxMemData1Cars_Description: TMemoField;
    dxMemData1Hyperlink: TStringField;
    dxMemData1Picture: TBlobField;
    dxMemData1Price: TFloatField;
    dxMemData1Customers_ID: TIntegerField;
    dxMemData1Orders_ID: TIntegerField;
    dxMemData1Cars_ID: TIntegerField;
    dsOrders: TDataSource;
    dxSkinController1: TdxSkinController;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    Exit1: TdxBarButton;
    File1: TdxBarSubItem;
    Customization1: TdxBarButton;
    Options1: TdxBarSubItem;
    miStyle: TdxBarSubItem;
    btnAbout: TdxBarButton;
    Help1: TdxBarSubItem;
    cpMain: TdxComponentPrinter;
    cpMainLink1: TdxLayoutControlReportLink;
    bbPrint: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    bbPrintPreview: TdxBarButton;
    dxBarButton4: TdxBarButton;
    bbPageSetup: TdxBarButton;
    lcMainGroup1: TdxLayoutGroup;
    imgImages: TcxImageList;
    bbElementSizing: TdxBarButton;
    dxLayoutGroup2: TdxLayoutGroup;
    lliDescription: TdxLayoutLabeledItem;
    procedure lcMainGroup1Button0Click(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Customization1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbPrintClick(Sender: TObject);
    procedure bbElementSizingClick(Sender: TObject);
    procedure ValidateTextEdit(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure ValidateOnEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lliDescriptionHyperlinkClick(Sender: TObject; AArgs: TdxHyperlinkClickEventArgs);
  private
    procedure DoPrint(ACommand: Integer);
  public
    { Public declarations }
  end;

var
  frmEditorsDemoMain: TfrmEditorsDemoMain;

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, dxDemoUtils, AboutDemoForm;

type
  TdxCustomLayoutItemCaptionOptionsAccess = class(TdxCustomLayoutItemCaptionOptions);

procedure TfrmEditorsDemoMain.DoPrint(ACommand: Integer);
begin
  ShowExpressPrintingMessage;
  cpMain.RebuildReport;
  case ACommand of
    0:
      cpMain.Print(False, nil);
    1:
      cpMain.PageSetup();
    2:
      cpMain.Preview();
  end;
end;

procedure TfrmEditorsDemoMain.lcMainGroup1Button0Click(Sender: TObject);
begin
  inherited;
  dxLayoutGroup1.Parent := nil;
end;

procedure TfrmEditorsDemoMain.lliDescriptionHyperlinkClick(Sender: TObject; AArgs: TdxHyperlinkClickEventArgs);
begin
  AArgs.Handled := not MessageQuestion('Open the ' + dxProductNames[dxMegaDemoProductIndex] + ' features page in a web browser?');
end;

procedure TfrmEditorsDemoMain.btnAboutClick(Sender: TObject);
begin
  ShowAboutDemoForm;
end;

procedure TfrmEditorsDemoMain.Exit1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmEditorsDemoMain.Customization1Click(Sender: TObject);
begin
  lcMain.Customization := True;
end;

procedure TfrmEditorsDemoMain.ValidateTextEdit(Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
var
  AEdit: TcxCustomTextEdit;
  AItem: TdxLayoutItem;
begin
  AEdit := Sender as TcxCustomTextEdit;
  AItem := lcMain.FindItem(AEdit);
  if AItem <> nil then
  begin
    if AEdit.Tag = 0 then
    begin
      AEdit.Tag := 1;
      AEdit.Properties.ErrorIcon.Assign(cxEditWarningIcon);
      AEdit.Properties.ValidationOptions := [evoShowErrorIcon,evoAllowLoseFocus];
    end;
    Error := VarToStr(DisplayValue) = '';
    if Error then
      AItem.Caption := '[B]' + AItem.Caption + '[/B]'
    else
      AItem.Caption := TdxCustomLayoutItemCaptionOptionsAccess(AItem.CaptionOptions).Caption.GetDisplayText;
  end;
end;

procedure TfrmEditorsDemoMain.ValidateOnEditValueChanged(Sender: TObject);
begin
  (Sender as TcxCustomEdit).ValidateEdit(False);
end;

procedure TfrmEditorsDemoMain.FormCreate(Sender: TObject);
begin
  dxMemData1.LoadFromBinaryFile(ExtractFilePath(Application.ExeName) + 'Data\OrdersCarsCustomers.dat');
  CreateSkinsMenuItems(dxBarManager1, miStyle, dxSkinController1);
  CreateHelpMenuItems(dxBarManager1, Help1);
  Help1.ItemLinks.Add(btnAbout);
  lliDescription.CaptionOptions.Text := StringReplace(lliDescription.CaptionOptions.Text, '%ProductName%',
    dxProductNames[dxMegaDemoProductIndex], []);
end;

procedure TfrmEditorsDemoMain.FormShow(Sender: TObject);
begin
  if lcMainGroup_Root1.ViewInfo <> nil then
    Height := lcMain.Top + lcMainGroup_Root1.ViewInfo.Bounds.Height + 34;
end;

procedure TfrmEditorsDemoMain.bbPrintClick(Sender: TObject);
begin
  DoPrint((Sender as TComponent).Tag);
end;

procedure TfrmEditorsDemoMain.bbElementSizingClick(Sender: TObject);
begin
  lcMain.OptionsItem.SizableHorz := bbElementSizing.Down;
  lcMain.OptionsItem.SizableVert := lcMain.OptionsItem.SizableHorz;
end;

initialization
  dxMegaDemoProductIndex := dxLayoutControlIndex;
  TdxVisualRefinements.LightBorders := True;
end.
