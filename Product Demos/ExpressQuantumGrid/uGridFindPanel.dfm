inherited frmGridFindPanel: TfrmGridFindPanel
  Width = 723
  Height = 594
  ExplicitWidth = 723
  ExplicitHeight = 594
  inherited PanelDescription: TdxPanel
    Top = 530
    Width = 723
    ExplicitTop = 530
    ExplicitWidth = 723
    inherited lcBottomFrame: TdxLayoutControl
      Width = 723
      ExplicitWidth = 723
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 343
    Height = 530
    ExplicitWidth = 376
    ExplicitHeight = 530
    inherited Grid: TcxGrid
      Width = 343
      Height = 530
      LookAndFeel.ScrollbarMode = sbmClassic
      OnFocusedViewChanged = GridFocusedViewChanged
      ExplicitWidth = 376
      ExplicitHeight = 530
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
        FindPanel.UseExtendedSyntax = True
        FindPanel.Location = fplGroupByBox
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsCustomers2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = TableViewCompanyName
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        Preview.Column = TableViewAddress
        object TableViewCompanyName: TcxGridDBColumn
          Caption = 'Company Name'
          DataBinding.FieldName = 'CompanyName'
        end
        object TableViewContactTitle: TcxGridDBColumn
          Caption = 'Contact Title'
          DataBinding.FieldName = 'ContactTitle'
        end
        object TableViewContactName: TcxGridDBColumn
          Caption = 'Contact Name'
          DataBinding.FieldName = 'ContactName'
        end
        object TableViewCountry: TcxGridDBColumn
          DataBinding.FieldName = 'Country'
        end
        object TableViewCity: TcxGridDBColumn
          DataBinding.FieldName = 'City'
        end
        object TableViewAddress: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 343
    Width = 380
    Height = 530
    ExplicitLeft = 343
    ExplicitWidth = 380
    ExplicitHeight = 530
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 346
      ExplicitHeight = 530
      Height = 530
      Width = 379
      inherited lcFrame: TdxLayoutControl
        Width = 377
        Height = 510
        ExplicitWidth = 344
        ExplicitHeight = 510
        object cbeDisplayMode: TcxComboBox [0]
          Left = 115
          Top = 102
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Never'
            'Manual (Focus the grid and press Ctrl+F)'
            'Always')
          Properties.OnChange = cbeDisplayModePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Text = 'Manual (Focus the grid and press Ctrl+F)'
          Width = 252
        end
        object seFindDelay: TcxSpinEdit [1]
          Left = 115
          Top = 156
          Properties.MaxValue = 5000.000000000000000000
          Properties.MinValue = 100.000000000000000000
          Properties.OnChange = seFindDelayPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 5
          Value = 1000
          Width = 252
        end
        object cbeFindPanelPosition: TcxComboBox [2]
          Left = 115
          Top = 129
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Top'
            'Bottom')
          Properties.OnChange = cbeFindPanelPositionPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Text = 'Top'
          Width = 252
        end
        object icbFindFilterColumns: TcxImageComboBox [3]
          Left = 115
          Top = 183
          Properties.Items = <>
          Properties.OnChange = icbFindFilterColumnsPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 252
        end
        object cbeBehavior: TcxComboBox [4]
          Left = 115
          Top = 64
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Filter'
            'Search')
          Properties.OnChange = cbeBehaviorPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Text = 'Search'
          Width = 252
        end
        object cbeLocation: TcxComboBox [5]
          Left = 115
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Separate Panel'
            'Group By Box')
          Properties.OnEditValueChanged = cbeLocationEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Text = 'Group By Box'
          Width = 252
        end
        object cbeLayout: TcxComboBox [6]
          Left = 115
          Top = 37
          Enabled = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Default'
            'Compact')
          Properties.OnEditValueChanged = cbeLayoutPropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Text = 'Compact'
          Width = 252
        end
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.Width = 358
          ItemIndex = 4
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 325
          ShowBorder = False
          Index = 2
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignVert = avTop
          SizeOptions.Width = 230
          CaptionOptions.Text = 'Display Mode:'
          Control = cbeDisplayMode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignVert = avTop
          SizeOptions.Width = 230
          CaptionOptions.Text = 'Search Delay, ms:'
          Control = seFindDelay
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignVert = avTop
          SizeOptions.Width = 230
          CaptionOptions.Text = 'Find Panel Position:'
          Control = cbeFindPanelPosition
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignVert = avTop
          SizeOptions.Width = 230
          CaptionOptions.Text = 'Searchable Columns:'
          Control = icbFindFilterColumns
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = lgSetupTools
          AlignVert = avTop
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 3
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgCheckBoxes
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ItemIndex = 3
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = lgCheckBoxes
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 115
          ShowBorder = False
          Index = 2
        end
        object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
          Parent = lgCheckBoxes
          AlignVert = avClient
          SizeOptions.Height = 5
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object lgCheckBoxes: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 4
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 145
          ItemIndex = 2
          ShowBorder = False
          Index = 0
        end
        object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
          Parent = lgSetupTools
          AlignVert = avTop
          SizeOptions.Height = 5
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutGroup4
          AlignVert = avTop
          CaptionOptions.Text = 'Behavior:'
          Control = cbeBehavior
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = lgCheckBoxes
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.Width = 120
          ShowBorder = False
          Index = 4
        end
        object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
          Parent = lgCheckBoxes
          SizeOptions.Height = 5
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 3
        end
        object dxLayoutItem14: TdxLayoutItem
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Location:'
          Control = cbeLocation
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liLayout: TdxLayoutItem
          Parent = dxLayoutGroup4
          CaptionOptions.Text = 'Layout:'
          Control = cbeLayout
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object cbClearFindOnClose: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = actClearFindOnClose
          Index = 0
        end
        object cbHighlightSearchResults: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = actHighlightSearchResults
          Index = 1
        end
        object cbUseDelayedSearch: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = actUseDelayedSearch
          Index = 2
        end
        object cbUseExtendedSyntax: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = actUseExtendedSyntax
          Index = 3
        end
        object cbShowCloseButton: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          Action = actShowCloseButton
          Index = 0
        end
        object cbShowFindButton: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          Action = actShowFindButton
          Index = 1
        end
        object cbShowClearButton: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          Action = actShowClearButton
          Index = 2
        end
        object cxCheckBox1: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          SizeOptions.Height = 17
          SizeOptions.Width = 334
          Action = actShowPrevAndNextButtons
          Index = 3
        end
        object cxCheckBox2: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup5
          AlignVert = avTop
          Action = actSearchInPreview
          Index = 1
        end
        object cxCheckBox3: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup5
          AlignVert = avTop
          Action = actSearchInGroupRows
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 392
    Top = 32
    object actClearFindOnClose: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Clear Find Filter Text On Close'
      Checked = True
      OnExecute = actClearFindOnCloseExecute
    end
    object actHighlightSearchResults: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlight Search Results'
      Checked = True
      OnExecute = actHighlightSearchResultsExecute
    end
    object actUseDelayedSearch: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Delayed Search'
      Checked = True
      OnExecute = actUseDelayedSearchExecute
    end
    object actUseExtendedSyntax: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Extended Syntax'
      Checked = True
      OnExecute = actUseExtendedSyntaxExecute
    end
    object actShowCloseButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Close Button'
      Checked = True
      OnExecute = actShowCloseButtonExecute
    end
    object actShowFindButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Find Button'
      Checked = True
      OnExecute = actShowFindButtonExecute
    end
    object actShowClearButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Clear Button'
      Checked = True
      OnExecute = actShowClearButtonExecute
    end
    object actShowPrevAndNextButtons: TAction
      AutoCheck = True
      Caption = 'Show Prev/Next Buttons'
      Checked = True
      OnExecute = actShowPrevAndNextButtonsExecute
    end
    object actSearchInGroupRows: TAction
      AutoCheck = True
      Caption = 'Search In Group Rows'
      OnExecute = actSearchInGroupRowsExecute
    end
    object actSearchInPreview: TAction
      AutoCheck = True
      Caption = 'Search In Preview'
      OnExecute = actSearchInPreviewExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
