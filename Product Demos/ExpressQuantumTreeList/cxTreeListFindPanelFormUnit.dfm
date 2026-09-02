inherited frmFindPanel: TfrmFindPanel
  Caption = 'Find Panel'
  ClientHeight = 527
  ClientWidth = 914
  ExplicitWidth = 914
  ExplicitHeight = 527
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 914
    Height = 527
    ExplicitWidth = 914
    ExplicitHeight = 527
    inherited tlDB: TcxDBTreeList
      Width = 513
      Height = 469
      Bands = <
        item
        end>
      DataController.DataSource = dmTreeList.dsEmployeesGroups
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'Id'
      FindPanel.DisplayMode = fpdmManual
      FindPanel.Layout = fplCompact
      FindPanel.UseExtendedSyntax = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      TabOrder = 6
      ExplicitWidth = 513
      ExplicitHeight = 469
      object tlDBRecId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'RecId'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'Id'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBParentId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ParentId'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBJobTitle: TcxDBTreeListColumn
        DataBinding.FieldName = 'JobTitle'
        Width = 190
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <
          item
            AlignHorz = taLeftJustify
            Kind = skCount
          end>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBFirstName: TcxDBTreeListColumn
        DataBinding.FieldName = 'FirstName'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBLastName: TcxDBTreeListColumn
        DataBinding.FieldName = 'LastName'
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBCity: TcxDBTreeListColumn
        DataBinding.FieldName = 'City'
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBStateProvinceName: TcxDBTreeListColumn
        DataBinding.FieldName = 'StateProvinceName'
        Width = 100
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPhone: TcxDBTreeListColumn
        DataBinding.FieldName = 'Phone'
        Width = 100
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBEmailAddress: TcxDBTreeListColumn
        DataBinding.FieldName = 'EmailAddress'
        Width = 100
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBAddressLine1: TcxDBTreeListColumn
        DataBinding.FieldName = 'AddressLine1'
        Width = 100
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPostalCode: TcxDBTreeListColumn
        DataBinding.FieldName = 'PostalCode'
        Width = 100
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cbeDisplayMode: TcxComboBox [1]
      Left = 653
      Top = 107
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Never'
        'Manual (Focus the tree list and press Ctrl+F)'
        'Always')
      Properties.OnChange = cbeDisplayModePropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Manual (Focus the tree list and press Ctrl+F)'
      Width = 242
    end
    object seFindDelay: TcxSpinEdit [2]
      Left = 653
      Top = 161
      Properties.MaxValue = 5000.000000000000000000
      Properties.MinValue = 100.000000000000000000
      Properties.OnChange = seFindDelayPropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Value = 1000
      Width = 242
    end
    object cbeFindPanelPosition: TcxComboBox [3]
      Left = 653
      Top = 134
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Top'
        'Bottom')
      Properties.OnChange = cbeFindPanelPositionPropertiesChange
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Top'
      Width = 242
    end
    object icbFindFilterColumns: TcxImageComboBox [4]
      Left = 653
      Top = 188
      Properties.Items = <>
      Properties.OnChange = icbFindFilterColumnsPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Width = 242
    end
    object cbeBehavior: TcxComboBox [5]
      Left = 653
      Top = 66
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Filter'
        'Search')
      Properties.OnChange = cbeBehaviorPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'Filter'
      Width = 242
    end
    object cbeLayout: TcxComboBox [6]
      Left = 653
      Top = 41
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Default'
        'Compact')
      Properties.OnEditValueChanged = cbeLayoutPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Text = 'Compact'
      Width = 242
    end
    inherited lgMainGroup: TdxLayoutGroup
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      SizeOptions.Width = 365
      ItemIndex = 4
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 354
      ItemIndex = 3
      ShowBorder = False
      Index = 2
    end
    object liDisplayMode: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Display Mode:'
      Control = cbeDisplayMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Search Delay, ms:'
      Control = seFindDelay
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Find Panel Position:'
      Control = cbeFindPanelPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Searchable Columns:'
      Control = icbFindFilterColumns
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgCheckBoxes
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgCheckBoxes
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 160
      ItemIndex = 3
      ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lgCheckBoxes
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object lgCheckBoxes: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Behavior'
      Control = cbeBehavior
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object liLayout: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Layout'
      Control = cbeLayout
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object cbClearFindOnClose: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      Action = actClearFindOnClose
      Index = 0
    end
    object cbHighlightSearchResults: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      Action = actHighlightSearchResults
      Index = 1
    end
    object cbUseDelayedSearch: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      Action = actUseDelayedSearch
      Index = 2
    end
    object cbUseExtendedSyntax: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      Action = actUseExtendedSyntax
      Index = 3
    end
    object cbShowCloseButton: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      Action = actShowCloseButton
      Index = 0
    end
    object cbShowFindButton: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      Action = actShowFindButton
      Index = 1
    end
    object cbShowClearButton: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      Action = actShowClearButton
      Index = 2
    end
    object cxCheckBox1: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      Action = actShowPrevAndNextButtons
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object alCustomCheckBoxes: TActionList [3]
    Left = 104
    Top = 160
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
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
