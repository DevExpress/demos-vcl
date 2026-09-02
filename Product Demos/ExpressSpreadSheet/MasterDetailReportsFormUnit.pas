unit MasterDetailReportsFormUnit;

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
  TfrmMasterDetailReports = class(TdxSpreadSheetReportBaseForm)
    dsMaster: TDataSource;
    mdsMaster: TdxMemData;
    mdsMasterSupplierID: TAutoIncField;
    mdsMasterCompanyName: TWideStringField;
    mdsMasterContactName: TWideStringField;
    mdsMasterContactTitle: TWideStringField;
    mdsMasterAddress: TWideStringField;
    mdsMasterCity: TWideStringField;
    mdsMasterRegion: TWideStringField;
    mdsMasterPostalCode: TWideStringField;
    mdsMasterCountry: TWideStringField;
    mdsMasterPhone: TWideStringField;
    mdsMasterFax: TWideStringField;
    mdsMasterHomePage: TWideMemoField;
    dsDetailLevel0: TDataSource;
    mdsDetailLevel0: TdxMemData;
    mdsDetailLevel0ProductID: TAutoIncField;
    mdsDetailLevel0ProductName: TWideStringField;
    mdsDetailLevel0SupplierID: TIntegerField;
    mdsDetailLevel0CategoryID: TIntegerField;
    mdsDetailLevel0QuantityPerUnit: TWideStringField;
    mdsDetailLevel0UnitPrice: TBCDField;
    mdsDetailLevel0UnitsInStock: TSmallintField;
    mdsDetailLevel0UnitsOnOrder: TSmallintField;
    mdsDetailLevel0ReorderLevel: TSmallintField;
    mdsDetailLevel0Discontinued: TBooleanField;
    mdsDetailLevel0EAN13: TWideStringField;
    dsDetailLevel1: TDataSource;
    mdsDetailLevel1: TdxMemData;
    mdsDetailLevel1OrderID: TIntegerField;
    mdsDetailLevel1ProductID: TIntegerField;
    mdsDetailLevel1UnitPrice: TBCDField;
    mdsDetailLevel1Quantity: TSmallintField;
    mdsDetailLevel1Discount: TFloatField;
    mdsDetailLevel1SubTotal: TCurrencyField;
    ReportDesignerDetail1: TdxSpreadSheetReportDetail;
    ReportDesignerDetail2: TdxSpreadSheetReportDetail;
    procedure mdsDetailLevel1CalcFields(DataSet: TDataSet);
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

{ TdxSpreadSheetReportBaseForm3 }

function TfrmMasterDetailReports.GetCaption: string;
begin
  Result := 'Master-Detail Reports';
end;

function TfrmMasterDetailReports.GetDescription: string;
begin
  Result := 'This demo shows how to create a spreadsheet-based multi-level report using data from datasets in a ' +
  'master-detail relationship.';
end;

class function TfrmMasterDetailReports.GetID: Integer;
begin
  Result := 16;
end;

procedure TfrmMasterDetailReports.InitializeBook;
begin
  ReportDesigner.LoadFromFile(DemoFolder + 'Data\MasterDetailTemplate.xlsx');
  ReportDesignerDetail1.Collection := ReportDesigner.DataBinding.Details;
  ReportDesignerDetail2.Collection := ReportDesignerDetail1.Details;
  LoadDataset(mdsMaster, 'Data\Suppliers.mds');
  LoadDataset(mdsDetailLevel0, 'Data\Products.mds');
  LoadDataset(mdsDetailLevel1, 'Data\OrderReports.mds');

  LoadFilter(ReportDesigner.DataBinding.DataController, 'Data\Employees.flt');
  LoadFilter(ReportDesignerDetail1.DataController, 'Data\DetailLevel1.flt');
  LoadFilter(ReportDesignerDetail2.DataController, 'Data\DetailLevel2.flt');
end;

procedure TfrmMasterDetailReports.mdsDetailLevel1CalcFields(DataSet: TDataSet);
begin
  mdsDetailLevel1.FieldByName('SubTotal').Value :=
    mdsDetailLevel1.FieldByName('Quantity').Value * mdsDetailLevel1.FieldByName('UnitPrice').Value;
end;

procedure TfrmMasterDetailReports.NewReportSheetHandler(
  Sender: TdxSpreadSheetReportDesigner; ASheet: TdxSpreadSheetTableView);
var
  AField: TdxSpreadSheetReportDesignerDataField;
  ADataController: TdxSpreadSheetReportDataController;
begin
  ADataController := TdxSpreadSheetReportDesignerAccess(Sender).Builder.ActiveDataController;
  AField := ADataController.GetItemByFieldName('CompanyName') as TdxSpreadSheetReportDesignerDataField;
  if AField <> nil then
    ASheet.Caption := ADataController.Values[ADataController.FocusedRecordIndex, AField.Index];
end;

initialization
  TfrmMasterDetailReports.Register;

end.
