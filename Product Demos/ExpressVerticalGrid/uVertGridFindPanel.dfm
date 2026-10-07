inherited frmVerticalGridFindPanel: TfrmVerticalGridFindPanel
  Width = 746
  Height = 495
  inherited lcFrame: TdxLayoutControl
    Width = 746
    Height = 495
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 362
      Height = 420
      FindPanel.DisplayMode = fpdmManual
      FindPanel.Layout = fplCompact
      FindPanel.UseExtendedSyntax = True
      LayoutStyle = lsMultiRecordView
      LookAndFeel.ScrollbarMode = sbmClassic
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clGray
      OptionsView.RowHeight = 20
      OptionsView.ValueWidth = 170
      OptionsView.RecordsInterval = 2
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      DataController.DataSource = dmMain.dsEmployeesGroups
      Version = 1
      object VerticalGridRecId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'RecId'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Id'
        Visible = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridParentId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'ParentId'
        Visible = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridJobTitle: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'JobTitle'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridFirstName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'FirstName'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VerticalGridLastName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'LastName'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object VerticalGridCity: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'City'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object VerticalGridStateProvinceName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'StateProvinceName'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object VerticalGridPhone: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Phone'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object VerticalGridEmailAddress: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'EmailAddress'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object VerticalGridAddressLine1: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'AddressLine1'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object VerticalGridPostalCode: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'PostalCode'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
    end
    object cbeDisplayMode: TcxComboBox [1]
      Left = 496
      Top = 98
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Never'
        'Manual (Focus the grid and press Ctrl+F)'
        'Always')
      Properties.OnChange = cbeDisplayModePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Manual (Focus the grid and press Ctrl+F)'
      Width = 228
    end
    object seFindDelay: TcxSpinEdit [2]
      Left = 496
      Top = 152
      Properties.MaxValue = 5000.000000000000000000
      Properties.MinValue = 100.000000000000000000
      Properties.OnChange = seFindDelayPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Value = 1000
      Width = 228
    end
    object cbeFindPanelPosition: TcxComboBox [3]
      Left = 496
      Top = 125
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Top'
        'Bottom')
      Properties.OnChange = cbeFindPanelPositionPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Top'
      Width = 228
    end
    object icbFindFilterColumns: TcxImageComboBox [4]
      Left = 496
      Top = 179
      Properties.Items = <>
      Properties.OnChange = icbFindFilterColumnsPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Width = 228
    end
    object cbeBehavior: TcxComboBox [5]
      Left = 496
      Top = 55
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
      Text = 'Filter'
      Width = 228
    end
    object cbeLayout: TcxComboBox [6]
      Left = 496
      Top = 28
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
      Width = 228
    end
    inherited lgSetupTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Width = 350
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBVerticalGrid1'
      CaptionOptions.Visible = False
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 320
      ButtonOptions.Buttons = <>
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
      CaptionOptions.Text = 'Searchable Rows:'
      Control = icbFindFilterColumns
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgCheckBoxes
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgCheckBoxes
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.Width = 160
      ButtonOptions.Buttons = <>
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
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Behavior'
      Control = cbeBehavior
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Layout'
      Control = cbeLayout
      ControlOptions.OriginalHeight = 21
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
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object alCustomCheckBoxes: TActionList
    Left = 112
    Top = 56
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
end
