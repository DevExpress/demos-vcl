inherited frmGridFixedGroups: TfrmGridFixedGroups
  inherited PanelGrid: TdxPanel
    Width = 784
    inherited Grid: TcxGrid
      Width = 784
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
        OptionsBehavior.FixedGroups = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
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
        object TableViewPaymentType: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentType'
          Visible = False
          GroupIndex = 0
        end
        object TableViewCompany: TcxGridDBColumn
          DataBinding.FieldName = 'Company'
          Visible = False
          GroupIndex = 1
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
        object TableViewPurchaseDate: TcxGridDBColumn
          DataBinding.FieldName = 'PurchaseDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 784
    Width = 138
    ExplicitLeft = 784
    ExplicitWidth = 138
    inherited gbSetupTools: TcxGroupBox
      Width = 137
      inherited lcFrame: TdxLayoutControl
        Width = 135
        object cbFixedGroups: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignHorz = ahClient
          Action = acFixedGroups
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acFixedGroups: TAction
      AutoCheck = True
      Caption = 'Fixed Groups'
      Checked = True
      OnExecute = acFixedGroupsExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
