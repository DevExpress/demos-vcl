unit uCustomerSupport;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset;

type
  TCustomerSupportDataModule = class(TDataModule)
    mdProducts: TdxMemData;
    mdProductsId: TIntegerField;
    mdProductsName: TStringField;
    mdProductsSupportCount: TIntegerField;
    mdIssueTypes: TdxMemData;
    mdIssueTypesId: TIntegerField;
    mdIssueTypesName: TStringField;
    mdIssueTypesIndex: TIntegerField;
    mdIssueTypesSolvedTime: TIntegerField;
    mdIssueTypesSolvedTimeDev: TIntegerField;
    mdIssueTypesDistribution: TIntegerField;
    mdEmployees: TdxMemData;
    mdEmployeesEmployeeID: TIntegerField;
    mdEmployeesFullName: TStringField;
    mdEmployeesDepartmentID: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
  end;

var
  CustomerSupportDataModule: TCustomerSupportDataModule;

implementation

{$R *.dfm}

uses
  CustomerSupportDataClasses, System.JSON, System.DateUtils, uDemoDataModule;

procedure TCustomerSupportDataModule.DataModuleCreate(Sender: TObject);
var
  AData: TCustomerSupportData;
  AItem: TCustomerSupportItem;
  AJSONArray: TJSONArray;
  AJSONObject, ARoot: TJSONObject;
  AJSONString: string;
begin
  AData := TCustomerSupportData.Create(mdIssueTypes, mdProducts, mdEmployees);
  ARoot := TJSONObject.Create;
  try
    AJSONArray := TJSONArray.Create;
    try
      for AItem in AData.CustomerSupport do
      begin
        AJSONObject := TJSONObject.Create;
        AJSONObject.AddPair('ProductName', AItem.ProductName);
        AJSONObject.AddPair('Customer', AItem.Customer);
        AJSONObject.AddPair('Employee', AItem.Employee);
        AJSONObject.AddPair('IssueType', AItem.IssueType);
        AJSONObject.AddPair('IssueTypeIndex', TJSONNumber.Create(AItem.IssueTypeIndex));
        AJSONObject.AddPair('Opened', DateToISO8601(AItem.Opened));
        AJSONObject.AddPair('ResolvedTime', TJSONNumber.Create(AItem.ResolvedTime));
        AJSONArray.AddElement(AJSONObject);
      end;
      ARoot.AddPair('Data', AJSONArray);
      AJSONString := ARoot.Format(2);
      DemoDataModule.CustomerSupportConnection.SetJSONValue(AJSONString);
    except
      raise;
    end;
  finally
    ARoot.Free;
    AData.Free;
  end;
end;

end.
