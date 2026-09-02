unit RevenueAnalysisDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Generics.Collections, System.Classes, System.DateUtils, Data.DB,
  SalesDataGenerator;

type
  TRevenueAnalysisDataGenerator = class(TSalesDataGenerator)
  public
    type
      TDataItem = record
        Year: Integer;
        State: string;
        Category: string;
        Product: string;
        Revenue: Double;
        UnitsSold: Integer;
      end;

  private
    FData: TList<TDataItem>;
  protected
    procedure Generate(AContext: TContext); override;
    function GenerateJSONString: string; override;
  public
    constructor Create(ACategories, AProducts,
      ARegions: TDataSet); reintroduce;
    destructor Destroy; override;
    property Data: TList<TDataItem> read FData;
  end;

implementation

uses
  System.JSON;

const YearsCount = 3;

{ TRevenueAnalysisDataGenerator }

constructor TRevenueAnalysisDataGenerator.Create(ACategories, AProducts,
  ARegions: TDataSet);
begin
  inherited Create(ACategories, AProducts, ARegions);
  FData := TList<TDataItem>.Create;
end;

destructor TRevenueAnalysisDataGenerator.Destroy;
begin
  FData.Free;
  inherited Destroy;
end;

procedure TRevenueAnalysisDataGenerator.Generate(AContext: TContext);
var
  I, AStartYear, AYear, AUnitsSold: Integer;
  Revenue: Double;
  AItem: TDataItem;
begin
  AStartYear := YearOf(Date) - YearsCount;
  for I := 0 to YearsCount - 1 do
  begin
    AYear := AStartYear + I;
    AContext.UnitsSoldGenerator.Next;
    AUnitsSold := AContext.UnitsSoldGenerator.UnitsSold * 12;
    Revenue := AUnitsSold * AContext.ListPrice;

    AItem.State := AContext.State;
    AItem.Category := AContext.CategoryName;
    AItem.Product := AContext.ProductName;
    AItem.Year := AYear;
    AItem.Revenue := Revenue;
    AItem.UnitsSold := AUnitsSold;

    FData.Add(AItem);
  end;
end;

function TRevenueAnalysisDataGenerator.GenerateJSONString: string;
var
  AItem: TRevenueAnalysisDataGenerator.TDataItem;
  AJSONArray: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  ARoot := TJSONObject.Create;
  try
    AJSONArray := TJSONArray.Create;
    try
      for AItem in Self.Data do
      begin
        AJSONObject := TJSONObject.Create;
        AJSONObject.AddPair('Category', AItem.Category);
        AJSONObject.AddPair('Product', AItem.Product);
        AJSONObject.AddPair('Revenue', TJSONNumber.Create(AItem.Revenue));
        AJSONObject.AddPair('State', AItem.State);
        AJSONObject.AddPair('UnitsSold', TJSONNumber.Create(AItem.UnitsSold));
        AJSONObject.AddPair('Year', TJSONNumber.Create(AItem.Year));
        AJSONArray.AddElement(AJSONObject);
      end;
      ARoot.AddPair('Data', AJSONArray);
      AJSONString := ARoot.Format(2);
      Result := AJSONString;
    except
      raise;
    end;
  finally
    ARoot.Free; // free the entire array
  end;
end;


end.

