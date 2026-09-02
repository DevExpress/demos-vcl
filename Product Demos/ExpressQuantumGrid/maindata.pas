unit MainData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections,
  Data.DB, Vcl.ImgList, cxDBEditRepository, cxEditRepositoryItems, cxEdit,
  Datasnap.DBClient, cxGraphics, cxClasses, dxmdaset, MidasLib, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxHyperLinkEdit,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView, System.DateUtils,
  cxGridDBBandedTableView, cxControls, cxGridCustomView, cxGrid, dxRichEdit.DocumentServer,
  cxDBExtLookupComboBox, cxImageList, cxExtEditRepositoryItems, dxDateRanges, dxScrollbarAnnotations;

type
  TdmMain = class(TDataModule)
    BarManagerImages: TImageList;
    dsUsers: TDataSource;
    dsDepartment: TDataSource;
    dsItems: TDataSource;
    dsProjects: TDataSource;
    dsProjectTeam: TDataSource;
    edrepMain: TcxEditRepository;
    edrepUserLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepPhoneItem: TcxEditRepositoryMaskItem;
    edrepProjectLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepTypeImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepPriorityImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepStatusImageCombo: TcxEditRepositoryImageComboBoxItem;
    dsDXCustomers: TDataSource;
    dsDXProducts: TDataSource;
    edrepDXProductLookup: TcxEditRepositoryLookupComboBoxItem;
    edrepDXPaymentTypeImageCombo: TcxEditRepositoryImageComboBoxItem;
    dsMovieStars: TDataSource;
    dsMovieCountries: TDataSource;
    dsMovieStarsPhotos: TDataSource;
    edrepMovieCountryLookupCombo: TcxEditRepositoryLookupComboBoxItem;
    dsPersonsLine: TDataSource;
    edrepGenderImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepMoviePersonsLineLookupCombo: TcxEditRepositoryLookupComboBoxItem;
    dsMovies: TDataSource;
    edrepDepartmentLookup: TcxEditRepositoryLookupComboBoxItem;
    dsTasks: TDataSource;
    dsOrders: TDataSource;
    dsCustomers: TDataSource;
    cdsUsers: TClientDataSet;
    cdsUsersID: TAutoIncField;
    cdsUsersFNAME: TWideStringField;
    cdsUsersMNAME: TWideStringField;
    cdsUsersLNAME: TWideStringField;
    cdsUsersEMAIL: TWideStringField;
    cdsUsersPHONE: TWideStringField;
    cdsUsersDepartmentName: TStringField;
    cdsUsersDEPARTMENTID: TIntegerField;
    cdsUsersFullName: TStringField;
    cdsDepartments: TClientDataSet;
    cdsDepartmentsID: TAutoIncField;
    cdsDepartmentsNAME: TWideStringField;
    cdsItems: TClientDataSet;
    cdsItemsID: TAutoIncField;
    cdsItemsNAME: TWideStringField;
    cdsItemsTYPE: TBooleanField;
    cdsItemsPROJECTID: TIntegerField;
    cdsItemsPRIORITY: TSmallintField;
    cdsItemsSTATUS: TSmallintField;
    cdsItemsCREATORID: TIntegerField;
    cdsItemsCREATEDDATE: TDateTimeField;
    cdsItemsOWNERID: TIntegerField;
    cdsItemsLASTMODIFIEDDATE: TDateTimeField;
    cdsItemsFIXEDDATE: TDateTimeField;
    cdsItemsDESCRIPTION: TMemoField;
    cdsItemsRESOLUTION: TMemoField;
    cdsProjects: TClientDataSet;
    cdsProjectTeam: TClientDataSet;
    cdsProjectsID: TAutoIncField;
    cdsProjectsNAME: TWideStringField;
    cdsProjectsMANAGERID: TIntegerField;
    cdsProjectTeamID: TAutoIncField;
    cdsProjectTeamPROJECTID: TIntegerField;
    cdsProjectTeamUSERID: TIntegerField;
    cdsProjectTeamFUNCTION: TWideStringField;
    cdsTasks: TClientDataSet;
    cdsTasksID: TAutoIncField;
    cdsTasksNAME: TWideStringField;
    cdsTasksPARENTID: TIntegerField;
    cdsTasksUSERID: TIntegerField;
    cdsTasksSTARTDATE: TDateTimeField;
    cdsTasksENDDATE: TDateTimeField;
    cdsTasksDONE: TBooleanField;
    cdsTasksPRIORITY: TIntegerField;
    cdsTasksCOMPLETE: TIntegerField;
    cdsTasksTOTALCOST: TCurrencyField;
    cdsTasksTOTALREVENUES: TCurrencyField;
    cdsTasksEMAIL: TStringField;
    cdsTasksDONEINDEX: TIntegerField;
    cdsCustomers: TClientDataSet;
    cdsProducts: TClientDataSet;
    cdsOrders: TClientDataSet;
    cdsCustomersID: TIntegerField;
    cdsCustomersFirstName: TWideStringField;
    cdsCustomersLastName: TWideStringField;
    cdsCustomersCompany: TWideStringField;
    cdsCustomersPrefix: TWideStringField;
    cdsCustomersTitle: TWideStringField;
    cdsCustomersAddress: TWideStringField;
    cdsCustomersCity: TWideStringField;
    cdsCustomersState: TWideStringField;
    cdsCustomersZipCode: TWideStringField;
    cdsCustomersSource: TWideStringField;
    cdsCustomersCustomer: TWideStringField;
    cdsCustomersHomePhone: TWideStringField;
    cdsCustomersFaxPhone: TWideStringField;
    cdsCustomersSpouse: TWideStringField;
    cdsCustomersOccupation: TWideStringField;
    cdsCustomersDescription: TMemoField;
    cdsCustomersEmail: TWideStringField;
    cdsProductsID: TIntegerField;
    cdsProductsName: TWideStringField;
    cdsProductsDescription: TMemoField;
    cdsProductsPlatform: TWideStringField;
    cdsProductsLogo: TBlobField;
    cdsProductsLink: TMemoField;
    cdsOrdersID: TAutoIncField;
    cdsOrdersCustomerID: TIntegerField;
    cdsOrdersProductID: TIntegerField;
    cdsOrdersPurchaseDate: TDateTimeField;
    cdsOrdersPaymentType: TStringField;
    cdsOrdersPaymentAmount: TCurrencyField;
    cdsOrdersDescription: TMemoField;
    cdsOrdersQuantity: TIntegerField;
    cdsOrdersProductName: TStringField;
    cdsOrdersCustomer: TStringField;
    cdsDXCustomers: TClientDataSet;
    cdsDXProducts: TClientDataSet;
    cdsDXCustomersID: TAutoIncField;
    cdsDXCustomersFIRSTNAME: TWideStringField;
    cdsDXCustomersLASTNAME: TWideStringField;
    cdsDXCustomersCOMPANYNAME: TWideStringField;
    cdsDXCustomersPAYMENTTYPE: TIntegerField;
    cdsDXCustomersPRODUCTID: TIntegerField;
    cdsDXCustomersCUSTOMER: TBooleanField;
    cdsDXCustomersPURCHASEDATE: TDateTimeField;
    cdsDXCustomersPAYMENTAMOUNT: TBCDField;
    cdsDXCustomersCOPIES: TIntegerField;
    cdsDXProductsID: TAutoIncField;
    cdsDXProductsName: TWideStringField;
    cdsMovieStars: TClientDataSet;
    cdsMovieCountries: TClientDataSet;
    cdsMovieStarsPhotos: TClientDataSet;
    cdsMoviePersonsLine: TClientDataSet;
    cdsMovies: TClientDataSet;
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
    cdsMovieCountriesID: TAutoIncField;
    cdsMovieCountriesName: TWideStringField;
    cdsMovieCountriesAcronym: TWideStringField;
    cdsMovieStarsPhotosID: TAutoIncField;
    cdsMovieStarsPhotosPersonID: TIntegerField;
    cdsMovieStarsPhotosPhoto: TBlobField;
    cdsMovieStarsPhotosIcon: TBlobField;
    cdsMoviePersonsLineID: TAutoIncField;
    cdsMoviePersonsLineName: TWideStringField;
    cdsSales: TClientDataSet;
    cdsSalesName: TWideStringField;
    cdsSalesAmount: TFloatField;
    cdsSalesByQuarter: TClientDataSet;
    cdsSalesByQuarterName: TWideStringField;
    cdsSalesByQuarterAmount: TFloatField;
    cdsSalesProducts: TClientDataSet;
    cdsSalesProductsCustomerID: TIntegerField;
    cdsSalesProductsName: TWideStringField;
    cdsSalesProductsQuantity: TFloatField;
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
    NavBarSmallImages: TcxImageList;
    dsSaleCars: TDataSource;
    cdsSaleCars: TClientDataSet;
    cdsSaleCarsProductID: TIntegerField;
    cdsSaleCarsCustomerID: TIntegerField;
    cdsSaleCarsSUMOFQuantity: TFloatField;
    dsOrdersSmall: TDataSource;
    cdsOrdersSmall: TClientDataSet;
    cdsOrdersSmallID: TAutoIncField;
    cdsOrdersSmallCustomerID: TIntegerField;
    cdsOrdersSmallProductID: TIntegerField;
    cdsOrdersSmallPurchaseDate: TDateTimeField;
    cdsOrdersSmallPaymentType: TStringField;
    cdsOrdersSmallQuantity: TIntegerField;
    cdsOrdersSmallUnitPrice: TCurrencyField;
    cdsOrdersSmallCompanyName: TStringField;
    cdsOrdersSmallCarName: TStringField;
    cdsOrdersSmallPA: TCurrencyField;
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
    cdsSaleCarsCarName: TStringField;
    mdModelsCategory: TStringField;
    mdModelsBodyStyle: TStringField;
    mdHomesInterior: TdxMemData;
    mdHomesInteriorID: TIntegerField;
    mdHomesInteriorParentID: TIntegerField;
    mdHomesInteriorPhoto: TBlobField;
    dsHomesInterior: TDataSource;
    mdHomes: TdxMemData;
    mdHomesID: TIntegerField;
    mdHomesAddress: TMemoField;
    mdHomesBeds: TSmallintField;
    mdHomesBaths: TSmallintField;
    mdHomesHouseSize: TFloatField;
    mdHomesLotSize: TFloatField;
    mdHomesPrice: TFloatField;
    mdHomesFeatures: TMemoField;
    mdHomesYearBuilt: TMemoField;
    mdHomesType: TIntegerField;
    mdHomesStatus: TIntegerField;
    mdHomesPhoto: TBlobField;
    mdHomesAgentId: TIntegerField;
    dsHomes: TDataSource;
    mdAgents: TdxMemData;
    mdAgentsID: TIntegerField;
    mdAgentsFirstName: TMemoField;
    mdAgentsLastName: TMemoField;
    mdAgentsPhone: TMemoField;
    mdAgentsEmail: TMemoField;
    mdAgentsPhoto: TBlobField;
    dsAgents: TDataSource;
    EditRepositoryTrademarkLookup: TcxEditRepositoryExtLookupComboBoxItem;
    GridViewRepository: TcxGridViewRepository;
    GridViewRepositoryDBBandedTableView: TcxGridDBBandedTableView;
    GridViewRepositoryDBBandedTableViewRecId: TcxGridDBBandedColumn;
    GridViewRepositoryDBBandedTableViewID: TcxGridDBBandedColumn;
    GridViewRepositoryDBBandedTableViewName: TcxGridDBBandedColumn;
    GridViewRepositoryDBBandedTableViewSite: TcxGridDBBandedColumn;
    GridViewRepositoryDBBandedTableViewLogo: TcxGridDBBandedColumn;
    GridViewRepositoryDBBandedTableViewDescription: TcxGridDBBandedColumn;
    mdCarOrders: TdxMemData;
    dsCarOrders: TDataSource;
    mdCarOrdersID: TAutoIncField;
    mdCarOrdersCustomerID: TIntegerField;
    mdCarOrdersProductID: TIntegerField;
    mdCarOrdersPurchaseDate: TDateTimeField;
    mdCarOrdersPaymentType: TStringField;
    mdCarOrdersDescription: TMemoField;
    mdCarOrdersQuantity: TIntegerField;
    mdCarOrdersCompany: TStringField;
    mdCarOrdersPaymentAmount: TCurrencyField;
    mdCarOrdersPrice: TCurrencyField;
    ilMain: TcxImageList;
    cdsFoods: TClientDataSet;
    cdsFoodsCategories: TClientDataSet;
    cdsFoodsProductID: TAutoIncField;
    cdsFoodsProductName: TWideStringField;
    cdsFoodsSupplierID: TIntegerField;
    cdsFoodsCategoryID: TIntegerField;
    cdsFoodsQuantityPerUnit: TWideStringField;
    cdsFoodsUnitPrice: TBCDField;
    cdsFoodsUnitsInStock: TSmallintField;
    cdsFoodsUnitsOnOrder: TSmallintField;
    cdsFoodsReorderLevel: TSmallintField;
    cdsFoodsDiscontinued: TBooleanField;
    cdsFoodsEAN13: TWideStringField;
    cdsFoodsCategoriesCategoryID: TAutoIncField;
    cdsFoodsCategoriesCategoryName: TWideStringField;
    cdsFoodsCategoriesDescription: TStringField;
    cdsFoodsCategoriesPicture: TBlobField;
    cdsFoodsCategoriesIcon_17: TBlobField;
    cdsFoodsCategoriesIcon_25: TBlobField;
    dsFoods: TDataSource;
    dsFoodsCategories: TDataSource;
    mdEmployees: TdxMemData;
    mdEmployeesEmployeeID: TAutoIncField;
    mdEmployeesLastName: TWideStringField;
    mdEmployeesFirstName: TWideStringField;
    mdEmployeesTitle: TWideStringField;
    mdEmployeesTitleOfCourtesy: TWideStringField;
    mdEmployeesBirthDate: TDateTimeField;
    mdEmployeesHireDate: TDateTimeField;
    mdEmployeesAddress: TWideStringField;
    mdEmployeesCity: TWideStringField;
    mdEmployeesRegion: TWideStringField;
    mdEmployeesPostalCode: TWideStringField;
    mdEmployeesCountry: TWideStringField;
    mdEmployeesHomePhone: TWideStringField;
    mdEmployeesExtension: TWideStringField;
    mdEmployeesPhoto: TBlobField;
    mdEmployeesNotes: TWideMemoField;
    mdEmployeesReportsTo: TIntegerField;
    dsEmployees: TDataSource;
    ilLogo: TcxImageList;
    StyleRepository: TcxStyleRepository;
    cxStyleBold: TcxStyle;
    edrepDXStringPaymentTypeImageCombo: TcxEditRepositoryImageComboBoxItem;
    edrepTrademarkLogo: TcxEditRepositoryImageComboBoxItem;
    mdModelsRating: TFloatField;
    edrepModelRating: TcxEditRepositoryRatingControl;
    cxStyleBoldTimes12: TcxStyle;
    edrepReadUnreadImageCombo2: TcxEditRepositoryImageComboBoxItem;
    cdsConditionalFormatting: TClientDataSet;
    cdsConditionalFormattingState: TStringField;
    cdsConditionalFormattingSales: TFloatField;
    cdsConditionalFormattingProfit: TFloatField;
    cdsConditionalFormattingSalesVsTarget: TFloatField;
    cdsConditionalFormattingMarketShare: TFloatField;
    cdsConditionalFormattingCustomersSatisfaction: TFloatField;
    dsConditionalFormatting: TDataSource;
    mdCarOrders2: TdxMemData;
    mdCarOrdersTrademark: TStringField;
    mdCarOrdersName: TWideStringField;
    mdCarOrdersModification: TWideStringField;
    mdCarOrders2Price: TBCDField;
    mdCarOrdersMPG_City: TIntegerField;
    mdCarOrdersMPG_Highway: TIntegerField;
    mdCarOrdersBodyStyleID: TIntegerField;
    mdCarOrdersCylinders: TIntegerField;
    mdCarOrdersSalesDate: TDateField;
    mdCarOrdersBodyStyle: TStringField;
    dsCarOrders2: TDataSource;
    mdCarOrders2Discount: TFloatField;
    cdsCustomers2: TClientDataSet;
    dsCustomers2: TDataSource;
    cdsCustomers2CustomerID: TStringField;
    cdsCustomers2CompanyName: TStringField;
    cdsCustomers2ContactName: TStringField;
    cdsCustomers2ContactTitle: TStringField;
    cdsCustomers2Address: TStringField;
    cdsCustomers2City: TStringField;
    cdsCustomers2PostalCode: TStringField;
    cdsCustomers2Country: TStringField;
    cdsCustomers2Phone: TStringField;
    cdsCustomers2Fax: TStringField;
    cdsCustomers2Region: TStringField;
    dsOrder2: TDataSource;
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
    mdCarOrdersAndTransfer: TdxMemData;
    dsCarOrdersAndTransfer: TDataSource;
    mdCarOrdersAndTransferTrademark: TStringField;
    mdCarOrdersAndTransferName: TWideStringField;
    mdCarOrdersAndTransferBodyStyleID: TIntegerField;
    mdCarOrdersAndTransferBodyStyle: TStringField;
    mdCarOrdersAndTransferSalesDate: TDateField;
    mdCarOrdersAndTransferSalesPrice: TCurrencyField;
    mdCarOrdersAndTransferPrice: TCurrencyField;
    mdTowns: TdxMemData;
    dsTowns: TDataSource;
    mdTownsName: TStringField;
    mdTownsID: TAutoIncField;
    mdCarOrdersAndTransferDeliveryDate: TDateField;
    mdCarOrdersAndTransferDeliveryComplete: TBooleanField;
    mdCarOrdersAndTransferDeliveryFrom: TStringField;
    mdCarOrdersAndTransferDeliveryTo: TStringField;
    mdCarOrdersAndTransferModelID: TIntegerField;
    mdEmployeesDev: TdxMemData;
    dsEmployeesDev: TDataSource;
    mdEmployeesDevId: TIntegerField;
    mdEmployeesDevDepartment: TIntegerField;
    mdEmployeesDevTitle: TWideStringField;
    mdEmployeesDevStatus: TIntegerField;
    mdEmployeesDevHireDate: TDateTimeField;
    mdEmployeesDevPersonalProfile: TWideStringField;
    mdEmployeesDevFirstName: TWideStringField;
    mdEmployeesDevLastName: TWideStringField;
    mdEmployeesDevFullName: TWideStringField;
    mdEmployeesDevPrefix: TIntegerField;
    mdEmployeesDevHomePhone: TWideStringField;
    mdEmployeesDevMobilePhone: TWideStringField;
    mdEmployeesDevEmail: TWideStringField;
    mdEmployeesDevSkype: TWideStringField;
    mdEmployeesDevBirthDate: TDateTimeField;
    mdEmployeesDevPictureId: TIntegerField;
    mdEmployeesDevAddress_Line: TWideStringField;
    mdEmployeesDevAddress_City: TWideStringField;
    mdEmployeesDevAddress_State: TIntegerField;
    mdEmployeesDevAddress_ZipCode: TWideStringField;
    mdEmployeesDevAddress_Latitude: TFloatField;
    mdEmployeesDevAddress_Longitude: TFloatField;
    mdEmployeesDevProbationReason_Id: TIntegerField;
    mdEmployeesDevPicture: TBlobField;
    mdTasksDev: TdxMemData;
    dsTasksDev: TDataSource;
    mdTasksDevId: TIntegerField;
    mdTasksDevSubject: TWideStringField;
    mdTasksDevDescription: TWideStringField;
    mdTasksDevRtfTextDescription: TWideStringField;
    mdTasksDevStartDate: TDateTimeField;
    mdTasksDevDueDate: TDateTimeField;
    mdTasksDevStatus: TIntegerField;
    mdTasksDevPriority: TIntegerField;
    mdTasksDevCompletion: TIntegerField;
    mdTasksDevReminder: TBooleanField;
    mdTasksDevReminderDateTime: TDateTimeField;
    mdTasksDevAssignedEmployeeId: TIntegerField;
    mdTasksDevOwnerId: TIntegerField;
    mdTasksDevCustomerEmployeeId: TIntegerField;
    mdTasksDevFollowUp: TIntegerField;
    mdTasksDevPrivate: TBooleanField;
    mdTasksDevCategory: TWideStringField;
    mdTasksDevAttachedCollectionsChanged: TBooleanField;
    edrepEmployeeDevPhoto: TcxEditRepositoryImageItem;
    mdStates: TdxMemData;
    mdStatesID: TIntegerField;
    mdStatesShortName: TStringField;
    mdStatesLongName: TWideStringField;
    mdStatesFlag48px: TBlobField;
    mdStatesFlag24px: TBlobField;
    dsStates: TDataSource;
    edrepEmployeeState: TcxEditRepositoryLookupComboBoxItem;
    mdDepartment: TdxMemData;
    mdDepartmentDepartment_ID: TAutoIncField;
    mdDepartmentDepartment_Name: TWideStringField;
    dsDepartmentDev: TDataSource;
    edrepEmployeeDepartment: TcxEditRepositoryLookupComboBoxItem;
    mdStatus: TdxMemData;
    mdStatusStatus_ID: TIntegerField;
    mdStatusStatus_Name: TStringField;
    dsStatus: TDataSource;
    edrepEmployeeStatus: TcxEditRepositoryLookupComboBoxItem;
    mdPrefix: TdxMemData;
    mdPrefixPrefix_ID: TIntegerField;
    mdPrefixPrefix_Name: TStringField;
    dsPrefix: TDataSource;
    edrepEmployeePrefix: TcxEditRepositoryLookupComboBoxItem;
    mdEmployeesDevPrefixByID: TStringField;
    edrepTaskFullName: TcxEditRepositoryLookupComboBoxItem;
    edrepTaskProgress: TcxEditRepositoryProgressBar;
    mdEmployeesDevLevel: TIntegerField;
    mdMessages: TdxMemData;
    dsMessage: TDataSource;
    mdMessagesSubject: TStringField;
    mdMessagesText: TMemoField;
    mdMessagesDay: TStringField;
    mdMessagesFrom: TStringField;
    mdMessagesPlainText: TStringField;
    mdMessagesSender: TStringField;
    mdMessagesDate: TDateTimeField;
    mdMessagesPriority: TIntegerField;
    mdMessagesRead: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure UsersCalcFields(DataSet: TDataSet);
    procedure TasksCalcFields(DataSet: TDataSet);
    procedure mdModelsCalcFields(DataSet: TDataSet);
    procedure mdCarOrdersCalcFields(DataSet: TDataSet);
    procedure cdsNewRecord(DataSet: TDataSet);
  private
    function GetMessageDate(ANow: TDateTime; ADayOffset: Integer; const ASender: string): TDateTime;
    function GetMessagePlainText(const ARtfText: string): string;
    function GetMessagePriority(const ASubject: string; ASendDate, ANow: TDateTime): Integer; virtual;
    function GetMessageRead(const ASubject: string; ASendDate, ANow: TDateTime): Boolean; virtual;
    function GetMessageSender(const AEmail: string): string;
    procedure LoadCarOrdersAndTransfer;
    procedure LoadCarOrders2(const APath: string);
    procedure LoadData(ADataSet: TClientDataSet);
    procedure LoadMessages(const APath: string);
    procedure LoadModelsData(const APath: string);
  protected
    FPrimaryKeyValues: TDictionary<TDataSet, Integer>;
    procedure ActualizeDates;
    procedure FillEmployeesDevLevel;
    procedure FillLogoDescription;
  public
    procedure GetMessagePicture(const AEmail: string; out APicture: TArray<Byte>);
    function GetProductName(AID: Integer): string;
  end;

var
  dmMain: TdmMain;

implementation

{$R *.DFM}

uses
  System.SysConst, dxCore, dxDemoUtils, cxImageComboBox, System.Math;

const
  sInvalidData = 'Invalid data in %s dataset.';

function GetAutoIncField(ADataSet: TDataSet): TField;
var
  I: Integer;
begin
  for I := 0 to ADataSet.FieldCount - 1 do
    if ADataSet.Fields[I] is TAutoIncField then
      Exit(ADataSet.Fields[I]);
  Result := nil;
end;

procedure TdmMain.ActualizeDates;
begin
  ActualizeDateTimesFields(cdsItems, ['CREATEDDATE', 0, 'LASTMODIFIEDDATE', 0, 'FIXEDDATE', 0]);
  ActualizeDateTimesFields(cdsDXCustomers, ['PURCHASEDATE', 20]);
  ActualizeDateTimesFields(mdCarOrders, ['PURCHASEDATE', 10]);
  ActualizeDateTimesFields(cdsOrdersSmall, ['PURCHASEDATE', 10]);
end;

procedure TdmMain.FillEmployeesDevLevel;
begin
  mdEmployeesDev.DisableControls;
  try
    mdEmployeesDev.First;
    while not mdEmployeesDev.Eof do
    begin
      mdEmployeesDev.Edit;
      mdEmployeesDevLevel.Value := Random(3) + 3;
      mdEmployeesDev.Post;
      mdEmployeesDev.Next;
    end;
    mdEmployeesDev.First;
  finally
    mdEmployeesDev.EnableControls;
  end;
end;

procedure TdmMain.FillLogoDescription;
var
  I: Integer;
  AItems: TcxImageComboBoxItems;
begin
  AItems := edrepTrademarkLogo.Properties.Items;
  for I := 0 to AItems.Count - 1 do
    AItems[I].Description := mdTrademark.Lookup(mdTrademarkID.FieldName, AItems[I].Value, mdTrademarkName.FieldName);
end;

procedure TdmMain.GetMessagePicture(const AEmail: string; out APicture: TArray<Byte>);
var
  ARecNo: Integer;
begin
  mdEmployeesDev.DisableControls;
  try
    ARecNo := mdEmployeesDev.RecNo;
    try
      mdEmployeesDev.Locate(mdEmployeesDevEmail.FieldName, AEmail, []);
      APicture := mdEmployeesDevPicture.Value;
    finally
      mdEmployeesDev.RecNo := ARecNo;
    end;
  finally
    mdEmployeesDev.EnableControls;
  end;
end;

function TdmMain.GetProductName(AID: Integer): string;
begin
  if cdsProducts.Locate('ID', AID, []) then
    Result := cdsProducts.FieldValues['Name']
  else
    Result := '';
end;

function TdmMain.GetMessageDate(ANow: TDateTime; ADayOffset: Integer; const ASender: string): TDateTime;
begin
  Result := ANow + ADayOffset;
  if (ADayOffset <> 0) or not ASender.StartsWith('Antony') then
    Result := Result - 1 / Max(1, Random(50));
end;

function TdmMain.GetMessagePlainText(const ARtfText: string): string;
var
  ADocumentServer: TdxRichEditDocumentServer;
begin
  ADocumentServer := TdxRichEditDocumentServer.Create(nil);
  try
    ADocumentServer.RtfText := ARtfText;
    Result := ADocumentServer.Text;
    Result := Result.Trim;
    Result := Result.Replace(#13#10, ' ');
  finally
    ADocumentServer.Free;
  end;
end;

function TdmMain.GetMessagePriority(const ASubject: string; ASendDate, ANow: TDateTime): Integer;
var
  ADelay: Integer;
begin
  ADelay := Round(HourSpan(ANow, ASendDate));
  if (ASubject.IndexOf('Review') >= 0) or (ASubject.IndexOf('Important') >= 0) then
    Result := 2
  else
    if (ASubject.IndexOf('FW') >= 0) and (ADelay < 48) then
      Result := 0
    else
      Result := 1;
end;

function TdmMain.GetMessageRead(const ASubject: string; ASendDate, ANow: TDateTime): Boolean;
var
  ADelay: Integer;
begin
  ADelay := Round(HourSpan(ANow, ASendDate));
  Result := (ADelay > 48) and not InRange(ADelay, 80, 120) and (ASubject.IndexOf('RE:') = -1) and (ASubject.IndexOf('FW:') = -1);
end;

function TdmMain.GetMessageSender(const AEmail: string): string;
begin
  Result := mdEmployeesDev.Lookup(mdEmployeesDevEmail.FieldName, AEmail, mdEmployeesDevFullName.FieldName);
end;

procedure TdmMain.LoadCarOrdersAndTransfer;
var
  ANow: TDate;
  APrice: Currency;
  ATownCount: Integer;
begin
  ANow := Now;
  ATownCount := mdTowns.RecordCount;
  mdCarOrdersAndTransfer.DisableControls;
  mdCarOrders2.DisableControls;
  mdTowns.DisableControls;
  mdModels.DisableControls;
  try
    mdCarOrders2.First;
    while not mdCarOrders2.Eof do
    begin
      mdCarOrdersAndTransfer.Insert;
      mdCarOrdersAndTransferTrademark.Value := mdCarOrdersTrademark.Value;
      mdCarOrdersAndTransferName.Value := mdCarOrdersName.Value;
      mdCarOrdersAndTransferModelID.Value := mdModels.Lookup(mdModelsName.FieldName, mdCarOrdersAndTransferName.Value, mdModelsID.FieldName);
      mdCarOrdersAndTransferBodyStyleID.Value := mdCarOrdersBodyStyleID.Value;
      mdCarOrdersAndTransferPrice.Value := mdCarOrders2Price.Value;
      APrice := mdCarOrdersAndTransferPrice.Value;
      if Random(3) = 0 then
        APrice := APrice * (115 - Random(31)) / 100;
      mdCarOrdersAndTransferSalesPrice.Value := APrice;
      mdCarOrdersAndTransferSalesDate.Value := ANow - Random(10);
      mdCarOrdersAndTransferDeliveryFrom.Value := AnsiString(mdTowns.Lookup(mdTownsID.FieldName, Random(ATownCount), mdTownsName.FieldName));
      if Random(3) = 0 then
        mdCarOrdersAndTransferDeliveryTo.Value := AnsiString(mdTowns.Lookup(mdTownsID.FieldName, Random(ATownCount), mdTownsName.FieldName))
      else
        mdCarOrdersAndTransferDeliveryTo.Value := mdCarOrdersAndTransferDeliveryFrom.Value;
      mdCarOrdersAndTransferDeliveryDate.Value := Max(mdCarOrdersAndTransferSalesDate.Value, ANow + 5 - Random(15));
      mdCarOrdersAndTransferDeliveryComplete.Value := (Random(10) > 0) and (mdCarOrdersAndTransferDeliveryDate.Value <= ANow);
      mdCarOrdersAndTransfer.Post;
      mdCarOrders2.Next;
    end;
    mdCarOrdersAndTransfer.SortedField := mdCarOrdersAndTransferModelID.FieldName;
  finally
    mdModels.EnableControls;
    mdTowns.EnableControls;
    mdCarOrders2.EnableControls;
    mdCarOrdersAndTransfer.EnableControls;
  end;
end;

procedure TdmMain.LoadCarOrders2(const APath: string);
var
  ANow: TDate;
begin
  mdCarOrders2.LoadFromBinaryFile(APath + 'CarOrders2.dat');
  ANow := Now;
  mdCarOrders2.DisableControls;
  try
    mdCarOrders2.First;
    while not mdCarOrders2.Eof do
    begin
      mdCarOrders2.Edit;
      mdCarOrdersSalesDate.Value := ANow - Random(1500);
      mdCarOrders2.Post;
      mdCarOrders2.Next;
    end;
  finally
    mdCarOrders2.EnableControls;
  end;
end;

procedure TdmMain.LoadData(ADataSet: TClientDataSet);
var
  AFileName: string;
  ALookupDataSet: TDataSet;
  I: Integer;
  AField: TField;
begin
  if (ADataSet = nil) or ADataSet.Active then Exit;
  AFileName := ADataSet.Name;
  if Pos('cds', AFileName) = 1 then
   Delete(AFileName, 1, 3);

  AFileName := ExtractFilePath(Application.EXEName) + 'Data_cds\' + AFileName + '.cds';
  if not FileExists(AFileName) then
    raise EFileStreamError.Create(@SFileNotFound, AFileName);

  if ADataSet.MasterSource <> nil then
    LoadData(TClientDataSet(ADataSet.MasterSource.DataSet));
  for I := 0 to ADataSet.FieldCount - 1 do
  begin
    ALookupDataSet := ADataSet.Fields[I].LookupDataSet;
    if (ALookupDataSet <> nil) and not ALookupDataSet.Active then
      LoadData(ALookupDataSet as TClientDataSet);
  end;
  ADataSet.LoadFromFile(AFileName);
  ADataSet.Active := True;
  if Assigned(ADataSet.OnNewRecord) then
  begin
    AField := GetAutoIncField(ADataSet);
    if (AField <> nil) and not AField.ReadOnly then
    begin
      I := 0;
      while not ADataSet.Eof do
      begin
        if  AField.AsInteger > I then
          I := AField.AsInteger;
        ADataSet.Next;
      end;
      FPrimaryKeyValues.Add(ADataSet, I);
      ADataSet.First;
    end;
  end;
  if not ADataSet.Active then
    raise EDatabaseError.CreateFmt(sInvalidData, [ADataSet.Name]);
end;

procedure TdmMain.LoadMessages(const APath: string);
var
  ANow: TDateTime;
begin
  mdMessages.DisableControls;
  try
    mdMessages.LoadFromBinaryFile(APath + 'Messages.dat');
    ANow := Now;
    mdMessages.First;
    while not mdMessages.Eof do
    begin
      mdMessages.Edit;
      mdMessagesSender.AsString := GetMessageSender(mdMessagesFrom.AsString);
      mdMessagesDate.Value := GetMessageDate(ANow, mdMessagesDay.AsInteger, mdMessagesSender.AsString);
      mdMessagesPriority.Value := GetMessagePriority(mdMessagesSubject.AsString, mdMessagesDate.Value, ANow);
      mdMessagesRead.Value := GetMessageRead(mdMessagesSubject.AsString, mdMessagesDate.Value, ANow);
      mdMessagesPlainText.AsString := GetMessagePlainText(mdMessagesText.AsString);
      mdMessages.Post;
      mdMessages.Next;
    end;
    mdMessages.First;
  finally
    mdMessages.EnableControls;
  end;
end;

procedure TdmMain.LoadModelsData(const APath: string);
begin
  mdModels.DisableControls;
  try
    mdModels.LoadFromBinaryFile(APath + 'CarsModel.dat');
    mdModels.First;
    while not mdModels.Eof do
    begin
      mdModels.Edit;
      mdModelsRating.Value := 3.7 + Random(14) / 10;
      mdModels.Post;
      mdModels.Next;
    end;
    mdModels.First;
  finally
    mdModels.EnableControls;
  end;
end;

procedure TdmMain.mdCarOrdersCalcFields(DataSet: TDataSet);
begin
  mdCarOrdersPaymentAmount.Value := mdCarOrdersQuantity.Value * mdCarOrdersPrice.Value;
end;

procedure TdmMain.mdModelsCalcFields(DataSet: TDataSet);
begin
  mdModelsFullName.Value := mdModelsTrademark.Value + ' ' + mdModelsName.Value;
end;

procedure TdmMain.cdsNewRecord(DataSet: TDataSet);
var
  AId: Integer;
begin
  AId := FPrimaryKeyValues[DataSet];
  Inc(AId);
  FPrimaryKeyValues[DataSet] := AId;
  GetAutoIncField(DataSet).AsInteger := AId;
end;

procedure TdmMain.DataModuleCreate(Sender: TObject);
var
  APath: string;
  I: Integer;
begin
  FPrimaryKeyValues := TDictionary<TDataSet, Integer>.Create;
  APath := ExtractFilePath(Application.ExeName) + 'Data\';
  mdBodyStyle.LoadFromBinaryFile(APath + 'CarsBodyStyle.dat');
  mdCategory.LoadFromBinaryFile(APath + 'CarsCategory.dat');
  mdEmployees.LoadFromBinaryFile(APath + 'Employees.dat');
  LoadModelsData(APath);
  mdTrademark.LoadFromBinaryFile(APath + 'CarsTrademark.dat');
  mdTransmissionType.LoadFromBinaryFile(APath + 'CarsTransmissionType.dat');

  mdHomesInterior.LoadFromBinaryFile(APath + 'HomesInterior.dat');
  mdHomes.LoadFromBinaryFile(APath + 'Homes.dat');
  mdAgents.LoadFromBinaryFile(APath + 'Agents.dat');

  mdBodyStyle.Active := True;
  mdCategory.Active := True;
  mdTrademark.Active := True;
  mdTransmissionType.Active := True;
  mdModels.Active := True;

  mdHomesInterior.Active := True;
  mdHomes.Active := True;
  mdAgents.Active := True;

  for I := ComponentCount -1 downto 0 do
    if Components[I] is TClientDataSet then
      LoadData(TClientDataSet(Components[I]));

  mdCarOrders.LoadFromBinaryFile(APath + 'CarOrders.dat');

  LoadCarOrders2(APath);

  mdOrder2.LoadFromBinaryFile(APath + 'Order2.dat');

  mdTowns.LoadFromBinaryFile(APath + 'Towns.dat');

  mdCarOrdersAndTransfer.Active := True;
  LoadCarOrdersAndTransfer;

  FillLogoDescription;

  mdEmployeesDev.LoadFromBinaryFile(APath + 'EmployeesDev.dat');
  FillEmployeesDevLevel;
  mdStates.LoadFromBinaryFile(APath + 'States.dat');
  mdDepartment.LoadFromBinaryFile(APath + 'Department.dat');
  mdStatus.LoadFromBinaryFile(APath + 'Status.dat');
  mdPrefix.LoadFromBinaryFile(APath + 'Prefix.dat');
  mdTasksDev.LoadFromBinaryFile(APath + 'TasksDev.dat');
  mdTasksDev.SortedField := mdTasksDevAssignedEmployeeId.FieldName;

  LoadMessages(APath);

  ActualizeDates;
end;

procedure TdmMain.DataModuleDestroy(Sender: TObject);
begin
  FPrimaryKeyValues.Free;
end;

procedure TdmMain.UsersCalcFields(DataSet: TDataSet);
begin
  cdsUsersFullName.AsString := Format('%s %s %s', [cdsUsersFName.AsString,
    cdsUsersMName.AsString, cdsUsersLName.AsString]);
end;

procedure TdmMain.TasksCalcFields(DataSet: TDataSet);
begin
  if DataSet.FindField('DONE').AsBoolean then
    DataSet.FindField('DONEINDEX').AsInteger := 1
  else DataSet.FindField('DONEINDEX').AsInteger := 0;
end;

end.
