unit CustomerSupportDataClasses;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, Data.DB;

type
  TCustomerSupportItem = record
    ProductName: string;
    Customer: string;
    Employee: string;
    IssueType: string;
    IssueTypeIndex: Integer;
    Opened: TDateTime;
    ResolvedTime: Integer;
  end;

  TEmployee = record
    FullName: string;
    DepartmentID: Integer;
  end;

  TCustomerSupportData = class
  private
    FEmployees: TDataSet;
    FProducts: TDataSet;
    FIssueTypes: TDataSet;
    FItems: TList<TCustomerSupportItem>;
    FIssueDistributionCount: Integer;
    FEmployeeCount: Integer;
    FProductCount: Integer;
    FCustomerCount: Integer;
    FIssueTypesCount: Integer;
    FStartDate: TDateTime;
    FEndDate: TDateTime;
    FStartYear: Integer;

    procedure LoadDataTables(AIssueTypes, AProducts, AEmployees: TDataSet);
    function GetMonthResolvedDeviation: TList<Integer>;
    function GetMonthIssuesDeviation: TList<Integer>;
    function GetYearDeviation: TDictionary<Integer, Integer>;
    function GetEmployeeByProduct: TDictionary<Integer, Integer>;
    function GetEmployeeSolvedDeviation: TObjectList<TList<Integer>>;
    function GetIssueDistribution: TObjectList<TList<Integer>>;
  public
    constructor Create(AIssueTypes, AProducts, AEmployees: TDataSet);
    destructor Destroy; override;
    property CustomerSupport: TList<TCustomerSupportItem> read FItems;
  end;

implementation

{ TCustomerSupportData }

uses
  System.DateUtils, System.Math;

constructor TCustomerSupportData.Create(AIssueTypes, AProducts, AEmployees: TDataSet);
var
  AMonthResolvedDeviation, AMonthIssuesDeviation: TList<Integer>;
  AYearDeviation: TDictionary<Integer, Integer>;
  AEmployeeProducts: TDictionary<Integer, Integer>;
  AEmployeeSolvedDev: TObjectList<TList<Integer>>;
  AIssueDistribution: TObjectList<TList<Integer>>;
  ACurrentDate: TDateTime;
  ACount, I, AEmployeeIndex, ACustomerIndex, AProductIndex, AIssueTypeIndex: Integer;
  AIssueSolvedAverage, AIssueSolvedDev: Integer;
  Item: TCustomerSupportItem;
begin
  inherited Create;
  Randomize;

  FItems := TList<TCustomerSupportItem>.Create;
  FStartDate := EncodeDate(YearOf(Date) - 1, 1, 1);
  FEndDate := Date;
  FStartYear := YearOf(Date);

  LoadDataTables(AIssueTypes, AProducts, AEmployees);

  AMonthResolvedDeviation := GetMonthResolvedDeviation;
  AMonthIssuesDeviation := GetMonthIssuesDeviation;
  AYearDeviation := GetYearDeviation;
  AEmployeeProducts := GetEmployeeByProduct;
  AEmployeeSolvedDev := GetEmployeeSolvedDeviation;
  AIssueDistribution := GetIssueDistribution;

  ACurrentDate := FStartDate;
  while ACurrentDate < FEndDate do
  begin
    ACount := Random(AMonthIssuesDeviation[MonthOf(ACurrentDate)]) +
             AYearDeviation[FStartYear] + 5;

    for I := 0 to ACount - 1 do
    begin
      AEmployeeIndex := Random(FEmployeeCount);
      ACustomerIndex := RandomRange(FEmployeeCount - 1, FCustomerCount);
      AProductIndex := AEmployeeProducts[AEmployeeIndex];
      AIssueTypeIndex := AIssueDistribution[AProductIndex][Random(FIssueDistributionCount)];

      FIssueTypes.RecNo := AIssueTypeIndex + 1;
      AIssueSolvedAverage := FIssueTypes.FieldByName('SolvedTime').AsInteger;
      AIssueSolvedDev := FIssueTypes.FieldByName('SolvedTimeDev').AsInteger + AEmployeeSolvedDev[AEmployeeIndex][AIssueTypeIndex];

      FProducts.RecNo := AProductIndex + 1;
      Item.ProductName := FProducts.FieldByName('Name').AsString;
      FEmployees.RecNo := ACustomerIndex + 1; 
      Item.Customer := FEmployees.FieldByName('FullName').AsString;
      FEmployees.RecNo := AEmployeeIndex + 1;
      Item.Employee := FEmployees.FieldByName('FullName').AsString;
      Item.IssueType := FIssueTypes.FieldByName('Name').AsString;
      Item.IssueTypeIndex := FIssueTypes.FieldByName('Index').AsInteger;
      Item.ResolvedTime := RandomRange(
        Max(0, AIssueSolvedAverage - AIssueSolvedDev),
        AIssueSolvedAverage + AIssueSolvedDev +
        AMonthResolvedDeviation[MonthOf(ACurrentDate)] -
        2 * (YearOf(ACurrentDate) - FStartYear)
      );
      Item.Opened := ACurrentDate;

      FItems.Add(Item);
    end;
    ACurrentDate := ACurrentDate + 1;
  end;

  AMonthResolvedDeviation.Free;
  AMonthIssuesDeviation.Free;
  AYearDeviation.Free;
  AEmployeeProducts.Free;
  AEmployeeSolvedDev.Free;
  AIssueDistribution.Free;
end;

destructor TCustomerSupportData.Destroy;
begin
  FItems.Free;
  inherited Destroy;
end;

procedure TCustomerSupportData.LoadDataTables(AIssueTypes, AProducts, AEmployees: TDataSet);
begin
  FEmployees := AEmployees;
  FProducts := AProducts;
  FIssueTypes := AIssueTypes;
  FProductCount := FProducts.RecordCount;
  FCustomerCount := FEmployees.RecordCount;
  FIssueTypesCount := FIssueTypes.RecordCount;
end;

function TCustomerSupportData.GetMonthResolvedDeviation: TList<Integer>;
var
  I: Integer;
begin
  Result := TList<Integer>.Create;
  for I := 0 to 12 do
    Result.Add(Random(10));
end;

function TCustomerSupportData.GetMonthIssuesDeviation: TList<Integer>;
var
  I: Integer;
begin
  Result := TList<Integer>.Create;
  for I := 0 to 12 do
    Result.Add(RandomRange(15, 20));
  Result[5] := Result[5] - 2;
  Result[6] := Result[6] - 7;
  Result[7] := Result[7] - 8;
  Result[8] := Result[8] - 9;
end;

function TCustomerSupportData.GetYearDeviation: TDictionary<Integer, Integer>;
var
  I: Integer;
begin
  Result := TDictionary<Integer, Integer>.Create;
  for I := YearOf(FStartDate) to YearOf(FEndDate) do
    Result.Add(I, Random(10) + I - FStartYear);
end;

function TCustomerSupportData.GetEmployeeByProduct: TDictionary<Integer, Integer>;
var
  I, J: Integer;
begin
  Result := TDictionary<Integer, Integer>.Create;
  FEmployeeCount := -1;

  for I := 0 to FProductCount - 1 do
  begin
    FProducts.RecNo := I + 1;
    for J := 0 to FProducts.FieldByName('SupportCount').AsInteger - 1 do
    begin
      Inc(FEmployeeCount);
      Result.Add(FEmployeeCount, I);
    end;
  end;

  Inc(FEmployeeCount);
end;

function TCustomerSupportData.GetEmployeeSolvedDeviation: TObjectList<TList<Integer>>;
var
  I, J, SolveDev: Integer;
  L: TList<Integer>;
begin
  Result := TObjectList<TList<Integer>>.Create(True);
  for I := 0 to FEmployeeCount - 1 do
  begin
    L := TList<Integer>.Create;
    SolveDev := Random(5);
    for J := 0 to FIssueTypesCount - 1 do
      L.Add(RandomRange(SolveDev - J, SolveDev + J));
    Result.Add(L);
  end;
end;

function TCustomerSupportData.GetIssueDistribution: TObjectList<TList<Integer>>;
var
  K, I, J, Count: Integer;
  L: TList<Integer>;
begin
  Result := TObjectList<TList<Integer>>.Create(True);
  for K := 0 to FProductCount - 1 do
  begin
    L := TList<Integer>.Create;
    for I := 0 to FIssueTypesCount - 1 do
    begin
      FIssueTypes.RecNo := I + 1;
      Count := RandomRange(FIssueTypes.FieldByName('Distribution').AsInteger - 1,
        FIssueTypes.FieldByName('Distribution').AsInteger + 1);
      for J := 0 to Count - 1 do
        L.Add(I);
    end;
    Result.Add(L);
  end;

  FIssueDistributionCount := MaxInt;
  for I := 0 to Result.Count - 1 do
    if Result[I].Count < FIssueDistributionCount then
      FIssueDistributionCount := Result[I].Count;
end;

end.

