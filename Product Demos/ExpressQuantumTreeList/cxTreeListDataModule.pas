unit cxTreeListDataModule;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, dxmdaset, Datasnap.DBClient, Vcl.ImgList, Vcl.Controls, cxImageList, cxGraphics;

type
  TdmTreeList = class(TDataModule)
    acBiolife: TADOConnection;
    atBiolife: TADOTable;
    dsBiolife: TDataSource;
    acIssuesList: TADOConnection;
    dsTasksAndUsers: TDataSource;
    aqTasksAndUsers: TADOQuery;
    acCars: TADOConnection;
    atCars: TADOTable;
    dsCars: TDataSource;
    atBiolifeID: TIntegerField;
    atBiolifeSpeciesName: TWideStringField;
    atCarsPicture: TBlobField;
    atCarsID: TAutoIncField;
    atCarsParentID: TIntegerField;
    atCarsModel: TWideStringField;
    atCarsHP: TWideStringField;
    atCarsCyl: TWordField;
    atCarsTransmissSpeedCount: TWideStringField;
    atCarsTransmissAutomatic: TBooleanField;
    atCarsMPG_City: TWordField;
    atCarsMPG_Highway: TWordField;
    atCarsPrice: TBCDField;
    atCarsSmallPicture: TBlobField;
    atBiolifeParentID: TIntegerField;
    atBiolifeSpeciesNo: TIntegerField;
    atBiolifeLengthCm: TFloatField;
    atBiolifeCategory: TWideStringField;
    atBiolifeCommonName: TWideStringField;
    atBiolifeNotes: TWideStringField;
    atBiolifeMark: TBooleanField;
    atBiolifeRecordDate: TDateTimeField;
    atCarsDescription: TMemoField;
    mdEmployeesGroups: TdxMemData;
    dsEmployeesGroups: TDataSource;
    mdEmployeesGroupsId: TStringField;
    mdEmployeesGroupsParentId: TStringField;
    mdEmployeesGroupsFirstName: TStringField;
    mdEmployeesGroupsLastName: TStringField;
    mdEmployeesGroupsJobTitle: TStringField;
    mdEmployeesGroupsPhone: TStringField;
    mdEmployeesGroupsEmailAddress: TStringField;
    mdEmployeesGroupsAddressLine1: TStringField;
    mdEmployeesGroupsCity: TStringField;
    mdEmployeesGroupsPostalCode: TStringField;
    mdEmployeesGroupsStateProvinceName: TStringField;
    dsCarOrders: TDataSource;
    mdCarOrders: TdxMemData;
    mdCarOrdersID: TIntegerField;
    mdCarOrdersParentID: TIntegerField;
    mdCarOrdersName: TWideStringField;
    mdCarOrdersModification: TWideStringField;
    mdCarOrdersPrice: TBCDField;
    mdCarOrdersMPG_City: TIntegerField;
    mdCarOrdersMPG_Highway: TIntegerField;
    mdCarOrdersBodyStyleID: TIntegerField;
    mdCarOrdersCylinders: TIntegerField;
    mdCarOrdersSalesDate: TDateField;
    mdCarOrdersBodyStyle: TStringField;
    mdBodyStyle: TdxMemData;
    mdBodyStyleID: TIntegerField;
    mdBodyStyleName: TWideStringField;
    dsBodyStyle: TDataSource;
    mdCarOrdersDiscount: TFloatField;
    cdsProducts: TClientDataSet;
    mdOrder: TdxMemData;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField2: TFloatField;
    IntegerField9: TIntegerField;
    FloatField3: TFloatField;
    DateTimeField1: TDateTimeField;
    dsOrder: TDataSource;
    mdOrderParentOrderID: TIntegerField;
    cdsProductsProductID: TIntegerField;
    cdsProductsProductName: TStringField;
    cdsProductsSupplierID: TIntegerField;
    cdsProductsCategoryID: TIntegerField;
    cdsProductsQuantityPerUnit: TStringField;
    cdsProductsUnitPrice: TFloatField;
    cdsProductsUnitsInStock: TIntegerField;
    cdsProductsUnitsOnOrder: TIntegerField;
    cdsProductsReorderLevel: TIntegerField;
    cdsProductsDiscontinued: TBooleanField;
    cdsProductsEAN13: TStringField;
    mdOrderProductName: TStringField;
    dsCarOrdersAndDelivery: TDataSource;
    mdCarOrdersAndDelivery: TdxMemData;
    mdCarOrdersAndDeliveryName: TWideStringField;
    mdCarOrdersAndDeliveryBodyStyleID: TIntegerField;
    mdCarOrdersAndDeliveryBodyStyle: TStringField;
    mdCarOrdersAndDeliveryPrice: TCurrencyField;
    mdCarOrdersAndDeliverySalesDate: TDateField;
    mdCarOrdersAndDeliverySalesPrice: TCurrencyField;
    mdCarOrdersAndDeliveryDeliveryDate: TDateField;
    mdCarOrdersAndDeliveryDeliveryComplete: TBooleanField;
    mdCarOrdersAndDeliveryDeliveryFrom: TStringField;
    mdCarOrdersAndDeliveryDeliveryTo: TStringField;
    dsTowns: TDataSource;
    mdTowns: TdxMemData;
    mdTownsID: TAutoIncField;
    mdTownsName: TStringField;
    mdCarOrdersAndDeliveryParentID: TIntegerField;
    mdCarOrdersAndDeliveryID: TIntegerField;
    mdEmployeesGroupsSalaryCurrency: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure mdOrderCalcFields(DataSet: TDataSet);
  private
    procedure LoadCarOrders(const APath: string);
    procedure LoadCarOrdersAndDelivery;
  public
    procedure SetParentValue(AValue: Variant);
  end;

var
  dmTreeList: TdmTreeList;

implementation

{$R *.dfm}

uses
  Vcl.Forms, System.Math;

procedure TdmTreeList.DataModuleCreate(Sender: TObject);
var
  APath: string;
begin
  APath := ExtractFilePath(Application.ExeName) + 'Data\';
  mdEmployeesGroups.LoadFromBinaryFile(APath + 'EmployeesGroups.dat');
  mdBodyStyle.LoadFromBinaryFile(APath + 'CarsBodyStyle.dat');

  LoadCarOrders(APath);

  cdsProducts.LoadFromFile(APath + 'Products2.cds');
  mdOrder.LoadFromBinaryFile(APath + 'Order2TL.dat');

  mdTowns.LoadFromBinaryFile(APath + 'Towns.dat');

  mdCarOrdersAndDelivery.Active := True;
  LoadCarOrdersAndDelivery;
end;

procedure TdmTreeList.LoadCarOrders(const APath: string);
var
  ANow: TDate;
begin
  mdCarOrders.LoadFromBinaryFile(APath + 'CarOrders.dat');
  ANow := Now;
  mdCarOrders.DisableControls;
  try
    mdCarOrders.First;
    while not mdCarOrders.Eof do
    begin
      mdCarOrders.Edit;
      mdCarOrdersSalesDate.Value := ANow - Random(1500);
      mdCarOrders.Post;
      mdCarOrders.Next;
    end;
  finally
    mdCarOrders.EnableControls;
  end;
end;

procedure TdmTreeList.LoadCarOrdersAndDelivery;
var
  ANow: TDate;
  APrice: Currency;
  ATownCount: Integer;
begin
  ANow := Now;
  ATownCount := mdTowns.RecordCount;
  mdCarOrdersAndDelivery.DisableControls;
  mdCarOrders.DisableControls;
  mdTowns.DisableControls;
  try
    mdCarOrders.First;
    while not mdCarOrders.Eof do
    begin
      mdCarOrdersAndDelivery.Insert;
      mdCarOrdersAndDeliveryID.Value := mdCarOrdersID.Value;
      mdCarOrdersAndDeliveryParentID.Value := mdCarOrdersParentID.Value;
      mdCarOrdersAndDeliveryName.Value := mdCarOrdersName.Value;
      mdCarOrdersAndDeliveryBodyStyleID.Value := mdCarOrdersBodyStyleID.Value;
      mdCarOrdersAndDeliveryPrice.Value := mdCarOrdersPrice.Value;
      APrice := mdCarOrdersAndDeliveryPrice.Value;
      if Random(3) = 0 then
        APrice := APrice * (115 - Random(31)) / 100;
      mdCarOrdersAndDeliverySalesPrice.Value := APrice;
      mdCarOrdersAndDeliverySalesDate.Value := ANow - Random(10);
      mdCarOrdersAndDeliveryDeliveryFrom.Value := AnsiString(mdTowns.Lookup(mdTownsID.FieldName, Random(ATownCount), mdTownsName.FieldName));
      if Random(3) = 0 then
        mdCarOrdersAndDeliveryDeliveryTo.Value := AnsiString(mdTowns.Lookup(mdTownsID.FieldName, Random(ATownCount), mdTownsName.FieldName))
      else
        mdCarOrdersAndDeliveryDeliveryTo.Value := mdCarOrdersAndDeliveryDeliveryFrom.Value;
      mdCarOrdersAndDeliveryDeliveryDate.Value := Max(mdCarOrdersAndDeliverySalesDate.Value, ANow + 5 - Random(15));
      mdCarOrdersAndDeliveryDeliveryComplete.Value := (Random(10) > 0) and (mdCarOrdersAndDeliveryDeliveryDate.Value <= ANow);
      mdCarOrdersAndDelivery.Post;
      mdCarOrders.Next;
    end;
    mdCarOrders.First;
    mdCarOrdersAndDelivery.First;
  finally
    mdTowns.EnableControls;
    mdCarOrders.EnableControls;
    mdCarOrdersAndDelivery.EnableControls;
  end;
end;

procedure TdmTreeList.mdOrderCalcFields(DataSet: TDataSet);
begin
  if cdsProducts.FindKey([mdOrder.FieldByName('ProductID').AsInteger]) then
    mdOrder.FieldByName('ProductName').AsString := cdsProducts.FieldByName('ProductName').AsString
  else
    mdOrder.FieldByName('ProductName').AsString := Format('Order #%d', [mdOrder.FieldByName('OrderID').AsInteger]);
end;

procedure TdmTreeList.SetParentValue(AValue: Variant);
begin
  if atCars.State in [dsEdit, dsInsert] then
    atCars.FindField('ParentID').Value := AValue;
end;

end.
