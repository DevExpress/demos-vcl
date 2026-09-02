unit uSalesDataModule;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset;

type
  TSalesDataModule = class(TDataModule)
    mdRegions: TdxMemData;
    mdRegionsRegionID: TIntegerField;
    mdRegionsRegion: TStringField;
    mdRegionsNumberEmployees: TIntegerField;
    mdCategories: TdxMemData;
    mdCategoriesCategoryID: TIntegerField;
    mdCategoriesCategoryName: TStringField;
    mdProducts: TdxMemData;
    mdProductsProductID: TIntegerField;
    mdProductsListPrice: TCurrencyField;
    mdProductsName: TStringField;
    mdProductsCategoryID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure GenerateSalesOverviewData;
    procedure GenerateSalesDetailsData;
    procedure GenerateSalesPerformanceData;
    procedure GenerateRevenueAnalysisData;
  public
  end;

var
  SalesDataModule: TSalesDataModule;

implementation

{$R *.dfm}
uses
  System.JSON, System.DateUtils, SalesOverviewDataGenerator, SalesDetailsDataGenerator,
  SalesPerformanceDataGenerator, RevenueAnalysisDataGenerator,
  uDemoDataModule, Vcl.Forms;

procedure TSalesDataModule.DataModuleCreate(Sender: TObject);
begin
  GenerateSalesOverviewData;
  GenerateSalesDetailsData;
  GenerateSalesPerformanceData;
  GenerateRevenueAnalysisData;
end;

procedure TSalesDataModule.GenerateRevenueAnalysisData;
var
  ADataGenerator: TRevenueAnalysisDataGenerator;
begin
  ADataGenerator := TRevenueAnalysisDataGenerator.Create(mdCategories, mdProducts, mdRegions);
  ADataGenerator.GenerateAll;
  DemoDataModule.RevenueAnalysisConnection.SetJSONValue(ADataGenerator.JSONString);

  ADataGenerator.Free;
end;

procedure TSalesDataModule.GenerateSalesDetailsData;
var
  ADataGenerator: TSalesDetailsDataGenerator;
begin
  ADataGenerator := TSalesDetailsDataGenerator.Create(mdCategories, mdProducts, mdRegions);
  ADataGenerator.GenerateAll;
  DemoDataModule.SalesDetailsConnection.SetJSONValue(ADataGenerator.JSONString);
  ADataGenerator.Free;
end;

procedure TSalesDataModule.GenerateSalesOverviewData;
var
  ADataGenerator: TSalesOverviewDataGenerator;
begin
  ADataGenerator := TSalesOverviewDataGenerator.Create(mdCategories, mdProducts, mdRegions);
  ADataGenerator.GenerateAll;
  DemoDataModule.SalesConnection.SetJSONValue(ADataGenerator.JSONString);
  ADataGenerator.Free;
end;

procedure TSalesDataModule.GenerateSalesPerformanceData;
var
  ADataGenerator: TSalesPerformanceDataGenerator;
begin
  ADataGenerator := TSalesPerformanceDataGenerator.Create(mdCategories, mdProducts, mdRegions);
  ADataGenerator.GenerateAll;
  DemoDataModule.TotalSalesConnection.SetJSONValue(ADataGenerator.JSONString);
  ADataGenerator.Free;
end;

end.
