unit uDataHelpers;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, dxmdaset, Data.DB;

type
  TProductClass = class
  private
    FProductIDs: TList<Integer>;
    FMinPrice: Currency;
    FMaxPrice: Currency;
    FHasMin: Boolean;
    FHasMax: Boolean;
    FSaleProbability: Double;
  public
    constructor Create(AMinPrice, AMaxPrice: Variant; ASaleProbability: Double);
    destructor Destroy; override;
    function AddProduct(AProductID: Integer; APrice: Currency): Boolean;
    function ContainsProduct(AProductID: Integer): Boolean;
    property SaleProbability: Double read FSaleProbability;
  end;

  TProductClasses = class(TObjectList<TProductClass>)
  public
    constructor Create(AProducts: TDataSet);
    function GetItem(AProductID: Integer): TProductClass;
  end;

  TRegionClasses = class(TDictionary<Integer, Double>)
  public
    constructor Create(ARegions: TDataSet);
  end;

  TDataHelper = class
  public
    class function Random(ADeviation: Double; APositive: Boolean): Double; overload; static;
    class function Random(ADeviation: Double): Double; overload; static;
  end;

  TUnitsSoldRandomGenerator = class
  private
    const MinUnitsSold = 5;
  private
    FStartUnitsSold: Integer;
    FPrevUnitsSold: Integer;
    FPrevPrevUnitsSold: Integer;
    FHasPrevUnitsSold: Boolean;
    FHasPrevPrevUnitsSold: Boolean;
    FIsFirst: Boolean;
    FUnitsSold: Integer;
    FUnitsSoldTarget: Integer;
  protected
    function GetUnitsSoldDeviation: Double; virtual;
  public
    constructor Create(AStartUnitsSold: Integer);
    procedure Next;
    property UnitsSold: Integer read FUnitsSold;
    property UnitsSoldTarget: Integer read FUnitsSoldTarget;
  end;

implementation

uses
  System.Variants, System.Math;

{ TProductClass }

constructor TProductClass.Create(AMinPrice, AMaxPrice: Variant; ASaleProbability: Double);
begin
  FProductIDs := TList<Integer>.Create;
  FHasMin := not VarIsNull(AMinPrice);
  if FHasMin then
    FMinPrice := AMinPrice;

  FHasMax := not VarIsNull(AMaxPrice);
  if FHasMax then
    FMaxPrice := AMaxPrice;

  FSaleProbability := ASaleProbability;
end;

destructor TProductClass.Destroy;
begin
  FProductIDs.Free;
  inherited Destroy;
end;

function TProductClass.AddProduct(AProductID: Integer; APrice: Currency): Boolean;
var
  ASatisfyMin, ASatisfyMax: Boolean;
begin
  ASatisfyMin := (not FHasMin) or (APrice >= FMinPrice);
  ASatisfyMax := (not FHasMax) or (APrice < FMaxPrice);
  if ASatisfyMin and ASatisfyMax then
  begin
    FProductIDs.Add(AProductID);
    Exit(True);
  end;
  Result := False;
end;

function TProductClass.ContainsProduct(AProductID: Integer): Boolean;
begin
  Result := FProductIDs.Contains(AProductID);
end;

{ TProductClasses }

constructor TProductClasses.Create(AProducts: TDataSet);
var
  AProductID: Integer;
  AListPrice: Currency;
  AClass: TProductClass;
begin
  inherited Create(True); // own objects
  Add(TProductClass.Create(Null, 100, 0.5));
  Add(TProductClass.Create(100, 500, 0.4));
  Add(TProductClass.Create(500, 1500, 0.3));
  Add(TProductClass.Create(1500, Null, 0.2));

  AProducts.First;
  while not AProducts.Eof do
  begin
    AProductID := AProducts.FieldByName('ProductID').AsInteger;
    AListPrice := AProducts.FieldByName('ListPrice').AsCurrency;
    for AClass in Self do
      if AClass.AddProduct(AProductID, AListPrice) then
        Break;
    AProducts.Next;
  end;
end;

function TProductClasses.GetItem(AProductID: Integer): TProductClass;
var
  AClass: TProductClass;
begin
  for AClass in Self do
    if AClass.ContainsProduct(AProductID) then
      Exit(AClass);
  raise EArgumentException.Create('Invalid ProductID');
end;

{ TRegionClasses }

constructor TRegionClasses.Create(ARegions: TDataSet);
var
  AMinEmployees, ANumEmployees: Integer;
begin
  inherited Create;

  // find minimal NumberEmployees
  AMinEmployees := MaxInt;
  ARegions.First;
  while not ARegions.Eof do
  begin
    ANumEmployees := ARegions.FieldByName('NumberEmployees').AsInteger;
    if ANumEmployees < AMinEmployees then
      AMinEmployees := ANumEmployees;
    ARegions.Next;
  end;

  if AMinEmployees = MaxInt then
    Exit;

  ARegions.First;
  while not ARegions.Eof do
  begin
    ANumEmployees := ARegions.FieldByName('NumberEmployees').AsInteger;
    Self.Add(ARegions.FieldByName('RegionID').AsInteger, ANumEmployees / AMinEmployees);
    ARegions.Next;
  end;
end;

{ TDataHelper }

class function TDataHelper.Random(ADeviation: Double; APositive: Boolean): Double;
var
  ARand: Integer;
begin
  // just random
  if APositive then
    ARand := System.Random(1000001) //  0 - 1,000,000
  else
    ARand := System.Random(2000001) - 1000000; //  -1,000,000 - +1,000,000

  Result := (ARand / 1000000.0) * ADeviation;
end;

class function TDataHelper.Random(ADeviation: Double): Double;
begin
  Result := Random(ADeviation, False);
end;

{ TUnitsSoldRandomGenerator }

constructor TUnitsSoldRandomGenerator.Create(AStartUnitsSold: Integer);
begin
  inherited Create;
  FStartUnitsSold := Max(AStartUnitsSold, MinUnitsSold);
  FPrevUnitsSold := 0;
  FPrevPrevUnitsSold := 0;
  FHasPrevUnitsSold := False;
  FHasPrevPrevUnitsSold := False;
  FIsFirst := True;
end;

function TUnitsSoldRandomGenerator.GetUnitsSoldDeviation: Double;
begin
  Result := FUnitsSold * 0.5;
end;

procedure TUnitsSoldRandomGenerator.Next;
var
  AUnitsSoldSum: Integer;
  ACount: Integer;
begin
  if FIsFirst then
  begin
    FUnitsSold := FStartUnitsSold;
    FIsFirst := False;
  end
  else
  begin
    FUnitsSold := FUnitsSold + Round(TDataHelper.Random(GetUnitsSoldDeviation));
    FUnitsSold := Max(FUnitsSold, MinUnitsSold);
  end;

  AUnitsSoldSum := FUnitsSold;
  ACount := 1;

  if FHasPrevUnitsSold then
  begin
    AUnitsSoldSum := AUnitsSoldSum + FPrevUnitsSold;
    Inc(ACount);
  end;

  if FHasPrevPrevUnitsSold then
  begin
    AUnitsSoldSum := AUnitsSoldSum + FPrevPrevUnitsSold;
    Inc(ACount);
  end;

  FUnitsSoldTarget := Round(AUnitsSoldSum / ACount);
  FUnitsSoldTarget := FUnitsSoldTarget + Round(TDataHelper.Random(FUnitsSoldTarget));

  FPrevPrevUnitsSold := FPrevUnitsSold;
  FHasPrevPrevUnitsSold := FHasPrevUnitsSold;
  FPrevUnitsSold := FUnitsSold;
  FHasPrevUnitsSold := True;
end;

end.
