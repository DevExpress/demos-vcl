unit InvoiceReportFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, ReportDesignerBaseUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheetCore, dxSpreadSheetReportDesigner, Vcl.ExtCtrls, dxLayoutControl, Data.DB,
  dxmdaset, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetClasses, dxSpreadSheetContainers, dxSpreadSheetFormulas,
  dxSpreadSheetHyperlinks, dxSpreadSheetFunctions, dxSpreadSheetStyles, dxSpreadSheetGraphics, dxSpreadSheetPrinting,
  dxSpreadSheetTypes, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, cxSplitter,
  dxSpreadSheetFormulaBar;

type
  TfrmInvoiceReport = class(TdxSpreadSheetReportBaseForm)
    mdsInvoice: TdxMemData;
    mdsInvoiceShipName: TWideStringField;
    mdsInvoiceShipAddress: TWideStringField;
    mdsInvoiceShipCity: TWideStringField;
    mdsInvoiceShipRegion: TWideStringField;
    mdsInvoiceShipPostalCode: TWideStringField;
    mdsInvoiceShipCountry: TWideStringField;
    mdsInvoiceCustomerID: TWideStringField;
    mdsInvoiceCustomers_CompanyName: TWideStringField;
    mdsInvoiceAddress: TWideStringField;
    mdsInvoiceCity: TWideStringField;
    mdsInvoiceRegion: TWideStringField;
    mdsInvoicePostalCode: TWideStringField;
    mdsInvoiceCountry: TWideStringField;
    mdsInvoiceSalesperson: TWideStringField;
    mdsInvoiceOrderID: TAutoIncField;
    mdsInvoiceOrderDate: TDateTimeField;
    mdsInvoiceRequiredDate: TDateTimeField;
    mdsInvoiceShippedDate: TDateTimeField;
    mdsInvoiceShippers_CompanyName: TWideStringField;
    mdsInvoiceProductID: TIntegerField;
    mdsInvoiceProductName: TWideStringField;
    mdsInvoiceUnitPrice: TBCDField;
    mdsInvoiceQuantity: TSmallintField;
    mdsInvoiceDiscount: TFloatField;
    mdsInvoiceExtendedPrice: TBCDField;
    mdsInvoiceFreight: TBCDField;
    dsInvoice: TDataSource;
  private
    { Private declarations }
  protected
    procedure NewReportSheetHandler(Sender: TdxSpreadSheetReportDesigner; ASheet: TdxSpreadSheetTableView); override;
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
  end;

implementation

{$R *.dfm}

uses
  dxCustomSpreadSheetBaseFormUnit;

type
  TdxSpreadSheetReportDesignerAccess = class(TdxSpreadSheetReportDesigner);

{ TfrmInvoiceReport }

function TfrmInvoiceReport.GetCaption: string;
begin
  Result := 'Invoice Report';
end;

function TfrmInvoiceReport.GetDescription: string;
begin
  Result := 'This demo shows how to create a spreadsheet-based invoice report using data from a bound dataset.';
end;

class function TfrmInvoiceReport.GetID: Integer;
begin
  Result := 17;
end;

procedure TfrmInvoiceReport.InitializeBook;
begin
  ReportDesigner.LoadFromFile(DemoFolder + 'Data\InvoiceTemplate.xlsx');
  LoadDataset(mdsInvoice, 'Data\Invoices.mds');
  LoadFilter(ReportDesigner.DataBinding.DataController, 'Data\Invoices.flt');
end;

procedure TfrmInvoiceReport.NewReportSheetHandler(
  Sender: TdxSpreadSheetReportDesigner; ASheet: TdxSpreadSheetTableView);
var
  ID: Integer;
  AField: TdxSpreadSheetReportDesignerDataField;
  ADataController: TdxSpreadSheetReportDataController;
begin
  ID := ASheet.Index + 1;
  ADataController := TdxSpreadSheetReportDesignerAccess(Sender).Builder.ActiveDataController;
  AField := ADataController.GetItemByFieldName('OrderID') as TdxSpreadSheetReportDesignerDataField;
  if AField <> nil then
    ID := ADataController.Values[ADataController.FocusedRecordIndex, AField.Index];
  ASheet.Caption := Format('Order ID %d', [ID]);
end;

initialization
  TfrmInvoiceReport.Register;

end.
