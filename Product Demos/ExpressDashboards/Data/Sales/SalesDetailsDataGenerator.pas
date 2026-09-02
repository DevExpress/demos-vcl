unit SalesDetailsDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Generics.Collections, System.Math, Data.DB,
  SalesDataGenerator, uDataHelpers;

type
  TSalesDetailsDataGenerator = class(TSalesDataGenerator)
  public
    type
      TDataItem = record
        State: string;
        Category: string;
        Product: string;
        CurrentDate: TDateTime;
        Revenue: Currency;
        RevenueTarget: Currency;
        UnitsSold: Integer;
        UnitsSoldTarget: Integer;
        Returns: Integer;
        ReturnsTarget: Integer;
        UnitsReceived: Integer;
      end;

  private
    FData: TList<TDataItem>;
  protected
    procedure Generate(AContext: TContext); override;
    function GenerateJSONString: string; override;
  public
    constructor Create(ACategories, AProducts, ARegions: TDataSet); override;
    destructor Destroy; override;
    function Data: TEnumerable<TDataItem>;
  end;

implementation

uses
  System.DateUtils, System.JSON;

{ TSalesDetailsDataGenerator }

constructor TSalesDetailsDataGenerator.Create(ACategories, AProducts, ARegions: TDataSet);
begin
  inherited Create(ACategories, AProducts, ARegions);
  FData := TList<TDataItem>.Create;
end;

destructor TSalesDetailsDataGenerator.Destroy;
begin
  FData.Free;
  inherited Destroy;
end;

function TSalesDetailsDataGenerator.Data: TEnumerable<TDataItem>;
begin
  Result := FData;
end;

procedure TSalesDetailsDataGenerator.Generate(AContext: TContext);
var
  Year, Month: Integer;
  AUnitsSold, AUnitsSoldTarget, AReturns, AReturnsTarget, AUnitsReceived: Integer;
  ARevenue, ARevenueTarget: Currency;
  ADate: TDateTime;
  AItem: TDataItem;
begin
  Year := YearOf(Date) - 1;
  for Month := 1 to 12 do
  begin
    ADate := EncodeDate(Year, Month, 1);
    AContext.UnitsSoldGenerator.Next;
    AUnitsSold := AContext.UnitsSoldGenerator.UnitsSold;
    AUnitsSoldTarget := AContext.UnitsSoldGenerator.UnitsSoldTarget;
    AReturns := Round(AUnitsSold * Random * 0.5);
    AReturnsTarget := Round(AUnitsSoldTarget * 0.25);
    AUnitsReceived := AUnitsSold + RandomRange(-2, 3);
    ARevenue := (AUnitsSold - AReturns) * AContext.ListPrice;
    ARevenueTarget := (AUnitsSoldTarget - AReturnsTarget) * AContext.ListPrice;

    AItem.State := AContext.State;
    AItem.Category := AContext.CategoryName;
    AItem.Product := AContext.ProductName;
    AItem.CurrentDate := ADate;
    AItem.UnitsSold := AUnitsSold;
    AItem.UnitsSoldTarget := AUnitsSoldTarget;
    AItem.Returns := AReturns;
    AItem.ReturnsTarget := AReturnsTarget;
    AItem.Revenue := ARevenue;
    AItem.RevenueTarget := ARevenueTarget;
    AItem.UnitsReceived := AUnitsReceived;

    FData.Add(AItem);
  end;
end;

function TSalesDetailsDataGenerator.GenerateJSONString: string;
var
  Item: TSalesDetailsDataGenerator.TDataItem;
  AJSONArray: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  Result := '';
  ARoot := TJSONObject.Create;
  try
    AJSONArray := TJSONArray.Create;

    for Item in Self.Data do
    begin
      AJSONObject := TJSONObject.Create;
      AJSONObject.AddPair('State', Item.State);
      AJSONObject.AddPair('Category', Item.Category);
      AJSONObject.AddPair('Product', Item.Product);
      AJSONObject.AddPair('CurrentDate', DateToISO8601(Item.CurrentDate));
      AJSONObject.AddPair('Revenue', TJSONNumber.Create(Item.Revenue));
      AJSONObject.AddPair('RevenueTarget', TJSONNumber.Create(Item.RevenueTarget));
      AJSONObject.AddPair('UnitsSold', TJSONNumber.Create(Item.UnitsSold));
      AJSONObject.AddPair('UnitsSoldTarget', TJSONNumber.Create(Item.UnitsSoldTarget));
      AJSONObject.AddPair('Returns', TJSONNumber.Create(Item.Returns));
      AJSONObject.AddPair('ReturnsTarget', TJSONNumber.Create(Item.ReturnsTarget));
      AJSONObject.AddPair('UnitsReceived', TJSONNumber.Create(Item.UnitsReceived));
      AJSONArray.AddElement(AJSONObject);
    end;

    ARoot.AddPair('Sales', AJSONArray);
    AJSONString := ARoot.Format(2);
    Result := AJSONString;
  finally
    ARoot.Free;
  end;
end;

end.
