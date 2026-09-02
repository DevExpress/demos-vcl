unit dxFlowChartDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset, Datasnap.DBClient, dxGDIPlusClasses, dxflchrt, Winapi.Windows,
  dxCoreClasses, cxGraphics;

const
  Delimiter = #13#10;
  DiagramFontName = 'Segoe UI';
  DiagramFontSize = 10;
  DiagramShapeColor = $FF00B0F0;

type
  TBaseObject = class(TcxIUnknownObject);

  { TEmployee }

  TEmployee = class(TBaseObject)
  strict private
    FAddress: string;
    FBirthday: string;
    FFullName: string;
    FMobilePhone: string;
    FPicture: TdxSmartImage;
    FObject: TdxFcObject;
  public
    destructor Destroy; override;

    procedure Load(AMemData: TdxMemData);

    property Address: string read FAddress;
    property Birthday: string read FBirthday;
    property FlowChartObject: TdxFcObject read FObject write FObject;
    property FullName: string read FFullName;
    property MobilePhone: string read FMobilePhone;
    property Picture: TdxSmartImage read FPicture;
  end;

  TDM = class(TDataModule)
    mdEmployees: TdxMemData;
    mdEmployeesId: TIntegerField;
    mdEmployeesDepartment: TIntegerField;
    mdEmployeesTitle: TWideStringField;
    mdEmployeesStatus: TIntegerField;
    mdEmployeesHireDate: TDateTimeField;
    mdEmployeesPersonalProfile: TWideStringField;
    mdEmployeesFirstName: TWideStringField;
    mdEmployeesLastName: TWideStringField;
    mdEmployeesFullName: TWideStringField;
    mdEmployeesPrefix: TIntegerField;
    mdEmployeesHomePhone: TWideStringField;
    mdEmployeesMobilePhone: TWideStringField;
    mdEmployeesEmail: TWideStringField;
    mdEmployeesSkype: TWideStringField;
    mdEmployeesBirthDate: TDateTimeField;
    mdEmployeesPictureId: TIntegerField;
    mdEmployeesAddress_Line: TWideStringField;
    mdEmployeesAddress_City: TWideStringField;
    mdEmployeesAddress_State: TIntegerField;
    mdEmployeesAddress_ZipCode: TWideStringField;
    mdEmployeesAddress_Latitude: TFloatField;
    mdEmployeesAddress_Longitude: TFloatField;
    mdEmployeesProbationReason_Id: TIntegerField;
    mdEmployeesPicture: TBlobField;
    mdEmployeesFull_Address: TStringField;
    dsEmployees: TDataSource;
    dsFoods: TDataSource;
    dsFoodCategories: TDataSource;
    mdFoods: TdxMemData;
    mdFoodsProductID: TAutoIncField;
    mdFoodsProductName: TWideStringField;
    mdFoodsSupplierID: TIntegerField;
    mdFoodsCategoryID: TIntegerField;
    mdFoodsQuantityPerUnit: TWideStringField;
    mdFoodsUnitPrice: TBCDField;
    mdFoodsUnitsInStock: TSmallintField;
    mdFoodsUnitsOnOrder: TSmallintField;
    mdFoodsReorderLevel: TSmallintField;
    mdFoodsDiscontinued: TBooleanField;
    mdFoodsEAN13: TWideStringField;
    mdFoodCategories: TdxMemData;
    mdFoodCategoriesCategoryID: TAutoIncField;
    mdFoodCategoriesCategoryName: TWideStringField;
    mdFoodCategoriesDescription: TStringField;
    mdFoodCategoriesPicture: TBlobField;
    mdFoodCategoriesIcon_17: TBlobField;
    mdFoodCategoriesIcon_25: TBlobField;
    mdFoodsCategoryName: TStringField;
    mdFoodsEmployeeID: TIntegerField;
    mdFoodsQuantity: TIntegerField;
    mdFoodsEmployeeName: TStringField;
  public
    function CreateImageFromField(AField: TBlobField): TdxSmartImage;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses
  Vcl.Graphics, cxGeometry, dxCoreGraphics;

{ TEmployee }

destructor TEmployee.Destroy;
begin
  FreeAndNil(FPicture);
  FreeAndNil(FObject);
  inherited;
end;

procedure TEmployee.Load(AMemData: TdxMemData);
begin
  FAddress := AMemData.FieldByName('Address_Line').AsString;
  FBirthday := AMemData.FieldByName('BirthDate').AsString;
  FMobilePhone := AMemData.FieldByName('MobilePhone').AsString;
  FFullName := AMemData.FieldByName('FullName').AsString;
  FPicture := DM.CreateImageFromField(AMemData.FieldByName('Picture') as TBlobField);
end;

{ TDM }

function TDM.CreateImageFromField(AField: TBlobField): TdxSmartImage;
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  try
    AField.SaveToStream(AStream);
    AStream.Position := 0;
    Result := TdxSmartImage.CreateFromStream(AStream);
  finally
    AStream.Free;
  end;
end;

end.

