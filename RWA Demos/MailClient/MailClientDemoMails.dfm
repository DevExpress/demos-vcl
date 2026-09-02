inherited MailClientDemoMailsFrame: TMailClientDemoMailsFrame
  inherited lcBase: TdxLayoutControl
    Top = 201
    Height = 429
    ExplicitTop = 201
    ExplicitHeight = 429
    inherited lblSubject: TcxLabel
      TabOrder = 2
    end
    inherited cxreMain: TcxRichEdit
      TabOrder = 3
      ExplicitHeight = 322
      Height = 322
    end
    inherited PanelGrid: TdxPanel
      Height = 411
      TabOrder = 1
      ExplicitHeight = 411
      inherited PanelFilter: TdxPanel
        inherited PanelSearch: TdxPanel
          inherited mrueSearch: TcxMRUEdit
            ExplicitHeight = 26
          end
        end
      end
      inherited grMain: TcxGrid
        Height = 369
        ExplicitHeight = 369
        inherited tvMain: TcxGridDBTableView
          PopupMenu = pmMails
          OnKeyDown = tvMainKeyDown
          OnCellClick = tvMainCellClick
          OnCellDblClick = tvMainCellDblClick
          OnFocusedRecordChanged = tvMainFocusedRecordChanged
          OnSelectionChanged = tvMainSelectionChanged
          DataController.DataSource = DM.dsMails
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = dbcPriority
                end
                item
                  Column = dbcSubject
                end
                item
                  Column = dbcIsUnread
                end
                item
                  Column = dbcFrom
                end
                item
                  Column = dbcAttachment
                end
                item
                  Column = dbcDateOnly
                end>
              SummaryItems = <
                item
                  Format = '# messages'
                  Kind = skCount
                  OnGetText = tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText
                end>
            end>
          DataController.OnGroupingChanged = tvMainDataControllerGroupingChanged
          DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfMonths]
          DateTimeHandling.IgnoreTimeForFiltering = True
          DateTimeHandling.Grouping = dtgByDate
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsSelection.MultiSelect = True
          Styles.OnGetContentStyle = tvMainStylesGetContentStyle
          object dbcID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
            Visible = False
          end
          object dbcBoxID: TcxGridDBColumn
            DataBinding.FieldName = 'BoxID'
            Visible = False
            Width = 32
          end
          object dbcPriority: TcxGridDBColumn
            DataBinding.FieldName = 'Priority'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.DropDownRows = 3
            Properties.Items = <>
            RepositoryItem = DM.edrepMainImagesPriority
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
            MinWidth = 25
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.SortByDisplayText = isbtOff
            Width = 25
          end
          object dbcAttachment: TcxGridDBColumn
            Caption = 'Attachment'
            DataBinding.FieldName = 'IsAttachment'
            RepositoryItem = DM.edrepMainImagesAttachment
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F722220643D224D372E30323520332E3032366133
              2E3520332E3520302030203120342E393520342E39356C2D352E3520352E3563
              2D2E3830352E3830352D322E3133332E3639352D322E3838382D2E30362D2E38
              30382D2E3830382D2E3639332D322E3031362E30362D322E3736396C352E352D
              352E35612E352E35203020302031202E3730372E3730376C2D352E3520352E35
              632D2E3431382E3431392D2E3432342E39392D2E303620312E3335352E343136
              2E34313520312E3130382E34323520312E3437342E30366C352E352D352E3561
              322E3520322E352030203020302D332E3533352D332E3533366C2D352035612E
              352E352030203020312D2E3730382D2E3730377A222F3E0D0A3C2F7376673E0D
              0A}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 25
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.SortByDisplayText = isbtOff
            Width = 25
          end
          object dbcIsUnread: TcxGridDBColumn
            DataBinding.FieldName = 'IsUnread'
            PropertiesClassName = 'TcxTextEditProperties'
            RepositoryItem = DM.edrepMainImagesStatus
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.SourceHeight = 16
            HeaderGlyph.SourceWidth = 16
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F722220643D224D32203131613220322030203020
              302032203268386132203220302030203020322D325635613220322030203020
              302D322D324834613220322030203020302D3220327A6D322D376838632E3535
              3220302031202E3520312031732D2E3130332E3737372D2E3520312E30314C38
              20382E34333120332E35353420362E30333843332E30383120352E3738203320
              352E3520332035732E3434382D3120312D314D3320362E38373620372E373633
              20392E3434612E352E35203020302030202E34373420304C313320362E383736
              563131613120312030203020312D3120314834613120312030203020312D312D
              317A222F3E0D0A3C2F7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 35
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.SortByDisplayText = isbtOff
            Width = 35
          end
          object dbcDateOnly: TcxGridDBColumn
            DataBinding.FieldName = 'DateOnly'
            PropertiesClassName = 'TcxDateEditProperties'
            OnGetFilterValues = dbcDateOnlyGetFilterValues
            DateTimeGrouping = dtgRelativeToToday
            GroupIndex = 0
            SortIndex = 0
            SortOrder = soDescending
            Width = 76
          end
          object dbcDate: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ShowTime = False
            Visible = False
            DateTimeGrouping = dtgRelativeToToday
            Width = 88
          end
          object dbcSubject: TcxGridDBColumn
            DataBinding.FieldName = 'Subject'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.FilteringPopupIncrementalFiltering = True
            Width = 241
          end
          object dbcFrom: TcxGridDBColumn
            DataBinding.FieldName = 'From'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Width = 160
          end
          object dbcIsUnreadSwitch: TcxGridDBColumn
            DataBinding.FieldName = 'IsUnread'
            RepositoryItem = DM.edrepMainImagesStatusSwitch
            HeaderGlyph.SourceDPI = 96
            HeaderGlyph.Data = {
              3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
              462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
              332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
              6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
              2263757272656E74436F6C6F722220643D224D322E39383420382E363235762E
              303033612E352E352030203020312D2E3631322E333535632D2E3433312D2E31
              31342D2E3335352D2E3631312D2E3335352D2E3631316C2E3031382D2E303632
              732E3032362D2E3038342E3034372D2E31343561362E3720362E372030203020
              3120312E3131372D312E39383243342E30393620352E30383920352E36303520
              342038203473332E39303420312E30383920342E38303220322E31383361362E
              3720362E3720302030203120312E31313720312E393832203420342030203020
              31202E30362E3138376C2E3030332E303133762E3030346C2E3030312E303032
              612E352E352030203020312D2E3936362E3235386C2D2E3030312D2E3030342D
              2E3030382D2E3032352D2E3033352D2E31303961352E36393620352E36393620
              30203020302D2E3934352D312E3637344331312E32383620352E393132203130
              2E303435203520382035732D332E3238352E3931322D342E30323820312E3831
              3761352E3720352E372030203020302D2E39343520312E3637346C2D2E303335
              2E3130397A4D38203761322E3520322E352030203120302030203520322E3520
              322E3520302030203020302D354D362E3520392E3561312E3520312E35203020
              3120312033203020312E3520312E352030203020312D332030222F3E0D0A3C2F
              7376673E0D0A}
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 26
            Options.Filtering = False
            Options.HorzSizing = False
            Options.ShowCaption = False
            Options.Sorting = False
            Width = 26
            IsCaptionAssigned = True
          end
          object dbcContentFileName: TcxGridDBColumn
            DataBinding.FieldName = 'FileName'
            Visible = False
          end
          object dbcAttachmentID: TcxGridDBColumn
            DataBinding.FieldName = 'AttachmentID'
            Visible = False
          end
          object dbcIsAttachment: TcxGridDBColumn
            DataBinding.FieldName = 'IsAttachment'
            Visible = False
          end
          object dbcContent: TcxGridDBColumn
            DataBinding.FieldName = 'Content'
            Visible = False
          end
        end
      end
    end
    object dxNavBar1: TdxNavBar [3]
      Left = 8
      Top = 8
      Width = 180
      Height = 413
      Color = 16448250
      ActiveGroupIndex = -1
      TabOrder = 0
      View = 20
      OptionsBehavior.Common.AllowChildGroups = True
      OptionsBehavior.Common.AllowSelectLinks = True
      OptionsView.NavigationPane.ShowActiveGroupCaptionWhenCollapsed = True
      OnGroupClick = dxNavBar1GroupClick
      OnLinkClick = dxNavBar1LinkClick
    end
    inherited lciNavBar: TdxLayoutItem
      Control = dxNavBar1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 429
      ControlOptions.OriginalWidth = 180
    end
  end
  inherited bmFrame: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      201
      0)
    object bmtbMailNew: TdxBar
      Caption = 'New / Respond'
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
          ItemName = 'lbNewMail'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bReply'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bReplyAll'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bForward'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmtbMailDelete: TdxBar
      Caption = 'Delete'
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
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbDeleteMail'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmtbMailTags: TdxBar
      Caption = 'Tags'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 10
      DockedTop = 114
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
          ItemName = 'bChangeUnreadState'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'siMailPriority'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmtbMailLayout: TdxBar
      Caption = 'Layout'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 10
      DockedTop = 142
      DockingStyle = dsTop
      FloatLeft = 1296
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbMailRotate'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbMailFlip'
        end>
      OneOnRow = True
      Row = 3
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object lbNewMail: TdxBarLargeButton
      Action = actMailNew
      Category = 0
      ScreenTip = DM.stMailNew
      SyncImageIndex = False
      ImageIndex = 0
    end
    object bReply: TdxBarButton
      Action = actMailReply
      Category = 0
      ScreenTip = DM.stMailReply
      ImageIndex = 3
    end
    object bForward: TdxBarButton
      Action = actMailForward
      Category = 0
      ScreenTip = DM.stMailForward
      ImageIndex = 6
    end
    object bReplyAll: TdxBarButton
      Action = actMailReplyAll
      Category = 0
      ScreenTip = DM.stMailReplyAll
      ImageIndex = 4
    end
    object lbMailRotate: TdxBarLargeButton
      Action = actLayoutRotate
      Category = 0
      ScreenTip = DM.stRotate
      SyncImageIndex = False
      ImageIndex = 29
    end
    object lbMailFlip: TdxBarLargeButton
      Action = actLayoutFlip
      Category = 0
      ScreenTip = DM.stFlip
      SyncImageIndex = False
      ImageIndex = 28
    end
    object lbDeleteMail: TdxBarLargeButton
      Action = actMailDelete
      Category = 0
      ScreenTip = DM.stMailDeleteMail
      SyncImageIndex = False
      ImageIndex = 5
    end
    object bChangeUnreadState: TdxBarButton
      Action = actMailUnreadState
      Category = 0
      ScreenTip = DM.stMailUnread
      ImageIndex = 10
    end
    object bMailPriorityLow: TdxBarButton
      Action = actPriorityLow
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 12
    end
    object bMailPriorityMedium: TdxBarButton
      Action = actPriorityMedium
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bMailPriorityHigh: TdxBarButton
      Action = actPriorityHigh
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      ImageIndex = 13
    end
    object siAttachment: TdxBarSubItem
      Caption = 'Attachment'
      Category = 0
      Visible = ivAlways
      ImageIndex = 14
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bAttachmentSaveAs'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bAttachmentOpen'
        end>
    end
    object bAttachmentSaveAs: TdxBarButton
      Action = actAttachmentSaveAs
      Caption = 'SaveAs ...'
      Category = 0
    end
    object bAttachmentOpen: TdxBarButton
      Action = actAttachmentOpen
      Category = 0
    end
    object siMailPriority: TdxBarSubItem
      Caption = 'Priority'
      Category = 0
      ScreenTip = DM.stMailPriority
      Visible = ivAlways
      ImageIndex = 11
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bMailPriorityLow'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bMailPriorityMedium'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bMailPriorityHigh'
        end>
      ItemOptions.Size = misNormal
      OnPopup = pmPriorityPopup
    end
    object dxBarGroup1: TdxBarGroup
      Items = ()
    end
  end
  inherited alFrame: TActionList
    object actMailNew: TAction [0]
      Caption = 'New Mail'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = actMailNewExecute
    end
    object actMailReply: TAction [1]
      Caption = 'Reply'
      ShortCut = 16466
      OnExecute = actMailReplyExecute
    end
    object actMailReplyAll: TAction [2]
      Caption = 'Reply All'
      ShortCut = 24658
      OnExecute = actMailReplyAllExecute
    end
    object actMailForward: TAction [3]
      Caption = 'Forward'
      ShortCut = 16454
      OnExecute = actMailForwardExecute
    end
    object actMailDelete: TAction [4]
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = actMailDeleteExecute
    end
    object actMailUnreadState: TAction [5]
      Caption = 'Read / Unread'
      OnExecute = actMailUnreadStateExecute
    end
    object actAttachmentOpen: TAction [6]
      Caption = 'Open'
      OnExecute = actAttachmentOpenExecute
    end
    object actAttachmentSaveAs: TAction [7]
      Caption = 'Save as...'
      OnExecute = actAttachmentSaveAsExecute
    end
    object actPriorityLow: TAction
      Caption = 'Low Priority'
      GroupIndex = 1
      OnExecute = actPriorityExecute
    end
    object actPriorityMedium: TAction
      Tag = 1
      Caption = 'Medium Priority'
      GroupIndex = 1
      OnExecute = actPriorityExecute
    end
    object actPriorityHigh: TAction
      Tag = 2
      Caption = 'High Priority'
      GroupIndex = 1
      OnExecute = actPriorityExecute
    end
  end
  inherited ComponentPrinter: TdxComponentPrinter
    CurrentLink = ComponentPrinterLink1
    PixelsPerInch = 96
    object ComponentPrinterLink1: TdxGridReportLink
      Component = grMain
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
    Left = 792
    inherited lslfMain: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object SaveDialog1: TdxSaveFileDialog
    Filter = 'xls - files|*.xls|all files|*.*'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Save As...'
    Left = 504
    Top = 120
  end
  object pmPriority: TdxRibbonPopupMenu
    BarManager = bmFrame
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bMailPriorityLow'
      end
      item
        Visible = True
        ItemName = 'bMailPriorityMedium'
      end
      item
        Visible = True
        ItemName = 'bMailPriorityHigh'
      end>
    Ribbon = fmMailClientDemoMain.dxRibbon1
    UseOwnFont = False
    OnPopup = pmPriorityPopup
    Left = 329
    Top = 352
    PixelsPerInch = 96
  end
  object pmMails: TdxRibbonPopupMenu
    BarManager = bmFrame
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bReply'
      end
      item
        Visible = True
        ItemName = 'bReplyAll'
      end
      item
        Visible = True
        ItemName = 'bForward'
      end
      item
        Visible = True
        ItemName = 'lbDeleteMail'
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bChangeUnreadState'
      end
      item
        Visible = True
        ItemName = 'siAttachment'
      end>
    Ribbon = fmMailClientDemoMain.dxRibbon1
    UseOwnFont = False
    OnPopup = pmMailsPopup
    Left = 393
    Top = 352
    PixelsPerInch = 96
  end
  object AutoMakeReadTimer: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = AutoMakeReadTimerTimer
    Left = 704
    Top = 536
  end
  object UpdateMailPreviewTimer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = UpdateMailPreviewTimerTimer
    Left = 592
    Top = 8
  end
  object amMails: TdxUIAdornerManager
    Badges.Active = True
    Left = 336
    Top = 232
    object bdgUrgent: TdxBadge
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grMain.grMainLevel1.tvMain.dbcDateOnly.Header'
      Visible = False
      Alignment.Horz = taCenter
      Background.Glyph.SourceDPI = 96
      Background.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000080000000808020000004B6D29
        DC000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
        00097048597300000EC300000EC301C76FA8640000001249444154185763782B
        A382150D290919150099BB4B4146F6EB1B0000000049454E44AE426082}
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Offset.Y = -6
      ParentFont = False
      Text = 'Urgent'
    end
  end
end
