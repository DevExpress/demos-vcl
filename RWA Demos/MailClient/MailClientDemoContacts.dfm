inherited MailClientDemoContactsFrame: TMailClientDemoContactsFrame
  Height = 755
  ExplicitHeight = 755
  inherited lcBase: TdxLayoutControl
    Top = 173
    Height = 582
    ExplicitTop = 173
    ExplicitHeight = 582
    inherited lblSubject: TcxLabel
      Left = 739
      TabOrder = 2
      ExplicitLeft = 739
      ExplicitWidth = 353
      Width = 353
    end
    inherited cxreMain: TcxRichEdit
      Left = 739
      Top = 207
      TabOrder = 4
      ExplicitLeft = 739
      ExplicitTop = 207
      ExplicitWidth = 353
      ExplicitHeight = 367
      Height = 367
      Width = 353
    end
    inherited PanelGrid: TdxPanel
      Width = 533
      Height = 564
      TabOrder = 1
      ExplicitWidth = 533
      ExplicitHeight = 564
      inherited PanelFilter: TdxPanel
        Width = 533
        ExplicitWidth = 554
        inherited PanelButtons: TdxPanel
          Left = 366
          ExplicitLeft = 387
        end
        inherited PanelSearch: TdxPanel
          Width = 366
          ExplicitWidth = 387
          inherited mrueSearch: TcxMRUEdit
            ExplicitWidth = 379
            ExplicitHeight = 26
            Width = 358
          end
        end
      end
      inherited grMain: TcxGrid
        Width = 533
        Height = 522
        ExplicitWidth = 554
        ExplicitHeight = 522
        inherited tvMain: TcxGridDBTableView
          OnDblClick = tvMainDblClick
          OnFocusedRecordChanged = tvMain1FocusedRecordChanged
          DataController.DataSource = DM.dsContacts
          DataController.Summary.SummaryGroups = <
            item
              Links = <
                item
                  Column = dbcNameFirstSymbol
                end
                item
                  Column = dbcState
                end>
              SummaryItems = <
                item
                  Kind = skCount
                  Column = dbcNameFirstSymbol
                end>
            end>
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object dbcCustomerID: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerId'
            Visible = False
            Width = 20
          end
          object dbcGender: TcxGridDBColumn
            DataBinding.FieldName = 'Gender'
            RepositoryItem = DM.edrepMainImagesGender
            OnCustomDrawCell = dbcGenderCustomDrawCell
            Width = 30
            IsCaptionAssigned = True
          end
          object dbcName: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.FilteringPopupIncrementalFiltering = True
            Width = 105
          end
          object dbcMiddleName: TcxGridDBColumn
            DataBinding.FieldName = 'MiddleName'
            Visible = False
            Width = 118
          end
          object dbcEmail: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Width = 159
          end
          object dbcState: TcxGridDBColumn
            DataBinding.FieldName = 'State'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.FilteringPopupIncrementalFiltering = True
            Options.FilteringPopupIncrementalFilteringOptions = [ifoHighlightSearchText]
            Width = 51
          end
          object dbcCity: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.FilteringPopupIncrementalFiltering = True
            Options.FilteringPopupIncrementalFilteringOptions = [ifoHighlightSearchText]
            Width = 121
          end
          object dbcPhone: TcxGridDBColumn
            DataBinding.FieldName = 'Phone'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Width = 163
          end
          object dbcComments: TcxGridDBColumn
            DataBinding.FieldName = 'Comments'
            Visible = False
            Width = 20
          end
          object dbcPhoto: TcxGridDBColumn
            DataBinding.FieldName = 'Photo'
            Visible = False
            Width = 20
          end
          object dbcDiscountLevel: TcxGridDBColumn
            DataBinding.FieldName = 'DiscountLevel'
            Visible = False
            Width = 20
          end
          object dbcFirstName: TcxGridDBColumn
            DataBinding.FieldName = 'FirstName'
            Visible = False
            Width = 20
          end
          object dbcLastName: TcxGridDBColumn
            DataBinding.FieldName = 'LastName'
            Visible = False
            Width = 20
          end
          object dbcBirthDate: TcxGridDBColumn
            DataBinding.FieldName = 'BirthDate'
            Visible = False
            Width = 20
          end
          object dbcNameFirstSymbol: TcxGridDBColumn
            Caption = 'Name'
            DataBinding.FieldName = 'Name1'
            Visible = False
          end
        end
        object cvContacts: TcxGridDBCardView [1]
          OnDblClick = tvMainDblClick
          OnGetCellHeight = cvContactsGetCellHeight
          DataController.DataSource = DM.dsContacts
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.OnDataChanged = tvMainDataControllerDataChanged
          OptionsCustomize.LayeredRows = True
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.FocusRect = False
          OptionsView.CardIndent = 7
          OptionsView.CardWidth = 300
          OptionsView.CellAutoHeight = True
          OptionsView.LayerSeparatorWidth = 2
          RowLayout = rlVertical
          Styles.OnGetContentStyle = cvContactsStylesGetContentStyle
          object ciPhoto: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Photo'
            PropertiesClassName = 'TcxImageProperties'
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Options.ShowCaption = False
            Position.BeginsLayer = True
            Position.Width = 100
          end
          object ciName: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Name'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.ShowCaption = False
            Position.BeginsLayer = True
            Position.LineCount = 2
          end
          object ciPhone: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Phone'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.ShowCaption = False
            Position.BeginsLayer = False
            Position.LineCount = 2
          end
          object ciEmail: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Email'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.ShowCaption = False
            Position.BeginsLayer = False
            Position.LineCount = 3
          end
          object ciAddress: TcxGridDBCardViewRow
            Caption = 'Address'
            DataBinding.FieldName = 'FullAddress'
            OnCustomDrawCell = CustomDrawHighlightingCell
            Options.ShowCaption = False
            Position.BeginsLayer = False
            Position.LineCount = 2
          end
        end
      end
    end
    object cxdbImagePhoto: TcxDBImage [3]
      Left = 739
      Top = 99
      DataBinding.DataField = 'Photo'
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ShowFocusRect = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 100
      Width = 353
    end
    object lcCurrentView: TdxLayoutControl [4]
      Left = 8
      Top = 8
      Width = 180
      Height = 566
      TabOrder = 0
      LayoutLookAndFeel = fmMailClientDemoMain.dxLayoutSkinLookAndFeel1
      object rbViewList: TcxRadioButton
        Left = 12
        Top = 12
        Action = actContactViewList
        Color = 16448250
        ParentColor = False
        TabOrder = 0
        AutoSize = True
        GroupIndex = 1
        ParentBackground = False
        Transparent = True
      end
      object rbViewAlphabetical: TcxRadioButton
        Left = 12
        Top = 41
        Action = actContactViewAlphabetical
        Color = 16448250
        ParentColor = False
        TabOrder = 1
        AutoSize = True
        GroupIndex = 1
        ParentBackground = False
        Transparent = True
      end
      object rbViewByState: TcxRadioButton
        Left = 12
        Top = 70
        Action = actContactViewByState
        Color = 16448250
        ParentColor = False
        TabOrder = 2
        AutoSize = True
        GroupIndex = 1
        ParentBackground = False
        Transparent = True
      end
      object rbViewCard: TcxRadioButton
        Left = 12
        Top = 112
        Action = actContactViewCard
        Color = 16448250
        ParentColor = False
        TabOrder = 3
        AutoSize = True
        GroupIndex = 1
        ParentBackground = False
        Transparent = True
      end
      object lcCurrentViewGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object lcCurrentViewItem1: TdxLayoutItem
        Parent = lcCurrentViewGroup_Root
        CaptionOptions.Text = 'cxRadioButton1'
        CaptionOptions.Visible = False
        Control = rbViewList
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcCurrentViewItem2: TdxLayoutItem
        Parent = lcCurrentViewGroup_Root
        CaptionOptions.Text = 'cxRadioButton2'
        CaptionOptions.Visible = False
        Control = rbViewAlphabetical
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lcCurrentViewItem3: TdxLayoutItem
        Parent = lcCurrentViewGroup_Root
        CaptionOptions.Text = 'cxRadioButton3'
        CaptionOptions.Visible = False
        Control = rbViewByState
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lcCurrentViewItem4: TdxLayoutItem
        Parent = lcCurrentViewGroup_Root
        CaptionOptions.Text = 'cxRadioButton4'
        CaptionOptions.Visible = False
        Control = rbViewCard
        ControlOptions.AutoColor = True
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 171
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object lcCurrentViewSeparatorItem1: TdxLayoutSeparatorItem
        Parent = lcCurrentViewGroup_Root
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
        CaptionOptions.Text = 'Separator'
        Index = 3
      end
    end
    inherited lciSubject: TdxLayoutItem
      Visible = False
    end
    inherited lcgContentCaption: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited lciFrom: TdxLayoutLabeledItem
      Visible = False
    end
    inherited lciDate: TdxLayoutLabeledItem
      Visible = False
      SizeOptions.Width = 10
    end
    inherited lciGrid: TdxLayoutItem
      ControlOptions.OriginalWidth = 500
    end
    inherited lciNavBar: TdxLayoutItem
      Control = lcCurrentView
      ControlOptions.OriginalHeight = 582
      ControlOptions.OriginalWidth = 180
    end
    object lciPhoto: TdxLayoutItem
      Parent = lcgContentCaption
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxdbImagePhoto
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 332
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited bmFrame: TdxBarManager
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      173
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
          ItemName = 'lbContactNew'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbContactEdit'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbContactDelete'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmFrameBar2: TdxBar
      Caption = 'Current View'
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
          ItemName = 'lbViewList'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewAlphabetical'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewByState'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbViewCard'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmFrameBar3: TdxBar
      Caption = 'Layout'
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
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbContactFlip'
        end>
      OneOnRow = True
      Row = 2
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object lbContactNew: TdxBarLargeButton
      Action = actContactNew
      Category = 0
      ScreenTip = DM.stContactNew
      SyncImageIndex = False
      ImageIndex = 53
    end
    object lbContactDelete: TdxBarLargeButton
      Action = actContactDelete
      Category = 0
      ScreenTip = DM.stContactDelete
      SyncImageIndex = False
      ImageIndex = 5
    end
    object lbContactEdit: TdxBarLargeButton
      Action = actContactEdit
      Category = 0
      ScreenTip = DM.stContactEdit
      SyncImageIndex = False
      ImageIndex = 54
    end
    object lbContactFlip: TdxBarLargeButton
      Action = actLayoutFlip
      Category = 0
      ScreenTip = DM.stFlip
      SyncImageIndex = False
      ImageIndex = 28
    end
    object lbViewList: TdxBarLargeButton
      Action = actContactViewList
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      SyncImageIndex = False
      ImageIndex = 90
    end
    object lbViewCard: TdxBarLargeButton
      Action = actContactViewCard
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      SyncImageIndex = False
      ImageIndex = 91
    end
    object lbViewByState: TdxBarLargeButton
      Action = actContactViewByState
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      SyncImageIndex = False
      ImageIndex = 92
    end
    object lbViewAlphabetical: TdxBarLargeButton
      Action = actContactViewAlphabetical
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      SyncImageIndex = False
      ImageIndex = 93
    end
  end
  inherited alFrame: TActionList
    object actContactNew: TAction
      Caption = 'New Contact'
      ImageIndex = 5
      OnExecute = actContactNewExecute
    end
    object actContactEdit: TAction
      Caption = 'Edit Contact'
      ImageIndex = 6
      OnExecute = actContactEditExecute
    end
    object actContactDelete: TAction
      Caption = 'Delete'
      ImageIndex = 1
      OnExecute = actContactDeleteExecute
    end
    object actContactViewList: TAction
      AutoCheck = True
      Caption = 'List'
      GroupIndex = 1
      ImageIndex = 9
      OnExecute = actContactViewExecute
    end
    object actContactViewAlphabetical: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Alphabetical'
      GroupIndex = 1
      ImageIndex = 10
      OnExecute = actContactViewExecute
    end
    object actContactViewByState: TAction
      Tag = 2
      AutoCheck = True
      Caption = 'By State'
      GroupIndex = 1
      ImageIndex = 8
      OnExecute = actContactViewExecute
    end
    object actContactViewCard: TAction
      Tag = 3
      AutoCheck = True
      Caption = 'Card'
      GroupIndex = 1
      ImageIndex = 7
      OnExecute = actContactViewExecute
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
    inherited lslfMain: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 160
    Top = 128
    PixelsPerInch = 96
    object stName: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
  end
end
