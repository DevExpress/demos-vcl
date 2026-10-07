unit SalesOverviewDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.DateUtils,
  Data.DB, SalesDataGenerator;

type
  TSalesOverviewDataGenerator = class(TSalesDataGenerator)
  public
    type
      TDataItem = class
      public
        State: string;
        Category: string;
        CurrentDate: TDateTime;
        Sales: Currency;
        SalesTarget: Currency;
      end;
  private
    FDat: TObjectDictionary<string, TDataItem>;
    FStartDate: TDateTime;
    FEndDate: TDateTime;
  protected
    function GenerateJSONString: string; override;
  public
    constructor Create(ACategories, AProducts, ARegions: TDataSet); override;
    destructor Destroy; override;

    procedure Generate(AContext: TContext); override;

    function Data: TObjectDictionary<string, TDataItem>;
  end;

implementation

uses
  System.JSON;

{ TSalesOverviewDataGenerator }

constructor TSalesOverviewDataGenerator.Create(ACategories, AProducts, ARegions: TDataSet);
begin
  inherited Create(ACategories, AProducts, ARegions);
  FDat := TObjectDictionary<string, TDataItem>.Create([doOwnsValues]);
  FEndDate := Date;
  FStartDate := IncYear(FEndDate, -3);
end;

destructor TSalesOverviewDataGenerator.Destroy;
begin
  FDat.Free;
  inherited Destroy;
end;

function TSalesOverviewDataGenerator.Data: TObjectDictionary<string, TDataItem>;
begin
  Result := FDat;
end;

procedure TSalesOverviewDataGenerator.Generate(AContext: TContext);

  function MakeKey(const AState, ACategory: string; const ADate: TDateTime): string;
  begin
    Result := AState + '|' + ACategory + '|' + DateToStr(ADate);
  end;

var
  ADate: TDateTime;
  ASales, ASalesTarget: Currency;
  AHashKey: string;
  ADataItem: TDataItem;
begin
  ADate := FStartDate;
  while ADate < FEndDate do
  begin
    if DayOfTheWeek(ADate) = 1 then // Monday
    begin
      AContext.UnitsSoldGenerator.Next;
      ASales := AContext.UnitsSoldGenerator.UnitsSold * AContext.ListPrice;
      ASalesTarget := AContext.UnitsSoldGenerator.UnitsSoldTarget * AContext.ListPrice;


      AHashKey := MakeKey(AContext.State, AContext.CategoryName, ADate);
      if not (FDat.TryGetValue(AHashKey, ADataItem)) then
      begin
        ADataItem := TDataItem.Create;
        ADataItem.CurrentDate := ADate;
        ADataItem.Category := AContext.CategoryName;
        ADataItem.State := AContext.State;
        FDat.Add(AHashKey, ADataItem);
      end;
      ADataItem.Sales := ADataItem.Sales + ASales;
      ADataItem.SalesTarget := ADataItem.SalesTarget + ASalesTarget;
    end;
    ADate := IncDay(ADate, 1);
  end;
end;

function TSalesOverviewDataGenerator.GenerateJSONString: string;
var
  AItem: TSalesOverviewDataGenerator.TDataItem;
  AJSONArray: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  Result := '';
  ARoot := TJSONObject.Create;
  try
    AJSONArray := TJSONArray.Create;
    for AItem in Self.Data.Values do
    begin
      AJSONObject := TJSONObject.Create;
      AJSONObject.AddPair('State', AItem.State);
      AJSONObject.AddPair('Category', AItem.Category);
      AJSONObject.AddPair('CurrentDate', DateToISO8601(AItem.CurrentDate));
      AJSONObject.AddPair('Sales', TJSONNumber.Create(AItem.Sales));
      AJSONObject.AddPair('SalesTarget', TJSONNumber.Create(AItem.SalesTarget));
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
