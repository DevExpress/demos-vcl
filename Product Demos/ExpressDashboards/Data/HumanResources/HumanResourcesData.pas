unit HumanResourcesData;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, System.Generics.Collections, System.DateUtils, Data.DB, uDataHelpers;

type
  THistoryItem = class
  private
    FHiredDate: TDateTime;
    FRetiredDate: TDateTime;
    FHiredValid: Boolean;
    FRetiredValid: Boolean;
  public
    property HiredDate: TDateTime read FHiredDate write FHiredDate;
    property RetiredDate: TDateTime read FRetiredDate write FRetiredDate;
    property HiredValid: Boolean read FHiredValid write FHiredValid;
    property RetiredValid: Boolean read FRetiredValid write FRetiredValid;

    function IsEmployed(const ADate: TDateTime): Boolean;
    function IsRetired(const ADate: TDateTime): Boolean;
  end;

  TDepartmentData = class
  private
    FCurrentDate: TDateTime;
    FDepartment: string;
    FHeadCount: Integer;
    FRetiredCount: Integer;
    FStaffTurnover: Double;
    FStaffTurnoverCritical: Double;
  public
    property CurrentDate: TDateTime read FCurrentDate write FCurrentDate;
    property Department: string read FDepartment write FDepartment;
    property HeadCount: Integer read FHeadCount write FHeadCount;
    property RetiredCount: Integer read FRetiredCount write FRetiredCount;
    property StaffTurnover: Double read FStaffTurnover write FStaffTurnover;
    property StaffTurnoverCritical: Double read FStaffTurnoverCritical write FStaffTurnoverCritical;
  end;

type
  TEmployeeData = record
    CurrentDate: TDateTime;
    Department: string;
    Employee: string;
    Salary: Double;
    Bonus: Double;
    Overtime: Double;
    VacationDays: Integer;
    SickLeaveDays: Integer;
  end;

  THumanResourcesData = class
  private
    const
      FullYears = 9;
    var
      FEmployees: TDataSet;
      FDepartments: TDataSet;
      FStartDate, FEndDate: TDateTime;
      FEmployeesHistory: TObjectDictionary<string, THistoryItem>;
      FDeptData: TObjectDictionary<string, TDepartmentData>;
      FEmpData: TList<TEmployeeData>;
  private
    function GetEmployeeFullName(ADataSet: TDataSet): string;
    function GetEmployeeDepartmentID(ADataSet: TDataSet): Integer;
    function GetDepartmentName(ADataSet: TDataSet): string;
    function GetDepartmentBaseSalary(ADataSet: TDataSet): Double;
    function GetDepartmentByID(AID: Integer): TDataSet;
    procedure CreateEmployeesHistory;
  public
    constructor Create(AEmployees, ADepartments: TDataSet);
    destructor Destroy; override;

    property DepartmentData: TObjectDictionary<string, TDepartmentData> read FDeptData;
    property EmployeeData: TList<TEmployeeData> read FEmpData;
  end;

implementation

uses
  System.Math;

{ THistoryItem }

function THistoryItem.IsEmployed(const ADate: TDateTime): Boolean;
begin
  Result :=
    ((not FHiredValid) or (FHiredDate <= ADate)) and
    ((not FRetiredValid) or (FRetiredDate >= ADate));
end;

function THistoryItem.IsRetired(const ADate: TDateTime): Boolean;
begin
  Result := FRetiredValid and SameDate(ADate, FRetiredDate);
end;

{ THumanResourcesData }

constructor THumanResourcesData.Create(AEmployees, ADepartments: TDataSet);
var
  ADate: TDateTime;
  AEmpName, ADeptName: string;
  ADeptID: Integer;
  ADept: TDataSet;
  AHistory: THistoryItem;
  ADeptKey: string;
  ADeptData: TDepartmentData;
  AEmpItem: TEmployeeData;
  ABaseSalary, ASalary, ABonus, AOvertime: Double;
  AVacationDays, ASickDays: Integer;
begin
  inherited Create;
  FEmployees := AEmployees;
  FDepartments := ADepartments;
  FEndDate := EncodeDate(YearOf(Date), MonthOf(Date), 1);
  FEndDate := IncMonth(FEndDate, -1);
  FStartDate := EncodeDate(YearOf(FEndDate) - FullYears, 1, 1);

  FEmployeesHistory := TObjectDictionary<string, THistoryItem>.Create([doOwnsValues]);
  FDeptData := TObjectDictionary<string, TDepartmentData>.Create([doOwnsValues]);
  FEmpData := TList<TEmployeeData>.Create;

  CreateEmployeesHistory;

  ADate := FStartDate;
  while ADate <= FEndDate do
  begin
    FEmployees.First;
    while not FEmployees.Eof do
    begin
      AEmpName := GetEmployeeFullName(FEmployees);
      AHistory := FEmployeesHistory[AEmpName];
      if AHistory.IsEmployed(ADate) then
      begin
        ADeptID := GetEmployeeDepartmentID(FEmployees);
        ADept := GetDepartmentByID(ADeptID);
        ADeptName := GetDepartmentName(ADept);

        ADeptKey := FormatDateTime('yyyymm', ADate) + '|' + ADeptName;     
        if not FDeptData.TryGetValue(ADeptKey, ADeptData) then
        begin
          ADeptData := TDepartmentData.Create;
          ADeptData.CurrentDate := ADate;
          ADeptData.Department := ADeptName;
          FDeptData.Add(ADeptKey, ADeptData);
        end;

        Inc(ADeptData.FHeadCount);
        if AHistory.IsRetired(ADate) then
          Inc(ADeptData.FRetiredCount);

        ABaseSalary := GetDepartmentBaseSalary(ADept);
        ASalary := ABaseSalary + RandomRange(0, Round(ABaseSalary / (1 + Random(5))));
        ABonus := RandomRange(0, Round(ASalary));
        AOvertime := RandomRange(0, Round(ASalary / (1 + Random(5)))); 

        if Random < 0.5 then
          AVacationDays := Random(10)
        else
          AVacationDays := 0;
        if Random < 0.5 then
          ASickDays := Random(5)
        else
          ASickDays := 0;

        AEmpItem.CurrentDate := ADate;
        AEmpItem.Department := ADeptName;
        AEmpItem.Employee := AEmpName;
        AEmpItem.Salary := ASalary;
        AEmpItem.Bonus := ABonus;
        AEmpItem.Overtime := AOvertime;
        AEmpItem.VacationDays := AVacationDays;
        AEmpItem.SickLeaveDays := ASickDays;
        FEmpData.Add(AEmpItem);
      end;
      FEmployees.Next;
    end;
    ADate := IncMonth(ADate, 1);
  end;

  for ADeptData in FDeptData.Values do
  begin
    if ADeptData.HeadCount > 0 then
      ADeptData.StaffTurnover := ADeptData.RetiredCount / ADeptData.HeadCount
    else
      ADeptData.StaffTurnover := 0;
    ADeptData.StaffTurnoverCritical := 0.01;
  end;
end;

procedure THumanResourcesData.CreateEmployeesHistory;
var
  ATotalMonths, AHiredMonth, ARetiredMonth: Integer;
  AHiredDate, ARetiredDate: TDateTime;
  AEmpName: string;
  AItem: THistoryItem;
begin
  ATotalMonths := FullYears * 12 + MonthOf(FEndDate);
  FEmployees.First;
  while not FEmployees.Eof do
  begin
    AEmpName := GetEmployeeFullName(FEmployees);
    AItem := THistoryItem.Create;

    AHiredMonth := 0;

    if Random < 0.8 then
    begin
      AHiredMonth := Round(Random * ATotalMonths);
      AHiredDate := IncMonth(FStartDate, AHiredMonth);
      AItem.FHiredDate := AHiredDate;
      AItem.FHiredValid := True;
    end;

    if Random < 0.7 then
    begin
      ARetiredMonth := Round(Random * ATotalMonths);
      if (AItem.FHiredValid) and (ARetiredMonth > AHiredMonth) then
      begin
        ARetiredDate := IncMonth(FStartDate, ARetiredMonth);
        AItem.FRetiredDate := ARetiredDate;
        AItem.FRetiredValid := True;
      end;
    end;

    FEmployeesHistory.Add(AEmpName, AItem);
    FEmployees.Next;
  end;
end;

destructor THumanResourcesData.Destroy;
begin
  FEmployeesHistory.Free;
  FDeptData.Free;
  FEmpData.Free;
  inherited Destroy;
end;

function THumanResourcesData.GetEmployeeFullName(ADataSet: TDataSet): string;
begin
  Result := ADataSet.FieldByName('FullName').AsString;
end;

function THumanResourcesData.GetEmployeeDepartmentID(ADataSet: TDataSet): Integer;
begin
  Result := ADataSet.FieldByName('DepartmentID').AsInteger;
end;

function THumanResourcesData.GetDepartmentBaseSalary(ADataSet: TDataSet): Double;
begin
  Result := ADataSet.FieldByName('BaseSalary').AsFloat;
end;

function THumanResourcesData.GetDepartmentName(ADataSet: TDataSet): string;
begin
  Result := ADataSet.FieldByName('DepartmentName').AsString;
end;

function THumanResourcesData.GetDepartmentByID(AID: Integer): TDataSet;
begin
  FDepartments.First;
  while not FDepartments.Eof do
  begin
    if FDepartments.FieldByName('DepartmentID').AsInteger = AID then
      Exit(FDepartments);
    FDepartments.Next;
  end;
  Result := nil;
end;

end.

