object dmTreeList: TdmTreeList
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 345
  Width = 456
  object acBiolife: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Data\' +
      'biolife.mdb;Mode=ReadWrite;Persist Security Info=False;Jet OLEDB' +
      ':System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databas' +
      'e Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking' +
      ' Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bul' +
      'k Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:Cr' +
      'eate System Database=False;Jet OLEDB:Encrypt Database=False;Jet ' +
      'OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Witho' +
      'ut Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object atBiolife: TADOTable
    Connection = acBiolife
    CursorType = ctStatic
    TableName = 'BioLife'
    Left = 104
    Top = 16
    object atBiolifeID: TIntegerField
      FieldName = 'ID'
    end
    object atBiolifeSpeciesName: TWideStringField
      FieldName = 'Species Name'
      Size = 255
    end
    object atBiolifeParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object atBiolifeSpeciesNo: TIntegerField
      FieldName = 'Species No'
    end
    object atBiolifeLengthCm: TFloatField
      FieldName = 'Length(cm)'
    end
    object atBiolifeCategory: TWideStringField
      FieldName = 'Category'
      Size = 255
    end
    object atBiolifeCommonName: TWideStringField
      FieldName = 'Common Name'
      Size = 255
    end
    object atBiolifeNotes: TWideStringField
      FieldName = 'Notes'
      Size = 255
    end
    object atBiolifeMark: TBooleanField
      FieldName = 'Mark'
    end
    object atBiolifeRecordDate: TDateTimeField
      FieldName = 'RecordDate'
    end
  end
  object dsBiolife: TDataSource
    DataSet = atBiolife
    Left = 168
    Top = 16
  end
  object acIssuesList: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Data\' +
      'IssueListDB.mdb;Mode=Read;Extended Properties="";Persist Securit' +
      'y Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pat' +
      'h="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet ' +
      'OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=' +
      '2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Pa' +
      'ssword="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encry' +
      'pt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;J' +
      'et OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=Fals' +
      'e'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 88
  end
  object dsTasksAndUsers: TDataSource
    DataSet = aqTasksAndUsers
    Left = 168
    Top = 88
  end
  object aqTasksAndUsers: TADOQuery
    Connection = acIssuesList
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT T.*, U.* FROM Tasks T, Users U WHERE T.UserID = U.ID')
    Left = 104
    Top = 88
  end
  object acCars: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Data\Cars.mdb;Mode=' +
      'ReadWrite;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 160
  end
  object atCars: TADOTable
    Connection = acCars
    CursorType = ctStatic
    TableName = 'CARS'
    Left = 104
    Top = 160
    object atCarsPicture: TBlobField
      FieldName = 'Picture'
    end
    object atCarsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object atCarsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object atCarsModel: TWideStringField
      FieldName = 'Model'
      Size = 50
    end
    object atCarsHP: TWideStringField
      FieldName = 'HP'
    end
    object atCarsCyl: TWordField
      FieldName = 'Cylinders'
    end
    object atCarsTransmissSpeedCount: TWideStringField
      FieldName = 'Transmission Speeds'
    end
    object atCarsTransmissAutomatic: TBooleanField
      FieldName = 'TransmissAutomatic'
    end
    object atCarsMPG_City: TWordField
      FieldName = 'MPG City'
    end
    object atCarsMPG_Highway: TWordField
      FieldName = 'MPG Highway'
    end
    object atCarsPrice: TBCDField
      FieldName = 'Price'
      Precision = 19
    end
    object atCarsSmallPicture: TBlobField
      FieldName = 'Image'
    end
    object atCarsDescription: TMemoField
      FieldName = 'Description'
      BlobType = ftMemo
    end
  end
  object dsCars: TDataSource
    DataSet = atCars
    Left = 168
    Top = 160
  end
  object mdEmployeesGroups: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 360
    Top = 16
    object mdEmployeesGroupsId: TStringField
      FieldName = 'Id'
      Visible = False
      Size = 3
    end
    object mdEmployeesGroupsParentId: TStringField
      FieldName = 'ParentId'
      Visible = False
      Size = 3
    end
    object mdEmployeesGroupsJobTitle: TStringField
      DisplayLabel = 'Job Title'
      FieldName = 'JobTitle'
      Size = 40
    end
    object mdEmployeesGroupsFirstName: TStringField
      DisplayLabel = 'First Name'
      FieldName = 'FirstName'
      Size = 10
    end
    object mdEmployeesGroupsLastName: TStringField
      DisplayLabel = 'Last Name'
      FieldName = 'LastName'
      Size = 9
    end
    object mdEmployeesGroupsCity: TStringField
      DisplayLabel = 'Origin City'
      FieldName = 'City'
      Size = 12
    end
    object mdEmployeesGroupsStateProvinceName: TStringField
      DisplayLabel = 'Origin State'
      FieldName = 'StateProvinceName'
      Size = 13
    end
    object mdEmployeesGroupsPhone: TStringField
      FieldName = 'Phone'
      Size = 14
    end
    object mdEmployeesGroupsEmailAddress: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'EmailAddress'
      Size = 30
    end
    object mdEmployeesGroupsAddressLine1: TStringField
      DisplayLabel = 'Address Line'
      FieldName = 'AddressLine1'
      Size = 30
    end
    object mdEmployeesGroupsPostalCode: TStringField
      DisplayLabel = 'Postal Code'
      FieldName = 'PostalCode'
      Size = 5
    end
    object mdEmployeesGroupsSalaryCurrency: TStringField
      DisplayLabel = 'Salary Currency'
      FieldName = 'SalaryCurrency'
      Size = 30
    end
  end
  object dsEmployeesGroups: TDataSource
    DataSet = mdEmployeesGroups
    Left = 296
    Top = 16
  end
  object dsCarOrders: TDataSource
    DataSet = mdCarOrders
    Left = 296
    Top = 96
  end
  object mdCarOrders: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 366
    Top = 96
    object mdCarOrdersID: TIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object mdCarOrdersParentID: TIntegerField
      FieldName = 'ParentID'
      Visible = False
    end
    object mdCarOrdersName: TWideStringField
      DisplayLabel = 'Model'
      FieldName = 'Name'
      Size = 255
    end
    object mdCarOrdersModification: TWideStringField
      FieldName = 'Modification'
      Size = 255
    end
    object mdCarOrdersPrice: TBCDField
      FieldName = 'Price'
    end
    object mdCarOrdersMPG_City: TIntegerField
      DisplayLabel = 'City (mpg)'
      FieldName = 'MPG City'
    end
    object mdCarOrdersMPG_Highway: TIntegerField
      DisplayLabel = 'Highway (mpg)'
      FieldName = 'MPG Highway'
    end
    object mdCarOrdersBodyStyleID: TIntegerField
      FieldName = 'BodyStyleID'
      Visible = False
    end
    object mdCarOrdersCylinders: TIntegerField
      DisplayLabel = 'Cylinders'
      FieldName = 'Cylinders'
    end
    object mdCarOrdersSalesDate: TDateField
      DisplayLabel = 'Sales Date'
      FieldName = 'SalesDate'
    end
    object mdCarOrdersBodyStyle: TStringField
      DisplayLabel = 'Body Style'
      FieldKind = fkLookup
      FieldName = 'BodyStyle'
      LookupDataSet = mdBodyStyle
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'BodyStyleID'
      Size = 40
      Lookup = True
    end
    object mdCarOrdersDiscount: TFloatField
      FieldName = 'Discount'
    end
  end
  object mdBodyStyle: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 368
    Top = 160
    object mdBodyStyleID: TIntegerField
      FieldName = 'ID'
    end
    object mdBodyStyleName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
  end
  object dsBodyStyle: TDataSource
    DataSet = mdBodyStyle
    Left = 296
    Top = 160
  end
  object cdsProducts: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ProductID'
    Params = <>
    Left = 309
    Top = 248
    object cdsProductsProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object cdsProductsProductName: TStringField
      FieldName = 'ProductName'
      Size = 32
    end
    object cdsProductsSupplierID: TIntegerField
      FieldName = 'SupplierID'
    end
    object cdsProductsCategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object cdsProductsQuantityPerUnit: TStringField
      FieldName = 'QuantityPerUnit'
    end
    object cdsProductsUnitPrice: TFloatField
      FieldName = 'UnitPrice'
    end
    object cdsProductsUnitsInStock: TIntegerField
      FieldName = 'UnitsInStock'
    end
    object cdsProductsUnitsOnOrder: TIntegerField
      FieldName = 'UnitsOnOrder'
    end
    object cdsProductsReorderLevel: TIntegerField
      FieldName = 'ReorderLevel'
    end
    object cdsProductsDiscontinued: TBooleanField
      FieldName = 'Discontinued'
    end
    object cdsProductsEAN13: TStringField
      FieldName = 'EAN13'
      Size = 12
    end
  end
  object mdOrder: TdxMemData
    Indexes = <>
    SortOptions = []
    OnCalcFields = mdOrderCalcFields
    Left = 374
    Top = 248
    object IntegerField7: TIntegerField
      FieldName = 'OrderID'
    end
    object mdOrderParentOrderID: TIntegerField
      FieldName = 'ParentOrderID'
    end
    object IntegerField8: TIntegerField
      FieldName = 'ProductID'
    end
    object FloatField2: TFloatField
      FieldName = 'UnitPrice'
    end
    object IntegerField9: TIntegerField
      FieldName = 'Quantity'
    end
    object FloatField3: TFloatField
      FieldName = 'Discount'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'OrderDate'
    end
    object mdOrderProductName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ProductName'
      Size = 50
      Calculated = True
    end
  end
  object dsOrder: TDataSource
    DataSet = mdOrder
    Left = 374
    Top = 296
  end
  object dsCarOrdersAndDelivery: TDataSource
    DataSet = mdCarOrdersAndDelivery
    Left = 104
    Top = 313
  end
  object mdCarOrdersAndDelivery: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 313
    object mdCarOrdersAndDeliveryName: TWideStringField
      DisplayLabel = 'Model'
      FieldName = 'Name'
      Size = 255
    end
    object mdCarOrdersAndDeliveryBodyStyleID: TIntegerField
      FieldName = 'BodyStyleID'
      Visible = False
    end
    object mdCarOrdersAndDeliveryBodyStyle: TStringField
      DisplayLabel = 'Body Style'
      FieldKind = fkLookup
      FieldName = 'BodyStyle'
      LookupDataSet = mdBodyStyle
      LookupKeyFields = 'ID'
      LookupResultField = 'Name'
      KeyFields = 'BodyStyleID'
      Size = 40
      Lookup = True
    end
    object mdCarOrdersAndDeliveryPrice: TCurrencyField
      FieldName = 'Price'
    end
    object mdCarOrdersAndDeliverySalesDate: TDateField
      FieldName = 'SalesDate'
    end
    object mdCarOrdersAndDeliverySalesPrice: TCurrencyField
      FieldName = 'SalesPrice'
    end
    object mdCarOrdersAndDeliveryDeliveryDate: TDateField
      FieldName = 'DeliveryDate'
    end
    object mdCarOrdersAndDeliveryDeliveryComplete: TBooleanField
      FieldName = 'DeliveryComplete'
    end
    object mdCarOrdersAndDeliveryDeliveryFrom: TStringField
      FieldName = 'DeliveryFrom'
    end
    object mdCarOrdersAndDeliveryDeliveryTo: TStringField
      FieldName = 'DeliveryTo'
    end
    object mdCarOrdersAndDeliveryParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object mdCarOrdersAndDeliveryID: TIntegerField
      FieldName = 'ID'
    end
  end
  object dsTowns: TDataSource
    Left = 104
    Top = 257
  end
  object mdTowns: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 260
    object mdTownsID: TAutoIncField
      FieldName = 'ID'
    end
    object mdTownsName: TStringField
      FieldName = 'Name'
    end
  end
end
