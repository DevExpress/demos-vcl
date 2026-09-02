inherited frmInvoiceReport: TfrmInvoiceReport
  inherited lcCustom: TdxLayoutControl
    Top = 40
    Height = 265
    inherited pnlSite: TPanel
      inherited ReportDesigner: TdxSpreadSheetReportDesigner
        DataBinding.DataGroups = <
          item
            FieldName = 'OrderID'
          end>
        DataBinding.DataSource = dsInvoice
        DataBinding.Options.DisplayName = 'Invoice'
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
  object mdsInvoice: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 280
    Top = 192
    object mdsInvoiceShipName: TWideStringField
      FieldName = 'ShipName'
      Size = 40
    end
    object mdsInvoiceShipAddress: TWideStringField
      FieldName = 'ShipAddress'
      Size = 60
    end
    object mdsInvoiceShipCity: TWideStringField
      FieldName = 'ShipCity'
      Size = 15
    end
    object mdsInvoiceShipRegion: TWideStringField
      FieldName = 'ShipRegion'
      Size = 15
    end
    object mdsInvoiceShipPostalCode: TWideStringField
      FieldName = 'ShipPostalCode'
      Size = 10
    end
    object mdsInvoiceShipCountry: TWideStringField
      FieldName = 'ShipCountry'
      Size = 15
    end
    object mdsInvoiceCustomerID: TWideStringField
      FieldName = 'CustomerID'
      Size = 5
    end
    object mdsInvoiceCustomers_CompanyName: TWideStringField
      FieldName = 'Customers.CompanyName'
      Size = 40
    end
    object mdsInvoiceAddress: TWideStringField
      FieldName = 'Address'
      Size = 60
    end
    object mdsInvoiceCity: TWideStringField
      FieldName = 'City'
      Size = 15
    end
    object mdsInvoiceRegion: TWideStringField
      FieldName = 'Region'
      Size = 15
    end
    object mdsInvoicePostalCode: TWideStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object mdsInvoiceCountry: TWideStringField
      FieldName = 'Country'
      Size = 15
    end
    object mdsInvoiceSalesperson: TWideStringField
      FieldName = 'Salesperson'
      Size = 255
    end
    object mdsInvoiceOrderID: TAutoIncField
      FieldName = 'OrderID'
    end
    object mdsInvoiceOrderDate: TDateTimeField
      FieldName = 'OrderDate'
    end
    object mdsInvoiceRequiredDate: TDateTimeField
      FieldName = 'RequiredDate'
    end
    object mdsInvoiceShippedDate: TDateTimeField
      FieldName = 'ShippedDate'
    end
    object mdsInvoiceShippers_CompanyName: TWideStringField
      FieldName = 'Shippers.CompanyName'
      Size = 40
    end
    object mdsInvoiceProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object mdsInvoiceProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 40
    end
    object mdsInvoiceUnitPrice: TBCDField
      FieldName = 'UnitPrice'
    end
    object mdsInvoiceQuantity: TSmallintField
      FieldName = 'Quantity'
    end
    object mdsInvoiceDiscount: TFloatField
      FieldName = 'Discount'
    end
    object mdsInvoiceExtendedPrice: TBCDField
      FieldName = 'ExtendedPrice'
    end
    object mdsInvoiceFreight: TBCDField
      FieldName = 'Freight'
    end
  end
  object dsInvoice: TDataSource
    DataSet = mdsInvoice
    Left = 208
    Top = 192
  end
end
