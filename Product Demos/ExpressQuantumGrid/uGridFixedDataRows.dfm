inherited frmGridFixedDataRows: TfrmGridFixedDataRows
  Width = 710
  Height = 566
  ExplicitWidth = 710
  ExplicitHeight = 566
  inherited PanelDescription: TdxPanel
    Top = 502
    Width = 710
    ExplicitTop = 505
    ExplicitWidth = 710
    inherited lcBottomFrame: TdxLayoutControl
      Width = 710
      ExplicitWidth = 710
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 421
    Height = 502
    ExplicitWidth = 421
    ExplicitHeight = 505
    inherited Grid: TcxGrid
      Width = 421
      Height = 505
      ExplicitWidth = 421
      ExplicitHeight = 505
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
        FixedDataRows.PinVisibility = rpvRowHotTrack
        OptionsCustomize.DataRowFixing = True
        OptionsView.CellAutoHeight = True
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
          Visible = False
        end
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
        object TableViewCompany: TcxGridDBColumn
          DataBinding.FieldName = 'Company'
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
        object TableViewPaymentType: TcxGridDBColumn
          DataBinding.FieldName = 'PaymentType'
          RepositoryItem = dmMain.edrepDXStringPaymentTypeImageCombo
          Options.ShowGroupValuesWithImages = True
          Width = 116
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
    Left = 421
    Height = 502
    ExplicitLeft = 421
    ExplicitHeight = 502
    inherited gbSetupTools: TcxGroupBox
      ExplicitHeight = 502
      Height = 502
      inherited lcFrame: TdxLayoutControl
        Height = 482
        ExplicitTop = -6
        ExplicitHeight = 501
        object tbSeparatorWidth: TcxTrackBar [0]
          Left = 94
          Top = 10
          Position = 6
          Properties.Min = 2
          Properties.OnChange = tbSeparatorWidthPropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Transparent = True
          Height = 25
          Width = 182
        end
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.SizableHorz = False
        end
        object lgPinClickAction: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'Pin Click Action'
          ItemIndex = 1
          Index = 2
        end
        object lgPinVisibility: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'Pin Visibility'
          ItemIndex = 1
          Index = 1
        end
        object liSeparatorWidth: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'Separator Width'
          Control = tbSeparatorWidth
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 122
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object rbShowPopup: TdxLayoutRadioButtonItem
          Parent = lgPinClickAction
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          CaptionOptions.Text = 'Show Popup'
          Checked = True
          GroupIndex = 1
          TabStop = True
          OnClick = rbFixationCapabilityClick
          Index = 0
        end
        object rbNone: TdxLayoutRadioButtonItem
          Parent = lgPinClickAction
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          CaptionOptions.Text = 'None'
          GroupIndex = 1
          OnClick = rbFixationCapabilityClick
          Index = 1
        end
        object rbFixRowToTop: TdxLayoutRadioButtonItem
          Parent = lgPinClickAction
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          CaptionOptions.Text = 'Fix Row to Top'
          GroupIndex = 1
          OnClick = rbFixationCapabilityClick
          Index = 2
        end
        object rbFixRowToBottom: TdxLayoutRadioButtonItem
          Parent = lgPinClickAction
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          CaptionOptions.Text = 'Fix Row to Bottom'
          GroupIndex = 1
          OnClick = rbFixationCapabilityClick
          Index = 3
        end
        object rbPinVisibilityNever: TdxLayoutRadioButtonItem
          Parent = lgPinVisibility
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          Action = acPinVisibilityNever
          Index = 0
        end
        object rbPinVisibilityHover: TdxLayoutRadioButtonItem
          Parent = lgPinVisibility
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          Action = acPinVisibilityHover
          CaptionOptions.Text = 'On Hover'
          Index = 2
        end
        object rbPinVisibilityAlways: TdxLayoutRadioButtonItem
          Parent = lgPinVisibility
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          Action = acPinVisibilityAlways
          Index = 1
        end
        object rbPinVisibilityRowHover: TdxLayoutRadioButtonItem
          Parent = lgPinVisibility
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 182
          Action = acPinVisibilityRowHover
          CaptionOptions.Text = 'When Hover over Row'
          TabStop = True
          Index = 3
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 208
    Top = 152
    object acPinVisibilityNever: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Never'
      GroupIndex = 2
      OnExecute = acPinVisibilityExecute
    end
    object acPinVisibilityAlways: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Always'
      GroupIndex = 2
      OnExecute = acPinVisibilityExecute
    end
    object acPinVisibilityHover: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Hover'
      GroupIndex = 2
      OnExecute = acPinVisibilityExecute
    end
    object acPinVisibilityRowHover: TAction
      AutoCheck = True
      Caption = 'Row Hover'
      Checked = True
      GroupIndex = 2
      OnExecute = acPinVisibilityExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
