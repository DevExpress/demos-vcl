inherited frmGridOfficeCompactView: TfrmGridOfficeCompactView
  inherited PanelGrid: TdxPanel
    Width = 464
    ExplicitWidth = 464
    inherited Grid: TcxGrid
      Top = 41
      Width = 464
      Height = 629
      LookAndFeel.ScrollbarMode = sbmTouch
      ExplicitTop = 41
      ExplicitWidth = 464
      ExplicitHeight = 629
      object TableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        FindPanel.Behavior = fcbSearch
        FindPanel.DisplayMode = fpdmManual
        FindPanel.Layout = fplCompact
        FindPanel.UseExtendedSyntax = True
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCanFocusRecord = TableViewCanFocusRecord
        OnFocusedRecordChanged = TableViewFocusedRecordChanged
        OnTopRecordIndexChanged = TableViewTopRecordIndexChanged
        DataController.DataSource = dmMain.dsMessage
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.IgnoreTimeForFiltering = True
        DateTimeHandling.Grouping = dtgRelativeToToday
        OptionsBehavior.HotTrack = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowHeight = 35
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.Header = False
        RowLayout.Active = True
        RowLayout.CellBorders = False
        RowLayout.DefaultStretch = fsHorizontal
        RowLayout.MinValueWidth = 2
        RowLayout.UseDefaultLayout = False
        RowLayout.OnCustomDrawRowHotTrack = TableViewDrawRowHotTrack
        RowLayout.OnCustomDrawRowSelection = TableViewDrawRowHotTrack
        OnCustomDrawGroupCell = TableViewDrawGroupRow
        object TableViewSubject: TcxGridDBColumn
          DataBinding.FieldName = 'Subject'
          OnCustomDrawCell = TableViewDrawRowText
          RowLayoutItem = TableViewLayoutItem1.Owner
          Styles.Content = stRead
          VisibleForRowLayout = bTrue
        end
        object TableViewPlainText: TcxGridDBColumn
          DataBinding.FieldName = 'PlainText'
          OnCustomDrawCell = TableViewDrawRowText
          RowLayoutItem = TableViewLayoutItem2.Owner
          Styles.Content = stDisabled
          VisibleForRowLayout = bTrue
          Width = 200
        end
        object TableViewSender: TcxGridDBColumn
          DataBinding.FieldName = 'Sender'
          RowLayoutItem = TableViewLayoutItem3.Owner
          Styles.Content = stSender
          VisibleForRowLayout = bTrue
        end
        object TableViewDate: TcxGridDBColumn
          DataBinding.FieldName = 'Date'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DateButtons = []
          Properties.ShowTime = False
          OnCustomDrawCell = TableViewDrawRowText
          GroupIndex = 0
          RowLayoutItem = TableViewLayoutItem4.Owner
          SortIndex = 0
          SortOrder = soDescending
          Styles.Content = stRead
          VisibleForRowLayout = bTrue
        end
        object TableViewPriority: TcxGridDBColumn
          DataBinding.FieldName = 'Priority'
          OnCustomDrawCell = TableViewDrawPriority
          RowLayoutItem = TableViewLayoutItem5.Owner
        end
        object TableViewRemove: TcxGridDBColumn
          Caption = 'Remove'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = TableViewDrawButton
          RowLayoutItem = TableViewLayoutItem6.Owner
        end
        object TableViewEdit: TcxGridDBColumn
          Tag = 1
          Caption = 'Edit'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = TableViewDrawButton
          RowLayoutItem = TableViewLayoutItem7.Owner
        end
        object TableViewShow: TcxGridDBColumn
          Tag = 2
          Caption = 'Show'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = TableViewDrawButton
          RowLayoutItem = TableViewLayoutItem8.Owner
        end
        object TableViewRead: TcxGridDBColumn
          DataBinding.FieldName = 'Read'
          PropertiesClassName = 'TcxTextEditProperties'
          OnCustomDrawCell = TableViewDrawRead
          RowLayoutItem = TableViewLayoutItem9.Owner
        end
        object TcxGridTableRowLayoutSerializationOwner
          object TableViewRootGroup: TcxGridTableRowLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Template Layout'
            Hidden = True
            LayoutDirection = ldHorizontal
            Padding.Bottom = -13
            Padding.Left = -18
            Padding.Right = -18
            Padding.Top = -14
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            ShowBorder = False
            Index = -1
          end
          object TableViewLayoutItem1: TcxGridTableRowLayoutItem
            Parent = TableViewGroup1.Owner
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            Index = 0
          end
          object TableViewLayoutItem2: TcxGridTableRowLayoutItem
            Parent = TableViewGroup2.Owner
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            Index = 0
          end
          object TableViewLayoutItem3: TcxGridTableRowLayoutItem
            Parent = TableViewGroup3.Owner
            AlignHorz = ahClient
            AlignVert = avClient
            SizeOptions.Height = 34
            CaptionOptions.Visible = False
            Index = 0
          end
          object TableViewLayoutItem4: TcxGridTableRowLayoutItem
            Parent = TableViewGroup1.Owner
            AlignHorz = ahRight
            AlignVert = avClient
            SizeOptions.Width = 70
            CaptionOptions.Visible = False
            Index = 1
          end
          object TableViewGroup1: TdxLayoutGroup
            Parent = TableViewGroup5.Owner
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Subject_Date'
            CaptionOptions.Visible = False
            Offsets.Bottom = -6
            Offsets.Top = -7
            SizeOptions.Height = 28
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 1
          end
          object TableViewSpaceItem1: TdxLayoutEmptySpaceItem
            Parent = TableViewGroup2.Owner
            SizeOptions.Height = 10
            SizeOptions.Width = 46
            CaptionOptions.Text = 'Empty Space Item'
            Index = 1
          end
          object TableViewGroup2: TdxLayoutGroup
            Parent = TableViewGroup5.Owner
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'PlainText'
            CaptionOptions.Visible = False
            Offsets.Left = 1
            Offsets.Top = -6
            SizeOptions.Height = 29
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 2
          end
          object TableViewLayoutItem5: TcxGridTableRowLayoutItem
            Parent = TableViewGroup4.Owner
            AlignHorz = ahRight
            AlignVert = avTop
            SizeOptions.Height = 26
            SizeOptions.Width = 8
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            CaptionOptions.Visible = False
            Index = 3
          end
          object TableViewGroup3: TdxLayoutGroup
            Parent = TableViewGroup5.Owner
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Sender_Buttons'
            CaptionOptions.Visible = False
            Offsets.Bottom = -5
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 0
          end
          object TableViewGroup4: TdxLayoutGroup
            Parent = TableViewGroup3.Owner
            AlignHorz = ahRight
            AlignVert = avTop
            CaptionOptions.Text = 'Buttons'
            CaptionOptions.Visible = False
            LayoutDirection = ldHorizontal
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            ShowBorder = False
            Index = 1
          end
          object TableViewLayoutItem6: TcxGridTableRowLayoutItem
            Parent = TableViewGroup4.Owner
            AlignHorz = ahRight
            AlignVert = avTop
            Offsets.Right = -6
            Offsets.Top = 2
            SizeOptions.Height = 26
            SizeOptions.Width = 18
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            CaptionOptions.Visible = False
            Index = 2
          end
          object TableViewLayoutItem7: TcxGridTableRowLayoutItem
            Parent = TableViewGroup4.Owner
            AlignHorz = ahRight
            AlignVert = avTop
            Offsets.Top = 2
            SizeOptions.Height = 26
            SizeOptions.Width = 18
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            CaptionOptions.Visible = False
            Index = 1
          end
          object TableViewLayoutItem8: TcxGridTableRowLayoutItem
            Parent = TableViewGroup4.Owner
            AlignHorz = ahRight
            AlignVert = avTop
            Offsets.Top = 2
            SizeOptions.Height = 26
            SizeOptions.Width = 18
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            CaptionOptions.Visible = False
            Index = 0
          end
          object TableViewLayoutItem9: TcxGridTableRowLayoutItem
            Parent = TableViewRootGroup
            AlignHorz = ahLeft
            AlignVert = avClient
            SizeOptions.Width = 3
            Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
            CaptionOptions.Visible = False
            Index = 0
          end
          object TableViewGroup5: TdxLayoutGroup
            Parent = TableViewRootGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Content'
            CaptionOptions.Visible = False
            Offsets.Bottom = 5
            Offsets.Left = 16
            Offsets.Right = 10
            Offsets.Top = 4
            ItemIndex = 2
            ShowBorder = False
            Index = 1
          end
        end
      end
      object Level: TcxGridLevel
        GridView = TableView
      end
    end
    object PanelFilter: TdxPanel
      Left = 0
      Top = 0
      Width = 464
      Height = 41
      Align = alTop
      Frame.Borders = [bBottom]
      TabOrder = 1
      object pbFilterButton: TPaintBox
        Tag = 3
        Left = 10
        Top = 9
        Width = 55
        Height = 21
        OnClick = FilterButtonClick
        OnMouseEnter = FilterButtonMouseEnter
        OnMouseLeave = FilterButtonMouseLeave
        OnPaint = DrawFilterButton
      end
      object dxPanel2: TdxPanel
        Left = 281
        Top = 0
        Width = 183
        Height = 40
        Align = alRight
        Frame.Visible = False
        TabOrder = 0
        object dxToggleSwitch1: TdxToggleSwitch
          AlignWithMargins = True
          Left = 3
          Top = 9
          Margins.Right = 30
          Action = acItemAutoHeight
          Checked = True
          Properties.Alignment = taLeftJustify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 0
          Transparent = True
        end
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 464
    Width = 458
    ExplicitLeft = 464
    ExplicitWidth = 458
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 457
      Width = 457
      inherited lcFrame: TdxLayoutControl
        Width = 455
        ExplicitWidth = 455
        object rchMessage: TdxRichEditControl [0]
          Left = 16
          Top = 173
          Width = 429
          Height = 464
          ActiveViewType = Simple
          BorderStyle = cxcbsNone
          Color = clBtnFace
          Options.VerticalScrollbar.Visibility = Hidden
          ReadOnly = True
          Views.Simple.Padding.All = 0
          TabOrder = 3
        end
        object tgsItemAutoHeight: TdxToggleSwitch [1]
          AlignWithMargins = True
          Left = 10000
          Top = 10000
          Margins.Right = 30
          Action = acItemAutoHeight
          Checked = True
          Properties.Alignment = taLeftJustify
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 6
          Transparent = True
          Visible = False
        end
        object pbSenderPhoto: TPaintBox [2]
          Left = 2
          Top = 60
          Width = 80
          Height = 80
          Color = clBtnFace
          ParentColor = False
          OnPaint = DrawSenderPhoto
        end
        object lbSubject: TcxDBLabel [3]
          Left = 13
          Top = 10
          AutoSize = True
          DataBinding.DataField = 'Subject'
          DataBinding.DataSource = dmMain.dsMessage
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -21
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbSender: TcxDBLabel [4]
          Left = 98
          Top = 96
          AutoSize = True
          DataBinding.DataField = 'Sender'
          DataBinding.DataSource = dmMain.dsMessage
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbDate: TcxDBLabel [5]
          Left = 98
          Top = 119
          AutoSize = True
          DataBinding.DataField = 'Date'
          DataBinding.DataSource = dmMain.dsMessage
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        inherited lgSetupTools: TdxLayoutGroup
          Offsets.Left = -8
          SizeOptions.Width = 400
          ItemIndex = 1
          Padding.Left = -3
          Padding.Right = 9
          Padding.Top = 10
          Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
        end
        object lgGrid: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = -1
        end
        object liMessage: TdxLayoutItem
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avClient
          Offsets.Left = 14
          Offsets.Top = 27
          CaptionOptions.Text = 'dxRichEditControl1'
          CaptionOptions.Visible = False
          Control = rchMessage
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 200
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lgFilter: TdxLayoutGroup
          Parent = lgGrid
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Offsets.Bottom = -7
          LayoutDirection = ldHorizontal
          Padding.Bottom = -5
          Padding.Left = 14
          Padding.Right = 14
          Padding.Top = -4
          Padding.AssignedValues = [lpavBottom, lpavLeft, lpavRight, lpavTop]
          Index = 0
        end
        object liItemAutoHeight: TdxLayoutItem
          Parent = lgFilter
          AlignHorz = ahRight
          AlignVert = avTop
          CaptionOptions.Text = 'dxToggleSwitch1'
          CaptionOptions.Visible = False
          Control = tgsItemAutoHeight
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 164
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liSenderPhoto: TdxLayoutItem
          Parent = lgSendInfo
          AlignHorz = ahLeft
          AlignVert = avTop
          Offsets.Right = 10
          CaptionOptions.Text = 'PaintBox1'
          CaptionOptions.Visible = False
          Control = pbSenderPhoto
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 80
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liSubject: TdxLayoutItem
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avTop
          Offsets.Bottom = 14
          Offsets.Left = 11
          CaptionOptions.Text = 'cxDBLabel1'
          CaptionOptions.Visible = False
          Control = lbSubject
          ControlOptions.OriginalHeight = 30
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liSender: TdxLayoutItem
          Parent = lgSender_Date
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'cxDBLabel1'
          CaptionOptions.Visible = False
          Control = lbSender
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liDate: TdxLayoutItem
          Parent = lgSender_Date
          AlignHorz = ahClient
          AlignVert = avBottom
          Offsets.Top = -4
          CaptionOptions.Text = 'cxDBLabel2'
          CaptionOptions.Visible = False
          Control = lbDate
          ControlOptions.OriginalHeight = 13
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lgSendInfo: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object lgSender_Date: TdxLayoutGroup
          Parent = lgSendInfo
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Offsets.Bottom = 8
          ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 264
    Top = 112
    object acItemAutoHeight: TAction
      AutoCheck = True
      Caption = 'Item Auto-Height'
      Checked = True
      OnExecute = acItemAutoHeightExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 96
    Top = 136
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object strStyles: TcxStyleRepository
    Left = 104
    Top = 64
    PixelsPerInch = 96
    object stSender: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object stUnread: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 10251598
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object stPriority: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object stRead: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
    object stDisabled: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
  object ilImages: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 4194344
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000029744558745469746C650052656D6F76653B44656C6574
          653B426172733B526962626F6E3B5374616E646172643B635648300000007349
          444154785EB593D10A80200C00FD3011FBB1C1BE7CAD08069D2BC17AB827B943
          E62C66B6C4F7815A6B734A4243E0268B638E508E33042EB99F722090833E0A1C
          282294D519DE2089504E038C509E0DC820209301CA8C3090C99A0C76EA19F561
          263D5B2485CC88BEADF21612D87EF94C4BEC635F0F3B88BC8DE9000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000020744558745469746C6500456469743B426172733B5269
          62626F6E3B5374616E646172643B3013C3DB0000007D49444154785EB5D0C109
          C03008856147C8201DC1A13A8190C53A4B36B11E1452499F94D0C34F0E818F87
          A4AA5B3D00665690586461A0443260E2690D7F0F07682E231918F119080022C9
          0BF2CC56003ADFE00DA1552B20908E911A70045EBD045A42BAE19F802B108F2C
          F902A823818AA51040FA627E0D54FD026C7503D8CE0EC6BC1610D70000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001E744558745469746C65004C65747465723B652D6D6169
          6C3B656D61696C3B6D61696C1A9193DA0000006F49444154785EC5D3310EC020
          0805500EC6D9483C959367A36D2221F9249496C1E10F7FF84F0725556DA50F30
          F3BAA33FB36897071A1F80B1376A8038521E8B038054C70820928F11C8111C47
          209E6408F61CF09376083B22F4724DC18E0825634C440CC071153160369EF23C
          FF1B2F18A8D8A8DE4FF7420000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000001974455874536F667477
          6172650041646F626520496D616765526561647971C9653C0000001B74455874
          5469746C65004E6578743B506C61793B4172726F773B526967687416E40EAE00
          00005C49444154384F63FCFFFF3F032580094A930D460D606080C782ADAD6D23
          90AA03730883FAC3870F378118C82EA80762B0200180A20EDD0B840CC190C716
          06B80CC12A8E2B10D115E37419CE5800061248130C63D50C02A37981810100FE
          031A65C7BD337F0000000049454E44AE426082}
      end>
  end
  object bmFilters: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 192
    Top = 72
    PixelsPerInch = 96
    object bbAll: TdxBarLargeButton
      Caption = 'All'
      Category = 0
      Hint = 'All'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = SelectFilter
    end
    object bbUnread: TdxBarLargeButton
      Tag = 1
      Caption = 'Unread'
      Category = 0
      Hint = 'Unread'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectFilter
    end
    object bbImportant: TdxBarLargeButton
      Tag = 2
      Caption = 'Important'
      Category = 0
      Hint = 'Important'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectFilter
    end
    object bbToday: TdxBarLargeButton
      Tag = 3
      Caption = 'Today'
      Category = 0
      Hint = 'Today'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectFilter
    end
    object bbYesterday: TdxBarLargeButton
      Tag = 4
      Caption = 'Yesterday'
      Category = 0
      Hint = 'Yesterday'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = SelectFilter
    end
  end
  object bpmFilters: TdxBarPopupMenu
    BarManager = bmFilters
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbAll'
      end
      item
        Visible = True
        ItemName = 'bbUnread'
      end
      item
        Visible = True
        ItemName = 'bbImportant'
      end
      item
        Visible = True
        ItemName = 'bbToday'
      end
      item
        Visible = True
        ItemName = 'bbYesterday'
      end>
    UseOwnFont = False
    Left = 236
    Top = 72
    PixelsPerInch = 96
  end
end
