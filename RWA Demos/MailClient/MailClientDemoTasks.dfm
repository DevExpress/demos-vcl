inherited MailClientDemoTasksFrame: TMailClientDemoTasksFrame
  inherited lcBase: TdxLayoutControl
    Top = 146
    Height = 484
    ExplicitTop = 146
    ExplicitHeight = 484
    inherited lblSubject: TcxLabel
      TabOrder = 2
    end
    inherited cxreMain: TcxRichEdit
      TabOrder = 3
      ExplicitHeight = 377
      Height = 377
    end
    inherited PanelGrid: TdxPanel
      Height = 466
      TabOrder = 1
      ExplicitHeight = 466
      inherited PanelFilter: TdxPanel
        inherited PanelSearch: TdxPanel
          inherited mrueSearch: TcxMRUEdit
            ExplicitHeight = 26
          end
        end
      end
      inherited grMain: TcxGrid
        Height = 424
        ExplicitHeight = 424
        inherited tvMain: TcxGridDBTableView
          OnDblClick = tvMainDblClick
          OnMouseUp = tvMainMouseUp
          OnCustomDrawCell = tvMainCustomDrawCell
          OnFocusedRecordChanged = tvMainFocusedRecordChanged
          DataController.DataModeController.SmartRefresh = True
          DataController.DataSource = DM.dsTasks
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = dbcDateCreated
                end
                item
                  Column = dbcDateDue
                end
                item
                  Column = dbcDateCompleted
                end>
              SummaryItems = <
                item
                  Format = '# tasks'
                  Kind = skCount
                  OnGetText = tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText
                  Column = dbcDateDue
                end>
            end>
          OptionsBehavior.CellHints = True
          OptionsView.GroupByBox = False
          OptionsView.IndicatorWidth = 18
          Styles.OnGetContentStyle = tvMainStylesGetContentStyle
          object dbcID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object dbcEmployeeID: TcxGridDBColumn
            DataBinding.FieldName = 'EmployeeID'
            Visible = False
          end
          object dbcCheckCompleted: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taRightJustify
            Properties.DisplayGrayed = 'False'
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = 2
            Properties.ValueUnchecked = 0
            Properties.OnEditValueChanged = tvMainColumn1PropertiesEditValueChanged
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
              642220636C69702D72756C653D226576656E6F64642220643D224D31322E3230
              3420322E303141322032203020302031203134203476386C2D2E30312E323034
              613220322030203020312D312E37383620312E3738354C313220313448346132
              20322030203020312D312E39392D312E3739364C322031325634613220322030
              2030203120322D3268387A4D342033613120312030203020302D2E3939352E38
              39374C3320347638613120312030203020302031203168386131203120302030
              203020312D315634613120312030203020302D2E3839382D2E3939354C313220
              337A222F3E0D0A093C706174682066696C6C3D2263757272656E74436F6C6F72
              2220643D224D31302E31343720362E313436612E352E35203020312031202E37
              30372E3730376C2D332033612E352E352030203020312D2E37303720306C2D32
              2D32612E352E35203020312031202E3730372D2E3730374C372E3520382E3739
              337A222F3E0D0A3C2F7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            HeaderHint = 'Complete'
            MinWidth = 30
            Options.Filtering = False
            Options.HorzSizing = False
            Width = 30
            IsCaptionAssigned = True
          end
          object dbcIsCompleted: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            OnCustomDrawCell = dbcIsCompletedCustomDrawCell
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
              642220636C69702D72756C653D226576656E6F64642220643D224D382E363835
              20312E30303561312031203020302031202E3630382E3238386C332E34313420
              332E34313461312031203020302031202E3239332E3730375631336132203220
              30203020312D32203248356C2D2E3230342D2E30314132203220302030203120
              3320313356336132203220302030203120322D3268332E3538367A4D35203261
              3120312030203020302D31203176313061312031203020302030203120316836
              6131203120302030203020312D31563648392E3541312E3520312E3520302030
              2031203820342E3556327A6D3420322E35612E352E35203020302030202E352E
              3568322E3038364C3920322E3431347A222F3E0D0A3C2F7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            HeaderHint = 'Complete'
            MinWidth = 30
            Options.Editing = False
            Options.Filtering = False
            Options.HorzSizing = False
            Options.Sorting = False
            Width = 30
            IsCaptionAssigned = True
          end
          object dbcPriority: TcxGridDBColumn
            DataBinding.FieldName = 'Priority'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DropDownRows = 3
            Properties.Images = DM.cxGridsImageList_16
            Properties.ImmediatePost = True
            Properties.Items = <>
            RepositoryItem = DM.edrepMainImagesPriority
            OnCustomDrawCell = dbcPriorityCustomDrawCell
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
              3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
              2C2023454433443342292220643D224D382E32303220382E383333612E323035
              2E3230352030203020312D2E34303320306C2D2E3835352D342E353661312E30
              373520312E30373520302031203120322E31313320307A4D38203243362E3730
              31203220352E37323220332E313820352E39363120342E3435376C2E38353520
              342E353661312E32303520312E32303520302030203020322E33363920306C2E
              3835342D342E353641322E30373520322E303735203020302030203820326D30
              203131612E352E3520302031203120302D31202E352E35203020302031203020
              316D30203161312E3520312E3520302031203020302D3320312E3520312E3520
              302030203020302033222F3E0D0A3C2F7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            HeaderHint = 'Importance'
            MinWidth = 35
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.SortByDisplayText = isbtOff
            Width = 35
          end
          object dbcSubject: TcxGridDBColumn
            DataBinding.FieldName = 'Subject'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.Editing = False
            Options.FilteringPopupIncrementalFiltering = True
            Width = 280
          end
          object dbcStatus: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.ImmediateDropDownWhenActivated = True
            Properties.ImmediatePost = True
            RepositoryItem = edrepTaskStatus
            Options.SortByDisplayText = isbtOff
            Width = 100
          end
          object dbcCompleted: TcxGridDBColumn
            Caption = 'Percent Complete'
            DataBinding.FieldName = 'Completed'
            PropertiesClassName = 'TcxProgressBarProperties'
            Properties.PeakValue = 80.000000000000000000
            OnGetPropertiesForEdit = dbcCompletedGetPropertiesForEdit
            Width = 150
          end
          object dbcDateCreated: TcxGridDBColumn
            Caption = 'Date Created'
            DataBinding.FieldName = 'DateCreated'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Width = 80
          end
          object dbcDateStart: TcxGridDBColumn
            Caption = 'Start Date'
            DataBinding.FieldName = 'DateStart'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.ImmediatePost = True
            Properties.Nullstring = 'None'
            Properties.UseNullString = True
            Width = 80
          end
          object dbcDateDue: TcxGridDBColumn
            Caption = 'Due Date'
            DataBinding.FieldName = 'DateDue'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.Nullstring = 'None'
            Properties.UseNullString = True
            Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
            OnValidateDrawValue = dbcDateDueValidateDrawValue
            Width = 80
          end
          object dbcDateCompleted: TcxGridDBColumn
            Caption = 'Date Completed'
            DataBinding.FieldName = 'DateCompleted'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ImmediatePost = True
            Properties.Nullstring = 'None'
            Properties.ReadOnly = True
            Properties.UseNullString = True
            Options.Editing = False
            Width = 80
          end
          object dbcCategory: TcxGridDBColumn
            DataBinding.FieldName = 'Category'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <>
            Properties.ReadOnly = True
            RepositoryItem = edrepTaskCategory
            Options.Editing = False
            Options.SortByDisplayText = isbtOff
            Width = 130
          end
          object dbcFlagStatus: TcxGridDBColumn
            DataBinding.FieldName = 'FlagStatus'
            RepositoryItem = edrepTaskFlagStatus
            OnCustomDrawCell = dbcFlagStatusCustomDrawCell
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F722220643D224D342039563368382E3032386C2D
              312E39333520322E3731612E352E352030203020302030202E35384C31322E30
              323820397A6D3020316839612E352E35203020302030202E3430372D2E37394C
              31312E31313420366C322E3239332D332E3231412E352E352030203020302031
              33203248332E35612E352E352030203020302D2E352E35763131612E352E3520
              3020302030203120307A222F3E0D0A3C2F7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            HeaderHint = 'Flag Status'
            MinWidth = 35
            Options.Editing = False
            Options.HorzSizing = False
            Options.SortByDisplayText = isbtOff
            Width = 35
            IsCaptionAssigned = True
          end
        end
      end
    end
    object dxNavBar1: TdxNavBar [3]
      Left = 8
      Top = 8
      Width = 180
      Height = 468
      Color = 16448250
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 20
      OptionsBehavior.Common.AllowSelectLinks = True
      OptionsBehavior.Common.DragDropFlags = [fAllowDragLink, fAllowDropLink, fAllowDropGroup]
      OptionsBehavior.Common.ShowGroupsHint = True
      OptionsBehavior.Common.ShowLinksHint = True
      OptionsImage.LargeImages = fmMailClientDemoMain.ilNavBarLarge
      OptionsImage.SmallImages = fmMailClientDemoMain.ilNavBarSmall
      OptionsView.Common.ShowGroupCaptions = False
      OptionsView.NavigationPane.MaxVisibleGroups = 4
      OptionsView.NavigationPane.OverflowPanelUseSmallImages = False
      OptionsView.NavigationPane.ShowHeader = False
      OptionsView.NavigationPane.ShowOverflowPanel = False
      object nbgrTasks: TdxNavBarGroup
        Caption = 'nbgrTasks'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
    end
    inherited lcgRich: TdxLayoutGroup
      Visible = False
    end
    inherited lciDate: TdxLayoutLabeledItem
      SizeOptions.Width = 10
    end
    inherited lciNavBar: TdxLayoutItem
      Control = dxNavBar1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 484
      ControlOptions.OriginalWidth = 180
    end
  end
  inherited bmFrame: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      146
      0)
    object bmFrameBar1: TdxBar
      Caption = 'New / Edit'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 10
      DockedTop = 4
      DockingStyle = dsTop
      FloatLeft = 1296
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbNewTask'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbEditTask'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbDeleteTask'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmFrameBar2: TdxBar
      Caption = 'Follow Up'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 10
      DockedTop = 59
      DockingStyle = dsTop
      FloatLeft = 1296
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowToday'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowTomorrow'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowThisWeek'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowNextWeek'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowNoDate'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bFollowCustom'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmFrameBar3: TdxBar
      Caption = 'Current View'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 10
      DockedTop = 87
      DockingStyle = dsTop
      FloatLeft = 1296
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewByDate'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewToDo'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewCompleted'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewToday'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object lbNewTask: TdxBarLargeButton
      Action = actTaskNew
      Category = 0
      ScreenTip = DM.stTaskNew
      SyncImageIndex = False
      ImageIndex = 60
    end
    object lbDeleteTask: TdxBarLargeButton
      Action = actTaskDelete
      Category = 0
      ScreenTip = DM.stTaskDelete
      SyncImageIndex = False
      ImageIndex = 5
    end
    object lbEditTask: TdxBarLargeButton
      Action = actTaskEdit
      Category = 0
      ScreenTip = DM.stTaskEdit
      SyncImageIndex = False
      ImageIndex = 56
    end
    object bFollowToday: TdxBarButton
      Action = actFollowToday
      Category = 0
      ScreenTip = DM.stTaskFollowToday
      ButtonStyle = bsChecked
      ImageIndex = 20
    end
    object bFollowCustom: TdxBarButton
      Action = actFollowCustom
      Category = 0
      ScreenTip = DM.stTaskFollowCustom
      ButtonStyle = bsChecked
      ImageIndex = 16
    end
    object bFollowNoDate: TdxBarButton
      Action = actFollowNoDate
      Category = 0
      ScreenTip = DM.stTaskFollowNoDate
      ButtonStyle = bsChecked
      ImageIndex = 18
    end
    object bFollowNextWeek: TdxBarButton
      Action = actFollowNextWeek
      Category = 0
      ScreenTip = DM.stTaskFollowNextWeek
      ButtonStyle = bsChecked
      ImageIndex = 17
    end
    object bFollowThisWeek: TdxBarButton
      Action = actFollowThisWeek
      Category = 0
      ScreenTip = DM.stTaskFollowThisWeek
      ButtonStyle = bsChecked
      ImageIndex = 19
    end
    object bFollowTomorrow: TdxBarButton
      Action = actFollowTomorrow
      Category = 0
      ScreenTip = DM.stTaskFollowTomorrow
      ButtonStyle = bsChecked
      ImageIndex = 21
    end
    object lbViewByDate: TdxBarLargeButton
      Action = actTaskViewByDate
      Category = 0
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 95
    end
    object lbViewToday: TdxBarLargeButton
      Action = actTaskViewToday
      Category = 0
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 24
    end
    object lbViewCompleted: TdxBarLargeButton
      Action = actTaskViewCompleted
      Category = 0
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 11
    end
    object lbViewToDo: TdxBarLargeButton
      Action = actTaskViewToDo
      Category = 0
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 94
    end
  end
  inherited alFrame: TActionList
    object actTaskNew: TAction
      Caption = 'New Task'
      ImageIndex = 18
      OnExecute = actTaskNewExecute
    end
    object actTaskEdit: TAction
      Caption = 'Edit Task'
      ImageIndex = 17
      OnExecute = actTaskEditExecute
    end
    object actTaskDelete: TAction
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = actTaskDeleteExecute
    end
    object actFollowToday: TAction
      Caption = 'Today'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actFollowTomorrow: TAction
      Tag = 1
      Caption = 'Tomorrow'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actFollowThisWeek: TAction
      Tag = 2
      Caption = 'This Week'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actFollowNextWeek: TAction
      Tag = 3
      Caption = 'Next Week'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actFollowNoDate: TAction
      Tag = 4
      Caption = 'No Date'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actFollowCustom: TAction
      Tag = 5
      Caption = 'Custom'
      GroupIndex = 1
      OnExecute = actFollowExecute
    end
    object actTaskViewByDate: TAction
      AutoCheck = True
      Caption = 'List by Date'
      GroupIndex = 2
      ImageIndex = 21
      OnExecute = actTaskViewExecute
    end
    object actTaskViewToDo: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'To-Do List'
      GroupIndex = 2
      ImageIndex = 20
      OnExecute = actTaskViewExecute
    end
    object actTaskViewCompleted: TAction
      Tag = 2
      AutoCheck = True
      Caption = 'Completed'
      GroupIndex = 2
      ImageIndex = 19
      OnExecute = actTaskViewExecute
    end
    object actTaskViewToday: TAction
      Tag = 3
      AutoCheck = True
      Caption = 'Today'
      GroupIndex = 2
      ImageIndex = 4
      OnExecute = actTaskViewExecute
    end
  end
  inherited ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink1
    PixelsPerInch = 96
    object ComponentPrinterLink1: TdxGridReportLink
      Component = grMain
      DateFormat = 0
      PageNumberFormat = pnfNumeral
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.GrayShading = True
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      TimeFormat = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 104
    Top = 232
    inherited lslfMain: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited AutoSearchTimer: TTimer
    Left = 88
    Top = 328
  end
  object edrepTask: TcxEditRepository
    Left = 72
    Top = 160
    PixelsPerInch = 96
    object edrepTaskCategory: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = DM.cxGridsImageList_16
      Properties.Items = <
        item
          Description = 'House Chores'
          ImageIndex = 13
          Value = 0
        end
        item
          Description = 'Shopping'
          ImageIndex = 15
          Value = 1
        end
        item
          Description = 'Office'
          ImageIndex = 14
          Value = 2
        end>
    end
    object edrepTaskStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediateDropDownWhenActivated = True
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Not Started'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'In Progress'
          Value = '1'
        end
        item
          Description = 'Completed'
          Value = 2
        end
        item
          Description = 'Waiting On Someone Else'
          Value = 3
        end
        item
          Description = 'Deferred'
          Value = 4
        end>
    end
    object edrepTaskCompletedTrackBar: TcxEditRepositoryTrackBar
      Properties.Max = 100
      Properties.ShowPositionHint = True
      Properties.ShowTicks = False
    end
    object edrepTaskFlagStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Images = DM.ilToolbarsSmallSVG
      Properties.Items = <
        item
          Description = 'Today'
          ImageIndex = 20
          Value = 0
        end
        item
          Description = 'Tomorrow'
          ImageIndex = 21
          Value = 1
        end
        item
          Description = 'This Week'
          ImageIndex = 19
          Value = 2
        end
        item
          Description = 'Next Week'
          ImageIndex = 17
          Value = 3
        end
        item
          Description = 'No Date'
          ImageIndex = 18
          Value = 4
        end
        item
          Description = 'Custom'
          ImageIndex = 16
          Value = 5
        end
        item
          Description = 'Complete'
          ImageIndex = 52
          Value = 6
        end>
    end
  end
end
