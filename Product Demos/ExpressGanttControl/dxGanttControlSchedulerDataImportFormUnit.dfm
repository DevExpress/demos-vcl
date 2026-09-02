inherited frmSchedulerDataImport: TfrmSchedulerDataImport
  inherited lcMain: TdxLayoutControl
    ExplicitWidth = 961
    ExplicitHeight = 795
    inherited dxGanttControl: TdxGanttControl
      Left = 10000
      Top = 10000
      Width = 678
      Height = 520
      TabOrder = 5
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
          Width = 115
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskDuration'
          UID = 1
          Width = 52
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskStart'
          UID = 1
          Width = 77
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskFinish'
          UID = 1
          Width = 80
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnPredecessors'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnResourceName'
          UID = 1
          Visible = False
        end>
      ViewChart.OptionsSheet.Width = 377
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
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 678
      ExplicitHeight = 520
    end
    inherited cmbChartTimescale: TcxComboBox
      Top = 182
      Enabled = False
      ExplicitTop = 182
    end
    inherited cmbTimelineScale: TcxComboBox
      Enabled = False
      ExplicitWidth = 176
      Width = 176
    end
    inherited seTimelineUnitMinWidth: TcxSpinEdit
      Enabled = False
      ExplicitWidth = 176
      Width = 176
    end
    object Scheduler: TcxScheduler [4]
      Left = 23
      Top = 46
      Width = 652
      Height = 685
      DateNavigator.RowCount = 2
      DateNavigator.ShowDatesContainingHolidaysInColor = True
      DateNavigator.Visible = False
      ViewDay.TimeRulerMinutes = True
      ViewGantt.Active = True
      ViewGantt.Scales.MajorUnit = suMonth
      ViewGantt.Scales.MinorUnit = suDay
      ViewGantt.TreeBrowser.Visible = True
      ViewGantt.TreeBrowser.Width = 380
      ViewGantt.EventsStyle = esProgress
      ViewGantt.ShowExpandButtons = True
      ViewGantt.ShowTotalProgressLine = True
      ViewWeek.ShowTimeAsClock = True
      ViewWeeks.ShowTimeAsClock = True
      ControlBox.Visible = False
      EventOperations.SharingBetweenResources = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsView.AdditionalTimeZone = 35
      OptionsView.AdditionalTimeZoneLabel = 'GMT'
      OptionsView.CurrentTimeZoneLabel = 'Local'
      OptionsView.GroupingKind = gkByResource
      OptionsView.ResourceHeaders.MultilineCaptions = True
      OptionsView.ResourceHeaders.ImagePosition = ipTop
      OptionsView.ResourceHeaders.RotateCaptions = False
      OptionsView.ResourcesPerPage = 3
      OptionsView.RotateResourceCaptions = False
      OptionsView.ShowEventsWithoutResource = True
      Storage = SchedulerGanttStorage
      TabOrder = 4
      Splitters = {
        95000000000100006903000005010000F701000001000000FC0100009A000000}
      StoredClientBounds = {01000000010000008B020000AC020000}
    end
    object btnImport: TcxButton [5]
      Left = 716
      Top = 41
      Width = 226
      Height = 25
      Caption = 'Import Data'
      OptionsImage.Layout = blGlyphRight
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btnImportClick
    end
    inherited lgMainGroup: TdxLayoutGroup
      LayoutDirection = ldTabbed
      OnTabChanged = lgMainGroupTabChanged
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      SizeOptions.Width = 170
      ItemIndex = 2
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    inherited dxLayoutItem5: TdxLayoutItem
      Parent = lgGantControl
    end
    inherited lgActiveView: TdxLayoutGroup
      CaptionOptions.Text = 'GanttControl Active View Options'
      Visible = False
      Enabled = False
      Index = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Visible = False
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Enabled = False
    end
    inherited lchbChartCellAutoHeight: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbChartColumnHide: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbChartColumnMove: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbChartColumnSize: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbChartColumnQuickCustomization: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbChartVisible: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetCellAutoHeight: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetColumnHide: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetColumnMove: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetColumnSize: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetColumnQuickCustomization: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbShowOnlyExplicitlyAddedTasks: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited dxLayoutItem2: TdxLayoutItem
      Enabled = False
    end
    inherited dxLayoutItem3: TdxLayoutItem
      Enabled = False
    end
    inherited lchbChartColumnInsert: TdxLayoutCheckBoxItem
      Enabled = False
    end
    inherited lchbResourceSheetColumnInsert: TdxLayoutCheckBoxItem
      Enabled = False
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 429
      CaptionOptions.AlignHorz = taCenter
      Control = Scheduler
      ControlOptions.OriginalHeight = 429
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lgMainGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Scheduler Gantt View'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgTools
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 221
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnImport
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 221
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgGantControl: TdxLayoutGroup
      Parent = lgMainGroup
      CaptionOptions.Text = 'Gantt Control'
      ButtonOptions.Buttons = <>
      Index = 2
    end
    object lcbChangeLayout: TdxLayoutCheckBoxItem
      Parent = lgTools
      CaptionOptions.Text = 'Tabbed View'
      OnClick = lcbChangeLayoutClick
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 104
    Top = 112
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object SchedulerGanttStorage: TcxSchedulerStorage
    CustomFields = <
      item
        Name = 'IconIndex'
        ValueType = 'Integer'
      end
      item
        Name = 'SyncIDField'
      end>
    Resources.Items = <>
    Left = 449
    Top = 75
  end
end
