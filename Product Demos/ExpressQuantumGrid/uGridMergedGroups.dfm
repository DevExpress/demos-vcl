inherited frmGridMergedGroups: TfrmGridMergedGroups
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object TableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Append.Visible = False
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        FindPanel.DisplayMode = fpdmManual
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsCarOrders
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnGroupingChanged = TableViewDataControllerGroupingChanged
        OptionsBehavior.ColumnMergedGrouping = True
        OptionsBehavior.FixedGroups = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        object TableViewCompany: TcxGridDBColumn
          DataBinding.FieldName = 'Company'
          Visible = False
          GroupIndex = 1
        end
        object TableViewPurchaseDate: TcxGridDBColumn
          DataBinding.FieldName = 'PurchaseDate'
        end
        object TableViewTrademark: TcxGridDBColumn
          Caption = 'Trademark'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Trademark'
            end>
          Properties.ListSource = dmMain.dsModels
          Visible = False
          GroupIndex = 2
          IsChildInMergedGroup = True
          Options.SortByDisplayText = isbtOn
        end
        object TableViewModel: TcxGridDBColumn
          Caption = 'Model'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dmMain.dsModels
        end
        object TableViewQuantity: TcxGridDBColumn
          DataBinding.FieldName = 'Quantity'
        end
        object TableViewPrice: TcxGridDBColumn
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object TableViewPaymentAmount: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentAmount'
        end
        object TableViewPaymentType: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentType'
          Visible = False
          GroupIndex = 0
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
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
