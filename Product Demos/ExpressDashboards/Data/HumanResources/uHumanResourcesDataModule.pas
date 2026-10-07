unit uHumanResourcesDataModule;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset;

type
  THumanResourcesDataModule = class(TDataModule)
    mdDepartments: TdxMemData;
    mdDepartmentsDepartmentID: TIntegerField;
    mdDepartmentsDepartmentName: TStringField;
    mdDepartmentsBaseSalary: TCurrencyField;
    mdEmployees: TdxMemData;
    mdEmployeesEmployeeID: TIntegerField;
    mdEmployeesFullName: TStringField;
    mdEmployeesDepartmentID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
  end;

var
  HumanResourcesDataModule: THumanResourcesDataModule;

implementation

{$R *.dfm}

uses
  HumanResourcesData, uDemoDataModule, System.JSON, System.DateUtils;

procedure THumanResourcesDataModule.DataModuleCreate(Sender: TObject);
var
  ADataGenerator: THumanResourcesData;
  AEmpItem: TEmployeeData;
  ADptItem: TDepartmentData;
  AJSONArrayEmployees, AJSONArrayDepartments: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  ADataGenerator := THumanResourcesData.Create(mdEmployees, mdDepartments);
  ARoot := TJSONObject.Create;
  try
    AJSONArrayEmployees := TJSONArray.Create;
    AJSONArrayDepartments := TJSONArray.Create;
    try
      for AEmpItem in ADataGenerator.EmployeeData do
      begin
        AJSONObject := TJSONObject.Create;
        AJSONObject.AddPair('CurrentDate', DateToISO8601(AEmpItem.CurrentDate));
        AJSONObject.AddPair('Department', AEmpItem.Department);
        AJSONObject.AddPair('Employee', AEmpItem.Employee);
        AJSONObject.AddPair('Salary', TJSONNumber.Create(AEmpItem.Salary));
        AJSONObject.AddPair('Bonus', TJSONNumber.Create(AEmpItem.Bonus));
        AJSONObject.AddPair('Overtime', TJSONNumber.Create(AEmpItem.Overtime));
        AJSONObject.AddPair('VacationDays', TJSONNumber.Create(AEmpItem.VacationDays));
        AJSONObject.AddPair('SickLeaveDays', TJSONNumber.Create(AEmpItem.SickLeaveDays));
        AJSONArrayEmployees.AddElement(AJSONObject);
      end;

      for ADptItem in ADataGenerator.DepartmentData.Values do
      begin
        AJSONObject := TJSONObject.Create;
        AJSONObject.AddPair('CurrentDate', DateToISO8601(ADptItem.CurrentDate));
        AJSONObject.AddPair('Department', ADptItem.Department);
        AJSONObject.AddPair('HeadCount', TJSONNumber.Create(ADptItem.HeadCount));
        AJSONObject.AddPair('RetiredCount', TJSONNumber.Create(ADptItem.RetiredCount));
        AJSONObject.AddPair('StaffTurnover', TJSONNumber.Create(ADptItem.StaffTurnover));
        AJSONObject.AddPair('StaffTurnoverCritical', TJSONNumber.Create(ADptItem.StaffTurnoverCritical));
        AJSONArrayDepartments.AddElement(AJSONObject);
      end;

      // --- Root JSON ---
      ARoot.AddPair('Employees', AJSONArrayEmployees);
      ARoot.AddPair('Departments', AJSONArrayDepartments);
      AJSONString := ARoot.Format(2);
      DemoDataModule.HumanResourcesConnection.SetJSONValue(AJSONString);
    except
      raise;
    end;
  finally
    ARoot.Free;
    ADataGenerator.Free;
  end;
end;

end.
