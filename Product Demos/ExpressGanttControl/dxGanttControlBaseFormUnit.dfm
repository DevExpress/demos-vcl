object dxGanttControlBaseDemoForm: TdxGanttControlBaseDemoForm
  Left = 0
  Top = 0
  Width = 961
  Height = 795
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 961
    Height = 795
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxMainCxLookAndFeel1
    object dxGanttControl: TdxGanttControl
      Left = 10
      Top = 10
      Width = 681
      Height = 737
      TabOrder = 0
      ViewChart.Active = True
      ViewChart.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnIndicator'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskMode'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskDuration'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskStart'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskFinish'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnPredecessors'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnResourceName'
          UID = 1
        end>
      ViewChart.OptionsSheet.Width = 450
      ViewResourceSheet.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnType'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnGroup'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnBaseCalendar'
          UID = 1
        end>
      OnActiveViewChanged = dxGanttControlActiveViewChanged
      OnDataModelLoaded = dxGanttControlDataModelLoaded
      OnAssignmentChanged = dxGanttControlAssignmentChanged
      OnAssignmentDeleted = dxGanttControlAssignmentChanged
      OnAssignmentInserted = dxGanttControlAssignmentChanged
      OnResourceChanged = dxGanttControlResourceChanged
      OnResourceDeleted = dxGanttControlResourceChanged
      OnResourceInserted = dxGanttControlResourceChanged
      OnTaskChanged = dxGanttControlTaskChanged
      OnTaskDeleted = dxGanttControlTaskChanged
      OnTaskInserted = dxGanttControlTaskChanged
    end
    object cmbChartTimescale: TcxComboBox
      Left = 738
      Top = 126
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Hours'
        'Quarter Days'
        'Days'
        'Weeks'
        'Thirds of Months'
        'Months'
        'Quarters'
        'Half Years'
        'Years')
      Properties.OnChange = cmbChartTimescalePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Text = 'Days'
      Width = 179
    end
    object cmbTimelineScale: TcxComboBox
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Automatic'
        'Hours'
        'Days'
        'Weeks'
        'Months'
        'Quarters'
        'Years')
      Properties.OnChange = cmbTimelineScalePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Text = 'Automatic'
      Visible = False
      Width = 179
    end
    object seTimelineUnitMinWidth: TcxSpinEdit
      Left = 10000
      Top = 10000
      Properties.ImmediatePost = True
      Properties.Increment = 10.000000000000000000
      Properties.MaxValue = 10000.000000000000000000
      Properties.MinValue = 10.000000000000000000
      Properties.OnChange = seTimelineUnitMinWidthPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Value = 50
      Visible = False
      Width = 179
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lgMainGroup: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgTools: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Options'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 225
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object liDescription: TdxLayoutLabeledItem
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
        696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C61
        73733D22426C75652220643D224D31362C3243382E332C322C322C382E332C32
        2C313673362E332C31342C31342C31347331342D362E332C31342D3134533233
        2E372C322C31362C327A204D31362C3663312E312C302C322C302E392C322C32
        732D302E392C322D322C32732D322D302E392D322D3220202623393B5331342E
        392C362C31362C367A204D32302C3234682D38762D326832762D38682D32762D
        326832683476313068325632347A222F3E0D0A3C2F7376673E0D0A}
      CaptionOptions.Text = 'Label'
      CaptionOptions.WordWrap = True
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcMainGroup_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = dxGanttControl
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgActiveView: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'Active View Options'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      OnTabChanged = lgActiveViewTabChanged
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgActiveView
      CaptionOptions.Text = 'Chart'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgActiveView
      CaptionOptions.Text = 'Resource Sheet'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgActiveView
      CaptionOptions.Text = 'Timeline'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Timescale'
      CaptionOptions.Layout = clTop
      Control = cmbChartTimescale
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Sheet Options'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object lchbChartCellAutoHeight: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Cell Auto Height'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 0
    end
    object lchbChartColumnHide: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column Hide'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 1
    end
    object lchbChartColumnMove: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column Move'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 3
    end
    object lchbChartColumnSize: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column Size'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 4
    end
    object lchbChartColumnQuickCustomization: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column Quick Customization'
      OnClick = lchbChartCellAutoHeightClick
      Index = 5
    end
    object lchbChartVisible: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Visible'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 6
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lchbResourceSheetCellAutoHeight: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Cell Auto Height'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 0
    end
    object lchbResourceSheetColumnHide: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Column Hide'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 1
    end
    object lchbResourceSheetColumnMove: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Column Move'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 3
    end
    object lchbResourceSheetColumnSize: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Column Size'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 4
    end
    object lchbResourceSheetColumnQuickCustomization: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Column Quick Customization'
      OnClick = lchbChartCellAutoHeightClick
      Index = 5
    end
    object lchbShowOnlyExplicitlyAddedTasks: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Only Show Explicitly Added Tasks'
      OnClick = lchbShowOnlyExplicitlyAddedTasksClick
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Timescale'
      CaptionOptions.Layout = clTop
      Control = cmbTimelineScale
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Min Width of Timescale Unit'
      CaptionOptions.Layout = clTop
      Control = seTimelineUnitMinWidth
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object lchbChartColumnInsert: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Column Insert'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 2
    end
    object lchbResourceSheetColumnInsert: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Column Insert'
      State = cbsChecked
      OnClick = lchbChartCellAutoHeightClick
      Index = 2
    end
  end
  object dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 264
    Top = 256
    object dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 8
    Top = 8
    object dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
end
