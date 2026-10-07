inherited frmGridCheckBoxMultiSelect: TfrmGridCheckBoxMultiSelect
  inherited PanelGrid: TdxPanel
    Width = 680
    ExplicitWidth = 680
    inherited Grid: TcxGrid
      Width = 680
      ExplicitWidth = 680
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
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoMultiSelectionSyncGroupWithChildren]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skSum
            Column = TableViewQuantity
          end
          item
            Kind = skSum
            Column = TableViewPaymentAmount
          end
          item
            Kind = skCount
            Column = TableViewTrademarkLogo
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.Summary.Options = [soSelectedRecords]
        OptionsBehavior.FixedGroups = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.CheckBoxVisibility = [cbvDataRow, cbvGroupRow, cbvColumnHeader]
        OptionsSelection.MultiSelectMode = msmPersistent
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object TableViewTrademarkLogo: TcxGridDBColumn
          Caption = 'Trademark'
          DataBinding.FieldName = 'ProductID'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'TrademarkID'
            end>
          Properties.ListSource = dmMain.dsModels
          Properties.ReadOnly = False
          RepositoryItem = dmMain.edrepTrademarkLogo
          Options.Editing = False
          Options.SortByDisplayText = isbtOn
          Width = 290
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
          Width = 84
        end
        object TableViewCompany: TcxGridDBColumn
          DataBinding.FieldName = 'Company'
          Visible = False
          GroupIndex = 0
        end
        object TableViewQuantity: TcxGridDBColumn
          DataBinding.FieldName = 'Quantity'
        end
        object TableViewPrice: TcxGridDBColumn
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 86
        end
        object TableViewPaymentAmount: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentAmount'
          Width = 102
        end
        object TableViewPurchaseDate: TcxGridDBColumn
          DataBinding.FieldName = 'PurchaseDate'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 93
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 680
    Width = 242
    ExplicitLeft = 680
    ExplicitWidth = 242
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 241
      Width = 241
      inherited lcFrame: TdxLayoutControl
        Width = 239
        ExplicitWidth = 239
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 0
        end
        object lgCheckBoxPosition: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'Check Box Position'
          ItemIndex = 1
          Index = 2
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object lgCheckBoxVisibility: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'Check Box Visibility'
          ItemIndex = 2
          Index = 1
        end
        object cbGroupRowCheckBoxVisible: TdxLayoutCheckBoxItem
          Parent = lgCheckBoxVisibility
          AlignHorz = ahLeft
          Action = acGroupRowCheckBoxVisible
          Index = 1
        end
        object cbShowCheckBoxesDynamically: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup4
          AlignHorz = ahLeft
          AlignVert = avTop
          Action = acShowCheckBoxesDynamically
          Index = 1
        end
        object cbColumnHeaderCheckBoxVisible: TdxLayoutCheckBoxItem
          Parent = lgCheckBoxVisibility
          AlignHorz = ahLeft
          Action = acColumnHeaderCheckBoxVisible
          Index = 2
        end
        object cbClearSelectionOnClickOutsideSelection: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup4
          Action = acClearSelectionOnClickOutsideSelection
          Index = 2
        end
        object cbDataRowCheckBoxVisible: TdxLayoutCheckBoxItem
          Parent = lgCheckBoxVisibility
          AlignHorz = ahLeft
          Action = acDataRowCheckBoxVisible
          Index = 0
        end
        object cbPersistentSelection: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup4
          Action = acPersistentSelection
          Index = 0
        end
        object rbFirstColumn: TdxLayoutRadioButtonItem
          Parent = lgCheckBoxPosition
          AlignHorz = ahLeft
          SizeOptions.Height = 17
          SizeOptions.Width = 90
          CaptionOptions.Text = 'First Column'
          Checked = True
          GroupIndex = 1
          TabStop = True
          OnClick = CheckBoxPositionChanged
          Index = 0
        end
        object rbIndicator: TdxLayoutRadioButtonItem
          Parent = lgCheckBoxPosition
          AlignHorz = ahLeft
          SizeOptions.Height = 17
          SizeOptions.Width = 90
          CaptionOptions.Text = 'Indicator'
          GroupIndex = 1
          OnClick = CheckBoxPositionChanged
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acDataRowCheckBoxVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Data Rows'
      Checked = True
      OnExecute = acDataRowCheckBoxVisibleExecute
    end
    object acGroupRowCheckBoxVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Group Rows'
      Checked = True
      OnExecute = acGroupRowCheckBoxVisibleExecute
    end
    object acColumnHeaderCheckBoxVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Column Header'
      Checked = True
      OnExecute = acColumnHeaderCheckBoxVisibleExecute
    end
    object acShowCheckBoxesDynamically: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Check Boxes Dynamically'
      OnExecute = acShowCheckBoxesDynamicallyExecute
    end
    object acClearSelectionOnClickOutsideSelection: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Clear Selection With a Click Outside'
      OnExecute = acClearSelectionOnClickOutsideSelectionExecute
    end
    object acPersistentSelection: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Persistent Selection'
      Checked = True
      OnExecute = acPersistentSelectionExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
