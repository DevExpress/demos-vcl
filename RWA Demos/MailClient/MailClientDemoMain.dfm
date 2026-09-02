object fmMailClientDemoMain: TfmMailClientDemoMain
  Left = 246
  Top = 107
  Caption = 'DevExpress VCL MailClient'
  ClientHeight = 882
  ClientWidth = 1357
  Color = clBtnFace
  Constraints.MinHeight = 450
  Constraints.MinWidth = 760
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1357
    Height = 154
    ApplicationButton.Glyph.SourceDPI = 96
    ApplicationButton.Glyph.Data = {
      3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
      30302F737667222076657273696F6E3D22312E31222076696577426F783D2230
      2030203136203136223E0D0A20203C706174682066696C6C3D2263757272656E
      74436F6C6F722220643D224D3220332E35612E352E35203020302031202E352D
      2E35683131612E352E3520302030203120302031682D3131612E352E35203020
      3020312D2E352D2E356D302034612E352E35203020302031202E352D2E356831
      31612E352E3520302030203120302031682D3131612E352E352030203020312D
      2E352D2E356D302034612E352E35203020302031202E352D2E35683131612E35
      2E3520302030203120302031682D3131612E352E352030203020312D2E352D2E
      35222F3E0D0A3C2F7376673E0D0A}
    ApplicationButton.Menu = RibbonBackstageView
    BarManager = bmMain
    Style = rsOffice365
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'WXI'
    PopupMenuItems = [rpmiItems, rpmiQATPosition, rpmiQATAddRemoveItem, rpmiMinimizeRibbon]
    QuickAccessToolbar.Toolbar = tbQuickAccess
    QuickAccessToolbar.Visible = False
    ShowFormIcon = bFalse
    SupportNonClientDrawing = True
    Contexts = <
      item
        Caption = 'Calendar Tools'
        Color = 13468115
      end>
    CaptionAreaSearchToolbar.Toolbar = tbTabAreaSearchToolbar
    CaptionAreaSearchToolbar.Visible = False
    TabAreaSearchToolbar.Visible = False
    TabOrder = 0
    TabStop = False
    OnApplicationMenuClick = dxRibbon1ApplicationMenuClick
    OnTabChanged = dxRibbon1TabChanged
    OnTabChanging = dxRibbon1TabChanging
    OnResize = dxRibbon1Resize
    object rtFile: TdxRibbonTab
      Caption = 'File'
      Groups = <>
      Index = 0
    end
    object rtFrame: TdxRibbonTab
      Active = True
      Caption = 'Frame'
      Groups = <>
      Index = 1
    end
    object rtView: TdxRibbonTab
      Caption = 'View'
      Groups = <
        item
          Caption = 'Navigation'
          ToolbarName = 'tbViewNavigation'
        end
        item
          ToolbarName = 'tbRibbonOptions'
        end
        item
          Caption = 'Quick Access Toolbar'
          ToolbarName = 'tbQuickAccessToolbarLayout'
        end
        item
          ToolbarName = 'tbColorSchemes'
        end
        item
          ToolbarName = 'tbSearchOptions'
        end>
      Index = 2
    end
    object rtAppointment: TdxRibbonTab
      Caption = 'Appointment'
      Groups = <>
      Index = 3
      ContextIndex = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 863
    Width = 1357
    Height = 19
    AutoSize = True
    Color = clBtnFace
    Images = DM.ilToolbarsSmall
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'tbItemsCount'
        Width = 41
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'tbStatusBarView'
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxRibbonStatusBar1Container3
        Width = 250
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    object dxRibbonStatusBar1Container3: TdxStatusBarContainerControl
      Left = 1090
      Top = 0
      Width = 252
      Height = 19
      object ztbContent: TdxZoomTrackBar
        Left = 0
        Top = 0
        Align = alClient
        Properties.ShowPositionHint = True
        Properties.TickSize = 1
        Properties.OnChange = dxZoomTrackBar1PropertiesChange
        Style.HotTrack = False
        TabOrder = 0
        Height = 19
        Width = 252
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 953
    Top = 154
    Width = 404
    Height = 709
    Align = alRight
    TabOrder = 2
    Visible = False
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    ExplicitLeft = 220
    ExplicitHeight = 268
    inline Frame11: TFrame1
      Left = 12
      Top = 12
      Width = 387
      Height = 608
      AutoSize = True
      TabOrder = 0
      ExplicitLeft = 12
      ExplicitTop = 12
      ExplicitHeight = 608
      inherited cxGroupBox5: TcxGroupBox
        ExplicitHeight = 608
        Height = 608
        inherited cxGroupBox1: TcxGroupBox
          Top = 564
          ExplicitTop = 566
        end
        inherited dnScheduler: TcxDateNavigator
          Height = 537
          OnCustomDrawBackground = dnSchedulerCustomDrawBackground
          OnCustomDrawDayNumber = dnSchedulerCustomDrawDayNumber
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 172
          ExplicitHeight = 137
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 172
          ExplicitHeight = 137
        end
        inherited cxButton1: TcxButton
          OptionsImage.Glyph.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            000000000000C40E0000C40E00000000000000000000FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3C3C483C3C
            3CE73C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CE73C3C3C48FFFFFF00FFFFFF003C3C3CE43C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CE4FFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3C7EFFFFFF003C3C3C7E3C3C3CFF3C3C3CFF3C3C3C7EFFFF
            FF003C3C3C7E3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CBFFFFFFF00FFFFFF00FFFFFF003C3C3C7E3C3C3C7EFFFFFF00FFFF
            FF00FFFFFF003C3C3CBF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3C81FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF003C3C3C813C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3C81FFFFFF00FFFFFF00FFFFFF00FFFFFF003C3C
            3C813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3C7EFFFFFF00FFFFFF00FFFFFF00FFFFFF003C3C
            3C7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3C7EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF003C3C3C7E3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CBFFFFFFF00FFFFFF00FFFFFF003C3C3C813C3C3C81FFFFFF00FFFF
            FF00FFFFFF003C3C3CBF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3C81FFFFFF003C3C3C813C3C3CFF3C3C3CFF3C3C3C81FFFF
            FF003C3C3C813C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CC13C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CC13C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFFFFFFFF00FFFFFF003C3C3CE73C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CE7FFFFFF00FFFFFF003C3C3C3F3C3C
            3CC93C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
            3CFF3C3C3CFF3C3C3CFF3C3C3CC93C3C3C3FFFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = cxButton1Click
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object liCalendar: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = False
      CaptionOptions.Visible = False
      Control = Frame11
      ControlOptions.OriginalHeight = 500
      ControlOptions.OriginalWidth = 387
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxGroupBox5: TcxGroupBox
    Left = 487
    Top = 208
    Style.BorderStyle = ebsNone
    TabOrder = 3
    Transparent = True
    Height = 397
    Width = 387
    object cxGroupBox1: TcxGroupBox
      Left = 4
      Top = 353
      Align = alBottom
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Transparent = True
      ExplicitLeft = 2
      ExplicitTop = 355
      Height = 40
      Width = 379
      object btnToday: TcxButton
        Left = 147
        Top = 8
        Width = 89
        Height = 24
        Caption = 'Today'
        TabOrder = 0
        OnClick = btnTodayClick
      end
    end
    object dnScheduler: TcxDateNavigator
      Left = 4
      Top = 27
      Width = 379
      Height = 326
      Align = alClient
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ShowDatesContainingHolidaysInColor = True
      TabOrder = 1
      OnCustomDrawBackground = dnSchedulerCustomDrawBackground
      OnCustomDrawDayNumber = dnSchedulerCustomDrawDayNumber
      ExplicitTop = 30
      ExplicitHeight = 323
    end
    object cxButton2: TcxButton
      Left = 350
      Top = 28
      Width = 25
      Height = 25
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E00000000000000000000333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00333333FF3333
        33FF333333FF333333FFFFFFFF00333333FF333333FF333333FF333333FFFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF}
      PaintStyle = bpsGlyph
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      OnClick = cxButton2Click
    end
  end
  object RibbonBackstageView: TdxRibbonBackstageView
    Left = 324
    Top = 185
    Width = 1025
    Height = 610
    Buttons = <
      item
        Item = bExit
        Position = mbpAfterTabs
      end>
    Ribbon = dxRibbon1
    OnCloseUp = RibbonBackstageViewCloseUp
    OnPopup = RibbonBackstageViewPopup
    object bvtsInfo: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Active = True
      Caption = 'Info'
      object gbHelpContent: TcxGroupBox
        AlignWithMargins = True
        Left = 42
        Top = 0
        Margins.Left = 42
        Margins.Top = 0
        Margins.Right = 42
        Margins.Bottom = 26
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Transparent = True
        Height = 584
        Width = 809
      end
      object dxLayoutControl2: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 893
        Height = 610
        Align = alClient
        ParentBackground = True
        TabOrder = 1
        Transparent = True
        OptionsImage.Images = cxImageList1
        object lblClientCenter: TcxLabel
          Left = 73
          Top = 378
          Cursor = crHandPoint
          Caption = 'DevExpress Client Center'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 6
          Transparent = True
          OnClick = lblClientCenterClick
        end
        object lblDownloads: TcxLabel
          Left = 73
          Top = 344
          Cursor = crHandPoint
          Caption = 'DevExpress Downloads'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 5
          Transparent = True
          OnClick = lblDownloadsClick
        end
        object lblDxOnWeb: TcxLabel
          Left = 73
          Top = 276
          Cursor = crHandPoint
          Caption = 'DevExpress on the WEB'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 3
          Transparent = True
          OnClick = lblDxOnWebClick
        end
        object lblProducts: TcxLabel
          Left = 73
          Top = 310
          Cursor = crHandPoint
          Caption = 'DevExpress VCL Products'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 4
          Transparent = True
          OnClick = lblProductsClick
        end
        object lblKnowledgeBase: TcxLabel
          Left = 73
          Top = 198
          Cursor = crHandPoint
          Caption = 'DevExpress Knowledge Base'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 2
          Transparent = True
          OnClick = lblKnowledgeBaseClick
        end
        object lblGettingStarted: TcxLabel
          Left = 73
          Top = 130
          Cursor = crHandPoint
          Caption = 'Getting Started'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 0
          Transparent = True
          OnClick = lblGettingStartedClick
        end
        object lblSupportCenter: TcxLabel
          Left = 73
          Top = 164
          Cursor = crHandPoint
          Caption = 'DevExpress Support Center'
          ParentFont = False
          Style.TextColor = clBlack
          Style.TextStyle = [fsUnderline]
          TabOrder = 1
          Transparent = True
          OnClick = lblSupportCenterClick
        end
        object dxLayoutControl2Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avParentManaged
          Hidden = True
          ItemIndex = 2
          Padding.Left = 40
          Padding.Right = 40
          Padding.AssignedValues = [lpavLeft, lpavRight]
          ShowBorder = False
          Index = -1
        end
        object dxLayoutImageItem1: TdxLayoutImageItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahRight
          CaptionOptions.Text = 'Image'
          CaptionOptions.Visible = False
          Image.SourceDPI = 96
          Image.UseEnabledSkinPaletteForSVG = bTrue
          Image.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D223020302031353720333022207374796C65
            3D22656E61626C652D6261636B67726F756E643A6E6577203020302031353720
            33303B2220786D6C3A73706163653D227072657365727665223E262331333B26
            2331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A73
            706163653D227072657365727665223E2E7374307B66696C6C3A233430343034
            313B7D262331333B262331303B2623393B2E7374317B66696C6C3A2346343831
            32303B7D3C2F7374796C653E0D0A3C7061746820636C6173733D227374302220
            643D224D33372E352C352E35632D312E372C302D332E332C302E312D342E362C
            302E347631372E3363302E392C302E312C322E322C302E322C332E382C302E32
            63332E312C302C352E352D302E372C372E312D322E3263312E342D312E322C32
            2E372D332E342C322E372D372E3220202623393B63302D332E322D312D352E34
            2D322E372D362E374334322E342C362E312C34302E342C352E352C33372E352C
            352E357A204D33372E362C32302E37632D302E352C302D312C302D312E332D30
            2E3156382E3363302E342D302E312C302E392D302E312C312E362D302E316333
            2E312C302C352E312C322C352E312C3620202623393B4334332C31382E382C34
            302E382C32302E372C33372E362C32302E377A222F3E0D0A3C7061746820636C
            6173733D227374302220643D224D35342E312C31302E32632D332E372C302D35
            2E382C332E322D352E382C362E3863302C342C322E322C362E342C362E322C36
            2E3463312E362C302C332E312D302E332C342E312D302E376C2D302E352D322E
            3320202623393B632D302E392C302E332D312E392C302E352D332E312C302E35
            632D312E382C302D332E342D302E392D332E352D3368372E3663302E312D302E
            342C302E312D302E382C302E312D312E344335392E322C31322E342C35372E32
            2C31302E322C35342E312C31302E327A204D35312E352C31352E352020262339
            3B63302E312D312E332C302E382D332C322E342D3363312E372C302C322E322C
            312E362C322E322C334835312E357A222F3E0D0A3C7061746820636C6173733D
            227374302220643D224D36382E372C31302E356C2D312E362C362E32632D302E
            332C312E312D302E352C322E322D302E372C332E33682D302E31632D302E322D
            312E312D302E342D322E322D302E372D332E336C2D312E372D362E32682D332E
            366C342E332C31322E3868332E3320202623393B6C342E342D31322E38483638
            2E377A222F3E0D0A3C7061746820636C6173733D227374302220643D224D312E
            372C32322E31632D302E362C302E382D312E312C312E352D312E352C322E3263
            2D302E312C302E322D302E322C302E362D302E322C3176302E3563302C302E38
            2C302E372C312E342C312E352C312E346832322E3220202623393B63302E382C
            302C312E342D302E372C312E342D312E3456382E364331332C31302E372C352E
            362C31372E332C312E372C32322E317A222F3E0D0A3C706F6C79676F6E20636C
            6173733D227374312220706F696E74733D2237372E352C31352E352038332E33
            2C31352E352038332E332C31322E372037372E352C31322E372037372E352C38
            2E352038332E362C382E352038332E362C352E362037342E312C352E36203734
            2E312C32332E332038342C32332E332020202623393B38342C32302E34203737
            2E352C32302E3420222F3E0D0A3C7061746820636C6173733D22737431222064
            3D224D39362E382C31302E35682D332E366C2D312E312C322E33632D302E332C
            302E372D302E362C312E342D302E392C326830632D302E332D302E362D302E36
            2D312E332D312D326C2D312E322D322E33682D332E386C332E382C362E334C38
            352C32332E3368332E3620202623393B6C312E322D322E3563302E332D302E37
            2C302E362D312E332C302E392D32683063302E332C302E372C302E362C312E34
            2C312C326C312E332C322E3568332E384C39332C31362E374C39362E382C3130
            2E357A222F3E0D0A3C7061746820636C6173733D227374312220643D224D3130
            352E342C31302E32632D312E372C302D332C302E372D332E382C3268306C2D30
            2E322D312E37682D3363302C312E322C302E312C322E352C302E312C342E3276
            31332E3768332E34563232683063302E352C302E382C312E362C312E352C332C
            312E3520202623393B63322E362C302C352E322D322E312C352E322D362E3843
            3131302E332C31322E382C3130382E322C31302E322C3130352E342C31302E32
            7A204D3130342E322C32302E39632D312E312C302D322E332D302E392D322E33
            2D322E37762D322E3463302D312E352C312D322E382C322E332D322E38202026
            23393B63312E372C302C322E352C312E372C322E352C332E39433130362E382C
            31392E322C3130352E392C32302E392C3130342E322C32302E397A222F3E0D0A
            3C7061746820636C6173733D227374312220643D224D3131352E372C31322E37
            4C3131352E372C31322E376C2D302E322D322E32682D322E3963302C312E312C
            302E312C322E342C302E312C3476382E3868332E34762D362E3663302D322E32
            2C312E322D332E322C322E372D332E3220202623393B63302E332C302C302E36
            2C302C302E392C302E31762D332E32632D302E322C302D302E342D302E312D30
            2E382D302E31433131372E372C31302E322C3131362E332C31312E312C313135
            2E372C31322E377A222F3E0D0A3C7061746820636C6173733D22737431222064
            3D224D3132362E372C31302E32632D332E372C302D352E382C332E322D352E38
            2C362E3863302C342C322E322C362E342C362E322C362E3463312E362C302C33
            2E312D302E332C342E312D302E376C2D302E352D322E3320202623393B632D30
            2E392C302E332D312E392C302E352D332E312C302E35632D312E382C302D332E
            342D302E392D332E352D3368372E3663302E312D302E342C302E312D302E382C
            302E312D312E34433133312E382C31322E342C3132392E382C31302E322C3132
            362E372C31302E327A204D3132342C31352E3520202623393B63302E312D312E
            332C302E382D332C322E342D3363312E372C302C322E322C312E362C322E322C
            33483132347A222F3E0D0A3C7061746820636C6173733D227374312220643D22
            4D3133382E382C31352E36632D312E352D302E362D312E392D312D312E392D31
            2E3763302D302E372C302E352D312E322C312E362D312E3263312C302C312E39
            2C302E342C322E342C302E376C302E362D322E3420202623393B632D302E372D
            302E342D312E392D302E372D332E322D302E37632D322E382C302D342E372C31
            2E372D342E372C3463302C312E342C302E392C322E382C332E332C332E376331
            2E342C302E362C312E382C312C312E382C312E3863302C302E382D302E362C31
            2E332D312E382C312E3320202623393B632D312E312C302D322E332D302E352D
            332D302E386C2D302E362C322E3563302E382C302E352C322E322C302E382C33
            2E362C302E3863332E322C302C352D312E362C352D34433134322C31372E372C
            3134312C31362E352C3133382E382C31352E367A222F3E0D0A3C706174682063
            6C6173733D227374312220643D224D3134392C31352E36632D312E352D302E36
            2D312E392D312D312E392D312E3763302D302E372C302E352D312E322C312E36
            2D312E3263312C302C312E392C302E342C322E342C302E376C302E362D322E34
            632D302E372D302E342D312E392D302E372D332E322D302E3720202623393B63
            2D322E382C302D342E372C312E372D342E372C3463302C312E342C302E392C32
            2E382C332E332C332E3763312E342C302E362C312E382C312C312E382C312E38
            63302C302E382D302E362C312E332D312E382C312E33632D312E312C302D322E
            332D302E352D332D302E386C2D302E362C322E3520202623393B63302E382C30
            2E352C322E322C302E382C332E362C302E3863332E322C302C352D312E362C35
            2D34433135322E312C31372E372C3135312E312C31362E352C3134392C31352E
            367A222F3E0D0A3C7061746820636C6173733D227374312220643D224D32332E
            372C3248312E3543302E372C322C302C322E372C302C332E357631332E336334
            2E342D342E362C31322E322D392E372C32342E322D31312E3163302E332C302C
            312D302E322C312D312E3156332E354332352E312C322E372C32342E352C322C
            32332E372C327A20202623393B222F3E0D0A3C7061746820636C6173733D2273
            74312220643D224D3135352E342C392E374C3135352E342C392E3763302E342D
            302E312C302E362D302E332C302E362D302E3663302D302E322D302E312D302E
            342D302E322D302E35632D302E322D302E312D302E342D302E322D302E372D30
            2E32682D302E3876322E3368302E3520202623393B56392E3968302E3263302E
            312C302C302E332C302E312C302E332C302E336C302E322C302E3668302E356C
            2D302E332D302E37433135352E372C392E392C3135352E362C392E382C313535
            2E342C392E377A204D3135352E312C392E35682D302E3356382E3868302E3320
            202623393B63302E332C302C302E352C302E312C302E352C302E3363302C302E
            312C302C302E322D302E312C302E32433135352E332C392E352C3135352E322C
            392E352C3135352E312C392E357A222F3E0D0A3C7061746820636C6173733D22
            7374312220643D224D3135362E352C382E33632D302E342D302E342D302E382D
            302E352D312E332D302E35632D302E352C302D312C302E322D312E342C302E35
            632D302E342C302E342D302E362C302E382D302E362C312E3363302C302E352C
            302E322C312C302E352C312E3320202623393B63302E342C302E332C302E382C
            302E352C312E342C302E3563302E352C302C312D302E322C312E342D302E3563
            302E342D302E342C302E362D302E382C302E362D312E33433135372C392E312C
            3135362E382C382E372C3135362E352C382E337A204D3135362E322C31302E38
            20202623393B632D302E332C302E332D302E372C302E352D312E312C302E3563
            2D302E342C302D302E382D302E322D312E312D302E35632D302E332D302E332D
            302E352D302E372D302E352D312E3163302D302E342C302E322D302E382C302E
            352D312E3163302E332D302E332C302E372D302E352C312E312D302E35202026
            23393B63302E352C302C302E382C302E322C312E312C302E3563302E332C302E
            332C302E352C302E372C302E352C312E31433135362E372C31302E312C313536
            2E352C31302E352C3135362E322C31302E387A222F3E0D0A3C2F7376673E0D0A}
          Index = 1
        end
        object liInfo: TdxLayoutLabeledItem
          Parent = dxLayoutControl2Group_Root
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          CaptionOptions.Text = 'Info'
          Index = 0
        end
        object liSupport: TdxLayoutLabeledItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          LayoutLookAndFeel = dxLayoutCxLookAndFeel2
          CaptionOptions.Text = 'Support'
          Index = 2
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblGettingStarted
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 79
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblSupportCenter
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 141
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblKnowledgeBase
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 147
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblDxOnWeb
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 122
          ControlOptions.ShowBorder = False
          Index = 8
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblProducts
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 132
          ControlOptions.ShowBorder = False
          Index = 9
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblDownloads
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 120
          ControlOptions.ShowBorder = False
          Index = 10
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          CaptionOptions.ImageIndex = 0
          CaptionOptions.Text = 'New Item'
          CaptionOptions.VisibleElements = [cveImage]
          Control = lblClientCenter
          ControlOptions.OriginalHeight = 27
          ControlOptions.OriginalWidth = 130
          ControlOptions.ShowBorder = False
          Index = 11
        end
        object liLinks: TdxLayoutLabeledItem
          Parent = dxLayoutControl2Group_Root
          AlignHorz = ahLeft
          LayoutLookAndFeel = dxLayoutCxLookAndFeel2
          CaptionOptions.Text = 'Links'
          Index = 7
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = dxLayoutControl2Group_Root
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 6
        end
      end
    end
    object bvtsOpen: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Caption = 'Open'
      object dxLayoutControl3: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 893
        Height = 610
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        Transparent = True
        object bvgcOpen: TdxRibbonBackstageViewGalleryControl
          AlignWithMargins = True
          Left = 52
          Top = 66
          Width = 789
          Height = 530
          Margins.Left = 42
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          BorderStyle = cxcbsNone
          OptionsView.ColumnAutoWidth = True
          OptionsView.ColumnCount = 1
          OptionsView.ContentOffset.All = 0
          OptionsView.ContentOffsetGroups.Bottom = 5
          OptionsView.ContentOffsetItems.Left = 8
          OptionsView.ContentOffsetItems.Top = 12
          OptionsView.ContentOffsetItems.Right = 8
          OptionsView.ContentOffsetItems.Bottom = 12
          OptionsView.Item.Image.ShowFrame = False
          OptionsView.Item.Text.AlignHorz = taLeftJustify
          OptionsView.Item.Text.AlignVert = vaCenter
          OptionsView.Item.Text.Position = posRight
          Ribbon = dxRibbon1
          TabOrder = 0
          OnItemClick = bvgcOpenItemClick
          object bvgcLocationsGroup1: TdxRibbonBackstageViewGalleryGroup
            object bvgcOpenCalendar: TdxRibbonBackstageViewGalleryItem
              Caption = 'Open Calendar'
              Description = 'Open a calendar file (*.ics)'
              Glyph.SourceDPI = 96
              Glyph.Data = {
                3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
                462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
                617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
                2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
                77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
                22307078222076696577426F783D2230203020333220333222207374796C653D
                22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
                3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
                303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
                63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
                323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344313143
                31433B7D262331333B262331303B2623393B2E57686974657B66696C6C3A2346
                46464646463B7D262331333B262331303B2623393B2E7374307B6F7061636974
                793A302E363B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D
                22426C61636B2220706F696E74733D2232362C342032362C382032302C382032
                302C342031302C342031302C3820342C3820342C3420322C3420322C32382032
                382C32382032382C3420222F3E0D0A3C7061746820636C6173733D2257686974
                652220643D224D342C313268323276313448345631327A222F3E0D0A3C706174
                6820636C6173733D22426C61636B2220643D224D362C3668325632483656367A
                204D32322C327634683256324832327A222F3E0D0A3C7061746820636C617373
                3D225265642220643D224D31302C3230762D36683676364831307A204D31322C
                313676326832762D324831327A222F3E0D0A3C672069643D224C617965725F32
                2220636C6173733D22737430223E0D0A09093C7061746820636C6173733D2242
                6C61636B2220643D224D362C32346832762D3248365632347A204D362C323068
                32762D3248365632307A204D362C31366832762D3248365631367A204D31302C
                32346832762D32682D325632347A204D31342C32346832762D32682D32563234
                7A204D31382C32306832762D32682D3220202623393B2623393B5632307A204D
                31382C31366832762D32682D325631367A204D32322C313476326832762D3248
                32327A222F3E0D0A09093C7265637420783D2231382220793D2232322220636C
                6173733D22426C61636B222077696474683D223222206865696768743D223222
                2F3E0D0A09093C7265637420783D2232322220793D2231382220636C6173733D
                22426C61636B222077696474683D223222206865696768743D2232222F3E0D0A
                09093C7265637420783D2232322220793D2232322220636C6173733D22426C61
                636B222077696474683D223222206865696768743D2232222F3E0D0A093C2F67
                3E0D0A3C2F7376673E0D0A}
              ActionIndex = nil
            end
          end
        end
        object dxLayoutControl3Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avParentManaged
          Hidden = True
          Padding.Left = 40
          Padding.Right = 40
          Padding.AssignedValues = [lpavLeft, lpavRight]
          ShowBorder = False
          Index = -1
        end
        object liOpen: TdxLayoutLabeledItem
          Parent = dxLayoutControl3Group_Root
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          CaptionOptions.Text = 'Open'
          Index = 0
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutControl3Group_Root
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Control = bvgcOpen
          ControlOptions.OriginalHeight = 530
          ControlOptions.OriginalWidth = 450
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
    object bvtsPrint: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Caption = 'Print'
      SizeOptions.MinHeight = 700
      object dxLayoutControl4: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 893
        Height = 610
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        Transparent = True
        object dxLayoutControl4Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avParentManaged
          Hidden = True
          Padding.Left = 40
          Padding.Right = 40
          Padding.AssignedValues = [lpavLeft, lpavRight]
          ShowBorder = False
          Index = -1
        end
        object liPrint: TdxLayoutLabeledItem
          Parent = dxLayoutControl4Group_Root
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          CaptionOptions.Text = 'Print'
          Index = 0
        end
        object liPrintReport: TdxLayoutItem
          Parent = dxLayoutControl4Group_Root
          AlignVert = avClient
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Index = 1
        end
      end
    end
    object bvtsExport: TdxRibbonBackstageViewTabSheet
      Left = 132
      Top = 0
      Caption = 'Export'
      object dxLayoutControl5: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 893
        Height = 610
        Align = alClient
        ParentBackground = True
        TabOrder = 0
        Transparent = True
        object bvgcExport: TdxRibbonBackstageViewGalleryControl
          AlignWithMargins = True
          Left = 52
          Top = 66
          Width = 772
          Height = 640
          Margins.Left = 42
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          BorderStyle = cxcbsNone
          OptionsView.ColumnAutoWidth = True
          OptionsView.ColumnCount = 1
          OptionsView.ContentOffset.All = 0
          OptionsView.ContentOffsetGroups.Bottom = 5
          OptionsView.ContentOffsetItems.Left = 8
          OptionsView.ContentOffsetItems.Top = 12
          OptionsView.ContentOffsetItems.Right = 8
          OptionsView.ContentOffsetItems.Bottom = 12
          OptionsView.Item.Image.ShowFrame = False
          OptionsView.Item.Text.AlignHorz = taLeftJustify
          OptionsView.Item.Text.AlignVert = vaCenter
          OptionsView.Item.Text.Position = posRight
          Ribbon = dxRibbon1
          TabOrder = 0
          OnItemClick = bvgcExportItemClick
        end
        object dxLayoutControl5Group_Root: TdxLayoutGroup
          AlignHorz = ahParentManaged
          AlignVert = avParentManaged
          Hidden = True
          Padding.Left = 40
          Padding.Right = 40
          Padding.AssignedValues = [lpavLeft, lpavRight]
          ShowBorder = False
          Index = -1
        end
        object liExport: TdxLayoutLabeledItem
          Parent = dxLayoutControl5Group_Root
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          CaptionOptions.Text = 'Export'
          Index = 0
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutControl5Group_Root
          CaptionOptions.Text = 'New Item'
          CaptionOptions.Visible = False
          Control = bvgcExport
          ControlOptions.OriginalHeight = 640
          ControlOptions.OriginalWidth = 450
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  object gbFramesDisplay: TdxPanel
    Left = 56
    Top = 154
    Width = 897
    Height = 709
    Align = alClient
    Frame.Borders = []
    Frame.Drag.Borders = [bLeft]
    Frame.Drag.Enabled = True
    TabOrder = 5
    ExplicitTop = 124
    ExplicitHeight = 733
  end
  object dxNavBarOfficeNavigationBar1: TdxNavBarOfficeNavigationBar
    Left = 0
    Top = 154
    Width = 56
    Height = 709
    Align = alLeft
    Images = ilNavBarLarge
    Items = <
      item
        ImageIndex = 0
        Visible = True
      end
      item
        ImageIndex = 1
        Visible = True
      end
      item
        ImageIndex = 2
        Visible = True
      end
      item
        ImageIndex = 3
        Visible = True
      end>
    OptionsBehavior.AllowDragDrop = False
    OptionsView.CompactNavigation = True
    OptionsView.CustomizationButtonVisibility = cbvHidden
    OptionsView.DrawParentBackground = False
    OptionsView.ItemAlignment.Horz = taCenter
    OptionsView.ItemAlignment.Vert = vaTop
    OptionsView.ItemReverseOrder = True
    OptionsView.ItemRotation = bFalse
    OptionsView.ItemSpacing = 1
    OptionsView.Orientation = orVertical
    OptionsView.UseRibbonArea = True
    OptionsView.ShowItemsAsButtons = True
    TabOrder = 6
    OnSelectionChanged = dxNavBarOfficeNavigationBar1SelectionChanged
    ExplicitTop = 124
    ExplicitHeight = 733
  end
  object bmMain: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Common'
      'View'
      'StatusBar')
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    ImageOptions.Images = DM.ilToolbarsSmallSVG
    ImageOptions.LargeImages = DM.ilToolBarsLargeSVG
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 712
    Top = 24
    PixelsPerInch = 96
    object tbQuickAccess: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'siNavigation'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bbTouchMode'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bliFormCorners'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbViewNavigation: TdxBar
      Caption = 'View Navigation'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 332
      FloatTop = 195
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIcon]
          Visible = True
          ItemName = 'siNavigation'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbStatusBarView: TdxBar
      Caption = 'StatusBarView'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1124
      FloatTop = 854
      FloatClientWidth = 51
      FloatClientHeight = 24
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'lbViewNormal'
        end
        item
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'lbViewReading'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbItemsCount: TdxBar
      Caption = 'ItemsCount'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 458
      FloatTop = 144
      FloatClientWidth = 51
      FloatClientHeight = 18
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'ItemsCountInfo'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbRibbonOptions: TdxBar
      Caption = 'Ribbon Options'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 483
      FloatTop = 155
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbRibbonForm'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbAppButton'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bbTouchMode'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object tbQuickAccessToolbarLayout: TdxBar
      Caption = 'Quick Access Toolbar Layout'
      CaptionButtons = <>
      DockedLeft = 81
      DockedTop = 0
      FloatLeft = 483
      FloatTop = 155
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbQuickAccessToolbarVisible'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbQuickAccessToolbarAbove'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbQuickAccessToolbarBelow'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbColorSchemes: TdxBar
      Caption = 'Color Schemes'
      CaptionButtons = <>
      DockedLeft = 270
      DockedTop = 0
      FloatLeft = 1338
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'bliFormCorners'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbTabAreaSearchToolbar: TdxBar
      Caption = 'Tab Area Search Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1338
      FloatTop = 8
      FloatClientWidth = 400
      FloatClientHeight = 52
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'beiOfficeSearchBox'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbSearchOptions: TdxBar
      Caption = 'Search Options'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 398
      DockedTop = 0
      FloatLeft = 1332
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbRecursiveSearch'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText]
          Visible = True
          ItemName = 'lbShowPaths'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bExit: TdxBarButton
      Caption = 'Exit'
      Category = 0
      Hint = 'Exit'
      Visible = ivAlways
      ImageIndex = 51
      OnClick = bExitClick
    end
    object lbAppButton: TdxBarLargeButton
      Caption = '&Application Button'
      Category = 0
      Hint = 'Show/Close the Application Button'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = lbAppButtonClick
      LargeImageIndex = 43
      SyncImageIndex = False
      ImageIndex = 66
    end
    object lbRibbonForm: TdxBarLargeButton
      Caption = 'Ribbon &Form'
      Category = 0
      Hint = 'Switch On/Off the Ribbon Form'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = lbRibbonFormClick
      LargeImageIndex = 42
      SyncImageIndex = False
      ImageIndex = 65
    end
    object lbQuickAccessToolbarAbove: TdxBarLargeButton
      Action = actQATAboveRibbon
      Category = 0
      Enabled = False
      ButtonStyle = bsChecked
      GroupIndex = 62
      Down = True
      Glyph.SourceDPI = 96
      Glyph.SourceHeight = 16
      Glyph.SourceWidth = 16
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
        332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
        6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
        3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D677265
        656E2C2023333739453445292220643D224D3235203132483761312031203020
        3020312D312D3156376131203120302030203120312D31683138613120312030
        20302031203120317634613120312030203020312D31203122206F7061636974
        793D222E33222F3E0D0A093C70617468207374796C653D2266696C6C3A766172
        282D2D647864732D69636F6E2D636F6C6F722D677265656E2C20233337394534
        4529222066696C6C2D72756C653D226576656E6F64642220636C69702D72756C
        653D226576656E6F64642220643D224D32352E32303420352E30314132203220
        3020302031203237203776346C2D2E30312E323034613220322030203020312D
        312E37383620312E3738354C32352031334837613220322030203020312D312E
        39392D312E3739364C3520313156376132203220302030203120322D32683138
        7A4D372036613120312030203020302D31203176346131203120302030203020
        3120316831386131203120302030203020312D31563761312031203020302030
        2D312D317A222F3E0D0A093C706174682066696C6C3D2263757272656E74436F
        6C6F72222066696C6C2D72756C653D226576656E6F64642220636C69702D7275
        6C653D226576656E6F64642220643D224D323620326134203420302030203120
        342034763230613420342030203020312D332E37393420332E3939354C323620
        333048366C2D2E3230362D2E303035613420342030203020312D332E37392D33
        2E3738394C3220323656366134203420302030203120342D347A4D3620336133
        20332030203020302D3320337632306133203320302030203020332033683230
        6133203320302030203020332D335636613320332030203020302D332D337A22
        2F3E0D0A3C2F7376673E0D0A}
    end
    object lbQuickAccessToolbarBelow: TdxBarLargeButton
      Action = actQATBelowRibbon
      Category = 0
      Enabled = False
      ButtonStyle = bsChecked
      GroupIndex = 62
      Glyph.SourceDPI = 96
      Glyph.SourceHeight = 16
      Glyph.SourceWidth = 16
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
        332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
        6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
        3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D677265
        656E2C2023333739453445292220643D224D3235203236483761312031203020
        3020312D312D31762D346131203120302030203120312D316831386131203120
        3020302031203120317634613120312030203020312D31203122206F70616369
        74793D222E33222F3E0D0A093C70617468207374796C653D2266696C6C3A7661
        72282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333373945
        344529222066696C6C2D72756C653D226576656E6F64642220636C69702D7275
        6C653D226576656E6F64642220643D224D32352E3230342031392E3031413220
        3220302030203120323720323176346C2D2E30312E3230346132203220302030
        20312D312E37383620312E3738354C3235203237483761322032203020302031
        2D312E39392D312E3739364C35203235762D346132203220302030203120322D
        326831387A4D37203230613120312030203020302D3120317634613120312030
        20302030203120316831386131203120302030203020312D31762D3461312031
        2030203020302D312D317A222F3E0D0A093C706174682066696C6C3D22637572
        72656E74436F6C6F72222066696C6C2D72756C653D226576656E6F6464222063
        6C69702D72756C653D226576656E6F64642220643D224D323620326134203420
        302030203120342034763230613420342030203020312D332E37393420332E39
        39354C323620333048366C2D2E3230362D2E303035613420342030203020312D
        332E37392D332E3738394C3220323656366134203420302030203120342D347A
        4D362033613320332030203020302D3320337632306133203320302030203020
        3320336832306133203320302030203020332D33563661332033203020302030
        2D332D337A222F3E0D0A3C2F7376673E0D0A}
    end
    object lbQuickAccessToolbarVisible: TdxBarLargeButton
      Caption = '&Visible'
      Category = 0
      Hint = 'Show/Hide the Quick Access ToolBar'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = lbQuickAccessToolbarVisibleClick
      LargeImageIndex = 44
      SyncImageIndex = False
      ImageIndex = 67
    end
    object bbTouchMode: TdxBarLargeButton
      Caption = '&Touch Mode'
      Category = 0
      Hint = 'Toggle Touch Mode'
      Visible = ivNever
      ButtonStyle = bsChecked
      OnClick = bbTouchModeClick
      LargeImageIndex = 55
      SyncImageIndex = False
      ImageIndex = 72
    end
    object beiOfficeSearchBox: TcxBarEditItem
      Caption = 'Office Search Box'
      Category = 0
      Hint = 'Type here to search for a specific command'
      KeyTip = 'Q'
      Visible = ivNotInCustomizing
      Width = 200
      PropertiesClassName = 'TdxOfficeSearchBoxProperties'
      Properties.BarManager = bmMain
      Properties.Glyph.SourceDPI = 96
      Properties.Glyph.SourceHeight = 16
      Properties.Glyph.SourceWidth = 16
      Properties.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000097048597300000EC300000EC301C76FA8640000001974455874536F
        667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000017E49
        4441545885ED96B14AC3501486BF9396F6052C2888BA0B3E84589742C5C127B0
        565C833E856474693B76EB282E2DC5671045C70A51AC563717699BE3900E2E31
        37379122F4DF929C73FF8F73CE0D47549579CA99AB3B904F9C71B9B2894E6BA0
        65908DF0A53E224E9760D262EFE33EC97162DC828E1428963CE004C845444D11
        2E78199D52D77176001D29505CBA02D931A3A5C770543181309B8162C94B600E
        5066B9746E12185F81B0E73744973D4A13A6C116FBEF0FBF05C55740A74716E6
        007972B95A5C90410BA46C611E4A753703005DB30610D6330020CDAF3236371E
        4078B2B6179ED30340CF1A40E9A607709C261058D807E49C567A80CAF00EB491
        DC5F1B616E5A00802F39030609DC07B39C5899011CBC7D821E62762314E438CC
        C90A00A03ABA46B51D6FAF6DAAAFC6839B702191663631B6003ABECD24E687CC
        17923FD2FFDB095DD7ED8BC876C4E7BEE779491697F9576031038B19B09E01D7
        757D11599D3DFA9EE759AD6ED615701CA70EF880AFAA75DB7316B7E01B16B886
        C31D300D580000000049454E44AE426082}
      Properties.Nullstring = 'Type a command to execute...'
      Properties.Ribbon = dxRibbon1
      Properties.SearchSource = dxRibbon1
      Properties.UseNullString = True
    end
    object lbRecursiveSearch: TdxBarLargeButton
      Caption = 'Recursive Search'
      Category = 0
      Hint = 'Recursive Search'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = lbRecursiveSearchClick
      LargeImageIndex = 66
      SyncImageIndex = False
      ImageIndex = 77
    end
    object lbShowPaths: TdxBarLargeButton
      Caption = 'Show Paths'
      Category = 0
      Hint = 'Show Paths'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = lbShowPathsClick
      LargeImageIndex = 65
      SyncImageIndex = False
      ImageIndex = 76
    end
    object bliFormCorners: TdxBarListItem
      Caption = 'Form Corners'
      Category = 0
      Hint = 'Form Corners'
      Visible = ivAlways
      ImageIndex = 88
      LargeImageIndex = 69
      OnClick = bliFormCornersClick
      ItemIndex = 0
      Items.Strings = (
        'Default'
        'Rectangular'
        'Rounded'
        'Small Rounded')
      ShowCheck = True
      ShowNumbers = False
    end
    object siNavigation: TdxBarSubItem
      Caption = 'Navigation'
      Category = 1
      ScreenTip = DM.stViewNavigation
      Visible = ivAlways
      ImageIndex = 57
      LargeImageIndex = 16
      ItemLinks = <
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bNavigationMail'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bNavigationCalendar'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bNavigationContacts'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bNavigationTasks'
        end
        item
          ViewLevels = [ivlSmallIconWithText]
          Visible = True
          ItemName = 'bDevMode'
        end>
    end
    object bNavigationMail: TdxBarButton
      Caption = 'Mail'
      Category = 1
      Visible = ivAlways
      ImageIndex = 10
      OnClick = bNavigationMailClick
    end
    object bNavigationCalendar: TdxBarButton
      Tag = 1
      Caption = 'Calendar'
      Category = 1
      Visible = ivAlways
      ImageIndex = 40
      OnClick = bNavigationMailClick
    end
    object bNavigationContacts: TdxBarButton
      Tag = 2
      Caption = 'Contacts'
      Category = 1
      Visible = ivAlways
      ImageIndex = 25
      OnClick = bNavigationMailClick
    end
    object bNavigationTasks: TdxBarButton
      Tag = 3
      Caption = 'Tasks'
      Category = 1
      Visible = ivAlways
      ImageIndex = 27
      OnClick = bNavigationMailClick
    end
    object bDevMode: TdxBarButton
      Caption = 'Dev Mode'
      Category = 1
      Hint = 'Dev Mode'
      Visible = ivNever
      OnClick = bDevModeClick
    end
    object lbViewNormal: TdxBarLargeButton
      Caption = 'Normal'
      Category = 2
      Hint = 'Normal'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = lbViewNormalClick
      ShowCaption = False
      SyncImageIndex = False
      ImageIndex = 22
    end
    object lbViewReading: TdxBarLargeButton
      Caption = 'Reading'
      Category = 2
      Hint = 'Reading'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = lbViewReadingClick
      ShowCaption = False
      SyncImageIndex = False
      ImageIndex = 23
    end
    object ItemsCountInfo: TdxBarStatic
      Caption = 'Items:'
      Category = 2
      Hint = 'Items:'
      Visible = ivAlways
    end
  end
  object ilNavBarLarge: TcxImageList
    SourceDPI = 96
    Height = 32
    UseEnabledSkinPaletteForSVG = bTrue
    UseDisabledSkinPaletteForSVG = bTrue
    Width = 32
    FormatVersion = 1
    Left = 744
    Top = 200
    Bitmap = {
      494C010105000800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000D000000150000
      001A0000001C0000001C0000001C0000001C0000001C0000001D0000001D0000
      001D0000001D0000001D0000001D0000001D0000001E0000001E0000001E0000
      001E0000001E0000001E0000001E0000001F0000001F0000001F0000001F0000
      001E000000180000000F00000006000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C020C165E115FB2EC1571
      D6FF1571D6FF1570D6FF156FD6FF156FD5FF156FD5FF156ED5FF156ED4FF156E
      D4FF156DD4FF146CD4FF146BD3FF146CD3FF146BD2FF146BD2FF146AD2FF1469
      D2FF1369D2FF1369D1FF1369D1FF1468D0FF1468D0FF1467D0FF1368D0FF1467
      D0FF115BB8F2020A15610000000F000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000141160B2E92F94F4FF37A1
      FFFF37A1FFFF37A1FFFF37A0FFFF37A0FFFF36A0FFFF379FFFFF379FFFFF379F
      FFFF379FFFFF2A97F7FF168DEEFF168DEEFF168CEEFF168CEEFF158CEEFF148A
      EEFF148AEDFF148AEDFF148AEDFF138AEDFF1389EDFF1389EDFF1388EDFF1189
      EDFF1280E4FF0F55A9EA00000017000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000181776DAFF3AA2FFFF319D
      FFFF319CFFFF319DFFFF319DFFFF309BFFFF309BFFFF319CFFFF309BFFFF319D
      FFFF309BFFFF2A98FBFF1489EEFF1488EEFF1388EEFF1388EDFF1387EDFF1388
      EDFF1287EDFF1287EDFF1287EDFF1286EDFF1286EDFF1186EDFF1186ECFF1186
      ECFF1489EDFF1368D1FF0000001C000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000181779DCFF3CA5FFFF329E
      FFFF329EFFFF329EFFFF319DFFFF329EFFFF329EFFFF329EFFFF329EFFFF329E
      FFFF319DFFFF309DFEFF168AEFFF158AEFFF1589EEFF1589EEFF1489EEFF1488
      EEFF1488EEFF1488EEFF1387EEFF1387EEFF1387EDFF1287EDFF1287EDFF1287
      EDFF158BEEFF1369D2FF0000001D000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000018197BDDFF3DA4FFFF339E
      FFFF339DFFFF4AA8FDFFC4E0FAFFFCFAF8FFC4E0FAFF4AA8FDFF339EFFFF339D
      FFFF339DFFFF379FFEFFF9F5F1FFF9F5F0FFF9F5F0FFF9F4F0FF168AEFFF158A
      EFFF158AEFFF158AEFFFF9F4F0FFF9F4F0FFF9F4F0FFF4F0EFFF1487EEFF1487
      EEFF178BEFFF146AD3FF0000001C000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000017197CDEFF3FA7FFFF34A0
      FFFF35A1FFFFC4DEF6FFFAF6F3FFF9F5F1FFFAF6F3FFC9E0F7FF34A0FFFF359F
      FFFF34A0FFFF379FFDFFF4EDE6FFF2EAE1FFF2EAE1FFF1E8DFFF178AF0FF178A
      EFFF178AEFFF168AEFFFF2E9E0FFF2E9E0FFF2E9E0FFEBE4DEFF1589EFFF1589
      EFFF188EEFFF146CD4FF0000001B000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000161A80DEFF41AAFFFF36A1
      FFFF36A1FFFFEBE7E8FFF9F5F1FFF9F5F1FFF9F5F1FFF0EBEAFF36A1FFFF36A1
      FFFF35A2FFFF4CA9FAFFF6EFE9FFF3EAE1FFF3EAE1FFDED9D9FF1A8CF0FF198C
      F0FF198CF0FF2590EEFFF2EAE1FFF2E9E1FFF2E9E1FFDEDADBFF1689EFFF168A
      EFFF1B8FF0FF146DD5FF0000001B000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000151C82E0FF45ACFFFF37A3
      FFFF37A3FFFFADB9D1FFF3EBE6FFF9F4F0FFF3EBE6FFB2BBD1FF37A3FFFF37A3
      FFFF37A2FFFF7CBBF5FFF7F1ECFFF3EAE2FFF3EAE2FFB2BDD1FF1B8DF1FF1B8D
      F1FF1B8DF1FF4199EBFFF2EAE1FFF2EAE1FFF2EAE1FFC6CCD6FF188BF0FF188B
      F0FF1E90F1FF146DD6FF0000001A000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000151D86E3FF45ADFFFF38A5
      FFFF38A5FFFF2C7BD9FFA3B1CEFFE0D2CEFFA2B1CDFF2B7AD7FF38A5FFFF38A5
      FFFF38A5FFFFD3E3F3FFF8F4EFFFF3EBE2FFF3EAE2FF719ACFFF1D8FF2FF1D8E
      F2FF1C8EF2FF67A8E7FFF3EAE1FFF3EAE1FFF2EAE1FFA0B4D2FF1B8CF1FF198B
      F1FF1F91F2FF1470D8FF00000019000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000141E87E3FF48B0FFFF39A7
      FFFF39A7FFFF349FFAFF1874DBFF0B5FCDFF1874DBFF349FFAFF39A7FFFF39A7
      FFFF85C7FCFFFAF6F2FFF9F5F1FFF3ECE4FFEDE2D9FF3085DDFF1F90F3FF1F91
      F3FF1E90F2FFA7C6E7FFF3EAE2FFF3EAE2FFF3EAE1FF739DD2FF1C8DF2FF1C8D
      F1FF2293F2FF1571D8FF00000018000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000013208BE4FF49B2FFFF3BA9
      FFFF3BA9FFFF3BA7FFFF3BA9FFFF3BA9FFFF3BA9FFFF3AA8FFFF3BA9FFFF66BA
      FDFFF5F5F6FFF9F6F2FFF9F5F1FFF3ECE5FF9EADC9FF1D8BEDFF2192F3FF2092
      F3FF2794F2FFE5E6E6FFF3EAE2FFF3EAE2FFF1E7DFFF418BDBFF1E90F2FF1D8E
      F2FF2596F3FF1672D9FF00000018000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012228DE5FF4CB4FFFF3DAB
      FFFF3CABFFFF3DABFFFF3DABFFFF3CABFFFF3CABFFFF3DABFFFF85C9FDFFF5F6
      F7FFFAF6F2FFFAF6F2FFFAF6F2FFE2D8D4FF2E7AD5FF2394F4FF2393F4FF2393
      F4FF71B6F1FFF3ECE4FFF3EBE3FFF3EBE2FFD3D0D3FF1C86EAFF2091F3FF1F90
      F3FF2797F4FF1574DBFF00000017000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012238FE7FF4EB6FFFF3FAD
      FFFF3EACFFFF3FADFFFF3EACFFFF59B8FEFF8DCDFDFFD9ECFAFFFCF9F7FFFAF6
      F2FFFAF6F2FFFAF6F2FFF0E6E0FF5588CCFF228EEFFF2596F5FF2595F5FF2996
      F4FFE0E5EBFFF3EBE2FFF3EBE3FFF3EAE2FF7C9DCCFF2292F4FF2292F4FF2291
      F4FF2A99F5FF1676DBFF00000016000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000112492E8FF50B9FFFF40B0
      FFFF40B0FFFFFDFBFAFFFDFBFAFFFCFAF8FFFBF9F7FFFAF8F4FFFAF6F3FFFAF6
      F3FFF9F5F2FFEDE1DBFF7499CDFF2A91ECFF2898F6FF2798F6FF2798F5FF89C2
      F2FFF5EDE5FFF4ECE4FFF4ECE4FFE7DDD7FF2D81DCFF2494F5FF2494F5FF2494
      F4FF2D9CF5FF1678DDFF00000015000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000102695E9FF52BAFFFF41B1
      FFFF41B1FFFFFBF7F4FFFBF7F4FFFAF7F4FFFAF7F4FFFAF7F4FFFAF7F3FFF4ED
      E8FFE1D8D5FF5589CDFF278AE6FF40B0FFFF2A9AF6FF2A9BF6FF48A6F4FFEDEB
      EBFFF4ECE5FFF4ECE4FFF3EAE2FF89A1C9FF238FF0FF2696F5FF2595F5FF2594
      F5FF309CF6FF177ADEFF00000015000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F2898EAFF54BDFFFF43B2
      FFFF42B3FFFFFBF8F5FFFBF8F4FFF8F2EFFFF6EFEBFFF0E6E1FFE9DBD5FFA1B2
      CFFF2F75CEFF3096EDFF42B3FFFF42B3FFFF31A0F8FF3DA4F6FFD6E5F1FFF4ED
      E7FFF4EDE5FFF4EDE5FFD8D1D1FF237BDBFF2899F6FF2897F6FF2797F6FF2797
      F6FF319FF7FF187BDFFF00000014000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000F2A9BEBFF56BFFFFF44B5
      FFFF44B5FFFFE7D8D1FFE7D8D1FFC8C7D0FFAFB9D0FF7399CEFF286FCDFF1E7B
      DCFF3CA8F7FF45B5FFFF44B5FFFF45B5FFFF48ADF9FFD1E4F2FFF6EFE9FFF5EE
      E7FFF5EDE6FFEDE1D9FF5689CCFF2896F4FF2B9BF7FF2B9AF7FF2A99F7FF2999
      F7FF35A2F7FF187CE1FF00000013000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E2C9CECFF59C2FFFF46B8
      FFFF46B6FFFF0C61CCFF0C61CCFF146DD3FF1B77D9FF2B90E7FF3EADF8FF46B6
      FFFF46B6FFFF46B6FFFF46B6FFFF6CC6FEFFE4EEF6FFF6F1EAFFF5EEE8FFF5EE
      E7FFF0E5DEFF8CA3C9FF2188E8FF2E9EF8FF2D9DF8FF2D9DF7FF2C9BF7FF2C9A
      F7FF38A4F8FF1980E1FF00000012000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000D2EA0EEFF5BC3FFFF48B9
      FFFF47BAFFFF48B9FFFF47BAFFFF48B9FFFF48B9FFFF47BAFFFF47BAFFFF48B9
      FFFF48B9FFFF4EBBFFFF9CD8FDFFF6F8F8FFF9F6F2FFF6EFE9FFF6EFE9FFF0E7
      DFFFA3B0CAFF1E79DDFF319FF8FF309FF8FF309EF8FF2F9FF8FF2F9DF8FF2E9D
      F8FF3BA6F9FF1A82E3FF00000012000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C30A2EEFF5EC5FFFF4ABB
      FFFF49BAFFFF49BAFFFF4ABBFFFF49BAFFFF49BAFFFF4ABBFFFF4ABBFFFF4FBC
      FFFF90D4FDFFE8F3FAFFFCFAF8FFFBF8F5FFFAF7F4FFF6F0EAFFEEE4DDFFA6B2
      CAFF1D74D8FF32A0F8FF33A2F9FF32A0F9FF31A1F9FF319FF9FF319FF9FF309F
      F9FF3FA8F9FF1B83E4FF00000011000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000C32A4F0FF60C7FFFF4BBD
      FFFF4BBDFFFF4BBDFFFF4BBDFFFF64C6FEFF6FCAFEFF8FD5FDFFC8E9FCFFF7FA
      FAFFFCFBF9FFFBF9F7FFFBF8F6FFFBF8F6FFF9F5F2FFEBDED6FF8CA5CAFF1B74
      D8FF34A3F8FF36A5FAFF35A4FAFF34A3FAFF34A2F9FF33A2F9FF33A1F9FF33A1
      F9FF41AAFAFF1C86E5FF00000010000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B34A7F0FF61C8FFFF4CBE
      FFFF4CBEFFFFFEFDFCFFFEFDFCFFFDFCFBFFFDFCFAFFFDFCFAFFFCFAF8FFFCF9
      F7FFFCF9F7FFFCF9F6FFFBF7F4FFF1E9E4FFD6D0D2FF5588CCFF1C7CDEFF37A7
      FAFF38A7FBFF37A7FAFF37A7FAFF36A5FAFF36A5FAFF36A5FAFF35A5FAFF35A3
      FAFF45ADFBFF1C88E6FF0000000F000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A36A9F1FF63CBFFFF4EC0
      FFFF4DC1FFFFFCFBF9FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCFA
      F7FFF9F5F1FFF2E9E5FFDFD5D6FF7B9FCFFF1D6FD0FF3198ECFF3BABFBFF3AAB
      FBFF3AA9FBFF3AA9FBFF39A8FBFF39A8FBFF38A7FBFF37A7FBFF37A7FBFF37A5
      FAFF48AFFBFF1E8AE7FF0000000F000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A39ACF2FF65CDFFFF4EC2
      FFFF4FC3FFFFFDFBF9FFFDFBF9FFFDFBF9FFF8F4F2FFF5EFECFFF1E9E4FFEADD
      D8FFC6C7D2FF7EA1D0FF2573CEFF2D92E5FF4CBEFDFF49BBFEFF3EADFCFF3CAC
      FCFF3CACFCFF3CABFBFF3BABFBFF3BABFBFF3AA9FBFF3AA9FBFF39A8FBFF38A9
      FBFF49B3FCFF1F8CE8FF0000000E000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000093AADF2FF67CEFFFF50C4
      FFFF50C4FFFFE8DAD4FFE8DAD4FFE5D9D3FFBDC2D2FFA1B3D1FF749CCFFF2A72
      CDFF1872D4FF2F92E5FF4BBBFAFF50C4FFFF50C4FFFF4DC1FFFF40AFFCFF3EAF
      FCFF3FAFFCFF3EADFCFF3EADFCFF3DACFCFF3DACFCFF3CACFCFF3BACFCFF3BAC
      FCFF4CB5FCFF1F8EE9FF0000000D000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000083CAFF3FF69CFFFFF51C6
      FFFF51C6FFFF0E64CCFF0F63CCFF0F65CCFF1C77D6FF2584DDFF3298E7FF49B8
      F8FF51C6FFFF52C5FFFF51C6FFFF52C5FFFF52C5FFFF52C5FFFF43B4FDFF42B1
      FDFF40B0FDFF40B0FDFF3FB0FDFF3FAEFCFF3EAEFCFF3EAEFCFF3EACFCFF3DAC
      FCFF4FB7FCFF2191EAFF0000000C000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000073EB1F4FF79D6FFFF53C8
      FFFF53C8FFFF53C8FFFF53C8FFFF53C8FFFF53C8FFFF53C8FFFF53C6FFFF53C8
      FFFF53C8FFFF53C8FFFF53C6FFFF53C6FFFF53C6FFFF53C8FFFF47B8FDFF44B5
      FDFF42B2FDFF42B2FDFF41B2FDFF41B0FDFF41B0FDFF40B0FDFF40AFFDFF3FAE
      FDFF5FBEFDFF2292EBFF0000000B000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000005389AD3EE8CD7FCFFA6E4
      FFFFA6E4FFFFA5E4FFFFA5E4FFFFA3E3FFFFA3E3FFFFA3E3FFFFA2E3FFFFA2E2
      FFFFA0E2FFFFA0E2FFFFA0E2FFFF9FE2FFFF9FE2FFFF9DE2FFFF99DBFEFF94D6
      FEFF94D5FEFF91D5FEFF90D5FEFF90D4FEFF8FD4FEFF8ED2FEFF8CD2FEFF8BD1
      FEFF6FC1F9FF1F7FCBEE00000009000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003040B10442D81AED841B5
      F4FF41B5F4FF41B3F4FF41B3F4FF41B3F4FF40B2F4FF40B1F4FF40B1F4FF40B1
      F4FF40B0F4FF40B0F3FF3FB0F3FF3FAFF3FF3EAFF2FF3EAEF2FF34A7F1FF269D
      EFFF269CEEFF259BEEFF259BEEFF2599EEFF259AEEFF2599EEFF2599EEFF2498
      EDFF1A6BA7D9020A104700000005000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000040000
      0006000000060000000600000006000000070000000700000007000000070000
      0007000000070000000700000008000000080000000800000008000000080000
      0008000000080000000800000009000000090000000900000009000000090000
      0009000000070000000400000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC252798CC252798CC2527
      98CC252798CC252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC0505154C0505154C0505
      154C0505154C252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC0505154C0505154C0505
      154C0505154C252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC0505154C0505154C0505
      154C0505154C252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC0505154C0505154C0505
      154C0505154C252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000252798CC252798CC252798CC2527
      98CC252798CC252798CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 13107944
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3236203561
          342034203020302031203420347631346C2D2E3030352E323036613420342030
          203020312D332E37383920332E37394C323620323748366C2D2E3230362D2E30
          3035613420342030203020312D332E37392D332E3738394C3220323356396134
          203420302030203120342D347A4D332032336133203320302030203020332033
          6832306133203320302030203020332D335631312E343033632D2E3239382E32
          36312D2E3633332E34372D2E3935362E3633314C31372E3131392031372E3561
          322E3520322E352030203020312D322E32333720304C332E3935372031322E30
          333441342E3620342E3620302030203120332031312E3430327A4D3620366133
          20332030203020302D3320322E3936356330202E3030382E3030342E3031362E
          3030342E3032342E3030372E3330342E3032362E3534322E3038312E37382E31
          33312E35372E363420312E303320312E333220312E33376C31302E3932342035
          2E343637632E3432322E32312E39322E323120312E33343320306C31302E3932
          352D352E343636632E3637392D2E333420312E3138382D2E3820312E3331392D
          312E33372E3035352D2E32342E3037352D2E3437372E3038312D2E37384C3239
          20382E3937314133203320302030203020323620367A222F3E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3720336134
          20342030203020302D3420347631386134203420302030203020332E37393420
          332E3939354C372032396831386C2E3230362D2E303035613420342030203020
          3020332E37392D332E3738394C32392032355637613420342030203020302D34
          2D347A6D32312037763135613320332030203020312D33203348376133203320
          30203020312D332D335631307A6D2D332D366133203320302030203120332033
          7632483456376133203320302030203120332D337A222F3E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D7265642C2023454433443342292220643D224D31332031374839763468
          347A22206F7061636974793D222E33222F3E0D0A093C672066696C6C3D226375
          7272656E74436F6C6F7222206F7061636974793D222E33223E0D0A09093C7061
          74682066696C6C2D72756C653D226576656E6F64642220636C69702D72756C65
          3D226576656E6F64642220643D224D3134203136763168347634682D34763168
          2D3176332E3539346330202E3232342E3232342E3430362E352E343036732E35
          2D2E3138322E352D2E343036563232683476332E3539346330202E3232342E32
          32342E3430362E352E343036732E352D2E3138322E352D2E3430365632326834
          76332E3539346330202E3232342E3232342E3430362E352E343036732E352D2E
          3138322E352D2E34303656323268312E353934632E3232342030202E3430362D
          2E3232342E3430362D2E35732D2E3138322D2E352D2E3430362D2E3548323476
          2D3468312E353934632E3232342030202E3430362D2E3232342E3430362D2E35
          732D2E3138322D2E352D2E3430362D2E35483234762D332E35393463302D2E32
          32342D2E3232342D2E3430362D2E352D2E343036732D2E352E3138322D2E352E
          343036563136682D34762D332E35393463302D2E3232342D2E3232342D2E3430
          362D2E352D2E343036732D2E352E3138322D2E352E3430365631367A762D332E
          35393463302D2E3232342D2E3232342D2E3430362D2E352D2E343036732D2E35
          2E3138322D2E352E3430365631367A6D392035682D34762D3468347A222F3E0D
          0A09093C7061746820643D224D3820323148362E343036632D2E32323420302D
          2E3430362E3232342D2E3430362E35732E3138322E352E3430362E3548387633
          2E3539346330202E3232342E3232342E3430362E352E343036732E352D2E3138
          322E352D2E34303656323248387A4D392031322E34303663302D2E3232342D2E
          3232342D2E3430362D2E352D2E343036732D2E352E3138322D2E352E34303656
          313648362E343036632D2E32323420302D2E3430362E3232342D2E3430362E35
          732E3138322E352E3430362E354838762D3168317A222F3E0D0A093C2F673E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D7265642C2023454433443342292220643D224D382031
          3676366836762D367A6D3520354839762D3468347A22206F7061636974793D22
          2E38222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D31342E3537
          342031362E303039632E3830312E30383520312E3432362E37393520312E3432
          3620312E3635386C2D2E3030382E3231384331352E3833352032302E30393320
          31332E3330332032312031312E35203231732D342E3333352D2E3930372D342E
          3439322D332E3131354C372031372E36363743372031362E37343720372E3731
          20313620382E35383820313668352E3832347A4D382E353838203137632D2E32
          3820302D2E3538382E3235332D2E3538382E3636372030202E37342E33383720
          312E32383720312E30363720312E3639372E3730382E34323720312E3634372E
          36333620322E3433332E36333673312E3732352D2E323120322E3433332D2E36
          3336632E36382D2E343120312E3036372D2E39353720312E3036372D312E3639
          3720302D2E3431342D2E3330382D2E3636372D2E3538382D2E3636377A222F3E
          0D0A093C706174682066696C6C3D2263757272656E74436F6C6F722220643D22
          4D32342E35203137612E352E3520302030203120302031682D35612E352E3520
          302030203120302D317A222F3E0D0A093C706174682066696C6C3D2263757272
          656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64642220636C
          69702D72756C653D226576656E6F64642220643D224D31312E3520313061322E
          3520322E352030203120312030203520322E3520322E3520302030203120302D
          356D30203161312E3520312E352030203120302030203320312E3520312E3520
          302030203020302D33222F3E0D0A093C706174682066696C6C3D226375727265
          6E74436F6C6F722220643D224D32342E35203133612E352E3520302030203120
          302031682D35612E352E3520302030203120302D317A222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F72222066696C6C2D72756C653D
          226576656E6F64642220636C69702D72756C653D226576656E6F64642220643D
          224D323620346134203420302030203120342034763136613420342030203020
          312D34203448366C2D2E3230362D2E3030354134203420302030203120322032
          3456386134203420302030203120342D347A4D36203561332033203020302030
          2D33203376313661332033203020302030203320336832306133203320302030
          203020332D335638613320332030203020302D332D337A222F3E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31332E3634372031372E363437
          612E352E35203020312031202E3730372E3730376C2D332E3520332E35612E35
          2E352030203020312D2E37303720306C2D322D32612E352E3520302031203120
          2E3730372D2E3730376C312E36343620312E3634367A4D32332E35203139612E
          352E3520302030203120302031682D36612E352E3520302030203120302D317A
          4D31332E36343720392E363436612E352E35203020312031202E3730372E3730
          376C2D332E3520332E35612E352E352030203020312D2E37303720306C2D322D
          32612E352E35203020312031202E3730372D2E3730376C312E36343620312E36
          34377A4D32332E35203132612E352E3520302030203120302031682D36612E35
          2E3520302030203120302D317A222F3E0D0A093C706174682066696C6C3D2263
          757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F646422
          20636C69702D72756C653D226576656E6F64642220643D224D32352033613420
          3420302030203120342034763138613420342030203020312D34203448376134
          20342030203020312D342D3456376134203420302030203120342D347A4D3720
          34613320332030203020302D3320337631386133203320302030203020332033
          6831386133203320302030203020332D335637613320332030203020302D332D
          337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          000D000000150000001A0000001C0000001C0000001C0000001C0000001C0000
          001D0000001D0000001D0000001D0000001D0000001D0000001D0000001E0000
          001E0000001E0000001E0000001E0000001E0000001E0000001F0000001F0000
          001F0000001F0000001E000000180000000F00000006000000020000000C0621
          3C5E1368C1EC1672D6FF1672D6FF1671D6FF1670D6FF1670D5FF1670D5FF166F
          D5FF166FD4FF166FD4FF166ED4FF156DD4FF156CD3FF156DD3FF156CD2FF156C
          D2FF156BD2FF156AD2FF146AD2FF146AD1FF146AD1FF1569D0FF1569D0FF1568
          D0FF1469D0FF1568D0FF1361C2F2061D3A610000000F0000000300000014136A
          C3E93094F4FF38A1FFFF38A1FFFF38A1FFFF38A0FFFF38A0FFFF37A0FFFF389F
          FFFF389FFFFF389FFFFF389FFFFF2B97F7FF178DEEFF178DEEFF178CEEFF178C
          EEFF168CEEFF158AEEFF158AEDFF158AEDFF158AEDFF148AEDFF1489EDFF1489
          EDFF1488EDFF1289EDFF1380E4FF115DB8EA0000001700000006000000181877
          DAFF3BA2FFFF329DFFFF329CFFFF329DFFFF329DFFFF319BFFFF319BFFFF329C
          FFFF319BFFFF329DFFFF319BFFFF2B98FBFF1589EEFF1588EEFF1488EEFF1488
          EDFF1487EDFF1488EDFF1387EDFF1387EDFF1387EDFF1386EDFF1386EDFF1286
          EDFF1286ECFF1286ECFF1589EDFF1469D1FF0000001C0000000700000018187A
          DCFF3DA5FFFF339EFFFF339EFFFF339EFFFF329DFFFF339EFFFF339EFFFF339E
          FFFF339EFFFF339EFFFF329DFFFF319DFEFF178AEFFF168AEFFF1689EEFF1689
          EEFF1589EEFF1588EEFF1588EEFF1588EEFF1487EEFF1487EEFF1487EDFF1387
          EDFF1387EDFF1387EDFF168BEEFF146AD2FF0000001D00000007000000181A7C
          DDFF3EA4FFFF349EFFFF349DFFFF4BA8FDFFC4E0FAFFFCFAF8FFC4E0FAFF4BA8
          FDFF349EFFFF349DFFFF349DFFFF389FFEFFF9F5F1FFF9F5F0FFF9F5F0FFF9F4
          F0FF178AEFFF168AEFFF168AEFFF168AEFFFF9F4F0FFF9F4F0FFF9F4F0FFF4F0
          EFFF1587EEFF1587EEFF188BEFFF156BD3FF0000001C00000007000000171A7D
          DEFF40A7FFFF35A0FFFF36A1FFFFC4DEF6FFFAF6F3FFF9F5F1FFFAF6F3FFC9E0
          F7FF35A0FFFF369FFFFF35A0FFFF389FFDFFF4EDE6FFF2EAE1FFF2EAE1FFF1E8
          DFFF188AF0FF188AEFFF188AEFFF178AEFFFF2E9E0FFF2E9E0FFF2E9E0FFEBE4
          DEFF1689EFFF1689EFFF198EEFFF156DD4FF0000001B00000007000000161B80
          DEFF42AAFFFF37A1FFFF37A1FFFFEBE7E8FFF9F5F1FFF9F5F1FFF9F5F1FFF0EB
          EAFF37A1FFFF37A1FFFF36A2FFFF4DA9FAFFF6EFE9FFF3EAE1FFF3EAE1FFDED9
          D9FF1B8CF0FF1A8CF0FF1A8CF0FF2690EEFFF2EAE1FFF2E9E1FFF2E9E1FFDEDA
          DBFF1789EFFF178AEFFF1C8FF0FF156ED5FF0000001B00000007000000151D82
          E0FF46ACFFFF38A3FFFF38A3FFFFADB9D1FFF3EBE6FFF9F4F0FFF3EBE6FFB2BB
          D1FF38A3FFFF38A3FFFF38A2FFFF7DBBF5FFF7F1ECFFF3EAE2FFF3EAE2FFB2BD
          D1FF1C8DF1FF1C8DF1FF1C8DF1FF4299EBFFF2EAE1FFF2EAE1FFF2EAE1FFC6CC
          D6FF198BF0FF198BF0FF1F90F1FF156ED6FF0000001A00000007000000151E86
          E3FF46ADFFFF39A5FFFF39A5FFFF2D7CD9FFA3B1CEFFE0D2CEFFA2B1CDFF2C7B
          D7FF39A5FFFF39A5FFFF39A5FFFFD3E3F3FFF8F4EFFFF3EBE2FFF3EAE2FF729A
          CFFF1E8FF2FF1E8EF2FF1D8EF2FF68A8E7FFF3EAE1FFF3EAE1FFF2EAE1FFA0B4
          D2FF1C8CF1FF1A8BF1FF2091F2FF1571D8FF0000001900000006000000141F87
          E3FF49B0FFFF3AA7FFFF3AA7FFFF359FFAFF1975DBFF0C60CDFF1975DBFF359F
          FAFF3AA7FFFF3AA7FFFF85C7FCFFFAF6F2FFF9F5F1FFF3ECE4FFEDE2D9FF3185
          DDFF2090F3FF2091F3FF1F90F2FFA7C6E7FFF3EAE2FFF3EAE2FFF3EAE1FF749D
          D2FF1D8DF2FF1D8DF1FF2393F2FF1672D8FF000000180000000600000013218B
          E4FF4AB2FFFF3CA9FFFF3CA9FFFF3CA7FFFF3CA9FFFF3CA9FFFF3CA9FFFF3BA8
          FFFF3CA9FFFF67BAFDFFF5F5F6FFF9F6F2FFF9F5F1FFF3ECE5FF9EADC9FF1E8B
          EDFF2292F3FF2192F3FF2894F2FFE5E6E6FFF3EAE2FFF3EAE2FFF1E7DFFF428B
          DBFF1F90F2FF1E8EF2FF2696F3FF1773D9FF000000180000000600000012238D
          E5FF4DB4FFFF3EABFFFF3DABFFFF3EABFFFF3EABFFFF3DABFFFF3DABFFFF3EAB
          FFFF85C9FDFFF5F6F7FFFAF6F2FFFAF6F2FFFAF6F2FFE2D8D4FF2F7BD5FF2494
          F4FF2493F4FF2493F4FF72B6F1FFF3ECE4FFF3EBE3FFF3EBE2FFD3D0D3FF1D86
          EAFF2191F3FF2090F3FF2897F4FF1675DBFF000000170000000600000012248F
          E7FF4FB6FFFF40ADFFFF3FACFFFF40ADFFFF3FACFFFF5AB8FEFF8DCDFDFFD9EC
          FAFFFCF9F7FFFAF6F2FFFAF6F2FFFAF6F2FFF0E6E0FF5688CCFF238EEFFF2696
          F5FF2695F5FF2A96F4FFE0E5EBFFF3EBE2FFF3EBE3FFF3EAE2FF7D9DCCFF2392
          F4FF2392F4FF2391F4FF2B99F5FF1777DBFF0000001600000006000000112592
          E8FF51B9FFFF41B0FFFF41B0FFFFFDFBFAFFFDFBFAFFFCFAF8FFFBF9F7FFFAF8
          F4FFFAF6F3FFFAF6F3FFF9F5F2FFEDE1DBFF7599CDFF2B91ECFF2998F6FF2898
          F6FF2898F5FF89C2F2FFF5EDE5FFF4ECE4FFF4ECE4FFE7DDD7FF2E81DCFF2594
          F5FF2594F5FF2594F4FF2E9CF5FF1779DDFF0000001500000005000000102795
          E9FF53BAFFFF42B1FFFF42B1FFFFFBF7F4FFFBF7F4FFFAF7F4FFFAF7F4FFFAF7
          F4FFFAF7F3FFF4EDE8FFE1D8D5FF5689CDFF288AE6FF41B0FFFF2B9AF6FF2B9B
          F6FF49A6F4FFEDEBEBFFF4ECE5FFF4ECE4FFF3EAE2FF89A1C9FF248FF0FF2796
          F5FF2695F5FF2694F5FF319CF6FF187BDEFF00000015000000050000000F2998
          EAFF55BDFFFF44B2FFFF43B3FFFFFBF8F5FFFBF8F4FFF8F2EFFFF6EFEBFFF0E6
          E1FFE9DBD5FFA1B2CFFF3076CEFF3196EDFF43B3FFFF43B3FFFF32A0F8FF3EA4
          F6FFD6E5F1FFF4EDE7FFF4EDE5FFF4EDE5FFD8D1D1FF247CDBFF2999F6FF2997
          F6FF2897F6FF2897F6FF329FF7FF197CDFFF00000014000000050000000F2B9B
          EBFF57BFFFFF45B5FFFF45B5FFFFE7D8D1FFE7D8D1FFC8C7D0FFAFB9D0FF7499
          CEFF2970CDFF1F7CDCFF3DA8F7FF46B5FFFF45B5FFFF46B5FFFF49ADF9FFD1E4
          F2FFF6EFE9FFF5EEE7FFF5EDE6FFEDE1D9FF5789CCFF2996F4FF2C9BF7FF2C9A
          F7FF2B99F7FF2A99F7FF36A2F7FF197DE1FF00000013000000050000000E2D9C
          ECFF5AC2FFFF47B8FFFF47B6FFFF0D62CCFF0D62CCFF156ED3FF1C78D9FF2C90
          E7FF3FADF8FF47B6FFFF47B6FFFF47B6FFFF47B6FFFF6DC6FEFFE4EEF6FFF6F1
          EAFFF5EEE8FFF5EEE7FFF0E5DEFF8CA3C9FF2288E8FF2F9EF8FF2E9DF8FF2E9D
          F7FF2D9BF7FF2D9AF7FF39A4F8FF1A80E1FF00000012000000050000000D2FA0
          EEFF5CC3FFFF49B9FFFF48BAFFFF49B9FFFF48BAFFFF49B9FFFF49B9FFFF48BA
          FFFF48BAFFFF49B9FFFF49B9FFFF4FBBFFFF9CD8FDFFF6F8F8FFF9F6F2FFF6EF
          E9FFF6EFE9FFF0E7DFFFA3B0CAFF1F7ADDFF329FF8FF319FF8FF319EF8FF309F
          F8FF309DF8FF2F9DF8FF3CA6F9FF1B82E3FF00000012000000040000000C31A2
          EEFF5FC5FFFF4BBBFFFF4ABAFFFF4ABAFFFF4BBBFFFF4ABAFFFF4ABAFFFF4BBB
          FFFF4BBBFFFF50BCFFFF90D4FDFFE8F3FAFFFCFAF8FFFBF8F5FFFAF7F4FFF6F0
          EAFFEEE4DDFFA6B2CAFF1E75D8FF33A0F8FF34A2F9FF33A0F9FF32A1F9FF329F
          F9FF329FF9FF319FF9FF40A8F9FF1C83E4FF00000011000000040000000C33A4
          F0FF61C7FFFF4CBDFFFF4CBDFFFF4CBDFFFF4CBDFFFF65C6FEFF70CAFEFF8FD5
          FDFFC8E9FCFFF7FAFAFFFCFBF9FFFBF9F7FFFBF8F6FFFBF8F6FFF9F5F2FFEBDE
          D6FF8CA5CAFF1C75D8FF35A3F8FF37A5FAFF36A4FAFF35A3FAFF35A2F9FF34A2
          F9FF34A1F9FF34A1F9FF42AAFAFF1D86E5FF00000010000000040000000B35A7
          F0FF62C8FFFF4DBEFFFF4DBEFFFFFEFDFCFFFEFDFCFFFDFCFBFFFDFCFAFFFDFC
          FAFFFCFAF8FFFCF9F7FFFCF9F7FFFCF9F6FFFBF7F4FFF1E9E4FFD6D0D2FF5688
          CCFF1D7DDEFF38A7FAFF39A7FBFF38A7FAFF38A7FAFF37A5FAFF37A5FAFF37A5
          FAFF36A5FAFF36A3FAFF46ADFBFF1D88E6FF0000000F000000040000000A37A9
          F1FF64CBFFFF4FC0FFFF4EC1FFFFFCFBF9FFFCFAF8FFFCFAF8FFFCFAF8FFFCFA
          F8FFFCFAF8FFFCFAF7FFF9F5F1FFF2E9E5FFDFD5D6FF7C9FCFFF1E70D0FF3298
          ECFF3CABFBFF3BABFBFF3BA9FBFF3BA9FBFF3AA8FBFF3AA8FBFF39A7FBFF38A7
          FBFF38A7FBFF38A5FAFF49AFFBFF1F8AE7FF0000000F000000040000000A3AAC
          F2FF66CDFFFF4FC2FFFF50C3FFFFFDFBF9FFFDFBF9FFFDFBF9FFF8F4F2FFF5EF
          ECFFF1E9E4FFEADDD8FFC6C7D2FF7FA1D0FF2674CEFF2E92E5FF4DBEFDFF4ABB
          FEFF3FADFCFF3DACFCFF3DACFCFF3DABFBFF3CABFBFF3CABFBFF3BA9FBFF3BA9
          FBFF3AA8FBFF39A9FBFF4AB3FCFF208CE8FF0000000E00000004000000093BAD
          F2FF68CEFFFF51C4FFFF51C4FFFFE8DAD4FFE8DAD4FFE5D9D3FFBDC2D2FFA1B3
          D1FF759CCFFF2B73CDFF1973D4FF3092E5FF4CBBFAFF51C4FFFF51C4FFFF4EC1
          FFFF41AFFCFF3FAFFCFF40AFFCFF3FADFCFF3FADFCFF3EACFCFF3EACFCFF3DAC
          FCFF3CACFCFF3CACFCFF4DB5FCFF208EE9FF0000000D00000003000000083DAF
          F3FF6ACFFFFF52C6FFFF52C6FFFF0F65CCFF1064CCFF1066CCFF1D78D6FF2684
          DDFF3398E7FF4AB8F8FF52C6FFFF53C5FFFF52C6FFFF53C5FFFF53C5FFFF53C5
          FFFF44B4FDFF43B1FDFF41B0FDFF41B0FDFF40B0FDFF40AEFCFF3FAEFCFF3FAE
          FCFF3FACFCFF3EACFCFF50B7FCFF2291EAFF0000000C00000003000000073FB1
          F4FF7AD6FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8FFFF54C8
          FFFF54C6FFFF54C8FFFF54C8FFFF54C8FFFF54C6FFFF54C6FFFF54C6FFFF54C8
          FFFF48B8FDFF45B5FDFF43B2FDFF43B2FDFF42B2FDFF42B0FDFF42B0FDFF41B0
          FDFF41AFFDFF40AEFDFF60BEFDFF2392EBFF0000000B00000003000000053DA5
          E3EE8CD7FCFFA6E4FFFFA6E4FFFFA5E4FFFFA5E4FFFFA3E3FFFFA3E3FFFFA3E3
          FFFFA2E3FFFFA2E2FFFFA0E2FFFFA0E2FFFFA0E2FFFF9FE2FFFF9FE2FFFF9DE2
          FFFF99DBFEFF94D6FEFF94D5FEFF91D5FEFF90D5FEFF90D4FEFF8FD4FEFF8ED2
          FEFF8CD2FEFF8BD1FEFF70C1F9FF2288DAEE000000090000000200000003102D
          3D443698CED842B5F4FF42B5F4FF42B3F4FF42B3F4FF42B3F4FF41B2F4FF41B1
          F4FF41B1F4FF41B1F4FF41B0F4FF41B0F3FF40B0F3FF40AFF3FF3FAFF2FF3FAE
          F2FF35A7F1FF279DEFFF279CEEFF269BEEFF269BEEFF2699EEFF269AEEFF2699
          EEFF2699EEFF2598EDFF1F7FC5D909253A470000000500000001000000010000
          0003000000040000000600000006000000060000000600000007000000070000
          0007000000070000000700000007000000070000000800000008000000080000
          0008000000080000000800000008000000080000000900000009000000090000
          0009000000090000000900000007000000040000000200000000}
      end>
  end
  object ilNavBarSmall: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 616
    Top = 208
    Bitmap = {
      494C010108001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000A0000000F0000
      0011000000110000001100000011000000120000001200000012000000120000
      001300000013000000120000000C000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000212121C3363636FF363636FF3434
      34FF333333FF323232FF313131FF303030FF2F2F2FFF2F2F2FFF2D2D2DFF2D2D
      2DFF2D2D2DFF2C2C2CFF2B2B2BFF1A1A1AC400000009033771C10363D0FF0462
      D0FF0363D0FF0362D0FF0360CFFF035FCEFF025ECEFF035ECEFF025ECEFF025D
      CDFF025CCDFF015CCCFF01336FC30000000B0000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000484848FF4C4C4CFF4A4A4AFF4949
      49FF474747FF464646FF444444FF434343FF424242FF404040FF3F3F3FFF3E3E
      3EFF3D3D3DFF3C3C3CFF3C3C3CFF373737FF0000000D0769D3FF0F81DBFF138C
      EFFF138CEFFF138CEFFF138BEFFF1088EEFF1088EEFF1088EEFF1088EEFF1088
      EEFF1088EEFF086FD6FF025DCDFF000000110000000000000000D37410FDD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000A75C0DE1D776
      10FFD77610FFD77610FFD77610FF784209BF743F09BBD77610FFD77610FFD776
      10FFD77610FFB4630DE90000000000000000505050FF4F4F4FFF4D4D4DFF4C4C
      4CFF4A4A4AFF494949FF474747FF464646FF444444FF424242FF424242FF4040
      40FF3F3F3FFF3E3E3EFF3D3D3DFF3C3C3CFF0000000D076CD4FF219BF2FF0A85
      E7FF007CDFFF007CDFFF007CDFFF0077DDFF0076DDFF0076DDFF0076DDFF0076
      DDFF0880E6FF128AEFFF0360CFFF000000110000000000000000B8650EECD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFC56C0FF4000000000000000000000000000000000D070140B865
      0EECD77610FFD77610FFD77610FF0D0701400B06003CD77610FFD77610FFD776
      10FFC36B0FF31109014A0000000000000000B8B8B8FF525252FF505050FF4E4E
      4EFF4C4C4CFF4B4B4BFF494949FF484848FF464646FF454545FF444444FF4242
      42FF414141FF404040FF3F3F3FFF3E3E3EFF0000000C0A71D8FF29A0F3FF0281
      E1FFFFFFFFFFE2F0FBFF0281E1FF8BC2F0FFF8FBFEFF0178DFFF85BEF0FFFBFD
      FEFF0178DFFF158DF0FF0463D1FF000000100000000000000000552E06A0D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF5B3207A600000000000000000000000000000000000000000100
      0015532D069FD77610FF784209BF0000000000000000743F09BBD77610FF6A3A
      08B303010020000000000000000000000000FFFFFFFF8D8D8DFF535353FF5151
      51FF505050FF4E4E4EFF4C4C4CFF4B4B4BFF494949FF484848FF464646FF4545
      45FF434343FF424242FF414141FF3F3F3FFF0000000B0C75DAFF30A5F5FF0886
      E5FFE4F0FCFF7CBCF0FF0886E5FFBEDDF7FFC7E2F9FF057CE3FFA5D0F5FFDDED
      FBFF057CE3FF1890F2FF0665D2FF0000000F00000000000000000000000D4124
      048DB9650EEDD77610FFAA5D0DE30502002804020024A35A0DDED77610FFBE69
      0FF0452605910000000D00000000000000000000000000000000000000000000
      000000000000221302660D07014000000000000000000B06003C2F1A03780000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFA2A2A2FF5454
      54FF535353FF515151FF505050FF4E4E4EFF4C4C4CFF4A4A4AFF494949FF4747
      47FF464646FF454545FF434343FF424242FF0000000A0F7CDBFF38AAF7FF0F8C
      EAFF0F8CEAFF0F8CEAFF82BFF3FFFFFFFFFF80BEF3FF0981E7FFDAECFBFFAAD4
      F7FF0981E7FF1B93F4FF0669D4FF0000000E0000000000000000000000000000
      000000000007321C037C1109014900000000000000000D070141391F04840000
      000A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000140A014EB2610DE8B6640EEB140B0150000000000000
      0000000000000000000000000000000000006CABFAFFF1F7FEFFFFFFFFFFB9B9
      B9FF5E5E5EFF545454FF525252FF505050FF4F4F4FFF4D4D4DFF4C4C4CFF4A4A
      4AFF494949FF474747FF464646FF444444FF0000000A1181DFFF41AFF8FF1793
      EEFF9ACDF7FFC5E2FBFFFFFFFFFFB3D9F9FF2D96EEFF6DB6F4FFFFFFFFFF6BB5
      F3FF0E86ECFF1F97F6FF086CD6FF0000000D0000000000000000000000000000
      00000000000000000000120A014BB4630EEAB8650EEC160C0153000000000000
      0000000000000000000000000000000000000000000000000000000000000201
      001C3B200486884B0BCBCF7210FBD77610FFD77610FFCF7210FA85490AC9361E
      0481010000170000000000000000000000003D89F7FF589CF9FFF1F7FEFFFFFF
      FFFFDCDCDCFF717171FF555555FF535353FF525252FF505050FF4F4F4FFF4D4D
      4DFF4C4C4CFF494949FF494949FF474747FF000000091486E1FF4AB5F9FF1E99
      F2FFFAFCFFFFD1E9FCFF94CAF8FF42A6F4FF5DB0F4FFD5EAFCFFB6DBFAFF2594
      F1FF128AF0FF239BF7FF0970D8FF0000000C0000000000000000000000000000
      0000000000000000000DBA670EEED77610FFD77610FFC56C0FF4010000150000
      0000000000000000000000000000000000000000000000000000000000004F2B
      069BD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF4224048E000000000000000000000000418BF7FF3F8AF7FF478FF8FFC5DF
      FDFFFFFFFFFFFFFFFFFFA4A4A4FF5F5F5FFF555555FF535353FF515151FF5050
      50FF4E4E4EFF4C4C4CFF4B4B4BFF494949FF00000008188AE3FF52BAFBFF279F
      F7FF279FF7FF279FF7FF279FF7FF85C5FAFFD9EDFDFFCEE7FDFF54ACF8FF178F
      F5FF178FF5FF279FF9FF0B73DAFF0000000C0000000000000000000000000000
      0000000000002D190376D77610FFD77610FFD77610FFD77610FF381F04830000
      0000000000000000000000000000000000000000000000000000000000000000
      000FD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF01000015000000000000000000000000448DF7FF428CF7FF408AF7FF3F8A
      F7FF7AB2FAFFF1F7FEFFFFFFFFFFF4F4F4FFA3A3A3FF5E5E5EFF545454FF5353
      53FF515151FF505050FF4E4E4EFF4C4C4CFF000000071A8FE5FF58BEFCFF2EA4
      FAFFA3D4FCFFBADFFDFFE2F1FEFFFFFFFFFFC1E2FDFF57AFFBFF1B93F9FF1B93
      F9FF1B93F9FF2AA2FBFF0D78DCFF0000000B0000000000000000000000000000
      000000000000A0580CDCD77610FFD77610FFD77610FFD77610FFA75C0DE10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000000000000000000000000000478EF7FF458DF7FF448DF7FF428C
      F7FF408AF7FF4890F8FF91C1FBFFF1F7FEFFFFFFFFFFF4F4F4FFAFAFAFFF7070
      70FF545454FF535353FF515151FF4F4F4FFF000000061D94E8FF60C3FDFF35A9
      FDFFFCFDFFFFE6F4FFFFC0E2FEFF8DCBFEFF47AFFDFF1F97FDFF1F97FDFF1F97
      FDFF1F97FDFF2DA5FDFF0E7CDEFF0000000A0000000000000000000000000000
      0000000000009B550BD9D77610FFD77610FFD77610FFD77610FFA1580CDD0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BC670EEFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFB664
      0EEB000000000000000000000000000000004990F7FF488FF7FF468EF7FF458D
      F7FF438CF7FF418BF7FF408AF7FF4890F8FF79B2FAFFD4E7FDFFFFFFFFFFFFFF
      FFFFE7E7E7FFAEAEAEFF838383FF636363FF000000052298E9FF65C6FEFF42B2
      FFFF3AACFFFF3AACFFFF3AACFFFF3AACFFFF3AACFFFF249BFFFF2199FFFF2199
      FFFF28A0FFFF30A8FEFF1080E1FF000000090000000000000000000000000000
      000000000000C56C0FF4D77610FFD77610FFD77610FFD77610FFD17310FC0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000623508ACD77610FFD77610FFD77610FFD77610FFD77610FFAD5F0DE5150B
      0150000000000000000000000000000000004B91F7FF4A90F7FF4990F7FF488F
      F7FF468EF7FF448DF7FF438CF7FF418BF7FF3F8AF7FF3D89F7FF4F96F8FF77B1
      FAFFB7D6FCFFE1EEFEFFFFFFFFFFFFFFFFFF00000004239BECFF57BCF9FF6AC9
      FFFF69C9FFFF69C8FFFF68C8FFFF68C8FFFF67C8FFFF54BDFFFF49B8FFFF49B8
      FFFF48B8FFFF35A8F7FF1284E3FF000000070000000000000000000000000000
      00000000000095520BD5D77610FFD77610FFD77610FFD77610FF201202640000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020026BC670EEFD77610FFD77610FFD77610FFB4630DEA000000000000
      0000000000000000000000000000000000004C92F7FF4B91F7FF4A91F7FF4A90
      F7FF4990F7FF478EF7FF468EF7FF448DF7FF428CF7FF418BF7FF3F8AF7FF3D89
      F7FF3C88F7FF3A86F7FF428CF7FF5FA1F9FF00000003155784C0259FECFF259E
      ECFF259EECFF239DECFF259CEBFF239BEBFF239BEBFF1C93E9FF148AE7FF148A
      E6FF1389E5FF1488E6FF0A4C80C1000000050000000000000000000000000000
      0000000000000C07003E98530BD7C96E0FF7A1580CDD2514026A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005020027643708AEBE690FF0A95D0DE2120A014B000000000000
      0000000000000000000000000000000000004D92F8FF4D92F8FF4C92F7FF4B91
      F7FF4A91F7FF4A90F7FF488FF7FF478EF7FF458DF7FF448DF7FF428CF7FF408A
      F7FF3E89F7FF3D88F7FF3B87F7FF3986F7FF0000000100000002000000030000
      0004000000040000000400000005000000050000000500000005000000050000
      0005000000060000000600000004000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D5591C34D92F8FF4D92F8FF4D92
      F8FF4C92F7FF4B91F7FF4A91F7FF4990F7FF488FF7FF478EF7FF458DF7FF438C
      F7FF428CF7FF408AF7FF3E89F7FF234F90C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A1C6CAC1212488C1A1C6CAC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001212488C0505154C1212488C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A1C6CAC1212488C1A1C6CAC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 13632104
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3236203561
          342034203020302031203420347631346C2D2E3030352E323036613420342030
          203020312D332E37383920332E37394C323620323748366C2D2E3230362D2E30
          3035613420342030203020312D332E37392D332E3738394C3220323356396134
          203420302030203120342D347A4D332032336133203320302030203020332033
          6832306133203320302030203020332D335631312E343033632D2E3239382E32
          36312D2E3633332E34372D2E3935362E3633314C31372E3131392031372E3561
          322E3520322E352030203020312D322E32333720304C332E3935372031322E30
          333441342E3620342E3620302030203120332031312E3430327A4D3620366133
          20332030203020302D3320322E3936356330202E3030382E3030342E3031362E
          3030342E3032342E3030372E3330342E3032362E3534322E3038312E37382E31
          33312E35372E363420312E303320312E333220312E33376C31302E3932342035
          2E343637632E3432322E32312E39322E323120312E33343320306C31302E3932
          352D352E343636632E3637392D2E333420312E3138382D2E3820312E3331392D
          312E33372E3035352D2E32342E3037352D2E3437372E3038312D2E37384C3239
          20382E3937314133203320302030203020323620367A222F3E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3720336134
          20342030203020302D3420347631386134203420302030203020332E37393420
          332E3939354C372032396831386C2E3230362D2E303035613420342030203020
          3020332E37392D332E3738394C32392032355637613420342030203020302D34
          2D347A6D32312037763135613320332030203020312D33203348376133203320
          30203020312D332D335631307A6D2D332D366133203320302030203120332033
          7632483456376133203320302030203120332D337A222F3E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D7265642C2023454433443342292220643D224D31332031374839763468
          347A22206F7061636974793D222E33222F3E0D0A093C672066696C6C3D226375
          7272656E74436F6C6F7222206F7061636974793D222E33223E0D0A09093C7061
          74682066696C6C2D72756C653D226576656E6F64642220636C69702D72756C65
          3D226576656E6F64642220643D224D3134203136763168347634682D34763168
          2D3176332E3539346330202E3232342E3232342E3430362E352E343036732E35
          2D2E3138322E352D2E343036563232683476332E3539346330202E3232342E32
          32342E3430362E352E343036732E352D2E3138322E352D2E3430365632326834
          76332E3539346330202E3232342E3232342E3430362E352E343036732E352D2E
          3138322E352D2E34303656323268312E353934632E3232342030202E3430362D
          2E3232342E3430362D2E35732D2E3138322D2E352D2E3430362D2E3548323476
          2D3468312E353934632E3232342030202E3430362D2E3232342E3430362D2E35
          732D2E3138322D2E352D2E3430362D2E35483234762D332E35393463302D2E32
          32342D2E3232342D2E3430362D2E352D2E343036732D2E352E3138322D2E352E
          343036563136682D34762D332E35393463302D2E3232342D2E3232342D2E3430
          362D2E352D2E343036732D2E352E3138322D2E352E3430365631367A762D332E
          35393463302D2E3232342D2E3232342D2E3430362D2E352D2E343036732D2E35
          2E3138322D2E352E3430365631367A6D392035682D34762D3468347A222F3E0D
          0A09093C7061746820643D224D3820323148362E343036632D2E32323420302D
          2E3430362E3232342D2E3430362E35732E3138322E352E3430362E3548387633
          2E3539346330202E3232342E3232342E3430362E352E343036732E352D2E3138
          322E352D2E34303656323248387A4D392031322E34303663302D2E3232342D2E
          3232342D2E3430362D2E352D2E343036732D2E352E3138322D2E352E34303656
          313648362E343036632D2E32323420302D2E3430362E3232342D2E3430362E35
          732E3138322E352E3430362E354838762D3168317A222F3E0D0A093C2F673E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D7265642C2023454433443342292220643D224D382031
          3676366836762D367A6D3520354839762D3468347A22206F7061636974793D22
          2E38222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D31342E3537
          342031362E303039632E3830312E30383520312E3432362E37393520312E3432
          3620312E3635386C2D2E3030382E3231384331352E3833352032302E30393320
          31332E3330332032312031312E35203231732D342E3333352D2E3930372D342E
          3439322D332E3131354C372031372E36363743372031362E37343720372E3731
          20313620382E35383820313668352E3832347A4D382E353838203137632D2E32
          3820302D2E3538382E3235332D2E3538382E3636372030202E37342E33383720
          312E32383720312E30363720312E3639372E3730382E34323720312E3634372E
          36333620322E3433332E36333673312E3732352D2E323120322E3433332D2E36
          3336632E36382D2E343120312E3036372D2E39353720312E3036372D312E3639
          3720302D2E3431342D2E3330382D2E3636372D2E3538382D2E3636377A222F3E
          0D0A093C706174682066696C6C3D2263757272656E74436F6C6F722220643D22
          4D32342E35203137612E352E3520302030203120302031682D35612E352E3520
          302030203120302D317A222F3E0D0A093C706174682066696C6C3D2263757272
          656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64642220636C
          69702D72756C653D226576656E6F64642220643D224D31312E3520313061322E
          3520322E352030203120312030203520322E3520322E3520302030203120302D
          356D30203161312E3520312E352030203120302030203320312E3520312E3520
          302030203020302D33222F3E0D0A093C706174682066696C6C3D226375727265
          6E74436F6C6F722220643D224D32342E35203133612E352E3520302030203120
          302031682D35612E352E3520302030203120302D317A222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F72222066696C6C2D72756C653D
          226576656E6F64642220636C69702D72756C653D226576656E6F64642220643D
          224D323620346134203420302030203120342034763136613420342030203020
          312D34203448366C2D2E3230362D2E3030354134203420302030203120322032
          3456386134203420302030203120342D347A4D36203561332033203020302030
          2D33203376313661332033203020302030203320336832306133203320302030
          203020332D335638613320332030203020302D332D337A222F3E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31332E3634372031372E363437
          612E352E35203020312031202E3730372E3730376C2D332E3520332E35612E35
          2E352030203020312D2E37303720306C2D322D32612E352E3520302031203120
          2E3730372D2E3730376C312E36343620312E3634367A4D32332E35203139612E
          352E3520302030203120302031682D36612E352E3520302030203120302D317A
          4D31332E36343720392E363436612E352E35203020312031202E3730372E3730
          376C2D332E3520332E35612E352E352030203020312D2E37303720306C2D322D
          32612E352E35203020312031202E3730372D2E3730376C312E36343620312E36
          34377A4D32332E35203132612E352E3520302030203120302031682D36612E35
          2E3520302030203120302D317A222F3E0D0A093C706174682066696C6C3D2263
          757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F646422
          20636C69702D72756C653D226576656E6F64642220643D224D32352033613420
          3420302030203120342034763138613420342030203020312D34203448376134
          20342030203020312D342D3456376134203420302030203120342D347A4D3720
          34613320332030203020302D3320337631386133203320302030203020332033
          6831386133203320302030203020332D335637613320332030203020302D332D
          337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000A0000000F0000001100000011000000110000001100000012000000120000
          0012000000120000001300000013000000120000000C00000003000000090449
          96C10464D0FF0563D0FF0464D0FF0463D0FF0461CFFF0460CEFF035FCEFF045F
          CEFF035FCEFF035ECDFF035DCDFF025DCCFF024391C30000000B0000000D086A
          D3FF1081DBFF148CEFFF148CEFFF148CEFFF148BEFFF1188EEFF1188EEFF1188
          EEFF1188EEFF1188EEFF1188EEFF0970D6FF035ECDFF000000110000000D086D
          D4FF229BF2FF0B85E7FF007DDFFF007DDFFF007DDFFF0078DDFF0077DDFF0077
          DDFF0077DDFF0077DDFF0980E6FF138AEFFF0461CFFF000000110000000C0B72
          D8FF2AA0F3FF0381E1FFFFFFFFFFE2F0FBFF0381E1FF8BC2F0FFF8FBFEFF0279
          DFFF85BEF0FFFBFDFEFF0279DFFF168DF0FF0564D1FF000000100000000B0D76
          DAFF31A5F5FF0986E5FFE4F0FCFF7DBCF0FF0986E5FFBEDDF7FFC7E2F9FF067D
          E3FFA5D0F5FFDDEDFBFF067DE3FF1990F2FF0766D2FF0000000F0000000A107D
          DBFF39AAF7FF108CEAFF108CEAFF108CEAFF82BFF3FFFFFFFFFF80BEF3FF0A81
          E7FFDAECFBFFAAD4F7FF0A81E7FF1C93F4FF076AD4FF0000000E0000000A1281
          DFFF42AFF8FF1893EEFF9ACDF7FFC5E2FBFFFFFFFFFFB3D9F9FF2E96EEFF6EB6
          F4FFFFFFFFFF6CB5F3FF0F86ECFF2097F6FF096DD6FF0000000D000000091586
          E1FF4BB5F9FF1F99F2FFFAFCFFFFD1E9FCFF94CAF8FF43A6F4FF5EB0F4FFD5EA
          FCFFB6DBFAFF2694F1FF138AF0FF249BF7FF0A71D8FF0000000C00000008198A
          E3FF53BAFBFF289FF7FF289FF7FF289FF7FF289FF7FF85C5FAFFD9EDFDFFCEE7
          FDFF55ACF8FF188FF5FF188FF5FF289FF9FF0C74DAFF0000000C000000071B8F
          E5FF59BEFCFF2FA4FAFFA3D4FCFFBADFFDFFE2F1FEFFFFFFFFFFC1E2FDFF58AF
          FBFF1C93F9FF1C93F9FF1C93F9FF2BA2FBFF0E79DCFF0000000B000000061E94
          E8FF61C3FDFF36A9FDFFFCFDFFFFE6F4FFFFC0E2FEFF8DCBFEFF48AFFDFF2097
          FDFF2097FDFF2097FDFF2097FDFF2EA5FDFF0F7DDEFF0000000A000000052398
          E9FF66C6FEFF43B2FFFF3BACFFFF3BACFFFF3BACFFFF3BACFFFF3BACFFFF259B
          FFFF2299FFFF2299FFFF29A0FFFF31A8FEFF1180E1FF0000000900000004249B
          ECFF58BCF9FF6BC9FFFF6AC9FFFF6AC8FFFF69C8FFFF69C8FFFF68C8FFFF55BD
          FFFF4AB8FFFF4AB8FFFF49B8FFFF36A8F7FF1384E3FF00000007000000031C75
          AFC0269FECFF269EECFF269EECFF249DECFF269CEBFF249BEBFF249BEBFF1D93
          E9FF158AE7FF158AE6FF1489E5FF1588E6FF0E65AAC100000005000000010000
          0002000000030000000400000004000000040000000500000005000000050000
          0005000000050000000500000006000000060000000400000001}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D224D72223E0D0A09093C7061746820636C6173733D22426C75652220643D
          224D31302C392E39632D302E312C302E352C302E322C302E392C302E342C312E
          34732D302E312C312E372C302E392C312E3663302C302C302C302E312C302C30
          2E3263302E362C322E332C322C342E392C342E372C342E3973342E322D322E36
          2C342E372D342E3920202623393B2623393B56313363312C302E312C302E362D
          312E312C302E392D312E3663302E322D302E352C302E342D302E392C302E332D
          312E34632D302E312D302E342D302E342D302E342D302E352D302E334332332E
          322C342E382C32302E332C352C32302E332C355332302C322C31342E382C3220
          202623393B2623393B4331302C322C392E342C362C31302E352C392E36433130
          2E342C392E362C31302E312C392E372C31302C392E397A204D32302C3138632D
          302E382C312E352D322E312C342D342C34732D332E322D322E352D342D34632D
          322E332C332E352D382C312D382C382E35563330683234762D332E3520202623
          393B2623393B4332382C31392E312C32322E332C32312E342C32302C31387A22
          2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D224D7273223E0D0A09093C706174682069643D224D72735F315F2220636C
          6173733D22426C75652220643D224D31322E332C31372E38632D322E392D302E
          342D352E322D312E332D362E322D322E3463312D302E372C312E382D312E372C
          312E392D322E3963302D302E322C302D302E332C302D302E35762D3220202623
          393B2623393B63302D342E342C332E352D382C372E392D384331382E312C322C
          32302C332E382C32302C3663322E322C302C342C312E382C342C34763263302C
          302E322C302C302E332C302C302E3563302E322C312E322C302E372C322E332C
          312E372C322E39632D312C312E312D332E332C322D362E312C322E3420202623
          393B2623393B4331382E382C31392C31372E362C32302C31362C32305331332E
          322C31392C31322E332C31372E387A204D32302C32306C2D342C386C2D342D38
          632D322E322C332E352D382C342D382C387632683234762D324332382C32342C
          32322E332C32332E332C32302C32307A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000000000000000000000000000000000002C2C2CC33737
          37FF373737FF353535FF343434FF333333FF323232FF313131FF303030FF3030
          30FF2E2E2EFF2E2E2EFF2E2E2EFF2D2D2DFF2C2C2CFF222222C4494949FF4D4D
          4DFF4B4B4BFF4A4A4AFF484848FF474747FF454545FF444444FF434343FF4141
          41FF404040FF3F3F3FFF3E3E3EFF3D3D3DFF3D3D3DFF383838FF515151FF5050
          50FF4E4E4EFF4D4D4DFF4B4B4BFF4A4A4AFF484848FF474747FF454545FF4343
          43FF434343FF414141FF404040FF3F3F3FFF3E3E3EFF3D3D3DFFB8B8B8FF5353
          53FF515151FF4F4F4FFF4D4D4DFF4C4C4CFF4A4A4AFF494949FF474747FF4646
          46FF454545FF434343FF424242FF414141FF404040FF3F3F3FFFFFFFFFFF8D8D
          8DFF545454FF525252FF515151FF4F4F4FFF4D4D4DFF4C4C4CFF4A4A4AFF4949
          49FF474747FF464646FF444444FF434343FF424242FF404040FFFFFFFFFFFFFF
          FFFFA2A2A2FF555555FF545454FF525252FF515151FF4F4F4FFF4D4D4DFF4B4B
          4BFF4A4A4AFF484848FF474747FF464646FF444444FF434343FF6DABFAFFF1F7
          FEFFFFFFFFFFB9B9B9FF5F5F5FFF555555FF535353FF515151FF505050FF4E4E
          4EFF4D4D4DFF4B4B4BFF4A4A4AFF484848FF474747FF454545FF3E89F7FF599C
          F9FFF1F7FEFFFFFFFFFFDCDCDCFF727272FF565656FF545454FF535353FF5151
          51FF505050FF4E4E4EFF4D4D4DFF4A4A4AFF4A4A4AFF484848FF428BF7FF408A
          F7FF488FF8FFC5DFFDFFFFFFFFFFFFFFFFFFA4A4A4FF606060FF565656FF5454
          54FF525252FF515151FF4F4F4FFF4D4D4DFF4C4C4CFF4A4A4AFF458DF7FF438C
          F7FF418AF7FF408AF7FF7BB2FAFFF1F7FEFFFFFFFFFFF4F4F4FFA3A3A3FF5F5F
          5FFF555555FF545454FF525252FF515151FF4F4F4FFF4D4D4DFF488EF7FF468D
          F7FF458DF7FF438CF7FF418AF7FF4990F8FF91C1FBFFF1F7FEFFFFFFFFFFF4F4
          F4FFAFAFAFFF717171FF555555FF545454FF525252FF505050FF4A90F7FF498F
          F7FF478EF7FF468DF7FF448CF7FF428BF7FF418AF7FF4990F8FF7AB2FAFFD4E7
          FDFFFFFFFFFFFFFFFFFFE7E7E7FFAEAEAEFF838383FF646464FF4C91F7FF4B90
          F7FF4A90F7FF498FF7FF478EF7FF458DF7FF448CF7FF428BF7FF408AF7FF3E89
          F7FF5096F8FF78B1FAFFB7D6FCFFE1EEFEFFFFFFFFFFFFFFFFFF4D92F7FF4C91
          F7FF4B91F7FF4B90F7FF4A90F7FF488EF7FF478EF7FF458DF7FF438CF7FF428B
          F7FF408AF7FF3E89F7FF3D88F7FF3B86F7FF438CF7FF60A1F9FF4E92F8FF4E92
          F8FF4D92F7FF4C91F7FF4B91F7FF4B90F7FF498FF7FF488EF7FF468DF7FF458D
          F7FF438CF7FF418AF7FF3F89F7FF3E88F7FF3C87F7FF3A86F7FF3C70BEC34E92
          F8FF4E92F8FF4E92F8FF4D92F7FF4C91F7FF4B91F7FF4A90F7FF498FF7FF488E
          F7FF468DF7FF448CF7FF438CF7FF418AF7FF3F89F7FF2F68BDC3}
      end>
  end
  object odCalendar: TdxOpenFileDialog
    Filter = 'iCalendar files|*.ics'
    Left = 536
    Top = 424
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = stTaskEmployees
      end>
    HintStyle.ScreenTipActionLinks = <>
    Left = 945
    Top = 528
  end
  object aclMain: TActionList
    Left = 344
    object actPrintPreview: TAction
      Caption = 'Print Preview'
      ShortCut = 16464
      OnExecute = actPrintPreviewExecute
    end
    object actPageSetup: TAction
      Caption = 'Page Setup'
      OnExecute = actPageSetupExecute
    end
    object actQATAboveRibbon: TAction
      Caption = 'Ab&ove the Ribbon'
      GroupIndex = 62
      Hint = 'Show the Quick Access ToolBar above the Ribbon'
      OnExecute = actQATBelowRibbonExecute
      OnUpdate = actQATBelowRibbonUpdate
    end
    object actQATBelowRibbon: TAction
      Tag = 1
      Caption = 'B&elow the Ribbon'
      GroupIndex = 62
      Hint = 'Show the Quick Access ToolBar below the Ribbon'
      OnExecute = actQATBelowRibbonExecute
      OnUpdate = actQATBelowRibbonUpdate
    end
  end
  object screpNavBar: TdxScreenTipRepository
    Left = 912
    Top = 352
    PixelsPerInch = 96
    object stTaskEmployees: TdxScreenTip
      Description.PlainText = False
      Description.Text = 'TaskEmployees'
      Width = 400
    end
  end
  object SkinController: TdxSkinController
    SkinName = 'WXI'
    Left = 576
    Top = 96
  end
  object dsHelper: TDataSource
    OnDataChange = dsHelperDataChange
    Left = 480
    Top = 328
  end
  object ilTreeList: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 144
    Top = 368
    Bitmap = {
      494C01010E001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010C12440A5F89BB129CE1F014B1
      FFFF129DE1F00B608ABC010D1347000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013A5EDF614B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF13A7F1F8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFC56C0FF400000000C16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFC56C0FF4000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000717171FF000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000BF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFC16A0FF20000000000000000717171FF000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000007171
      71FF717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFC16A0FF200000000C16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFC56C0FF40000000000000000717171FF000000000000
      00000000000000000000000000000000000013A4EDF614B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF13A7F1F8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000717171FF000000007171
      71FF717171FF717171FF717171FF11111165010B10410A5A83B71198DAEC14AB
      F7FB1198DAEC0A5C84B8010C1143000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFC56C0FF400000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000717171FF000000000000
      00000000000000000000000000000000000000000000000000000000000C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000BF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFC16A0FF20000000000000000717171FF0000000014B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF00000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000C16A0FF2D77610FFC56C0FF40000
      0000C16A0FF2D77610FFC56C0FF40000000000000000717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF00000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000D77610FFD77610FFD77610FF0000
      0000D77610FFD77610FFD77610FF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFC16A0FF200000000BF690FF0D77610FFC16A0FF20000
      0000BF690FF0D77610FFC16A0FF20000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000626262ED717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF636363EF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000212121C3363636FF363636FF3434
      34FF333333FF323232FF313131FF303030FF2F2F2FFF2F2F2FFF2D2D2DFF2D2D
      2DFF2D2D2DFF2C2C2CFF2B2B2BFF1A1A1AC40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000484848FF4C4C4CFF4A4A4AFF4949
      49FF474747FF464646FF444444FF434343FF424242FF404040FF3F3F3FFF3E3E
      3EFF3D3D3DFF3C3C3CFF3C3C3CFF373737FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C07
      003EB5630EEA683908B200000000000000000000000000000000D57610FED776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000505050FF4F4F4FFF4D4D4DFF4C4C
      4CFF4A4A4AFF494949FF474747FF464646FF444444FF424242FF424242FF4040
      40FF3F3F3FFF3E3E3EFF3D3D3DFF3C3C3CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C07003EC36B
      0FF3D77610FFBA650EED00000000000000000000000000000000BD670EEFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFC36B0FF30000000000000000B8B8B8FF525252FF505050FF4E4E
      4EFF4C4C4CFF4B4B4BFF494949FF484848FF464646FF454545FF444444FF4242
      42FF414141FF404040FF3F3F3FFF3E3E3EFF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C07003EC36B0FF3D776
      10FFC96E0FF71009014600000000000000000000000000000000583007A3D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF5A3107A50000000000000000FFFFFFFF8D8D8DFF535353FF5151
      51FF505050FF4E4E4EFF4C4C4CFF4B4B4BFF494949FF484848FF464646FF4545
      45FF434343FF424242FF414141FF3F3F3FFF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000000
      0000000000000000000000000000000000000C07003EC36B0FF3D77610FFC96E
      0FF71009014600000000000000000000000000000000000000000000000D4526
      0591BB670EEED77610FFAA5D0DE30502002804020026A65B0DE0D77610FFBF69
      0FF0462605920000000E0000000000000000FFFFFFFFFFFFFFFFA2A2A2FF5454
      54FF535353FF515151FF505050FF4E4E4EFF4C4C4CFF4A4A4AFF494949FF4747
      47FF464646FF454545FF434343FF424242FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000000000000502
      0028683908B1C76E0FF5C86E0FF6713E08B9C36B0FF3D77610FFC96E0FF71009
      0146000000000000000000000000000000000000000000000000000000000000
      000000000008341D037E1109014800000000000000000F0801443A2004850000
      000A000000000000000000000000000000006CABFAFFF1F7FEFFFFFFFFFFB9B9
      B9FF5E5E5EFF545454FF525252FF505050FF4F4F4FFF4D4D4DFF4C4C4CFF4A4A
      4AFF494949FF474747FF464646FF444444FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000005020028BD68
      0EEFD77610FFD77610FFD77610FFD77610FFD77610FFC96E0FF7100901460000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000120A014BB3630EE9B6640EEB150C0151000000000000
      0000000000000000000000000000000000003D89F7FF589CF9FFF1F7FEFFFFFF
      FFFFDCDCDCFF717171FF555555FF535353FF525252FF505050FF4F4F4FFF4D4D
      4DFF4C4C4CFF494949FF494949FF474747FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000653808AFD776
      10FFD77610FFD17410FCD77610FFD77610FFD77610FF6F3D08B7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000EBB670EEED77610FFD77610FFC36B0FF3010000130000
      000000000000000000000000000000000000418BF7FF3F8AF7FF478FF8FFC5DF
      FDFFFFFFFFFFFFFFFFFFA4A4A4FF5F5F5FFF555555FF535353FF515151FF5050
      50FF4E4E4EFF4C4C4CFF4B4B4BFF494949FF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000C16A0FF2D776
      10FF653808AF0000000B10090148D77610FFD77610FFC76E0FF6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002E190377D77610FFD77610FFD77610FFD77610FF351D037F0000
      000000000000000000000000000000000000448DF7FF428CF7FF408AF7FF3F8A
      F7FF7AB2FAFFF1F7FEFFFFFFFFFFF4F4F4FFA3A3A3FF5E5E5EFF545454FF5353
      53FF515151FF505050FF4E4E4EFF4C4C4CFF000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F000000000000000000000000C06A0FF16A3A
      08B300000006000000000000000BD17310FCD77610FFC96E0FF7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A2580CDDD77610FFD77610FFD77610FFD77610FFA45A0DDF0000
      000000000000000000000000000000000000478EF7FF458DF7FF448DF7FF428C
      F7FF408AF7FF4890F8FF91C1FBFFF1F7FEFFFFFFFFFFF4F4F4FFAFAFAFFF7070
      70FF545454FF535353FF515151FF4F4F4FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002514026B0000
      00070000000000000005633608ADD77610FFD77610FF6E3C08B7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009F570CDBD77610FFD77610FFD77610FFD77610FF9E570CDB0000
      0000000000000000000000000000000000004990F7FF488FF7FF468EF7FF458D
      F7FF438CF7FF418BF7FF408AF7FF4890F8FF79B2FAFFD4E7FDFFFFFFFFFFFFFF
      FFFFE7E7E7FFAEAEAEFF838383FF636363FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      000000000005623508ACD77610FFD77610FFC36B0FF30704002F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C76D0FF5D77610FFD77610FFD77610FFD77610FFCF7210FA0000
      0000000000000000000000000000000000004B91F7FF4A90F7FF4990F7FF488F
      F7FF468EF7FF448DF7FF438CF7FF418BF7FF3F8AF7FF3D89F7FF4F96F8FF77B1
      FAFFB7D6FCFFE1EEFEFFFFFFFFFFFFFFFFFF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00002715036ECF7210FBD07210FB754009BC0704003000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A550BD8D77610FFD77610FFD77610FFD77610FF201202640000
      0000000000000000000000000000000000004C92F7FF4B91F7FF4A91F7FF4A90
      F7FF4990F7FF478EF7FF468EF7FF448DF7FF428CF7FF418BF7FF3F8AF7FF3D89
      F7FF3C88F7FF3A86F7FF428CF7FF5FA1F9FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000400000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0701419D560CDACF7210FAA35A0DDE2615026C000000000000
      0000000000000000000000000000000000004D92F8FF4D92F8FF4C92F7FF4B91
      F7FF4A91F7FF4A90F7FF488FF7FF478EF7FF458DF7FF448DF7FF428CF7FF408A
      F7FF3E89F7FF3D88F7FF3B87F7FF3986F7FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D5591C34D92F8FF4D92F8FF4D92
      F8FF4C92F7FF4B91F7FF4A91F7FF4990F7FF488FF7FF478EF7FF458DF7FF438C
      F7FF428CF7FF408AF7FF3E89F7FF234F90C30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000656565F1717171FF676767F3000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000D77610FFD776
      10FF341D037E0201001A00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF717171FF000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000D77610FF341D
      037E09050036BD680EEF341D037E000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF717171FF000000000000000000000000181818776767
      67F45A5A5AE40606063E0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000341D037E0905
      0036BD680EEFD77610FFD77610FF341D037E0000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF717171FF00000000000000001D1D1D826F6F6FFD0909
      0948070707435C5C5CE60000001000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000000000000000000DB563
      0EEAD77610FFD77610FFD77610FFD77610FF341D037E00000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF884B0BCB864A0ACAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF717171FF000000001D1D1D82717171FF313131A80000
      0000000000002D2D2DA21515157000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF000000000000000000000000160C
      0153CF7210FAD77610FFD77610FFD77610FFD77610FF341D037E000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFC16A0FF22816036F00000003000000032715026DC06A0FF1D776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000007252525936666
      66F2717171FF717171FF717171FF717171FF717171FF717171FF0B0B0B530000
      0000000000000A0A0A4C3C3C3CBA00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD97E1EFFF1CFABFFF1D0ADFFDA7E1FFFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000160C0153CF7210FAD77610FFD77610FFD77610FFD77610FF341D037E0000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF643708AE0201001C0201001D673808B0683908B20301001F0201001B6235
      08ACD77610FFD77610FFD77610FFD77610FF0000000024242491717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF6060
      60EB0B0B0B52010101195E5E5EE800000000D77610FFD77610FFD77610FFD776
      10FFD77610FFE09647FFFAEEE1FFFFFFFFFFFFFFFFFFFAEFE2FFE19749FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000160C0153CF7210FAD77610FFD77610FFD77610FFD77610FF311B
      037B00000000000000000000000000000000D77610FFD77610FFA85C0DE2140B
      014F0000000329170371C36B0FF3D77610FFD77610FFC36C0FF32B1703730000
      0004130A014DA65B0DE0D77610FFD77610FF00000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF606060EB000000026F6F6FFD00000000D77610FFD77610FFD77610FFD878
      14FFEBBC89FFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFECBD
      8BFFD87814FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000160C0153CF7210FAD77610FFD77610FFCD7010F9140B
      014F03010021000000000000000000000000D17310FC4224058E0000000C0804
      00348B4C0BCDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8C4D
      0BCE090500350000000C4024048CD07210FB00000000626262EE717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF5F5F5FEA000000026F6F6FFD00000000D77610FFD77610FFDC892FFFF6E0
      C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E1CBFFDC8A30FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000160C0153CF7210FACD7010F9140B014F1109
      0149CA6E0FF72D1903750000000000000000080400320000000D44250590D174
      10FCD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD27410FC462605920000000E07040031000000002323238F717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5C5C
      5CE70A0A0A4F0101011A5C5C5CE700000000D77610FFE5A866FFFDF7F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDF8F3FFE6A968FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000160C0153140B014F11090149CB70
      10F8D77610FFBA660EED0000000000000000150C0151AA5D0DE3D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFAB5E0DE4160C015300000000000000062323238F6262
      62EE717171FF717171FF717171FF717171FF717171FF717171FF0C0C0C540000
      0000000000000A0A0A4D3B3B3BB900000000D77610FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000001000017C56C0FF4D776
      10FFC36B0FF30C07003E0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000019191979717171FF323232AA0000
      0000000000002E2E2EA41515156E00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A0E0259B061
      0DE70C07003E000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000171717746F6F6FFD0A0A
      0A4C080808475C5C5CE50000000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001313136A6464
      64F0575757E00606063C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000636363EF717171FF717171FF717171FF717171FF717171FF717171FF6565
      65F1000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000129BE0EF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF129EE3F10000000000000000000000000002031E0C6590C014B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF073E5A9800000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FF00000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000000000000000000004253676010E154A14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14A9F5FA0002031D000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FF00000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000000000000000000000B5F87BA000101140D77
      ABD114B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF06364F8E000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FF00000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000000000000000000000B638FBF031C28660216
      205B14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF12A0E7F3000001110000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000341D037ED77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF341D037E00000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000000000000000000000B638FBF0A577DB30000
      000E0F86C1DE14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF04283B7B0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000341D037ED776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF341D037E0000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000000000000000000000B638FBF0B638FBF0214
      1C56031F2D6C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF108CCAE30000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000000000000000000000000000341D
      037ED77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF341D037E000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000000000000000000000B638FBF0B638FBF094F
      71AA000001120000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000341D037ED77610FFD77610FFD77610FFD77610FFD77610FFD77610FF341D
      037E00000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF129BE0EF0000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0B638FBF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000341D037ED77610FFD77610FFD77610FFD77610FF341D037E0000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0A5980B50000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      00000000000000000000341D037ED77610FFD77610FF341D037E000000000000
      00000000000000000000000000000000000000000000000000001299DCED14B1
      FFFF14B1FFFF14B1FFFF129BE0EF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006262
      62ED717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF636363EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000341D037E341D037E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A577FB40B638FBF0B63
      8FBF0B638FBF0A5980B500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000626262ED636363EF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 24117392
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2248
          6F6D65223E0D0A09093C706F6C79676F6E20636C6173733D22426C7565222070
          6F696E74733D22382C323820382C313820322C31382031362C342033302C3138
          2032342C31382032342C32382031382C32382031382C31382031342C31382031
          342C3238202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2246
          6F6C646572436C6F7365223E0D0A09093C673E0D0A0909093C7061746820636C
          6173733D2259656C6C6F772220643D224D32372C3130483134563763302D302E
          352D302E352D312D312D31483543342E352C362C342C362E352C342C37763138
          63302C302E352C302E352C312C312C3168323263302E352C302C312D302E352C
          312D3156313120202623393B2623393B2623393B4332382C31302E352C32372E
          352C31302C32372C31307A222F3E0D0A09093C2F673E0D0A09093C673E0D0A09
          09093C7061746820636C6173733D2259656C6C6F772220643D224D32372C3130
          483134563763302D302E352D302E352D312D312D31483543342E352C362C342C
          362E352C342C3776313863302C302E352C302E352C312C312C3168323263302E
          352C302C312D302E352C312D3156313120202623393B2623393B2623393B4332
          382C31302E352C32372E352C31302C32372C31307A222F3E0D0A09093C2F673E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224F
          70656E2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F6373732220786D6C3A73706163653D
          227072657365727665223E2E59656C6C6F777B66696C6C3A234646423131353B
          7D262331333B262331303B2623393B2E7374307B6F7061636974793A302E3735
          3B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D0A09093C
          7061746820636C6173733D2259656C6C6F772220643D224D322E322C32352E32
          6C352E352D313263302E332D302E372C312D312E322C312E382D312E32483236
          563963302D302E362D302E342D312D312D31483132563563302D302E362D302E
          342D312D312D31483343322E342C342C322C342E342C322C3576323020202623
          393B2623393B63302C302E322C302C302E332C302E312C302E3443322E312C32
          352E332C322E322C32352E332C322E322C32352E327A222F3E0D0A093C2F673E
          0D0A3C7061746820636C6173733D2259656C6C6F772220643D224D33312E332C
          313448392E364C342C32366832312E3863302E352C302C312E312D302E332C31
          2E332D302E374C33322C31342E374333322E312C31342E332C33312E382C3134
          2C33312E332C31347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2254
          72617368223E0D0A09093C7061746820636C6173733D22426C61636B2220643D
          224D382C323763302C302E352C302E352C312C312C3168313463302E352C302C
          312D302E352C312D3156313248385632377A222F3E0D0A09093C706174682063
          6C6173733D22426C61636B2220643D224D32352C36682D37563563302D302E35
          2D302E352D312D312D31682D32632D302E352C302D312C302E352D312C317631
          483743362E352C362C362C362E352C362C37763368323056374332362C362E35
          2C32352E352C362C32352C367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
          463B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C672069643D224D61696C33223E0D0A09
          093C7265637420793D22342220636C6173733D22426C7565222077696474683D
          22333222206865696768743D223234222F3E0D0A09093C673E0D0A0909093C70
          6F6C79676F6E20636C6173733D2257686974652220706F696E74733D22322C36
          20322C382031362C31382033302C382033302C36202623393B2623393B222F3E
          0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
          73733D22426C75652220643D224D32372E362C382E326C2D332E382D332E3863
          2D302E352D302E352D312E342D302E352D312E392C306C2D322E352C322E356C
          352E382C352E386C322E352D322E354332382E312C392E362C32382E312C382E
          382C32372E362C382E327A222F3E0D0A3C706F6C79676F6E20636C6173733D22
          426C75652220706F696E74733D22342C32382031302C323820342C323220222F
          3E0D0A3C7265637420783D22352E382220793D2231332E3422207472616E7366
          6F726D3D226D617472697828302E373037202D302E3730373220302E37303732
          20302E373037202D382E3035372031352E343537292220636C6173733D22426C
          7565222077696474683D2231372E3622206865696768743D22382E32222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
          696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D224D61
          696C5F315F223E0D0A09093C706F6C79676F6E20636C6173733D22426C756522
          20706F696E74733D22302C313120302C32382033322C32382033322C31312031
          362C3231202623393B222F3E0D0A09093C706F6C79676F6E20636C6173733D22
          426C75652220706F696E74733D22302C3420302C382031362C31382033322C38
          2033322C34202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E477265656E7B66696C
          6C3A233033394332333B7D262331333B262331303B2623393B2E426C75657B66
          696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D225072
          6F6D6F74696F6E5F315F223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D32342C32682D302E33632D312E312C302D322E312C302E34
          2D322E382C312E324C31362C384838632D332E332C302D362C322E372D362C36
          73322E372C362C362C36763963302C302E352C302E342C312C312C3168346330
          2E362C302C312D302E352C312D3120202623393B2623393B762D3968326C342E
          382C342E3863302E382C302E382C312E382C312E322C322E382C312E32483234
          63332E332C302C362D352E342C362D31324333302C372E342C32372E332C322C
          32342C327A204D32342C3234632D312E322C302D322E392D322E332D332E362D
          3648323263322E322C302C342D312E382C342D3420202623393B2623393B6330
          2D322E322D312E382D342D342D34682D312E3663302E372D332E372C322E342D
          362C332E362D3663312E362C302C342C332E392C342C31305332352E362C3234
          2C32342C32347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D224F
          7074696F6E735F315F223E0D0A09093C7061746820636C6173733D22426C7565
          2220643D224D32372E332C32332E386C2D382E322D382E3263302E362D312E31
          2C302E392D322E332C302E392D332E3763302D342E342D332E362D382D382D38
          632D312E332C302D322E352C302E332D332E362C302E396C342E392C342E3920
          202623393B2623393B63312C312C312C322E362C302C332E36632D312C312D32
          2E362C312D332E362C304C342E392C382E3443342E332C392E352C342C31302E
          372C342C313263302C342E342C332E362C382C382C3863312E332C302C322E36
          2D302E332C332E372D302E396C382E322C382E3220202623393B2623393B6330
          2E392C302E392C322E352C302E392C332E342C304332382E322C32362E332C32
          382E322C32342E382C32372E332C32332E387A222F3E0D0A093C2F673E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
          643D224D72223E0D0A09093C7061746820636C6173733D22426C75652220643D
          224D31302C392E39632D302E312C302E352C302E322C302E392C302E342C312E
          34732D302E312C312E372C302E392C312E3663302C302C302C302E312C302C30
          2E3263302E362C322E332C322C342E392C342E372C342E3973342E322D322E36
          2C342E372D342E3920202623393B2623393B56313363312C302E312C302E362D
          312E312C302E392D312E3663302E322D302E352C302E342D302E392C302E332D
          312E34632D302E312D302E342D302E342D302E342D302E352D302E334332332E
          322C342E382C32302E332C352C32302E332C355332302C322C31342E382C3220
          202623393B2623393B4331302C322C392E342C362C31302E352C392E36433130
          2E342C392E362C31302E312C392E372C31302C392E397A204D32302C3138632D
          302E382C312E352D322E312C342D342C34732D332E322D322E352D342D34632D
          322E332C332E352D382C312D382C382E35563330683234762D332E3520202623
          393B2623393B4332382C31392E312C32322E332C32312E342C32302C31387A22
          2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000018E4944415478DA9453BD4BC34014FF5D72952E0A2A8250
          1429084507E9A083169C040711675DFC2BDC0407E70E0EC5D97EAC163AB57690
          5A9BBFA0638742878E5D52023577DE5D7B97A44D11131EEF71F97DBC777721DE
          CBF517801C660F172F385795CA26D834E43A9BD59CB7A9264789D08080247340
          D48239BA40D40E08B9F2B95A7E5F49C2DADA01352D822F024DCD40563760A532
          B0F6CF616D1F80ACEFAA9169141C1520D2259D857D7C2B48878A301C0EE17C3A
          E876DFD0EFF78500630B734AA29DBD847D720F925C83EBBAF8A856D16AB53018
          0C84361730A64274E0071B2444ECCC19E8C58321BE974A68369B188FC7861815
          60530192482271F3086BEF54B55A2E970D5183C3445D0B811F589B2924EE5E95
          6BAFD743A15050AD8681E1ECFBBE32510276FA08F4EA59911B8D062A954AACEB
          B24C3857678862B1885AAD163BE73C315CCB9B887C3E0FC77196CE1997CD1ED4
          EB75743A9DA56E71AEE1B0C5513DFDE51827A6837A9E074AE9BF9DE533994C40
          47A3515B0072FA58E6811ACCD4459BFDF2C1FAF7AF000300121220E94AEC4182
          0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
          3E0D0A3C672069643D2247726964223E0D0A09093C6720636C6173733D227374
          31223E0D0A0909093C7061746820636C6173733D22426C61636B2220643D224D
          32322C313268387636682D385631327A204D31322C313276366838762D364831
          327A204D31302C3138762D36483276364831307A204D32322C32366838762D36
          682D385632367A204D31322C323076366838762D364831327A204D31302C3236
          762D36483220202623393B2623393B2623393B76364831307A222F3E0D0A0909
          3C2F673E0D0A09093C7265637420783D22322220793D22342220636C6173733D
          22426C7565222077696474683D22323822206865696768743D2236222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203332203332222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220656E61626C652D6261636B67726F756E643D22
          6E6577203020302033322033322220786D6C3A73706163653D22707265736572
          7665222069643D224C617965725F31223E262331333B262331303B3C7374796C
          6520747970653D22746578742F637373223E2E426C75657B66696C6C3A233131
          373744373B7D3C2F7374796C653E0D0A3C7061746820643D224D31332C313448
          31632D302E362C302D312D302E342D312D31563363302D302E362C302E342D31
          2C312D3168313263302E362C302C312C302E342C312C317631304331342C3133
          2E362C31332E362C31342C31332C31347A222066696C6C3D2223313137374437
          2220636C6173733D22426C7565222F3E0D0A3C7061746820643D224D31332C32
          384831632D302E362C302D312D302E342D312D3156313763302D302E362C302E
          342D312C312D3168313263302E362C302C312C302E342C312C31763130433134
          2C32372E362C31332E362C32382C31332C32387A222066696C6C3D2223313137
          3744372220636C6173733D22426C7565222F3E0D0A3C7061746820643D224D32
          312C38682D34632D302E362C302D312D302E342D312D31563363302D302E362C
          302E342D312C312D31683463302E362C302C312C302E342C312C317634433232
          2C372E362C32312E362C382C32312C387A222066696C6C3D2223313137374437
          2220636C6173733D22426C7565222F3E0D0A3C7061746820643D224D32392C32
          38483137632D302E362C302D312D302E342D312D31762D3663302D302E362C30
          2E342D312C312D3168313263302E362C302C312C302E342C312C317636433330
          2C32372E362C32392E362C32382C32392C32387A222066696C6C3D2223313137
          3744372220636C6173733D22426C7565222F3E0D0A3C7061746820643D224D32
          392C3138483137632D302E362C302D312D302E342D312D31762D3663302D302E
          362C302E342D312C312D3168313263302E362C302C312C302E342C312C317636
          4333302C31372E362C32392E362C31382C32392C31387A222066696C6C3D2223
          3131373744372220636C6173733D22426C7565222F3E0D0A3C7061746820643D
          224D32392C38682D34632D302E362C302D312D302E342D312D31563363302D30
          2E362C302E342D312C312D31683463302E362C302C312C302E342C312C317634
          4333302C372E362C32392E362C382C32392C387A222066696C6C3D2223313137
          3744372220636C6173733D22426C7565222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D2244617461736F75726365223E0D0A09093C7061746820636C6173733D22
          426C61636B2220643D224D362C366831327632483656367A204D31342C323448
          3456326831367631302E3263302E362D302E312C312E332D302E322C322D302E
          32563163302D302E352D302E352D312D312D31483343322E352C302C322C302E
          352C322C3176323420202623393B2623393B63302C302E352C302E352C312C31
          2C316831315632347A204D362C32306838762D3248365632307A204D362C3136
          68382E3263302E322D302E382C302E372D312E342C312E352D3248365631367A
          222F3E0D0A09093C7061746820636C6173733D2259656C6C6F772220643D224D
          31382C31324836762D326831325631327A204D32332C3134632D332E392C302D
          372C312E332D372C3376313263302C312E372C332E312C332C372C3373372D31
          2E332C372D335631374333302C31352E332C32362E392C31342C32332C31347A
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object amMails: TdxUIAdornerManager
    Badges.Active = True
    Badges.Color = clHotLight
    Badges.Font.Charset = DEFAULT_CHARSET
    Badges.Font.Color = clHighlightText
    Badges.Font.Height = -9
    Badges.Font.Name = 'Segoe UI'
    Badges.Font.Style = [fsBold]
    Badges.ParentFont = False
    Left = 472
    Top = 8
    object bdgVCLInbox: TdxBadge
      Tag = 2
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
    object bdgAnnouncements: TdxBadge
      Tag = 11
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
    object bdgGrid: TdxBadge
      Tag = 12
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
    object bdgServerMode: TdxBadge
      Tag = 13
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
    object bdgTileControl: TdxBadge
      Tag = 14
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
    object bdgMrBrooksInbox: TdxBadge
      Tag = 7
      Visible = False
      Alignment.Horz = taLeftJustify
      Size.Height = 16
      Size.Width = 16
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 368
    Top = 176
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -35
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
    object dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -15
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 4
      PixelsPerInch = 96
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 23069344
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF007979790041414100414141007979
          7900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00797979002927270029272700292727002927
          270079797900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0047454400312E2D002926250029262500312E
          2D0047454400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF004F4E4E004241410042414100424141004241
          41004F4E4E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00989898004443430044434300444343004443
          430098989800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C9C9C0059595900595959009C9C
          9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 280
    Top = 424
    PixelsPerInch = 96
    object stTreeListBackground: TcxStyle
    end
  end
end
