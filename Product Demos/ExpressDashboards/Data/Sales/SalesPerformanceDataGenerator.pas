unit SalesPerformanceDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.DateUtils,
  Data.DB, SalesDataGenerator;

type
  TTotalSalesItem = record
    State: string;
    Category: string;
    Product: string;
    RevenueYTD: Double;
    RevenueYTDTarget: Double;
    RevenueQTD: Double;
    RevenueQTDTarget: Double;
    UnitsSoldYTD: Integer;
    UnitsSoldYTDTarget: Integer;
  end;

type
  TMonthlySalesItem = record
    State: string;
    Product: string;
    Category: string;
    CurrentDate: TDateTime;
    Revenue: Double;
    RevenueTarget: Double;
    UnitsSold: Integer;
    UnitsSoldTarget: Integer;
  end;

  TKeyMetricsItem = record
    RevenueYTD: Double;
    RevenueYTDTarget: Double;
    ExpensesYTD: Double;
    ExpensesYTDTarget: Double;
    ProfitYTD: Double;
    ProfitYTDTarget: Double;
    AvgOrderSizeYTD: Double;
    AvgOrderSizeYTDTarget: Double;
    NewCustomersYTD: Integer;
    NewCustomersYTDTarget: Integer;
    MarketShare: Single;
  end;

  TSalesPerformanceDataGenerator = class(TSalesDataGenerator)
  private
    FMonthlySales: TList<TMonthlySalesItem>;
    FTotalSales: TList<TTotalSalesItem>;
    FItem: TKeyMetricsItem;
  protected
    procedure Generate(AContext: TContext); override;
    procedure EndGenerate; override;
    function GenerateJSONString: string; override;
  public
    constructor Create(ACategories, AProducts, ARegions: TDataSet); override;
    destructor Destroy; override;

    property MonthlySales: TList<TMonthlySalesItem> read FMonthlySales;
    property TotalSales: TList<TTotalSalesItem> read FTotalSales;
    property KeyMetrics: TKeyMetricsItem read FItem;
  end;

implementation

{ TSalesPerformanceDataGenerator }

uses
  System.JSON;

constructor TSalesPerformanceDataGenerator.Create(ACategories, AProducts, ARegions: TDataSet);
begin
  inherited Create(ACategories, AProducts, ARegions);
  FMonthlySales := TList<TMonthlySalesItem>.Create;
  FTotalSales := TList<TTotalSalesItem>.Create;
end;

destructor TSalesPerformanceDataGenerator.Destroy;
begin
  FMonthlySales.Free;
  FTotalSales.Free;
  inherited Destroy;
end;

procedure TSalesPerformanceDataGenerator.Generate(AContext: TContext);
var
  ATSItem: TTotalSalesItem;
  AMonth: Integer;
  AYear: Word;
  ADate: TDateTime;
  AUnitsSold, AUnitsSoldTarget: Integer;
  ARevenue, ARevenueTarget: Double;
  AMItem: TMonthlySalesItem;
begin
  ATSItem.State := AContext.State;
  ATSItem.Category := AContext.CategoryName;
  ATSItem.Product := AContext.ProductName;

  AYear := YearOf(Date) - 1;

  for AMonth := 1 to 12 do
  begin
    ADate := EncodeDate(AYear, AMonth, 1);
    AContext.UnitsSoldGenerator.Next;

    AUnitsSold := AContext.UnitsSoldGenerator.UnitsSold;
    AUnitsSoldTarget := AContext.UnitsSoldGenerator.UnitsSoldTarget;
    ARevenue := AUnitsSold * AContext.ListPrice;
    ARevenueTarget := AUnitsSoldTarget * AContext.ListPrice;

    AMItem.State := AContext.State;
    AMItem.Product := AContext.ProductName;
    AMItem.Category := AContext.CategoryName;
    AMItem.CurrentDate := ADate;
    AMItem.UnitsSold := AUnitsSold;
    AMItem.UnitsSoldTarget := AUnitsSoldTarget;
    AMItem.Revenue := ARevenue;
    AMItem.RevenueTarget := ARevenueTarget;
    FMonthlySales.Add(AMItem);

    ATSItem.RevenueYTD := ATSItem.RevenueYTD + ARevenue;
    ATSItem.RevenueYTDTarget := ATSItem.RevenueYTDTarget + ARevenueTarget;
    ATSItem.UnitsSoldYTD := ATSItem.UnitsSoldYTD + AUnitsSold;
    ATSItem.UnitsSoldYTDTarget := ATSItem.UnitsSoldYTDTarget + AUnitsSoldTarget;

    if (AMonth >= 10) and (AMonth <= 12) then
    begin
      ATSItem.RevenueQTD := ATSItem.RevenueQTD + ARevenue;
      ATSItem.RevenueQTDTarget := ATSItem.RevenueQTDTarget + ARevenueTarget;
    end;

    FItem.RevenueYTD := FItem.RevenueYTD + ARevenue;
    FItem.RevenueYTDTarget := FItem.RevenueYTDTarget + ARevenueTarget;
  end;

  FTotalSales.Add(ATSItem);
end;

function TSalesPerformanceDataGenerator.GenerateJSONString: string;
var
  ATSItem: TTotalSalesItem;
  AMSItem: TMonthlySalesItem;
  AKMItem: TKeyMetricsItem;
  AJSONArrayMonthly, AJSONArrayTotal: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  Result := '';
  ARoot := TJSONObject.Create;
  try
    AJSONArrayMonthly := TJSONArray.Create;
    AJSONArrayTotal := TJSONArray.Create;

    for AMSItem in Self.MonthlySales do
    begin
      AJSONObject := TJSONObject.Create;
      AJSONObject.AddPair('Category', AMSItem.Category);
      AJSONObject.AddPair('CurrentDate', DateToISO8601(AMSItem.CurrentDate));
      AJSONObject.AddPair('Product', AMSItem.Product);
      AJSONObject.AddPair('Revenue', TJSONNumber.Create(AMSItem.Revenue));
      AJSONObject.AddPair('RevenueTarget', TJSONNumber.Create(AMSItem.RevenueTarget));
      AJSONObject.AddPair('State', AMSItem.State);
      AJSONObject.AddPair('UnitsSold', TJSONNumber.Create(AMSItem.UnitsSold));
      AJSONObject.AddPair('UnitsSoldTarget', TJSONNumber.Create(AMSItem.UnitsSoldTarget));
      AJSONArrayMonthly.AddElement(AJSONObject);
    end;
    // --- Total Sales ---
    for ATSItem in Self.TotalSales do
    begin
      AJSONObject := TJSONObject.Create;
      AJSONObject.AddPair('Category', ATSItem.Category);
      AJSONObject.AddPair('Product', ATSItem.Product);
      AJSONObject.AddPair('RevenueQTD', TJSONNumber.Create(ATSItem.RevenueQTD));
      AJSONObject.AddPair('RevenueQTDTarget', TJSONNumber.Create(ATSItem.RevenueQTDTarget));
      AJSONObject.AddPair('RevenueYTD', TJSONNumber.Create(ATSItem.RevenueYTD));
      AJSONObject.AddPair('RevenueYTDTarget', TJSONNumber.Create(ATSItem.RevenueYTDTarget));
      AJSONObject.AddPair('State', ATSItem.State);
      AJSONObject.AddPair('UnitsSoldYTD', TJSONNumber.Create(ATSItem.UnitsSoldYTD));
      AJSONObject.AddPair('UnitsSoldYTDTarget', TJSONNumber.Create(ATSItem.UnitsSoldYTDTarget));
      AJSONArrayTotal.AddElement(AJSONObject);
    end;
// --- Key Metrics ---
    AKMItem := Self.KeyMetrics;
    AJSONObject := TJSONObject.Create;
    AJSONObject.AddPair('AvgOrderSizeYTD', TJSONNumber.Create(AKMItem.AvgOrderSizeYTD));
    AJSONObject.AddPair('AvgOrderSizeYTDTarget', TJSONNumber.Create(Self.KeyMetrics.AvgOrderSizeYTDTarget));
    AJSONObject.AddPair('ExpensesYTD', TJSONNumber.Create(Self.KeyMetrics.ExpensesYTD));
    AJSONObject.AddPair('ExpensesYTDTarget', TJSONNumber.Create(Self.KeyMetrics.ExpensesYTDTarget));
    AJSONObject.AddPair('MarketShare', TJSONNumber.Create(Self.KeyMetrics.MarketShare));
    AJSONObject.AddPair('NewCustomersYTD', TJSONNumber.Create(Self.KeyMetrics.NewCustomersYTD));
    AJSONObject.AddPair('NewCustomersYTDTarget', TJSONNumber.Create(Self.KeyMetrics.NewCustomersYTDTarget));
    AJSONObject.AddPair('ProfitYTD', TJSONNumber.Create(Self.KeyMetrics.ProfitYTD));
    AJSONObject.AddPair('ProfitYTDTarget', TJSONNumber.Create(Self.KeyMetrics.ProfitYTDTarget));
    AJSONObject.AddPair('RevenueYTD', TJSONNumber.Create(Self.KeyMetrics.RevenueYTD));
    AJSONObject.AddPair('RevenueYTDTarget', TJSONNumber.Create(Self.KeyMetrics.RevenueYTDTarget));
    // --- Root JSON ---
    ARoot.AddPair('MonthlySales', AJSONArrayMonthly);
    ARoot.AddPair('TotalSales', AJSONArrayTotal);
    ARoot.AddPair('KeyMetrics', AJSONObject);
    AJSONString := ARoot.Format(2);
    Result := AJSONString;
  finally
    ARoot.Free;
  end;
end;

procedure TSalesPerformanceDataGenerator.EndGenerate;
begin
  inherited EndGenerate;
  FItem.ExpensesYTD := FItem.RevenueYTDTarget * 0.2;
  FItem.ExpensesYTDTarget := FItem.RevenueYTDTarget * 0.1999;
  FItem.ProfitYTD := FItem.RevenueYTD - FItem.ExpensesYTD;
  FItem.ProfitYTDTarget := FItem.RevenueYTDTarget - FItem.ExpensesYTDTarget;
  FItem.AvgOrderSizeYTD := FItem.RevenueYTD * 0.006;
  FItem.AvgOrderSizeYTDTarget := FItem.RevenueYTDTarget * 0.0055;
  FItem.NewCustomersYTD := Round(FItem.RevenueYTD * 0.0013);
  FItem.NewCustomersYTDTarget := Round(FItem.RevenueYTDTarget * 0.00125);
  FItem.MarketShare := 0.23;
end;

end.
