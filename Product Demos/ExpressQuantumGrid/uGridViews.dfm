inherited frmViewsGrid: TfrmViewsGrid
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object vMaster: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsCustomers
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object vMasterCompany: TcxGridDBColumn
          DataBinding.FieldName = 'Company'
        end
      end
      object vTableDetail: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsOrdersSmall
        DataController.DetailKeyFieldNames = 'CustomerID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        object vTableDetailCarName: TcxGridDBColumn
          Caption = 'Product'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'FullName'
            end>
          Properties.ListSource = dmMain.dsModels
        end
        object vTableDetailPurchaseDate: TcxGridDBColumn
          DataBinding.FieldName = 'PurchaseDate'
        end
        object vTableDetailPaymentType: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentType'
          RepositoryItem = dmMain.edrepDXStringPaymentTypeImageCombo
          Visible = False
          GroupIndex = 0
        end
        object vTableDetailQuantity: TcxGridDBColumn
          DataBinding.FieldName = 'Quantity'
        end
        object vTableDetailUnitPrice: TcxGridDBColumn
          Caption = 'Price'
          DataBinding.FieldName = 'Unit Price'
        end
      end
      object vCardDetail: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsSaleCars
        DataController.DetailKeyFieldNames = 'CustomerID'
        DataController.MasterKeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CardIndent = 7
        OptionsView.CardWidth = 350
        OptionsView.CellAutoHeight = True
        object vCardDetailCarName: TcxGridDBCardViewRow
          Caption = 'Car Name'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'FullName'
            end>
          Properties.ListSource = dmMain.dsModels
          Position.BeginsLayer = True
        end
        object vCardDetailHyperlink: TcxGridDBCardViewRow
          Caption = 'Home Site'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Hyperlink'
            end>
          Properties.ListSource = dmMain.dsModels
          Position.BeginsLayer = True
        end
      end
      object vChartDetail: TcxGridDBChartView
        Categories.DataBinding.FieldName = 'CarName'
        DataController.DataSource = dmMain.dsSaleCars
        DataController.DetailKeyFieldNames = 'CustomerID'
        DataController.MasterKeyFieldNames = 'ID'
        DiagramStackedColumn.Active = True
        DiagramStackedColumn.Values.VaryColorsByCategory = True
        object vChartDetailSeries1: TcxGridDBChartSeries
          DataBinding.FieldName = 'SUM OF Quantity'
        end
      end
      object lvlMain: TcxGridLevel
        GridView = vMaster
        MaxDetailHeight = 300
        Options.DetailTabsPosition = dtpTop
        object lvlTableDetail: TcxGridLevel
          Caption = 'Orders (Table)'
          GridView = vTableDetail
        end
        object lvlCardDetail: TcxGridLevel
          Caption = 'Orders (Cards)'
          GridView = vCardDetail
        end
        object lvlChartDetail: TcxGridLevel
          Caption = 'Orders (Charts)'
          GridView = vChartDetail
        end
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Visible = False
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        inherited lgSetupTools: TdxLayoutGroup
          Visible = False
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
