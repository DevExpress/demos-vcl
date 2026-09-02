unit SalesDataGenerator;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Math, Data.DB, uDataHelpers;

type

  TContext = class
  private
    FState: string;
    FProductName: string;
    FCategoryName: string;
    FListPrice: Currency;
    FUnitsSoldGenerator: TUnitsSoldRandomGenerator;
  public
    constructor Create(const AState, AProductName, ACategoryName: string;
        AListPrice: Currency; AUnitsSoldGenerator: TUnitsSoldRandomGenerator);
    property State: string read FState;
    property ProductName: string read FProductName;
    property CategoryName: string read FCategoryName;
    property ListPrice: Currency read FListPrice;
    property UnitsSoldGenerator: TUnitsSoldRandomGenerator read FUnitsSoldGenerator;
  end;

  TSalesDataGenerator = class(TObject)
  private
    FCategories: TDataSet;
    FProducts: TDataSet;
    FRegions: TDataSet;
    FProdClasses: TProductClasses;
    FRegClasses: TRegionClasses;
    FJSONString: string;
    function GetJSONString: string;
  protected
    function GetState(ARegion: TDataSet): string; inline;
    function GetProductName(AProduct: TDataSet): string; inline;
    function GetListPrice(AProduct: TDataSet): Currency; inline;
    function GetRegionWeight(ARegion: TDataSet): Double; inline;
    function GetProductClass(AProduct: TDataSet): TProductClass; inline;
    function GetCategoryName(AProduct: TDataSet): string;
    function GenerateJSONString: string; virtual;
    procedure Generate(AContext: TContext); virtual; abstract;
    procedure EndGenerate; virtual;
  public
    property JSONString: string read GetJSONString;
    constructor Create(ACategories, AProducts, ARegions: TDataSet); virtual;
    destructor Destroy; override;
    function CreateUnitsSoldGenerator(ARegionWeight: Double; AProductClass: TProductClass): TUnitsSoldRandomGenerator; virtual;
    procedure GenerateAll;
  end;

implementation

{ TContext }

constructor TContext.Create(const AState, AProductName, ACategoryName: string;
  AListPrice: Currency; AUnitsSoldGenerator: TUnitsSoldRandomGenerator);
begin
  FState := AState;
  FProductName := AProductName;
  FCategoryName := ACategoryName;
  FListPrice := AListPrice;
  FUnitsSoldGenerator := AUnitsSoldGenerator;
end;

{ TSalesDataGenerator }

constructor TSalesDataGenerator.Create(ACategories, AProducts,
  ARegions: TDataSet);
begin
  FCategories := ACategories;
  FProducts := AProducts;
  FRegions := ARegions;
  FProdClasses := TProductClasses.Create(FProducts);
  FRegClasses := TRegionClasses.Create(FRegions);
end;

function TSalesDataGenerator.GetState(ARegion: TDataSet): string;
begin
  Result := FRegions.FieldByName('Region').AsString;
end;

function TSalesDataGenerator.GetProductName(AProduct: TDataSet): string;
begin
  Result := AProduct.FieldByName('Name').AsString;
end;

function TSalesDataGenerator.GetRegionWeight(ARegion: TDataSet): Double;
begin
  Result := FRegClasses[ARegion.FieldByName('RegionID').AsInteger];
end;

function TSalesDataGenerator.GetListPrice(AProduct: TDataSet): Currency;
begin
  Result := AProduct.FieldByName('ListPrice').AsCurrency;
end;

function TSalesDataGenerator.GetProductClass(AProduct: TDataSet): TProductClass;
begin
  Result := FProdClasses.GetItem(AProduct.FieldByName('ProductID').AsInteger);
end;

function TSalesDataGenerator.GetCategoryName(AProduct: TDataSet): string;
var
  ACategoryId: Integer;
begin
  ACategoryId := AProduct.FieldByName('CategoryID').AsInteger;
  if FCategories.Locate('CategoryID', ACategoryId, []) then
    Result := FCategories.FieldByName('CategoryName').AsString
  else
    Result := '';
end;


function TSalesDataGenerator.GenerateJSONString: string;
begin
  Result := '';
end;

function TSalesDataGenerator.GetJSONString: string;
begin
  if FJSONString = '' then
    FJSONString := GenerateJSONString;

  Result := FJSONString;
end;

function TSalesDataGenerator.CreateUnitsSoldGenerator(ARegionWeight: Double;
  AProductClass: TProductClass): TUnitsSoldRandomGenerator;
var
  AValue: Integer;
begin
  AValue := Ceil(AProductClass.SaleProbability * ARegionWeight);
  Result := TUnitsSoldRandomGenerator.Create(AValue);
end;

destructor TSalesDataGenerator.Destroy;
begin
  FreeAndNil(FProdClasses);
  FreeAndNil(FRegClasses);
  inherited Destroy;
end;

procedure TSalesDataGenerator.EndGenerate;
begin
  //
end;

procedure TSalesDataGenerator.GenerateAll;
var
  AState: string;
  ARegionWeight: Double;
  AUnitsSoldGenerator: TUnitsSoldRandomGenerator;
  AContext: TContext;
begin
  FRegions.First;
  while not FRegions.Eof do
  begin
    AState := GetState(FRegions);
    ARegionWeight := GetRegionWeight(FRegions);
    FProducts.First;
    while not FProducts.Eof do
    begin
      AUnitsSoldGenerator := CreateUnitsSoldGenerator(ARegionWeight, GetProductClass(FProducts));
      AContext := TContext.Create(
        AState,
        GetProductName(FProducts),
        GetCategoryName(FProducts),
        GetListPrice(FProducts),
        AUnitsSoldGenerator
      );
      try
        Generate(AContext);
      finally
        AContext.Free;
        AUnitsSoldGenerator.Free;
      end;

      FProducts.Next;
    end;
    FRegions.Next;
  end;
  EndGenerate;
end;

end.
