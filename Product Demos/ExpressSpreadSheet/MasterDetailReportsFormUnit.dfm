inherited frmMasterDetailReports: TfrmMasterDetailReports
  inherited lcCustom: TdxLayoutControl
    Top = 40
    Height = 265
    inherited pnlSite: TPanel
      inherited ReportDesigner: TdxSpreadSheetReportDesigner
        DataBinding.DataSource = dsMaster
        DataBinding.Options.DisplayName = 'Suppliers'
        Options.ReportMode = rmMultipleSheets
        Data = {
          8C02000044585353763242461000000042465320000000000000000001000101
          010100000100000001004246532000000000424653200100000001000000200B
          00000007000000430061006C0069006200720069000000000000002000000020
          0000000020000000000020000000000020000000000020000007000000470045
          004E004500520041004C00000000000002000000000000000001424653200100
          0000424653201D00000054006400780053007000720065006100640053006800
          6500650074005200650070006F00720074005400610062006C00650056006900
          650077000600000053006800650065007400310001FFFFFFFFFFFFFFFF640000
          0002000000020000000200000055000000140000000200000002000000000200
          0000020000000000000100000000000101000042465320550000000000000042
          4653200000000042465320140000000000000042465320000000000000000000
          0000000100000000000000000000000000000000000000424653200000000002
          0200000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000064000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000200020200020000000000000000000000
          0000000000000200000000000000000000000000000000000000000000000000
          0000000000000000000002020000000000000000424653200000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000}
      end
    end
  end
  inherited ssFormulaBar: TdxSpreadSheetFormulaBar
    Height = 23
    SpreadSheet = ReportDesigner
    ExplicitHeight = 23
  end
  inherited Splitter: TcxSplitter
    Top = 29
  end
  object ReportDesignerDetail1: TdxSpreadSheetReportDetail
    DataGroups = <>
    DataSource = dsDetailLevel0
    MasterKeyFieldName = 'SupplierID'
    DetailKeyFieldName = 'SupplierID'
    Options.DisplayName = 'Products'
    SectionID = 0
    SortedFields = <>
    object ReportDesignerDetail2: TdxSpreadSheetReportDetail
      DataGroups = <>
      DataSource = dsDetailLevel1
      MasterKeyFieldName = 'ProductID'
      DetailKeyFieldName = 'ProductID'
      Options.DisplayName = 'OrderReports'
      SectionID = 1
      SortedFields = <>
    end
  end
  object dsMaster: TDataSource
    DataSet = mdsMaster
    Left = 256
    Top = 96
  end
  object mdsMaster: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedFields = 'SupplierID'
    Left = 336
    Top = 96
    object mdsMasterSupplierID: TAutoIncField
      FieldName = 'SupplierID'
    end
    object mdsMasterCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 40
    end
    object mdsMasterContactName: TWideStringField
      FieldName = 'ContactName'
      Size = 30
    end
    object mdsMasterContactTitle: TWideStringField
      FieldName = 'ContactTitle'
      Size = 30
    end
    object mdsMasterAddress: TWideStringField
      FieldName = 'Address'
      Size = 60
    end
    object mdsMasterCity: TWideStringField
      FieldName = 'City'
      Size = 15
    end
    object mdsMasterRegion: TWideStringField
      FieldName = 'Region'
      Size = 15
    end
    object mdsMasterPostalCode: TWideStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object mdsMasterCountry: TWideStringField
      FieldName = 'Country'
      Size = 15
    end
    object mdsMasterPhone: TWideStringField
      FieldName = 'Phone'
      Size = 24
    end
    object mdsMasterFax: TWideStringField
      FieldName = 'Fax'
      Size = 24
    end
    object mdsMasterHomePage: TWideMemoField
      FieldName = 'HomePage'
      BlobType = ftWideMemo
    end
  end
  object dsDetailLevel0: TDataSource
    DataSet = mdsDetailLevel0
    Left = 256
    Top = 147
  end
  object mdsDetailLevel0: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedFields = 'SupplierID'
    Left = 336
    Top = 147
    object mdsDetailLevel0ProductID: TAutoIncField
      FieldName = 'ProductID'
    end
    object mdsDetailLevel0ProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 40
    end
    object mdsDetailLevel0SupplierID: TIntegerField
      FieldName = 'SupplierID'
    end
    object mdsDetailLevel0CategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object mdsDetailLevel0QuantityPerUnit: TWideStringField
      FieldName = 'QuantityPerUnit'
    end
    object mdsDetailLevel0UnitPrice: TBCDField
      FieldName = 'UnitPrice'
    end
    object mdsDetailLevel0UnitsInStock: TSmallintField
      FieldName = 'UnitsInStock'
    end
    object mdsDetailLevel0UnitsOnOrder: TSmallintField
      FieldName = 'UnitsOnOrder'
    end
    object mdsDetailLevel0ReorderLevel: TSmallintField
      FieldName = 'ReorderLevel'
    end
    object mdsDetailLevel0Discontinued: TBooleanField
      FieldName = 'Discontinued'
    end
    object mdsDetailLevel0EAN13: TWideStringField
      FieldName = 'EAN13'
      Size = 12
    end
  end
  object dsDetailLevel1: TDataSource
    DataSet = mdsDetailLevel1
    Left = 256
    Top = 203
  end
  object mdsDetailLevel1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedFields = 'ProductID'
    OnCalcFields = mdsDetailLevel1CalcFields
    Left = 336
    Top = 203
    object mdsDetailLevel1OrderID: TIntegerField
      FieldName = 'OrderID'
    end
    object mdsDetailLevel1ProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object mdsDetailLevel1UnitPrice: TBCDField
      FieldName = 'UnitPrice'
    end
    object mdsDetailLevel1Quantity: TSmallintField
      FieldName = 'Quantity'
    end
    object mdsDetailLevel1Discount: TFloatField
      FieldName = 'Discount'
    end
    object mdsDetailLevel1SubTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
  end
end
