unit MainData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Data.DB, Vcl.ImgList, cxDBEditRepository, Data.Win.ADODB, cxEditRepositoryItems, cxEdit,
  Datasnap.DBClient, dxmdaset, cxClasses, MidasLib, cxImageList, cxGraphics, dxDemoUtils, System.ImageList;

type
  TdmMain = class(TDataModule)
    NavBarSmallImages: TcxImageList;
    BarManagerImages: TcxImageList;
    acIssueList: TADOConnection;
    atUsers: TADOTable;
    atUsersID: TAutoIncField;
    atUsersFNAME: TWideStringField;
    atUsersMNAME: TWideStringField;
    atUsersLNAME: TWideStringField;
    atUsersEMAIL: TWideStringField;
    atUsersPHONE: TWideStringField;
    atUsersDEPARTMENTID: TIntegerField;
    atUsersDepartmentName: TStringField;
    atUsersFullName: TStringField;
    dsUsers: TDataSource;
    atDepartments: TADOTable;
    atDepartmentsID: TAutoIncField;
    atDepartmentsNAME: TWideStringField;
    dsDepartment: TDataSource;
    atItems: TADOTable;
    atItemsID: TAutoIncField;
    atItemsNAME: TWideStringField;
    atItemsTYPE: TBooleanField;
    atItemsPROJECTID: TIntegerField;
    atItemsPRIORITY: TWordField;
    atItemsSTATUS: TWordField;
    atItemsCREATORID: TIntegerField;
    atItemsCREATEDDATE: TDateTimeField;
    atItemsOWNERID: TIntegerField;
    atItemsLASTMODIFIEDDATE: TDateTimeField;
    atItemsFIXEDDATE: TDateTimeField;
    atItemsDESCRIPTION: TMemoField;
    atItemsRESOLUTION: TMemoField;
    dsItems: TDataSource;
    atProjects: TADOTable;
    atProjectsID: TAutoIncField;
    atProjectsNAME: TWideStringField;
    atProjectsMANAGERID: TIntegerField;
    dsProjects: TDataSource;
    atProjectTeam: TADOTable;
    atProjectTeamID: TAutoIncField;
    atProjectTeamPROJECTID: TIntegerField;
    atProjectTeamUSERID: TIntegerField;
    atProjectTeamFUNCTION: TWideStringField;
    dsProjectTeam: TDataSource;
    imMain: TcxImageList;
    edrepMain: TcxEditRepository;
    edrepUserLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepPhoneItem: TcxEditRepositoryMaskItem;
    edrepProjectLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepTypeImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepPriorityImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepStatusImageCombo: TcxEditRepositoryImageComboBoxItem;
    acDXCustomers: TADOConnection;
    atDXCustomers: TADOTable;
    atDXProducts: TADOTable;
    atDXProductsID: TAutoIncField;
    atDXProductsName: TWideStringField;
    atDXCustomersID: TAutoIncField;
    atDXCustomersFIRSTNAME: TWideStringField;
    atDXCustomersLASTNAME: TWideStringField;
    atDXCustomersCOMPANYNAME: TWideStringField;
    atDXCustomersPAYMENTTYPE: TIntegerField;
    atDXCustomersPRODUCTID: TIntegerField;
    atDXCustomersCUSTOMER: TBooleanField;
    atDXCustomersPURCHASEDATE: TDateTimeField;
    atDXCustomersPAYMENTAMOUNT: TBCDField;
    atDXCustomersCOPIES: TIntegerField;
    dsDXCustomers: TDataSource;
    dsDXProducts: TDataSource;
    edrepDXProductLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepDXPaymentTypeImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepMovieCountryLookupCombo: TcxEditRepositoryLookupComboBoxItem;
    edrepGenderImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepMoviePersonsLineLookupCombo: TcxEditRepositoryLookupComboBoxItem;
    edrepDepartmentLookup: TcxEditRepositoryLookupComboBoxItem;
    NavBarLargeImages: TcxImageList;
    atTasks: TADOTable;
    dsTasks: TDataSource;
    atTasksID: TAutoIncField;
    atTasksNAME: TWideStringField;
    atTasksPARENTID: TIntegerField;
    atTasksUSERID: TIntegerField;
    atTasksSTARTDATE: TDateTimeField;
    atTasksENDDATE: TDateTimeField;
    atTasksDONE: TBooleanField;
    atTasksPRIORITY: TIntegerField;
    atTasksCOMPLETE: TIntegerField;
    atTasksTOTALCOST: TCurrencyField;
    atTasksTOTALREVENUES: TCurrencyField;
    atTasksEMAIL: TStringField;
    atTasksDONEINDEX: TIntegerField;
    tblCustomers: TADOTable;
    tblProducts: TADOTable;
    tblOrders: TADOTable;
    tblOrdersID: TAutoIncField;
    tblOrdersCustomerID: TIntegerField;
    tblOrdersProductID: TIntegerField;
    tblOrdersPurchaseDate: TDateTimeField;
    tblOrdersPaymentType: TStringField;
    tblOrdersPaymentAmount: TCurrencyField;
    tblOrdersDescription: TMemoField;
    tblOrdersQuantity: TIntegerField;
    tblOrdersProductName: TStringField;
    tblOrdersCustomer: TStringField;
    dsOrders: TDataSource;
    dsCustomers: TDataSource;
    acOrders: TADOConnection;
    dsMovieStars: TDataSource;
    dsMovieCountries: TDataSource;
    dsPersonsLine: TDataSource;
    dsMovies: TDataSource;
    cdsMovieStars: TClientDataSet;
    cdsMovieStarsID: TAutoIncField;
    cdsMovieStarsFIRSTNAME: TWideStringField;
    cdsMovieStarsSECONDNAME: TWideStringField;
    cdsMovieStarsBIRTHNAME: TWideStringField;
    cdsMovieStarsDATEOFBIRTH: TDateTimeField;
    cdsMovieStarsBIRTHCOUNTRY: TIntegerField;
    cdsMovieStarsLOCATIONOFBIRTH: TWideStringField;
    cdsMovieStarsBIOGRAPHY: TMemoField;
    cdsMovieStarsNICKNAME: TWideStringField;
    cdsMovieStarsGENDER: TBooleanField;
    cdsMovieStarsHOMEPAGE: TWideStringField;
    cdsMovieStarsAtMovieStarsPhotos: TDataSetField;
    cdsMovieCountries: TClientDataSet;
    cdsMovieCountriesID: TAutoIncField;
    cdsMovieCountriesName: TWideStringField;
    cdsMovieCountriesAcronym: TWideStringField;
    cdsMoviePersonsLine: TClientDataSet;
    cdsMoviePersonsLineID: TAutoIncField;
    cdsMoviePersonsLineName: TWideStringField;
    cdsMovies: TClientDataSet;
    cdsMoviesID: TAutoIncField;
    cdsMoviesCAPTION: TStringField;
    cdsMoviesYEAR: TIntegerField;
    cdsMoviesTAGLINE: TStringField;
    cdsMoviesPLOTOUTLINE: TStringField;
    cdsMoviesRUNTIME: TIntegerField;
    cdsMoviesCOLOR: TStringField;
    cdsMoviesPHOTO: TBlobField;
    cdsMoviesICON: TBlobField;
    cdsMoviesWEBSITE: TStringField;
    cdsMovieStarsPhotos: TClientDataSet;
    cdsMovieStarsPhotosID: TAutoIncField;
    cdsMovieStarsPhotosPersonID: TIntegerField;
    cdsMovieStarsPhotosPhoto: TBlobField;
    cdsMovieStarsPhotosIcon: TBlobField;
    dsMovieStarsPhotos: TDataSource;
    mdModels: TdxMemData;
    mdModelsID: TIntegerField;
    mdModelsTrademarkID: TIntegerField;
    mdModelsTrademark: TWideStringField;
    mdModelsName: TWideStringField;
    mdModelsFullName: TWideStringField;
    mdModelsModification: TWideStringField;
    mdModelsCategoryID: TIntegerField;
    mdModelsPrice: TBCDField;
    mdModelsMPG_City: TIntegerField;
    mdModelsMPG_Highway: TIntegerField;
    mdModelsDoors: TIntegerField;
    mdModelsBodyStyleID: TIntegerField;
    mdModelsCylinders: TIntegerField;
    mdModelsHorsepower: TWideStringField;
    mdModelsTorque: TWideStringField;
    mdModelsTransmission_Speeds: TWideStringField;
    mdModelsTransmission_Type: TIntegerField;
    mdModelsTransmissionTypeName: TStringField;
    mdModelsDescription: TWideMemoField;
    mdModelsImage: TBlobField;
    mdModelsPhoto: TBlobField;
    mdModelsDelivery_Date: TDateTimeField;
    mdModelsInStock: TBooleanField;
    mdModelsHyperlink: TStringField;
    mdBodyStyle: TdxMemData;
    mdBodyStyleID: TIntegerField;
    mdBodyStyleName: TWideStringField;
    mdCategory: TdxMemData;
    mdCategoryID: TIntegerField;
    mdCategoryName: TWideStringField;
    mdCategoryPicture: TBlobField;
    mdTrademark: TdxMemData;
    mdTrademarkID: TIntegerField;
    mdTrademarkName: TWideStringField;
    mdTrademarkSite: TWideStringField;
    mdTrademarkLogo: TBlobField;
    mdTrademarkDescription: TWideMemoField;
    mdTransmissionType: TdxMemData;
    mdTransmissionTypeID: TIntegerField;
    mdTransmissionTypeName: TWideStringField;
    dsModels: TDataSource;
    dsBodyStyle: TDataSource;
    dsCategory: TDataSource;
    dsTrademark: TDataSource;
    dsTransmissionType: TDataSource;
    EditRepository: TcxEditRepository;
    EditRepositoryCategoryLookup: TcxEditRepositoryLookupComboBoxItem;
    EditRepositoryTransmissionTypeLookup: TcxEditRepositoryLookupComboBoxItem;
    EditRepositoryBodyStyleLookup: TcxEditRepositoryLookupComboBoxItem;
    EditRepositoryMemoBlob: TcxEditRepositoryBlobItem;
    EditRepositoryImageBlob: TcxEditRepositoryBlobItem;
    EditRepositoryImage: TcxEditRepositoryImageItem;
    EditRepositoryMemo: TcxEditRepositoryMemoItem;
    EditRepositoryTransmissionTypeCheckBox: TcxEditRepositoryCheckBoxItem;
    mdDXCustomers: TdxMemData;
    mdDXCustomersID: TAutoIncField;
    mdDXCustomersFIRSTNAME: TWideStringField;
    mdDXCustomersLASTNAME: TWideStringField;
    mdDXCustomersCOMPANYNAME: TWideStringField;
    mdDXCustomersPAYMENTTYPE: TIntegerField;
    mdDXCustomersPRODUCTID: TIntegerField;
    mdDXCustomersCUSTOMER: TBooleanField;
    mdDXCustomersPURCHASEDATE: TDateTimeField;
    mdDXCustomersPAYMENTAMOUNT: TBCDField;
    mdDXCustomersCOPIES: TIntegerField;
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
    IntegerField1: TIntegerField;
    mdCarOrdersTrademark: TStringField;
    mdCarOrdersName: TWideStringField;
    mdCarOrdersModification: TWideStringField;
    mdCarOrdersPrice: TBCDField;
    mdCarOrdersMPG_City: TIntegerField;
    mdCarOrdersMPG_Highway: TIntegerField;
    mdCarOrdersBodyStyleID: TIntegerField;
    mdCarOrdersCylinders: TIntegerField;
    mdCarOrdersSalesDate: TDateField;
    mdCarOrdersBodyStyle: TStringField;
    mdCarOrdersDiscount: TFloatField;
    cdsProducts2: TClientDataSet;
    cdsProducts2ProductID: TIntegerField;
    cdsProducts2ProductName: TStringField;
    cdsProducts2SupplierID: TIntegerField;
    cdsProducts2CategoryID: TIntegerField;
    cdsProducts2QuantityPerUnit: TStringField;
    cdsProducts2UnitPrice: TFloatField;
    cdsProducts2UnitsInStock: TIntegerField;
    cdsProducts2UnitsOnOrder: TIntegerField;
    cdsProducts2ReorderLevel: TIntegerField;
    cdsProducts2Discontinued: TBooleanField;
    cdsProducts2EAN13: TStringField;
    mdOrder2: TdxMemData;
    mdOrder2OrderID: TIntegerField;
    mdOrder2ProductID: TIntegerField;
    mdOrder2UnitPrice: TFloatField;
    mdOrder2Quantity: TIntegerField;
    mdOrder2Discount: TFloatField;
    mdOrder2OrderDate: TDateTimeField;
    mdOrder2ProductName: TStringField;
    dsOrder2: TDataSource;
    dsCarOrdersAndDelivery: TDataSource;
    mdCarOrdersAndDelivery: TdxMemData;
    mdCarOrdersAndDeliveryTrademark: TStringField;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure atUsersCalcFields(DataSet: TDataSet);
    procedure atTasksCalcFields(DataSet: TDataSet);
    procedure atDXCustomersAfterOpen(DataSet: TDataSet);
  private
    procedure LoadCarOrders(const APath: string);
    procedure LoadCarOrdersAndDelivery;
    procedure LoadData(ADataSet: TClientDataSet);
  public
    function GetProductName(AID: Integer): string;
  end;

var
  dmMain: TdmMain;

implementation

uses
  System.SysConst, System.Win.Registry, System.Math;

{$R *.DFM}

const
  sInvalidData = 'Invalid data in %s dataset.';

function TdmMain.GetProductName(AID: Integer): string;
begin
  if tblProducts.Locate('ID', AID, []) then
    Result := tblProducts.FieldValues['Name']
  else
    Result := '';
end;

procedure TdmMain.LoadCarOrders(const APath: string);
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

procedure TdmMain.LoadCarOrdersAndDelivery;
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
      mdCarOrdersAndDeliveryTrademark.Value := mdCarOrdersTrademark.Value;
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
  finally
    mdTowns.EnableControls;
    mdCarOrders.EnableControls;
    mdCarOrdersAndDelivery.EnableControls;
  end;
end;

procedure TdmMain.LoadData(ADataSet: TClientDataSet);
var
  I: Integer;
  AFileName: string;
begin
  if (ADataSet = nil) or ADataSet.Active then Exit;
  AFileName := ADataSet.Name;
  if Pos('cds', AFileName) = 1 then
   Delete(AFileName, 1, 3);
  AFileName := ExtractFilePath(Application.EXEName) + 'Data\' + AFileName + '.cds';
  if not FileExists(AFileName) then
    raise EFileStreamError.Create(@SFileNotFound, AFileName);

  if ADataSet.MasterSource <> nil then
    LoadData(TClientDataSet(ADataSet.MasterSource.DataSet));
  for I := 0 to ADataSet.FieldCount - 1 do
    LoadData(ADataSet.Fields[I].LookupDataSet as TClientDataSet);
  ADataSet.LoadFromFile(AFileName);
  ADataSet.Active := True;
  if not ADataSet.Active then
    raise EDatabaseError.CreateFmt(sInvalidData, [ADataSet.Name]);
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  APath: string;
  I: Integer;
begin
  APath := ExtractFilePath(Application.ExeName) + 'Data\';
  mdBodyStyle.LoadFromBinaryFile(APath + 'CarsBodyStyle.dat');
  mdCategory.LoadFromBinaryFile(APath + 'CarsCategory.dat');
  mdModels.LoadFromBinaryFile(APath + 'CarsModel.dat');
  mdTrademark.LoadFromBinaryFile(APath + 'CarsTrademark.dat');
  mdTransmissionType.LoadFromBinaryFile(APath + 'CarsTransmissionType.dat');

  mdEmployeesGroups.LoadFromBinaryFile(APath + 'EmployeesGroups.dat');

  LoadCarOrders(APath);

  for I := 0 to ComponentCount -1 do
    if Components[I] is TADOConnection then
      with TADOConnection(Components[I]) do
      begin
        ConnectionString := Format(ConnectionString, [ExtractFilePath(Application.EXEName) + 'Data\']);
        Connected := True;
      end;

  for I := 0 to ComponentCount -1 do
    if Components[I] is TCustomADODataSet then
      TCustomADODataSet(Components[I]).Open;

  for I := ComponentCount -1 downto 0 do
    if Components[I] is TClientDataSet then
      LoadData(TClientDataSet(Components[I]));

  mdOrder2.LoadFromBinaryFile(APath + 'Order2.dat');

  mdTowns.LoadFromBinaryFile(APath + 'Towns.dat');

  mdCarOrdersAndDelivery.Active := True;
  LoadCarOrdersAndDelivery;
end;

procedure TdmMain.atUsersCalcFields(DataSet: TDataSet);
begin
  atUsersFullName.AsString := Format('%s %s %s', [atUsersFName.AsString, atUsersMName.AsString, atUsersLName.AsString]);
end;

procedure TdmMain.atDXCustomersAfterOpen(DataSet: TDataSet);
begin
  mdDXCustomers.LoadFromDataSet(atDXCustomers);
  ActualizeDateTimesFields(mdDXCustomers, ['PURCHASEDATE', 90]);
end;

procedure TdmMain.atTasksCalcFields(DataSet: TDataSet);
begin
  if DataSet.FindField('DONE').AsBoolean then
    DataSet.FindField('DONEINDEX').AsInteger := 1
  else
    DataSet.FindField('DONEINDEX').AsInteger := 0;
end;

end.
