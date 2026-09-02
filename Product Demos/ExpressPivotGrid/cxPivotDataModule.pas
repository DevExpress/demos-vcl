unit cxPivotDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.ImgList, Vcl.Controls, cxStyles, cxClasses, dxmdaset, Datasnap.DBClient, Datasnap.Provider, cxImageList,
  cxGraphics;

type
  TdmPivot = class(TDataModule)
    dsProductReports: TDataSource;
    dsCustomerReports: TDataSource;
    dsOrderReports: TDataSource;
    mdCustomerReports: TdxMemData;
    mdProductReports: TdxMemData;
    mdOrderReports: TdxMemData;
    dsSalesPerson: TDataSource;
    mdSalesPerson: TdxMemData;
    imgCategories: TcxImageList;
    imgHeaders: TcxImageList;
    cxStyleRepository1: TcxStyleRepository;
    stSelectedField: TcxStyle;
    stField: TcxStyle;
    stBlueFont: TcxStyle;
    stRedFont: TcxStyle;
    stBoldFont: TcxStyle;
    stGreenFont: TcxStyle;
    stBKImage: TcxStyle;
    stDefaultFontStyle: TcxStyle;
    dsSalesReports: TDataSource;
    mdSalesReports: TdxMemData;
    mdSalesPersonOrderID: TAutoIncField;
    mdSalesPersonCountry: TWideStringField;
    mdSalesPersonFirstName: TWideStringField;
    mdSalesPersonLastName: TWideStringField;
    mdSalesPersonProductName: TWideStringField;
    mdSalesPersonCategoryName: TWideStringField;
    mdSalesPersonOrderDate: TDateTimeField;
    mdSalesPersonUnitPrice: TBCDField;
    mdSalesPersonQuantity: TSmallintField;
    mdSalesPersonDiscount: TFloatField;
    mdSalesPersonExtendedPrice: TBCDField;
    mdSalesPersonSalesPerson: TWideStringField;
    mdSalesReportsOrderID: TAutoIncField;
    mdSalesReportsCountry: TWideStringField;
    mdSalesReportsFirstName: TWideStringField;
    mdSalesReportsLastName: TWideStringField;
    mdSalesReportsProductName: TWideStringField;
    mdSalesReportsCategoryName: TWideStringField;
    mdSalesReportsOrderDate: TDateTimeField;
    mdSalesReportsUnitPrice: TBCDField;
    mdSalesReportsQuantity: TSmallintField;
    mdSalesReportsDiscount: TFloatField;
    mdSalesReportsExtendedPrice: TBCDField;
    mdSalesReportsSalesPerson: TWideStringField;
    mdOrderReportsOrderID: TIntegerField;
    mdOrderReportsProductID: TIntegerField;
    mdOrderReportsProductName: TWideStringField;
    mdOrderReportsUnitPrice: TBCDField;
    mdOrderReportsQuantity: TSmallintField;
    mdOrderReportsDiscount: TFloatField;
    mdOrderReportsExtendedPrice: TBCDField;
    mdCustomerReportsProductName: TWideStringField;
    mdCustomerReportsCompanyName: TWideStringField;
    mdCustomerReportsOrderDate: TDateTimeField;
    mdCustomerReportsProductAmount: TBCDField;
    mdProductReportsCategoryName: TWideStringField;
    mdProductReportsProductName: TWideStringField;
    mdProductReportsProductSales: TBCDField;
    mdProductReportsShippedDate: TDateTimeField;
  private
    procedure ActualizeDates;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  dmPivot: TdmPivot;

implementation

{$R *.dfm}

uses
  Winapi.Windows, System.Win.Registry, dxCore, dxDemoUtils;

constructor TdmPivot.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  mdCustomerReports.LoadFromBinaryFile('Data\CustomerReports.dat');
  mdProductReports.LoadFromBinaryFile('Data\ProductReports.dat');
  mdOrderReports.LoadFromBinaryFile('Data\OrderReports.dat');
  mdSalesPerson.LoadFromBinaryFile('Data\SalesPerson.dat');
  ActualizeDates;
  mdSalesReports.LoadFromDataSet(mdSalesPerson);
end;

procedure TdmPivot.ActualizeDates;
begin
  ActualizeDateTimesFields(mdCustomerReports, ['ORDERDATE', 30]);
  ActualizeDateTimesFields(mdProductReports, ['SHIPPEDDATE', 30]);
  ActualizeDateTimesFields(mdSalesPerson, ['ORDERDATE', 30]);
end;

end.
