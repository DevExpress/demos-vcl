object fmMail: TfmMail
  Left = 397
  Top = 113
  ClientHeight = 598
  ClientWidth = 1081
  Color = clBtnFace
  Constraints.MinHeight = 251
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object dxStatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 561
    Width = 1081
    Height = 37
    AutoSize = True
    Color = clBtnFace
    Images = ilStatusBarImages
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'BarManagerBar13'
        Fixed = False
        Width = 116
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'BarManagerBar6'
        Bevel = dxpbRaised
        Width = 90
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.FullRect = True
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.InactiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.InactiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.InactiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.InactiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'INS'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'OVR'
        Bevel = dxpbRaised
        MinWidth = 144
        Width = 144
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        MinWidth = 0
        Width = 0
      end>
    Ribbon = Ribbon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ExplicitTop = 573
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1081
    Height = 193
    ApplicationButton.Glyph.SourceDPI = 96
    ApplicationButton.Glyph.Data = {
      424D360900000000000036000000280000001800000018000000010020000000
      000000000000C40E0000C40E0000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000800000014000000170000
      00110000000700000001000000000000000000000000000000040000000F0000
      0017000000150000000A00000002000000000000000000000000000000000000
      000000000000000000000000000000000003172068801721678A0D133B640000
      00280000001A000000090000000100000000000000020A0E2A3F1620608A1622
      608D000000260000001C0000000C000000020000000000000000000000000000
      0000000000000000000000000000151D5B673146E2FF3045E0FF3046E0FF1A25
      769D000000290000001A0000000800000001070A1C282D40C3F02F44D0FF2F47
      D0FF2637A5D204050E2A00000013000000050000000000000000000000000000
      000000000000000000000000000000000000223098AB3146E2FF3146E1FF3046
      E0FF1A2677990000002600000017000000081D2B819F3046D5FF3045D2FF1018
      456A233599BE1D2A7C9D0000000D000000040000000000000000000000000000
      0000000000000000000000000000000000000405101111194C5611184C572E42
      D2EE3045E0FF131B59790000002304050F272D43CBF03048D7FF202F8EB80000
      001504050E15131D546700000003000000010000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000070A
      1F222839B4CD3045E0FF0D133C5B141C587D3046DCFF3048D9FF1018486E0000
      000D000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040510112939B5CD2D41D1EF2639B3D33046DDFF2D41CDF104050F2C0000
      0007000000000000000000000000000000000000000000000000000000010000
      0003000000050000000500000005000000050000000500000005000000050000
      000400000001040510112939B5CD3146E1FF3045E0FF1E2B85AB000000180000
      0005000000000000000000000000000000000000000000000000000000020000
      000C000000160000001900000019000000190000001900000019000000190000
      00160000000E0000000A18216B7E3247E3FF3146E1FF0D133B66000000210000
      000E0000000300000000000000000000000000000000000000003A1F0C466336
      14806335148A6235138E6133138F6034128E5F32138C5E32118A5E32118A0000
      002400000021000000203242BCD33B4FE7FF344AE4FF2738B3D404050F340000
      001F00000010000000040000000000000000000000000000000049281056D875
      2CFFD7732CFFD4722BFFD37029FFD16F28FFD06F27FFCE6C27FFCD6C25FFCB69
      24FFCA6924FF5B382E964B5FEFFF4557ECFF2B3A9AB9394BD7F02D3CB7D1070A
      1E41000000220000001300000008000000040000000100000000000000009251
      20ABD8752EFFD7732CFFC66B29F06334138D000000210000000B2F37666A0E08
      03245F321183986E85FF5B6CF4FF5366F2FF1013305813193F584357E9FF3446
      C8E00C102E52000000270000001D000000130000000700000000000000000000
      00000000000066371678D8752EFF9C5520C400000029000000185966AAAC454F
      888F0000001E6A75DCE86A7BFAFF7174DCFF5D31109100000028202860724A5E
      EDFF4658E9FF212D7B9B17205B80000000270000001400000000000000000000
      00000000000000000000AE6125CDD8752EFF6437148E000000231417222B8696
      EEEE6D7BCCD08295FFFF7C8DFFFFA8757BFFCA6922FF351C09660000001F2A33
      717C5365EFFF4B61ECFF4659E8FF161D4D6E0000001900000000000000000000
      0000000000000000000076411B89DB782FFFBC6628E300000029000000102C30
      444690A0EEEE93A4FFFF555E999DB15E21DFCB6C24FF934F1BC7000000280000
      000D212852565061D1DE5569EFFF4456CDDE0000000800000000000000010000
      000300000003000000014B2A1156DE7B31FFDB792FFF2B180A56000000150000
      000400000000000000000000000061341279CE6E27FFCD6B24FF0E0703390000
      0013000000030000000000000000000000000000000000000000000000030000
      000D000000100000000810090412E17C32FFDE7B31FF492811730000001B0000
      00060000000000000000000000002B170835D06E27FFCE6C27FF44240D720000
      00160000000400000000000000000000000000000000000000004E2C13584D2C
      1364000000230000001700000005D37632EFE17C34FF77421B9D000000220000
      00090000000000000000000000001D100625D37029FFD17028FF532C10800000
      00160000000400000000000000000000000000000000000000007E482089EB85
      39FF7C461F9A000000210000000B985525ACE47F35FFB4652AD5000000280000
      000D0000000100000000000000012B170939D5732BFFD47229FF542D10800000
      00130000000300000000000000000000000000000000000000004F2E1456ED86
      3BFFAD622CC3000000270000001B6C3D1A7FE58037FFE47F35FF0F0904390000
      001500000007000000060000000B66371684D8752CFFD7732BFF47260E6E0000
      000D00000001000000000000000000000000000000000000000000000000BE6D
      30CCED863BFF7D472096000000242F1A0C4DE88338FFE78237FF3D220F660000
      00230000001A0000001B4A29116DDD792FFFDB782EFFD8762CFF0F0803270000
      000600000000000000000000000000000000000000000000000000000000100A
      0411AF642DBCED883CFFDD7D38EF7D472094EA8539FFE88338FF9A5726B76A3C
      1A8B6A3B198AD27632F0E17C34FFE07B32FFDD7931FF66381681000000070000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000004F2E14566F401C79ED863BFFEB863BFFEB8539FFEA8339FFE882
      38FFE78037FFE58035FFE47F35FF965423AD4B2A115A00000004000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000}
    ApplicationButton.ScreenTip = DM.stAppMenu
    ApplicationButton.Menu = BackstageView
    BarManager = BarManager
    Style = rsOffice365
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'WXI'
    EnableTabAero = False
    PopupMenuItems = [rpmiItems, rpmiQATPosition, rpmiQATAddRemoveItem, rpmiMinimizeRibbon]
    QuickAccessToolbar.Toolbar = BarManagerBar7
    SupportNonClientDrawing = True
    Contexts = <
      item
        Caption = 'Selection Tools'
        Color = 13468115
        Visible = True
      end>
    TabOrder = 1
    TabStop = False
    OnHideMinimizedByClick = RibbonHideMinimizedByClick
    object tabHome: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'tbSend'
        end
        item
          ToolbarName = 'tbClipboard'
        end
        item
          ToolbarName = 'tbEditing'
        end
        item
          ToolbarName = 'tbParagraph'
        end
        item
          ToolbarName = 'tbFont'
        end>
      KeyTip = 'H'
      Index = 0
    end
    object tabSelection: TdxRibbonTab
      Caption = 'Selection'
      Groups = <
        item
          ToolbarName = 'BarManagerBar14'
        end
        item
          ToolbarName = 'tbFont'
        end>
      Visible = False
      Index = 1
      ContextIndex = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 193
    Width = 1081
    Height = 368
    Align = alClient
    TabOrder = 2
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    RoundedMode = bTrue
    ExplicitTop = 165
    ExplicitHeight = 408
    object btnTo: TcxButton
      Left = 8
      Top = 11
      Width = 39
      Height = 21
      Caption = 'To...     '
      LookAndFeel.NativeStyle = False
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      OnClick = btnToClick
    end
    object edtSubject: TcxTextEdit
      Left = 58
      Top = 43
      Style.HotTrack = False
      TabOrder = 2
      Width = 1015
    end
    object Editor: TcxRichEdit
      Left = 8
      Top = 78
      Properties.AllowObjects = True
      Properties.AutoURLDetect = True
      Properties.ScrollBars = ssVertical
      Properties.OnChange = EditorChange
      Properties.OnSelectionChange = EditorSelectionChange
      Properties.OnURLClick = EditorPropertiesURLClick
      Style.HotTrack = False
      TabOrder = 3
      OnContextPopup = EditorContextPopup
      OnMouseUp = EditorMouseUp
      Height = 282
      Width = 1065
    end
    object teTo: TdxTokenEdit
      Left = 55
      Top = 8
      Hint = 
        'Please enter a valid email address or select a contact from the ' +
        'list'
      ParentShowHint = False
      Properties.Images = DM.cxGridsImageList_16
      Properties.ImmediatePost = True
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.MaxLineCount = 3
      Properties.PostEditValueOnFocusLeave = True
      Properties.Tokens = <>
      Properties.ValidateOnEnter = True
      Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
      Properties.OnValidate = teToPropertiesValidate
      ShowHint = True
      Style.HotTrack = False
      TabOrder = 1
      Width = 1018
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liBtnTo: TdxLayoutItem
      Parent = lgGroupTo
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnTo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 39
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgGroupTo: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liSubjectEd: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Subject:'
      CaptionOptions.Visible = False
      Control = edtSubject
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 859
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liEditor: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxRichEdit1'
      CaptionOptions.Visible = False
      Control = Editor
      ControlOptions.OriginalHeight = 444
      ControlOptions.OriginalWidth = 903
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liTokenEditTo: TdxLayoutItem
      Parent = lgGroupTo
      AlignHorz = ahClient
      CaptionOptions.Text = 'dxTokenEdit1'
      CaptionOptions.Visible = False
      Control = teTo
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liSubject: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Subject:'
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
  end
  object BackstageView: TdxRibbonBackstageView
    Left = 128
    Top = 269
    Width = 305
    Height = 212
    Buttons = <
      item
        Item = bSend
      end
      item
        Item = dxBarButtonSave
      end
      item
        Item = dxBarButtonPrint
      end
      item
        Item = dxBarButtonClose
        Position = mbpAfterTabs
      end>
    Ribbon = Ribbon
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'File'
      'Edit'
      'Format'
      'Appearance'
      'StatusBar'
      'Options'
      'ColorPickers')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = cxSmallImages
    ImageOptions.LargeImages = cxLargeImages
    LookAndFeel.Kind = lfOffice11
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 528
    Top = 168
    PixelsPerInch = 96
    object tbEditing: TdxBar
      Caption = 'Editing'
      CaptionButtons = <>
      DockedLeft = 226
      DockedTop = 0
      FloatLeft = 122
      FloatTop = 175
      FloatClientWidth = 114
      FloatClientHeight = 79
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonFind'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonReplace'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarButtonClear'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarButtonUndo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'rgiItemSymbol'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbParagraph: TdxBar
      Caption = 'Paragraph'
      CaptionButtons = <>
      DockedLeft = 519
      DockedTop = 0
      FloatLeft = 225
      FloatTop = 262
      FloatClientWidth = 246
      FloatClientHeight = 115
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonAlignLeft'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonCenter'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonAlignRight'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'dxBarButtonBullets'
        end>
      OldName = 'Format'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbFont: TdxBar
      Caption = 'Font'
      CaptionButtons = <
        item
          KeyTip = 'FN'
          ScreenTip = DM.stFontDialog
        end>
      DockedLeft = 638
      DockedTop = 0
      FloatLeft = 585
      FloatTop = 329
      FloatClientWidth = 174
      FloatClientHeight = 40
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 155
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'cmbFontName'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarStatic2'
        end
        item
          Position = ipContinuesRow
          UserDefine = [udWidth]
          UserWidth = 52
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'cmbFontSize'
        end
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'bBold'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'bItalic'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'bUnderline'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bFontColor'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bHighlighting'
        end>
      OldName = 'Font and Colors'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar7: TdxBar
      Caption = 'QAT'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 721
      FloatTop = 8
      FloatClientWidth = 54
      FloatClientHeight = 180
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonSave'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonUndo'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbClipboard: TdxBar
      Caption = 'Clipboard'
      CaptionButtons = <>
      DockedLeft = 75
      DockedTop = 0
      FloatLeft = 304
      FloatTop = 217
      FloatClientWidth = 59
      FloatClientHeight = 144
      ItemLinks = <
        item
          ViewLevels = [ivlLargeIconWithText]
          Visible = True
          ItemName = 'dxBarButtonPaste'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonCut'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonCopy'
        end
        item
          ViewLevels = [ivlSmallIconWithText, ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonSelectAll'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar11: TdxBar
      Caption = 'Links'
      CaptionButtons = <>
      DockedDockingStyle = dsNone
      DockedLeft = 99
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 780
      FloatTop = 305
      FloatClientWidth = 150
      FloatClientHeight = 84
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000CD8145FFCC7E
        41FFC97A3CFFC77637FFC47232FFC26E2EFFC06B2AFFBE6927FFBD6624FFBC64
        22FFBB6320FFBA611EFFBA611EFFBA611EFF0000000000000000EEAE76FFFFED
        CAFFFFE9C3FFFFE8C0FFFFE6BDFFFFE6BBFFFFE4B8FFFFE3B5FFFFE2B2FFFFE1
        AFFFFFE0ACFFFFDEA9FFFFE5B1FFBA611EFF0000000000000000EEAF77FFFFE9
        CBFFFFE6C4FFFFE5C1FFFFE3BDFFFFE2BAFFFFE0B7FFFFDEB4FFFFDEB0FFFFDC
        ADFFFFDAAAFFFFD9A6FFFFDFACFFBA621FFF0000000000000000EFB079FFFFED
        D3FFD7AB74FFE7BA7FFFE1B885FFC5A077FFA4825FFF9C7B59FFAA8C68FFD4B4
        8BFFF9D8ABFFFFDCADFFFFE2B2FFBB6421FF0000000000000000EFB27CFFFFF1
        DCFFD4A25AFFD6BB9CFFB48757FFBC762DFFCC8935FFCD9846FF9F8049FF7055
        35FFB29771FFF8D9ADFFFFE5B9FFBD6624FF0000000000000000F0B581FFFFF3
        E1FFDCA34BFF9C6522FFDA8E2EFFF59B34FFE59337FFEA9F3EFFFFCD5EFFDCBC
        74FF7B5F3DFFD1B28BFFFFE8C0FFBE6927FF0000000000000000F1B886FFFFF4
        E5FFDFB87CFFF9B033FFEF9F2BFFB26F21FFB69370FFD6B38EFFBF7F37FFDFAB
        52FFA78652FFB1916CFFFFEAC7FFC06C2CFF0000000000000000F2BC8CFFFFF5
        E8FFF0E2CDFFE7B34AFFEEA529FFBD7623FF9A5D1FFFA26422FFB26E2AFFB870
        27FFA16629FF9A7859FFFFEDCEFFC27031FF0000000000000000F3C192FFFFF6
        EBFFEDE0CCFFEAD3A1FFF5C143FFCC8922FFE2A85BFFE7B069FFD3892FFFF99F
        35FFC88131FFA3866BFFFFEED1FFC57537FF0000000000000000F4C59AFFFFF8
        EFFFE2D1B7FFECD5A0FFF7E2A6FFC09A41FF987752FFB69160FFD18B28FFF7A4
        33FFAD793CFFDBC4A8FFFFEFD5FFC97B3FFF0000000000000000F5CBA2FFFFFA
        F2FFFFF7EDFFE3D3B0FFF0DBA0FFF5DC85FFD7AF3CFFDFA228FFF0A82AFFD696
        39FFC2A47DFFF8E5CCFFFFF0D7FFCD8248FF0000000000000000F7D0AAFFFFFB
        F5FFFFF9F1FFFDF5ECFFDECDAAFFE3D090FFE9D26AFFE8BC44FFE6B649FFC4A5
        79FFE4CEAAFFE4C99DFFFFF1D9FFD18A50FF0000000000000000F8D6B2FFFFFC
        F8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC3FFEDD9B4FFE5CA
        97FFE4C791FFE9D2B2FFFFF1DBFFD6935CFF0000000000000000F9DBBAFFFFFD
        FBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8F0FFFFF7
        ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9C68FF0000000000000000FBE0C5FFFFFF
        FFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFCF9FFFFFB
        F4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA573FF0000000000000000FCE1C2FFFBE3
        C9FFFBE1C4FFFBDEBFFFFBDDBCFFFADBB8FFFAD9B5FFFAD7B2FFFAD6B0FFF9D4
        ACFFF9D3AAFFF8D0A6FFF8CEA3FFE4AC79FF00000000}
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object BarManagerBar6: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 872
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonAlignLeft'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonCenter'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlSmallIcon]
          Visible = True
          ItemName = 'dxBarButtonAlignRight'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar13: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 872
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnLineNumber'
        end
        item
          Visible = True
          ItemName = 'btnColumnNumber'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnLocked'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          ViewLevels = [ivlLargeIconWithText, ivlSmallIconWithText, ivlControlOnly]
          Visible = True
          ItemName = 'stModified'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object BarManagerBar14: TdxBar
      Caption = 'Selection Tools'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 120
      FloatTop = 153
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonCopy'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonCut'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object tbSend: TdxBar
      Caption = 'Send'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 382
      FloatTop = 216
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bSend'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButtonSave: TdxBarLargeButton
      Caption = '&Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ShortCut = 16467
      OnClick = dxBarButtonSaveClick
      LargeImageIndex = 2
      SyncImageIndex = False
      ImageIndex = 2
    end
    object dxBarButtonPrint: TdxBarLargeButton
      Caption = '&Print'
      Category = 0
      Description = 'Prints the current document'
      Hint = 'Print the document'
      ScreenTip = DM.stPrint
      Visible = ivAlways
      OnClick = dxBarButtonPrintClick
      LargeImageIndex = 3
    end
    object dxBarButtonClose: TdxBarLargeButton
      Caption = '&Close'
      Category = 0
      Description = 'Closes the current document'
      Hint = 'Close'
      Visible = ivAlways
      ShortCut = 32856
      OnClick = dxBarButtonExitClick
      LargeImageIndex = 4
      SyncImageIndex = False
      ImageIndex = 4
    end
    object dxBarSeparator: TdxBarSeparator
      Caption = 'Separator'
      Category = 0
      Hint = 'Separator'
      Visible = ivAlways
    end
    object rgiItemSymbol: TdxRibbonGalleryItem
      Caption = 'Symbol'
      Category = 0
      ScreenTip = DM.stSymbol
      Visible = ivAlways
      ImageIndex = 36
      LargeImageIndex = 18
      GalleryOptions.ItemSelectionMode = gsmNone
      GalleryFilter.Categories = <>
      GalleryFilter.Visible = True
      GalleryInRibbonOptions.Collapsed = True
      ItemLinks = <>
      OnGroupItemClick = rgiItemSymbolGroupItemClick
      object rgiItemSymbolGroup1: TdxRibbonGalleryGroup
        Header.Caption = 'Basic Math'
        Header.Visible = True
        Options.AssignedValues = [avItemTextKind]
        Options.ItemTextKind = itkNone
      end
      object rgiItemSymbolGroup2: TdxRibbonGalleryGroup
        Header.Caption = 'Greek Letters'
        Header.Visible = True
        Options.AssignedValues = [avItemTextKind]
        Options.ItemTextKind = itkNone
      end
      object rgiItemSymbolGroup3: TdxRibbonGalleryGroup
        Header.Caption = 'Symbols'
        Header.Visible = True
        Options.AssignedValues = [avItemTextKind]
        Options.ItemTextKind = itkNone
      end
      object rgiItemSymbolGroup4: TdxRibbonGalleryGroup
        Header.Caption = 'Currency Symbols'
        Header.Visible = True
        Options.AssignedValues = [avItemTextKind]
        Options.ItemTextKind = itkNone
      end
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end>
      ItemOptions.Size = misLarge
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton8: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bSend: TdxBarLargeButton
      Caption = 'Send message'
      Category = 0
      Hint = 'Send message'
      Visible = ivAlways
      OnClick = bSendClick
      LargeImageIndex = 19
      SyncImageIndex = False
      ImageIndex = 37
    end
    object dxBarStatic2: TdxBarStatic
      Caption = ' '
      Category = 0
      Hint = ' '
      Visible = ivAlways
    end
    object cmbFontName: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      ScreenTip = DM.stFontDialog
      Visible = ivAlways
      OnChange = cmbFontNameChange
      PropertiesClassName = 'TcxFontNameComboBoxProperties'
      BarStyleDropDownButton = False
      Properties.FontPreview.ShowButtons = False
    end
    object cmbFontSize: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'Font Size'
      Visible = ivAlways
      OnChange = cmbFontSizeChange
      OnClick = cmbFontSizeClick
      PropertiesClassName = 'TcxComboBoxProperties'
      BarStyleDropDownButton = False
      Properties.DropDownRows = 12
      Properties.Items.Strings = (
        '8'
        '9'
        '10'
        '11'
        '12'
        '14'
        '16'
        '18'
        '20'
        '22'
        '24'
        '26'
        '28'
        '36'
        '48'
        '72')
    end
    object dxBarButtonUndo: TdxBarLargeButton
      Caption = '&Undo'
      Category = 1
      Hint = 'Undo'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = UndoDropDownGallery
      ShortCut = 16474
      OnClick = dxBarButtonUndoClick
      LargeImageIndex = 11
      SyncImageIndex = False
      ImageIndex = 11
    end
    object dxBarButtonCut: TdxBarLargeButton
      Caption = 'Cu&t'
      Category = 1
      Hint = 'Cut'
      ScreenTip = DM.stCut
      Visible = ivAlways
      ShortCut = 16472
      OnClick = dxBarButtonCutClick
      LargeImageIndex = 6
      SyncImageIndex = False
      ImageIndex = 6
    end
    object dxBarButtonCopy: TdxBarLargeButton
      Caption = '&Copy'
      Category = 1
      Hint = 'Copy'
      ScreenTip = DM.stCopy
      Visible = ivAlways
      ShortCut = 16451
      OnClick = dxBarButtonCopyClick
      LargeImageIndex = 7
      SyncImageIndex = False
      ImageIndex = 7
    end
    object dxBarButtonPaste: TdxBarLargeButton
      Caption = '&Paste'
      Category = 1
      Hint = 'Paste'
      ScreenTip = DM.stPaste
      Visible = ivAlways
      ShortCut = 16470
      OnClick = dxBarButtonPasteClick
      LargeImageIndex = 5
    end
    object dxBarButtonClear: TdxBarLargeButton
      Caption = 'C&lear'
      Category = 1
      Hint = 'Clear'
      Visible = ivAlways
      OnClick = dxBarButtonClearClick
      LargeImageIndex = 10
      SyncImageIndex = False
      ImageIndex = 10
    end
    object dxBarButtonSelectAll: TdxBarLargeButton
      Caption = 'Select &All'
      Category = 1
      Hint = 'Select All'
      KeyTip = 'EA'
      Visible = ivAlways
      ShortCut = 16449
      OnClick = dxBarButtonSelectAllClick
      SyncImageIndex = False
      ImageIndex = 23
    end
    object dxBarButtonFind: TdxBarLargeButton
      Caption = '&Find'
      Category = 1
      Hint = 'Find'
      KeyTip = 'FD'
      ScreenTip = DM.stFind
      Visible = ivAlways
      ShortCut = 16454
      OnClick = dxBarButtonFindClick
      LargeImageIndex = 8
      SyncImageIndex = False
      ImageIndex = 8
    end
    object dxBarButtonReplace: TdxBarLargeButton
      Caption = '&Replace'
      Category = 1
      Hint = 'Replace'
      ScreenTip = DM.stReplace
      Visible = ivAlways
      ShortCut = 16456
      OnClick = dxBarButtonReplaceClick
      LargeImageIndex = 9
      SyncImageIndex = False
      ImageIndex = 9
    end
    object rgiUndo: TdxRibbonGalleryItem
      Caption = 'Undo'
      Category = 1
      Visible = ivAlways
      GalleryFilter.Categories = <>
      ItemLinks = <>
      OnGroupItemClick = rgiUndoGroupItemClick
      OnHotTrackedItemChanged = rgiUndoHotTrackedItemChanged
    end
    object bstSelectionInfo: TdxBarStatic
      Caption = 'SelectionInfo'
      Category = 1
      Hint = 'SelectionInfo'
      MergeKind = mkNone
      Visible = ivAlways
      Alignment = taLeftJustify
    end
    object bBold: TdxBarLargeButton
      Caption = 'Bold'
      Category = 2
      Hint = 'Bold'
      KeyTip = '1'
      ScreenTip = DM.stBold
      Visible = ivAlways
      ButtonStyle = bsChecked
      ShortCut = 16450
      OnClick = bBoldClick
      SyncImageIndex = False
      ImageIndex = 24
    end
    object bItalic: TdxBarLargeButton
      Caption = 'Italic'
      Category = 2
      Hint = 'Italic'
      KeyTip = '2'
      ScreenTip = DM.stItalic
      Visible = ivAlways
      ButtonStyle = bsChecked
      ShortCut = 16457
      OnClick = bItalicClick
      SyncImageIndex = False
      ImageIndex = 25
    end
    object bUnderline: TdxBarLargeButton
      Caption = 'Underline'
      Category = 2
      Hint = 'Underline'
      KeyTip = '3'
      ScreenTip = DM.stUnderline
      Visible = ivAlways
      ButtonStyle = bsChecked
      ShortCut = 16469
      OnClick = bUnderlineClick
      SyncImageIndex = False
      ImageIndex = 26
    end
    object dxBarButtonBullets: TdxBarLargeButton
      Caption = 'B&ullets'
      Category = 2
      Hint = 'Bullets'
      ScreenTip = DM.stBullets
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButtonBulletsClick
      SyncImageIndex = False
      ImageIndex = 30
    end
    object dxBarButtonAlignLeft: TdxBarLargeButton
      Action = actAlignLeft
      Category = 2
      KeyTip = 'AL'
      ScreenTip = DM.stAlignLeft
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButtonCenter: TdxBarLargeButton
      Tag = 2
      Action = actAlignCenter
      Category = 2
      KeyTip = 'AC'
      ScreenTip = DM.stAlignCenter
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButtonAlignRight: TdxBarLargeButton
      Tag = 1
      Action = actAlignRight
      Category = 2
      KeyTip = 'AR'
      ScreenTip = DM.stAlignRight
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarButtonProtected: TdxBarLargeButton
      Caption = 'Protected'
      Category = 2
      Hint = 'Protected'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButtonProtectedClick
      HotImageIndex = 32
      LargeImageIndex = 32
    end
    object bFontColor: TdxRibbonColorGalleryItem
      Caption = 'Font Color'
      Category = 2
      Hint = 'Font Color'
      KeyTip = 'FC'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000200000
        002100000023000000240000002600000027000000290000002A0000002C0000
        002D0000002F0000003100000032000000340000000000000000000000140000
        00150000001600000017000000190000001A0000001B0000001D0000001E0000
        0020000000210000002300000024000000260000000000000000000000090000
        000A0000000B0000000C0000000E0000000F0000001000000011000000120000
        0014000000150000001600000017000000190000000000000000000000010000
        00050000000F000000130000000F000000040000000100000007000000110000
        0015000000150000001100000005000000000000000000000000000000010E07
        032A783D18FF773B17FF602D10FF0000000B00000002140A043D723816FF7137
        15FF713715FF5C280FFF0000000D000000000000000000000000000000010000
        0007231409577C4119FF1309034D000000070000000100000010522D13AF884A
        1EFF743B17FD0C05023E00000006000000000000000000000000000000000000
        00010000000F5F3011DF2813077D00000016000000120201002079441CE88347
        1DFF47210CC60000000E00000001000000000000000000000000000000000000
        00000000000846260F977B4019FF7B3E19FF7A3F19FF8B4E20FF8C4F21FF793F
        19FF220F066D0000000700000000000000000000000000000000000000000000
        000000000003190F063F7D421BFD0905022F00000019502E14A68D4F22FF6632
        13F60302011B0000000200000000000000000000000000000000000000000000
        0000000000000000000C623313E02512076B00000013804A20E7874B1FFF401F
        0BAE0000000A0000000000000000000000000000000000000000000000000000
        000000000000000000074426109447250FB11A0F0746925626FF7B421AFF1B0D
        0555000000040000000000000000000000000000000000000000000000000000
        00000000000000000003190F063B733E18F0482C1390935727FF633314E60101
        0011000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000A7A471DE08C5727F08B5022FF391D0B920000
        0007000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000651321693995F2AFF7E461CFF110903360000
        0003000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000021C120838995E2AFF5F3213D2000000080000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000800000007000000020000
        00000000000000000000000000000000000000000000}
      OnColorChanged = bFontColorClick
    end
    object bHighlighting: TdxRibbonColorGalleryItem
      Caption = 'Highlighting'
      Category = 2
      Hint = 'Highlighting'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000310000
        003400000036000000380000003B0000003D0000004000000043000000440000
        00470000004A0000004C00000050000000520000000000000000000000140000
        0016000000190000001B0000001D0000001E0000002100000023000000260000
        00280000002A0000002D0000002F000000320000000000000000000000030000
        000400000005000000060000000700000008000000090000000B0000000C0000
        000D0000000F0000001100000013000000150000000000000000000000000000
        00000000000000000000000000001721AAFF0E1385FF0505338B000000150000
        000C000000030000000000000000000000000000000000000000000000000000
        00000000000000000000000000002D43D4FF445FF4FF503A31FF49342CFF2218
        14990000001200000003000000000000000000000000000000060000000A0000
        000B0000000B0000000C0000000C19256F8B5D463CFF78594DFF715145FF4539
        6CFF04062FA100000019000000040000000000000000775448BDA57564FFA474
        64FFA47564FFA37463FFBA968AFFC6B0A8FF654D41FFA39596FF6C5D99FF5E61
        E3FF242792FF504B73F3000000170000000200000000A97969FFEFE3DEFFEEE2
        DBFFEDE1DAFFEDE0D9FFECE0D9FFF0E9E5FFA4948DFF7E7EA6FF9EA7F2FF686C
        E6FF696CE6FF282B98FF070A389D0000000F00000002AD7E6EFFF1E7E1FFD2C1
        B8FF724E3CFF724C3CFF714D3BFFF1E9E4FFB2A098FF605C93FF6E78C6FFA7B1
        F4FF7279E9FF7278E9FF2B309EFF0A0D3F990000000EB18473FFF4EBE6FF7751
        41FFF1E9E3FFF1E8E2FF754E40FFF0E7E0FF977B71FFF1EBE8FF8284BFFF747F
        CEFFB0BAF6FF7D85ECFF7D83ECFF3238A4FF0A0E3E8CB68979FFF5EFEBFFD8C8
        C0FF7C5646FF7A5546FF7A5444FFF4ECE6FF795543FFF5EEEBFFF3EEEBFF6E6B
        A4FF7B86D5FFBAC5F8FF8990EFFF8D95EBFF181F85F0BA8E7EFFF7F3F0FFF7F2
        EEFFF7F2EDFFF7F1EDFF7F5949FFF6F0ECFF7F5948FFF5EFEBFFF7F1EEFFBAA7
        A0FF8F93D0FF7B86D8FFC8D5FAFFA7B3EBFF171F7CCCBF9383FFFAF8F4FFF9F6
        F3FF845F4DFF835E4CFFDDD0C9FFF9F3EFFF835D4CFF825D4BFF825D4BFFE4DB
        D5FFF7F4F2FF908BBDFF5F69C9F4333C99CD0406162BC29988FFFCFAF7FFFBF9
        F5FFFBF8F5FFFBF8F5FFFAF7F5FFFAF7F4FF866050FFF9F6F3FFF9F5F2FFF9F4
        F2FFFAF7F4FFDBC5BEFF0000000A0000000400000002C69D8DFFFCFCFAFFFDFC
        FAFFFDFCFAFFFCFBFAFFFCFBF9FFFCFBF9FFA5877AFFFCFAF7FFFCF9F7FFFCF9
        F6FFFCF8F5FFC39888FF0000000500000000000000009E8477BED4B2A1FFD4B1
        A0FFD3B09FFFD2AF9EFFD1AE9DFFD1AC9CFFD0AB9AFFCEA999FFCEA897FFCDA6
        96FFCBA595FF96796DBF000000030000000000000000}
      OnColorChanged = bHighlightingClick
    end
    object btnLineNumber: TdxBarButton
      Caption = '   Line: 0   '
      Category = 4
      Hint = 'Line number in page'
      Visible = ivAlways
    end
    object btnColumnNumber: TdxBarButton
      Caption = 'Column: 0'
      Category = 4
      Hint = 'Column number in page'
      Visible = ivAlways
    end
    object btnLocked: TdxBarButton
      Caption = '   Locked   '
      Category = 4
      Hint = 'Editing protection: Writable. Click for read-only mode.'
      Style = cxStyle1
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = btnLockedClick
    end
    object stModified: TdxBarStatic
      Caption = 'Modified'
      Category = 4
      Hint = 'Modified'
      Visible = ivAlways
      ImageIndex = 2
    end
    object rgiFontColor: TdxRibbonGalleryItem
      Caption = 'Font Color'
      Category = 6
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object rgiHighlighting: TdxRibbonGalleryItem
      Caption = 'Highlighting'
      Category = 6
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object dxBarGroup1: TdxBarGroup
      Items = (
        'dxBarButtonSave'
        'dxBarButtonPrint'
        'dxBarButtonUndo'
        'dxBarButtonCut'
        'dxBarButtonCopy'
        'dxBarButtonPaste'
        'dxBarButtonClear'
        'dxBarButtonSelectAll'
        'dxBarButtonFind'
        'dxBarButtonReplace'
        'bBold'
        'bItalic'
        'bUnderline'
        'dxBarButtonBullets'
        'dxBarButtonAlignLeft'
        'dxBarButtonCenter'
        'dxBarButtonAlignRight'
        'dxBarButtonProtected')
    end
  end
  object OpenDialog: TdxOpenFileDialog
    DefaultExt = 'RTF'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist]
    Left = 560
    Top = 168
  end
  object SaveDialog: TdxSaveFileDialog
    DefaultExt = 'RTF'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofPathMustExist]
    Left = 592
    Top = 168
  end
  object PrintDialog: TPrintDialog
    Left = 624
    Top = 168
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Left = 656
    Top = 168
  end
  object dxBarPopupMenu: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonCut'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonCopy'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonPaste'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonBullets'
      end>
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 528
    Top = 200
    PixelsPerInch = 96
  end
  object ilStatusBarImages: TImageList
    Left = 560
    Top = 232
    Bitmap = {
      494C010103000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000983000009830000098300000000000000000
      0000000000000000000000000000000000000000000040404000404040004040
      4000404040004040400040404000404040004040400040404000404040004040
      4000404040004040400040404000000000000000000010151000101510001015
      1000101510001015100010151000101510001015100010151000101510001015
      1000101510001015100010151000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000C8600000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00DDDDDD00959595009595
      9500959595009595950095959500959595009595950095959500959595009595
      9500959595009595950095959500404040005593560099D6A8003D6F3E003D6F
      3E003D6F3E003D6F3E003D6F3E003D6F3E003D6F3E003D6F3E003D6F3E003D6F
      3E003D6F3E003D6F3E003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000CC640000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00DFDFDF00DDDDDD00DADA
      DA00D7D7D700D5D5D500D2D2D200CFCFCF00CCCCCC00C8C8C800C5C5C500C3C3
      C300C0C0C000C0C0C000959595004040400055935600A2D9AE0099D6A80090D3
      A10087D09A007ECE940074CB8D006BC8860061C57F0058C278004EBF71004ABE
      6D0040BB66003CBA63003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000D26C0000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E2E2E200DFDFDF00C8C8
      C800808080008080800080808000808080008080800080808000808080008080
      8000C3C3C300C0C0C000959595004040400055935600ABDCB500A2D9AE00B7A2
      9300694731006947310069473100694731006947310069473100694731006947
      31004ABE6D0040BB66003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000D8730000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E5E5E500E2E2E200C8C8
      C800F7F7F700F5F5F500F3F3F300F1F1F100EFEFEF00EDEDED00EDEDED008080
      8000C7C7C700C3C3C300959595004040400055935600B4DFBC00ABDCB500B7A2
      9300FFF0E900FFECE300FFE9DE00FFE5D800FFE1D200FFDECD00FFDECD006947
      310053C174004ABE6D003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000DF7B0000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E6E6E600C8C8
      C800F9F9F900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00EDEDED008080
      8000CACACA00C7C7C700959595004040400055935600BDE1C200B8E0BF00B7A2
      9300FFF4EF00BE927E00BE927E00BE927E00BE927E00BE927E00FFDFCF006947
      31005DC47B0053C174003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000E7830000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FCFCFC00F9F9F900F8F8F800F6F6F600F4F4F400F2F2F200EFEFEF008080
      8000CDCDCD00CACACA00959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFF9F600FFF4EF00FFF2EC00FFEEE600FFEAE000FFE7DB00FFE3D5006947
      310066C782005DC47B003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009830000098300000C860000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00F2F2F2008080
      8000D1D1D100CDCDCD00959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00BE927E00BE927E00BE927E00BE927E00BE927E00FFE7DB006947
      310070CA8A0066C782003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003098F80000609000006090000060900000609000006090000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00FFFFFF00FDFDFD00FAFAFA00F8F8F800F6F6F600F4F4F4008080
      8000D3D3D300D1D1D100959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00FFFFFF00FFFBF900FFF6F200FFF2EC00FFEEE600FFEAE0006947
      310079CC910070CA8A003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000033333300333333003333
      3300000000003098F80001FFFF0001FFFF0001FFFF0001FFFF00006090000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00F6F6F6008080
      8000D6D6D600D3D3D300959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00BE927E00BE927E00BE927E00BE927E00BE927E00FFEEE6006947
      310082CF970079CC91003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003098F8003098F8003098F8003098F8003098F8003098F8000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00FAFAFA00F8F8F8008080
      8000D9D9D900D6D6D600959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF900FFF6F200FFF2EC006947
      31008BD29E0082CF97003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000E8860000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00FAFAFA008080
      8000DDDDDD00DADADA00959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00BE927E00BE927E00BE927E00BE927E00BE927E00FFF6F2006947
      310099D6A80090D3A1003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000E8860000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD008080
      8000DFDFDF00DDDDDD00959595004040400055935600C1E3C500C1E3C500B7A2
      9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF9006947
      3100A2D9AE0099D6A8003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000E8860000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800C8C8
      C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8C800C8C8
      C800E2E2E200DFDFDF00959595004040400055935600C1E3C500C1E3C500B7A2
      9300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A29300B7A2
      9300ABDCB500A2D9AE003D6F3E00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000E8860000F898000098300000000000000000
      000000000000000000000000000000000000ADADAD00E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E5E5E500E2E2E200DFDFDF004040400055935600C1E3C500C1E3C500C1E3
      C500C1E3C500C1E3C500C1E3C500C1E3C500C1E3C500C1E3C500C1E3C500BDE1
      C200B4DFBC00ABDCB500A2D9AE00101510000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000098300000983000009830000098300000000000000000
      00000000000000000000000000000000000000000000ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADADAD00ADAD
      AD00ADADAD00ADADAD00ADADAD00000000000000000055935600559356005593
      5600559356005593560055935600559356005593560055935600559356005593
      5600559356005593560055935600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FC3F800180010000EC37000000000000
      FC3F000000000000FC3F000000000000FC3F000000000000CC33000000000000
      FC3F000000000000FC3F000000000000F81F0000000000008811000000000000
      F81F000000000000FC3F000000000000FC3F0000000000000C30000000000000
      FC3F000000000000FC3F80018001000000000000000000000000000000000000
      000000000000}
  end
  object FindDialog: TFindDialog
    Options = [frHideUpDown]
    OnFind = FindOne
    Left = 592
    Top = 200
  end
  object ReplaceDialog: TReplaceDialog
    OnFind = FindOne
    OnReplace = ReplaceOne
    Left = 560
    Top = 200
  end
  object ApplicationMenu: TdxBarApplicationMenu
    BarManager = BarManager
    Buttons = <
      item
      end
      item
        Item = dxBarButtonClose
      end>
    ExtraPane.Items = <>
    ExtraPane.Visible = False
    ExtraPane.WidthRatio = 1.600000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonSave'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonPrint'
      end>
    UseOwnFont = True
    Left = 528
    Top = 232
    PixelsPerInch = 96
  end
  object cxLargeImages: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 21496456
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000010000000300000007000000090000000B0000000B0000000B0000
          000B0000000B0000000B0000000C0000000C0000000C0000000C0000000C0000
          000D0000000D0000000D0000000D0000000D0000000E0000000E0000000E0000
          000E0000000D0000000A00000004000000010000000000000000000000000000
          0000000000030000000C0000001A0000002300000028000000290000002A0000
          002A0000002B0000002C0000002D0000002D0000002E0000002F000000300000
          0031000000320000003200000033000000340000003500000035000000360000
          0036000000330000002700000012000000040000000100000000000000000000
          00000000000600000018B97B49FFB97B48FFB87A47FFB87946FFB77945FFB678
          45FFB67744FFB57644FFB57642FFB47541FFB47441FFB37440FFB37340FFB272
          3FFFB2713EFFB1713EFFB1703DFFB0703DFFB0703CFFB06F3BFFAF6E3BFFAE6E
          39FFAE6D39FFAD6C39FF000000260000000A0000000100000000000000000000
          0001000000070000001FBB7E4BFFFFF5E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF4
          E7FFFFF4E7FFFFF3E7FFFFF3E6FFFFF3E6FFFFF3E5FFFFF3E5FFFFF2E4FFFFF2
          E4FFFFF2E4FFFFF2E3FFFFF2E3FFFFF1E2FFFFF1E2FFFFF1E1FFFFF0E1FFFFF0
          E1FFFFF0E0FFAF6E3AFF000000320000000C0000000100000000000000000000
          0001000000080000001FBC804DFFFFF5EAFFFFF5EAFFFFF4E9FFFFF4E9FFFFF4
          E9FFFFF4E8FFFFF4E8FFFFF3E7FFFFF3E7FFFFF3E6FFFFF3E6FFFFF3E6FFFFF2
          E5FFFFF2E5FFFFF2E4FFFFF2E4FFFFF2E3FFFFF1E3FFFFF1E3FFFFF1E2FFFFF1
          E2FFFFF1E1FFB06F3CFF000000330000000D0000000100000000000000000000
          0001000000070000001EBE8150FFFFF6EBFFFFF5EBFFFFF5EBFFFFF5EAFFFFF5
          EAFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF3E7FFFFF3E7FFFFF3
          E6FFFFF3E6FFFFF3E6FFFFF3E5FFFFF2E5FFFFF2E4FFFFF2E4FFFFF1E3FFFFF1
          E3FFFFF1E3FFB1713EFF000000320000000D0000000100000000000000000000
          0001000000070000001CBF8451FFFFF6ECFFFFF6ECFFFFF6ECFFFFF6EBFFFFF5
          EBFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF4
          E8FFFFF3E7FFFFF3E7FFFFF3E6FFFFF3E6FFFFF3E5FFFFF3E5FFFFF2E5FFFFF2
          E4FFFFF2E4FFB3723FFF000000310000000C0000000100000000000000000000
          0001000000060000001AC08555FFFFF7EEFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6
          ECFFFFF6ECFFFFF5EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF5E9FFFFF4E9FFFFF4
          E9FFFFF4E8FFFFF4E8FFFFF3E7FFFFF4E7FFFFF3E7FFFFF3E6FFFFF3E6FFFFF3
          E5FFFFF2E5FFB47441FF0000002F0000000C0000000100000000000000000000
          00010000000600000018C28857FFFFF7EFFFFFF7EEFFFFF7EEFFFFF6EEFFFFF7
          EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6ECFFFFF6EBFFFFF5EBFFFFF5EAFFFFF5
          EAFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF4E7FFFFF3E7FFFFF3
          E6FFFFF3E6FFB57642FF0000002D0000000B0000000100000000000000000000
          00010000000600000017C48A59FFFFF7F0FFFFF8EFFFFFF7EFFFFFF7EFFFFFF7
          EEFFFFF7EEFFFFF7EDFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF5EBFFFFF6
          EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4E8FFFFF4
          E8FFFFF4E7FFB67745FF0000002B0000000B0000000100000000000000000000
          00010000000500000015C58C5BFFFFF8F1FFFFF8F0FFFFF8F0FFFFF8F0FFFFF7
          EFFFFFF7EFFFFFF7EFFFFFF7EEFFFFF7EEFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6
          ECFFFFF6ECFFFFF6EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5E9FFFFF4
          E9FFFFF4E8FFB87A47FF000000290000000B0000000100000000000000000000
          00000000000500000014C78E5EFFFFF9F2FFFFF9F2FFFFF8F1FFFFF8F1FFFFF8
          F0FFFFF8F0FFFFF7F0FFFFF8EFFFFFF7EFFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7
          EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6ECFFFFF5EBFFFFF5EBFFFFF5EAFFFFF5
          EAFFFFF5E9FFB97C4AFF000000270000000A0000000100000000000000000000
          00000000000500000013C99161FFFFF9F3FFFFF9F3FFFFF9F2FFFFF9F2FFFFF9
          F1FFFFF8F1FFFFF8F1FFFFF8F0FFFFF8F0FFFFF7EFFFFFF7EFFFFFF7EFFFFFF7
          EEFFFFF7EEFFFFF6EEFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6ECFFFFF6
          EBFFFEF4E9FFBB7D4BFF000000250000000A0000000100000000000000000000
          00000000000400000012CA9363FFFFFAF4FFFFFAF4FFFFF9F3FFFFF9F3FFFFF9
          F3FFFFF9F2FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F1FFFFF8F0FFFFF7F0FFFFF8
          EFFFFFF7EFFFFFF7EFFFFFF7EEFFFFF7EEFFFFF6EDFFFFF6EDFFFFF6EDFFFEF4
          EAFFFDF3E7FFBC7F4DFF00000023000000090000000100000000000000000000
          00000000000400000011CC9666FFFFFAF5FFFFFAF5FFFFFAF4FFFFFAF4FFFFF9
          F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F2FFFFF8F2FFFFF9F1FFFFF8F1FFFFF8
          F0FFFFF8F0FFFFF8F0FFFFF7EFFFFFF7EFFFFFF7EFFFFFF7EEFFFEF4ECFFFDF4
          E8FFFCF1E5FFBE8150FF00000021000000090000000100000000000000000000
          0000000000040000000FCD9768FFFFFBF6FFFFFAF6FFFFFAF5FFFFFAF5FFFFFA
          F5FFFFFAF4FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F3FFFFF9F2FFFFF9F2FFFFF9
          F2FFFFF8F1FFFFF8F1FFFFF8F0FFFFF8F0FFFFF8F0FFFEF6EDFFFDF4EAFFFCF1
          E6FFFBEFE3FFC08352FF0000001F000000080000000100000000000000000000
          0000000000040000000ECF9A6BFFFFFBF7FFFFFBF6FFFFFBF6FFFFFBF6FFFFFA
          F6FFFFFAF5FFFFFAF5FFFFFAF4FFFFFAF4FFFFFAF4FFFFF9F3FFFFF9F3FFFFF9
          F3FFFFF9F2FFFFF9F2FFFFF8F1FFFFF8F1FFFEF6EFFFFDF5EBFFFCF2E8FFFBF0
          E4FFFAEDE0FFC18654FF0000001D000000080000000100000000000000000000
          0000000000030000000DD19D6EFFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF7FFFFFB
          F6FFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF5FFFFFAF5FFFFFAF4FFFFFAF4FFFFFA
          F4FFFFF9F3FFFFF9F3FFFFF9F3FFFEF7F0FFFDF6EDFFFCF2E9FFFBF0E6FFFAEE
          E2FFF9EBDDFFC28756FF0000001B000000070000000100000000000000000000
          0000000000030000000CD29F70FFFFFCF9FFFFFCF8FFFFFBF8FFFFFBF8FFFFFB
          F7FFFFFBF7FFFFFBF7FFFFFBF6FFFFFBF6FFFFFAF6FFFFFAF5FFFFFAF5FFFFFA
          F5FFFFFAF4FFFFFAF4FFFEF8F1FFFDF6EEFFFCF3EBFFFBF1E7FFFAEFE3FFF9EB
          DFFFF7E8D9FFC48A59FF00000019000000070000000100000000000000000000
          0000000000030000000BD4A173FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
          F8FFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFFFBF6FFFFFBF6FFFFFA
          F6FFFFFAF5FFFEF8F3FFFDF7F0FFFCF4ECFFFBF1E8FFFAF0E4FFF9ECDFFFF7E9
          DBFFF6E6D5FFC68C5CFF00000017000000060000000100000000000000000000
          0000000000020000000AD5A476FFFFFDFAFFFFFDFAFFFFFCFAFFFFFCF9FFFFFC
          F9FFFFFCF9FFFFFCF8FFFFFCF8FFFFFCF8FFFFFBF7FFFFFBF7FFFFFBF7FFFFFB
          F6FFFEF9F4FFFDF7F1FFFCF4EDFFFBF2E9FFFAF0E5FFF9EDE0FFF7E9DCFFF6E6
          D7FFF5E2D1FFC78E5DFF00000015000000050000000100000000000000000000
          00000000000200000009D7A678FFFFFDFBFFFFFDFBFFFFFDFAFFFFFDFAFFFFFC
          FAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF8FFFFFCF8FFFFFBF8FFFEF9
          F5FFFDF7F2FFFCF5EEFFFBF3EAFFFAF0E6FFF9EDE2FFF7E9DCFFF6E6D8FFF5E3
          D3FFF3E0CDFFC99161FF00000013000000050000000100000000000000000000
          00000000000200000008D9A87BFFFFFDFCFFFFFDFBFFFFFDFBFFFFFDFBFFFFFD
          FBFFFFFDFAFFFFFDFAFFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFEFAF7FFFDF8
          F3FFFCF6EFFFFBF3ECFFFAF0E7FFF9EDE3FFF7EADEFFF6E7D8FFF5E4D4FFF3E0
          CEFFF1DCC8FFCA9362FF00000011000000040000000000000000000000000000
          00000000000200000007DBAA7EFFFFFEFCFFFFFEFCFFFFFDFCFFFFFDFCFFFFFD
          FBFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDFAFFFEFAF8FFFDF8F4FFFCF6
          F0FFFBF4EDFFFAF1E9FFF9EEE4FFF7EBDFFFF6E7DAFFF5E4D4FFF3E0CFFFF1DD
          C9FFF0D9C4FFCC9666FF0000000D000000030000000000000000000000000000
          00000000000100000006DCAC80FFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFE
          FCFFFFFDFCFFFFFDFCFFFFFDFBFFFFFDFBFFFEFBF9FFFDF9F5FFFCF7F1FFFBF5
          EEFFFAF1EAFFF9EEE4FFF7EBE0FFF6E8DBFFD09C6DFFD09C6DFFD09A6CFFCF99
          6AFFCE9869FFCE9868FF00000007000000020000000000000000000000000000
          00000000000100000005DDAE82FFFFFEFEFFFFFEFDFFFFFEFDFFFFFEFDFFFFFE
          FDFFFFFEFCFFFFFEFCFFFFFEFCFFFEFBF9FFFDF9F6FFFCF7F2FFFBF5EFFFFAF2
          EBFFF9EFE5FFF7ECE0FFF6E9DBFFF5E5D6FFD29F70FFFFFCF9FFFFFCF9FFFCF9
          F5FC5A5958650000000800000003000000010000000000000000000000000000
          00000000000100000004DFB084FFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFE
          FDFFFFFEFDFFFFFEFDFFFEFCFAFFFDFAF6FFFCF8F3FFFBF6EFFFFAF2EBFFF9EF
          E6FFF7ECE1FFF6E9DCFFF5E5D7FFF3E2D1FFD4A072FFFFFCFAFFFCF9F6FC5A59
          5864000000080000000300000001000000000000000000000000000000000000
          00000000000100000004E0B388FFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFE
          FEFFFFFEFEFFFEFCFAFFFDFAF7FFFCF8F4FFFBF6F0FFFAF3ECFFF9F0E7FFF7ED
          E2FFF6E9DDFFF5E5D8FFF3E2D2FFF1DECCFFD6A374FFFCFAF8FC5A5958620000
          0007000000030000000100000000000000000000000000000000000000000000
          00000000000100000003E1B589FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFDFBFFFDFBF8FFFCF8F5FFFBF6F1FFFAF3ECFFF9F0E8FFF7EDE3FFF6E9
          DEFFF5E6D8FFF3E2D2FFF1DFCDFFF0DAC7FFD7A577FF5A595961000000060000
          0002000000010000000000000000000000000000000000000000000000000000
          00000000000000000002E3B78CFFE2B78BFFE2B58BFFE1B489FFE1B488FFE0B2
          87FFE0B286FFDFB185FFDEB085FFDEAF83FFDDAF82FFDDAE81FFDCAD80FFDCAC
          7FFFDCAB7FFFDAAA7EFFDAA97CFFD9A97CFFD8A77AFF00000005000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000003000000030000
          0003000000030000000300000003000000040000000400000004000000040000
          0004000000050000000500000005000000040000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00C0000003C0000001C0000001800000018000000180000001800000018000
          0001800000018000000180000001C0000001C0000001C0000001C0000001C000
          0001C0000001C0000001C0000001C0000001C0000001C0000001C0000003C000
          0003C0000003C0000003C0000007C000000FC000001FE000003FF00000FFFF80
          01FF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000010000000300000006000000080000000900000009000000090000
          00090000000A0000000A0000000A0000000A0000000B0000000B0000000B0000
          000B0000000B0000000B0000000C0000000C0000000C0000000C0000000C0000
          000B000000090000000500000002000000010000000000000000000000000000
          0001000000050000000E000000170000001D0000002100000022000000230000
          00240000002400000025000000260000002700000028000000290000002A0000
          002A0000002B0000002C0000002D0000002E0000002F0000002F0000002F0000
          002C000000240000001600000008000000020000000000000000000000000000
          00030000000C063E619C0D679DFF075C94FF065C94FF075C94FF075C94FF075C
          94FF065C94FF075C94FF065C94FF065D95FF075C94FF065C94FF065C94FF065C
          94FF065C94FF065C94FF075C94FF065C94FF075C94FF065C94FF065C94FF065C
          94FF076099FF065B8FE300000016000000050000000100000000000000000000
          000500000013075F96F21C89BDFF319AC4FF1BB8E4FF0BB0E1FF0BB0E1FF0BAE
          E0FF0AACDFFF0AACDEFF0AA9DDFF0AA6DCFF0AA5DCFF0AA5DBFF0AA3DAFF0AA0
          D9FF0A9ED8FF0A9ED7FF099DD6FF099AD5FF0997D5FF0996D4FF0995D3FF0892
          D1FF088CCAFF086EA5FF02273A6A000000090000000100000000000000000000
          000500000017065D94FF1EA0DDFF1C82B1FF47D2F2FF0EC3ECFF0EC2ECFF0DBF
          EBFF0CBEEAFF0CBBE9FF0CBAE8FF0CB7E7FF0CB5E6FF0BB3E5FF0BB2E4FF0AB0
          E3FF0AAEE2FF0AACE2FF0AAAE1FF0AA8E0FF09A4DEFF09A3DDFF09A0DCFF099F
          DBFF099EDAFF0984BDFF075E88CD0000000B0000000100000000000000000000
          00060000001708639BFF19A4E8FF1D85B4FF68D0EAFF11CCF4FF11CBF3FF10C9
          F1FF10C7F0FF10C6EFFF0EC4EEFF0EC0EDFF0EC0ECFF0EBDECFF0EBBEBFF0CBA
          E9FF0CB7E8FF0CB5E6FF0BB3E5FF0BB2E4FF0AAFE3FF0AADE2FF09A9E2FF09A7
          E0FF09A5DFFF099BD5FF0A73A7FA0000000B0000000100000000000000000000
          0005000000160A6BA1FF21ABEAFF329FCEFF54AFD0FF34D7F6FF13CFF4FF13CD
          F4FF12CCF3FF11CAF2FF11C9F1FF11C7F0FF10C5EFFF10C4EDFF10C2ECFF0FBF
          ECFF0FBEEBFF0EBCEAFF0DB9E9FF0DB7E8FF0DB5E7FF0DB3E5FF0CB0E4FF0CAE
          E3FF0BACE2FF0BAAE2FF0A7BAFFF032E415E0000000100000000000000000000
          0005000000150A72A7FF2EB1ECFF28A8E2FF2586B3FF7BE7FAFF16D3F6FF15D1
          F5FF15D0F4FF15CFF4FF15CDF3FF13CBF3FF13CAF2FF13C8F1FF13C7F0FF12C5
          EFFF12C3EEFF11C0ECFF11BFECFF10BDEBFF10BBEAFF10BAE9FF0FB7E8FF0FB5
          E7FF0EB3E5FF0EB0E4FF0C90C4FF09658EC90000000100000000000000000000
          0005000000130C79AEFF40BBF0FF19ACECFF2887B4FF9ADAECFF1AD8F8FF1AD7
          F7FF19D5F7FF18D4F6FF18D2F5FF18D1F4FF17CFF4FF16CEF3FF15CCF2FF15CA
          F1FF15C9F0FF15C7EFFF13C5EEFF13C4EDFF13C2ECFF12C0EBFF12BEEAFF11BC
          EAFF11BAE9FF11B9E8FF0FACDDFF0B72A5FB0000000100000000000000000000
          0005000000130D7FB4FF58C6F2FF1DB1EEFF42A2CEFF6BAFCDFF5DE6FBFF1FDB
          FAFF1CD9F9FF1CD8F8FF1BD7F7FF1BD5F6FF1BD4F5FF1AD2F4FF1AD0F4FF1ACF
          F4FF18CEF3FF18CCF2FF18CBF1FF17C9F0FF17C8EFFF15C6EEFF15C5EDFF15C3
          ECFF15C0EBFF14BEEAFF13BCE9FF0C7BAEFF0535486100000000000000000000
          0004000000110E86BAFF71D1F5FF23B7F0FF34B3E7FF277EACFFB3F4FDFF31E1
          FBFF29DFFBFF22DDFAFF1FDAF9FF1FD9F8FF1ED8F7FF1ED6F7FF1DD6F6FF1CD4
          F5FF1CD3F4FF1CD1F4FF1BCFF3FF1BCEF2FF1ACDF2FF1ACBF1FF1ACAF0FF18C8
          EFFF18C7EEFF18C5EDFF17C3ECFF1099C8FF09678FC900000000000000000000
          000400000010108CBFFF8EDDF8FF2CBEF2FF29BCF1FF3185B2FFBADDEAFF4DE7
          FCFF41E4FCFF38E3FBFF2FE0FBFF28DEFAFF22DCF9FF22DBF9FF22DAF8FF21D8
          F7FF21D7F7FF20D5F5FF1FD5F5FF1FD4F5FF1ED2F4FF1ED0F3FF1ECEF2FF1CCD
          F1FF1CCCF1FF1CCBF0FF1BC9EFFF18BCE4FF0A6EA2FB00000000000000000000
          00040000000F108EC2FFAAE7FBFF36C6F4FF32C4F4FF4FA6CFFF76ABCAFFA8F4
          FEFF66EBFDFF57E9FDFF49E7FDFF3EE4FCFF34E2FBFF2DE1FAFF28DEFAFF26DD
          FAFF25DBF8FF25DAF8FF24D9F7FF23D8F7FF22D6F6FF22D5F5FF22D4F4FF21D3
          F4FF21D1F4FF20CFF3FF1FCEF1FF1FCDF1FF0D7CB0FF073C506A000000000000
          00030000000D108FC3FFC4F0FCFF43CFF7FF3FCDF6FF48C2EBFF2575A7FFE8FC
          FFFF8EF1FEFF7EEEFEFF6FECFEFF5FEBFDFF52E8FDFF45E6FCFF3CE3FBFF34E2
          FBFF2DE0FBFF2ADEFAFF29DDF9FF28DCF9FF28DBF8FF26DAF7FF26D9F7FF26D7
          F6FF26D5F5FF25D5F4FF24D3F4FF23D1F4FF17A1CCFF0D6A93CF000000000000
          00030000000D1091C6FFDBF7FEFF53D9F8FF4DD6F8FF47D2F8FF3783B1FFC4DA
          E7FFEFFDFFFFBAF7FFFF97F2FEFF86EFFEFF78EEFEFF68ECFEFF5AEAFDFF4DE8
          FCFF43E6FBFF3AE2FBFF33E2FBFF2EE0FAFF2DDFFAFF2CDEF9FF2BDDF8FF2ADB
          F8FF2ADAF7FF2AD9F6FF29D8F6FF28D7F5FF26CEEFFF09669DFE000000000000
          00030000000C1093C8FFECFCFEFF64E0FBFF5DDFFAFF56DBF9FF5BADD0FF73A4
          C5FFE1EBF2FFFFFFFFFFFEFFFFFFFEFFFFFFFCFFFFFFFAFEFFFFF7FEFFFFF2FD
          FFFFEDFDFFFFE4FBFFFFDAFAFEFFCEF8FEFFC1F6FEFFB1F4FDFFA4F2FDFF99F0
          FDFF8DEDFCFF81EBFBFF74E8FAFF6AE5F9FF53D3ECFF0E6A9FFB000000000000
          00030000000B1095CBFFF7FEFFFF76EAFDFF6FE7FCFF68E5FBFF61E1FBFF5DAD
          CFFF226FA3FF065C96FF065C96FF065C96FF065C96FF065C96FF065C96FF065C
          96FF055C96FF065C96FF065C96FF065C96FF065C96FF065C96FF065C96FF065C
          96FF065C96FF065C96FF065C96FF065C96FF10699EFB1A6180AF000000000000
          0002000000091197CDFFFAFEFFFF87F0FEFF80EFFEFF7AECFEFF72EBFDFF6BE8
          FCFF63E4FCFF5CE1FBFF56DEFAFF50DBFAFF4AD9F9FF43D6F8FF3DD3F8FF3ACF
          F7FF35CDF7FF30CAF6FF2CC8F5FF2AC6F4FF27C3F4FF24C0F3FF23BEF2FF21BC
          F2FF1FB9F1FF0C71A3FF00000014000000050000000100000000000000000000
          000200000008129ACFFFFCFFFFFF92F4FFFF8CF3FFFF88F1FFFF81F0FEFF7CF0
          FEFF75ECFEFF6EEAFDFF65E7FCFF5EE4FCFF59E1FBFF52DEFAFF4CDBFAFF46D9
          FAFF40D7F8FF3CD2F8FF37CFF8FF32CDF6FF2FCAF6FF2DC8F5FF29C6F4FF26C2
          F4FF25C0F4FF0C74A5FF00000011000000040000000100000000000000000000
          000200000008129BD0FFFDFFFFFF9AF5FFFF96F4FFFF91F3FFFF8CF3FFFF87F2
          FFFF82F2FFFF7CF0FFFF76EEFEFF6FEBFDFFCCF8FEFFEDFCFFFFE7FBFFFFDFF9
          FEFFD6F7FEFFCAF5FEFFBCF1FDFFADEDFCFF9CE9FCFF8CE4FBFF7BDFFAFF6ADA
          F9FF45BDE4FF177FABF10000000C000000030000000000000000000000000000
          000200000007129DD3FFFEFFFFFFC9F9FFFF9DF5FFFF99F4FFFF94F3FFFF8FF3
          FFFF8BF3FFFF86F2FFFF3FB8DCFF108FC3FF108DC1FF0F8BBFFF0F8ABEFF0F88
          BCFF0E86BAFF0E86B8FF0E83B6FF0E82B4FF0E80B2FF0D7FB1FF0D7DAFFF0D7B
          ADFF1B83B0F11657709500000007000000020000000000000000000000000000
          000100000005129FD5FFFEFFFFFFF3FEFFFFCCFAFFFFA1F5FFFF9CF5FFFF98F4
          FFFF93F3FFFF44BBDFFF3D798FAB0000000B00000009000000090000000A0000
          000A0000000A0000000B0000000B0000000B0000000C0000000C0000000C0000
          000B000000090000000600000002000000010000000000000000000000000000
          0001000000033DA8D0F0C4E8F5FFFEFFFFFFFEFFFFFFFDFFFFFFFDFFFFFFFDFF
          FFFF72C2E1FF437B91AA00000006000000030000000200000002000000020000
          0002000000020000000200000002000000030000000300000003000000030000
          0003000000020000000100000000000000000000000000000000000000000000
          0000000000023F6F80903DA8D1F013A0D5FF129FD4FF129ED2FF129CD0FF129A
          D0FF457D93AA0000000500000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000030000000400000004000000040000
          0004000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFF800000FC000000380000003800000018000
          0001800000018000000180000001800000018000000180000001800000018000
          0001800000008000000080000000800000008000000080000001800000018000
          000380000003800000038000000FC003FFFFC00FFFFFF01FFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000010000000400000007000000090000000A0000000A0000000A0000
          000B0000000B0000000B0000000B0000000B0000000C0000000C0000000C0000
          000C0000000C0000000D0000000D0000000D0000000D0000000D0000000D0000
          000E0000000D0000000A00000006000000020000000100000000000000000000
          000100000006000000100000001A000000210000002500000027000000280000
          0028000000290000002A0000002B0000002C0000002D0000002D0000002E0000
          002F000000300000003100000032000000320000003300000033000000340000
          0034000000310000002800000018000000090000000200000000000000000000
          00030000000E3B27196D855839CEB0764AFFB0744AFFAF7448FF353535FF3434
          34FF333333FF313131FF303030FF303030FF2E2E2EFF2E2E2EFF2D2D2DFF2C2C
          2CFF2C2C2CFF2C2C2CFF2B2B2BFF2A2A2AFF2A2A2AFF2B2B2BFFA76A3DFFA669
          3CFFA6683CFF7D4E2CD63723137C000000180000000600000001000000010000
          000500000017875A3BCDCC9665FFE5B078FFE4AF77FFE8BD8EFF4E4E4EFF4C4C
          4CFF4B4B4BFF494949FF474747FF464646FF454545FF444444FF434343FF4242
          42FF414141FF404040FF404040FF3F3F3FFF3F3F3FFF343434FFE9BE92FFE2AA
          70FFE3AB73FFC58C5BFF7D4F2DD5000000260000000900000001000000010000
          00060000001BB57B50FFE7B784FFE6B47DFFE5B27BFFE9BC8DFF505050FF4F4F
          4FFF4D4D4DFF4C4C4CFF4B4B4BFF494949FF484848FF474747FF464646FF4545
          45FF444444FF3B3B3BFFE9C093FFE1A86EFF424242FF373737FFE7BB8DFFE1A9
          6EFFE2AB73FFE4B17CFFA76A3DFF0000002F0000000C00000001000000010000
          00070000001BB77D53FFE9BE8FFFE7B780FFE6B57EFFE9BD8DFF5B5957FF5755
          54FF545251FF514F4EFF504E4DFF4F4D4CFF4E4C4BFF4D4B4AFF4B4948FF4B49
          48FF4A4847FF3F3D3DFFE8BE8FFFE2AC70FF484645FF3B3A3AFFE7BA89FFE2AB
          70FFE2AC70FFE5B580FFA86A3EFF000000310000000D00000001000000010000
          000600000019B87F56FFECC598FFE8BA85FFE7B884FFE9BE8EFF65615DFF625E
          5BFF5D5957FF5A5654FF585452FF55514FFF54504EFF534F4DFF524F4CFF514E
          4BFF504D4AFF42403EFFE8BD8DFFE3AE74FF4E4B48FF413E3CFFE7B988FFE3AD
          72FFE3AD74FFE7B886FFA96C40FF000000300000000C00000001000000010000
          000600000018BB8359FFEDCCA3FFE9BE8AFFE9BC87FFE9BF8EFF706B66FF6C66
          62FF69635FFF66605CFF625C57FF5F5A55FF5D5752FF5A5450FF59534FFF5852
          4EFF57514DFF45423FFFE9BB8AFFE4B077FF554F4BFF474341FFE8B885FFE4AF
          76FFE4B077FFE8BB8BFFAA6D42FF0000002E0000000C00000001000000010000
          000500000016BD855CFFF0D1AEFFEAC091FFE9C08CFFEAC090FF7C746EFF7971
          6BFF766D67FF726963FF6F6660FF6C635DFF68605AFF665D57FF635A54FF6058
          51FF5E564FFF4A4440FFE9BB89FFE6B27BFF5D544DFF504944FFE7B883FFE5B2
          7BFFE5B27BFFE9BE90FFAC6F43FF0000002C0000000B00000001000000010000
          000500000015BF885EFFF3D8B7FFECC495FFEBC393FFEBC393FF8A7F78FF867B
          74FF82786FFF7F746BFF7B7069FF786D65FF756A62FF72675EFF6E645BFF6D61
          58FF6A5E56FF4E4843FF524A44FF544B45FF645850FF584E48FFE8B885FFE7B5
          7FFFE7B57FFFEBC196FFAD7046FF0000002A0000000B00000001000000000000
          000500000014C18A61FFF4DEC2FFEDC99BFFEDC699FFECC595FF968980FF9286
          7DFF8F8379FF8C7F75FF887B71FF85776EFF81746AFF7F7167FF7C6E63FF786A
          60FF75675DFF73655BFF706358FF6E6156FF6D5F54FF61554BFFE9BB86FFE8B9
          84FFE8B983FFECC69AFFAE7347FF000000280000000A00000001000000000000
          000500000013C28D64FFF6E3CBFFEFCBA2FFEECA9EFFEDC89CFFEDC799FFECC5
          97FFECC595FFEBC495FFEBC395FFEBC393FFEAC18FFFEAC08EFFEAC08EFFE9BF
          8EFFEAC08EFFE9BE8DFFE9BE8CFFE9BE8AFFE9BE89FFE9BE89FFE9BC87FFE9BC
          87FFE9BC87FFEDC9A0FFB07449FF000000260000000A00000001000000000000
          000400000012C48F66FFF7E8D4FFF0CFA6FFF0CDA4FFEFCCA2FFEFCA9FFFEECA
          9CFFEEC89BFFEDC899FFECC696FFECC596FFECC494FFECC394FFECC393FFEBC3
          92FFEBC291FFEBC18FFFEBC18FFFEBC08EFFEAC08DFFEABF8DFFEABF8DFFEABF
          8CFFEABF8DFFEECDA4FFB1754BFF000000240000000900000001000000000000
          000400000010C69168FFF9ECDBFFF0D3ADFFF0D1ABFFF0CFA7FFF0CFA6FFF0CC
          A4FFEFCCA2FFEFCB9FFFEFCA9DFFEEC99BFFEEC99BFFEEC79AFFEEC799FFEEC6
          97FFEDC596FFEDC595FFEDC594FFEDC494FFEDC393FFECC393FFECC293FFECC3
          93FFECC392FFF0CFAAFFB2774CFF000000220000000900000001000000000000
          00040000000FC8946CFFFAEFE0FFF3D6B2FFF2D5B1FFF2D3AEFFF0D2ADFFF0D1
          A9FFF0D0A8FFF0CEA6FFF0CEA4FFF0CCA3FFF0CBA2FFEFCB9FFFEECA9DFFEECA
          9DFFEEC99CFFEEC99BFFEEC89BFFEDC89AFFEEC899FFEEC697FFEEC696FFEDC6
          97FFEDC697FFF1D3AEFFB4794EFF000000200000000800000001000000000000
          00030000000ECA966FFFFBF1E5FFF4D9B7FFF3D8B7FFF3D6B4FFF2D5B2FFF2D5
          B1FFF2D4AEFFF1D3ADFFF0D1ABFFF0D1A9FFF0D0A7FFF0CFA5FFF0CDA5FFF0CD
          A3FFF0CCA3FFEFCBA2FFEFCB9FFFEFCAA1FFEFCA9EFFEFCA9EFFEECA9DFFEFC9
          9EFFEFC89CFFF2D6B4FFB67B51FF0000001E0000000800000001000000000000
          00030000000DCC9A72FFFCF4E9FFF5DBBCFFF5DABBFFE4B085FFE3B186FFE3B2
          87FFE3B287FFE3B388FFE2B289FFE3B48AFFE2B38AFFE2B48BFFE2B48CFFE1B4
          8CFFE1B48CFFE1B48CFFE0B38BFFDFB189FFDEB087FFDDAD85FFDAAB82FFF0CC
          A3FFEFCDA2FFF4D7B8FFB77D53FF0000001C0000000700000001000000000000
          00030000000CCF9D75FFFCF5ECFFF6DEC1FFF6DDBFFFE4B085FFF3EEE8FFF3EE
          E7FFF3ECE5FFF2EAE2FFF1E9E0FFF1E9DFFFEFE7DCFFEFE7DBFFEEE5DAFFEEE4
          D8FFEDE2D8FFEDE2D7FFEDE2D6FFECE1D5FFECE1D4FFECE1D4FFDAAA80FFF0D0
          A7FFF1CFA6FFF4DABBFFB98056FF0000001A0000000700000001000000000000
          00030000000BD19F77FFFDF6EFFFF6E1C6FFF6E0C4FFE1AD84FFF6F2EEFFF6F2
          ECFFF5F0EAFFF5EFE8FFF5EEE6FFF4ECE5FFF4ECE4FFF3EBE2FFF2EAE0FFF2EA
          DFFFF1E8DEFFF1E8DDFFF1E8DDFFF0E6DBFFEFE5DCFFEFE5DBFFD9A87EFFF2D2
          ACFFF1D2ACFFF4DDBFFFBA8158FF000000180000000600000001000000000000
          00020000000AD3A17BFFFDF8F2FFF7E4CDFFF7E2CAFFDFAB81FFF9F6F4FFF8F6
          F2FFF8F4EFFFF7F3EEFFF7F3EDFFF6F0EAFFF6F0E9FFF6EFE8FFF5EEE6FFF5EE
          E5FFF4ECE5FFF4ECE4FFF3ECE2FFF2EBE2FFF2EAE2FFF2EAE1FFD9A67CFFF3D5
          B0FFF3D5B0FFF6DFC3FFBC835AFF000000160000000600000001000000000000
          000200000009D4A47EFFFDF9F4FFF8E8D2FFF8E6D0FFDCA87FFFFDFAF8FFFCFA
          F8FF6C6C6CFF6A6A6AFF686868FF666666FF656565FF646464FF626262FF6161
          61FF5F5F5FFF5E5E5EFF5D5D5DFF5B5B5BFFF5EFE8FFF4EEE7FFD9A57AFFF4D7
          B4FFF4D8B5FFF7E1C5FFBE875DFF000000140000000500000001000000000000
          000200000008D5A67FFFFEFBF6FFFAEBD7FFFAE9D6FFD9A67DFFFEFEFDFFFEFD
          FCFFFEFCFBFFFDFAF8FFFDFAF8FFFCF9F5FFFCF8F4FFFBF7F4FFFAF7F2FFF9F6
          F1FFF9F5F0FFF9F5F0FFF9F5EFFFF8F3EEFFF8F3EEFFF9F2EDFFD7A379FFF6DB
          BBFFF5DABBFFF7E3CAFFC08A61FF000000130000000500000000000000000000
          000200000007D6A881FFFEFBF8FFFBEEDDFFFBECDCFFD7A37AFFFFFFFFFFFFFF
          FFFF838383FF828282FF808080FF7E7E7EFF7D7D7DFF7B7B7BFF797979FF7878
          78FF777777FF757575FF747474FF737373FFFBF7F3FFFBF7F3FFD5A076FFF6DD
          C0FFF6DDBFFFF8E4CDFFC38D63FF000000110000000400000000000000000000
          000100000006D7A983FFFEFCF9FFFCF0E3FFFCF0E1FFD4A078FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFDFFFFFEFDFFFFFDFCFFFFFD
          FCFFFEFDFBFFFEFDFBFFFDFCF9FFFDFBF9FFFDFBF9FFFDFBF8FFD49D74FFF7E1
          C4FFF7E0C3FFF9E6D0FFC58F67FF0000000E0000000400000000000000000000
          000100000005D9AB85FFFEFDFAFFFCF2E7FFFCF2E6FFD29D76FFFFFFFFFFFFFF
          FFFF9B9B9BFF9A9A9AFF979797FF959595FF949494FF939393FF929292FF9191
          91FF8E8E8EFF8D8D8DFF8C8C8CFF8B8B8BFFFEFDFCFFFEFDFBFFD39B72FFF8E3
          C9FFF7E2C8FFF9E7D4FFC69168FF0000000D0000000300000000000000000000
          000100000004DAAD87FFFEFDFBFFFDFAF4FFFCF5E9FFCF9B74FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFEFEFFFFFEFEFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFDFFD0996FFFFAE6
          CDFFFAE5CEFFFAE9D7FFC8946BFF0000000B0000000300000000000000000000
          000100000003A58367C1EDD5C2FFFFFDFCFFFFFDFBFFCD9872FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFCE966EFFFCED
          DCFFFBEDD9FFE3C3A7FF987053C4000000080000000200000000000000000000
          0000000000014A3B2E57A68468C1DBAE89FFDAAD88FFCB9670FFB1ACA9FFB1AC
          A9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1AC
          A9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFB1ACA9FFCD946CFFCE9B
          74FFCE9B74FF9A7457C44433265C000000040000000100000000000000000000
          0000000000000000000100000002000000030000000300000003000000030000
          0004000000040000000400000004000000040000000400000005000000050000
          0005000000060000000600000006000000060000000700000007000000070000
          0007000000070000000600000004000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000020000
          0002000000020000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00F0000007C000000180000001800000000000000000000000000000000000
          0000000000000000000000000000800000008000000080000000800000008000
          0000800000008000000080000000800000008000000080000000800000018000
          000180000001800000018000000180000001C0000001E0000003FC000007FFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000020000
          0003000000050000000700000006000000040000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000100000001000000020000000400000006000000080000000C0000
          0011000000180000001C0000001B000000130000000900000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000020000
          000400000006000000090000000D000000120000001900000020000000292D2D
          2D84444444C6464646EE2E2E2EFA2222228F0000001E0000000E000000050000
          0002000000000000000000000000000000000000000000000000000000000000
          00010000000100000001000000030000000400000006000000090000000D0000
          00130000001A000000220707073437373790454545CE545454F2343434FF5050
          50FF767676FF9C9C9CFF616161FF404040FF353535D10202022C000000130000
          0007000000020000000100000000000000000000000000000000000000030000
          0005000000070000000A0000000E000000140000001B000000230F0F0F443C3C
          3C9B555555D54F4F4FF53B3B3BFF5A5A5AFF6B6B6BFFC2C2C2FFCECECEFFD4D4
          D4FFD2D2D2FFD1D1D1FF6D6D6DFF898989FF5A5A5AFF373737F4111111590000
          00190000000A00000004000000010000000000000000000000000000000C0000
          00150000001C00000024171717543A3A3AA2585858D9575757F94D4D4DFF6565
          65FF7E7E7EFF999999FFB3B3B3FFB3B3B3FF8A8A8AFFF7F7F7FFD8D8D8FFD7D7
          D7FFD6D6D6FFD6D6D6FF6D6D6DFF8D8D8DFF8D8D8DFF757575FF323232FE2828
          28980000001F0000000E00000005000000020000000100000000252525555A5A
          5AAC737373E36B6B6BFB5F5F5FFF636363FF828282FF969696FFA7A7A7FFA6A6
          A6FFA5A5A5FF9B9B9BFF8F8F8FFF848484FF6D6D6DFFF9F9F9FF71C395FF71C3
          95FFE3E3E3FFD9D9D9FF6E6E6EFF909090FF909090FF909090FF888888FF4747
          47FF3A3A3AD50202022D00000013000000080000000300000001707070FF9C9C
          9CFFBCBCBCFFDDDDDDFF8D8D8DFF676767FF8F8F8FFF7D7D7DFF6C6C6CFF5D5E
          5DFF515151FF5C5C5CFF7E7E7EFFA5A5A5FFCBCBCBFFF9F9F9FF72C496FF72C4
          96FFE6E6E6FFDDDDDDFF6E6E6EFF939393FF939393FF939393FF939393FF9393
          93FF646464FF3C3C3CF61515155E000000190000000B00000004797979FFF5F5
          F5FFF3F3F3FFF2F2F2FF7B7B7BFF535353FF4F4F4FFF555555FF838383FFB4B4
          B4FFE3E3E3FFF6F6F6FFF5F5F5FFF1F1F1FFEDEDEDFFE8E8E8FFE6E6E6FFEBEB
          EBFFF0F0F0FFF7F7F7FF717171FF969696FF979797FF979797FF979797FF9797
          97FF979797FF808080FF3A3A3AFE2E2E2EA0000000200000000E848484FFF5F5
          F5FFF5F5F5FFF3F3F3FFBFBFBFFFC8C8C8FFF6F6F6FFF7F7F7FFF4F4F4FFF2F2
          F2FFEFEFEFFFECECECFFEDEDEDFFEFEFEFFFF3F3F3FFF7F7F7FFF5F5F5FFEEEE
          EEFFE3E3E3FFD4D4D4FF929292FF888888FF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF9A9A9AFF9A9A9AFF939393FF535353FF424242D90505052F909090FFF7F7
          F7FFF6F6F6FFF5F5F5FFF4F4F4FFF4F4F4FFF3F3F3FFF2F2F2FFF2F2F2FFF3F3
          F3FFF4F4F4FFF5F5F5FFEFEFEFFFE8E8E8FFDEDEDEFFD1D1D1FFCBCBCBFFC8C8
          C8FFC6C6C6FFC4C4C4FFBBBBBBFF8F8F8FFF8F8F8FFF9D9D9DFF9D9D9DFF9D9D
          9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF6F6F6FFF434343F79A9A9AFFF8F8
          F8FFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF1F1F1FFEDEDEDFFE6E6
          E6FFDEDEDEFFD6D6D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFCBCBCBFFCACA
          CAFFC7C7C7FFC5C5C5FFC3C3C3FFB4B4B4FF8F8F8FFF949494FFA0A0A0FFA0A0
          A0FFA0A0A0FFA1A1A1FFA1A1A1FFA1A1A1FFA1A1A1FF3B3B3BFFA5A5A5FFF8F8
          F8FFF6F6F6FFF2F2F2FFEDEDEDFFE7E7E7FFE1E1E1FFDEDEDEFFDCDCDCFFDADA
          DAFFD8D8D8FFD6D6D6FFD4D4D4FFD2D2D2FFD1D1D1FFCECECEFFCCCCCCFFCACA
          CAFFC8C8C8FFC5C5C5FFC3C3C3FFC2C2C2FFB2B2B2FF929292FF979797FFA3A3
          A3FFA3A3A3FFA3A3A3FFA3A3A3FFA4A4A4FFA4A4A4FF414141FFB2B2B2FCE3E3
          E3FFE7E7E7FFE5E5E5FFE4E4E4FFE2E2E2FFE0E0E0FFDFDFDFFFDDDDDDFFDBDB
          DBFFD9D9D9FFD7D7D7FFD5D5D5FFD3D3D3FFD1D1D1FFCFCFCFFFCCCCCCFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCCCCCCFFC2C2C2FFB4B4B4FF979797FF9898
          98FFA5A5A5FFA6A6A6FFA6A6A6FFA6A6A6FFA6A6A6FF474747FF898989AFC7C7
          C7FCE6E6E6FFE6E6E6FFE4E4E4FFE2E2E2FFE0E0E0FFDFDFDFFFDDDDDDFFDBDB
          DBFFD9D9D9FFD9D9D9FFDADADAFFD9D9D9FFD8D8D8FFD9D9D9FFDADADAFFD9D9
          D9FFBFBFBFFFA0A0A0FF838383FF636363FF515151FFA4A4A4FFB6B6B6FF9E9E
          9EFF989898FFA5A5A5FFA9A9A9FFA9A9A9FFAAAAAAFF4E4E4EFF000000009494
          94BECDCDCDFFE4E4E4FFE4E4E4FFE2E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE2E2E2FFC7C7C7FFB1B1B1FF999999FF828282FF7D7A77FF7873
          6CFF8B847AFF9F9588FFB6AA99FF995A1BFF68533DFF424242FFBEBEBEFFBCBC
          BCFFA7A7A7FF9A9A9AFFA5A5A5FFACACACFFACACACFF565656FF000000000303
          0304979797BFCBCBCBFEE0E0E0FFE3E3E3FFE5E5E5FFD7D7D7FFB9B9B9FFAFAA
          A4FFA8A6A4FFA9A6A0FFB6B1A9FFC4BCB2FFD2C8BAFFE1D5C5FFDFD3C2FFDED1
          C0FFDDCFBDFFDCCEBBFFDACCB9FFBD976EFF9A744FFFB0B0B0FFBFBFBFFFBDBD
          BDFFBBBBBBFFAEAEAEFFA2A2A2FFA4A4A4FFACACACFF5E5E5EFF000000000000
          0000000000008E8E8EB2C2C2C2F7DADADAFFE1E1E1FFC6C6C6FFD4AB83FFD097
          5EFFEDE7DDFFEBE3D9FFEAE1D6FFE7DFD1FFE6DDCFFFE4DACCFFE3D8C8FFE1D5
          C6FFE0D3C2FFDED1C0FFDDCFBDFFCEB597FFA87440FFC0BFBEFFC0C0C0FFBEBE
          BEFFBCBCBCFFBABABAFFB7B7B7FFABABABFFA4A4A4FF666666FF000000000000
          000000000000000000007A7A7A97BCBCBCF4D3D3D3FFE0E0E0FFE0C2A5FFE2BF
          9CFFF1ECE4FFEFE9E0FFEDE7DCFFEBE4D9FFEAE2D6FFE8DFD2FFE6DDCFFFE4DA
          CCFFE3D8C8FFE1D6C6FFE0D3C3FFDED2C0FFB07F4CFFBBA690FFC1C1C1FFBFBF
          BFFFBDBDBDFFBBBBBBFFADADADFFA5A5A5FF999999FF6F6F6FFF000000000000
          000000000000000000000000000052525264ADADADDCCCCCCCFFDECFC1FFDEAF
          81FFF4EEE9FFF3EEE8FFF1EBE4FFEFEAE0FFEDE6DDFFEBE4D9FFEAE1D7FFE8DF
          D2FFE6DDCFFFE5DACCFFE3D8C9FFE1D6C5FFC5A17CFFAE8760FFA0A0A0FF9393
          93FF8A8A8AFF838383FF848484F5808080EB757575D6606060AA000000000000
          0000000000000000000000000000000000000F0F0F12888888A9BDBDBDF5DFB5
          8CFFEFDCC8FFF7F3EFFFF5F1EBFFF3EEE8FFF1ECE4FFEFE9E0FFEEE7DDFFEBE4
          DAFFEAE1D7FFE8E0D3FFE6DCD0FFE5DACCFFDAC6AFFFA86F37FD7C7369B83D3D
          3D5C1E1E1E2E0000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003F3F3F4DD0B7
          9EECE9C8A7FFF9F8F6FFF9F5F2FFF6F4EFFFF4F1EBFFF3EEE8FFF1ECE5FFF0E9
          E1FFEDE7DDFFECE5DAFFE9E2D6FFE8E0D2FFE6DDCFFFC0976DFF7C5D3EAE0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000453C
          344ADFAF7EFAF9F1E8FFFBFAF9FFFAF9F6FFF9F6F2FFF7F3EEFFF4F1EBFFF3EE
          E8FFF1ECE4FFEFE9E0FFEEE7DDFFEBE4DAFFEAE2D6FFD8C1A7FFA3713FEE1611
          0D1D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000BFA081CFF2D8BFFFFFFFFEFFFDFDFCFFFCFAF9FFFAF8F5FFF9F6F3FFF6F4
          EEFFF4F1EBFFF3EEE8FFF1ECE5FFEFE9E0FFEDE6DDFFECE4DAFFC0956AFF7559
          3EA0000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006A5D4F71E6BC93FBFDFAF6FFFFFFFFFFFFFEFDFFFDFDFBFFFCFAF8FFFAF7
          F5FFF8F5F2FFF6F3EEFFF5F1EBFFF3EEE8FFF1EBE4FFEFE9E0FFDCC4ACFFA574
          44EC19140F210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000CBA888D9F5DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFD
          FBFFFBFAF8FFFAF8F5FFF8F5F2FFF7F3EEFFF4F1EBFFF2EFE7FFF1EBE4FFC69D
          74FF7D6043A90000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000073645679E8C099FAFDF9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFFFDFDFCFFFCFCFAFFFBFAF8FFF9F7F5FFF8F5F2FFF6F3EEFFF4F1EAFFE3D1
          BEFFAA7643F3342A204500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6A688D2F5DEC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFEFEFDFFFDFCFBFFFCFBF9FFFAFAF7FFFAF8F4FFF7F5F1FFF7F2
          EEFFD1AF8DFF906D4BC600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000060554A64E8BE94F7FBEFE4FFFAEEE3FFFAEEE2FFF8E9
          D9FFF3D9C0FFF2D7BDFFF0D5BAFFEFD2B6FFE5BC92FFE3B78DFFDCB186FFD5AA
          81FFC18C58FFB17D48FA634E3A83000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000A28D78A9E6B98FF5E5B78AF5E3B486F5DBAE
          80EFC69F7BD6C49D77D6C39B74D6C09770D494785DA393765BA38F7256A38B6E
          52A3544535654A3D2F5C3129223C070606080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFF800FFFF80007FF800003F8000000F0000000700000001000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          000080000000E0000000F0000000F8000000FC00001FFF00007FFF80003FFFC0
          003FFFC0001FFFE0001FFFE0000FFFF0000FFFF00007FFF80003FFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000010000000100000000000000000000000000000000000000000000
          00000000000100000002000000050000000A0000000D0000000E0000000F0000
          000F0000000F0000001000000010000000100000001000000011000000110000
          0011000000110000001200000012000000120000001200000012000000130000
          00110000000D0000000800000003000000010000000000000000000000000000
          0001000000030000000B00000019000000270000003100000036000000380000
          003A0000003B0000003D0000003E0000003F0000004000000041000000420000
          0043000000440000004500000046000000470000004800000048000000470000
          0043000000370000002500000011000000050000000100000000000000000000
          00020000000A0000001F02032D86040556D1070776FF060676FF060675FF0607
          74FF060674FF060673FF050573FF050572FF060572FF060571FF060571FF0505
          71FF060570FF050570FF050570FF050570FF060570FF050570FF050570FF0505
          70FF040351DC02022A9A00000031000000110000000400000000000000000000
          00050000001503032E83080E83FC111D9DFF172BB2FF1B30B8FF1D33BAFF1F34
          BBFF2035BCFF2237BDFF2339BEFF243ABEFF253BBFFF273DC0FF273DC0FF283D
          C0FF273CC0FF263BBFFF253ABEFF2339BDFF2237BBFF2035B9FF1E33B6FF192C
          ADFF0F1B96FF070B78FD02022A99000000240000000800000001000000000000
          00070000001E05065ACD111FA1FF162CBBFF142BBAFF112ABAFF0F28BAFF0E27
          B8FF0D26B8FF0D25B7FF0B24B5FF0B23B4FF0B24B4FF0A23B4FF0A23B3FF0A23
          B3FF0B23B2FF0A22B2FF0A23B1FF0B23B2FF0A22B1FF0A21B0FF0921ADFF0A20
          ABFF0F23A9FF0D1994FF040351DB000000360000000D00000001000000010000
          00080000002307097FFF182FBCFF172FC3FF1530C5FF152FC5FF122DC3FF122D
          C2FF0F2BC1FF0E2BC0FF0D29BFFF0D27BDFF0B26BCFF0A27BCFF0B27BBFF0A25
          BBFF0A26BBFF0B26BAFF0A26B9FF0A26B9FF0B25B9FF0B24B8FF0B24B5FF0A21
          B0FF0A1FABFF1123A7FF050570FF000000420000001000000002000000010000
          000800000023080A81FF1D37C9FF1B36CBFF1936CDFF1734CEFF1733CBFF1431
          CAFF122FC9FF102EC8FF0F2DC6FF0E2CC5FF0C2AC3FF0B29C2FF0B28C1FF0B29
          C0FF0A28C0FF0A28BFFF0A27BFFF0A28BEFF0B27BEFF0B26BDFF0A25B9FF0B23
          B5FF0921ADFF1024ACFF050670FF000000460000001200000002000000010000
          000800000021080A83FF1F39CEFF1E3BD2FF1C3AD3FF1A39D3FF1B38CEFF1F39
          CBFF1D37CCFF1D38CAFF1E37CBFF1632C9FF0F2DC7FF0D2BC5FF0D29C4FF0D2A
          C3FF1431C7FF213DCBFF223DCCFF243FCCFF2641CCFF1834C5FF0A27BDFF0A24
          B8FF0A22B0FF0F24ADFF050570FF000000460000001200000002000000010000
          00070000001F080C86FF243FD2FF213ED6FF1F3DD8FF1E3DD6FF213ACCFF6A7B
          DAFFC6CCF0FFC7CDF0FF6B7CDCFF203BCDFF1632CBFF0E2ECAFF0E2DC8FF1330
          C9FF2440CEFF6F80DFFFCAD1F3FFCAD1F4FF7384E0FF2540CDFF0A28BEFF0A26
          B9FF0A22B1FF0F23ACFF050571FF000000440000001100000002000000010000
          00070000001C090D88FF2842D5FF2743DAFF2341DAFF213FDBFF203ACAFFC6CA
          EDFFFDFCF9FFFDFCFAFFFEFCFBFF6A7BDBFF1F3ACCFF1634CBFF1532CBFF203D
          CCFF6B7EDEFFFFFFFFFFFFFFFFFFFFFFFFFFCAD1F3FF243FCCFF0A28BFFF0A26
          B9FF0A22B2FF0D23ACFF050671FF000000430000001100000002000000010000
          00060000001A090D8BFF2C47D9FF2A47DEFF2847DEFF2643DEFF233BCAFFC6CA
          EBFFFCFAF7FFFCFBF9FFFDFCF9FFFDFCFBFF6A7BDAFF1F3BCBFF203BCCFF6B7D
          DDFFFFFEFEFFFFFFFEFFFFFFFFFFFFFFFFFFCAD0F3FF213DCBFF0B29C0FF0A25
          BBFF0B22B3FF0D21ABFF050572FF000000420000001100000002000000000000
          000500000017090F8FFF314BDDFF304BE0FF2D4AE2FF2A49E1FF243CC8FF6B78
          D4FFFCF9F6FFFCFAF7FFFCFAF8FFFCFBF9FFFDFCF9FF6B7BDAFF6A7ADAFFFEFD
          FCFFFEFEFDFFFEFEFDFFFFFEFEFFFFFEFEFF6D80DEFF213ACBFF0B28C1FF0B26
          BBFF0A23B3FF0B20ACFF060673FF000000400000001000000002000000000000
          0005000000150A0F92FF3751DFFF3551E4FF324FE5FF2F4DE4FF2944D6FF253A
          C1FF6B77D3FFFCF9F5FFFCF9F6FFFCF9F7FFFCFAF8FFFCFBF9FFFDFCF9FFFEFC
          FBFFFEFDFBFFFEFDFDFFFEFEFDFF6A7DDCFF233DCDFF1530C6FF0C29C2FF0B26
          BCFF0A24B4FF0B21ABFF070674FF0000003E0000001000000002000000000000
          0004000000120A1195FF3D57E2FF3955E6FF3755E8FF3453E9FF304EE5FF2A45
          D7FF2538BFFF6B77D1FFFBF8F4FFFCF9F6FFFCF9F6FFFCF9F7FFFCFBF8FFFCFB
          F9FFFEFBFAFFFEFCFBFF6A7CDAFF213BCBFF1331CAFF0D2BC6FF0B29C3FF0B27
          BDFF0B23B4FF0B20ACFF070775FF0000003C0000000F00000002000000000000
          0004000000100A1298FF5469E6FF586FEBFF5E74EEFF5F77EFFF5D75EDFF5871
          EBFF4A60DBFF3849C0FF7580D2FFFAF7F3FFFBF8F4FFFBF9F5FFFCF9F6FFFCF9
          F7FFFCFBF8FF697AD8FF1F39C8FF1632CCFF102ECCFF0E2BC7FF0B29C4FF0C28
          BEFF0B24B5FF0B1FACFF060676FF0000003A0000000F00000002000000000000
          00030000000F0B149CFF6B7EE9FF6A7FEFFF6980F1FF677DF1FF6178F0FF5D74
          EDFF4F63DBFF3C4BBEFF7B84CFFFF9F6F1FFFAF6F3FFFBF7F3FFFBF8F5FFFBF9
          F5FFFCF9F6FF6978D6FF2038C6FF1734CDFF1131CDFF0F2ECAFF0E2BC6FF0C27
          C0FF0B24B7FF0A20ACFF070777FF000000380000000E00000001000000000000
          00030000000D0C15A0FF7183EBFF6F82F0FF6B82F3FF697FF3FF647BF1FF5468
          DDFF3C49B9FF7B82CBFFF9F4EFFFF9F5EFFFF9F5F0FFF9F6F2FFFAF6F2FFFBF8
          F3FFFBF8F5FFFBF9F5FF6978D5FF2038C5FF1734CDFF1130CCFF0F2EC9FF0E2A
          C3FF0C24B8FF0B20ADFF060878FF000000360000000E00000001000000000000
          00030000000C0C16A5FF798AEDFF6F84F2FF6F84F5FF6D82F5FF586BDDFF3C46
          B2FF7A80C6FFF8F2ECFFF8F3ECFFF8F3EDFFF9F4EFFFF9F5EFFFF9F5F1FFF9F6
          F2FFFBF7F2FFFBF8F4FFFBF8F5FF6877D3FF2037C4FF1833CBFF112FCBFF0F2B
          C3FF0D27BAFF0C21AEFF07077AFF000000340000000D00000001000000000000
          00020000000A0D18A9FF808FEFFF7287F3FF7288F6FF7085F7FF4651BEFF797D
          C1FFF6F0E9FFF7F1EAFFF7F2EBFFF8F2ECFFF8F3ECFF767ECBFF757ECCFFF9F5
          EFFFF9F5F1FFFAF6F2FFFBF7F2FFFBF8F4FF6977D2FF1E37C5FF1331CDFF122D
          C6FF0F28BCFF0C22B1FF07097CFF000000310000000D00000001000000000000
          0002000000090D1AACFF8B9CF0FF768AF4FF758BF8FF7288F8FF4551BBFFC6C3
          D7FFF5EFE7FFF6EFE8FFF6F0E9FFF7F1EAFF767DC6FF3442B5FF3342B7FF747C
          CAFFF9F4EFFFF9F5F0FFF9F5F1FFFAF6F2FFC5C7E6FF1E35C4FF1633CFFF132F
          C9FF1028BEFF0D23B2FF08087EFF0000002F0000000C00000001000000000000
          0002000000080E1BB1FF9CA8F2FF798DF5FF798EF9FF758BFBFF444FB9FFC6C2
          D5FFF5EEE5FFF5EEE6FFF5EFE7FF767BC1FF3540AFFF455BDAFF4359D9FF323F
          B5FF737BC9FFF8F4EEFFF9F4EEFFF9F5F0FFC6C7E4FF1F35C2FF1836D2FF1531
          CBFF122CC0FF1026B5FF080980FF0000002D0000000B00000001000000000000
          0001000000060E1DB5FFABB5F3FF7C8FF6FF7C91FAFF7A8EFCFF434DB6FF7375
          B7FFC5C1D4FFC5C1D5FF7478BCFF343EAAFF4B60DBFF526CF1FF4D68EFFF4157
          D8FF303EB3FF7179C7FFC6C6DFFFC5C6E0FF6F79CAFF2337C1FF1A37D5FF1733
          CDFF132DC2FF1228B6FF080A82FF0000002A0000000B00000001000000000000
          0001000000050F1FB9FFBBC2F3FF7E92F6FF7F93FAFF7C90FCFF6071DCFF424C
          B5FF414CB6FF404BB7FF3F4BB9FF5064DBFF5B74F4FF576FF2FF506BF1FF4C66
          F0FF3F55D8FF3443BFFF3142BFFF2F41C1FF2C3FC1FF2941D1FF1D3AD8FF1935
          CFFF172FC4FF152BB8FF080B84FF000000280000000A00000001000000000000
          0001000000040F20BEFFCACFF4FF8194F7FF8195FAFF7E94FBFF7C90FCFF778C
          FCFF7288FCFF6D82FBFF697FF9FF647DF8FF5E77F6FF5A73F5FF566FF3FF4F69
          F1FF4966EFFF4661EDFF405CEBFF3B58E9FF3653E6FF314EE2FF223FDAFF1B37
          D1FF1731C6FF172DBBFF080B87FF000000240000000A00000001000000000000
          0001000000031122C3FFD0D4F3FF8898F5FF8296F9FF7F94FAFF7D91FBFF788D
          FAFF748AF9FF6F85F9FF6A81F9FF667DF8FF6079F7FF5C75F6FF5770F4FF536C
          F1FF4D67EFFF4863EEFF435EECFF3E5AE9FF3A55E6FF3451E3FF2943DDFF1E39
          D3FF1A33C7FF192DB9FF090C89FF0000001F0000000800000001000000000000
          0000000000010C1A90B9AAB0E9FFA8B2F1FF8899F5FF7E92F7FF7C8FF6FF778B
          F6FF7387F5FF6F84F5FF6B81F4FF667DF4FF6278F3FF5D75F3FF5870F2FF536C
          F0FF4F68EFFF4A64EDFF445FEBFF3F5BE9FF3B56E5FF3650E2FF2D48DCFF233C
          D2FF2038C7FF1423ABFF060965C7000000170000000600000000000000000000
          000000000001060E4D61515FD3FBB3B9EBFFE5E6F4FFEAEAF6FFE6E6F5FFE1E3
          F6FFDADDF5FFD5D8F5FFCDD2F5FFC5CCF5FFBDC5F5FFB4BDF4FFAEB8F3FFA8B2
          F2FF9FACF1FF97A2F0FF8B9AEDFF8190EBFF7485E9FF6578E4FF5468DEFF3C51
          D1FF202FB5FF0E1796FA030536760000000E0000000300000000000000000000
          00000000000000000001060F4E610C1C93B91125C9FF1024C6FF1023C2FF0F21
          C0FF0F20BDFF0F1EBBFF0F1EB8FF0E1DB5FF0E1CB3FF0E1BB0FF0E1AADFF0D19
          ABFF0D18A8FF0C16A6FF0C15A4FF0C15A1FF0C149FFF0B139DFF0B129BFF0A12
          99FF070C6DC30406387200000010000000060000000100000000000000000000
          0000000000000000000000000000000000010000000100000002000000030000
          0003000000040000000500000006000000060000000700000008000000090000
          000A0000000A0000000B0000000C0000000D0000000E0000000F000000100000
          00100000000E0000000A00000005000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000002000000020000
          0002000000020000000300000003000000030000000300000003000000040000
          0004000000030000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00F000000FC000000380000001800000018000000080000000000000000000
          0000000000000000000000000000000000008000000080000000800000008000
          0000800000008000000080000000800000008000000080000000800000008000
          00008000000080000000C0000001C0000001E0000001F8000003FF800007FFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000080000000A0000000C0000000C0000
          000C0000000C0000000C0000000C0000000D0000000D0000000D0000000D0000
          000D0000000E0000000E0000000D0000000A0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000030000000D0000001D000000280000002C0000002D0000
          002E0000002F0000003000000030000000310000003200000033000000330000
          0034000000350000003500000032000000260000001200000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          000100000001000000080000001CBB7D4BFFBA7C49FFB97C49FFB87B49FFB87A
          48FFB87947FFB77846FFB67845FFB67744FFB57643FFB57643FFB47542FFB474
          41FFB37340FFB37340FFB3723FFFB2723FFF0000002600000000000000000000
          0000000000010000000300000005000000070000000800000008000000090000
          00090000000A0000001100000029BC7F4DFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4
          E8FFFFF4E8FFFFF3E7FFFFF3E7FFFFF3E6FFFFF3E6FFFFF3E6FFFFF3E5FFFFF2
          E5FFFFF2E4FFFFF2E4FFFFF1E3FFB37440FF0000003100000000000000000000
          0001000000050000000D000000150000001B0000001E00000020000000210000
          002200000023000000280000003CBD814FFFFFF5EAFFFFF5EAFFFFF5EAFFFFF5
          E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF4E8FFFFF3E7FFFFF3E7FFFFF3E6FFFFF3
          E6FFFFF3E5FFFFF3E5FFFFF2E5FFB47542FF0000003200000000000000000000
          00030000000C021D306804406BCB05568DFF05558CFF04548BFF04538AFF0551
          89FF045088FF054F85FF074C7DFFBF8351FFFFF6ECFFFFF5EBFFFFF5EBFFFFF5
          EAFFFFF5EAFFFFF5E9FFFFF4E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF3E7FFFFF4
          E7FFFFF3E7FFFFF3E6FFFEF2E4FFB67744FF0000003100000000000000010000
          00040000001205436ECA2592C0FF19BCE8FF17B9E6FF17B6E3FF15B3E1FF14B0
          DFFF13AEDDFF12A7D6FF1296C2FFC08554FFFFF6EDFFFFF6ECFFFFF6ECFFCF9D
          72FFCE9D71FFCE9C71FFCE9C70FFCE9B70FFCD9B6FFFCD9A6EFFCD9A6EFFCD9A
          6DFFFFF4E8FFFEF3E5FFFDF0E2FFB77946FF0000003000000000000000010000
          000500000015065D94FF49CEF0FF1ABEEAFF19BAE7FF17B7E5FF16B5E3FF15B2
          E1FF14AFDFFF13AAD8FF1299C4FFC28856FFFFF7EEFFFFF7EDFFFFF6EDFFFFF6
          EDFFFFF6ECFFFFF6ECFFFFF5EBFFFFF6EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF4
          E9FFFEF3E7FFFDF1E4FFFCEFE0FFB97A47FF0000002E00000000000000010000
          000500000015065F96FF4ED0F1FF1AC0EBFF1ABDE9FF18BAE7FF17B8E5FF16B4
          E3FF15B3E1FF14ADDAFF149BC6FFC48959FFFFF7EFFFFFF7EFFFFFF7EEFFD0A0
          76FFD0A075FFD0A075FFD09F74FFCF9F73FFCF9E73FFCF9E72FFFFF5EBFFFEF4
          E8FFFDF2E5FFFCF0E2FFFBEEDEFFBA7D49FF0000002C00000000000000000000
          000500000014076299FF53D3F3FF1CC2EDFF1ABFEBFF19BCE9FF18BAE7FF17B7
          E5FF16B6E3FF15B0DDFF159FCAFFC58C5BFFFFF8F0FFFFF7F0FFFFF8EFFFFFF7
          EFFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EDFFFFF6EDFFFFF6ECFFFEF4EAFFFDF3
          E7FFFCF0E3FFFBEEE0FFFAEBDCFFBC7F4DFF0000002A00000000000000000000
          00050000001307639BFF57D5F5FF1CC4EFFF1BC2EDFF1ABFEBFF19BDE9FF19BB
          E7FF18B9E6FF17B3DFFF16A2CCFFC78E5EFFFFF8F1FFFFF8F1FFFFF8F0FFD3A5
          7CFFD3A47BFFD2A47AFFD2A379FFD1A278FFD1A177FFD1A177FFD0A176FFD0A0
          76FFFBEEE1FFFAECDEFFF9E9DAFFBD814EFF0000002800000000000000000000
          00040000001207679EFF5CD8F6FF1DC7F1FF1CC4EFFF1CC2EDFF1BC0EBFF1ABE
          EAFF19BCE8FF19B6E2FF17A5CFFFC99060FFFFF9F2FFFFF9F2FFFFF9F1FFFFF8
          F1FFFFF8F1FFFFF8F0FFFFF7F0FFFFF8EFFFFEF5EDFFFDF4EAFFFCF1E6FFFBEF
          E3FFFAECDEFFF9E9DAFFF7E6D6FFBF8351FF0000002600000000000000000000
          000400000011076AA0FF61DAF7FF1EC9F2FF1DC7F1FF1CC5EFFF1CC2EDFF1BC1
          ECFF1ABFEBFF1ABAE5FF18ABD4FFCA9363FFFFF9F3FFFFF9F3FFFFF9F3FFD7AC
          85FFD6AB84FFD5AA82FFD5A981FFD5A880FFD4A77FFFD4A67DFFFBEFE4FFFAED
          E0FFF9EADCFFF7E7D7FFF6E3D2FFC08553FF0000002400000000000000000000
          00040000000F096EA4FF6ADDF9FF24CCF4FF23CAF3FF22C8F1FF20C7F0FF1DC4
          EEFF1BC2EDFF1BBDE8FF1AB0D8FFCB9565FFFFFAF4FFFFFAF4FFFFFAF3FFFFF9
          F3FFFFF9F3FFFFF9F2FFFEF7F0FFFDF6EDFFFCF2E9FFFBF0E6FFFAEEE1FFF9EB
          DDFFF7E8D8FFF6E5D3FFF5E1CFFFC28756FF0000002200000000000000000000
          00040000000E0970A6FF73E1FAFF2DD1F7FF2BCFF6FF2ACCF4FF27CAF3FF25C9
          F1FF21C6F0FF20C2ECFF1BB4DDFFCD9868FFFFFAF5FFFFFAF5FFFFFAF4FFFFFA
          F4FFFFFAF4FFFEF7F1FFFDF6EEFFFCF3EBFFFBF1E6FFFAEFE3FFF9EBDEFFF7E8
          D9FFF6E5D5FFF5E2CFFFF3DECAFFC38958FF0000002000000000000000000000
          00030000000D0A74AAFF7DE4FCFF36D4F9FF35D2F7FF32D1F6FF30CFF5FF2DCD
          F4FF29CBF3FF27C6EFFF21BAE1FFCF996AFFFFFBF6FFFFFBF6FFFFFAF5FFFFFA
          F5FFFEF8F3FFFDF7EFFFFCF4ECFFFBF2E8FFFAEFE4FFF9ECDFFFF7E9DBFFF6E6
          D5FFF5E2D1FFF3DECBFFF1DBC6FFC58B5AFF0000001C00000000000000000000
          00030000000C0B78ADFF88E8FDFF40D8FAFF3FD7F9FF3CD5F8FF39D4F7FF36D2
          F6FF32D0F5FF2FCDF3FF27C1E7FFD19C6DFFFFFBF7FFFFFBF7FFFFFBF6FFFEF9
          F4FFFDF7F1FFFCF4ECFFFBF2E9FFFAF0E5FFF9EDE0FFF7E9DCFFF6E6D6FFC991
          61FFC89160FFC88F5FFFC78E5EFFC78D5DFF0000001600000000000000000000
          00030000000B0B7BB0FF91EAFEFF4CDCFCFF49DBFBFF47D9FAFF44D7F9FF40D6
          F8FF3CD4F7FF38D1F6FF31C8ECFFD29E70FFFFFCF8FFFFFBF8FFFEF9F5FFFDF7
          F2FFFCF5EDFFFBF3EAFFFAF0E6FFF9EDE2FFF7E9DCFFF6E6D8FFF5E3D3FFCA93
          63FFFFF9F4FFFFFAF3FFFCF6F0FD5A58566F0000000E00000000000000000000
          00020000000A0B7FB4FF9BEDFEFF58E0FDFF55DFFDFF52DDFCFF4EDCFBFF4BDA
          FAFF46D9FAFF41D6F8FF3ACEF1FFD3A173FFFFFCF9FFFEFAF6FFFDF8F3FFFCF6
          EFFFFBF3EBFFFAF0E7FFF9EDE3FFF7EADDFFF6E7D8FFF5E3D4FFF3E0CEFFCC95
          66FFFFFAF5FFFCF7F1FD5A58566F000000110000000600000000000000000000
          0002000000090C83B7FFA5EFFFFF64E3FEFF61E2FEFF5EE1FEFF5AE0FDFF56DE
          FCFF51DCFCFF4BDBFBFF45D5F6FFD5A274FFFEFAF7FFFDF8F4FFFCF6F0FFFBF4
          EDFFFAF1E8FFF9EEE4FFF7EADFFFF6E7D9FFF5E4D4FFF3E0CFFFF1DDC9FFCE97
          68FFFCF8F3FC5A59576C0000000F000000060000000200000000000000000000
          0002000000080D88BBFFAFF1FFFF70E6FFFF6EE5FEFF6AE4FEFF66E3FEFF61E1
          FEFF5CE0FDFF55DFFDFF4FDCFBFFD7A577FFD6A476FFD5A376FFD5A274FFD5A1
          73FFD4A072FFD3A071FFD39F71FFD29E6FFFD19D6EFFD19C6DFFD09B6CFFD09A
          6BFF5A5957680000000D00000005000000010000000000000000000000000000
          0002000000070F8BBFFFB8F2FFFF7DE8FFFF7AE8FFFF76E7FFFF72E6FFFF6DE5
          FEFF66E3FEFF60E2FEFF59E0FDFF52DEFCFF4AD6F5FF42C4E3FF3CBCDAFF36BD
          DDFF30BEDFFF2ABFE2FF25BFE3FF23C1E5FF22C2E7FF095C8FFF000000160000
          000E000000080000000400000001000000000000000000000000000000000000
          0001000000060F8FC2FFC1F4FFFF89EAFFFF86EAFFFF82E9FFFF7EE8FFFF78E7
          FFFF72E6FFFF6BE5FFFF62DDF7FF57C8E2FF4FBBD5FF4ABCD8FF44C1DDFF3EC3
          E1FF37C6E7FF31C9EBFF2BCCF0FF26CEF4FF26D3F8FF086399FF0000000F0000
          0005000000020000000100000000000000000000000000000000000000000000
          0001000000051094C6FFC9F6FFFF96EDFFFF93ECFFFF8FEBFFFF89EAFFFF83E9
          FFFF7AE3F9FF68C5DCFF5CB2C8FF57B3CBFF54B6CFFF4FBAD4FF4ABEDAFF43C2
          E0FF3CC7E6FF36CBECFF2FCEF1FF2AD2F6FF26D5FBFF09679DFF0000000C0000
          0003000000000000000000000000000000000000000000000000000000000000
          0001000000041198CAFFD1F7FFFFA3EFFFFF9FEEFFFF9BEEFFFF92E8FAFF78C4
          D8FF64A9BCFF61A8BCFF5EAAC0FF5BAEC4FF56B2C9FF53B6CFFF4DBBD5FF47BF
          DBFF41C4E2FF3AC8E8FF33CCEEFF2CD0F4FF26D4F8FF096BA0FF0000000B0000
          0003000000000000000000000000000000000000000000000000000000000000
          000100000004119CCDFFD8F8FFFFAFF1FFFFABF0FFFFADC7BFFF9C8265FFA16F
          46FF9D5D31FF955022FF8F481AFF8D4518FF8C4417FF924A1CFF975626FF9767
          3DFF888266FF64A8A9FF36CBECFF30CEF2FF29D2F7FF0A6EA3FF000000090000
          0002000000000000000000000000000000000000000000000000000000000000
          00010000000312A0D1FFDFFAFFFFCCF6FFFFBBA588FFAD7144FFC08A5DFFD2A3
          7AFFE0B991FFEAC69DFFEFC89AFFEEC18CFFEBB77BFFE2A766FFD7995BFFC687
          4CFFB4713AFF9B5827FF88876CFF32D0F2FF2AD9FDFF0A71A6FF000000080000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000020F7BA0C17DCFE9FFE3FAFFFFB67F53FFEED0B0FFF8E4CAFFF9E7
          D3FFF9E8D5FFF9E7D2FFF7E2C8FFF4DAB9FFF3D2A7FFF0CB95FFEFC68BFFEEC4
          8AFFEEC389FFE2B379FF975629FF4CDEFEFF27ABD6FF085880C3000000050000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000001073848560F7EA1C114A4D4FF96A69CFFBB8A62FFB47A4EFFB175
          49FFAD7044FFF8ECE0FFFCF1E2FFFBEBD6FFF9E6C9FFF1D7B2FF9C592DFF9A56
          2AFF975327FF9D5F34FF807F6FFF0C7EB1FF085C84C204283A5A000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000200000002000000020000
          000200000003B88159FEFAF0E4FFFEF5E6FFF8E9D2FFAC7146FE000000040000
          0004000000040000000400000005000000040000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B38F74DCE6CDB8FFFBEFE0FFE3C6AAFFAD8362DC000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000574A4064B49174DCC08B64FEB28C6DDC54463864000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFE00001FFC00001F8000001C00000018000000180000001000000010000
          0001000000018000000180000001800000018000000180000001800000018000
          00018000000180000001800000018000000180000003800000078000000F8000
          003F8000003F8000003F8000003FC000003FC000003FE000007FFFE0FFFFFFE0
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000500000006000000070000
          0007000000050000000200000001000000000000000000000000000000000000
          0000000000000000000100000003000000060000000800000009000000080000
          0006000000030000000100000000000000000000000000000000000000000000
          00000000000000000001000000040000000B000000130000001B0000001F0000
          001C000000150000000C00000005000000010000000000000000000000000000
          000000000002000000050000000E000000190000002200000027000000230000
          001A0000000F0000000600000002000000000000000000000000000000000000
          000000000001000000040000000D2B1C10527D4925C7934A1DF58D3B0DFF9447
          1CF57D4321C82B190D550000000F000000050000000100000000000000000000
          000100000005000000112B1B0F597C4522CB95471CF68E380CFF96451AF67E42
          20CC2B190D5C0000001300000006000000010000000000000000000000000000
          000000000002000000092C1E135192582BE6BA7A48FFD59965FFE6AC77FFD493
          5FFFB76F3DFF8F4A20E72A190E540000000B0000000200000000000000000000
          00020000000C2B1C10578F5225E8B77341FFD4935FFFE5A871FFD2905BFFB86C
          3BFF90481FE82B190D5B0000000E000000030000000000000000000000000000
          00000000000300000010865B37C6BF8756FFEAB380FFE4A364FFE49D57FFE6A6
          66FFE8AC73FFB7703EFF7D4621C8000000140000000400000000000000000000
          00050000001580522EC9BA7E4BFFE7AC74FFE29D5BFFE29951FFE5A260FFE8A8
          6EFFB76D3CFF7D4320CC00000019000000060000000100000000000000000000
          00010000000500000015AB7444F5E1B78FFFD69359FF754A25AB1B12092B7F56
          2F8FE7A76AFFD49864FF924B1DF50000001A0000000600000001000000010000
          00070000001C9F6333F6DAAB7EFFD48E50FF754822B31B11092F7E542C8FE5A1
          61FFD3925CFF93481BF600000021000000080000000100000000000000000000
          00010000000500000016B67C46FFF5DABCFFBA6A2EFF180E064D0000000A1A11
          091FE09957FFEAB989FF8A410FFF0000001C0000000700000001000000010000
          00070000001EA56731FFF1D0ACFFB9682BFF170E065C0000000E1A11081FDD94
          4EFFE8AF7BFF8A3C0DFF00000023000000080000000100000000000000000000
          00010000000400000013C29265F4EBD0B3FFBF7742FF633514A8170D063D6F43
          2096DC9E66FFDAAC81FF945626F50000001B0000000700000001000000010000
          00070000001EB68455F6E6C5A3FFBE753FFF633513B1170D06476E421E98DA98
          5CFFD7A273FF924F21F60000001F000000080000000100000000000000000000
          0000000000030000000DA28569C4E1BD9AFFDCB18DFFBA723EFFAE5D25FFC986
          51FFE8BD96FFEFCEACFF945E30EE221104550000000900000002000000020000
          000A31241757BA8D62EEF6E0CAFFDBAD85FFBA703BFFAE5C24FFC8824CFFE5B5
          89FFBC8658FF7D512DC900000016000000050000000100000000000000000000
          000000000001000000073730294BC39F7AE4E4C3A1FFEFD9C1FFF8E9D7FFEAD1
          B6FFF4DEC6FFF8E1C9FFD6B18EFB88501EEA0804011F00000005000000060D0A
          0720C19364EBE8D1B7FBFBEEDFFFF6E6D2FFEAD1B6FFF7E2CBFFE5C6A7FFC79B
          71FF98683EE72C2016550000000C000000020000000000000000000000000000
          000000000000000000030000000938312A4BA78D72C3D0A67BF4CD9866FFC598
          6CF5C2905FFDEED8C1FFFAE7D3FFBF9269FE6B421EB70000000E0000000E9A7B
          5CB8E2C2A2FEFDF5EDFFF5E6D5FFCFA071FDC5986BF6BE8752FFB7875BF59170
          51C830261C540000000E00000004000000010000000000000000000000000000
          0000000000000000000100000002000000060000000C00000010000000140000
          00186A533C91CDA074FEF9ECDDFFE3CBB3FFA36C3BFA0B07032B110E0A2CDAB3
          89FAF0E3D6FFFDF7F1FFE2BB91FD705B4596000000210000001C000000180000
          00120000000A0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000004000000050000
          00070000000FAA8560D0CBA782FDBE8C5AFF805B40FF2F251F823D3733839D81
          6BFFE7C095FFE1C3A3FDB89876D1000000140000000A00000007000000060000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000005120E0A2386684AB1635140FD898785FF563B2CFC655044FCCECA
          C8FF7F644FFD957D61B213100C26000000070000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000B0000001A28282884484340FF7A6D65FFAAA19DFF715F
          54FF3A343187000000200000000E000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000050C0C0B217B6D64FE6B5A51FF614F44FFABA49FFF948983FF6E5D
          54FF502E1AFF653A1FFE0C0A0826000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000A686260AC9F9792FFE2E2E2FFE3E3E3FFBAB5B2FF6F625AFFC5C5
          C5FFD7D7D7FF89776CFF5A493FAF0000000E0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00040000000F877D78F9D1CFCEFFE5E5E5FFD9D7D6FF5A4A42FD585756FDCDCD
          CDFFE8E8E8FFCBC8C7FF5E473AF9000000150000000600000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00075451508698918DFFE8E8E8FFE7E7E7FF786E68FE403C3984414141857272
          72FEEBEBEBFFEAEAEAFF6F6661FF433D388A0000000B00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000B8C8683EDCAC7C6FFECECECFFA6A09DFF635C58C900000010000000106B69
          68CAA3A2A2FFEEEEEEFFBABABAFF5D5652ED0000001100000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000053837
          3657908B88FFF0F0F0FFCDCBCAFF6C645FF10404031400000006000000070404
          0415767270F1CCCBCBFFEFEFEFFF5E5E5EFF2B2A295D00000008000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000078D8A
          88D9C4C1C0FFEAE9E9FF665F5BFD1C1B1A3A0000000600000002000000020000
          0007201F1E3C716C68FDE7E7E7FFB1B0B0FF646463DB0000000D000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000003171716268F8B
          87FFF4F4F4FF8F8A88FF4A484784000000070000000200000000000000000000
          00020000000855515086958F8CFFF0F0EFFF615D5AFF1212112D000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000005838280B8BCBA
          B8FFBDBBBAFF73706ECD00000008000000030000000100000000000000000000
          0001000000030000000A837C78CEBCB7B5FFABA6A4FF686564BB0000000A0000
          0002000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020505050C9B9996FCE4E2
          E2FF817E7CF40808081400000003000000010000000000000000000000000000
          0000000000010000000409090918938780F5DFDCDBFF7C736FFC040404140000
          0005000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000003706F6E94B6B4B2FF8B88
          86FD2A2A2A440000000300000001000000000000000000000000000000000000
          00000000000000000001000000062F2D2B4896867DFDAAA09BFF605C59980000
          0008000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000004AAA7A3F3AFAEABFF5B5B
          5A88000000040000000100000000000000000000000000000000000000000000
          000000000000000000000000000200000007655E598BB1A39BFF94867FF30000
          000A000000030000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000155545268B7B4AFFF8D8B89D30000
          0004000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000300000008988881D4AC9A91FF4B47
          446D000000050000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000001B3AFA8E2AAA69FF60909090F0000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000030A090915A99185F79E8E
          83E3000000060000000200000000000000000000000000000000000000000000
          00000000000000000000000000002929272FBDB5AAFF3A39384A000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000043A35324EA486
          74FF242220320000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0004000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00F007E00FE003C007C0018003C0018003C001800180000001800000018000
          0001C0000001C0000003E0000003E0000007F800000FFF8000FFFFC001FFFF80
          01FFFF8001FFFF0000FFFF0000FFFF00007FFE00007FFE00007FFC01803FFC01
          803FFC03C01FF807E01FF80FF00FF81FF80FF83FF80FF87FFC0FFCFFFE0FFFFF
          FF1F}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000010000
          0002000000060000000700000008000000080000000800000008000000080000
          0008000000090000000900000009000000090000000900000009000000090000
          0009000000090000000900000008000000070000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000A000000150000001D0000001F000000200000002000000020000000210000
          0021000000210000002200000022000000220000002300000023000000230000
          0023000000230000002300000021000000190000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0014BF8451FFBF8351FFBE8250FFBD814FFFBD814FFFBC804DFFBC7E4DFFBB7E
          4CFFBB7D4BFFBA7C4AFFB97C49FFB97B48FFB87B48FFB87A46FFB77947FFB778
          45FFB67745FFB67744FFB57643FFB47542FF0000001900000006000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          001AC08555FFFFF6EDFFFFF6ECFFFFF6ECFFFFF6ECFFFFF5EBFFFFF5EBFFFFF5
          EAFFFFF5EAFFFFF5E9FFFFF4E9FFFFF4E9FFFFF4E8FFFFF4E8FFFFF3E7FFFFF4
          E7FFFFF3E7FFFFF3E6FFFFF3E6FFB67744FF0000002100000009000000020000
          0001000000010000000100000001000000000000000000000000000000070000
          001BC28857FFFFF7EEFFFFF6EEFFFFF7EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6
          ECFFFFF6EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF4E9FFFFF4E9FFFFF4E9FFFFF4
          E8FFFFF4E8FFFFF4E7FFFFF3E7FFB77946FF0000002700000010000000090000
          0009000000090000000900000008000000060000000300000001000000070000
          001BC48A59FFFFF7EFFFFFF7EFFFFFF7EEFFFFF7EEFFFFF7EDFFFFF6EDFFFFF6
          EDFFFFF6ECFFFFF6ECFFFFF5EBFFFFF6EBFFFFF5EBFFFFF5EAFFFFF5EAFFFFF4
          E9FFFFF4E9FFFFF4E9FFFFF4E8FFB97A47FF0000003700000026000000220000
          002200000022000000220000001F000000180000000B00000003000000060000
          001AC58C5BFFFFF8F0FFFFF8F0FFFFF7EFFFFFF7EFFFFFF7EFFFFFF7EEFFFFF7
          EEFFFFF6EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6ECFFFFF6EBFFFFF5EBFFFFF5
          EAFFFFF5EAFFFFF5EAFFFFF5E9FFBA7D49FFB87B48FFB87A46FFB77947FFB778
          45FFB67745FFB67744FFB57643FFB47542FF0000001800000006000000060000
          0019C78E5EFFFFF8F1FFFFF8F1FFFFF8F0FFFFF8F0FFFFF7F0FFFFF8EFFFFFF7
          EFFFFFF7EEFFFFF7EEFFFFF7EEFFFFF7EDFFFFF6EDFFFFF6ECFFFFF6ECFFFFF6
          ECFFFFF5EBFFFFF5EBFFFFF5EAFFBC7F4DFFEAD2BBFFFAECDDFFFFF3E6FFFFF4
          E7FFFFF3E7FFFFF3E6FFFFF3E6FFB67744FF0000001E00000007000000060000
          0018C99161FFFFF9F2FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F1FFFFF8F0FFFFF8
          F0FFFFF7EFFFFFF7EFFFFFF7EFFFFFF7EEFFFFF7EEFFFFF6EEFFFFF6EDFFFFF6
          EDFFFFF6ECFFFFF6ECFFFEF4EAFFBD814EFFEAD2BCFFFAECDEFFFFF4E8FFFFF4
          E8FFFFF4E8FFFFF4E7FFFFF3E7FFB77946FF0000002000000008000000060000
          0017CA9363FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F2FFFFF9F2FFFFF9F1FFFFF8
          F1FFFFF8F1FFFFF8F0FFFFF7F0FFFFF8EFFFFFF7EFFFFFF7EFFFFFF7EEFFFFF7
          EEFFFFF6EDFFFEF4EBFFFDF3E8FFBF8351FFEAD3BDFFFAEDDEFFFFF5E9FFFFF4
          E9FFFFF4E9FFFFF4E9FFFFF4E8FFB97A47FF0000001F00000008000000050000
          0016CC9666FFFFFAF4FFFFFAF4FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9
          F2FFFFF8F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF8F0FFFFF8F0FFFFF7EFFFFFF7
          EFFFFEF5EDFFFDF4E9FFFCF1E6FFC08553FFEAD3BEFFFAEEDFFFFFF5EAFFFFF5
          EAFFFFF5EAFFFFF5EAFFFFF5E9FFBA7D49FF0000001E00000008000000050000
          0015CD9768FFFFFAF5FFFFFAF5FFFFFAF5FFFFFAF4FFFFFAF4FFFFFAF3FFFFF9
          F3FFFFF9F3FFFFF9F2FFFFF9F2FFFFF9F2FFFFF8F1FFFFF8F1FFFFF8F0FFFEF6
          EEFFFDF5EBFFFCF2E7FFFBEFE4FFC28756FFEAD3BFFFFAEEE0FFFFF6EBFFFFF6
          ECFFFFF5EBFFFFF5EBFFFFF5EAFFBC7F4DFF0000001D00000007000000050000
          0014CF9A6BFFFFFBF6FFFFFBF6FFFFFAF6FFFFFAF5FFFFFAF5FFFFFAF4FFFFFA
          F4FFFFFAF4FFFFF9F3FFFFF9F3FFFFF9F3FFFFF9F2FFFFF9F2FFFEF6EFFFFDF5
          ECFFFCF2E9FFFBF0E5FFFAEEE1FFC38958FFEAD4C0FFFAEEE2FFFFF6ECFFFFF6
          EDFFFFF6ECFFFFF6ECFFFEF4EAFFBD814EFF0000001C00000007000000050000
          0013D19D6EFFFFFBF7FFFFFBF7FFFFFBF6FFFFFBF6FFFFFBF6FFFFFAF5FFFFFA
          F5FFFFFAF5FFFFFAF4FFFFFAF4FFFFFAF4FFFFF9F3FFFEF7F1FFFDF6EEFFFCF3
          EAFFFBF1E6FFFAEEE2FFF9EBDEFFC58B5AFFEAD4C0FFFAEEE3FFFFF7EDFFFFF7
          EEFFFFF6EDFFFEF4EBFFFDF3E8FFBF8351FF0000001B00000007000000050000
          0013D29F70FFFFFBF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF7FFFFFBF6FFFFFB
          F6FFFFFAF6FFFFFAF5FFFFFAF5FFFFFAF5FFFEF8F2FFFDF7EFFFFCF4EBFFFBF1
          E7FFFAEFE4FFF9ECDFFFF7E9DAFFC78D5DFFEAD5C1FFFAEFE4FFFFF7EEFFFFF7
          EFFFFEF5EDFFFDF4E9FFFCF1E6FFC08553FF0000001A00000007000000040000
          0012D4A173FFFFFCF9FFFFFCF9FFFFFCF8FFFFFCF8FFFFFBF8FFFFFBF7FFFFFB
          F7FFFFFBF6FFFFFBF6FFFFFBF6FFFEF8F4FFFDF7F0FFFCF4ECFFFBF2E9FFFAF0
          E4FFF9ECE0FFF7E9DBFFF6E6D6FFC8905FFFEAD5C2FFFAEFE5FFFFF8EFFFFEF6
          EEFFFDF5EBFFFCF2E7FFFBEFE4FFC28756FF0000001900000006000000040000
          0011D5A476FFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFCF8FFFFFCF8FFFFFC
          F8FFFFFBF7FFFFFBF7FFFEF9F5FFFDF7F1FFFCF5EDFFFBF2EAFFFAF0E6FFF9ED
          E1FFF7E9DCFFF6E6D7FFF5E3D2FFCA9262FFEAD6C3FFFAF0E6FFFEF6EEFFFDF5
          ECFFFCF2E9FFFBF0E5FFFAEEE1FFC38958FF0000001800000006000000040000
          0010D7A678FFFFFDFAFFFFFDFAFFFFFCFAFFFFFCF9FFFFFCF9FFFFFCF9FFFFFC
          F9FFFFFCF8FFFEFAF6FFFDF7F3FFFCF5EEFFFBF3EBFFFAF0E7FFF9EDE2FFF7EA
          DDFFF6E7D8FFF5E3D3FFF3E0CEFFCB9465FFEAD6C3FFF9EEE5FFFDF6EDFFFCF3
          EAFFFBF1E6FFFAEEE2FFF9EBDEFFC58B5AFF0000001800000006000000040000
          000FD9A87BFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDFAFFFFFCFAFFFFFC
          F9FFFEFAF7FFFDF8F4FFFCF6F0FFFBF4ECFFFAF1E8FFF9EDE4FFF7EADEFFF6E7
          D9FFF5E4D4FFF3E0CEFFF1DDC9FFCD9667FFE9D5C3FFF8EEE3FFFCF4EAFFFBF1
          E7FFFAEFE4FFF9ECDFFFF7E9DAFFC78D5DFF0000001700000006000000040000
          000EDBAA7EFFFFFDFCFFFFFDFCFFFFFDFBFFFFFDFBFFFFFDFBFFFFFDFBFFFEFB
          F8FFFDF9F5FFFCF6F1FFFBF4EDFFFAF1E9FFF9EEE4FFF7EBE0FFF6E8DAFFF5E5
          D5FFF3E0D0FFF1DDCAFFF0D9C4FFCE9A6BFFEAD5C3FFF7ECE1FFFBF2E8FFFAF0
          E4FFF9ECE0FFF7E9DBFFF6E6D6FFC8905FFF0000001600000005000000030000
          000DDCAC80FFFFFEFCFFFFFEFCFFFFFEFCFFFFFDFCFFFFFDFCFFFEFBF9FFFDF9
          F6FFFCF7F2FFFBF5EEFFFAF2EAFFF9EFE5FFF7EBE0FFF6E8DBFFD3A071FFD39F
          70FFD29D6FFFD29D6EFFD09C6DFFD09C6DFFEBD9C8FFF7EBE0FFFAF0E5FFF9ED
          E1FFF7E9DCFFF6E6D7FFF5E3D2FFCA9262FF0000001500000005000000030000
          000DDDAE82FFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFEFCF9FFFDFAF6FFFCF7
          F3FFFBF5EFFFFAF2EBFFF9EFE6FFF7ECE1FFF6E9DBFFF5E5D6FFD5A274FFFFFC
          F9FFFFFCF9FFFFFCF9FFFEFBF8FFECDBCBFFF1E2D4FFF8EDE1FFF8ECE1FFF7EA
          DDFFF6E7D8FFF5E3D3FFF3E0CEFFCB9465FF0000001400000005000000030000
          000CDFB084FFFFFEFEFFFFFEFEFFFFFEFDFFFEFCFAFFFDFAF7FFFCF8F4FFFBF6
          EFFFFAF3EBFFF9F0E7FFF7ECE2FFF6E9DCFFF5E5D7FFF3E2D2FFD6A577FFFFFD
          FAFFFFFDFAFFFFFBF9FFECDBCCFFEEDED0FFF5EADEFFF8EBE1FFF7EADEFFF6E7
          D9FFF5E4D4FFF3E0CEFFF1DDC9FFCD9667FF0000001300000005000000030000
          000BE0B388FFFFFFFEFFFFFFFEFFFEFCFBFFFDFAF8FFFCF8F4FFFBF6F0FFFAF3
          ECFFF9F0E8FFF7EDE3FFF6E9DDFFF5E6D8FFF3E2D2FFF1DECDFFD8A779FFFFFD
          FBFFFFFCFAFFEEDFD2FFEFE0D2FFF6E9DFFFF8ECE2FFF6EADFFFF6E8DAFFF5E5
          D5FFF3E0D0FFF1DDCAFFF0D9C4FFCE9A6BFF0000001100000004000000020000
          000AE1B589FFFFFFFFFFFEFDFCFFFDFBF9FFFCF9F5FFFBF7F1FFFAF3EDFFF9F0
          E9FFF7EDE3FFF6E9DEFFF5E6D9FFF3E2D3FFF1DFCDFFF0DBC7FFDAA97CFFFFFC
          FBFFEFE2D7FFF0E3D6FFF6ECE2FFF8EDE3FFF7EADFFFF6E8DBFFD3A071FFD39F
          70FFD29D6FFFD29D6EFFD09C6DFFD09C6DFF0000000E00000004000000020000
          0006E3B78CFFE2B78BFFE2B58BFFE1B489FFE1B488FFE0B287FFE0B286FFDFB1
          85FFDEB085FFDEAF83FFDDAF82FFDDAE81FFDCAD80FFDCAD80FFDCAB7FFFF3E9
          E0FFF3E7DCFFF7EDE4FFF8EEE5FFF7EBE0FFF6E9DBFFF5E5D6FFD5A274FFFFFC
          F9FFFFFCF9FFFFFCF9FFFCF9F6FC5A5958680000000900000002000000010000
          00030000000600000008000000090000000A0000000A0000000A0000000C0000
          0012DFB084FFF7F1ECFFF7F0EBFFF7EFE9FFF5EDE6FFF4EBE3FFF4EBE3FFF6EE
          E4FFF8EFE6FFF8EFE6FFF7EBE1FFF6E9DCFFF5E5D7FFF3E2D2FFD6A577FFFFFD
          FAFFFFFDFAFFFCF9F7FC5A5958680000000B0000000400000001000000000000
          0001000000010000000200000002000000020000000200000003000000050000
          000BE0B388FFFEFDFBFFFEFDFBFFFCF9F7FFFBF7F4FFFAF5F0FFFAF4EDFFF9F1
          EAFFF9EFE7FFF7EDE3FFF6E9DDFFF5E6D8FFF3E2D2FFF1DECDFFD8A779FFFFFD
          FBFFFCFAF8FC5A5959670000000A000000040000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0009E1B589FFFFFFFFFFFEFDFCFFFDFBF9FFFCF9F5FFFBF7F1FFFAF3EDFFF9F0
          E9FFF7EDE3FFF6E9DEFFF5E6D9FFF3E2D3FFF1DFCDFFF0DBC7FFDAA97CFFFCFA
          F9FC5A5959660000000A00000004000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0006E3B78CFFE2B78BFFE2B58BFFE1B489FFE1B488FFE0B287FFE0B286FFDFB1
          85FFDEB085FFDEAF83FFDDAF82FFDDAE81FFDCAD80FFDCAD80FFDCAB7FFF5A5A
          5964000000080000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000050000000700000008000000080000000900000009000000090000
          0009000000090000000A0000000A0000000A0000000A0000000A000000090000
          0006000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0001000000010000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00000000FF000000FF000000FF000000070000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000080000001FF000003FF000007FF00000FFF80
          001F}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000070000000B0000000E0000000D0000000900000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000060000
          0010000000200000002F00000039000000370000002700000014000000070000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000007000000160000
          00323C342EB0494038E9322E2AFC242323FF262320BC0000003A0000001B0000
          000A000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000050000001415131257544D
          47DE6B5F56FFA78E7AFFD6B193FFCBA687FF36312DFF363331E50303034C0000
          00220000000D0000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000C000000275A544FDC9E8F
          83FFF7D7BDFFF8D4B7FFF7D0B1FFF7CEADFF947C67FF5B534EFF353535F81111
          1174000000290000001100000005000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000100000004000000143E3C3AA476706BFEF9E2
          D0FFFADFC9FFF9DBC2FFF8D8BDFFF8D6B9FFC9AD96FF63584EFF6D6D6DFF3737
          37FE252525A50000003000000016000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000030000000400000004000000070000001A615E5DE3B3AAA3FFFBE9
          DAFFFBE5D4FFFAE2CFFFFADFCAFFF9DDC6FFEDD2BCFF544B44FF888888FF7D7D
          7DFF494949FE393939D6000000370000001A0000000A00000003000000010000
          0000000000000000000000000000000000000000000000000000000000030000
          00080000000E000000110000001000000010000000205C5B5AFAE0D7D0FFFCEE
          E3FFFCEBDDFFFBE8D9FFFBE6D5FFFBE5D3FFF0DAC9FF665D56FF999999FF9090
          90FF888888FF5F5F5FFF444444F10B0B0B570000001F0000000D000000040000
          0001000000000000000000000000000000000000000000000000000000080E0E
          0E37302F2EBB3A3937E2373432AD0404042B0000002A525252FFFBF3EDFFFDF3
          EBFFFDF0E6FFFCEEE3FFFCECDFFFFCEBDEFFD9CBBFFF8D857FFFAFAFAFFFA4A4
          A4FF9B9B9BFF929292FF757575FF3F3F3FFC15151582000000240000000F0000
          00060000000100000000000000000000000000000000000000000B0B0B284745
          44D7857E79FF9E9085FF59524DFF494847FE404040C9606060FBE4E1DEFFFEF8
          F3FFFDF5EFFFFDF3EBFFFDF2E9FFFDF1E7FFC2B9B2FFB2ADA9FFC2C2C2FFBCBC
          BCFFB2B2B2FFA7A7A7FF9F9F9FFF6A6A6AFF434343FE313131B9000000280000
          00130000000700000002000000010000000000000000000000003A3A3AA97B78
          77FFFCEEE3FFFBE6D6FFBDA998FF726860FF6B6B6BFF606060FFB0AFAEFFFEFC
          F9FFFEFAF6FFFEF8F4FFFEF7F2FFECE5E0FFAFAAA7FFD0CFCEFFD2D2D2FFCCCC
          CCFFC5C5C5FFBEBEBEFFB6B6B6FFAAAAAAFF323232FF5C5C5CFF484848E30606
          0639000000160000000900000002000000010000000000000000505050E8BFBD
          BBFFFDF5EEFFFCEEE3FFEBDACCFF655D56FFA2A2A2FF898989FF767676FFC8C8
          C8FFF1EFEEFFF3F0EFFFDBD9D7FFC3C1BFFFD7D6D5FFE8E8E8FFE3E3E3FFDBDB
          DBFFD5D5D5FFCFCFCFFFCACACAFFC6C6C6FF4C4C4CFF8C8C8CFF707070FF5757
          57F817171760000000180000000B000000040000000100000000646464FDE3E3
          E3FFFEFBF8FFFEF6F1FFEFE5DDFF7C7671FFB9B9B9FFAFAFAFFF8F8F8FFF7C7C
          7CFF8F8F8FFFA9A9A9FFC1C1C1FFD3D3D3FFE0E0E0FFE7E7E7FFEBEBEBFFEAEA
          EAFFE5E5E5FFDFDFDFFFE1E1E1FFBDBDBDFF7F7F7FFFABABABFF9E9E9EFF8989
          89FF616161FE353535970000001A0000000C0000000500000001727272FDC9C9
          C9FFFFFFFFFFFFFDFCFFD8D6D3FFAAA8A5FFD2D2D2FFC8C8C8FFBDBDBDFFA7A7
          A7FF898989FF868686FFA6A6A6FFCCCCCCFFD6D6D6FFDEDEDEFFE5E5E5FFEAEA
          EAFFEEEEEEFFECECECFFF3F3F3FFB3B3B3FFB4B4B4FFC3C3C3FFBBBBBBFFB2B2
          B2FFA2A2A2FF757575FF565656CD030303210000000E00000005818181E7A3A3
          A3FFEBEBEBFFEDEDEDFFC8C8C8FFD5D5D5FFE8E8E8FFDFDFDFFFD5D5D5FFCBCB
          CBFFBBBBBBFF868686FF8D8D8DFF8E8E8EFFADADADFFD0D0D0FFDDDDDDFFE2E2
          E2FFECECECFFECECECFFD6D6D6FFCFCFCFFFE2E2E2FFDADADAFFD2D2D2FFCACA
          CAFFC1C1C1FFB9B9B9FF8F8F8FFF707070F11414143E0000000D6D6D6DA29898
          98FFB5B5B5FFCBCBCBFFDFDFDFFFF1F1F1FFF1F1F1FFEDEDEDFFE9E9E9FFE2E2
          E2FFCECECEFF8D8D8DFF878787FF878787FF929292FF8E8E8EFFB9B9B9FFE3E3
          E3FFE5E5E5FFE3E3E3FFE4E4E4FFEFEFEFFFEEEEEEFFEAEAEAFFE5E5E5FFE0E0
          E0FFDADADAFFD1D1D1FFC9C9C9FFAEAEAEFF7C7C7CFD37373772040404065A5A
          5A7F949494F58F8F8FFFB0B0B0FFD1D1D1FFEDEDEDFFF1F1F1FFF1F1F1FFEFEF
          EFFFE4E4E4FFB9B9B9FF9E9E9EFF939393FF878787FF818181FF949494FF9393
          93FFAEAEAEFFD4D4D4FFE4E4E4FFEBEBEBFFEFEFEFFFEFEFEFFFEEEEEEFFEDED
          EDFFEAEAEAFFE5E5E5FFDFDFDFFFD8D8D8FFB0B0B0FF7C7C7CD7000000000000
          0000000000001D1D1D28727272A3949494E98E8E8EFFA9A9A9FFC7C7C7FFE7E7
          E7FFF1F1F1FFF0F0F0FFECECECFFDADADAFFBDBDBDFF989898FF7C7C7CFF6E6E
          6EFF919191FF9A9A9AFFAEAEAEFFD3D3D3FFE8E8E8FFEEEEEEFFF0F0F0FFEFEF
          EFFFEEEEEEFFEEEEEEFFEBEBEBFFE7E7E7FFD9D9D9FF939393FC000000000000
          0000000000000000000000000000000000000E0E0E125F5F5F84909090D69696
          96FDA2A2A2FFC0C0C0FFDDDDDDFFF1F1F1FFEDEDEDFFE9E9E9FFD7D7D7FFCECE
          CEFFCECECEFFC4C4C4FFB3B3B3FFA4A4A4FFACACACFFD1D1D1FFECECECFFF1F1
          F1FFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFE1E1E1FF9B9B9BFB000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004545455C888888C19F9F9FF59C9C9CFFB9B9B9FFD4D4D4FFECECECFFEAEA
          EAFFE5E5E5FFDCDCDCFFD2D2D2FFC8C8C8FFB9B9B9FFACACACFFACACACFFCFCF
          CFFFEEEEEEFFF1F1F1FFF0F0F0FFF0F0F0FFCECECEFF969696D6000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002323232E777777A39E9E9EE79B9B9BFFB1B1
          B1FFCCCCCCFFE3E3E3FFE8E8E8FFDFDFDFFFD5D5D5FFC2C2C2FFA2A2A2FA9B9B
          9BDDAAAAAAFFC6C6C6FFE3E3E3FFD1D1D1FFA9A9A9F256565670000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E0E0E126161
          6180989898D6A2A2A2FCACACACFFC3C3C3FFCFCFCFFFBEBEBEFF838383C00000
          0000262626338A8A89BCAAAAAAF79C9C9CD65757577000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004747475C8B8B8BBEA0A0A0E38C8C8CC0252525310000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFF007FFFFE003FFFFC000FFFF800
          07FFF80003FFE00001FF8000007F0000003F0000001F00000007000000030000
          00010000000000000000000000000000000000000000E0000000FC000000FFC0
          0000FFF80000FFFF0041FFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020420330C139EFF0C129DFF05073F660000000000000000000000000000
          000000000000070968AA0A0D9BFF0A0D9BFF02031F3300000000000000000000
          000000000000010F0622077128FF056E26FF046B24FF036922FF036721FF0265
          1FFF014314AA01280C6600000000000000000000000000000000000000000000
          000000000000111B9ACC1019ACFF0A107ECC0000000000000000000000000000
          000001010C111014BCFF0F12BBFF0A0B82CC0000000000000000000000000000
          00000000000002150A220D9A45FF0A9440FF098F3DFF078A39FF068736FF0479
          2DFF037028FF02641FFF024F18CC000702110000000000000000000000000000
          00000000000009104E661424BCFF0E169FFF0508406603052A4403052A440305
          2B440A0E66881117BEFF0F14B6FF04063E660000000000000000000000000000
          00000000000002150A220E9C45FF0C9641FF054E218800000000000000000000
          000002341566057B2EFF036721FF01280C660000000000000000000000000000
          00000000000002030D11182DC5FF1220AFFF101CA9FF101BA9FF0F19A8FF111C
          B1FF131FC0FF121BBFFF0E14AAFF01010A110000000000000000000000000000
          00000000000003160A220F9F48FF0A8636FF033B148800000000000000000000
          000001120722068435FF047228FF023611880000000000000000000000000000
          00000000000000000000112285AA1A31C7FF192FC6FF060C3544060B3444090F
          4E661523C2FF141FC0FF090D6BAA000000000000000000000000000000000000
          00000000000003160A2211A14AFF0C8939FF043C158800000000000000000000
          000003371766078838FF05792EFF022A0E660000000000000000000000000000
          00000000000000000000070F36441C37C9FF1323ABFF0407223300000000080E
          42551727C3FF121FB6FF03052A44000000000000000000000000000000000000
          00000000000003170B2213A54DFF0C8D3BFF077329FF077128FF066F27FF077C
          2FFF098F3CFF098D3BFF04481A99000000000000000000000000000000000000
          0000000000000000000002040E111E3DCBFF1324AAFF060C4066000000001120
          85AA182CC5FF101CA9FF01010B11000000000000000000000000000000000000
          00000000000003170B2216AA50FF13A54DFF11A049FF0F9D46FF0E9944FF0C96
          41FF0B9440FF05461C8800000000000000000000000000000000000000000000
          000000000000000000000000000013297C99172EB4FF0E1A82CC02030D111B35
          C8FF1A31C7FF0910619900000000000000000000000000000000000000000000
          00000000000004180B2218AD53FF15A950FF0B5829880000000000000000031F
          0E330B8737FF077028FF02250D55000000000000000000000000000000000000
          0000000000000000000000000000070F2A331E3FC6FF1224A6FF12257A991D3A
          CAFF162BB8FF0305203300000000000000000000000000000000000000000000
          00000000000004180C221BB156FF139643FF0641198800000000000000000000
          0000119F49FF0C8234FF08732AFF000000000000000000000000000000000000
          000000000000000000000000000000000000234CD1FF1C39BEFF2043CEFF1E3E
          CCFF1323AAFF0000000000000000000000000000000000000000000000000000
          00000000000004190C221DB65AFF159A46FF084B1D9902100622021006220738
          1A5515A54DFF13A44CFF085E23CC000000000000000000000000000000000000
          00000000000000000000000000000000000011266277234DD1FF2248CFFF1F42
          CDFF080F4C770000000000000000000000000000000000000000000000000000
          00000000000004190D2220BA5DFF17A24BFF108638FF108537FF128D3DFF18AD
          53FF18AB52FF15A04AFF04280F55000000000000000000000000000000000000
          000000000000000000000000000000000000050B1C22132B718812286F880D1B
          6288020416220000000000000000000000000000000000000000000000000000
          000000000000020D0611126433881164328811633188106230880F602F880F5F
          2F880B4723670213082300000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000006000000070000
          0005000000020000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000006000000090000000B0000000B0000
          000A000000090000000700000003000000000000000000000000000000000000
          0000000000000000000000000001000000040000000B21160B3A5F3E1E8A0000
          0010000000070000000200000000000000000000000000000000000000000000
          00000000000000000002000000080000001400000022000000290000002A0000
          002800000023000000180000000A000000020000000000000000000000000000
          00000000000000000002000000050000000C68482692A76325FAB77536FF6544
          2297000000130000000800000003000000010000000000000000000000000000
          00000000000100000005040302177E4E23C69C551AFE964E13FE91480FFE8C44
          0CFE8D440EFD904910F600000015000000050000000000000000000000000000
          00000000000100000004271E1439A26D39DBC08144FFEBBE86FFF2C38EFFB575
          38FB64442394000000160000000C000000060000000400000003000000030000
          0004000000060000000D0000001D2215085D934A12FDE09A49FFEAA34FFFE9A3
          4EFFE8A14DFF8D460EFE0000001A000000060000000100000000000000000000
          000000000001634C347AB77533FBDEB285FFFBD9B0FFFAD7ABFFFAD5A6FFF3CA
          97FFBB7C3FFD906031CC281C104B00000015000000100000000E0000000E0000
          00110000001606040227603B199E995318F9DB984BFFEBA956FFEAA653FFEAA6
          51FFEAA34FFF924C13F900000019000000060000000100000000000000000000
          00000000000149392959C38545FCF8E3CBFFFDE6CDFFFBDDBBFFFBDBB5FFFBD9
          AFFFF8D3A8FFD19A63FFAA6426FD9A6633DA714D2AA453391F814B331C795E3E
          2093835327C49F5B22F5B16B2DFFDE9F57FFEEB165FFEDAF5FFFECAB5DFFEBAA
          57FFEAA755FF955117F500000015000000050000000100000000000000000000
          0000000000000000000271593E88CE995FFDFCECD9FFFDEAD3FFFCE4C6FFFCE0
          BFFFFCDDBCFFFBDCB5FFF2CCA2FFD7A46FFFC2854BFFB77639FFB07032FEB776
          3AFFC5894CFFDFAA6BFFF3BF7DFFF3BB77FFF2B871FFEFB56BFFEDB166FFECAF
          61FFEEB975FF975621EF00000011000000040000000000000000000000000000
          000000000000000000010000000380644699D29F67FDF8E6D2FFFEEFDEFFFDE9
          D1FFFCE4C8FFFCE2C3FFFCDFBFFFFCDEBAFFFBDCB5FFFAD7AFFFF8D3A7FFF8D2
          A1FFF7CE9BFFF5CB93FFF4C88EFFF4C586FFF3BE7FFFF3BD7AFFF3BD7BFFE7B6
          7DFFE8BD8BFF975C2BE90000000D000000030000000000000000000000000000
          000000000000000000000000000100000003785F438EC98D4CFBEACCACFFFEF2
          E5FFFDEFDEFFFDEAD5FFFDE6CCFFFCE4C7FFFCE1C3FFFCDFBDFFFBDCB7FFFAD9
          B1FFF9D5AAFFF8D3A4FFF6CF9EFFF5CD96FFF5CC97FFE9BD8AFFBC824DFF9461
          34D97E5530B6955F32DB00000008000000020000000000000000000000000000
          0000000000000000000000000000000000010000000245382A52BD8C56E6D5A0
          68FFECCFB1FFFBEEDFFFFEF2E3FFFDEDDBFFFDEAD4FFFCE7CEFFFCE5CAFFFCE1
          C3FFFBE0C0FFFBDFBCFFFADEBCFFEBC8A2FFCC9B6BFFA7652BFA765334A50000
          000F0000000A2F22164300000003000000010000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000003715B
          4285C18E56E9CA8E4CFDDBAF7FFFE6C4A1FFEDD3B6FFF1D9C0FFF1DBC1FFEDD2
          B6FFE5C3A1FFD7AB81FFC28851FFB07036F98F6740C1221A1236000000080000
          0004000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000044136284E937250ADB58756DBC18A50EFC3874AF7C18346F8BD82
          49F4B4804BE79D744BC8634C3680100D091D0000000700000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000030000000400000005000000060000
          0006000000060000000500000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3E1E00FE3C3E003E003E1C3E003
          E1C3F007E1C3F087E007F087E00FF80FE187F80FE1C7FC1FE007FC1FE007FC1F
          E007F81FE007F00FE003E003C003C0000001C0000001C0000001E0000003E000
          0003F0000003F8000003FE000007FF00003FFFC001FFFFFC0FFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000005000000090000000900000005000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000007000000140000083800000E4700000012000000060000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000040000000200000001000000000000
          0000000000050000001300000E54020253ED020242BE00000942000000120000
          0005000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000040000000B00000012000000100000000800000002000000000000
          00010000000700000936030361F40D0DC8FF0A0AA6FF010134B00000022D0000
          000F000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00040000000E0000002000001C7700001D770000001000000004000000000000
          0000000000050000011908086B9F1010D5FF0E0ED5FF08089AFF0101289E0000
          00220000000D0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000040000
          000E0000002301011E8804046FEC020235860000001300000004000000000000
          0000000000020000000B00000529090975A91010D6FF1010D5FF070787F60101
          1F8C0000001F0000000B00000003000000010000000000000000000000000000
          00000000000000000000000000000000000000000001000000040000000D0000
          002201011C8504046FE905056EAD000002280000000C00000002000000000000
          000000000001000000040000000E01010930090979AC1010D6FF0F0FCEFF0606
          73E900001A7B0000001B0000000A000000020000000100000000000000000000
          000000000000000000000000000000000001000000040000000D000000210101
          1C8204046CE706067CBE01011145000000130000000500000001000000000000
          00000000000000000001000000040000000F01010C330B0B7DAF1010D7FF0E0E
          C4FF050563DD0000156A00000018000000090000000200000000000000000000
          0000000000000000000000000001000000040000000D0000002101011B800404
          6AE506068ACD01011E5900000018000000070000000100000000000000000000
          0000000000000000000000000001000000040000000F01010E370B0A80B11313
          D7FF0D0DBCFF040455D00000105B000000160000000700000002000000000000
          00000000000000000001000000040000000D0000002000001B7F040469E40707
          96DA02022C6A0000001B00000009000000020000000000000000000000000000
          000000000000000000000000000000000001000000050000000F01010F380B0B
          80B01313D7FF0C0EB3FF030349C500000C4C0000001300000006000000010000
          000000000001000000030000000C0000001F01011C80040469E50808A2E60303
          3A790000001D0000000B00000003000000010000000000000000000000000000
          00000000000000000000000000000000000000000001000000050000000F0101
          0E370C0B80AF1313D8FF0D0DABFF02023EB90000083E00000011000000050000
          0002000000040000000C0000001F01011C8305056CE70909ACEF040449860000
          001F0000000C0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          000F01010E350C0C7EAD1414D8FF0C0CA5FF020236AF00000532000000100000
          00080000000D0000001E01011E8605056FE90C0CBAF806065691000000210000
          000D000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00050000000E01010D320B0B7CAA1414D9FF0C0C9EFF01012FA6000002290000
          00180000002101011F8A070774ED0C0CC4FF0606649B000000220000000D0000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000040000000D01010A2E0B0C78A51414D9FF0B0B99FF010129A00000
          00350101229307077BF10E0EC8FF080870A3000001240000000E000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000040000000D000006280B0B719F1414DAFF0B0B92FD0101
          38D0090984F81212CCFF0B0B79AB0000072C0000000F00000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000500000010000001280A0B71A41415D6FE0F0F
          B3FF1313D3FF0B0B80B501010C3C000000120000000500000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000006000000110000083A060655AD1515DAFF1515
          DBFF1414D5FB06064FA0000000260000000F0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000060000000F00000C4003033AB20E0E9FFF1515DCFF1010
          ADD91213C5EF0A0988F1010120870000001B0000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000006000000100101134E040449BD1111AAFF1A1ADEFF0F0F8FB80202
          1A4C07074D7E1111B1E108087DED01012082000000190000000A000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00060000001002021C5E07075BCA1515B5FF1D1DDFFF131391B703031A410000
          0015000000180606406C0F0FA4D508087AEC01011F81000000180000000A0000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000070000
          00100303286E0B0B73D91818C1FF1E1EE1FF131392B603031B3F0000000E0000
          000600000008000000120505335C0E0E97C808087BED01012081000000180000
          000A000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000007000000110505
          368111118DE81D1DCEFF2222E3FF141491B303031B3D0000000C000000040000
          00010000000200000006000000100404254C0F0F8BB908087DED010120820000
          00170000000A0000000300000000000000000000000000000000000000000000
          0000000000000000000000000001000000030000000801010920080847931717
          AAFA2121DAFF2222E5FF15158FAF040419380000000B00000004000000010000
          00000000000000000001000000050000000E020217390D0D7DA90A0A7FEF0101
          2184000000160000000900000003000000000000000000000000000000000000
          000000000000000000010000000300000009030318360D0D5FA81E1EBEFF2626
          E4FF2727E6FF16168CAA030318320000000A0000000400000001000000000000
          0000000000000000000000000001000000040000000B01010A260C0C6E970A0A
          80ED010123860000001300000006000000010000000000000000000000000000
          000000000001000000030000000807072D5013137BBD2121CBFF2828E8FF2828
          E7FF181888A40303142B00000009000000030000000100000000000000000000
          000000000000000000000000000000000001000000030000000A000000140C0B
          5B810B0B7AE0000020790000000A000000020000000000000000000000000000
          000000000002000000070B0B43681B1B9CD52727D7FF2929E9FF2828E8FF1616
          829A020210230000000700000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000003000000080000
          001008083E5D0504306400000008000000020000000000000000000000000000
          0000000001030B0B435E2121BEEC2929E1FF2C2CEAFF2C2CE9FF17177B900101
          0917000000060000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0005000000080000000700000003000000010000000000000000000000000000
          00000000000200000309191985992C2CEAFF2A2AE1F6151571850000010C0000
          0005000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000100000001000000000000000000000000000000000000
          000000000001000000020000000612125A681313647400000008000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000030000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00F0FFFFFFC07FFFFFC03FFFC0C01FFF80800FFF00C007FE00C003FC00C001
          F800E001F001F000E003F8004003FC000007FE00000FFF00001FFF80003FFFC0
          007FFFE000FFFFE001FFFFC000FFFF80007FFF00003FFC00001FF800000FF000
          6007E000F003C001F803C003FC03C007FF03C01FFF87C03FFFFFE07FFFFFF9FF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000050000000600000004000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0007000000120000001800000011000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000F6F3A0FBB884511E908040136000000150000000600000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          00128A4613E9B4641DFF824312E10000002E0000001100000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000D4D2A0D8B9C5016FFA45619FF62340EB7000000260000000C000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00070000001D8F4613F9C9782AFF8D4410FE221205660000001B000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0003000000116D3B13B8A95D1EFFC37328FF8C4612F300000031000000110000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000009140C043A8D4412FFD78836FFA4581AFF5F320DB3000000210000
          0009000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000400000014894B19E3BD712CFFD18235FF8E4411FD040201390000
          0012000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000020000000C58321494A3591FFFDD9141FFA6581AFF63350EB50000
          001E000000080000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000008150C0535904613FFDE9546FFC8792DFF904712F60000
          002B0000000D0000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000600000015944E1BF4CE853FFFDE903FFF934912FF2A17
          0768000000140000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000400000012814B1FCDB97234FFE1984AFFB1611EFF7840
          12CA0000001D0000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0000000000010000000400000010643D1CA1AC642BFFE49E53FFCA7828FF924B
          14F5000000230000000A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00010000000200000004000000070000000A0000000C0000000A000000060000
          000200000001000000030000000F422A1574A15923FFE6A35BFFDC8932FF8F44
          11FF0402012C0000000C00000002000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000050000
          00090000000E00000017000000210000002C000000320000002A000000170000
          000800000001000000030000000E291B0E569C521FFFE8A760FFE18F37FF984D
          16FF2B18085B0000000E00000002000000000000000000000000000000000000
          000000000000000000000000000100000003000000070000000D000000150000
          00210E0A063D48311C857A502BBF955D30DEA4622EF1A5602BF56440229C0000
          000F00000003000000030000000F2A1C10589D5521FFE9A861FFE4943DFFA055
          1AFF43260D780000000E00000003000000000000000000000000000000000000
          0000000000000000000116110D1B53402F65886342A9A57345D4B47744EEB772
          3BFCB26A33FFBB763FFFC8864DFFD19257FFDB9D5FFFA46434EF3F2C1B6E0000
          000E000000030000000400000012452E1B79A65F2BFFE9A456FFE69944FFA85D
          1FFF5731118E0000000E00000003000000010000000000000000000000000000
          00000000000000000001BD8C61E2D09663FFD8A475FFE0AA75FFE8B681FFF2C3
          8EFFF9CC96FFF9CA93FFF8C88EFFE1A86EFFA96C39F247332181000000190000
          00070000000300000007000000196D482AAAB57038FFEAA14FFFE99E4BFFAE63
          24FF6239159A0000000D00000003000000000000000000000000000000000000
          00000000000000000001A7825EC2E4BA91FFFDE8CDFFFCD6A8FFFCD4A6FFFBD3
          A3FFFBD19FFFFAD09CFFE9B680FFB2723FF6553B248F000000200000000E0000
          00080000000900000011000000259E5D28EFD68F48FFEDA655FFECA250FFAC62
          26FF593414890000000B00000002000000000000000000000000000000000000
          0000000000000000000181685092DEAE82FFFEEEDAFFFCDBB3FFFCD9AFFFFCD7
          ACFFFCD6A9FFF3C898FFC28652F96D4E32A80000002E0000001D000000160000
          00180000001C0000002581522ABEC27C3FFFF0AF63FFEFAB5CFFEEA857FFA35A
          21FF39220E5C0000000800000002000000000000000000000000000000000000
          00000000000000000001473B2E4FDAA270FFFEF2E3FFFDE4C4FFFDDFBBFFFDDD
          B6FFFDDAB1FFFBD8ADFFE4B484FEB17949EA88603DBC573E288564462B938A5E
          37C2A26939E2AA652FFBC68449FFF4B872FFF2B46BFFF2B164FFEBA559FF9D53
          1DFE050301180000000500000001000000000000000000000000000000000000
          000000000000000000000B09080ED89B62FFFEF3E6FFFDEBD3FFFDE4C5FFFDE2
          C1FFFDE0BCFFFDDDB6FFFCDAB1FFE6B789FFD49B68FFC5834FFFC58650FFD095
          5FFFDCA36BFFEDB77DFFF7C283FFF6BF7CFFF5BA74FFF4B56DFFD48F4CFF9B5C
          27E30000000D0000000300000000000000000000000000000000000000000000
          0000000000000000000000000001DBA775F8F9E9D7FFFEF1E0FFFEEACFFFFDE7
          CCFFFDE5C6FFFDE6C9FFFDE4C4FFFDDCB6FFFDDBB1FFFCD7ACFFFBD5A7FFFBD2
          A0FFFBCF9AFFFACB93FFF9C78CFFF8C385FFF8BF7DFFF6BB76FFBB7539FF6A44
          2296000000080000000200000000000000000000000000000000000000000000
          0000000000000000000000000001D0A77EE4F4DDC4FFFFF6EAFFFEEED9FFF3D5
          B6FFF2D4B3FFFEF1E0FFFEF4E6FFFEEBD5FFFDE0BBFFFDDCB3FFFCD8ADFFFCD6
          A8FFFCD3A1FFFBCF9BFFFBCC93FFFAC88DFFFAC484FFE7AE6FFFA96632F60503
          0213000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000B49676C1F1D1B2FFFFF9F1FFF6DCC1FFD0A2
          74ECCF9D6EF1E2B993FFFAEEDFFFFEF6E9FFFEF4E6FFFEF0DDFFFEEAD1FFFEE6
          C9FFFDE0BBFFFDDDB6FFFDDEB8FFF4CFA6FFDAA97CFFAD6735FD36271B4D0000
          0006000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000008A766091EFC99FFFFEF9F1FFE6BA8DFC7A65
          4F861915121E937960A6D29860FDD49C68FFDCAE84FFDDB28CFFE6C4A4FFE4C2
          A1FFD8AA83FFD3A379FFC38555FFB5733FFCA1724BD4261D1537000000060000
          0002000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004B41374DEFC18EFFF7E1C7FFCCA67FDD0000
          00010000000100000001000000023E342A47836A549694755AACB48963D7B286
          61D8927053B188694EA74D3C2E61000000080000000600000004000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000EDBE8AFAF3C99DFF7363527A0000
          0000000000000000000000000000000000010000000100000002000000020000
          0003000000030000000300000003000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000095826A99D2B18ADB000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFF03FFFFFF01FFFFFF00FFFFFF007FFFFF007FFFFF003FFFFF803FFFFF
          801FFFFF801FFFFFC00FFFFFC00FFFFFC00FFFFFE007FFF04007FF000007F800
          0007F0000007E0000003E0000007E0000007E0000007E0000007F000000FF000
          000FF000000FF800001FF800003FF800007FFC7800FFFCFF8FFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000200000002000000020101010301010103010101030101
          0103000000020000000200000002000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002010101030101
          0105010101060101010702020208020202080202020902020209020202090202
          0209020202080202020801010107010101060101010501010103000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000010101010301010105020202080303030C0404
          0410040404130505051505050517050505180505051905050519050505190505
          051905050518050505170505051504040413040404100303030C020202080101
          0105010101030000000100000000000000000000000000000000000000000000
          0000000000000000000101010103020202070303030E050505160707071E0808
          0824090909280A0A0A2A0A0A0A2C0A0A0A2E0B0B0B2F0B0B0B2F0B0B0B2F0B0B
          0B2F0A0A0A2E0A0A0A2C0A0A0A2A09090928080808240707071E050505160303
          030E020202070101010300000001000000000000000000000000000000000000
          00000000000100000001010101050303030E0606061B090909290C0C0C340E0E
          0E3C0F0F0F40101010431010104610101047111111491111114A1111114A1111
          11491010104710101046101010430F0F0F400E0E0E3C0C0C0C34090909290606
          061B0303030E0101010500000001000000010000000000000000000000000000
          000000000001000000020202020805050514090909250D0D0D38101010461313
          13511616165D191919691B1B1B731C1C1C791D1D1D7C1D1D1D7D1D1D1D7D1D1D
          1D7C1C1C1C791B1B1B73191919691616165D13131351101010460D0D0D380909
          0925050505140202020800000002000000010000000000000000000000000000
          000000000001000000020202020705050514090909260E0E0E3A1212124B1616
          165A1B1B1B712020208723232393252525992525259A2525259B2525259B2525
          259A2525259923232393202020871B1B1B711616165A1212124B0E0E0E3A0909
          0926050505140202020700000002000000010000000000000000000000000000
          00000000000000000001010101050303030E0707071D0B0B0B2E0F0F0F3E1212
          124B1616165A5E504596B19379D2DEB795EFF2C7A1FCF6CAA3FFF6CAA3FFF2C7
          A1FCDEB795EFB19379D25E5045961616165A1212124B0F0F0F3E0B0B0B2E0707
          071D0303030E0101010500000001000000000000000000000000000000000000
          000000000000000000010101010302020207040404100606061A090909264339
          2F61BE9C7ECEF0C49DFAF8CCA5FFFAD0A9FFFCD2ACFFFDD3AFFFFDD3AFFFFCD2
          ACFFFAD0A9FFF8CCA5FFF0C49DFABE9C7ECE43392F61090909260606061A0404
          0410020202070101010300000001000000000000000000000000000000000000
          000000000000000000000000000101010103010101060202020A6F5A4879E0B5
          90EAF8CBA4FFFBD1ADFFFCD5B3FFFCD6B5FFFCD7B7FFFCD8B8FFFCD8B8FFFCD7
          B7FFFCD6B5FFFCD5B3FFFBD1ADFFF8CBA4FFE0B590EA6F5A48790202020A0101
          0106010101030000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000016C574471E6B890F0F8CC
          A5FFFBD3B0FFFBD6B5FFFBD8B9FFFBDABCFFFBDBBFFFFBDCC0FFFBDCC0FFFBDB
          BFFFFBDABCFFFBD8B9FFFBD6B5FFFBD3B0FFF8CCA5FFE6B890F06C5744710000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003A2E243DDDB088E8F6C89FFFF8CF
          AAFFF9D2B0FFF9D5B5FFFAD8BBFFFADBBFFFFADCC2FFFADEC4FFFADDC4FFFADC
          C2FFFADABFFFFAD8BBFFF9D5B5FFF9D2B0FFF8CFAAFFF6C79FFFDDB088E83A2E
          243D000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B58E6CC0F3C093FFF6C79DFFF7CB
          A4FFF7CEAAFFF8D1AFFFF8D5B5FFF9D7B9FFF9D9BDFFF9DABEFFF9DABEFFF9D9
          BDFFF9D7B9FFF8D5B5FFF8D1AFFFF7CEAAFFF7CBA4FFF6C79DFFF3C093FFB58E
          6CC0000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004A39294FE6B282F9F2BC8DFFF3BF93FFF4C3
          98FFF4C69DFFF5C8A2FFF5CCA8FFF6CEABFFF6D0ADFFF6D0AFFFF6D0AFFFF6CF
          ADFFF6CDABFFF5CCA8FFF5C8A2FFF4C69DFFF4C398FFF3BF93FFF2BC8DFFE6B2
          82F94A38294F0000000000000000000000000000000000000000000000000000
          00000000000000000000000000009F7855ADEAB27FFFEFB783FFF0B886FFF0BA
          8AFFF0BC8DFFF1BE91FFF1C094FFF2C297FFF2C399FFF2C49BFFF2C49AFFF2C3
          98FFF2C297FFF1C094FFF1BE91FFF0BC8EFFF0BA8AFFF0B886FFEFB784FFEAB2
          7FFF9F7855AD0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C99668E1E9AC77FFECAF77FFECB079FFECB1
          7CFFECB27DFFEDB37FFFEDB481FFEDB582FFEDB684FFEDB684FFEDB684FFEDB6
          84FFEDB582FFEDB481FFEDB37FFFECB27DFFECB17CFFECB079FFECAF77FFE9AC
          77FFC99668E10000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89E6CF8E5A66EFFE7A86FFFE7A76FFFE8A9
          6FFFE8A870FFE8A971FFE8A973FFE8A973FFE8AB73FFE8AA74FFE8AA73FFE8AA
          73FFE8A972FFE8A973FFE8A971FFE8A871FFE8A870FFE7A86FFFE7A76FFFE5A6
          6EFFD89E6CF80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D69966FFE1A063FFE29F63FFE29F64FFE29F
          64FFE29F64FFE2A164FFE4A56DFFE5AA76FFE6AF7DFFE7B281FFE7B281FFE6AF
          7DFFE5AA76FFE4A56DFFE2A064FFE2A064FFE2A064FFE29F64FFE29F63FFE19F
          63FFD69966FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D0905EFFDD985BFFDE985BFFDE985BFFDE98
          5BFFDF9A5DFFE2A46EFFE5AD7CFFE5AF7EFFE5AF7EFFE5AF7FFFE5AF7FFFE5AF
          7FFFE5AF7EFFE5AD7DFFE2A46EFFDF9A5EFFDE985AFFDE985BFFDE995BFFDD98
          5AFFD0905DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C58452F8D69053FFD89153FFD89153FFD892
          53FFDDA06BFFE1AC7DFFE1AC7DFFE1AC7DFFE1AC7DFFE1AC7DFFE1AC7DFFE1AC
          7CFFE1AD7CFFE1AC7CFFE1AC7DFFDDA06BFFD89253FFD89152FFD89252FFD68F
          53FFC58452F80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000B07343E1CE884DFFD48D4EFFD48D4DFFD99A
          62FFE1AF82FFE1AF81FFE1AF82FFE1AF81FFE1AF82FFE1AF81FFE1AF82FFE1AF
          82FFE1AF81FFE1AF82FFE1AF82FFE1AF82FFD99A61FFD48D4DFFD48D4DFFCE88
          4DFFB07343E10000000000000000000000000000000000000000000000000000
          000000000000000000000000000085542FADC57D45FFCF8848FFCF8848FFDAA4
          73FFE0B187FFE0B288FFE0B188FFE0B288FFE0B288FFE0B187FFE0B188FFE0B1
          87FFE0B287FFE0B188FFE0B288FFE0B188FFDAA473FFCF8748FFCF8748FFC57D
          45FF85552FAD0000000000000000000000000000000000000000000000000000
          00000000000000000000000000003C25144FB96E3BF9C98042FFCB8343FFDFB2
          89FFE0B690FFE0B690FFE0B690FFE0B690FFE0B690FFE0B690FFE0B690FFE0B6
          90FFE0B690FFE0B690FFE0B690FFE0B690FFDFB28AFFCB8342FFC98042FFB96E
          3BF93C25134F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008E542AC0BF733AFFC77E3FFFDFB7
          93FFE1BB99FFE1BB99FFE1BB99FFE1BB99FFE1BB99FFE1BB99FFE1BB99FFE1BB
          99FFE1BB99FFE1BB99FFE1BB99FFE1BB99FFDFB692FFC77E3EFFBF733AFF8E54
          29C0000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002C1A0C3CA65F2DE8BF7337FFDAAE
          86FFE3C1A3FFE3C1A3FFE3C1A3FFE3C1A3FFE3C2A3FFE3C1A3FFE3C1A3FFE3C1
          A3FFE3C1A3FFE3C1A3FFE3C2A3FFE3C1A3FFDAAE86FFBF7437FFA65F2DE82C1A
          0C3C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000053321A70B0683AF0CB8F
          61FFE8CCB4FFE8CCB4FFE8CDB4FFE8CCB4FFE8CCB4FFE8CCB4FFE8CCB4FFE8CC
          B4FFE8CDB4FFE8CCB4FFE8CDB4FFE8CDB4FFCB9062FFB0683AF053321A700000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000055362170B274
          4CE8D19D79FFE7CDB9FFEDDAC9FFEDDAC9FFEDDAC9FFEDDAC9FFEDDAC9FFEDDA
          C9FFEDDAC9FFEDDAC9FFE7CDB9FFD19D79FFB2744CE855362170000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002F20
          153C9A6F52C0CE9C80F9DFBAA3FFE7CCBAFFEDD9CAFFF1E2D5FFF1E2D5FFEDD9
          CAFFE7CCBAFFDFBAA3FFCE9D80F99A6F52C02F20153C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000402F234F957965ADC7A794E1DBBAA6F8E0BBA7FFE0BAA7FFDBBA
          A6F8C7A794E1957965AD402F234F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFE007FFFE00007FF800001FF000000FE0000007C0000003C000
          0003C0000003E0000007E0000007F000000FF800001FFC00003FFC00003FF800
          001FF800001FF800001FF800001FF800001FF800001FF800001FF800001FF800
          001FF800001FFC00003FFC00003FFE00007FFF0000FFFF8001FFFFE007FFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000200000002000000020101010301010103010101030101
          0103000000020000000200000002000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002010101030101
          0105010101060101010702020208020202080202020902020209020202090202
          0209020202080202020801010107010101060101010501010103000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000010101010301010105020202080303030C0404
          0410040404130505051505050517050505180505051905050519050505190505
          051905050518050505170505051504040413040404100303030C020202080101
          0105010101030000000100000000000000000000000000000000000000000000
          0000000000000000000101010103020202070303030E050505160707071E0808
          0824090909280A0A0A2A0A0A0A2C0A0A0A2E0B0B0B2F0B0B0B2F0B0B0B2F0B0B
          0B2F0A0A0A2E0A0A0A2C0A0A0A2A09090928080808240707071E050505160303
          030E020202070101010300000001000000000000000000000000000000000000
          00000000000100000001010101050303030E0606061B090909290C0C0C340E0E
          0E3C0F0F0F40101010431010104610101047111111491111114A1111114A1111
          11491010104710101046101010430F0F0F400E0E0E3C0C0C0C34090909290606
          061B0303030E0101010500000001000000010000000000000000000000000000
          000000000001000000020202020805050514090909250D0D0D38101010461313
          13511616165D191919691B1B1B731C1C1C791D1D1D7C1D1D1D7D1D1D1D7D1D1D
          1D7C1C1C1C791B1B1B73191919691616165D13131351101010460D0D0D380909
          0925050505140202020800000002000000010000000000000000000000000000
          000000000001000000020202020705050514090909260E0E0E3A1212124B1616
          165A1B1B1B712020208723232393252525992525259A2525259B2525259B2525
          259A2525259923232393202020871B1B1B711616165A1212124B0E0E0E3A0909
          0926050505140202020700000002000000010000000000000000000000000000
          00000000000000000001010101050303030E0707071D0B0B0B2E0F0F0F3E1212
          124B1616165A23232381353535B0444444D24E4E4EEA545454FA545454FA4E4E
          4EEA444444D2353535B0232323811616165A1212124B0F0F0F3E0B0B0B2E0707
          071D0303030E0101010500000001000000000000000000000000000000000000
          000000000000000000010101010302020207040404100606061A090909261414
          144A3131319C4C4C4CE4575757FF595959FF595959FF5A5A5AFF5A5A5AFF5959
          59FF595959FF575757FF4C4C4CE43131319C1414144A090909260606061A0404
          0410020202070101010300000001000000000000000000000000000000000000
          000000000000000000000000000101010103010101060202020A1616164C3A3A
          3ABA545454FF575757FF595959FF5C5C5CFF5D5D5DFF5F5F5FFF5F5F5FFF5D5D
          5DFF5C5C5CFF595959FF575757FF545454FF3A3A3ABA1616164C0202020A0101
          0106010101030000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000001131313423B3B3BC55252
          52FF565656FF595959FF5D5D5DFF606060FF626262FF636363FF636363FF6262
          62FF606060FF5D5D5DFF595959FF565656FF525252FF3B3B3BC5131313420000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000009090921303030B3494949FF4F4F
          4FFF535353FF575757FF5D5D5DFF606060FF626262FF646464FF646464FF6262
          62FF606060FF5D5D5DFF575757FF535353FF4F4F4FFF494949FF303030B30909
          0921000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E1E1E80404040FF434343FF4949
          49FF4D4D4DFF515151FF565656FF595959FF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
          5DFF595959FF565656FF515151FF4D4D4DFF494949FF434343FF404040FF1E1E
          1E80000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000808082B2C2C2CDB373737FF3A3A3AFF3E3E
          3EFF424242FF464646FF4A4A4AFF4C4C4CFF4F4F4FFF505050FF505050FF4F4F
          4FFF4C4C4CFF4A4A4AFF464646FF424242FF3E3E3EFF3A3A3AFF373737FF2C2C
          2CDB0808082B0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001212126E2C2C2CFF2E2E2EFF303030FF3333
          33FF353535FF383838FF3A3A3AFF3C3C3CFF3E3E3EFF3F3F3FFF3F3F3FFF3E3E
          3EFF3C3C3CFF3A3A3AFF383838FF353535FF333333FF303030FF2E2E2EFF2C2C
          2CFF1212126E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000171717A7242424FF242424FF252525FF2727
          27FF292929FF2A2A2AFF2B2B2BFF2C2C2CFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF2C2C2CFF2B2B2BFF2A2A2AFF292929FF272727FF252525FF242424FF2424
          24FF171717A70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000171717D51D1D1DFF1D1D1DFF1E1E1EFF1F1F
          1FFF1F1F1FFF202020FF202020FF202020FF202020FF212121FF212121FF2020
          20FF202020FF202020FF202020FF1F1F1FFF1F1F1FFF1E1E1EFF1D1D1DFF1D1D
          1DFF171717D50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000161616F4171717FF171717FF171717FF1717
          17FF181818FF181818FF252525FF313131FF3B3B3BFF434343FF434343FF3B3B
          3BFF313131FF252525FF181818FF181818FF171717FF171717FF171717FF1717
          17FF161616F40000000000000000000000000000000000000000000000000000
          0000000000000000000000000000121212F4131313FF131313FF131313FF1313
          13FF181818FF2F2F2FFF444444FF474747FF474747FF474747FF474747FF4747
          47FF474747FF444444FF2F2F2FFF181818FF131313FF131313FF131313FF1313
          13FF121212F40000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C0C0CD50E0E0EFF0E0E0EFF0E0E0EFF1010
          10FF2F2F2FFF494949FF494949FF494949FF494949FF494949FF494949FF4949
          49FF494949FF494949FF494949FF2F2F2FFF101010FF0E0E0EFF0E0E0EFF0E0E
          0EFF0C0C0CD50000000000000000000000000000000000000000000000000000
          0000000000000000000000000000070707A70A0A0AFF0A0A0AFF0A0A0AFF2626
          26FF525252FF525252FF525252FF525252FF525252FF525252FF525252FF5252
          52FF525252FF525252FF525252FF525252FF262626FF0A0A0AFF0A0A0AFF0A0A
          0AFF070707A70000000000000000000000000000000000000000000000000000
          000000000000000000000000000003030373060606FF060606FF060606FF4242
          42FF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D
          5DFF5D5D5DFF5D5D5DFF5D5D5DFF5D5D5DFF424242FF060606FF060606FF0606
          06FF030303730000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010131040404E0030303FF030303FF6262
          62FF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
          6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF626262FF030303FF030303FF0404
          04E0010101310000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010193010101FF000000FF6F6F
          6FFF787878FF787878FF787878FF787878FF787878FF787878FF787878FF7878
          78FF787878FF787878FF787878FF787878FF6F6F6FFF000000FF010101FF0101
          0193000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002C010101CA000000FF6262
          62FF888888FF888888FF888888FF888888FF888888FF888888FF888888FF8888
          88FF888888FF888888FF888888FF888888FF626262FF000000FF010101CA0000
          002C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000404045B0B0B0BDD4141
          41FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF414141FF0B0B0BDD0404045B0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0B0B622222
          22D9666666FFAFAFAFFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFFBBBBBBFFAFAFAFFF666666FF222222D90B0B0B62000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B0B
          0B37353535B56D6D6DF49C9C9CFFB3B3B3FFC2C2C2FFCCCCCCFFCCCCCCFFC2C2
          C2FFB3B3B3FF9C9C9CFF6D6D6DF4353535B50B0B0B3700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001818184C545454A8848484DC9A9A9AF59D9D9DFE9D9D9DFE9A9A
          9AF5848484DC545454A81818184C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFE007FFFE00007FF800001FF000000FE0000007C0000003C000
          0003C0000003E0000007E0000007F000000FF800001FFC00003FFC00003FF800
          001FF800001FF800001FF800001FF800001FF800001FF800001FF800001FF800
          001FF800001FFC00003FFC00003FFE00007FFF0000FFFF8001FFFFE007FFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0001000000010000000200000002000000020101010301010103010101030101
          0103000000020000000200000002000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002010101030101
          0105010101060101010702020208020202080202020902020209020202090202
          0209020202080202020801010107010101060101010501010103000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          00000000000000000000000000010101010301010105020202080303030C0404
          0410040404130505051505050517050505180505051905050519050505190505
          051905050518050505170505051504040413040404100303030C020202080101
          0105010101030000000100000000000000000000000000000000000000000000
          0000000000000000000101010103020202070303030E050505160707071E0808
          0824090909280A0A0A2A0A0A0A2C0A0A0A2E0B0B0B2F0B0B0B2F0B0B0B2F0B0B
          0B2F0A0A0A2E0A0A0A2C0A0A0A2A09090928080808240707071E050505160303
          030E020202070101010300000001000000000000000000000000000000000000
          00000000000100000001010101050303030E0606061B090909290C0C0C340E0E
          0E3C0F0F0F40101010431010104610101047111111491111114A1111114A1111
          11491010104710101046101010430F0F0F400E0E0E3C0C0C0C34090909290606
          061B0303030E0101010500000001000000010000000000000000000000000000
          000000000001000000020202020805050514090909250D0D0D38101010461313
          13511616165D191919691B1B1B731C1C1C791D1D1D7C1D1D1D7D1D1D1D7D1D1D
          1D7C1C1C1C791B1B1B73191919691616165D13131351101010460D0D0D380909
          0925050505140202020800000002000000010000000000000000000000000000
          000000000001000000020202020705050514090909260E0E0E3A1212124B1616
          165A1B1B1B712020208723232393252525992525259A2525259B2525259B2525
          259A2525259923232393202020871B1B1B711616165A1212124B0E0E0E3A0909
          0926050505140202020700000002000000010000000000000000000000000000
          00000000000000000001010101050303030E0707071D0B0B0B2E0F0F0F3E1212
          124B1616165A54545496999999D2BDBDBDEFCECECEFCD0D0D0FFD0D0D0FFCECE
          CEFCBDBDBDEF999999D2545454961616165A1212124B0F0F0F3E0B0B0B2E0707
          071D0303030E0101010500000001000000000000000000000000000000000000
          000000000000000000010101010302020207040404100606061A090909263A3A
          3A619F9F9FCEC7C7C7FAD2D2D2FFD7D7D7FFDBDBDBFFDDDDDDFFDDDDDDFFDBDB
          DBFFD7D7D7FFD2D2D2FFC7C7C7FA9F9F9FCE3A3A3A61090909260606061A0404
          0410020202070101010300000001000000000000000000000000000000000000
          000000000000000000000000000101010103010101060202020A5C5C5C79B6B6
          B6EACFCFCFFFD8D8D8FFDDDDDDFFDDDDDDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
          DEFFDDDDDDFFDDDDDDFFD8D8D8FFCFCFCFFFB6B6B6EA5C5C5C790202020A0101
          0106010101030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000158585871B7B7B7F0D0D0
          D0FFDADADAFFDCDCDCFFDDDDDDFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDDDDDDFFDCDCDCFFDADADAFFD0D0D0FFB7B7B7F0585858710000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002E2E2E3DABABABE8CCCCCCFFD8D8
          D8FFD9D9D9FFDBDBDBFFDCDCDCFFDDDDDDFFDEDEDEFFDFDFDFFFDFDFDFFFDEDE
          DEFFDDDDDDFFDCDCDCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFFABABABE82E2E
          2E3D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000008C8C8CC0C0C0C0FFD1D1D1FFD3D3
          D3FFD5D5D5FFD6D6D6FFD8D8D8FFD9D9D9FFDADADAFFDBDBDBFFDBDBDBFFDADA
          DAFFD9D9D9FFD8D8D8FFD6D6D6FFD5D5D5FFD3D3D3FFD1D1D1FFC0C0C0FF8C8C
          8CC0000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003838394FA9A9AAF9C4C4C4FFCACACAFFCCCC
          CCFFCECECEFFCFCFCFFFD1D1D1FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
          D3FFD2D2D2FFD1D1D1FFCFCFCFFFCECECEFFCCCCCCFFCACACAFFC4C4C4FFA9A9
          AAF93838394F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000757576ADB0B0B0FFC4C4C4FFC5C5C5FFC6C6
          C6FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCACA
          CAFFCACACAFFC9C9C9FFC8C8C8FFC7C7C7FFC6C6C6FFC5C5C5FFC4C4C4FFB0B0
          B0FF757576AD0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000909090E1AFAFAFFFBBBBBBFFBBBBBBFFBCBC
          BCFFBDBDBDFFBDBDBDFFBEBEBEFFBEBEBEFFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
          BFFFBEBEBEFFBEBEBEFFBDBDBDFFBDBDBDFFBCBCBCFFBBBBBBFFBBBBBBFFAFAF
          AFFF909090E10000000000000000000000000000000000000000000000000000
          0000000000000000000000000000959596F8AEAEAEFFB3B3B3FFB3B3B3FFB3B3
          B3FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
          B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFAEAE
          AEFF959596F80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000919192FFA9A9A9FFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFABABABFFB0B0B0FFB4B4B4FFB8B8B8FFBABABAFFBABABAFFB8B8
          B8FFB4B4B4FFB0B0B0FFABABABFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFA9A9
          A9FF919192FF0000000000000000000000000000000000000000000000000000
          00000000000000000000000000008A8B8BFFA2A2A2FFA3A3A3FFA3A3A3FFA3A3
          A3FFA5A5A5FFAEAEAEFFB6B6B6FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7
          B7FFB7B7B7FFB6B6B6FFAEAEAEFFA5A5A5FFA3A3A3FFA3A3A3FFA3A3A3FFA2A2
          A2FF8A8B8BFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000828283F8979797FF9B9B9BFF9B9B9BFF9C9C
          9CFFA9A9A9FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB3B3B3FFA9A9A9FF9C9C9CFF9B9B9BFF9B9B9BFF9797
          97FF828283F80000000000000000000000000000000000000000000000000000
          0000000000000000000000000000747475E18D8D8DFF959595FF959595FFA1A1
          A1FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4
          B4FFB4B4B4FFB4B4B4FFB4B4B4FFB4B4B4FFA1A1A1FF959595FF959595FF8D8D
          8DFF747475E10000000000000000000000000000000000000000000000000000
          0000000000000000000000000000575758AD818182FF8E8E8EFF8E8E8EFFA9A9
          A9FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFA9A9A9FF8E8E8EFF8E8E8EFF8181
          82FF575758AD0000000000000000000000000000000000000000000000000000
          00000000000000000000000000002626274F727374F9848484FF878787FFB4B4
          B4FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB4B4B4FF878787FF848484FF7272
          74F92626274F0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000575757C0767677FF7F7F7FFFB7B7
          B7FFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFB7B7B7FF7F7F7FFF767677FF5757
          57C0000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001A1A1B3C626263E8757575FFADAD
          ADFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFADADADFF757575FF626263E81A1A
          1B3C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000323233706B6B6CF08F8F
          90FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF8F8F90FF6B6B6CF0323233700000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000363636707676
          76E89E9D9EFFCCCCCCFFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8D8FFD8D8
          D8FFD8D8D8FFD8D8D8FFCCCCCCFF9E9E9EFF757676E836363670000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001F1F
          1F3C6E6E6EC09D9E9EF9BABABAFFCBCBCBFFD7D8D8FFE0E0E0FFE0E0E0FFD7D7
          D8FFCBCBCBFFBABABAFF9E9E9EF96E6D6EC01F1F1F3C00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002D2D2D4F777777ADA6A6A6E1B9B9B9F8BBBBBBFFBBBBBBFFB9B9
          B9F8A6A6A6E1777777AD2D2D2D4F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFE007FFFE00007FF800001FF000000FE0000007C0000003C000
          0003C0000003E0000007E0000007F000000FF800001FFC00003FFC00003FF800
          001FF800001FF800001FF800001FF800001FF800001FF800001FF800001FF800
          001FF800001FFC00003FFC00003FFE00007FFF0000FFFF8001FFFFE007FFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C18F68FFC18F
          68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F
          68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F
          68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F
          68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFC18F68FFFFE9
          D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9
          D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9
          D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9
          D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E9798FF6E7373FF5A5C5DFF4D4E
          4EFF454545FF404040FF404040FF484848FF565757FF6C6E6EFF888D8DFFA9B1
          B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF878E8FFF535454FF505050FF5B5B5BFF686868FF7878
          78FF8C8C8CFF9F9F9FFFAEAEAEFFB2B2B2FFB1B1B1FFA5A5A5FF949494FF7676
          76FF6A6B6BFFA9B0B1FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7B7B7BFF717171FF6A6A6AFF727272FF7B7B7BFF8686
          86FF929292FF9D9D9DFFABABABFFB9B9B9FFC8C8C8FFD9D9D9FFE4E4E4FFEEEE
          EEFFCCCCCCFF494949FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF777777FFF1F1F1FF636363FF767676FF7F7F7FFF8B8B
          8BFF979797FFA3A3A3FFB1B1B1FFC0C0C0FFCDCDCDFFDBDBDBFFE5E5E5FFEDED
          EDFFF6F6F6FF535353FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF747474FFE7E7E7FFEFEFEFFF555555FF868686FF9191
          91FF9D9D9DFFAAAAAAFFB8B8B8FFC6C6C6FFD5D5D5FFE1E1E1FFE9E9E9FFF0F0
          F0FFF8F8F8FF5C5C5CFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF727272FFDCDCDCFFE4E4E4FFEBEBEBFF4A4A4AFF9797
          97FFA3A3A3FFB0B0B0FFBFBFBFFFCDCDCDFFDBDBDBFFE6E6E6FFEDEDEDFFF4F4
          F4FFFAFAFAFF666666FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF727272FFCECECEFFD7D7D7FFDFDFDFFFE5E5E5FF4242
          42FFAAAAAAFFB8B8B8FFC6C6C6FFD3D3D3FFE0E0E0FFE9E9E9FFF1F1F1FFF6F6
          F6FFFCFCFCFF6E6E6EFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF727272FFC1C1C1FFCACACAFFD2D2D2FFD9D9D9FFDEDE
          DEFF424242FFBFBFBFFFCCCCCCFFD9D9D9FFE4E4E4FFEEEEEEFFF4F4F4FFF8F8
          F8FFFCFCFCFF767676FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF737373FFB4B4B4FFBCBCBCFFC4C4C4FFCACACAFFD0D0
          D0FF85A7CBFF1754A1FF8E8E8EFF939393FF9D9D9DFFABABABFFBDBDBDFFD4D4
          D4FFF0F0F0FF7D7D7DFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFF0655AEFF1B6EBEFF2977C0FF4B91CDFF70AAD7FF97C2
          DFFFFFFFFFFFFFFFFFFF717679FF8E9DABFF7B98B5FF5D88B8FF3E74B5FF1F59
          A8FF1250A6FF02338DFFFFFFFFFFFFFFFFFFCED9DBFFC5CDCEFFBABEBFFFA9AA
          ABFFA2A2A2FF838383FFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFF075DB6FF64C9F7FF44A9E5FF2D8DD4FF1D76C4FF1162
          B5FF0A52A8FF05479FFF05449CFF0849A0FF0D52A9FF1461B6FF1C73C7FF2689
          DCFF31A4F4FF02308AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFC18F68FFFFE9
          D9FFFFFFFFFFFFFFFFFF0765BDFF88E0FEFF6CD6FEFF66D2FEFF60CEFEFF59CA
          FEFF51C7FEFF4AC3FEFF42BFFEFF3BBAFEFF3AB8FFFF38B6FFFF37B4FFFF36B3
          FFFF36B1FFFF02338DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9D9FFC18F68FFDA9452FFDA94
          52FFDA9452FFDA9451FF086CC4FFA2E9FEFF75DCFEFF6BD8FEFF60D2FEFF59CE
          FEFF52CAFEFF4CC7FEFF46C3FEFF41C0FEFF3EBDFEFF3BBAFEFF3AB8FFFF38B6
          FFFF37B4FFFF033892FFDA9451FFDA9551FFDA9451FFDA9451FFDA9451FFDA94
          51FFDA9451FFDA9452FFDA9451FFDA9451FFDA9451FFDA9451FFDC9858FFFBEA
          D9FFFBEAD9FFFBEAD9FF0974CCFFB9F1FFFF83E4FEFF79DFFEFF6FDBFEFF65D6
          FEFF5CD2FEFF55CEFEFF4FCAFEFF49C6FEFF44C2FEFF40BFFEFF3DBDFEFF3BBA
          FEFF3FBAFFFF033E97FFFBEAD9FFFBEAD9FFFBEAD9FFFBEAD9FFFBEAD9FFFBEA
          D9FFFBEAD9FFFBEAD9FFFBEAD9FFFBEAD9FFFBEAD9FFDC9857FFDF9D5EFFFAE3
          CCFFFAE3CCFFFAE3CCFF0A7CD4FFCCF5FEFF92EAFEFF87E7FFFF7FE3FEFF74DD
          FEFF6ADAFEFF5FD5FEFF58D1FEFF52CDFEFF4CC9FEFF47C5FEFF42C2FEFF3EBF
          FEFF4FC2FEFF04449DFFFAE3CCFFFAE3CCFFFAE3CCFFFAE3CCFFFDF1E6FFFDF1
          E6FFFAE3CCFFFDF1E6FFFDF1E6FFFAE3CCFFFAE3CCFFDF9D5EFFE1A164FFF9DB
          BEFFF9DBBDFFF9DABDFF0A82DAFFDBF9FFFF9CEDFFFF93EAFEFF8AE8FEFF82E5
          FEFF77E1FEFF6DDBFEFF64D8FEFF5BD3FEFF55CFFEFF4FCCFEFF4AC8FEFF45C4
          FEFF63CCFEFF054BA4FFF9DBBDFFF9DBBDFFF9DBBDFFF9DABDFFC4803FFFC581
          41FFFCEDDEFFC88545FFCA8747FFF9DBBEFFF9DBBDFFE1A164FFE4A66AFFF8D2
          AFFFF8D2AFFFF8D2AFFF0B89E1FFA8DDF7FFD0F7FFFFBDF3FFFFABEFFFFF9AEB
          FEFF8BE8FEFF7DE4FEFF73E0FEFF6EDCFEFF6CD9FEFF6DD8FEFF70D7FEFF73D6
          FEFF57B5EBFF0551AAFFF8D2AFFFF8D2AFFFF8D2AFFFF8D2AFFFF8D2AFFFBE79
          38FFBF7B3AFFC07D3BFFF8D2AFFFF8D2AFFFF8D2AFFFE4A66AFFE7AB71FFF6CA
          A0FFF6CAA1FFF6CAA1FF8ACCEFFF37A4E9FF44AAEAFF6ABEEFFF8DCFF3FFACE0
          F7FFC0ECFBFFCCF4FEFFC4F1FEFFACE5FAFF8CD3F4FF67BCEAFF43A3DEFF2686
          CEFF217AC6FF6EAFDBFFF6CAA0FFF6CAA0FFF6CAA0FFF6CAA0FFF6CAA0FFB874
          33FFB87433FFB97635FFF6CAA0FFF6CAA1FFF6CAA1FFE7AB71FFE9AF77FFFBE2
          CAFFFBE2CAFFFBE2CAFFFBE2CAFFFBE2CAFF92CFEFFF67BDEDFF45ABE9FF2A9A
          E4FF178CDDFF0D82D8FF0D7FD5FF1482D4FF228AD5FF3697D8FF53A7DDFF7DBE
          E3FFFBE2CAFFFBE2CAFFFBE2CAFFFBE2CAFFFBE2CAFFFBE2CAFFB37130FFB371
          32FFFBE2CAFFB47231FFB57232FFFBE2CAFFFBE2CAFFE9AF77FFECB37DFFFBE8
          D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8
          D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8
          D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8
          D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFFBE8D4FFECB37DFFE2B68DEFF9E1
          CBFFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEF
          E2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEF
          E2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEF
          E2FFFCEFE2FFFCEFE2FFFCEFE2FFFCEFE2FFF9E1CBFFE2B68DEF8875628EE4BA
          92EFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB
          88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB
          88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFF0BB
          88FFF0BB88FFF0BB88FFF0BB88FFF0BB88FFE4BA92EF8875628E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000001010193000000F90000005400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030B0B0B75000000000000000000000000000000000000
          00000000000003030393040404FF020202FF010101F900000051000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000707073C1C1C1CFF0D0D0D7E0000000000000000000000000000
          000007070796090909FF070707FF050505FF030303F601010146000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000013131387212121FF1E1E1EFF0D0D0D7E00000000000000000B0B
          0B96101010FF0D0D0DFF0B0B0BFF090909F60202024800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000222222D2262626FF232323FF202020FF0E0E0E7E0F0F0F961717
          17FF141414FF121212FF0E0E0EF6040404480000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000606061E2E2E2EFF2B2B2BFF282828FF252525FF222222FF1F1F1FFF1C1C
          1CFF191919FF151515F605050548000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002C251F35816957A0A9866ADCB38866F7AE7D57FEAC7C56FEAF8564F7A582
          68DC5F5248C7333333FF303030FF2D2D2DFF2A2A2AFF272727FF242424FF2121
          21FF1D1D1DF60808084800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020101028469
          53A2B78B66F2D0AA8BFFE2C7B2FFF1DFD2FFFBF0E8FFFBF0E8FFF0DED1FFDEC4
          B1FF645951FF373737FF353535FF323232FF2F2F2FFF2C2C2CFF292929FF2626
          26FF161616A20000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001E181223A27D5BC8D3A9
          85FFEDD4BFFFFEF1E6FFFFF2E7FFFFF3E8FFFFF2E7FFFFF2E7FFFFF3E8FFF7EC
          E1FF474646FF3E3E3EFF3A3A3AFF363636FF343434FF313131FF2E2E2EFF2B2B
          2BFF282828FF1212127E00000000000000000000000000000000000000000000
          00000000000000000000000000000000000002010102A57C58C8DFB591FFFCE7
          D7FFFCEADAFFFEECDFFFFFEEE2FFFFF0E5FFFFF0E5FFFFF0E5FFFFF0E5FFC9BE
          B5FF484848FF454545FF424242FF3E3E3EFF3B3B3BFF373737FF353535FF3131
          31FF2D2D2DFF2A2A2AFF1313137E000000000000000000000000000000000000
          0000000000000000000000000000000000008A6747A2DAA778FFFAE2CCFFFBE3
          CDFFFCE7D4FFFEECDCFFFFEDDFFFFFEFE2FFFFEFE2FFFFEFE2FFFFEFE2FF9992
          8CFF4F4F4FFF4D4D4DFF4B4B4BFF464646FF444444FF414141FF3D3D3DFF3A3A
          3AFF363636FF313131FF2A2A2AEA0B0B0B410000000000000000000000000000
          00000000000000000000000000002F231835C98D57F2EEC9A7FFF9DEC5FFFBE1
          C9FFFCE6D2FFFEEADAFFFFEBDDFFFFEDE0FFFFEDE0FFFFEDE0FFFFEDE0FF6C6A
          69FF585858FF555555FF535353FF505050FF4D4D4DFF4A4A4AFF464646FF4343
          43FF343434D21717176302020209000000000000000000000000000000000000
          00000000000000000000000000008C6643A0DFA672FFF9DCC1FFF9DABEFFFBE0
          C8FFFCE5D0FFFEE9D7FFFFEADAFFFFECDDFFFFECDDFFFFECDDFFE3D3C7FF5F5F
          5FFF5D5D5DFF5D5D5DFF5A5A5AFF595959FF555555FF525252FF5D554DE31414
          1442000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C08854DCEABB8EFFF9D8BCFFF9DABDFFFBDF
          C6FFFCE4CEFFFEE8D5FFFFE9D8FFFFEBDBFFFFEBDBFFFFEBDBFFB7ADA4FF6565
          65FF646464FF636363FF626262FF676665FF9E9287FFC8A88BFFA77C5BDC0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D59355F7F3CBA6FFF8D6B7FFF9D9BBFFFBDD
          C4FFFCE2CBFFFEE6D3FFFFE8D5FFFFE9D8FFFFE9D8FFFFE9D8FF908B87FF6D6D
          6DFF6B6B6BFF7A7775FFB8A99CFFF0D3BBFFF9D8BCFFECC9ABFFB4845CF70000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89350FEF8D9BDFFF8D3B2FFF9D7B9FFFBDC
          C1FFFCE0C8FFFEE4CFFFFFE6D2FFFFE7D4FFFFE7D4FFFEE7D4FF9A938EFF918C
          88FFCEBDAFFFFCE0C9FFFCDFC6FFFADABEFFF9D6B7FFF7DAC1FFB48056FE0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D99554FEF8E0C9FFF9DBBFFFFADABEFFFADB
          BFFFFCDEC5FFFDE2CBFFFEE4CEFFFEE5D0FFFEE5D0FFFEE5D0FFFCE4CFFFFEE4
          CDFFFDE2CAFFFCE0C7FFFBDEC3FFFADCC2FFFADEC3FFF7E1CCFFB78257FE0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000D89B60F7F4D6BAFFFAE3CDFFFBE4CEFFFBE4
          CFFFFDE4CFFFFDE4CFFFFEE4CEFFFEE3CDFFFEE2CCFFFEE2CCFFFEE3CDFFFEE4
          CEFFFDE4CEFFFDE4CFFFFCE6D1FFFBE5D1FFFBE4D0FFEFD4BBFFBD8A60F70000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C49464DCEEC7A3FFFBE6D3FFFCE5D2FFFCE8
          D6FFFDE9D9FFFDECDDFFFEECDEFFFEEDDFFFFEEDDFFFFEEDDFFFFEEDDFFFFEEC
          DEFFFDEBDCFFFDEADBFFFDE9D8FFFCE7D5FFFBE8D6FFE5C2A2FFB18761DC0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000927253A0E8B687FFFCEADAFFFCE8D7FFFDEA
          DAFFFDEBDDFFFEEDDFFFFEEEE0FFFEEEE1FFFEEEE1FFFEEEE1FFFEEEE1FFFEEE
          E0FFFEEDDFFFFDECDDFFFDEBDCFFFCE9D9FFFCEBDCFFD9AB82FF866950A00000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031271F35D79F6AF2F5DAC0FFFCECDEFFFCEC
          DDFFFDEDDFFFFDEEE2FFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE3FFFEEFE3FFFEEF
          E2FFFDEEE2FFFDEDE0FFFDEDDFFFFCEDDFFFF1D6BEFFC58F5FF22E251D350000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000947659A2E9BB8FFFFDF0E5FFFCEF
          E2FFFDEFE3FFFDF0E5FFFEF0E5FFFEF1E6FFFEF1E6FFFEF1E6FFFEF1E6FFFEF0
          E5FFFDF0E4FFFDEFE4FFFDF0E4FFFDF1E6FFDFB083FF8C6D51A2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000002020102B68F6AC8EFC9A6FFFDF3
          EAFFFDF2E9FFFDF2E8FFFEF2E8FFFEF2E9FFFEF2E9FFFEF2E9FFFEF2E9FFFEF2
          E8FFFDF2E7FFFDF3E9FFFDF4EBFFE9C09BFFAD845DC802010102000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000211B1623B6906BC8EABE
          94FFF6E0CCFFFDF5EEFFFEF5EDFFFEF5EDFFFEF4ECFFFEF4ECFFFEF5EDFFFEF5
          EDFFFDF5EEFFF4DDC8FFE5B587FFB1865DC8201A142300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020201029579
          5EA2D8A371F2EABE94FFF2D4B8FFF8E7D6FFFCF3EBFFFCF3EBFFF7E6D5FFF0D1
          B4FFE6B88BFFD39A62F2917255A2020201020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000312A223593785EA0C79B72DCDBA26CF7DC9B5DFEDC995BFED99F67F7C496
          6BDC917358A03128203500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFBFFFFFFF1FFFFE7E0FFFFE3C0FFFFE181FFFF
          E003FFFFC007FFC0000FFF00001FFE00000FFC000007FC000003F8000007F800
          003FF800007FF800007FF800007FF800007FF800007FF800007FF800007FF800
          007FFC0000FFFC0000FFFE0001FFFF0003FFFFC00FFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          010805050542090909760C0C0CA40D0D0DC90E0E0EE60F0F0FF90E0E0EF90C0C
          0CE6090909C9060606A404040476020202420000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040404260D0D0D751818
          18C51A1A1AFF181818FF181818FF161616FF151515FF141414FF121212FF1111
          11FF101010FF0F0F0FFF0E0E0EFF0D0D0DFF0D0C0CC505050575010101260000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000202020B1010106D272626D6222222FF2121
          21FF202020FF1E1E1EFF1D1D1DFF1C1C1CFF1A1A1AFF191919FF181818FF1717
          17FF151515FF141414FF131313FF121212FF101010FF101010FF161514D60606
          066D0101010B0000000000000000000000000000000000000000000000000000
          000000000000000000000808082B212120A22B2B2BFF2A2A2AFF282828FF403E
          3DFF6B6663FF908883FFB1A7A0FFCCC1B8FFE2D4CBFFEFE1D6FFEFE1D6FFE0D4
          CAFFCABEB5FFADA39BFF89827BFF605B57FF312F2EFF151515FF131313FF1212
          12FF100F0FA20303032B00000000000000000000000000000000000000000000
          0000000000000A0A0A302E2E2EB9333333FF323232FF6D6A67FFA7A09AFFDDD2
          CAFFF5E9E0FFF5E9DFFFF5E8DEFFECCEADFFE3B780FFDBA45DFFDAA25CFFE0B2
          7BFFE8CAA7FFF4E6DAFFF4E6DBFFF3E5DBFFD9CCC3FF9D958EFF5D5854FF1919
          19FF161616FF181717B904040430000000000000000000000000000000000000
          0000060606192A2A2AA93B3B3BFF6C6A68FFB3ACA8FFF7EDE5FFF7ECE4FFF6EC
          E4FFF6EBE3FFF6EBE2FFEAC89EFFDEA459FFDCA156FFDA9F53FFD99D51FFD79C
          4FFFD69B4DFFE5C095FFF5E8DDFFF4E7DEFFF4E7DDFFF4E7DDFFF4E6DCFFA79E
          98FF565350FF1A1A1AFF131313A9020202190000000000000000000000000000
          00001D1D1D6E434343FE9F9B98FFE2DBD5FFF8F0E9FFF8EFE9FFF8EFE8FFF8EF
          E8FFF7EEE7FFF0D6B7FFE2A95FFFE0A65CFFDEA55AFFDDA357FFDBA055FFDA9E
          52FFD89C50FFD79A4DFFEACDABFFF5EAE1FFF5E9E0FFF5E9E0FFF5E9DFFFF5E8
          DFFFDBD0C7FF8C8581FF1F1F1FFE0D0D0D6E0000000000000000000000000000
          00001D1D1D61807E7CD2FAF3EEFFFAF3EEFFF9F2EDFFF9F2EDFFF9F2ECFFF9F1
          ECFFF9F1EBFFECC491FFE4AC63FFE3AA60FFE1A75EFFDFA55BFFDEA458FFDCA2
          56FFDA9F53FFD99E51FFE2B680FFF7ECE4FFF6ECE4FFF6EBE3FFF6EBE3FFF6EB
          E2FFF6EAE2FFF6EAE1FF6E6A67D20E0E0E610000000000000000000000000000
          000000000000E3DFDCE7FBF6F2FFFBF6F2FFFBF5F1FFFAF5F1FFFAF4F0FFFAF4
          EFFFFAF4EFFFEAB777FFE7AF67FFE5AD64FFE3AB62FFE2A95FFFE0A75CFFDEA5
          5AFFDDA257FFDBA054FFDCA661FFF8EFE8FFF8EFE8FFF7EEE7FFF7EEE7FFF7ED
          E6FFF7EDE5FFF7ECE5FFDFD6CFE7000000000000000000000000000000000000
          000000000000E4E2DFE7FCF8F6FFFCF8F5FFFCF8F5FFFCF7F4FFFBF7F4FFFBF7
          F3FFFBF6F2FFEDBA7AFFE9B26BFFF0CA9AFFF6E3CAFFEDC796FFE2A960FFE1A7
          5DFFDFA55BFFDDA458FFDFA965FFF9F2ECFFF9F1ECFFF9F1EBFFF8F0EAFFF8F0
          EAFFF8F0E9FFF8EFE9FFE1D9D2E7000000000000000000000000000000000000
          0000232323618A8988D2FDFBF9FFFDFAF8FFFDFAF8FFFDFAF7FFFCF9F7FFFCF9
          F6FFFCF9F6FFF2CC9DFFECB56FFFF8E5CDFFF9EBD9FFF7E4CBFFE5AC64FFE3AB
          61FFE1A85FFFE0A65BFFE7BF8BFFFAF4F0FFFAF4EFFFFAF4EFFFFAF3EEFFF9F3
          EEFFF9F2EDFFF9F2ECFF787573D2151515610000000000000000000000000000
          00002A2A2A6E616161FEB1B0B0FFEBE9E8FFFEFCFBFFFEFCFAFFFDFBFAFFFDFB
          FAFFFDFBF9FFF8E4C9FFEEB772FFF2CE9EFFF8E5CDFFF0CB9BFFE7B068FFE6AD
          65FFE4AC63FFE2A960FFF2DABEFFFBF7F4FFFBF7F3FFFBF6F2FFFBF6F2FFFBF5
          F1FFE4DFDCFF9F9C9AFF3F3F3FFE1A1A1A6E0000000000000000000000000000
          00000A0A0A19464646A9656565FF8E8E8EFFC7C7C6FFFEFEFDFFFEFDFDFFFEFD
          FCFFFEFDFCFFFEFCFAFFF7DBB8FFEEB973FFEDB770FFEBB56EFFEAB36CFFE8B0
          69FFE6AF66FFF1D3AEFFFDFAF6FFFCF9F7FFFCF9F6FFFCF9F6FFFCF8F6FFBCBA
          B8FF797777FF474747FF303030A9070707190000000000000000000000000000
          00000000000014141430535353B9696969FF696969FF969696FFC2C2C2FFECEC
          EBFFFFFEFEFFFFFEFEFFFEFEFCFFF9E6CCFFF4CFA1FFF0BE80FFEEBC7DFFF1CC
          9CFFF6E1C7FFFEFCFAFFFEFCFAFFFDFBFAFFE8E7E6FFB9B8B7FF868685FF5151
          51FF4E4E4EFF3F3E3EB90E0E0E30000000000000000000000000000000000000
          000000000000000000001313132B494949A26D6D6DFF6C6C6CFF6A6A6AFF7B7B
          7BFF9A9A9AFFB6B6B6FFCECECEFFE2E2E2FFF2F2F2FFFCFCFCFFFCFBFBFFF1F0
          F0FFE1E0E0FFCBCBCAFFB0B0AFFF919191FF6E6E6EFF585858FF575757FF5656
          56FF393939A20E0E0E2B00000000000000000000000000000000000000000000
          00000000000000000000000000000505050B3030306D646464D66F6F6FFF6E6E
          6EFF6D6D6DFF6C6C6CFF6B6B6BFF6A6A6AFF696969FF686868FF676767FF6666
          66FF646464FF636363FF626262FF606060FF606060FF5E5E5EFF555555D62727
          276D0404040B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111126353535755A5A
          5AC5717171FF707070FF707070FF6F6F6FFF6E6E6EFF6C6C6CFF6B6B6BFF6A6A
          6AFF696969FF686868FF676767FF666666FF505050C52E2E2E750F0F0F260000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000404
          04081E1E1E42363636764A4A4AA45A5A5AC9666666E66D6D6DF96D6D6DF96464
          64E6575757C9464646A4323232761C1C1C420303030800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80
          01FFFE00007FF800001FF000000FE0000007C0000003C0000003C0000003E000
          0007E0000007C0000003C0000003C0000003E0000007F000000FF800001FFE00
          007FFF8001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0002000000050000000700000008000000080000000900000009000000090000
          0009000000090000000A00000009000000080000000500000003000000030000
          0005000000090000000A0000000B0000000B0000000B0000000C0000000C0000
          000C0000000C0000000C0000000B000000080000000300000001000000020000
          0007000000120000001B0000001F000000210000002100000022000000230000
          00230000002400000024000000240000001F00000014000000090000000A0000
          001500000021000000280000002B0000002C0000002D0000002D0000002E0000
          002F0000002E0000002E000000290000001D0000000C00000003000000030000
          00106F3A0FC5974E14FF964D13FF954C12FF944C12FF944A11FF934A11FF9249
          10FF91480FFF91470FFF90470EFF8F460EFF4D25079B00000014000000144B24
          079D8D430CFF8C430CFF8C430CFF8C420CFF8C420BFF8B420CFF8B410BFF8B41
          0BFF8B410BFF8B410BFF8B410BFF662F08CC0000001B00000006000000050000
          00148B4E1BC8BC6724FFBB6522FFB96420FFB7621FFFB6601EFFB45F1DFFB25D
          1CFFB15C1AFFB05A19FFAF5919FFA04F14FF4321069200000018000000184F26
          0994A85214FFA75114FFA65013FFA54F13FFA44E12FFA44E12FFA44D12FFA34D
          12FFA34D12FFA34C11FF9C4910FF663008D10000002300000008000000050000
          00158C4E1CC8BF6925FFBD6824FFBB6622FFBA6421FFB86320FFB6611EFFB55F
          1DFFB35E1CFFB15C1BFFB05B1AFF9F5014FF301805760000001600000016391C
          0878A95315FFA85315FFA75114FFA75114FFA65013FFA55013FFA54E12FFA44E
          11FFA44E11FFA34D12FF9D4A10FF663108D20000002500000009000000050000
          00148F501FC8C16C27FFBF6A27FFBE6825FFBB6723FFBA6522FFB86320FFB761
          1FFFB5601EFFB45E1DFFB25D1CFF9C4F14FF2613046400000012000000122E17
          0666AA5516FFAA5315FFA95315FFA85215FFA75114FFA75114FFA65014FFA54F
          13FFA54F12FFA44E12FF9E4B10FF663009D10000002400000009000000040000
          0012905220C6C36E2AFF8E4F1DC8000000260000002200000026000000300000
          003D552D0FA09D531BE8B45E1DFF9C4F14FF130A02410000000D0000000D170B
          0341AC5717FFAB5617FF934913EB4F270AA90000004F00000042000000370000
          00320000003A7A3B0ED09E4C10FF673109CE0000002000000008000000030000
          000C925421C2BB6926FF150B033A00000014000000170A050132512A0B9FA859
          1BFFB46120FFB86320FFB66120FF994E13FF0000001800000006000000050000
          000EAE5919FFA95518FF9D4E13FF8F460EFF8F450EFF4C2407A90A0501400000
          002300000020160B034AA04E11FF683109C80000001700000005000000010000
          00050000000C0000000F0000000F000000142A16075DA45A1DF1C06A27FFBD69
          25FFBC6623FFBA6622FF562E0F900000001B0000000A00000001000000000000
          000100000005522A0C84AE5819FFAD5718FFA04F13FF91480FFF85410DF32612
          046A00000020000000190000001B000000160000000A00000003000000000000
          000100000003000000070000000F2D19085BC26E2AFFC46F2AFFC16C28FFC06B
          27FFB16223F22212055200000015000000090000000200000000000000000000
          0000000000000000000223120543A35419F2AE5819FFAB5717FF974B11FF8F46
          0EFF261304690000001A0000000D000000060000000300000001000000000000
          00000000000200000009170D0437BD6D2BF1C7732DFFC6702CFFC4702BFFBF6B
          27FF41230A7D0000001300000007000000020000000000000000000000000000
          000000000000000000000000000347250B79B05B1BFFAF5A19FFAE5819FF984C
          11FF86430DF3130A024600000010000000040000000000000000000000000000
          0000000000040000000E79461DA7CB7630FFCA752FFFC8732DFFC7722DFF7F45
          17C7000000180000000800000002000000000000000000000000000000000000
          00000000000000000000000000000000000A824414C9B15C1BFFB15B1BFFAE59
          19FF954B11FF572A09B10000001B000000080000000100000000000000000000
          000100000007190E0634CD7833FFCD7832FFCB7731FFCB7630FFBD6C29FF3F21
          0A7A0000000E0000000400000000000000000000000000000000000000000000
          00000000000000000000000000000000000248260C78B35E1DFFB35D1CFFB15C
          1BFFA45516FF92480FFF130A02450000000E0000000200000000000000000000
          00020000000A62391985CF7A34FFCF7934FFCD7833FFCD7832FFB16424FF0B06
          0228000000080000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C06021DB6601EFFB5601EFFB45F
          1CFFB35E1CFF974C12FF44220792000000140000000400000000000000000000
          00030000000C9A5C29C3D17C36FFD07B35FFCF7935FFCE7933FF8D4E19E20000
          0013000000050000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000004A0561CE3B7631FFFB661
          1EFFB5611EFFA45417FF6C360DCB000000190000000600000000000000000000
          00030000000EB76D31E1D37D38FFD27D37FFD17B36FFCA7632FF6C3B13B50000
          000F000000040000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000027C4316B3BA6421FFB963
          21FFB86220FFAE5B1CFF81420FE60000001D0000000700000001000000000000
          00030000000ED5813BFFD4803AFFD4813AFFD48039FFC47330FF613612A50000
          000D000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001723E16A2BD6724FFBC65
          22FFBB6522FFB5611FFF964D13FF0000001D0000000800000001000000000000
          00030000000DC97B3AF0D7843DFFD6843CFFD6843DFFC27431FF623813A50000
          000D000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000002733F18A3BF6A25FFBE68
          25FFBD6824FFBC6623FF8D4913F20000001C0000000700000001000000000000
          00030000000CBD7538E1DA8841FFD98940FFD98840FFC57834FF6F3F17B40000
          000D000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000582491CB5C26C28FFC06B
          27FFC06B26FFBB6724FF844512E4000000190000000600000001000000000000
          000200000009935E2DB2DC8D44FFDD8C44FFDC8D44FFCA7E3AFF854D1DD20000
          000F000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000C9D5A22D4C56F2AFFC36E
          29FFC36D28FFBC6825FF67360FBA000000140000000500000000000000000000
          00010000000768442181DF9248FFDF9248FFDF9248FFD38840FFA96426FF0B07
          0322000000060000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000040D070325C8722DFFC7712CFFC671
          2CFFC46F2AFFB66624FF48260B8B0000000F0000000300000000000000000000
          0001000000040F0A051CD38D47F0E3984CFFE3974CFFE2974CFFAE692BFF4429
          1073000000090000000200000000000000000000000000000000000000000000
          00000000000000000000000000020000000A512F1379CA742FFFC9742EFFC872
          2EFFC7722CFFA45C1FF10A060229000000090000000200000000000000000000
          000000000002000000076B492580E69D51FFE59C50FFE59C50FFC27D39FF955A
          24E10000000F0000000500000001000000000000000000000000000000000000
          000000000000000000010000000600000014B0672BE2CB7630FFCB7630FFC974
          2EFFC6712DFF4B280C890000000F000000040000000100000000000000000000
          000000000001000000030000000AAB773EC0E9A255FFE8A154FFE09A4EFFAD6B
          2CFF503114830000000B00000004000000010000000000000000000000000000
          000000000001000000050000000E5E371787CE7933FFCD7832FFCC7732FFCB76
          30FF83491AC50000001400000007000000010000000000000000000000000000
          0000000000000000000100000004100B061BBC8647D0EBA758FFEAA557FFCB87
          41FFAE6C2DFF2E1C0C530000000B000000060000000300000002000000020000
          0004000000070000000E311C0B57D07B35FFCF7A34FFCF7A34FFCD7832FF9B59
          24D30B0602250000000900000002000000000000000000000000000000000000
          0000000000000000000000000001000000040000000A8F6837A0EEAB5BFFEDA9
          5AFFBF7E3AFFAE6D2EFF5C3917920000000F0000000B000000090000000A0000
          000C000000115F371594D38039FFD27C37FFD07B35FFD07A34FF76451CA50000
          0012000000090000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000008402E194EAF7E
          45C0EEAB5CFFD08D45FFAF6D2EFFAD6B2CFF73461CB1503013814F2F12827042
          18B2C27634FFD7863EFFD5823BFFD27E38FF9A5A28C3321D0C540000000E0000
          0006000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000050000
          000820170D2C6F502B809D703BB0D59149FFC8833EFFC6803BFFCF853FFFDE91
          47FFDC8D44FF915B2BB2653E1C831A1007320000000D00000008000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00020000000400000006000000080000000A0000000A0000000B0000000B0000
          000C0000000C0000000A00000008000000060000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000020000000300000003000000030000
          0003000000030000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          BE000000424DBE000000000000003E0000002800000020000000200000000100
          010000000000800000000000000000000000020000000000000000000000FFFF
          FF00E00180018000000000000000000000000000000000000000000000000000
          000000000000000080008001E000C003F003C007F801800FF801800FFC01800F
          FC01801FFC00801FFC00801FFC00801FFC00800FF801800FF801800FF001C007
          E001C003C003E0000007F0000007F800001FFC00003FFF00007FFFC001FFFFFF
          FFFF}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000001000000020000000400000004000000040000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000040000000200000001000000000000
          0000000000000000000100000003000000080000000D00000010000000110000
          0011000000110000001100000012000000120000001200000012000000120000
          0012000000120000001300000013000000130000001300000013000000130000
          00130000001300000013000000130000000F00000009000000031A131127402E
          2960694D449F8E675BD800000007312F69A28F7079EDB18574FFA96F4BFFA768
          3DFFA86A42FFAE806DFFAA8179FF4B49ADFF2C37BDFF373DB5FF9B777FFFAF82
          70FFA86D49FFA5653CFFA66840FFAD7D6AFFA87D75FF4846AAFF2933BBFF363A
          B3FF9A747DFFAD7F6EFFA66B47FF8A4926FF593423A300000009000000000000
          000000000000000000030000000C303CC1FF424AC3FFDCDAEDFFF7F0ECFFBC8B
          6AFFA7693FFFB07750FFEEE0D8FFF1EDF1FF5E65CBFF2D39BEFF404AC3FFDBD8
          EAFFF5EEEAFFBB8868FFA6673DFFAE744EFFECDED5FFEFEBEFFF5B62C8FF2A35
          BCFF3D47C0FFD8D6E7FFF5ECE7FFA26C50FF8C4B28FF0000000E1A1411274030
          2A606B4F469F906B5DD80000000E4F4EAFFF323FC3FFF7EFEAFFF6EFEAFFF6EF
          EAFFF7EFEAFFF6EFEAFFF6EEE9FFF6EEEAFFF7EEE9FFF6EFE9FFF6EEE9FFF6EE
          E9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE8FFF6EEE8FFF6EEE8FFF6EDE8FFF5ED
          E8FFF6EDE8FFF6EEE7FFF6EDE7FFF4EBE7FF9F6952FF00000011000000000000
          000000000000000000030000000EA87E76FF646DD0FFF7F0ECFFF7F0EBFFF7F0
          EBFFF7EFEAFFF7F0EBFFF7EFEAFFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF7EF
          EAFFF7EFE9FFF6EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF7EFE9FFF7EEE9FFF7EE
          E8FFF6EEE9FFF6EEE8FFF6EEE8FFD8D5E6FFA97B6BFF000000111B1412274231
          2B606C50489F936D61D80000000DB0816EFFF3F1F6FFF7F0ECFFF8F0ECFFFAF4
          F0FFFAF4F1FFF9F4F0FFFAF4F0FFF9F4F0FFF9F3F0FFF9F4F0FFF9F3F0FFF9F3
          F0FFF9F4EFFFF9F3F0FFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF6EFEAFFF7EF
          E9FFF7EEE9FFF7EEE9FFF6EFE9FF353CB3FF957077FF00000010000000000000
          000000000000000000030000000CB0774FFFF1E6DEFFF8F1EDFFF8F1EDFFC59E
          8DFFC59E8CFFC49E8CFFC49D8CFFC59D8BFFC49D8CFFC49D8BFFC49D8BFFC49C
          8BFFC49C8AFFC49B8BFFF7EFEBFFF7F0EBFFF7F0EAFFF7F0EBFFF7F0EBFFF7EF
          EAFFF7EFEAFFF6EFEAFFF6EFEAFF222BB0FF2F33AAFF0000000F1B1412274232
          2C606D524A9F947063D80000000BB1774EFFB7835EFFF9F2EEFFF8F2EEFFF4EA
          E4FFF3E9E4FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9
          E2FFF3E8E2FFF3E8E2FFF8F1ECFFF8F1ECFFF7F0ECFFF7F0ECFFF8F0EBFFF7F0
          EBFFF7F0ECFFF7F0EBFFF8EFEBFF575DC2FF242DB3FF0000000F000000000000
          000000000000000000030000000BB37F5BFFB27B51FFF8F3EFFFF9F2EFFFC6A0
          8FFFC69F8FFFC5A08FFFC69F8EFFC69F8DFFC59F8EFFC69F8DFFC59E8DFFC59E
          8CFFC59D8CFFC59E8CFFF8F1EDFFF8F2EDFFF8F1ECFFF7F1ECFFF7F0ECFFF8F1
          ECFFF8F0ECFFF7F0ECFFF8F0ECFFF2EFF2FF7C648BFF0000000E1B1513274334
          2E6070554C9F977366D80000000AB88D7EFFC59B7BFFF9F3F0FFF9F3F0FFF4EB
          E5FFF4EBE6FFF4EAE5FFF4EBE5FFF4EBE5FFF4EBE5FFF4EAE5FFF4EAE5FFF4EA
          E4FFF3EAE4FFF3EAE4FFF9F2EEFFF8F1EDFFF9F2EEFFF8F1EDFFF8F1EEFFF8F1
          EEFFF8F1EDFFF8F1EDFFF8F1ECFFEEE1DAFFB18576FF0000000D000000000000
          0000000000000000000200000009A7878EFFFBF6F3FFFAF4F1FFFAF4F1FFC8A2
          91FFC7A291FFC7A190FFC7A291FFC6A190FFC7A190FFC6A18FFFC6A08FFFC6A0
          8FFFC6A08EFFC6A08EFFF8F2EFFFF8F2EFFFF9F2EFFFF8F2EFFFF8F2EEFFF8F2
          EEFFF9F2EEFFF8F2EDFFF9F2EEFFAA7450FFAF826FFF0000000C1C1613274535
          2F6071584E9F997769D800000009535ECBFFE2E4F6FFFAF5F2FFFAF4F2FFFAF5
          F2FFFAF5F1FFFAF4F1FFFAF4F1FFFAF4F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4
          F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F2
          EFFFF9F3EFFFF8F3EFFFF9F2EFFFA56944FFA66D48FF0000000C000000000000
          00000000000000000002000000084B5DD5FF5B6BD8FFFAF6F3FFFBF5F3FFFAF5
          F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F2FFFAF5
          F1FFFAF4F2FFF9F5F1FFF9F4F1FFFAF4F1FFF9F4F0FFFCF9F8FFFCF9F8FFFCF9
          F7FFFCF9F7FFFCF9F7FFFCF9F7FFBA8E70FFA66D46FF0000000B1C1614274536
          3160735A509F9B7A6CD800000007686CC4FF4D5FD6FFFAF6F4FFFBF6F4FFFBF6
          F4FFFBF6F3FFFBF5F3FFFAF6F3FFFAF6F3FFFAF6F3FFFBF5F2FFFAF5F2FFFAF5
          F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F1FFFAF4F2FFFCFAF8FF646CDAFF6269
          DAFF6067D8FF5E65D7FFFCF9F8FFF9F5F2FFB2846BFF0000000A000000000000
          0000000000000000000200000007BC9991FF7887E0FFFCF7F4FFFBF7F4FFFBF7
          F4FFFAF6F4FFFBF7F4FFFBF6F4FFFBF7F4FFFAF6F4FFFBF6F3FFFBF6F3FFFBF5
          F4FFFBF6F3FFFAF5F3FFFAF6F3FFFBF5F3FFFAF5F3FFFCFAF9FF6C74DDFF6972
          DDFF6770DCFF656EDBFFFCFAF8FFDFDFF2FFBA9284FF0000000A1D1714274638
          3260755C539F9E7D70D800000006C29C8BFFF6F7FCFFFCF7F6FFFBF7F5FFFBF7
          F6FFFBF7F5FFFCF7F5FFFBF7F5FFFBF6F5FFFBF7F5FFFBF6F4FFFBF6F5FFFBF6
          F4FFFBF6F4FFFBF6F3FFFAF6F4FFFBF6F4FFFAF6F4FFFDFAF9FF727DE1FF707B
          DFFF6F78DFFF6D76DEFFFDFAF9FF4D5DCEFFA88A90FF00000009000000000000
          0000000000000000000100000005C1936EFFF6EDE7FFFCF8F6FFFBF8F6FFFCF8
          F7FFFCF8F6FFFBF8F6FFFCF7F6FFFBF8F6FFFBF7F6FFFCF8F5FFFCF7F6FFFBF7
          F6FFFBF7F5FFFBF6F5FFFBF6F5FFFBF7F5FFFBF6F5FFFDFAF9FF7986E3FF7784
          E3FF7581E2FF747EE1FFFCFAF9FF4050CCFF4B56C6FF000000081D1715274739
          3360765E549FA07F72D800000005C3956CFFC89F7AFFFCF9F8FFFCF8F8FFFCF9
          F7FFFCF8F7FFFCF8F7FFFBF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFBF7
          F6FFFBF7F6FFFCF8F6FFFCF7F6FFFBF7F5FFFBF7F5FFFDFBFAFF7F8DE6FF7D8B
          E5FF7B89E5FF7A87E4FFFDFAF9FF6E7ADAFF4153CFFF00000007000000000000
          0000000000000000000100000003C09776FAC49870FFFFFFFEFFFFFFFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
          FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFE8E0E2FF84759BF1000000051D181527483A
          3460775F569FA28274D8000000023B312D4BBF9875F3D0B2A6FFD1B1A6FFD0B1
          A5FFD0B1A4FFCFAFA3FFCFAEA2FFCEAEA2FFCEADA1FFCEACA0FFCDACA0FFCDAB
          9EFFCBAB9DFFCBAA9DFFCBA99CFFCAA89BFFC9A89AFFC9A699FFC8A598FFC8A5
          97FFC7A496FFC7A396FFC6A395FFA08171D33128244400000003000000000000
          0000000000000000000000000001000000010000000300000003000000040000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000040000000200000001000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxSmallImages: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 21496568
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFFBF1E5FFFBEFE4FFFBEFE2FFFAEEE1FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFFFDF4EBFFFDF3E9FFFDF2E9FFFDF2E7FFFCF1E6FFFCF0
          E5FFFCF0E3FFFBEEE2FFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FFFFF7F0FFFFF7EFFFFEF7EEFFFEF6ECFFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFFFFBF6FFFFFAF5FFFFFAF4FFFFFAF5FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FFFFFBF8FFFFFBF7FFFFFBF7FFFFFBF6FFFEF7F1FFFCF3
          EBFFFAEFE3FFF7E8DBFFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFFFFFCF9FFFFFCF9FFFFFCF8FFFEF9F4FFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFFFFDFBFFFFFDFAFFFEF9F5FFFCF5EEFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E000000190000001C0000001F000000220000002400000026000000270000
          002900000029000000290000002000000009000000010000000018577FBB0D61
          96FF075B92FF075A92FF065A92FF065A92FF065A92FF065A92FF065A93FF065A
          92FF075A92FF065A92FF065C93FE010A103C00000005000000000C6199FB4198
          C2FF6BB5D3FF38C7ECFF0BB8E6FF0BB4E5FF0BB0E3FF0BADE1FF0AA9DFFF09A7
          DDFF09A2DCFF099DDAFF0980B7FF065277C20000000E0000000009679EFF5CBA
          E6FF2686B2FF90E7F8FF1BCCF3FF1CC9F1FF19C6EFFF15C1ECFF0DBCEAFF0CB8
          E8FF0BB4E6FF0BAFE4FF0BA2D9FF0A75A8FC0003041D000000000B75AAFF6CC8
          F2FF3994BEFF97CEE2FF59DFF8FF3CD7F6FF39D4F5FF31D0F3FF26CAF0FF19C4
          EEFF11BFEBFF11BBEAFF10B7E8FF0C83B6FF06476190000000000D82B6FF83D4
          F6FF3EAEDEFF3F8EB7FFB3F3FDFF62E3FAFF5EE1F9FF53DDF8FF45D9F5FF33D3
          F3FF22CCF1FF16C7EFFF16C4EDFF12ACD9FF0A73A4F200000000108CBFFF9DE2
          F9FF27BBF1FF3485B3FFBDDBE9FF9AF0FDFF86ECFCFF78E9FBFF65E3F9FF4EDE
          F7FF38D8F5FF26D1F2FF1DCEF2FF1CCBF1FF0C7CAFFF06384C65108FC4FFB8ED
          FCFF3BCAF5FF52B1D8FF5B98BDFFF9FEFFFFF3FDFFFFE8FCFEFFD7F9FEFFC1F5
          FDFFA6F0FCFF88EBFBFF6BE3F9FF59DEF7FF32B0D6FF12709CE11093C8FFD0F6
          FEFF56DBF9FF4BD4F7FF2170A4FF065E98FF075E98FF065E98FF075E98FF075E
          98FF075E98FF075F98FF075F98FF075E98FF075E98FF076099FF1197CDFFE3FB
          FFFF77EBFDFF6AE7FCFF5CE1FBFF50DBF9FF45D6F9FF3AD0F8FF32CBF6FF2BC6
          F5FF26C2F3FF22BDF2FF1FB9F1FF0C70A2FF0000000900000000129BD0FFEFFD
          FFFF9AF4FFFF85F2FFFF7CEFFEFF6DEAFDFF6DE8FCFFB3F2FDFFA1ECFCFF8DE6
          FBFF77DFFAFF63D8F8FF48C5EEFF0C74A6FF0000000600000000129ED4FFF7FE
          FFFFCCF8FEFFA0F5FFFF7EE7F8FF1091C5FF108EC2FF0F8BBEFF0E87BBFF0E85
          B7FF0E82B4FF0D7FB1FF1683B3FB186988B200000002000000002BA7D7FBE0F3
          FAFFF2F8FAFBD9F2F9FF28A0CEFB000000020000000200000002000000030000
          000300000003000000030000000300000002000000000000000047879DAF2BA8
          D7FB12A0D5FF29A4D4FB44829AAF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00000001000000010000000100000001000000010000000100000000
          000000000000000000000001000000010000000100000003000007FF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000C000000160000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000002100000013000000040000000A8E6B
          45C9B57039FFB36D35FF252525FF202020FF1D1D1DFF191919FF151515FF1212
          12FF0F0F0FFF0C0C0CFFA1551BFFA05319FF805428D20000001300000011BC78
          41FFEEC18FFFEFCA9FFF343434FF2F2F2FFF2B2B2BFF282828FF232323FF2020
          20FFE7BE90FF181818FFE5BD8DFFDDAA6FFFA1541AFF0000002000000011C07E
          48FFF1C694FFF1CDA5FF454545FF404040FF3C3C3CFF373737FF333333FF2E2E
          2EFFE9C092FF272727FFE6BD8FFFDFAE71FFA3571CFF000000220000000FC583
          4EFFF3CA9AFFF3D1A8FF585858FF535353FF4E4E4EFF494949FF444444FF3F3F
          3FFFE9C293FF363636FFE8BF91FFE1AE74FFA55A20FF000000200000000EC988
          53FFF5CEA1FFF5D5AEFF6B6B6BFF666666FF616161FF5C5C5CFF575757FF5252
          52FF4D4D4DFF484848FFE9C292FFE3B077FFA85E25FF0000001E0000000CCE8D
          59FFF8D4A8FFF8D8B3FFF5D5ADFFF4D0A6FFF1CDA1FFEFCA9DFFEEC89BFFEDC8
          9AFFEDC598FFECC496FFEAC495FFE4B378FFAA6128FF0000001C0000000BD292
          5EFFFBD7AEFFF8D1A7FFF6CE9EFFF3C997FFF0C490FFEEC08AFFECBD84FFEBBB
          83FFE9BA81FFE9B880FFE8B67DFFE7B57CFFAE662DFF0000001B00000009D797
          64FFFDDCB4FFDBA36CFFDAA26BFFD9A16AFFD9A069FFD89E67FFD69D66FFD69C
          65FFD59A63FFD49962FFD39760FFE8B77EFFB16A32FF0000001900000008DA9C
          69FFFFDFBBFFD99F68FFFBFBFBFFFAFAFAFFF8F8F8FFF7F7F7FFF5F5F5FFF4F4
          F4FFF2F2F2FFF1F1F1FFD0935CFFE9BA81FFB56F38FF0000001700000006DEA0
          6EFFFFE5C1FFD69B65FFFDFDFDFF8E8E8EFF8B8B8BFF8A8A8AFF878787FF8484
          84FF828282FFF5F5F5FFCD8F58FFEBBC83FFB9743DFF0000001500000005E1A4
          71FFFFE7C7FFD39760FFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFF8F8F8FFCA8B55FFEEBD86FFBD7943FF0000001400000004E3A6
          74FFFFEACDFFD1925DFFFFFFFFFFADADADFFABABABFFA9A9A9FFA7A7A7FFA5A5
          A5FFA3A3A3FFFBFBFBFFC88751FFEFC089FFC27E48FF0000001200000002E5A8
          76FFFFF0D2FFCE8E59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFFC6844EFFF1C28BFFC6834EFF0000000E00000001AA94
          75C0E5A876FFCB8B56FFACACACFFACACACFFACACACFFACACACFFACACACFFACAC
          ACFFACACACFFACACACFFC4814CFFCD8C58FF95764FC500000007000000000000
          0001000000020000000300000003000000040000000500000005000000060000
          000700000008000000090000000A0000000A0000000600000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000700000010000000180000
          00210000001D0000000E00000002000000000000000000000000000000000000
          0002000000060000000C000000130202022A0A0A0A550C0C0C980F0E0EBE3131
          31EE0E0E0EE404040470000000190000000400000000000000000000000A0303
          03210C0C0C5213131390232323BC3A3A3AEC3A3939FB848584FFC0C8C4FFBDBF
          BFFF4D4D4DFF262626FB060606A1000000240000000900000001474747AF7979
          79ED2E2E2EFC393939FF434343FF535353FF706E70FFB9C2BDFF70D09DFFC8CF
          CCFF585556FF6D6D6DFF424242FF101010CB020202450000000F9E9E9EFCF9F9
          F9FF7F7F7FFF828282FFB2B2B2FFDDDDDDFFEAEAEBFFEDEFEDFFE0E6E3FFD8D9
          D8FF606060FF6E6E6EFF787878FF616161FF1C1C1CE90707076EB1B1B1F3FFFF
          FFFFF7F7F7FFFBFBFBFFF3F3F3FFE5E5E5FFDBDBDBFFCCCCCCFFC3C2C3FFBBBB
          BBFF979797FF696969FF7A7A7AFF808080FF808080FF252525F5BCBCBCF7F1F1
          F1FFE4E4E4FFDBDBDBFFD5D5D5FFCDCDCDFFCBCBCBFFCACACAFFC7C8C8FFBCBC
          BDFFAEB1B5FF8D8F91FF757373FF828282FF929292FF3A3A3AF96D6D6D94D6D6
          D6FFE0E0E0FFDBDDDDFFD4D6D9FFCDCDCDFFBBBBB9FFA0A09FFF95918CFF8F8A
          80FF63472DFF3C3228FF949799FF808080FF949494FF454545F0020202026F6F
          6F96D3D3D4FFD4D3D1FFBB9A77FFC2B8ACFFC7BDAFFFCDC0ACFFCBBBA3FFD1C2
          A9FFC2955EFF87603CFFB2B7BBFFA8A8A8FF999999FF4D4D4DF7000000000000
          00005C5C5D7BBEBDBDF4DAAF7FFFF3E6D9FFEFE7DDFFE9E0D1FFE5D9C8FFE1D4
          C2FFD9C6ABFFA8733DFF908F8DFB797B7DF26E6E6EEB454545C8000000000000
          0000000000002A2B2B37A18D78C8F1DDC6FFF6F4F1FFF0EAE1FFECE3D9FFE7DE
          D1FFE6DECFFFBD8D53FF41322379090909170404050E03030307000000000000
          000000000000000000001714121BDDBB91ECFDFEFEFFF9F7F3FFF4F0EAFFF0EA
          E1FFEDE7DDFFDFCDB7FF693D179E000000000000000000000000000000000000
          0000000000000000000000000000866D4E91FAF0E6FFFFFFFFFFFBFBF9FFF8F7
          F3FFF4F1EBFFF3F1ECFFC3996AF8261709380000000000000000000000000000
          0000000000000000000000000000221C1524E5C8A7F1FFFFFFFFFFFFFFFFFEFD
          FDFFFAF9F7FFF8F3EFFFEADDCCFF885220C80806030B00000000000000000000
          00000000000000000000000000000000000076624B7CE4C29DEFDCBA93EACEA9
          7EDEC9A172DCB48956C9A87A48C67E4F20AF261E163000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F80700008003000000000000000000000000000000000000000000000000
          000000000000C0000000E0000000F0070000F8030000F8010000FC010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000700000010000000190000001D0000001F0000002000000021000000230000
          0024000000250000002500000023000000180000000B00000002000000060102
          1B4F04044BB806066EF5060674FF060673FF050572FF060571FF060571FF0505
          70FF050570FF050570FF05056AF7030346C50101195F0000000A0000000D0405
          4DB50C1594FF0F23AFFF0E25B6FF0C23B3FF0A22B2FF0A22B1FF0A22B0FF0A22
          B0FF0A22AFFF0A21AFFF091DA4FF080F86FF040346C40000001800000011080A
          79F4182FBFFF1733CAFF1833C7FF1F39C8FF112DC3FF0C28C0FF0B27BFFF0E2B
          C0FF1C37C4FF1530C0FF1029BAFF091DA4FF05056AF700000022000000110A0E
          87FF203DD4FF1F3CD2FF8C9AE4FFE2E5F5FF354ED0FF1230C8FF102EC7FF2F48
          CDFFE3E7F8FF8A99E3FF132FC0FF0A21AFFF050570FF000000240000000F0C12
          8FFF2945DBFF2A44D8FFD0D3EFFFFCFAF8FFE1E4F5FF344DD1FF304AD0FFE2E6
          F7FFFFFEFFFFD0D5F3FF1733C2FF0A21B0FF050572FF000000220000000D0F17
          99FF3752E2FF2D4AE0FF344DD7FFCFD2EEFFFCF9F7FFE5E6F4FFE6E8F4FFFEFC
          FCFFCFD5F2FF243ECBFF0E2AC2FF0A22B2FF050674FF000000210000000B131D
          A3FF4A63E9FF3856EAFF2E4BE1FF354ED7FFD4D6EDFFFBF9F5FFFCF9F6FFD5D9
          F0FF2640CEFF102DCAFF0B29C2FF0A23B3FF060775FF0000001F0000000A1723
          ADFF7F90F0FF6B80F2FF5D72E6FF6375DDFFE5E4EEFFFAF6F2FFFAF7F3FFE3E3
          F1FF364ED2FF1332CCFF0E2AC5FF0B23B5FF060777FF0000001D000000081C2B
          B8FF8E9DF4FF677AEBFF6B7BDFFFE4E1EAFFF8F3EDFFD7D8EBFFD6D7EBFFFAF6
          F2FFE1E2F0FF354ED1FF1330C8FF0E25B8FF07077BFF0000001B000000072032
          C1FFA3B0F7FF6E7FE6FFE3E0E6FFF6EFE8FFD5D4E7FF5367DCFF4C61DAFFD2D3
          EAFFF9F5F1FFE0E0EEFF233CCBFF1028BDFF090A82FF00000019000000062539
          CBFFB8C2FAFF7282E6FFA9AEE0FFD6D3E3FF5D6FDDFF536AEBFF4963EAFF495F
          D9FFD1D2E8FF919CE1FF1C38CCFF132CC0FF0B0E88FF0000001700000004283C
          C7F1B6BFF6FF9BA7F1FF7080E5FF6576E5FF6076ECFF5D76F6FF536DF3FF465F
          E7FF4058DEFF344DDAFF233ED4FF162CBDFF0C1186F400000013000000021E2B
          8AA47886E6FFBBC4F6FFC2CBFBFFB2BEFAFF9EACF8FF8A9AF6FF7589F3FF657B
          EFFF526BEBFF415CE5FF2941D2FF1625ADFF0A0E5EB10000000C000000010B11
          323B202E8DA42E44D0F12F45D9FF2D42D5FF2B3FD0FF293BCBFF2637C5FF2332
          C0FF1F2DB9FF1D29B3FF1822A1F30D1367AE0406234800000005000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          0008000000090000000B0000000B000000080000000400000001}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BA7C4AFFB87A47FFB778
          45FFB57643FFB47441FFB2723FFFB2713EFFB06E3BFFAF6E3AFF000000050000
          000C0000001100000014000000170000001A0000001DBE824FFFFFF4E9FFFEF3
          E8FFFEF3E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB2723EFF02273F7B044B
          7CE505558CFF04528AFF055088FF044F86FF044E85FFC28756FFFFF5EBFFCB8E
          5FFFC88C5CFFC68959FFC48656FFC18453FFFDF0E2FFB67743FF055181E31A8E
          BEFF18B9E6FF16B3E2FF14AFDEFF12ABDBFF1298C5FFC68D5DFFFFF7EDFFFFF6
          ECFFFFF6ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB97B49FF066097FF38CA
          EFFF1EBEE9FF1BB9E6FF17B5E2FF15B1DFFF13A0CDFFCB9363FFFFF7EFFFE0A5
          78FFDDA375FFDAA072FFD89D6FFFD59A6CFFFAEADBFFBE804EFF07659CFF49D1
          F3FF24C3EDFF20BFEAFF1EBBE7FF1BB8E5FF19AAD5FFCF996AFFFFF9F1FFFFF8
          F1FFFFF8F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC18654FF086AA0FF5AD8
          F6FF2AC9F1FF28C5EEFF24C2ECFF23C0EAFF1FB5DFFFD39F71FFFFFAF4FFFFF9
          F2FFFEF5EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC68C5BFF0970A6FF73E0
          F9FF3BD0F5FF35CDF2FF2FC9F0FF2AC6EEFF27BEE6FFD7A578FFFFFAF5FFFEF7
          EFFFFCF2EAFFFAEDE2FFF7E9DAFFCE9768FFCB9464FFC99261FF0A76ACFF8EE8
          FCFF4FD9F9FF49D6F7FF42D2F5FF3ACFF3FF31C9EEFFDBAB7FFFFEF8F1FFFCF3
          EBFFFAEEE4FFF7E9DBFFF5E4D4FFD19D6FFFFFF9F3FFD5D0CAD50B7CB2FFA7EE
          FDFF64E0FCFF5FDDFBFF56DAF9FF4DD7F8FF44CFF2FFDFB186FFDEAF82FFDCAD
          80FFDAAA7EFFD9A87BFFD7A577FFD6A375FFD5D1CDD5171716170C84B7FFBCF3
          FEFF7CE7FEFF75E5FDFF6ADCF5FF5AC3DDFF50B4D0FF49B7D3FF41BEDDFF39C5
          E6FF35CBEEFF085D93FF000000150000000000000000000000000E8BBEFFCFF7
          FFFF92ECFFFF78C8DBFF62A8BDFF5CA4B9FF59ABC3FF54B5CEFF4DBDD9FF44C6
          E4FF3CCDEFFF096297FF000000110000000000000000000000001092C4FFDFFA
          FFFFC1864BFFBE8146FFBC7D40FFB9793BFFB67636FFB47233FFB27030FFB06D
          2EFF44D1F1FF09679DFF0000000E000000000000000000000000119ACBFFEAFB
          FFFFE9C190FFE6BA87FFE2B47EFFDFAE75FFDCA86DFFD9A267FFD69E60FFBA7A
          3DFF4EDFFEFF086DA2FF0000000B000000000000000000000000118EB8E084CD
          E7FFEEFCFFFFEAFAFDFFF0D5B0FFEFCB9EFFECC595FFE5C294FFA9EFFDFF95ED
          FEFF46B0D5FF096594E300000007000000000000000000000000094A5F701291
          BBE013A2D1FF129CCDFF7CBCC8FFFCE5C2FFF0DBB9FF7EA4A4FF0E86BAFF0D82
          B6FF0B6F9CE105364D7500000003000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000070000000700000007000000070000000700000007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0001000000060000001000000016000000110000000800000002000000020000
          0009000000160000001E000000170000000A0000000200000000000000000000
          0005270F014C6B2803B29E3A03F2672502A2240D01460000000800000008240F
          0255632804B9903803F35E2402A3200D004C0000000A00000000000000000000
          000B783308AF441C03770A0400133F17025F682502A200000011000000127031
          07B73F1B0384090400153A17025F5F2502A30000001700000000000000000000
          000DC35D10F20C050127000000060B040013A23D05F20000001700000019BA57
          11F40B050138000000080A040014943C06F30000001D00000000000000000000
          00088B470EAB502708720C05012859270694923E09DE0E0601350E060138A851
          12E5572909960B050137431D05836A2D06B80000001500000000000000000000
          0003321B06448C480FABC96413F3B25714EDB45F21FF3E1B068B45230B8DB35A
          1DFFAB5313E5C15C13F479380BB6281203530000000800000000000000000000
          00010000000300000008000000103D260F64683617E3572C12F1733E20F18E51
          24E537210E700000001B00000010000000070000000200000000000000000000
          00000000000000000000000000041C140D3C322217D25E4637FF714D3AFF4622
          0FD61B0F06480000000700000000000000000000000000000000000000000000
          00000000000000000000000000095E5552C6DEDCDCFF9B8D85FF655A53FFCBC0
          B9FF41261ACB0000001100000001000000000000000000000000000000000000
          0000000000000000000228252350B9B2AFFBDAD9D7FF2F2723AA302F2FACDEDF
          E0FF8D827DFB13100D5D00000006000000000000000000000000000000000000
          00000000000000000004635F5BA9DBD9D9FF5A514BCE0605051A0707071C6A65
          64D1D1D1D1FF2F2E2CB40000000D000000010000000000000000000000000000
          0000000000011E1D1C2DBEB9B7FC948C8AF012100F3800000003000000031B18
          183EA39D99F28B8986FD1110103D000000040000000000000000000000000000
          0000000000016B696794B0ACABFF322F2E6A0000000300000000000000000000
          0005443C3973ABA098FF48423FA00000000A0000000100000000000000000000
          0000191918219D9B96ED5755539E000000030000000000000000000000000000
          0001000000076C5F57A6847368F01312112F0000000300000000000000000000
          00006765627F83827BD00909080F000000000000000000000000000000000000
          0000000000010A0909168C7362D4564A438A0000000700000000000000000909
          090A938E85B92625243300000000000000000000000000000000000000000000
          000000000000000000022924213B7F604DBD0807071000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0080010000800100008001000080010000800100008001000080010000F00F
          0000F0070000E0070000E0030000C0030000C1810000C3810000C7C100008FE1
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000050000
          0012000000190000001A0000001B0000001C0000001D0000001E0000001F0000
          001900000007000000000000000000000000000000000000000000000010C185
          54FFC08453FFBE8351FFBE8250FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B
          48FF00000019000000000000000000000000000000000000000000000013C389
          58FFFDF4EBFFFDF3E9FFFDF3E8FFFCF2E7FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E
          4BFF0000001E000000000000000000000000000000000000000000000011C78E
          5DFFFFF8F0FFFEF7EFFFFEF6EEFFFEF5EDFFFEF5ECFFFEF4EBFFFDF3E9FFBE81
          4FFF000000320000001E0000001F000000200000001A000000070000000FC991
          61FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9F1FFFFF8F1FFFFF7EFFFFDF4EBFFC185
          54FFBD804EFFBB7F4CFFBB7D4BFFBA7C49FFB87B48FF000000190000000ECC95
          66FFFFFAF4FFFFFAF5FFFFF9F3FFFFFAF4FFFFF9F2FFFEF5EDFFFCF1E7FFC389
          58FFE5D3C3FFFCF1E5FFFCF0E5FFFBEFE3FFBB7E4BFF0000001E0000000CCF99
          6BFFFFFBF7FFFFFBF6FFFFFAF5FFFFFAF5FFFEF7F0FFFCF2EAFFFAEEE2FFC78D
          5CFFE3D1C1FFFEF5ECFFFEF4EBFFFDF3E9FFBE814FFF0000001C0000000BD29E
          6FFFFFFCF8FFFFFCF8FFFFFBF7FFFEF8F2FFFCF3EBFFFAEFE5FFF7E9DCFFC991
          61FFE2D1C2FFFFF8F1FFFFF7EFFFFDF4EBFFC18554FF0000001B00000009D5A2
          74FFFFFCFAFFFFFCF9FFFEF9F5FFFCF5EDFFFAEFE6FFF6E8DBFFF4E2D1FFCC95
          65FFE3D4C6FFFFF9F2FFFEF5EDFFFCF1E7FFC38958FF0000001900000008D8A6
          78FFFFFDFBFFFEFAF6FFFCF5EFFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF99
          6AFFEBDED3FFFEF7F0FFFCF2EAFFFAEEE2FFC78D5CFF0000001700000006DAAA
          7EFFFEFBF7FFFCF6F1FFFAF1E9FFF7EBE0FFF5E6D8FFD3A072FFF3EBE4FFDFD0
          C2FFF8EFE7FFFCF3EBFFFAEFE5FFF7E9DCFFC99161FF0000001500000004DDAE
          82FFDCAD80FFDBAB7FFFDAAA7DFFD8A87BFFD8A679FFD7A476FFE6DACFFFF7EF
          E9FFFBF4ECFFFAEFE6FFF6E8DBFFF4E2D1FFCC9565FF00000013000000010000
          00040000000500000006000000070000000ED8A678FFF4EEE9FFFAF4EFFFFBF4
          EEFFFAF1E8FFF7EBE0FFD19C6EFFD09B6CFFCF996AFF0000000D000000000000
          000000000000000000000000000000000006DAAA7EFFFEFBF7FFFCF6F1FFFAF1
          E9FFF7EBE0FFF5E6D8FFD3A072FFD5D3D0DC1717172900000004000000000000
          000000000000000000000000000000000004DDAE82FFDCAD80FFDBAB7FFFDAAA
          7DFFD8A87BFFD8A679FFD7A476FF171717260000000400000000000000000000
          0000000000000000000000000000000000010000000400000005000000060000
          0007000000080000000900000007000000030000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00001F0000001F0000001F0000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000F8000000F8010000F803
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0000001A0000002000000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000C0E0C096337271EDE422D20F60B0909B6000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000040807073F6D5B4FF2F2CDABFFFFD1A4FF543D2EFF101111D30303
          03470000000E0000000100000000000000000000000000000000000000050000
          000B000000121716158CD5C4B6FFFFE9D2FFFFE5C9FF90745FFF424445FF1D1E
          1EE90505056200000014000000030000000000000000000000000808083F1A17
          14C60F0E0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA29386FF8D8D8DFF7979
          79FF292929F8070707880000001A000000040000000000000000343333D0E7D7
          C7FF685648FF303030FFBBB9B8FFFFFFFDFFE6DFD9FFBDB9B6FFCBCBCBFFB6B6
          B6FF8D8D8DFF1E1E1EFF131313A90000002100000007000000017C7D7CF8FFFF
          FFFFA99D94FF8B8B8BFF666666FF8B8A8AFFBBBBBBFFE1E3E3FFE7E7E7FFE1E1
          E1FFBDBDBDFF6E6E6EFF696969FF222222C6040404350000000B757575F0E3E4
          E4FFD0D0D0FFE0E0E0FFC4C4C4FF6B6B6BFF656565FFA9A9A9FFE0E0E0FFF0F0
          F0FFD4D4D4FFD1D1D1FFC5C5C5FF9D9D9DFF474747E20E0E0E523C3C3C657070
          70DABDBDBDFFDCDCDCFFF0F0F0FFC5C5C5FF797979FF595959FF717171FFAFAF
          AFFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E5000000000303
          0305292929494D4D4D86888888D7BDBDBDFBD9D9D9FFC5C5C5FF9C9C9CFF9F9F
          9FFF9F9F9FFFC0C0C0FFE9E9E9FFF3F3F3FFF3F3F3FFAAAAAAFB000000000000
          00000000000000000000000000012424243D464646798E8E8ECCB8B8B8F4D4D4
          D4FFCCCCCCFFA9A9A9FF8F8F8FEDC4C4C4F9DADADAFF818181BD000000000000
          00000000000000000000000000000000000000000000020202031B1B1B294242
          42717D7D7DBB979797DC2727273D25252539474747721414141C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E07F0000C01F0000C00F00000007000000030000000000000000
          0000000000000000000080000000F0000000FE000000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000070752700D0D
          AFF000000000000000000000000001010C100E0EBAFF05054660000000000000
          0000035B11C0047515FF037215FF036F14FF024B0DB00014033001010C100F11
          BBFF04053A500000000000000000050546600E0EBAFF01010C10000000000000
          0000035F11C0036413D0011E054001240650025B10D002510EC0000000000C10
          83B00E11A5E00B0C8DC00B0B8CC00C0CA3E00A0A80B000000000000000000000
          0000046312C0036011C0000000000000000002330970037014FF00000000070B
          49601119BEFF080B5F80080A6A900E0EBAFF0505466000000000000000000000
          0000046613C0046413C00008021001200640036312D0036011D0000000000102
          0C101420C0FF06083C50060847600F11BBFF01010C1000000000000000000000
          0000056B14C0068A1AFF058719FF058218FF047816F0010F0320000000000000
          00000F1C87B00D1579A00C1284B00B0E82B00000000000000000000000000000
          0000056F15C0056C14C00000000001110320047416E002390B70000000000000
          000009124B601525B8F0141FC0FF060948600000000000000000000000000000
          0000057217C0056F16C00000000000000000047115D0035C11B0000000000000
          000002030D10182CC5FF1523C2FF01020C100000000000000000000000000000
          0000067517C008981EFF07951DFF07931BFF068E1BFF022C0850000000000000
          0000000000000509253004072530000000000000000000000000000000000000
          0000021E06300227084002270840022607400009021000000000000000000000
          0000000000000000000300000006000000030000000000000000000000000000
          0001000000050000000D000000100000000B0000000300000000000000000000
          0000000000022D11014C471A027C000000110000000400000001000000000000
          00050B04012D2606008220040088200400780000000B00000000000000000000
          000067360E8CCF8533FBD88F37FF562305940903002500000012000000120000
          001F2E0F0180A73703FFDB710DFFA83703FF0000001200000000000000000000
          0000B67730E5FFE4C1FFFFDFADFFE5AA60FF9A4C11DE682B06AD592204A3772C
          05CCBA580EFAEB9523FFF6A125FFC15B0CFD0000000C00000000000000000000
          0000281A0A32BF8C4EE0F8DFC0FFFFECD0FFFEDDB3FFEFC084FFE9B369FFF0BC
          6BFFFBC56DFFF1B04DFFD8872BFFA25014E80000000400000000000000000000
          0000000000001D1308238A5A24A9DEB279FCF0D3ADFFFAE0C1FFFADDB7FFF1CA
          97FFDCA259FFA1591EDB3615045E150802240000000000000000000000000000
          000000000000000000000201000239230B477D52219A935A1FBA90531BBC854C
          1AB0502C106E150B041E00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0038C0000018C0000081CC000081C0000081C00000C3C80000C3CC0000C3C0
          0000E7C10000E3810000C0810000C0010000C0010000C0010000E0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000010000
          000800000F4200000B3300000007000000010000000000000000000000000000
          0000000000000000000000000002000000080000000800000002000000040000
          1B68030357DD020242BE00000C3D000000060000000000000000000000000000
          00000000000000000002000000120000176B000017690000000D0000020B0303
          3D8A0E0EBFFF0B0BAAFF02023EB4000008300000000500000000000000000000
          0000000000030000001201011C81040465E9030358D300000830000000020101
          0D210B0B7DA41112D7FF0A0AA3FF010135A90000052300000004000000000000
          00020000001001011E8304046FEB0909B7F903034D8F0000000E000000000000
          000301010C200B0B7BA11312D7FF0A0A9EFF01012FA000000217000000050000
          000F01011F85050574EE090AC1FF0505629A0000001400000003000000000000
          00000000000201010A1C0B0B779C1414D9FF0B0B98FF010128970000001B0101
          228A06067AF10C0CC6FF06066EA1000001150000000300000000000000000000
          00000000000000000002010106160B0B73951414DAFF0B0B91FD010138CA0808
          83F70E0ECAFF080878A60000061E000000030000000000000000000000000000
          00000000000000000000000000020000010F0B0B71961415D6FD0F10B3FF1212
          D2FF0B0B80AD01010C2700000004000000000000000000000000000000000000
          000000000000000000000000000300000725080855A01616DBFF1515DBFF1414
          D5FB06064F940000000F00000002000000000000000000000000000000000000
          0000000000000000000300000C2E030339A811119FFF1B1BDFFF1313AFD21414
          C6ED090A88F00000207D0000000B000000020000000000000000000000000000
          0000000000020101143C06064CB41515ACFF1F1FE1FF131390AE03031A330909
          4E6F1212B2DE08087DEC00001F790000000A0000000100000000000000000000
          00020303214C0C0C64C11C1CBDFF2323E5FF161693AE03031A2F000000040000
          00060808405F1313A6D109097BEB00001F770000000900000001000000010707
          335D141485D22121CCFF2828E7FF1A1A96AC04041C2E00000002000000000000
          0001000000050606324F13129AC30A0A7BEB00002075000000060303141F1717
          8BBF2828DBFF2B2BE9FF1B1B96A804041C2B0000000200000000000000000000
          000000000000000000040404253D11118DB1090969C800000923000000000F0F
          4C5A2626C4D61B1B94A305051B26000000010000000000000000000000000000
          0000000000000000000000000002020213220505283B00000003000000000000
          00000707252A0303111600000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0003F0000003E0000001C000000080000080000000C0010000E0030000F007
          0000F0070000E0030000C0010000800000000080000001E0000083F00000CFF9
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000010A0401246329
          0ADA230F03630000000A00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001030100156028
          0BD271300CEE0C05013300000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000072A12
          056F8A3E12FF4F2009B801000014000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010502
          011B7A3711E9944315FF1F0D035C000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000A4A210CA4A9511CFF572509C2000000120000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00052B13076BAD5721FF873C13F41107023B0000000400000000000000000000
          0000000000000000000000000000000000000000000000000001000000000000
          00031C0D0546994C20F9AE531CFF3014057B0000000800000000000000000000
          0000000000010000000200000003000000050603011309040217030101070000
          00020B06032282411CE7C26223FF401A07980000000C0000000000000000100A
          0717331E114B3E211069462410796F3B1CB1924E25E17D3E1BD7130A05230000
          00020B06031F85441EE6CB6A27FF56250BB60000000D00000000000000019761
          3BC7CE8B59FEDA9257FFE19A5CFFE49A5BFFB46937F93C221266000000050000
          00041E0F0743A45624F8D46F2AFF622C0EC20000000D00000000000000009C6B
          48C1F9D1A6FFFFC98EFFFFC889FFD9935AFF5D3319950201010D0C07031A150A
          0432673316B8DC7D36FFD4752FFF52260DA50000000A00000000000000006948
          2F80F2CFACFFFDD7AAFFFDCF9AFFF2BA80FFB57243EB884E2AC898582EDDB669
          37FBDC8948FFF79E4DFFC56C2FFF391B0A74000000060000000000000000573C
          2766F1CFADFFFFE5C6FFF4CB9EFFFFE4C0FFFFD7A9FFF7BD84FFF7B97BFFFFBC
          75FFFFB66BFFF9A558FFA15728F3160C062E0000000200000000000000004834
          2350F1CEA9FFEEC8A4FEA26F49C7DBAE86FAECC9A6FFF2CCA5FFF4C99BFFECB3
          7DFFDF9E68FFB46F41F53D231369000000050000000000000000000000001E18
          1220E9B580FCB88B64CD0806040A271A10355D3E2879895D3FB0906140C27C52
          35AC432716701D11093400000004000000010000000000000000000000000000
          0000A97E55B353402D5A00000000000000000000000000000001000000020000
          0002000000020000000100000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FE070000FE070000FF030000FF030000FF810000FF810000FE810000C001
          000080010000000100008001000080010000800100008003000080030000CE0F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000100D0A105C4C3D5FB9987BBEE4BC97EAEEC49FF5EEC49FF5E4BC
          97EAB9987BBE5C4C3D5F100D0A10000000000000000000000000000000000000
          000030271F32B69477BCF9CCA5FFFAD1ACFFFCD4B0FFFDD6B4FFFDD6B4FFFCD4
          B0FFFAD1ACFFF9CCA5FFB69477BC30271F320000000000000000000000003027
          1E32D0A884D9F8CDA8FFFBD5B3FFFCD8BAFFFBDBBEFFFBDCC0FFFBDCC0FFFBDB
          BEFFFCD8BAFFFBD5B3FFF8CDA8FFD0A884D930261E32000000000B09070CB38E
          6DBCF6C79EFFF8CFABFFF9D3B2FFF9D8BAFFFADBC0FFFADDC3FFFADDC3FFFADB
          C0FFF9D8BAFFF9D3B2FFF8CFABFFF6C69EFFB38E6DBC0B09070C5843315EF0BB
          8CFFF4C297FFF5C79FFFF6CAA5FFF6D0ADFFF7D3B2FFF7D4B5FFF7D4B5FFF7D2
          B2FFF6D0ADFFF6CAA5FFF5C79FFFF4C297FFF0BB8CFF5843315EAF855EBFEDB4
          80FFF0B785FFF0BA8AFFF1BC8FFFF1BF93FFF2C297FFF2C399FFF2C399FFF2C2
          97FFF1BF93FFF1BC8FFFF0BA8AFFF0B785FFEDB481FFAF855EBFD0996AEAE9AB
          73FFEAAD74FFEAAD76FFEBAE78FFEBAE7AFFEBB07AFFEBAF7BFFEBAF7AFFEBAF
          79FFEBAE7AFFEBAE78FFEAAD76FFEAAD74FFE9AB73FFD0996AEAD19763F5E3A1
          65FFE3A166FFE3A165FFE3A166FFE5A56EFFE6AB77FFE7AF7CFFE7AF7CFFE6AA
          77FFE5A56EFFE3A166FFE3A166FFE3A166FFE3A165FFD19763F5CA8A57F5DD97
          59FFDD9658FFDC9658FFE0A16AFFE4AC7BFFE4AE7EFFE4AF7FFFE4AF7FFFE4AE
          7EFFE4AC7CFFE0A16AFFDC9658FFDD9658FFDD9758FFCA8A56F5BA7B48EAD58E
          50FFD68E4EFFDA9C64FFE1AE7FFFE1AE80FFE1AD7FFFE1AD7FFFE1AD7FFFE1AE
          7EFFE1AE7FFFE1AE80FFDA9C63FFD68E4EFFD58E4FFFBA7B49EA925C34BFCB83
          46FFD18B4BFFDDA97BFFE0B389FFE0B187FFE0B288FFE0B187FFE0B188FFE0B2
          87FFE0B188FFE0B38AFFDDA97BFFD18A4BFFCB8347FF925D34BF472B175EC075
          3CFFCC8749FFE0B691FFE0B794FFE0B793FFE0B793FFE0B793FFE0B793FFE0B7
          93FFE0B793FFE0B794FFE0B691FFCC8749FFC0753BFF472B165E0905030C884E
          26BCC2793FFFDFB995FFE3C0A2FFE2BF9FFFE2BF9FFFE2BF9FFFE2BF9FFFE2BF
          9FFFE2BF9FFFE3C1A2FFDFB995FFC27A3FFF884E25BC0905030C000000002516
          0B32A05F34D9D3A17AFFE9CFB8FFEAD1BAFFE9CEB7FFE8CDB6FFE8CDB6FFE9CF
          B7FFEAD1BAFFE9D0B8FFD3A17BFFA06034D925160B3200000000000000000000
          000026180E32936444BCD9AE92FFE8CEBCFFEDD9C9FFF0E0D2FFF0E0D2FFEDD9
          C9FFE8CFBCFFD9AE92FF936444BC26180E320000000000000000000000000000
          0000000000000D0906104C38295FA38470BED1B4A2EADCBEADF5DCBEADF5D1B4
          A2EAA38470BE4C38295F0D090610000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000010101041515153F32323292444444C8505050EB505050EB4444
          44C8323232921515153F01010104000000000000000000000000000000000000
          0000080808192E2E2E90505050EE585858FF5B5B5BFF5D5D5DFF5D5D5DFF5B5B
          5BFF585858FF505050EE2E2E2E90080808190000000000000000000000000707
          0719343434AD535353FF585858FF5D5D5DFF616161FF636363FF636363FF6161
          61FF5D5D5DFF585858FF535353FF343434AD0707071900000000010101032525
          2590474747FF4F4F4FFF555555FF5C5C5CFF606060FF636363FF636363FF6060
          60FF5C5C5CFF555555FF4F4F4FFF474747FF25252590010101030C0C0C3E3636
          36F13D3D3DFF434343FF494949FF4E4E4EFF525252FF555555FF555555FF5252
          52FF4E4E4EFF494949FF434343FF3D3D3DFF363636F10C0C0C3E181818932C2C
          2CFF2F2F2FFF333333FF363636FF393939FF3C3C3CFF3E3E3EFF3E3E3EFF3C3C
          3CFF393939FF363636FF333333FF2F2F2FFF2C2C2CFF18181893191919C82121
          21FF222222FF242424FF252525FF242424FF242424FF242424FF242424FF2424
          24FF242424FF252525FF242424FF222222FF212121FF191919C8161616EC1818
          18FF181818FF181818FF181818FF242424FF303030FF383838FF383838FF3030
          30FF242424FF181818FF181818FF181818FF181818FF161616EC111111EC1212
          12FF111111FF121212FF2B2B2BFF444444FF484848FF484848FF484848FF4848
          48FF444444FF2B2B2BFF121212FF111111FF121212FF111111EC090909C80B0B
          0BFF0A0A0AFF282828FF4E4E4EFF4F4F4FFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
          4DFF4F4F4FFF4E4E4EFF282828FF0A0A0AFF0B0B0BFF090909C8040404960505
          05FF0A0A0AFF4C4C4CFF5F5F5FFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C
          5CFF5C5C5CFF5F5F5FFF4C4C4CFF0A0A0AFF050505FF04040496010101450000
          00F60C0C0CFF6C6C6CFF707070FF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F
          6FFF6F6F6FFF707070FF6C6C6CFF0C0C0CFF000000F601010145000000060000
          00A1090909FF747474FF868686FF828282FF828282FF828282FF828282FF8282
          82FF828282FF868686FF747474FF090909FF000000A100000006000000000101
          01270A0A0AC85E5E5EFFA7A7A7FFA7A7A7FFA3A3A3FFA2A2A2FFA2A2A2FFA3A3
          A3FFA7A7A7FFA7A7A7FF5E5E5EFF0A0A0AC80101012700000000000000000000
          00000404042B262626B2828282FFB3B3B3FFBFBFBFFFC7C7C7FFC7C7C7FFBFBF
          BFFFB3B3B3FF828282FF262626B20404042B0000000000000000000000000000
          0000000000000303030E1D1D1D5B606060BA969696E7A5A5A5F4A5A5A5F49696
          96E7606060BA1D1D1D5B0303030E000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000D0D0D104E4E4E5F9E9E9EBEC3C3C3EACCCCCCF5CCCCCCF5C3C3
          C3EA9E9E9EBE4E4E4E5F0D0D0D10000000000000000000000000000000000000
          000028282832969696BCD1D1D1FFD8D8D8FFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFD8D8D8FFD1D1D1FF969696BC282828320000000000000000000000002727
          2732A8A8A8D9D2D2D2FFDBDBDBFFDEDEDEFFDFDFDFFFDFDFDFFFDFDFDFFFDFDF
          DFFFDEDEDEFFDBDBDBFFD2D2D2FFA8A8A8D927272732000000000909090C8C8C
          8CBCCCCCCCFFD8D8D8FFD9D9D9FFDBDBDBFFDCDCDCFFDEDEDEFFDEDEDEFFDCDC
          DCFFDBDBDBFFD9D9D9FFD8D8D8FFCCCCCCFF8C8C8CBC0909090C4242425EBABA
          BAFFCDCDCDFFD0D0D0FFD2D2D2FFD4D4D4FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD2D2D2FFD0D0D0FFCDCDCDFFBABABAFF4242425E818181BFBABA
          BAFFC5C5C5FFC5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCACACAFFC9C9
          C9FFC8C8C8FFC7C7C7FFC5C5C5FFC5C5C5FFBABABAFF818181BF959595EAB5B5
          B5FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB5B5B5FF959595EA929293F5ADAD
          ADFFACACACFFACACACFFACACACFFB1B1B1FFB5B5B5FFB8B8B8FFB8B8B8FFB5B5
          B5FFB1B1B1FFACACACFFACACACFFACACACFFADADADFF929293F589898AF5A2A2
          A2FFA1A1A1FFA1A1A1FFABABABFFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB5B5B5FFABABABFFA1A1A1FFA1A1A1FFA2A2A2FF89898AF57D7D7DEA9696
          96FF989898FFA4A4A4FFB3B3B3FFB4B4B4FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB4B4B4FFB3B3B3FFA4A4A4FF989898FF969696FF7D7D7DEA5F5F60BF8989
          89FF929292FFAEAEAEFFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5
          B5FFB5B5B5FFB6B6B6FFAEAEAEFF929292FF898989FF5F5F60BF2D2D2D5E7878
          7AFF898989FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB8B8B8FF898989FF78787AFF2D2D2D5E0505050C5050
          52BC7A7A7BFFB8B8B8FFC1C1C1FFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
          BEFFBEBEBEFFC1C1C1FFB8B8B8FF7A7A7BFF505052BC0505050C000000001616
          1632616162D9A1A1A1FFCFCECEFFCFCFCFFFCDCDCDFFCCCCCCFFCCCCCCFFCDCD
          CDFFCFCFCFFFCFCFCEFFA1A1A1FF616162D91616163200000000000000000000
          000018181832646464BCAFAEAFFFCECECEFFD7D7D7FFDEDEDEFFDEDEDEFFD7D7
          D7FFCECECEFFAFAFAFFF636464BC181818320000000000000000000000000000
          000000000000090909103636365F828282BEB2B3B3EABEBEBEF5BEBEBEF5B2B2
          B3EA828282BE3636365F09090910000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0070000C003000080010000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000080010000C0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C1D1D36323434856A6E6FF5575858F55656
          56F55B5B5BF5636363F56E6F6FF5808484F55E6061BF2D2E2F4D000000000000
          00000000000000000000000000005D5E5FB9616161FF616161FF797979FF9090
          90FFA9A9A9FFBCBCBCFFC8C8C8FFCAC9C9FFBDBDBCFF7E8080FF000000000000
          0000000000000000000000000000565656ADC8C8C8FF6B6B6BFF848484FF9595
          95FFA8A8A8FFBDBDBDFFD4D4D4FFE9E9E9FFFFFFFFFF808080F6000000000000
          00000000000000000000000000004F4F4FADE9E9E9FFBFBFBFFF6D6D6DFFA0A0
          A0FFB2B2B2FFC6C6C6FFDCDCDCFFEAEAEAFFFFFFFFFF8F8F8FF6000000000000
          00000000000000000000000000004E4F4FADCCCCCCFFE9E9E9FFAEAEAEFF7E7C
          7AFFC6C3BFFFD6D6D6FFE9E9E9FFF4F4F4FFFFFFFFFF979797F6000000000000
          0000000000000000000000000000534F4BAABFBDBAFFCECCC9FFE6E2DDFF8994
          A3FF778EA8FFB8B5B1FFC0C0C0FFD3D3D3FFF4F4F4FFA4A4A4FF0C4E94CE2369
          A7D63D79ACD65B86ABD0010C1A2933425BB97B8BA2FF6386B2FF4778B4FF286A
          BCFF173467B9181817299DA3A3D09A9E9FD6959595D6747474CE2D88CFFF69CF
          F9FF42A8E6FF3193D8FF2886CFFF1E7CCCFF1A7ACDFF1E82D6FF2492E5FF2CA1
          F3FF001F5FAA00000000000000000000000000000000000000003A90CFF68FEB
          FFFF6ADBFFFF61D6FFFF55D2FFFF4CCDFFFF43C6FFFF3EC1FFFF3BBCFFFF35B1
          FCFF022864AD0000000000000000000000000000000000000000479AD7F6A8F3
          FFFF79E1FEFF6DDAFEFF5ED4FEFF53CEFEFF4BC8FEFF43C2FEFF3DBEFFFF3FB8
          FBFF042F6BAD000000000000000000000000000000000000000049A0DDF6C8FE
          FFFF94EDFFFF83E6FFFF6FDEFEFF5FD7FEFF55D1FEFF51CEFFFF4DCBFFFF57C7
          FDFF02326FAD00000000000000000000000000000000000000004EADEAFF96D7
          F6FFA2E2FAFFA9EBFCFFAAF1FFFFA1F0FFFF8BE4FFFF72D4F9FF5BC1F1FF46A4
          E0FF1F5488B90000000000000000000000000000000000000000213A484D3E85
          AFBF60B3E4F552A9E1F54CA2DDF54A9FD9F5449BD6F5419BD4F552A0D3F51C47
          6A8518252F360000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000F8000000F8000000F8000000F8000000F8000000F800
          000000000000001F0000001F0000001F0000001F0000001F0000001F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000E0000006200000009000000000000
          00000000000000000000000000000000000000000000000000000303031E0707
          074700000000000000000101010A030303AD020202FF00000083000000000000
          00000000000000000000000000000000000000000000000000000D0E0E691C1C
          1CF107070744010101080B0B0BB00B0B0BFF070707E701010141000000000000
          0000000000000000000000000000000000000000000000000000171A1BAA2626
          26FF1E1E1EE6151515C1171717FF111111E70303033900000000000000000000
          00000F0C0912604D3E789A7D66C4A38269D6A5846AD4836C5ABE393735ED2C2D
          2DFF292929FF242424FF1C1C1CE9050505360000000000000000000000002820
          1830AD8B6ED1E6CBB4FFF8E9DCFFFFF7EFFFFFFEF4FFC5B9AFFF383737FF3637
          37FF323232FF2D2D2DFF252525E909090943000000000000000016100C19B68D
          68D5F6DDC7FFFFF0E1FFFFF1E5FFFFF0E4FFFFF7EAFFA19A94FF404141FF4444
          44FF3E3E3EFF383839FF333333FF2B2B2BF3090909350000000076553789ECC5
          A1FFFDE4CDFFFDE8D4FFFFECDDFFFFEEE1FFFEEDDFFF787572FF515252FF4F50
          50FF464749FF444546F42B2C2DB1121212500303031100000000C39060DCF7D5
          B6FFFBDFC5FFFDE6D1FFFFEAD9FFFFF0DFFFE0D0C3FF656565FF5A5B5CFF6E6C
          6AFF9D8E81FF7D6552C600000000000000000000000000000000D8A472F0FAD9
          BBFFFADABFFFFDE3CCFFFFE7D4FFFFEFDBFFCABBB0FF827F7CFFB9AA9EFFEDD1
          B9FFFFDFC2FFA7805FD200000000000000000000000000000000D9AA7CF1FBE2
          CBFFFADDC3FFFCE1C9FFFEE4CEFFFEE4CEFFF8DFCAFFF6DEC8FFFFE7CEFFFFE2
          C8FFFDE4CDFFA98363D600000000000000000000000000000000CCA075E1FAE4
          D0FFFDE8D6FFFDE9D9FFFEEADAFFFEEADAFFFFEBDBFFFFECDCFFFDE9D9FFFEEA
          D9FFF6E0CBFFA17D5EC5000000000000000000000000000000008B6B4D99F5D9
          BEFFFDEEE1FFFDEDDFFFFEEFE2FFFEEFE3FFFEEFE3FFFEEFE2FFFDEDE0FFFFF1
          E5FFEBCBAEFF644D397700000000000000000000000000000000251E1728D6AF
          8BE7FCEFE2FFFEF4ECFFFEF2E8FFFEF1E7FFFEF1E7FFFFF2E8FFFFF6EDFFFAE9
          DAFFB8916ED1130F0C1600000000000000000000000000000000000000004034
          2945D4B08EE5F6E0CCFFFDF2E8FFFFF9F5FFFFF9F4FFFCF1E6FFF2D9C0FFBD98
          72D22A221A2F0000000000000000000000000000000000000000000000000000
          0000231D17268C705599CEA985E0DDB58FF1DCB48CF1C59F7ADA7A5F45891611
          0D18000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFF80000FF300000FF000000FF010000C003000080030000000100000001
          0000000F0000000F0000000F0000000F0000000F0000000F0000801F0000C03F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000040404220A0A0A700A0A0AB0070808D4060606EB030405EB0203
          04D4030303B00404047001010122000000000000000000000000000000000202
          020A121212801A1A1BEB282727FF403E3DFF535252FF5E5C5CFF5D5B5AFF4E4C
          4CFF363432FF181717FF070708EB050505800101010A00000000040404142222
          22B24A4848FF918C87FFCCC3BCFFEADFD7FFEFD2B0FFEEBF86FFECBD83FFECCD
          ABFFE8DCD3FFC7BCB4FF867E79FF33312FFF0C0C0CB2020202142424248D8C89
          86FFE7DFD9FFFFF9F2FFFFF7F3FFF3D8B7FFE1A558FFDB9E4FFFD99B4CFFD89A
          4BFFEECFABFFFFF3ECFFFFF5EAFFE1D6CDFF77726EFF0F0F0F8D3E3D3D75FFFF
          FAFFFFFAF5FFFAF4EFFFFAF4F0FFEBBF88FFE3A95EFFE2A961FFDEA559FFDA9D
          4DFFE1B176FFF8EFE8FFF7EDE6FFFDF2EAFFFFF6EEFF32302F7543434275FFFF
          FFFFFFFDFBFFFBF8F5FFFBF9F6FFEEC18AFFF1CD9FFFF3DBBBFFE3AB64FFDEA1
          53FFE4B67DFFF9F4F0FFF9F2EDFFFEF7F1FFFFFAF4FF373635753636368DA3A2
          A2FFEEEDEDFFFFFFFFFFFFFFFFFFFAE3C6FFF3C993FFF1CC9BFFE7AC62FFE5AA
          5EFFF5DDBFFFFFFFFFFFFFFFFDFFEAE5E2FF8F8C8BFF2222228D080808144848
          48B27C7C7CFFB3B3B2FFE0E0E0FFF6F7F8FFFAE6CBFFFBD29FFFFAD2A1FFF8E3
          CAFFF5F4F4FFDBDADAFFA8A7A6FF656565FF333334B205050514000000000404
          040A37373780616161EB707070FF828283FF919296FF999C9FFF989A9DFF8C8E
          91FF797A7AFF636363FF4F5050EB2C2C2C800303030A00000000000000000000
          0000000000000F0F0F22333333704C4C4CB0585858D45F5F5FEB5D5D5DEB5454
          54D4464646B02D2D2D700D0D0D22000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E00700008001000000000000000000000000
          000000000000000000000000000080010000E0070000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000060D12295FA1E56B90B7F93A65A0E9194989D0052F
          649D00173C62000A1B2E0002060A000000000000000000000000000000000000
          0000000000000000000000386179878E9EFFFFFFE4FFFBF7E3FFECE4D1FFCFCF
          C2FFABB5B3FF7B90A3FD4E6E92F32E517EDD103562AE0421477F000000000000
          00000000000000000000097CC7E36C7A88FFFFE0BFFFFFFFF3FFFFFFE8FFFFFE
          DEFFFFFAD2FFFFF3C5FFFFE9B6FFF5DCA7FFE4CD98FF4B7694FB000000000000
          0000000000000634536236A2E8FF58A0CBFF6C829FFFA1B0C4FFBFC2CBFFD7CF
          CBFFEFDDC9FFFFE8C7FFFFEDC2FFFFEDBBFFFFF2AFFF00000000000000000000
          0000000000000B68B3E567B9E8FF7FD8FBFF099FEDFF0B94E3FF1088D9FF1B7E
          CBFF2D7BBDFF5181AEFF778EA5FF989DA3FFC8BDA2FF00000000000000000000
          00000939525C1F88D3FF75C5ECFF4BCCF5FF1FBCF4FF22B9F5FF1CB3F4FF15A8
          F1FF0E9CEBFF058CE1FF017CD3FF006FC6FF0E68B8FF0D5DAAF8000000000000
          00002792CCE067C1EEFF76D8F5FF2DCFF5FF2DCBF6FF29C5F6FF25BDF6FF1FB2
          F2FF1BA8ECFF189EE8FF1595E2FF118BDAFF0B7FD3FF0B5A889C000000000D39
          4D5553BCEDFFAAEBFBFF5BE5F9FF2FD9F6FF31D1F4FF2FCFF8FF2AC9FAFF24BE
          F7FF1EB0F2FF1AA4EAFF1698E3FF118AD9FF127AB2CC00000000000000002B92
          CCDF8FDDF7FF97EFFBFF38E6F8FF31CDECFF26B1DEFF26B0E0FF25B1E3FF22AE
          E6FF1EA8E5FF1BA4E7FF1699E4FF158ED1EC020B0F1000000000103B4F573BAB
          ECFFA0E6F9FF5EE9FAFF33E1F6FF2FC4E7FF29B6E0FF26AEDCFF23A5D8FF1F9D
          D3FF1C96D0FF1CA3E4FF19A0E4FA07283438000000000000000043A2CCDB6ACA
          F3FF87E6FAFF36E0F9FF37DBF3FF31C9EAFF2EC3E6FF2CBBE2FF28B3DFFF25AA
          D9FF23AFE4FF20B1F0FF0F4F69700000000000000000000000007ACCE1E8B3F1
          FCFF52DCF9FF2FDCF8FF39DFF5FF38DBF2FF35D5EFFF31CAEBFF2DC0E5FF2BBC
          E5FF28C0F3FF187A9EA6000000000000000000000000000000003F64696B97E4
          F5F72BCEF7FE33D9F8FF3AE1F8FF3CE6F7FF3DE7F7FF39E0F7FF35D6F4FF30D0
          F5FF24A7CBD20000000000000000000000000000000000000000000000000D19
          1D1D0B3F4D4F155865681D7582862898A4A930B7C4CA34C7D9DF32CAE3E82EBE
          DBE0041215160000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F0070000F0000000F0000000E0010000E0010000C0000000C000
          000080010000800100000003000000070000000F0000001F0000801F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000002E19093C77431996A86325CBC6762CE9C57329E9A65E
          1FCB733E14962B16073C00000000000000000000000000000000000000000000
          00000E08031178471D94E09449FAF3B46EFFF4C791FFF3CDA0FFF3CA9DFFF2BF
          86FFF0A85BFFDB8432FA703C13940C0602110000000000000000000000000E09
          04119A612EB6F2B36DFFF7D7B1FFEFEAE4FFEAEEF3FFE7EEF6FFE5ECF4FFE3E7
          ECFFE6DFD8FFF0C799FFED9C48FF8D4E1AB60C06021100000000000000007F52
          2894F4BA78FFF7E4CCFFF0F4F8FFEDEFF1FFEAE4DEFFE7D9CCFFE4D6C9FFE4E1
          DDFFE1E4E8FFE0E4E9FFEDD1B0FFED9D49FF713C1394000000003322113AE9AD
          68FAF9E1C1FFF4F7FBFFF2F5F8FFEEE1D4FFE29F5EFFDE934BFFDC8E44FFDC9A
          5CFFE4DDD6FFE2E4E7FFE0E5EAFFF0C89BFFDC8533FA2A16073A89613697F8CD
          97FFF9F6F1FFF6F8FAFFF5F6F6FFF2F1F0FFE7B582FFE09246FFDD8D40FFE1B2
          84FFE8E9E9FFE6E6E7FFE2E4E7FFE6E1D9FFF0A95EFF753F1597C08F56CDFBE0
          BCFFFAFCFFFFF9F9F9FFF8F7F7FFF6FBFFFFEDCBA9FFE2964AFFE09449FFE7CC
          B2FFEBF0F5FFE8E8E8FFE5E6E6FFE5E8EBFFF2C189FFA96022CDDEAC6EE9FCE8
          CDFFFCFEFFFFFBFBFAFFF9F9F9FFF8FEFFFFEFCFAEFFE59C51FFE39A50FFEACE
          B2FFEEF1F6FFEBEBEBFFE8E8E8FFE6EBF0FFF3CC9EFFC6772CE9E1B073E9FDEA
          D0FFFEFFFFFFFCFCFCFFFBFDFDFFF8F1E9FFECBA83FFE7A45BFFE59F55FFECD1
          B6FFF0F4F8FFEEEEEEFFEBEBEBFFE9EDF3FFF4CFA1FFC8792FE9C79C66CDFDE5
          C5FFFFFFFFFFFEFEFEFFFDFEFFFFF9F0E6FFEFC291FFEBB173FFE8A55EFFEED4
          B8FFF3F7FBFFF1F1F0FFEDEEEEFFECEFF2FFF4C791FFAC6828CD93734997FBDA
          ADFFFFFCF9FFFFFFFFFFFEFEFEFFFCFDFDFFF7E4CFFFF2D4B1FFF2D4B4FFF4EC
          E3FFF4F6F7FFF2F2F2FFEFF1F4FFF1ECE5FFF3B46DFF7B481C97382C1C3AF4CA
          90FAFDECD5FFFFFFFFFFFFFFFFFFFBF3E8FFF0BD80FFEEB26DFFEEB87CFFF6EB
          DFFFF7F8FAFFF4F4F6FFF3F6FAFFF7D7AFFFE2984AFA2E1B0B3A000000009072
          4A94FAD6A4FFFEF2E2FFFFFFFFFFFFFFFFFFFBEEDEFFF6D8B4FFF4D3ADFFF9F2
          EBFFF9FBFEFFF7FBFEFFF9E4CBFFF3B46AFF7D4E23940000000000000000110D
          0811B18E5DB6FBD6A3FFFDEBD3FFFEFBF7FFFFFFFFFFFFFFFFFFFEFFFFFFFDFF
          FFFFFBF7F2FFFBE0BDFFF5BA73FFA06A34B60E09041100000000000000000000
          0000110D081190724A94F4C98EFAFAD9AAFFFCE3C2FFFDE8CDFFFDE7CAFFFBDE
          B8FFF9CC92FFEDB068FA855A2E940F0904110000000000000000000000000000
          000000000000000000003A2D1C3C92724A96C59C65CBE3B174E9E2AF6EE9C192
          58CB8D6639963726143C00000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F00F0000C003000080010000800100000000000000000000000000000000
          0000000000000000000000000000000000008001000080010000C0030000F00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          200000000000000400000000000000000000000000000000000000000000CD82
          46FFCC7F42FFC97B3DFFC77738FFC57333FFC36F2FFFC16C2BFFBF6A28FFBE67
          25FFBD6523FFBC6421FFBB621FFFBB621FFFBB621FFF0000000000000000EEAF
          77FFFFEDCAFFFFE9C4FFFFE8C1FFFFE6BEFFFFE6BCFFFFE4B9FFFFE3B6FFFFE2
          B3FFFFE1B0FFFFE0ADFFFFDEAAFFFFE5B2FFBB621FFF0000000000000000EEB0
          78FFFFE9CBFFFFE6C5FFFFE5C2FFFFE3BEFFFFE2BBFFFFE0B8FFFFDEB5FFFFDE
          B1FFFFDCAEFFFFDAABFFFFD9A7FFFFDFADFFBB6320FF0000000000000000EFB1
          7AFFFFEDD3FFD7AC75FFE7BB80FFE1B986FFC6A178FFA58360FF9D7C5AFFAB8D
          69FFD4B58CFFF9D8ACFFFFDCAEFFFFE2B3FFBC6522FF0000000000000000EFB3
          7DFFFFF1DCFFD4A35BFFD6BC9DFFB58858FFBD772EFFCC8A36FFCD9947FFA081
          4AFF715636FFB39872FFF8D9AEFFFFE5BAFFBE6725FF0000000000000000F0B6
          82FFFFF3E1FFDCA44CFF9D6623FFDA8F2FFFF59C35FFE59438FFEAA03FFFFFCD
          5FFFDCBD75FF7C603EFFD1B38CFFFFE8C1FFBF6A28FF0000000000000000F1B9
          87FFFFF4E5FFDFB97DFFF9B134FFEFA02CFFB37022FFB79471FFD6B48FFFC080
          38FFDFAC53FFA88753FFB2926DFFFFEAC7FFC16D2DFF0000000000000000F2BD
          8DFFFFF5E8FFF0E2CDFFE7B44BFFEEA62AFFBE7724FF9B5E20FFA36523FFB36F
          2BFFB97128FFA2672AFF9B795AFFFFEDCEFFC37132FF0000000000000000F3C2
          93FFFFF6EBFFEDE0CCFFEAD3A2FFF5C244FFCC8A23FFE2A95CFFE7B16AFFD38A
          30FFF9A036FFC88232FFA4876CFFFFEED1FFC67638FF0000000000000000F4C6
          9BFFFFF8EFFFE2D1B8FFECD5A1FFF7E2A7FFC19B42FF997853FFB79261FFD18C
          29FFF7A534FFAE7A3DFFDBC5A9FFFFEFD5FFC97C40FF0000000000000000F5CB
          A3FFFFFAF2FFFFF7EDFFE3D3B1FFF0DBA1FFF5DC86FFD7B03DFFDFA329FFF0A9
          2BFFD6973AFFC3A57EFFF8E5CCFFFFF0D7FFCD8349FF0000000000000000F7D0
          ABFFFFFBF5FFFFF9F1FFFDF5ECFFDECDABFFE3D091FFE9D26BFFE8BD45FFE6B7
          4AFFC5A67AFFE4CEABFFE4C99EFFFFF1D9FFD18B51FF0000000000000000F8D6
          B3FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC4FFEDD9
          B5FFE5CA98FFE4C792FFE9D2B3FFFFF1DBFFD6945DFF0000000000000000F9DB
          BBFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
          F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9D69FF0000000000000000FBE0
          C6FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
          F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA674FF0000000000000000FCE1
          C3FFFBE3C9FFFBE1C5FFFBDEC0FFFBDDBDFFFADBB9FFFAD9B6FFFAD7B3FFFAD6
          B1FFF9D4ADFFF9D3ABFFF8D0A7FFF8CEA4FFE4AD7AFF00000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          0000800100008001000080010000800100008001000080010000800100008001
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFF9DBBDFFF0CEABFFECC8A4FFEBC6
          A3FFE9C4A0FFE8C29DFFE7BF9AFFE5BC97FFB87745FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFF2D4B4FFB87A47FFB77845FFB576
          43FFB47441FFB3733FFFB2713DFFB1703CFFB1703CFFB1703CFF00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFEED0B2FFBD804EFFFFFFFFFFFFFF
          FFFFEEEEEEFFDEDEDEFFEEEEEEFFFFFFFFFFFFFFFFFFB1713DFF00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFE7C5A7FFC18755FFFFFFFFFF9292
          92FF1C1C1CFF8C8C8CFFDEDEDEFFFFFFFFFFFFFFFFFFB47441FF00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFCA9C77FFC68D5DFFFFFFFFFF2A2A
          2AFFBFBFBFFF1F1F1FFFD9D9D9FFFFFFFFFFFFFFFFFFB77946FF00000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB68359FFCB9464FFFFFFFFFF1414
          14FFD9D9D9FF050505FFD9D9D9FFFFFFFFFFFFFFFFFFBC7F4CFF00000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFEEDBCAFFD09B6CFFFFFFFFFF1C1C
          1CFFD9D9D9FF0B0B0BFFD9D9D9FFFFFFFFFFFFFFFFFFC08553FF00000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFF2E4D6FFD4A173FFD39F70FF2525
          25FFCF996AFF121212FFCB9464FFC99161FFC78F5EFFC58C5BFF00000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFBF6F0FFF2E5D9FFEEDECFFF2E2E
          2EFFEEDECFFFEEDDCEFFEEDDCEFFE7D1BEFFB97F50FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FF3737
          37FFCFA17BFFCD9F78FF191919FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000064141
          41FF0D0D0D450B0B0B45212121FF0000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000001919
          1955303030C0282828C00E0E0E55000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FF87
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000E00000014000000150000001700000018000000190000001B0000001C0000
          001E0000001F0000002000000021000000230000001C000000080000000BBF7F
          4DFFBE7E4CFFBE7D4BFFBD7D4AFFBD7C49FFBC7B49FFBC7B48FFBB7A48FFBB7A
          47FFBA7946FFBA7846FFB97846FFB97845FFB97744FF0000001C0000000CC181
          50FFF8DDC1FFFADDBFFFFBDFC1FFFCE1C3FFFDE1C3FFFDE1C2FFFCE0C1FFFBDE
          BFFFF9DBBBFFF7D9B8FFF6D5B4FFF3D1B0FFBA7947FF000000210000000AC385
          54FFEFD1B4FFF9E1C6FFFFE9D0FFFFE9CEFFFFE8CDFFFFE7CCFFFFE7CBFFFFE6
          CAFFFFE5C8FFFDE3C5FFF7D8B9FFECC7A4FFBC7C49FF0000001F00000008C589
          59FFFBE6D1FFF2D6BAFFF3D8BDFFFDE7CFFFFFEBD3FFFFEBD2FFFFEAD1FFFFE9
          CFFFFDE4CAFFF3D4B4FFF0D0AFFFF8DCBFFFBE7E4DFF0000001D00000006C88B
          5DFFFFF1E1FFFFF0DEFFF8E2CDFFF1D6BCFFF6DDC5FFE9CDB1FFE9CDB2FFF6DC
          C2FFF0D2B5FFF7DEC4FFFFEBD3FFFFEAD1FFC08150FF0000001B00000005C98F
          62FFFFF4E8FFFFF3E5FFFFF3E4FFFDEDDAFFD1A987FF9D6130FF9D6130FFD0A9
          85FFFAE5CFFFFEECD7FFFFEED9FFFFEDD8FFC28453FF0000001900000004CB92
          66FFFFF7EDFFFFF5EAFFE9D1BAFFB58157FFB88961FFEEDBC9FFEEDBC8FFB685
          5DFFAF7B4EFFE3C3A3FFFBE6D0FFFDEDD9FFC48758FF0000001600000003CD95
          69FFF6E9DDFFCBA281FFB57D51FFE2C9B4FFFFF9F1FFFFF8F0FFFFF8EFFFFFF7
          EEFFDFC4ADFFA97042FFC1926AFFEDCFB2FFC78B5DFF0000001400000002C58C
          5FFFBD885EFFDDC0A8FFFCF7F1FFFFFBF7FFFFFBF5FFFFFAF4FFFFFAF4FFFFFA
          F3FFFFFAF2FFFBF3E9FFD5B498FFAA6E3FFFB77949FF0000001200000001CC98
          6FFFF9F2EBFFFFFDFBFFFFFDFBFFFFFDFAFFFFFDF9FFFFFCF9FFFFFCF8FFFFFC
          F8FFFFFCF7FFFFFBF6FFFFFBF6FFF6ECE2FFBC8355FF0000001000000001DBB0
          8DFFDAAF8BFFD8AD89FFD8AD88FFD6AB86FFD5A983FFD3A781FFD2A580FFD0A3
          7DFFCFA17BFFCD9F78FFCB9D76FFCA9A73FFC89870FF0000000B000000000000
          0000000000010000000200000002000000030000000400000005000000060000
          00060000000800000008000000090000000B0000000900000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000C0000000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000212121FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000383838FF000000000000000000000000C06E
          28FFFDFAF8FFC06D28FFFDFAF8FFC06C28FFFDFAF7FFC06C29FFFCFAF7FFC06B
          29FFFCFAF7FF5E5E5EFF575757FF515151FF4B4B4BFF454545FF00000000FDFB
          F9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F7FFFDFAF7FFFCFAF7FFFCFAF7FF6A6A6AFF000000000000000000000000C172
          27FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF7FFFDFAF7FF838383FF000000000000000000000000FDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF9FFFDFAF8FFFDFA
          F8FFFDFAF8FFFDFAF8FFFDFAF8FFFDFAF8FF000000000000000000000000C276
          28FFFDFBFAFFFDFBFAFFD0CFE7FF0F0F98FF0B0A96FF060693FFB9B8DDFF0606
          91FFFDFBF8FFFDFAF8FFFDFAF8FFBF6D27FF000000000000000000000000FDFC
          FAFFFDFCFAFFFDFCFAFF1F1EA3FFBEBDE1FFFDFBFAFFE5E3EFFF0A0A97FFE4E2
          EFFFFDFBF9FFFDFBF9FFFDFBF9FFFDFBF8FF000000000000000000000000C47C
          29FFFDFCFAFFFDFCFAFF2D2DABFFE7E6F2FFFDFCFAFFE6E4F1FF14149EFFFDFB
          F9FFFDFBF9FFFDFBF9FFFDFBF9FFBF6F26FF000000000000000000000000FDFC
          FBFFFDFCFBFFFDFCFAFFD8D7ECFF3434AFFF2D2DACFF2626A8FF1F1FA5FFFDFB
          FAFFFDFBFAFFFDFBFAFFFDFBF9FFFDFBF9FF000000000000000000000000C783
          2CFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFFFDFCFAFFE9E8F3FF2D2DAEFFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFBFAFFC07325FF000000000000000000000000FEFD
          FCFFFEFDFBFFFEFDFBFFFEFDFBFF5454C0FF4C4CBCFF4444B9FFBAB9E3FFFDFC
          FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFF000000000000000000000000CA89
          30FFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFDFBFFFEFDFBFFFEFCFBFFFDFC
          FBFFFDFCFBFFFDFCFBFFFDFCFAFFC27825FF000000000000000000000000FEFD
          FCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFBFFFEFD
          FBFFFEFCFBFFFEFCFBFFFDFCFBFFFDFCFBFF000000000000000000000000CE90
          34FFFEFDFDFFCC8D31FFFEFDFCFFCB8A2FFFFEFDFCFFC9862DFFFEFDFCFFC783
          2BFFFEFDFBFFC68129FFFEFDFBFFC47E27FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFB0000FFFB000080000000800300008003000080030000800300008003
          000080030000800300008003000080030000800300008003000080030000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000024201CFF221E1AFF201C18FF1E1A16FF1C1814FF1B16
          13FF0D0B09800202021A00000000000000000000000000000000000000000000
          000000000000000000000A09083F27221FFF25201CFF00000000000000000F0D
          0B7F1C1915FF0E0B0A8000000000000000000000000000000000000000000000
          00000000000000000000000000002C2724FF2A2521FF00000000000000000605
          042A211D19FF1A1612D500000000000000000000000000000000000000000000
          0000000000000000000000000000312C29FF2F2A26FF00000000000000000706
          052A25211DFF1D1A17D500000000000000000000000000000000000000000000
          000000000000000000000000000037322EFF342F2CFF00000000000000001614
          127F2A2622FF1412108000000000000000000000000000000000000000000000
          00000000000000000000000000003C3733FF3A3531FF37322FFF35302CFF322D
          29FF1D1A189C0504041A00000000000000000000000000000000000000000000
          0000000000000000000000000000413D38FF3F3A36FF000000001614125F3732
          2EFF211F1CA00000000000000000000000000000000000000000000000000000
          000000000000000000000000000047413DFF453F3BFF000000000403030F3D38
          34FF37322FF00000000000000000000000000000000000000000000000000000
          000000000000000000001312113F4C4743FF4A4440FF000000001A18165F423D
          3AFF282523A00000000000000000000000000000000000000000000000000000
          00000000000000000000534E4AFF514C48FF4F4945FF4C4743FF4A4541FF2D29
          28A00F0E0D380000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F00F0000F18F0000F98F0000F98F0000F98F
          0000F80F0000F91F0000F91F0000F11F0000F01F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001614119F201C19F1201C18FF1E1A16FD110F0C9F0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000605052725201CFF201C18ED010101090000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000221E1ACC27241FFF0C0B0A540000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001412116F2C2824FF1D1A17B10000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000004040415302C29FC2E2A27FC0303
          0312000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000262321B135302CFF1513
          116C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000141312573A3531FF2B27
          24C9000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020202093B3834F03D38
          34FF090808270000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002A27259C423D
          3AFF211F1C840000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002F2C2A9F423D3AE24842
          3FFF443F3BFA2A26249F00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000F07F0000F87F0000FC7F0000FC7F0000FC3F
          0000FE3F0000FE3F0000FE1F0000FF1F0000FE0F0000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001E1915FF1C1814FF1A1612FF181510FF17130FFF15110EFF1411
          0DFF130F0CFF13100BFF130F0CFF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000403031A110F0D801B1714D51E1A16FF1C1814FF1712
          10D50D0B09800202021A00000000000000000000000000000000000000000000
          000000000000000000001513118027221FFF191513AA0807063F0807063F1411
          0FAA1C1915FF0E0B0A8000000000000000000000000000000000000000000000
          00000000000000000000262320D52C2724FF0A09083F00000000000000000907
          073F211D19FF1A1612D500000000000000000000000000000000000000000000
          00000000000000000000342F2BFF312C29FF0000000000000000000000000000
          000025211DFF231F1BFF00000000000000000000000000000000000000000000
          00000000000000000000393531FF37322EFF0000000000000000000000000000
          00002A2622FF28241FFF00000000000000000000000000000000000000000000
          000000000000000000003F3A36FF3C3733FF0000000000000000000000000000
          0000302B27FF2D2824FF00000000000000000000000000000000000000000000
          00000000000000000000443F3BFF413D38FF0000000000000000000000000000
          000035312CFF322E2AFF00000000000000000000000000000000000000000000
          00000000000000000000494440FF47413DFF0000000000000000000000000000
          00003A3532FF38332FFF00000000000000000000000000000000000000000000
          0000000000000404030C4E4945FF4C4743FF0303030C00000000000000000303
          030C403B37FF3D3834FF0303020C000000000000000000000000000000000000
          00000000000044403DCB534E4AFF514C48FF3F3A37CB00000000000000003935
          32CB45403CFF433D39FF332F2CCB000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000E0070000FFFF0000F00F0000F00F0000F18F0000F3CF0000F3CF
          0000F3CF0000F3CF0000F3CF0000E1870000E1870000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000393430FF36312DFF342F2BFF312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004E4945FF4C4642FF494440FF47413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000C01F0000FFFF
          0000C0030000FFFF0000C01F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000342F2BFF312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF231F1BFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000494440FF47413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF38332FFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F00F0000FFFF
          0000C0030000FFFF0000F00F0000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002E2925FF2B2723FF292521FF27221FFF25201CFF221E1AFF201C18FF1E1A
          16FF1C1915FF1B1613FF191511FF171410FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000312C29FF2F2A26FF2C2824FF2A2521FF2823
          1FFF25211DFF231F1BFF211D19FF1F1B17FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000443E3AFF413C38FF3F3A36FF3C3733FF3A3531FF37322FFF35302CFF322D
          29FF302B27FF2D2824FF2B2722FF282420FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000047413DFF453F3BFF423D39FF3F3B37FF3D38
          34FF3A3532FF38332FFF35302DFF332E2AFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057524EFF55504CFF534E4AFF514C48FF4F4945FF4C4743FF4A4541FF4842
          3FFF45403CFF433D39FF403B37FF3E3935FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000FFFF0000C0030000FFFF0000F8030000FFFF
          0000C0030000FFFF0000F8030000FFFF0000C0030000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00020000000900000011000000120000000A0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00083C210C6E834819D0804619D1381F0B700000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E8D501CCEFEE0C0FFFDD9B4FF84491AD00000001000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000C96551FCDFFF3E8FFFFECD9FF8D501CCF0000000F000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000644280F669A5A21CC975820CD42260E6A0000000700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00020000000B00000016000000170000000D0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00053C210C64834819CA804619CA381F0B660000000600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00088E501CC8FEE0C0FFFDD9B4FF844A1ACA0000000A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000796551FC7FFF3E8FFFFECD9FF8D4F1CC900000009000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000344280F5D9A5A21C7975820C742260E610000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000060000000B0000000C000000070000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00023C210C5C834919C5804619C5381F0B5E0000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00038D501CC3FEE0C0FFFDD9B4FF854A1AC40000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000296551FC2FFF3E8FFFFECD9FF8D4F1CC400000004000000005F5F5FFF5D5D
          5DFF5A5A5AFF575757FF555555FF525252FF0000000000000000000000000000
          000144280F569A5A21C2975820C242260E590000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF0081FF000081FF000081FF00008103000081FF000081FF000081FF000081FF
          00008103000081FF000081FF000081FF000081FF00008103000081FF0000E3FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000060360CD274410EFF5C330BCD000000000000000000000000000000000000
          0000160C02345A3007D76A3907FF693907FF0000000000000000000000000000
          00000000000055300CBA2917055A000000000000000000000000000000000000
          00000D07011E6B3A09FC6A3909FC0A0501180000000000000000000000000000
          000000000000271606545A330CC3000000000000000000000000000000000000
          0000391F05846E3C09FF482806AB000000000000000000000000000000000000
          000000000000010100036C3E0FE7120A02270000000000000000000000000301
          000665380BE76F3D0BFF1C100342000000000000000000000000000000000000
          0000000000000000000040250A8743260A900000000000000000000000002716
          0557713F0DFF5E340AD500000000000000000000000000000000000000000000
          0000000000000000000010090221794612FF784511FF764310FF75430FFF7442
          0FFF73410EFF301B066C00000000000000000000000000000000000000000000
          000000000000000000000000000058330EB72E1A076000000000150C032D7642
          10FF6F3E0EF30704010F00000000000000000000000000000000000000000000
          0000000000000000000000000000271706515F370FC60000000048290B997744
          11FF452709960000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010003704112E71B100439744311F37845
          12FF150C032D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003F250B815E360FC17B4713FF5D36
          0EC3000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F09031E7C4815FC7C4814FF2A18
          0757000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000593410B4774514F00302
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C7C30000E7C30000E7C70000E3870000F38F0000F00F
          0000F90F0000F91F0000F81F0000FC3F0000FC3F0000FE3F0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006137
          0DD275420FFF5D340BCD0000000000000000000000000000000000000000160C
          02345B3108D76B3908FF6A3907FF000000006D6D6DFF6D6D6DFF000000000000
          000056320CBA2917065A00000000000000000000000000000000000000000D07
          011E6C3B09FC6B3A09FC0A050118000000000000000000000000000000000000
          0000281706545B340DC300000000000000000000000000000000000000003A20
          06846F3C0AFF4A2806AB0000000000000000754210FF00000000000000000000
          0000010100036D3F0FE7120A0327000000000000000000000000030200066639
          0BE7703E0CFF1D100342000000007A4815FF784512FF764310FF000000000000
          00000000000041250A8744270A90000000000000000000000000281605577340
          0EFF5E350BD50000000000000000000000007C4A17FF00000000000000000000
          000000000000100902217A4612FF794612FF784511FF764310FF75430FFF7442
          0FFF311C066C000000000000000000000000814F1DFF00000000000000000000
          0000000000000000000058340EB72E1B076000000000150C032D774410FF703F
          0FF30704010F000000000000000000000000875625FF00000000000000000000
          0000000000000000000028170751603810C600000000492A0B99784512FF4628
          0A96000000000000000000000000000000008E5E2FFF00000000000000000000
          0000000000000000000001010003714213E71C100439754412F37A4612FF150C
          032D00000000000000000000000095683AFF926435FF906030FF000000000000
          000000000000000000000000000040250B815F3710C17C4814FF5E360FC30000
          00000000000000000000000000000000000095683BFF00000000000000000000
          00000000000000000000000000000F09031E7D4916FC7D4915FF2A1907570000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005A3510B4774615F0030200060000
          00006D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF6D6D6DFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF00008F840000CF870000CF8D0000C7080000E71D0000E01D
          0000F21D0000F23D0000F0380000F87D0000F87F0000FC400000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0005000000130000001A0000001B0000001C0000001D0000001E0000001F0000
          00210000002200000023000000240000001D0000000800000000000000000000
          0011BC7F4DFFBB7E4CFFBA7C49FFB87B49FFB87947FFB77846FFB67744FFB576
          43FFB47441FFB37340FFB3723FFFB1713EFF0000001C00000000000000000000
          0014BE8351FFF9EDE0FFF9ECDFFFF9EBDEFFF8EADDFFF8EADCFFF8E9DBFFF8E8
          DAFFF7E8D9FFF7E7D8FFF7E7D7FFB47441FF0000002300000000000000000000
          0012C18756FFFCF1E6FFBEB2A5FF83705FFF97816EFFD7C6B5FFFAEDE0FFFAED
          E0FFF9ECDEFFF9EBDDFFF9EBDDFFB67744FF0000002100000000000000000000
          0010C48A5AFFFEF4EBFF66594EFFF8F8F8FFF8F8F8FF9A8472FFFCF1E6FF7877
          76FF737271FF6E6D6DFFFBEEE1FFB87B48FF0000001F00000000000000000000
          000FC78F5EFFFFF9F2FF5C5149FFF8F8F8FFF8F8F8FF897765FFFEF5ECFFFEF5
          EAFFFEF3E9FFFDF3E8FFFCEFE3FFBB7E4BFF0000001D00000000000000000000
          000DCA9362FFFFFAF4FFB3ACA6FF5D534AFF6B5D52FFC4B9AFFFFFF8F0FFFFF7
          EFFFFFF6EEFFFDF3E9FFFBEFE3FFBE814FFF0000001B00000000000000000000
          000BCD9667FFFFFAF6FFFFFAF5FFFFFAF4FFFFFAF3FFFFF9F3FFFFF9F2FFFFF9
          F1FFFEF5ECFFFCF1E6FFFAEDE0FFC18554FF0000001A00000000000000000000
          000ACF9B6CFFFFFBF6FFC6BCB3FF937E6DFFA9917DFFE2D4C8FFFFF9F3FFFEF7
          F0FFFCF2E8FFFAEDE1FFF7E8D9FFC38958FF0000001800000000000000000000
          0008D29F70FFFFFCF8FF6C5F54FFF8F8F8FFF8F8F8FFAB937FFFFEF7F1FF8785
          83FF82807EFF7B7A78FFF5E2D1FFC78D5CFF0000001600000000000000000000
          0007D5A375FFFFFDFAFF5C534CFFF8F8F8FFF8F8F8FF95806EFFFCF4ECFFFAEF
          E4FFF6E7DAFFF4E1D0FFF0DAC6FFC99161FF0000001400000000000000000000
          0006D9A77AFFFFFDFBFFB1AEABFF5D544CFF6D5F54FFC5B9AFFFFAF0E7FFF7EB
          DFFFD09A6BFFCF9869FFCE9768FFCC9565FF0000000D00000000000000000000
          0005DBAB7FFFFFFEFDFFFFFEFBFFFEFAF7FFFCF6F0FFFAF1E9FFF7EADFFFF5E6
          D8FFD29E6FFFFFFCF9FFD5D2CFDC1717162A0000000400000000000000000000
          0003DDAF83FFFFFEFCFFFEFBF8FFFCF7F1FFFAF2EAFFF7EBE1FFF4E5D7FFF2E0
          D0FFD5A274FFD5D2D0DB17171626000000040000000000000000000000000000
          0002E0B387FFDFB185FFDFB083FFDDAE82FFDCAD80FFDBAB7FFFDAAA7DFFD8A8
          7BFFD8A679FF1717172400000003000000000000000000000000000000000000
          0000000000020000000300000003000000040000000500000005000000060000
          0007000000060000000200000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00800100008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008003000080070000C00F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000046240966AB57
          13FFA95511FFA7530FFFA6520EFFA4500CFFA34E0BFF150A0122150A01229F4C
          09FF9E4B08FF9D4A07FF9C4906FF9C4906FF9C4906FF3E1D026647260A66B05B
          17FFAE5915FFAB5712FFA95511FFA7530FFFA6520EFF0B05011100000000A14E
          0BFFA04C0AFF9F4C09FF9E4B08FF9D4A06FF9C4906FF3E1D026649270C66904C
          16CC000000000C060111512A0A77AB5713FF9E5011EE0000000000000000994B
          0BEEA34F0BFF4B2405770B050111000000007E3B06CC3F1E0366000000000000
          0000311A0844A75818EEB15D18FF8B4912CC2E18064400000000000000002C16
          044484420BCCA3500CFF97490AEE2B1503440000000000000000000000000D07
          0211AE5E1FEEB7621EFF9D5418DD0C0602110000000000000000000000000000
          00000B06011190470CDDA4500DFF984A0BEE0B05011100000000000000005B33
          1277BF6A25FFBC6722FF572F0F77000000000000000000000000000000000000
          0000000000004F280877A75410FFA6530FFF4D26067700000000000000009F5B
          23CCC46F2AFFC16C27FF26150733000000000000000000000000000000000000
          00000000000023120433AA5713FFA95611FF86430CCC0000000000000000B066
          2ADDC9742EFFC6712BFF00000000000000000000000000000000000000000000
          00000000000000000000AF5B17FFAD5914FF934B10DD0000000000000000B46A
          2DDDCE7833FFCA7530FF0D080311000000000000000000000000000000000000
          0000000000000C060211B35F1AFFB15C18FF974E13DD00000000000000009D5F
          2BBBD47F39FFD07C36FF45281155000000000000000000000000000000000000
          0000000000003E220B55B7631DFFB5601CFF834512BB00000000000000005838
          1B66DB8A42FFD8863FFF8D5527AA000000000000000000000000000000000000
          0000000000007F4618AABC6722FFB9641FFF49270C6600000000000000000000
          0000B5783CCCDF9248FFDB8D43FF643E1D770000000000000000000000000000
          00005C341477C36E29FFC16C27FF98541CCC0000000000000000000000000000
          0000100B0611A9753DBBE3994DFFDE9047FFAD6A32CC623A1A7760381777A35F
          26CCC9742FFFC7722DFF905220BB0D0703110000000000000000000000000000
          000000000000000000005D412266976634AADC8D45FFD5823BFFD27B36FFCF79
          34FF895022AA522F146600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000000000000080000021840000C183000083C1000087E1000087E1
          00008FF1000087E1000087E1000087E10000C3C30000C0030000F00F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000090000
          000E0000000F0000000F00000010000000100000001000000010000000100000
          00100000001000000010000000100000000F0000000A00000002845D50C1B780
          6EFFB67E6CFFB47C6AFFB47A69FFB27967FFB17765FFB07662FFAF7461FFAE73
          5FFFAD725EFFAD715DFFAC705CFFAC6F5BFF7B4F40C100000009BB8775FFFAF4
          F0FFF9F1EDFFF9F1ECFFF9F0ECFFF8F1EBFFF8F0EBFFF8F0EBFFF8F0EAFFF7F0
          EAFFF7F0EAFFF7EFEAFFF7EFEAFFF8EFEAFFB37B68FF0000000DBD8A79FFFBF6
          F3FFF7EFE8FFF9F2EEFFF9F2EEFFF9F2EEFFF9F2EEFFF9F2EDFFF9F2EDFFF7ED
          E7FFF6EDE7FFF7EDE7FFF6EDE7FFF9F1EBFFB67E6CFF0000000DC08F7EFFFCF9
          F6FFF8EFE9FFC19989FFC09989FFBF9787FFBF9686FFBE9585FFBD9484FFF7EF
          E9FFF7EEE9FFF7EEE8FFF7EEE8FFF9F2EFFFB98371FF0000000CC49382FFFDFA
          F9FFF8F0EBFFFAF4F0FFFAF4EFFFFAF3EFFFFAF4EFFFFAF4EFFFFAF3EFFFF7EF
          E9FFF7EFE9FFF8EFE9FFF7EFE9FFFAF5F1FFBB8776FF0000000BC69787FFFEFC
          FBFFF8F1ECFFC49F90FFC49E8FFFC49D8DFFC39C8CFFC29B8BFFC1998AFFF8F0
          EBFFF8F0EBFFF8F0EAFFF8EFEAFFFBF7F4FFBE8C7AFF00000009C89B8BFFFEFD
          FDFFF8F2EEFFF9F1EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1
          ECFFF8F1ECFF4A62DAFF4860D9FFFCF9F7FFC1907FFF00000008CA9F8FFFFEFE
          FDFFF9F2EEFFFAF2EEFFFAF2EEFFF9F2EEFFF9F2EEFFF9F2EDFFF9F2EDFFF9F2
          EDFFF9F1EEFF526CDEFF506ADCFFFDFAF8FFC39483FF00000007CCA192FFFFFF
          FEFFFAF3F0FFF9F3F0FFF9F3EFFFFAF3F0FFFAF3F0FFF9F3EFFFFAF3EFFFF9F2
          EFFFF9F3EEFF5B76E1FF5974E0FFFDFBFAFFC69887FF00000006CDA394FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFC99C8CFF00000005A08377BFD8B0
          A1FFD7B0A0FFD7B0A0FFD7AF9FFFD6AF9FFFD6AE9EFFD5AE9EFFD5AD9DFFD4AC
          9CFFD4AB9CFFD3AA9AFFD2A999FFD2A899FF9A7B70C000000003000000010000
          0002000000020000000300000003000000030000000300000003000000030000
          0003000000030000000300000003000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 624
    Top = 200
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGray
    end
  end
  object UndoDropDownGallery: TdxRibbonDropDownGallery
    BarManager = BarManager
    GalleryItem = rgiUndo
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bstSelectionInfo'
      end>
    ItemOptions.ShowShortCuts = True
    ItemOptions.Size = misLarge
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 624
    Top = 232
    PixelsPerInch = 96
  end
  object MiniToolbar: TdxRibbonMiniToolbar
    ItemLinks = <
      item
        ButtonGroup = bgpStart
        ViewLevels = [ivlSmallIcon]
        Visible = True
        ItemName = 'bBold'
      end
      item
        ButtonGroup = bgpMember
        Position = ipContinuesRow
        ViewLevels = [ivlSmallIcon]
        Visible = True
        ItemName = 'bItalic'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonAlignLeft'
      end
      item
        ButtonGroup = bgpMember
        Position = ipContinuesRow
        ViewLevels = [ivlSmallIcon]
        Visible = True
        ItemName = 'dxBarButtonCenter'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonAlignRight'
      end
      item
        Visible = True
        ItemName = 'bFontColor'
      end
      item
        ViewLevels = [ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
        Visible = True
        ItemName = 'dxBarButtonBullets'
      end>
    Ribbon = Ribbon
    Left = 624
    Top = 264
    PixelsPerInch = 96
  end
  object clValidationContacts: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pvdValidationContacts'
    Left = 536
    Top = 336
    object clValidationContactsCustomerID: TIntegerField
      DisplayWidth = 4
      FieldName = 'CustomerID'
    end
    object clValidationContactsFirstName: TStringField
      DisplayWidth = 13
      FieldName = 'FirstName'
      Size = 50
    end
    object clValidationContactsMiddleName: TStringField
      DisplayWidth = 17
      FieldName = 'MiddleName'
      Size = 100
    end
    object clValidationContactsLastName: TStringField
      DisplayWidth = 16
      FieldName = 'LastName'
      Size = 50
    end
    object clValidationContactsName: TStringField
      DisplayWidth = 46
      FieldName = 'Name'
      ReadOnly = True
      Size = 50
    end
    object clValidationContactsEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object clValidationContactsGender: TIntegerField
      FieldName = 'Gender'
    end
  end
  object pvdValidationContacts: TDataSetProvider
    DataSet = DM.clPersons
    Left = 536
    Top = 368
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 376
    Top = 288
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 4
      Offsets.RootItemsAreaOffsetVert = 4
      PixelsPerInch = 96
    end
  end
  object ActionList1: TActionList
    Images = cxSmallImages
    Left = 680
    Top = 392
    object actAlignLeft: TAction
      AutoCheck = True
      Caption = 'Align &Left'
      GroupIndex = 1
      ImageIndex = 27
      ShortCut = 16460
      OnExecute = dxBarButtonAlignClick
    end
    object actAlignCenter: TAction
      Tag = 2
      AutoCheck = True
      Caption = '&Center'
      GroupIndex = 1
      ImageIndex = 28
      ShortCut = 16453
      OnExecute = dxBarButtonAlignClick
    end
    object actAlignRight: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Align &Right'
      GroupIndex = 1
      ImageIndex = 29
      ShortCut = 16466
      OnExecute = dxBarButtonAlignClick
    end
  end
  object ilLargeImagesSVG: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 752
    Top = 392
    Bitmap = {
      494C010114001800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000444444C6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000870000
      00FD000000B70000003800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009363
      15D8CD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFAE76
      19EB000000000000000000000000000000000000000000000000000000000000
      0000986716DCCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B
      1DFFA87118E70000000000000000000000000000000000000000000000EB0000
      002400000060000000DB000000B7000000380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002318056BA36D17E30705
      0131000000000000000000000000000000000000000000000000000000000000
      0000050300289A6816DD2D1F0679000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000AD0000
      005F000000000000000400000060000000DB000000B700000038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D1E0678976616DB030200200000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010100198B5E14D2392708880000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000580000
      00B70000000000000000000000000000000400000060000000DB000000B70000
      0038000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000271A0570976616DB0201001C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010000158B5E14D23323078100000000000000000000
      0000000000000000000000000000000000000000000000000000000000090000
      00EE000000150000000000000000000000000000000000000004000000600000
      00DB000000B70000003800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000150E0353A16C17E20201001D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001000015956516DA1F150465000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00A7000000680000000000000000000000000000000000000000000000000000
      000400000060000000DB000000B7000000380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000503002BAB7318E9070401300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004030026AA7318E8090601370000
      0000000000000000000000000000000000000000000000000000000000000000
      004D000000C00000000000000000000000000000000000000000000000000000
      0000000000000000000400000060000000DB000000B700000038000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000051000000C6000000FB000000FC000000CB0000005B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005885C14D01C130460000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000140D0250986716DC0000
      000A000000000000000000000000000000000000000000000000000000000000
      0007000000ED0000001A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000400000060000000DB000000B70000
      0038000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000088000000D50000004B000000070000000500000045000000CD0000
      0098000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B1D067665440EB300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053380CA23826
      0886000000000000000000000000000000000000000000000000000000000000
      00000000009C0000007200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000600000
      00DB000000B70000003800000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      004B000000D80000000F000000000000000000000000000000000000000A0000
      00CD0000005B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000CAE7619EB0402002500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000201001AB178
      19ED010100170000000000000000000000000000000000000000000000000000
      000000000046000000C700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000400000060000000DB000000B7000000380000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00BB000000550000000000000000000000000000000000000000000000000000
      0045000000CB0000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000002116
      04675C3E0DAB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B33
      0A9B2C1E06770000000000000000000000000000000000000000000000000000
      000000000003000000E900000023000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000400000060000000DB000000B700000038000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000D60000001300000000000000000000000000000000000000000000
      00EC000000140000000000000000000000000000000000000000000000000000
      0005000000FC0000000100000000000000000000000000000000000000090000
      00E4000000000000000000000000000000000000000000000000000000006644
      0EB4150F03540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D09
      0242795111C40000000000000000000000000000000000000000000000000000
      0000000000000000009400000079000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000400000060000000DB000000B70000
      003800000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000A90000006700000000000000000000000000000000000000000000
      00EA000000170000000000000000000000000000000000000000000000000000
      0007000000FB0000000000000000000000000000000000000000000000540000
      00BA00000000000000000000000000000000000000000000000000000000A36E
      18E40201001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000DBB7F1BF40000000000000000000000000000000000000000000000000000
      0000000000000000003D000000D2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000600000
      00DB000000B7000000310000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      000000000044000000D500000002000000000000000000000000000000000000
      00B50000005B0000000000000000000000000000000000000000000000000000
      004B000000C60000000000000000000000000000000000000000000000C00000
      005600000000000000000000000000000000000000000000000000000000C183
      1CF8000000070000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000000000000000
      00000000000000000002000000E1000000890000008000000080000000800000
      00800000008000000080000000800000008000000080000000800000007A0000
      0003000000000000000000000000000000000000000000000000000000000000
      000400000062000000EB0000000400000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      000000000000000000C400000062000000000000000000000000000000000000
      0042000000DE00000015000000000000000000000000000000000000000F0000
      00D5000000510000000000000000000000000000000000000052000000D20000
      000200000000000000000000000000000000000000000000000000000000B47A
      1AEF000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000000000000000
      00000000000000000003000000E5000000790000007000000070000000700000
      00700000007000000070000000700000007000000070000000700000006A0000
      0002000000000000000000000000000000000000000000000000000000000000
      000900000073000000E70000000300000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000002F000000E8000000220000000000000000000000000000
      00000000007A000000DE0000005B000000170000001500000055000000D80000
      00880000000000000000000000000000000000000019000000E50000003B0000
      0000000000000000000000000000000000000000000000000000000000009C6A
      16DF030200220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      0012B47A1AEF0000000000000000000000000000000000000000000000000000
      00000000000000000043000000CC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000009000000700000
      00E4000000A7000000260000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000068000000D60000001500000000000000000000
      00000000000000000042000000B6000000EB000000EC000000BB0000004B0000
      00000000000000000000000000000000000F000000CC00000079000000000000
      0000000000000000000000000000000000000000000000000000000000006A47
      0FB7120C024E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B08
      013E7C5311C60000000000000000000000000000000000000000000000000000
      0000000000000000009900000074000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000900000070000000E4000000A70000
      002A00000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      000000000000000000000000000000000078000000DC0000002E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000025000000D50000008700000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E1F
      067A402B098F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003323
      07803B2808890000000000000000000000000000000000000000000000000000
      000000000005000000EC0000001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000900000070000000E4000000A70000002A000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000005A000000E9000000840000
      0010000000000000000000000000000000000000000000000000000000000000
      00000000000C0000007A000000EA000000660000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000403
      0026A77018E60000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000029565
      16DA080601350000000000000000000000000000000000000000000000000000
      00000000004B000000C200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000900000070000000E4000000A70000002A0000000000000000000000000000
      0000000000000000000000000000000000003A3A3AB6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      000000000000000000000000000000000000000000000000001D0000009F0000
      00ED0000009C0000005600000025000000100000001000000023000000520000
      0097000000EB000000A700000023000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F4A10BB1D14046200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000150E03528258
      13CB000000000000000000000000000000000000000000000000000000000000
      0000000000A20000006C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000009000000700000
      00E4000000A70000002A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001A00000070000000B1000000DC000000EF000000EF000000DE000000B50000
      00740000001F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000008060135A56F18E500000012000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000C9A6816DD0E09
      0243000000000000000000000000000000000000000000000000000000000000
      0009000000EF0000001600000000000000000000000000000000000000000000
      00000000000000000000000000000000000C00000072000000E4000000A70000
      002A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003F2B098E65440EB3000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000155390CA44E350B9E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0053000000BA0000000000000000000000000000000000000000000000000000
      0000000000000000000C00000078000000E9000000A70000002A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000066F4A10BB4A320A9A0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013E2A098D7D5411C70000000A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00AC000000630000000000000000000000000000000000000000000000000000
      000C00000078000000E9000000A70000002A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D6F4A10BB65440EB300000012000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D593C0DA87B5311C600000012000000000000
      00000000000000000000000000000000000000000000000000000000000D0000
      00EF00000011000000000000000000000000000000000000000C000000780000
      00E9000000A70000002A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000063F2B098EA56F18E51E1404620000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000041911035A9E6A16E04A320A9A0000000900000000000000000000
      00000000000000000000000000000000000000000000000000000000005D0000
      00B20000000000000000000000000000000C00000078000000E9000000A70000
      002A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000717171FF717171FF0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000080601356F4A10BBA770
      18E6402B098F120C024E03020022000000100000001003020020110B024A3C29
      088BA16C17E2785011C30B07013D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000B40000
      0059000000000000000C00000078000000E9000000A70000002A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000403
      00262E1F067A69470FB79C6A16DFB47A1AEFB47A1AEF9F6C16E16D4A0FBA3222
      077F0604002C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000EB0000
      003400000078000000E9000000A70000002A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000003A3A3AB6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000007A0000
      00EC000000A70000002A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      004800000092000000CC000000F1000000FF000000FF000000F3000000CF0000
      00960000004D0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      004800000092000000CC000000F1000000FF000000FF000000F3000000CF0000
      00960000004D0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030000
      004800000092000000CC000000F1000000FF000000FF000000F3000000CF0000
      00960000004D0000000500000000000000000000000000000000000000000000
      00000000000000000000000000000000000081470AC6D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF96530BD50000000000000000000000000000
      0000000000000000000000000000000000000000000400000067000000E00000
      00CA00000076000000390000001000000000000000000000000E000000350000
      0071000000C3000000E400000070000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000400000067000000E00000
      00CA00000076000000390000001000000000000000000000000E000000350000
      0071000000C3000000E400000070000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000400000067000000E00000
      00CA00000076000000390000001000000000000000000000000E000000350000
      0071000000C3000000E400000070000000060000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000002B000000CF000000BC000000340000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000002D000000B1000000D70000003300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000002B000000CF000000BC000000340000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000002D000000B1000000D70000003300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000002B000000CF000000BC000000340000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000002D000000B1000000D70000003300000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000004B000000EA0000006100000000000000000001
      0015161D09713D5019BA577224DD0000000000000000926214D7724D10BE2C1E
      06770201001B000000000000000000000055000000EA00000057000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004B000000EA0000006100000000000000000001
      0015161D09713D5019BA577224DD0000000000000000926214D7724D10BE2C1E
      06770201001B000000000000000000000055000000EA00000057000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004B000000EA0000006100000000000000000001
      0015161D09713D5019BA577224DD0000000000000000926214D7724D10BE2C1E
      06770201001B000000000000000000000055000000EA00000057000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000004A000000E700000038000000000000000A202B0D886889
      2AF251631DCF3A4013A873982FFF0000000000000000CD8B1DFF563A0CA58358
      13CCBA7F1BF3422C09910000000E000000000000002E000000E2000000570000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004A000000E700000038000000000000000A202B0D886889
      2AF251631DCF3A4013A873982FFF0000000000000000CD8B1DFF563A0CA58358
      13CCBA7F1BF3422C09910000000E000000000000002E000000E2000000570000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000004A000000E700000038000000000000000A202B0D886889
      2AF251631DCF3A4013A873982FFF0000000000000000CD8B1DFF563A0CA58358
      13CCBA7F1BF3422C09910000000E000000000000002E000000E2000000570000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000028000000EA000000390000000000000000303F13A5637E27E92C2D
      0C8E26250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F3B28088AA36D17E369460FB600000000000000000000002E000000EA0000
      0033000000000000000000000000000000000000000000000000000000000000
      000000000028000000EA000000390000000000000000303F13A5637E27E92C2D
      0C8E26250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F3B28088AA36D17E369460FB600000000000000000000002E000000EA0000
      0033000000000000000000000000000000000000000000000000000000000000
      000000000028000000EA000000390000000000000000303F13A5637E27E92C2D
      0C8E26250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F3B28088AA36D17E369460FB600000000000000000000002E000000EA0000
      003300000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0002000000CB00000065000000000000000000000000020300245B7826E3414A
      16B526250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F5E3F0DADAB7318E90604002D000000000000000000000000000000550000
      00D7000000060000000000000000000000000000000000000000000000000000
      0002000000CB00000065000000000000000000000000020300245B7826E3414A
      16B526250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F5E3F0DADAB7318E90604002D000000000000000000000000000000550000
      00D7000000060000000000000000000000000000000000000000000000000000
      0002000000CB00000065000000000000000000000000020300245B7826E3414A
      16B526250A8126250A8173982FFF0000000000000000CD8B1DFF3222077F3222
      077F5E3F0DADAB7318E90604002D000000000000000000000000000000550000
      00D700000006000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0060000000C20000000100000007143220960104032E00000000020300245B78
      26E3414A16B526250A8173982FFF0000000000000000CD8B1DFF3222077F5E3F
      0DADAB7318E90604002D000000000503022D623432B60000000E000000000000
      00B3000000700000000000000000000000000000000000000000000000000000
      0060000000C20000000100000007143220960104032E00000000020300245B78
      26E3414A16B526250A8173982FFF0000000000000000CD8B1DFF3222077F5E3F
      0DADAB7318E90604002D000000000503022D623432B60000000E000000000000
      00B3000000700000000000000000000000000000000000000000000000000000
      0060000000C20000000100000007143220960104032E00000000020300245B78
      26E3414A16B526250A8173982FFF0000000000000000CD8B1DFF3222077F5E3F
      0DADAB7318E90604002D000000000503022D623432B60000000E000000000000
      00B300000070000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000010000
      00D90000003C000000000A1A106C215236C1245839C70104032E000000000203
      00245B7826E3414A16B573982FFF0000000000000000CD8B1DFF5E3F0DADAB73
      18E90604002D000000000503022DA05651E9A45A51EC3E222092000000000000
      002D000000E40000000500000000000000000000000000000000000000010000
      00D90000003C000000000A1A106C215236C1245839C70104032E000000000203
      00245B7826E3414A16B573982FFF0000000000000000CD8B1DFF5E3F0DADAB73
      18E90604002D000000000503022DA05651E9A45A51EC3E222092000000000000
      002D000000E40000000500000000000000000000000000000000000000010000
      00D90000003C000000000A1A106C215236C1245839C70104032E000000000203
      00245B7826E3414A16B573982FFF0000000000000000CD8B1DFF5E3F0DADAB73
      18E90604002D000000000503022DA05651E9A45A51EC3E222092000000000000
      002D000000E4000000050000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000000000000000003D0000
      00D3000000000000000D255B3BCA0C21187C112D1F8F245839C70104032E0000
      0000020300245B7826E373962FFE0000000000000000C3851CF9AB7318E90604
      002D000000000503022DA05651E9754233C75B3523AEB15F59F50201011A0000
      0000000000C30000004D000000000000000000000000000000000000003D0000
      00D3000000000000000D255B3BCA0C21187C112D1F8F245839C70104032E0000
      0000020300245B7826E373962FFE0000000000000000C3851CF9AB7318E90604
      002D000000000503022DA05651E9754233C75B3523AEB15F59F50201011A0000
      0000000000C30000004D000000000000000000000000000000000000003D0000
      00D3000000000000000D255B3BCA0C21187C112D1F8F245839C70104032E0000
      0000020300245B7826E373962FFE0000000000000000C3851CF9AB7318E90604
      002D000000000503022DA05651E9754233C75B3523AEB15F59F50201011A0000
      0000000000C30000004D0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000870000
      00810000000007100A571C482FB40A1B14700A1B1470112D1F8F245839C70104
      032E00000000010200200709034000000000000000000A07013A040300260000
      00000503022DA05651E9754233C754311FA754311FA78F4F43DC2A1616780000
      0000000000710000009600000000000000000000000000000000000000870000
      00810000000007100A571C482FB40A1B14700A1B1470112D1F8F245839C70104
      032E00000000010200200709034000000000000000000A07013A040300260000
      00000503022DA05651E9754233C754311FA754311FA78F4F43DC2A1616780000
      0000000000710000009600000000000000000000000000000000000000870000
      00810000000007100A571C482FB40A1B14700A1B1470112D1F8F245839C70104
      032E00000000010200200709034000000000000000000A07013A040300260000
      00000503022DA05651E9754233C754311FA754311FA78F4F43DC2A1616780000
      000000000071000000960000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000BF0000
      004500000000132F1E92133022950A1B14700A1B14700A1B1470112D1F8F2458
      39C7010302280000000000000000000000000000000000000000000000000402
      0226A05651E9754233C754311FA754311FA754311FA76E3F2FC06A3936BE0000
      000000000036000000CF00000000000000000000000000000000000000BF0000
      004500000000132F1E92133022950A1B14700A1B14700A1B1470112D1F8F2458
      39C7010302280000000000000000000000000000000000000000000000000402
      0226A05651E9754233C754311FA754311FA754311FA76E3F2FC06A3936BE0000
      000000000036000000CF00000000000000000000000000000000000000BF0000
      004500000000132F1E92133022950A1B14700A1B14700A1B1470112D1F8F2458
      39C7010302280000000000000000000000000000000000000000000000000402
      0226A05651E9754233C754311FA754311FA754311FA76E3F2FC06A3936BE0000
      000000000036000000CF0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000E30000
      001E00000000193E28A7296642D6296642D6296642D6296642D6296642D62863
      40D30308053C0000000000000000000000000000000000000000000000000905
      043AB6635EF9BF6762FFBF6762FFBF6762FFBF6762FFBF6762FF884946D70000
      00000000000E000000F300000000000000000000000000000000000000E30000
      001E00000000193E28A7296642D6296642D6296642D6296642D6296642D62863
      40D30308053C0000000000000000000000000000000000000000000000000905
      043AB6635EF9BF6762FFBF6762FFBF6762FFBF6762FFBF6762FF884946D70000
      00000000000E000000F300000000000000000000000000000000000000E30000
      001E00000000193E28A7296642D6296642D6296642D6296642D6296642D62863
      40D30308053C0000000000000000000000000000000000000000000000000905
      043AB6635EF9BF6762FFBF6762FFBF6762FFBF6762FFBF6762FF884946D70000
      00000000000E000000F30000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000F00000
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000F00000
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000F00000
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000EF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000EF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000EF0000
      0010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000E00000
      0020000000000022469000346CB200346CB200346CB200346CB200346CB20034
      6CB200040A370000000000000000000000000000000000000000000000000703
      07407C3075FE7C3075FF7C3075FF7C3075FF7C3075FF7C3075FF5E2559DE0000
      000000000010000000F100000000000000000000000000000000000000E00000
      0020000000000022469000346CB200346CB200346CB200346CB200346CB20034
      6CB200040A370000000000000000000000000000000000000000000000000703
      07407C3075FE7C3075FF7C3075FF7C3075FF7C3075FF7C3075FF5E2559DE0000
      000000000010000000F100000000000000000000000000000000000000E00000
      0020000000000022469000346CB200346CB200346CB200346CB200346CB20034
      6CB200040A370000000000000000000000000000000000000000000000000703
      07407C3075FE7C3075FF7C3075FF7C3075FF7C3075FF7C3075FF5E2559DE0000
      000000000010000000F10000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000BC0000
      0048000000000017307700102163000408330004083300040833000F1F60002B
      59A20001021D0000000000000000000000000000000000000000000000000200
      012062275DE3331430B5120711811207118112071181291027A7421A3EBA0000
      000000000038000000CC00000000000000000000000000000000000000BC0000
      0048000000000017307700102163000408330004083300040833000F1F60002B
      59A20001021D0000000000000000000000000000000000000000000000000200
      012062275DE3331430B5120711811207118112071181291027A7421A3EBA0000
      000000000038000000CC00000000000000000000000000000000000000BC0000
      0048000000000017307700102163000408330004083300040833000F1F60002B
      59A20001021D0000000000000000000000000000000000000000000000000200
      012062275DE3331430B5120711811207118112071181291027A7421A3EBA0000
      000000000038000000CC0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000830000
      00860000000000070F440020418B0004083300040833000F1F60002B59A20001
      031F0000000000020529000A154F000000000000000004041248020208300000
      00000200022462275DE3331430B512071181120711814A1D46CF180917720000
      0000000000760000009200000000000000000000000000000000000000830000
      00860000000000070F440020418B0004083300040833000F1F60002B59A20001
      031F0000000000020529000A154F000000000000000004041248020208300000
      00000200022462275DE3331430B512071181120711814A1D46CF180917720000
      0000000000760000009200000000000000000000000000000000000000830000
      00860000000000070F440020418B0004083300040833000F1F60002B59A20001
      031F0000000000020529000A154F000000000000000004041248020208300000
      00000200022462275DE3331430B512071181120711814A1D46CF180917720000
      000000000076000000920000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000370000
      00D90000000100000008002D5DA500081046000F1F60002B59A20001031F0000
      00000003062D005AB9E9006BDEFF0000000000000000383AE5FB3234CCED0202
      0A37000000000200022462275DE3331430B5190A188E6F2B68F2000000150000
      0000000000C80000004800000000000000000000000000000000000000370000
      00D90000000100000008002D5DA500081046000F1F60002B59A20001031F0000
      00000003062D005AB9E9006BDEFF0000000000000000383AE5FB3234CCED0202
      0A37000000000200022462275DE3331430B5190A188E6F2B68F2000000150000
      0000000000C80000004800000000000000000000000000000000000000370000
      00D90000000100000008002D5DA500081046000F1F60002B59A20001031F0000
      00000003062D005AB9E9006BDEFF0000000000000000383AE5FB3234CCED0202
      0A37000000000200022462275DE3331430B5190A188E6F2B68F2000000150000
      0000000000C8000000480000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      00D30000004400000000000B17540028549D002B59A20001031F000000000003
      062D005AB9E9003166AD006BDEFF00000000000000003A3CEDFF181964A63234
      CCED02020A37000000000200022462275DE364275DE9230D2188000000000000
      0034000000E00000000300000000000000000000000000000000000000000000
      00D30000004400000000000B17540028549D002B59A20001031F000000000003
      062D005AB9E9003166AD006BDEFF00000000000000003A3CEDFF181964A63234
      CCED02020A37000000000200022462275DE364275DE9230D2188000000000000
      0034000000E00000000300000000000000000000000000000000000000000000
      00D30000004400000000000B17540028549D002B59A20001031F000000000003
      062D005AB9E9003166AD006BDEFF00000000000000003A3CEDFF181964A63234
      CCED02020A37000000000200022462275DE364275DE9230D2188000000000000
      0034000000E0000000030000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      0057000000CA000000020000000300152B710001031F000000000003062D005A
      B9E9003166AD001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F1819
      64A63234CCED02020A370000000002000224341431A50000000A000000000000
      00BA000000670000000000000000000000000000000000000000000000000000
      0057000000CA000000020000000300152B710001031F000000000003062D005A
      B9E9003166AD001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F1819
      64A63234CCED02020A370000000002000224341431A50000000A000000000000
      00BA000000670000000000000000000000000000000000000000000000000000
      0057000000CA000000020000000300152B710001031F000000000003062D005A
      B9E9003166AD001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F1819
      64A63234CCED02020A370000000002000224341431A50000000A000000000000
      00BA00000067000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0001000000C2000000710000000000000000000000000003062D005AB9E90031
      66AD001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F181964A63234CCED02020A37000000000000000000000000000000610000
      00CF000000040000000000000000000000000000000000000000000000000000
      0001000000C2000000710000000000000000000000000003062D005AB9E90031
      66AD001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F181964A63234CCED02020A37000000000000000000000000000000610000
      00CF000000040000000000000000000000000000000000000000000000000000
      0001000000C2000000710000000000000000000000000003062D005AB9E90031
      66AD001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F181964A63234CCED02020A37000000000000000000000000000000610000
      00CF00000004000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000021000000E7000000440000000000000000002B5AA2005ABAEA0023
      4892001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F12124A8F2F31BEE51C1D74B2000000000000000000000038000000EA0000
      002B000000000000000000000000000000000000000000000000000000000000
      000000000021000000E7000000440000000000000000002B5AA2005ABAEA0023
      4892001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F12124A8F2F31BEE51C1D74B2000000000000000000000038000000EA0000
      002B000000000000000000000000000000000000000000000000000000000000
      000000000021000000E7000000440000000000000000002B5AA2005ABAEA0023
      4892001A377F001A377F006BDEFF00000000000000003A3CEDFF0E0E3A7F0E0E
      3A7F12124A8F2F31BEE51C1D74B2000000000000000000000038000000EA0000
      002B00000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000003F000000E800000044000000000000000500173078005C
      BFED004C9FD8003269AF006BDEFF00000000000000003A3CEDFF1B1B6DAD282A
      A5D53435D2F00F0F3C82000000080000000000000039000000E70000004B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000003F000000E800000044000000000000000500173078005C
      BFED004C9FD8003269AF006BDEFF00000000000000003A3CEDFF1B1B6DAD282A
      A5D53435D2F00F0F3C82000000080000000000000039000000E70000004B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000003F000000E800000044000000000000000500173078005C
      BFED004C9FD8003269AF006BDEFF00000000000000003A3CEDFF1B1B6DAD282A
      A5D53435D2F00F0F3C82000000080000000000000039000000E70000004B0000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000003F000000E80000007100000002000000000000
      000C000F1F61002F62AA004590CD000000000000000023248FC61B1B6DAD090A
      26670000000F000000000000000100000065000000EA0000004A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000003F000000E80000007100000002000000000000
      000C000F1F61002F62AA004590CD000000000000000023248FC61B1B6DAD090A
      26670000000F000000000000000100000065000000EA0000004A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000003F000000E80000007100000002000000000000
      000C000F1F61002F62AA004590CD000000000000000023248FC61B1B6DAD090A
      26670000000F000000000000000100000065000000EA0000004A000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000021000000C2000000CA000000440000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000003C000000C2000000CB0000002800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000021000000C2000000CA000000440000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000003C000000C2000000CB0000002800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000021000000C2000000CA000000440000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000003C000000C2000000CB0000002800000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000100000057000000D30000
      00D900000086000000480000002000000010000000100000001E000000450000
      0081000000D3000000D900000060000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000057000000D30000
      00D900000086000000480000002000000010000000100000001E000000450000
      0081000000D3000000D900000060000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000057000000D30000
      00D900000086000000480000002000000010000000100000001E000000450000
      0081000000D3000000D900000060000000020000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003800000083000000BC000000E1000000EF000000EF000000E2000000BF0000
      00870000003D0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003800000083000000BC000000E1000000EF000000EF000000E2000000BF0000
      00870000003D0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003800000083000000BC000000E1000000EF000000EF000000E2000000BF0000
      00870000003D0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000006E3C08B6D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF80460AC50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050B0446254C1AB1458D30F14D9E36FF469031F32750
      1BB6070E054E0000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000D50000004E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000051C39139A397328DA0A15075E0000001400000000000000110912
      0658254A1AB00000000500000000000000000000000000000000000000000000
      0000282AA5D50505154E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003040F422D2F
      B8E1000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000037000000EA0000004E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      00001B371397264F1BB50000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020A373133C8EA0505154E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003040F423133C9EB0304
      0F42000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000037000000EA0000004E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000936315D8130C024E000000000000000000000000000000000409
      033E3B7929DF0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020A373133C8EA0505154E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040F423133C9EB03040F420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000037000000EA0000004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000045000000B0000000EF000000FF000000F1000000B60000
      004D000000000000000000000000000000000000000000000000000000000000
      000000000044000000B0000000EF000000FF000000F1000000B60000004D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009060137AC7519EA130C024E0000000000000000000000002142
      17A60D1A096A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020A373133C8EA0505154E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003040F423133C9EB03040F42000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000037000000EA0000004E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00030000009A000000DA0000005E000000140000000000000011000000580000
      00D3000000A70000000600000000000000000000000000000000000000030000
      009A000000DA0000005E00000014000000000000001100000058000000D30000
      00A7000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009060137AC7519EA130C024E00000000000000003D7D
      2BE3010200220000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020A373133C8EA0505154E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F423133C9EB03040F4200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000037000000EA0000004E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0097000000B40000000B00000000000000000000000000000000000000000000
      0007000000A6000000A700000000000000000000000000000000000000970000
      00B40000000B0000000000000000000000000000000000000000000000070000
      00A6000000A70000000000000000000000000000000000000000000000000000
      0000000000000402002450360B9FAC7519EACD8B1DFFCD8B1DFFCD8B1DFFCD8B
      1DFFCD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFB17819ED0000000000000000448C
      30F0000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020A373133C8EA0505154E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003040F423133C9EB03040F420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000037000000EA0000
      004E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000003D0000
      00DE0000000C0000000000000000000000000000000000000000000000000000
      000000000007000000D30000004D00000000000000000000003D000000DE0000
      000C000000000000000000000000000000000000000000000000000000000000
      0007000000D30000004D00000000000000000000000000000000000000000000
      0000100B0249AB7318E92D1F06790201001A0000000000000000000000000000
      000000000000000000000D090242AE7619EB0D09024200000000000000003C7B
      2BE1010301250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020A373133C8EA0505
      154E000000000000000000000000000000000000000000000000000000000000
      000003040F423133C9EB03040F42000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000370000
      00EA0000004E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000A60000
      0068000000000000000000000000000000000000000000000000000000000000
      00000000000000000058000000B60000000000000000000000A6000000680000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000058000000B600000000000000000000000000000000000000000302
      0020AC7518EA0906013700000000000000000000000000000000000000000000
      0000000000000D090242AE7619EB0D0902420000000000000000000000001E3E
      15A00F1E0A710000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020A373133
      C8EA0505154E0000000000000000000000000000000000000000000000000304
      0F423133C9EB03040F4200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0037000000EA0000004E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000E10000
      0021000000000000000000000000000000000000000000000000000000000000
      00000000000000000011000000F30000000000000000000000E4000000210000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000011000000F10000000000000000000000000000000000000000452F
      0A95332307810000000000000000000000000000000000000000000000000000
      000000000000815612CA0D090242000000000000000000000000000000000307
      02373E7E2BE40000001100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0A373133C8EA0505154E0000000000000000000000000000000003040F423133
      C9EB03040F420000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000037000000EA0000004E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000EF0000
      000F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF0000000000000000000000FF0000000F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000009A68
      16DD040300260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000162D108A2C581EBF00000011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020A373133C8EA0505154E000000000000000003040F423133C9EB0304
      0F42000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000037000000EA0000004E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000DF0000
      0024000000000000000000000000000000000000000000000000000000000000
      00000000000000000014000000FF0000000000000000000000FF000000240000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000014000000F10000000000000000000000000000000000000000B47A
      1AEF0000000F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000002162E108A3E7E2BE40E1D0A6F0103012400000010010200210D1A
      09692C591FC00000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020A373133C8EA0505154E03040F423133C9EB03040F420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000037000000EA0000004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000A00000
      006E000000000000000000000000000000000000000000000000000000000000
      0000000000000000005E000000FF0000000000000000000000FF0000006E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000005E000000B100000000000000000000000000000000000000009565
      16DA0503002A0000000000000000000000000000000000000000000000000000
      00003032C4E80000011217185EA13638DDF63739E0F8191B68A9000002180000
      00000000000000000000030702371E3D15A03C7B2BE1448B30EF3D7D2BE32142
      17A60409033E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020A373133C8EA3133C9EB03040F42000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000037000000EA0000004E000000000000
      00000000000000000000000000000000000000000000000000000000003B0000
      00E3000000110000000000000000000000000000000000000000000000000000
      00000000000B000000DA000000FF000000FF000000FF000000FF000000E30000
      0011000000000000000000000000000000000000000000000000000000000000
      000B000000DA0000004B0000000000000000000000000000000000000000402B
      098F3A2708890000000000000000000000000000000000000000000000000000
      00003A3CEDFF262799CD13144F94000000100000000C101041872A2BAAD80000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F423133C9EB3133C8EA0505154E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000F0000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000E7000000000000
      00000000000000000000000000000000000000000037000000EA0000003F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00A7000000C10000001100000000000000000000000000000000000000000000
      000C000000B4000000B8000000FF0000000000000000000000FF000000AC0000
      00C10000001100000000000000000000000000000000000000000000000C0000
      00B4000000B80000000000000000000000000000000000000000000000000201
      001AAA7318E80D09024200000000000000000000000000000000000000000000
      00003A3CEDFF1C1C71B00000000000000000000000000000000017175DA00E0E
      397E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003040F423133C9EB03040F4202020A373133C8EA0505154E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000EA0000004E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000045000000E20000
      000C000000000000000000000000000000000000000000000000000000000000
      001E000000F5000000E40000006E000000240000001000000021000000680000
      00DE000000B50000004E000000FF0000000000000000000000FF0000004D0000
      00AC000000E20000006E00000024000000100000002100000068000000DE0000
      00FB0000002A0000000000000000000000000000000000000000000000000000
      00000C08013EAA7318E83A2708890503002A0000000800000000000000000000
      00003A3CEDFF03030E4000000000000000000000000000000000020208302A2B
      AAD8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003040F423133C9EB03040F42000000000000000002020A373133C8EA0505
      154E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000037000000EA0000004E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000A70000
      0073000000000000000000000000000000000000000000000000000000000000
      000000000080000000E2000000BD000000EA000000F4000000EB000000C10000
      00750000004C0000004C000000FF000000FF000000FF000000FF0000004C0000
      004C0000006F000000BD000000EA000000F4000000EB000000C1000000DB0000
      0090000000000000000000000000000000000000000000000000000000000000
      0000000000000201001A402B098F986716DCC0831BF7A87118E7000000000000
      00003A3CEDFF0000011200000000000000000000000000000000000000033A3C
      E9FD000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000304
      0F423133C9EB03040F420000000000000000000000000000000002020A373133
      C8EA0505154E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000037000000EA0000004E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000440000
      00C6000000000000000000000000000000000000000000000000000000000000
      000000000009000000E0000000770000004C0000004C0000004C0000004C0000
      004C0000004C0000004C000000FF0000000000000000000000FF0000004C0000
      004C0000004C0000004C0000004C0000004C0000004C0000006C000000E90000
      0011000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF000001140000000000000000000000000000000000000004393B
      E7FC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003040F423133
      C9EB03040F420000000000000000000000000000000000000000000000000202
      0A373133C8EA0505154E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000037000000EA0000004E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0000
      00F6000000000000000000000000000000000000000000000000000000000000
      00000000000000000057000000DC0000004D0000004C0000004C0000004C0000
      004C0000004C0000004C000000FF0000000000000000000000FA0000004F0000
      004C0000004C0000004C0000004C0000004C0000004C000000D2000000690000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF040411450000000000000000000000000000000002020A35282A
      A3D4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003040F423133C9EB0304
      0F42000000000000000000000000000000000000000000000000000000000000
      000002020A373133C8EA0505154E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000037000000EA0000
      004E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000C1000000930000004C0000004C0000004C0000
      004C0000004C0000005C000000EF0000000000000000000000DF000000670000
      004C0000004C0000004C0000004C0000004C00000087000000D1000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF1F1F7DB9000000010000000000000000000000001A1B69AA0D0D
      3377000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000003040F423133C9EB03040F420000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020A373133C8EA0505154E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000370000
      00EA0000004E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000130000
      00F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000031000000ED0000005B0000004C0000004C0000
      004C0000004C000000AD0000009B00000000000000000000008A000000BB0000
      004C0000004C0000004C0000004C00000057000000E800000040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF22238BC3181860A2010103210000031D1415529626279BCE0000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003040F423133C9EB03040F42000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020A373133C8EA0505154E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0037000000EA0000004E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000540000
      00B7000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007B000000E30000007E000000590000
      0065000000B4000000D90000001400000000000000000000000D000000D20000
      00BB000000670000005800000079000000DD0000008A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000B13134D912F31C1E63032C4E815165699000001110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F423133C9EB03040F4200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020A373133C8EA0505154E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      000000000037000000EA0000004E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000C10000
      005A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000055000000C5000000EF0000
      00E10000009200000012000000000000000000000000000000000000000D0000
      008A000000DF000000EF000000C80000005B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003040F423133C9EB03040F420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020A373133C8EA0505154E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      00000000000000000037000000EA0000004E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000070000000CA0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003040F423133C9EB03040F42000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020A373133C8EA0505
      154E000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000037000000E90000006000000000000000000000
      00000000000000000000000000000000000100000073000000E0000000210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000252595CA03040F4200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020A37282A
      A5D5000000010000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000029000000D1000000C0000000590000
      001C00000010000000200000005F000000C9000000C500000020000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002A2BAAD80000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000D800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000040000005B000000B20000
      00E4000000EF000000E0000000AB000000510000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000005C000000DB000000FF000000FF000000FF000000FF0000
      00FF000000D500000000000000000000005C000000DB000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000E10000
      0067000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000005E000000C1000000F80000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000EF00000086000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000101062A1E1F7AB73739E0F83A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF383AE5FB202181BC0202
      0832000000000000000000000000000000000000000000000000000000000000
      000000000057000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000C50000000000000057000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000670000000000000000000000000000000000000000000000000000
      0000000000000000000000000052000000C6000000FB000000FC000000CB0000
      005D000000000000000000000000000000000000000000000000000000000000
      0043000000BB000000F8000000FD000000D30000006B00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000F000000BA000000C50000004B0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      05273133C8EA090A286A0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008080821603133
      C9EB020209330000000000000000000000000000000000000000000000000000
      0000000000CF000000FF00000076000000020000000000000000000000000000
      00000000000000000000000000CF000000FF0000007600000002000000000000
      0000000000000000000000000000000000000000000000000001000000670000
      00FF000000E10000000000000000000000000000000000000000000000000000
      0000000000000000008A000000D50000004A0000000700000005000000440000
      00CD000000980000000000000000000000000000000000000000000000710000
      00E0000000540000000A0000000300000039000000C0000000B0000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000001000000B7000000970000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A1B
      6CAC0B0B2D700000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      2160202182BD0000000000000000000000000000000000000000000000000000
      0000000000F8000000FF00000008000000000000000000000000000000000000
      00000000000000000000000000F8000000FF0000000800000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00000000004D000000D80000000F000000000000000000000000000000000000
      000A000000CD0000005D00000000000000000000000000000034000000E40000
      001C0000000000000000000000000000000000000004000000BA000000780000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000056000000CB00000003000000010000007A000000EC0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000EF00000086000000030000
      0000000000000000000000000000000000000000000000000000000000003233
      CAEC000001170000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008383AE5FB0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000BB0000005500000000000000000000000000000000000000000000
      000000000042000000CB0000000000000000000000000000009F0000006D0000
      0000000000000000000000000000000000000000000000000028000000E50000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000B5000000560000000000000075000000C9000000220000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001C000000BF000000860000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000EC0000001500000000000000000000000000000000000000000000
      000000000004000000FA000000000000000000000000000000D50000002A0000
      0000000000000000000000000000000000000000000000000000000000E70000
      001B000000000000000000000000000000000000000000000000000000000000
      000000000000000000E90000001900000000000000DF0000002C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000001C000000EF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000EB0000001700000000000000000000000000000000000000000000
      000000000006000000F9000000000000000000000000000000D10000002D0000
      0000000000000000000000000000000000000000000000000000000000E90000
      0019000000000000000000000000000000000000000000000000000000000000
      000000000000000000FC0000000300000000000000FC00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000200000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000B60000005C00000000000000000000000000000000000000000000
      000000000049000000C60000000000000000000000000000009B000000740000
      000000000000000000000000000000000000000000000000002F000000E10000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF0000000000000000000000000000000000000000000000002A2BAAD80505
      154E000000000000000000000000000000000000000000000000000000000000
      000003040F422E2FBBE300000002000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      000000000044000000DF00000015000000000000000000000000000000000000
      000F000000D5000000530000000000000000000000000000002E000000E70000
      00240000000000000000000000000000000000000008000000C3000000700000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF00000000000000000000000000000000000000000000000002020A373133
      C8EA0505154E0000000000000000000000000000000000000000000000000304
      0F423133C9EB03040F4200000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000007F000000DF0000005B0000001700000015000000550000
      00D80000009500000000000000000000000000000000000000000000006D0000
      00E9000000650000001A0000001300000049000000CC000000A2000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000202
      0A373133C8EA0505154E0000000000000000000000000000000003040F423133
      C9EB03040F420000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000044000000B6000000EB000000EF000000BB0000
      00A2000000B900000001000000000000000000000000000000000000008F0000
      00B6000000AC000000E9000000F1000000C40000005D00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      000002020A373133C8EA0505154E000000000000000003040F423133C9EB0304
      0F42000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0004000000CB000000650000000000000000000000000000003D000000E60000
      0013000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      00000000000002020A373133C8EA0505154E03040F423133C9EB03040F420000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002C000000EA0000001E000000000000000A000000DA000000550000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020A373133C8EA3133C9EB03040F42000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007B000000B9000000010000008F000000AA000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003040F423133C9EB3133C8EA0505154E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000004000000CB00000099000000EA00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      00000000000003040F423133C9EB03040F4202020A373133C8EA0505154E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000036000000FF0000005B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      000003040F423133C9EB03040F42000000000000000002020A373133C8EA0505
      154E000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000F7000000FF0000000A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000008D000000AF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000304
      0F423133C9EB03040F420000000000000000000000000000000002020A373133
      C8EA0505154E0000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000CA000000FF000000840000000A000000000000
      0000000000000000000000000000000000000000000000000009000000760000
      00FF000000DB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000037000000EC0000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF00000000000000000000000000000000000000000000000003040F423133
      C9EB03040F420000000000000000000000000000000000000000000000000202
      0A373133C8EA0505154E00000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      000000000000000000000000004D000000FE000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000005C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000007000000D30000006000000000000000000000004C0000001C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF00000000000000000000000000000000000000000000000026279BCE0304
      0F42000000000000000000000000000000000000000000000000000000000000
      000002020A372A2BAAD800000002000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000004D000000CA000000F7000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000F7000000D00000
      0057000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000081000000B700000000000000000000000000000078000000B30000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      002E000000EC0000001E00000000000000000000000000000005000000CF0000
      005B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000005000000058000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040000
      00CB000000650000000000000000000000000000000000000000000000340000
      00E6000000150000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FB0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003A3C
      EDFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003A3CEDFF0000000000000000000000000000000000000000000000000000
      0000000000F7000000FF0000000A000000000000000000000006000000940000
      00F5000000FF000000FF000000FF000000FF000000FF000000FF000000F70000
      009F0000000A000000000000000000000002000000F6000000FD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000770000
      00BE000000010000000000000000000000000000000000000000000000000000
      0089000000A60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000DB0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000003031
      C4E80000021A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A3739DFF80000000000000000000000000000000000000000000000000000
      0000000000CA000000FF000000840000000A000000000000008E000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000009E000000000000000900000076000000FF000000DB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000027000000EB0000
      0021000000000000000000000000000000000000000000000000000000000000
      0008000000DA0000004E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000006A0000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000001819
      62A40D0D357A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000090A
      286A1D1E78B50000000000000000000000000000000000000000000000000000
      00000000004D000000FE000000FF000000FF000000FF000000FF000000FF0000
      003A0000000000000000000000000000000000000000000000000000002A0000
      00FE000000FF000000FF000000FF000000FF000000FF0000005C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000002000000C20000006D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000003E000000E30000000F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FB00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000001
      03203031C2E70D0D357A0000021A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000002180B0B2D703133
      C8EA0101062A0000000000000000000000000000000000000000000000000000
      0000000000000000004D000000CA000000F7000000FF000000FF000000FF0000
      00490000000000000000000000000000000000000000000000000000003A0000
      00FF000000FF000000FF000000F7000000D00000005700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006C000000C2000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000950000009A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DC00000033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000022000000EC0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000010320181862A43032C4E83A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3133C8EA1A1B6AAB0101
      0527000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000085000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000940000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C900000025000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000E000000D20000000F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006A000000D2000000330000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000040000002C000000C90000007A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003000000850000
      00E5000000FF000000FF000000FF000000FF000000FF000000FF000000E70000
      008E000000060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000006A000000DC0000
      00FB000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FB000000DF00000075000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000002A000000B5000000F8000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FA000000BD00000033000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000050000000EC000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F00000005D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000027000000EA0000006A0000000A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000800000060000000EB000000330000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002A000000B7000000F8000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FB000000BC0000
      0032000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000E20000003900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000002A000000F000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000AB00000070000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000060000000BD0000
      0000000000000000000000000000000000000000000000000000000000000000
      003E000000CE000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000DC0000006C00000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0027000000EA0000006A0000000A000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000008000000600000
      00EB000000330000000000000000000000000000000000000000000000000000
      00000000005D000000DB000000FF000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF000000FF000000E00000
      0067000000000000000000000000000000000000000000000000000000000000
      000000000000000000EB00000017000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000008000000FA0000
      00000000000000000000000000000000000000000000000000000000002F0000
      00F5000000740000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000032000000CA00000089000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00AC000000700000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0060000000BD0000000000000000000000000000000000000000000000000000
      0056000000DC0000003800000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000300000
      00D4000000670000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000AE0000
      00B4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000011000000E9000000260000
      0000000000000000000000000000000000000000000000000000000000000000
      00EC000000170000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0008000000FB0000000000000000000000000000000000000000000000000000
      00CF000000400000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0030000000E00000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000EC0000
      00B6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000083000000930000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00F8000000070000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00EB000000200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000019000000ED0000
      0010000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      008B0000008B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000A20000
      0074000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0020000000EB0000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000330000
      00DF000000040000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000DC0000004900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003A000000EC00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000AB0000006C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00C2000000540000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF00000000000000000000000000000044000000DC000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E00000005000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000003C000000D800000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0053000000C30000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      000000000000000000CB0000004B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003000000DF0000003400000000000000000000000000000000000000000000
      00FF000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000005C000000BA000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000073000000A300000000000000000000000000000000000000000000
      00FF000000000000000000000000000000DC0000004900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003A000000EC00000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000006000000E40000002C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000F000000ED00000019000000000000000000000000000000000000
      00FF00000000000000000000000000000042000000DC000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000E00000005000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF00000000000000000000000000000000000000D8000000FF000000E70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      000000000000000000000000007C0000009A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A100000065000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000015000000EB0000002100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A500000062000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00F7000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000000000000000006B000000DD000000480000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A0000005F000000E700000014000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00DB0000002A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      001A000000EB0000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      00000000000000000000000000000000000000000051000000C7000000F50000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00F6000000C10000003100000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      009100000089000000000000000000000000000000F0000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F70000000000000000000000000000
      0079000000A10000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A000000F8000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000050000000EC0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F00000005D000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      001A000000E8000000420000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000370000
      00E9000000240000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000210000
      00C6000000FF000000FF000000FF000000FF000000FF000000FF000000F60000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000006A000000B5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000000000000000000000000000E2000000390000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000002A000000F0000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      000000000040000000E8000000890000002A000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000002600000081000000EA0000
      004B000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000BD0000
      0076000000020000000000000000000000000000000000000077000000AC0000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000001800000070000000EA0000002A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      000D000000F80000000000000000000000000000000000000000000000000000
      0000000000000000001A0000008F000000DB000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF000000DE00000095000000200000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000F80000
      00080000000000000000000000000000000000000050000000E7000000200000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000015000000D2000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000EA000000AB0000002700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E80000000000000000000000FF000000000000000000000000000000000000
      0072000000B10000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      000000000000000000000000000000000042000000EA00000031000000000000
      0000000000000000000000000000000000000000000000000000000000E80000
      001A000000000000000000000000000000000000000000000000000000000000
      0015000000D20000007800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF000000000000000000000000000000470000
      00E7000000250000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000037000000E80000003D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000A40000
      007A000000000000000000000000000000000000000000000000000000150000
      00D2000000780000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E80000001A00000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF000000000000000000000036000000EA0000
      003A000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000E80000001A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      0000000000000000002D000000E50000004A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000200000
      00E70000007A0000001A00000000000000000000000300000032000000D30000
      0078000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00A40000007A00000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF0000000000000027000000E50000004A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000A40000007A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      000000000023000000E000000058000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0020000000A4000000E8000000FF000000FF000000FC000000DA000000660000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0020000000E70000007A0000001A0000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF00000053000000E30000005F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DC00000049000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000003A000000EC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000020000000E70000007A0000001A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000FF0000
      004E000000E20000006700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000020000000A4000000E8000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000F2000000C00000004400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000044000000DC000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E0000000500000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000020000000A4000000E8000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000F40000
      00C30000004A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000C00000000100010000000000000C00000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    DesignInfo = 25690864
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D31382E3236
          3220326134203420302030203120322E39323420312E32376C342E3733382035
          2E303738413420342030203020312032372031312E3037365632366134203420
          30203020312D3420344839613420342030203020312D342D3456366134203420
          302030203120342D347A4D392033613320332030203020302D33203376323061
          332033203020302030203320336831346133203320302030203020332D335631
          312E303736712D2E3030312D2E3033372D2E3030342D2E3037364832302E3541
          322E3520322E3520302030203120313820382E3556337A6D313020352E356131
          2E3520312E3520302030203020312E3520312E3568352E323939613320332030
          203020302D2E3630362D2E39376C2D342E3733382D352E303737413320332030
          2030203020313920332E3039337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D392E303534
          20342E3031356133203320302030203120312E3832352E3836344C3134203868
          38613420342030203020312034203468312E3431336C2E322E30303763322E30
          35312E31333220332E33383820322E32373520322E35343820342E3139356C2D
          342E31313220392E3430312D2E31332E32363741342034203020302031203232
          2E33383520323848352E35383743332E35203238203220323620322032345638
          6134203420302030203120342D3468322E3735387A4D31302E36313620313361
          3320332030203020302D322E37343920312E3739386C2D342E31313220392E34
          43332E30362032352E37383420342E3520323720362032376831362E33383461
          33203320302030203020322E3734392D312E3739386C342E3131322D392E3441
          3220322030203020302032372E3431332031337A4D3620356133203320302030
          20302D3320337631352E3432396C332E3935312D392E30333261342034203020
          30203120332E33372D322E3338366C2E3239352D2E3031314832356133203320
          30203020302D332D33682D382E3431346C2D332E3431342D332E343134413220
          3220302030203020382E37353820357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D32322E3233
          20336134203420302030203120322E393620312E33316C322E373720332E3034
          35413420342030203020312032392031302E3034375632356134203420302030
          20312D332E37393420332E3939354C323520323948376C2D2E3230362D2E3030
          35613420342030203020312D332E37392D332E3738394C332032355637613420
          3420302030203120342D347A4D372034613320332030203020302D3320337631
          3861332033203020302030203320335631386C2E30312D2E3230346132203220
          302030203120312E3738362D312E3738354C392031366831346C2E3230342E30
          3141322032203020302031203235203138763130613320332030203020302033
          2D335631302E30343763302D2E3734362D2E3237382D312E3436362D2E37382D
          322E3031396C2D322E37372D332E303436413320332030203020302032332034
          2E31563130613220322030203020312D3220324831316C2D2E3230342D2E3031
          41322032203020302031203920313056347A6D32203133613120312030203020
          302D312031763130683136563138613120312030203020302D312D317A6D312D
          3761312031203020302030203120316831306131203120302030203020312D31
          5634682D3276342E35612E352E352030203020312D3120305634682D397A222F
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31302E35203136612E352E3520
          302030203120302031682D32612E352E3520302030203120302D317A222F3E0D
          0A093C706174682066696C6C3D2263757272656E74436F6C6F72222066696C6C
          2D72756C653D226576656E6F64642220636C69702D72756C653D226576656E6F
          64642220643D224D32322033613220322030203020312032203276342E303233
          61352E3520352E35203020302031203520352E34373776313061332E3520332E
          352030203020312D332E3520332E35483235613220322030203020312D322032
          48396C2D2E3230342D2E3031413220322030203020312037203238682D2E356C
          2D2E31382D2E30303541332E3520332E3520302030203120332032342E35762D
          313061352E3520352E3520302030203120352D352E3437375635613220322030
          2030203120322D327A4D39203231613120312030203020302D31203176366131
          2031203020302030203120316831346131203120302030203020312D31762D36
          613120312030203020302D312D317A6D31352D382E352D2E30312E31612E352E
          352030203020312D2E33392E33396C2D2E312E3031682D31356C2D2E312D2E30
          31612E352E352030203020312D2E33392D2E33394C382031322E35762D322E34
          373241342E3520342E3520302030203020342031342E3576313041322E352032
          2E3520302030203020362E352032374837762D35613220322030203020312032
          2D3268313461322032203020302031203220327635682E3561322E3520322E35
          20302030203020322E352D322E35762D313061342E3520342E35203020302030
          2D342D342E3437327A4D31302034613120312030203020302D31203176376831
          345635613120312030203020302D312D317A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
          2C2023454433443342292220643D224D32312E3134372031302E313437612E35
          2E35203020312031202E3730372E3730374C31362E3730372031366C352E3134
          3720352E313437612E352E352030203120312D2E3730372E3730374C31362031
          362E3730376C2D352E31343620352E313437612E352E352030203120312D2E37
          30372D2E3730374C31352E3239332031366C2D352E3134362D352E313436612E
          352E35203020312031202E3730372D2E3730374C31362031352E3239337A222F
          3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D64786473
          2D69636F6E2D636F6C6F722D7265642C202345443344334229222066696C6C2D
          72756C653D226576656E6F64642220636C69702D72756C653D226576656E6F64
          642220643D224D32352033613420342030203020312034203476313861342034
          2030203020312D332E37393420332E3939354C323520323948376C2D2E323036
          2D2E303035613420342030203020312D332E37392D332E3738394C3320323556
          376134203420302030203120342D347A4D372034613320332030203020302D33
          2033763138613320332030203020302033203368313861332033203020302030
          20332D335637613320332030203020302D332D337A222F3E0D0A3C2F7376673E
          0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D372E35203668312E3637413320
          33203020302030203132203868366133203320302030203020322E38332D3268
          312E363741312E3520312E3520302030203120323420372E3561312031203020
          3120302032203041332E3520332E352030203020302032322E352034682D312E
          3637413320332030203020302031382032682D36613320332030203020302D32
          2E3833203248372E3541332E3520332E35203020302030203420372E35763139
          41332E3520332E3520302030203020372E352033304831326131203120302031
          203020302D3248372E3541312E3520312E3520302030203120362032362E3576
          2D313941312E3520312E3520302030203120372E3520364D3132203468366131
          203120302031203120302032682D366131203120302031203120302D326D352E
          35203661332E3520332E352030203020302D332E3520332E3576313361332E35
          20332E3520302030203020332E3520332E35683861332E3520332E3520302030
          203020332E352D332E35762D313361332E3520332E352030203020302D332E35
          2D332E357A4D31362031332E3561312E3520312E3520302030203120312E352D
          312E35683861312E3520312E3520302030203120312E3520312E357631336131
          2E3520312E352030203020312D312E3520312E35682D3861312E3520312E3520
          30203020312D312E352D312E357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D382E323233
          20332E303834612E352E35203020302031202E3632392E30366C2E3036342E30
          37392031302E37392031362E333835613520352030203120312D2E3832352E35
          36356C2D332E3333312D342E3939362D332E333320342E393937613520352030
          203120312D2E3832352D2E3536356C332E3535312D352E3332392D362E39312D
          31302E353932612E352E35203020302031202E3138372D2E3630344D39203230
          4134203420302031203020392E30303120323820342034203020302030203920
          32306D31332E31203061342034203020312030202E3030312038203420342030
          2030203020302D38222F3E0D0A093C706174682066696C6C3D2263757272656E
          74436F6C6F722220643D224D32322E32343920332E313435612E352E35203020
          302031202E3831362E3534336C2D2E3034382E30392D352E32303820382E3031
          322D2E3534312D2E39393120342E3931372D372E3537367A222F3E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31312E3235203241332E323520
          332E3235203020302030203820352E32357631382E3541332E323520332E3235
          2030203020302031312E32352032376831322E3541332E323520332E32352030
          203020302032372032332E373556352E323541332E323520332E323520302030
          20302032332E373520327A4D3920352E323541322E323520322E323520302030
          20312031312E323520336831322E3541322E323520322E323520302030203120
          323620352E32357631382E3541322E323520322E32352030203020312032332E
          3735203236682D31322E3541322E323520322E32352030203020312039203233
          2E37357A6D2D33202E36353541332E323420332E323420302030203020352038
          2E32357631352E3541362E323520362E32352030203020302031312E32352033
          3068392E3561332E323420332E323420302030203020322E3334352D31483131
          2E323541352E323520352E323520302030203120362032332E37357A222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D32312E333036203663312E3533
          36203020322E3935362E38313920332E37323620322E3134386C342E3420372E
          363031632E3034352E3037362E3036342E31362E3036352E32343161362E3520
          362E352030203120312D31322E34363220332E313932412E352E352030203020
          31203137203139762D33682D327633612E352E352030203020312D2E3033362E
          31383341362E3520362E3520302031203120322E3530322031352E3939612E35
          2E35203020302031202E3036352D2E3234316C342E342D372E3641342E333036
          20342E3330362030203020312031352031302E3330355631326832762D312E36
          393441342E33303620342E3330362030203020312032312E33303620364D382E
          3520313361352E3520352E35203020312030203020313120352E3520352E3520
          302030203020302D31316D3135203061352E3520352E35203020312030203020
          313120352E3520352E3520302030203020302D31314D31302E3639342037632D
          312E313820302D322E32372E3632392D322E38363120312E36356C2D322E3337
          3820342E31303641362E3520362E3520302030203120382E3520313261362E35
          20362E3520302030203120352E3520332E303338762D342E37333241332E3330
          3620332E3330362030203020302031302E36393420376D31302E363132203041
          332E33303620332E3330362030203020302031382031302E33303676342E3733
          3241362E3520362E352030203020312032332E3520313263312E31203020322E
          3133362E32373420332E3034342E3735366C2D322E3337372D342E3130374133
          2E3320332E332030203020302032312E33303620374D31352031337632683276
          2D327A222F3E0D0A093C706174682066696C6C3D2263757272656E74436F6C6F
          722220643D224D31302E363933203741332E33303620332E3330362030203020
          312031342031302E33303676342E373361362E3520362E352030203020302D34
          2E3230382D322E39303620362E3520362E352030203020302D342E3332342E36
          32316C2D2E3031342E30303720322E3337392D342E31303941332E3320332E33
          2030203020312031302E36393320376D31302E363132203063312E3138203020
          322E32372E36323920322E38363120312E36356C322E33373920342E3130382D
          2E3031342D2E30303741362E3520362E352030203020302031382031352E3033
          36762D342E373341332E33303620332E3330362030203020312032312E333035
          203722206F7061636974793D222E33222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D677265
          656E2C2023333739453445292220643D224D31392032322E3561362E3520362E
          3520302030203120392E37352D352E36332E352E352030203120312D2E352E38
          363520352E3520352E35203020312030203020392E35332E352E352030203120
          31202E352E38363541362E3520362E352030203020312031392032322E35222F
          3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D64786473
          2D69636F6E2D636F6C6F722D7265642C2023454433443342292220643D224D31
          322E352033612E352E35203020302031202E352E3576352E3139334331332E37
          333320372E3635352031342E3830352037203136203763322E32312030203420
          322E32333920342035732D312E373920352D342035632D312E31393520302D32
          2E3236372D2E3635362D332D312E3639345631362E35612E352E352030203020
          312D312030762D3133612E352E35203020302031202E352D2E354D3136203863
          2D312E343620302D3320312E3537312D33203473312E35342034203320342033
          2D312E35373120332D342D312E35342D342D332D34222F3E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D626C75652C2023314538424344292220643D224D392E35203132612E35
          2E3520302030203120302031682D3161342E3520342E35203020312030203020
          3968362E3739336C2D322E3134362D322E3134362D2E3036352D2E303739612E
          352E35203020302031202E3639332D2E3639336C2E3037392E30363420332033
          202E3036342E303739712E30352E3037382E30372E3136386C2E3030322E3030
          382E3030332E303333712E3030342E3032322E3030352E303436612E352E3520
          30203020312D2E3030342E3038376C2D2E3030342E3033712D2E3030322E3031
          2D2E3030362E30326C2D2E3031342E303439712D2E3030352E3031372D2E3031
          322E3033332D2E3031312E3032332D2E3032352E303437612E352E3520302030
          20312D2E30382E3130386C2D332033612E352E352030203120312D2E3730372D
          2E3730374C31352E32393420323348382E3561352E3520352E35203020312031
          20302D31317A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
          2C2023454433443342292220643D224D32372E38353420342E383534612E352E
          352030203020302D2E3730382D2E3730384C31362031352E32393320342E3835
          3420342E313436612E352E352030203120302D2E3730382E3730384C31352E32
          393320313620342E3134362032372E313436612E352E35203020302030202E37
          30382E3730384C31362031362E3730376C31312E3134362031312E313437612E
          352E35203020302030202E3730382D2E3730384C31362E3730372031367A222F
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D3620332E35612E352E35203020
          3020302D312030763132612E352E35203020302030202E352E35683132612E35
          2E3520302030203020302D3148362E3730376C392E30372D392E303761362E35
          373120362E35373120302030203120392E32393420392E3239324C31322E3134
          352032382E313437612E352E35203020302030202E3730382E3730374C32352E
          3737382031352E393341372E35373120372E3537312030203020302031352E30
          3720352E3232324C362031342E3239327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D323920313663302D372E31382D
          352E38322D31332D31332D3133533320382E3832203320313673352E38322031
          33203133203133763143382E32363820333020322032332E3733322032203136
          53382E3236382032203136203273313420362E3236382031342031342D362E32
          36382031342D3134203134762D3163372E313820302031332D352E3832203133
          2D3133222F3E0D0A093C67206F7061636974793D222E32223E0D0A09093C7061
          7468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D63
          6F6C6F722D79656C6C6F772C2023444536433030292220643D226D31312E3137
          2031382D332E35313420332E35313441392E3920392E3920302030203120362E
          322031387A4D31312E31373220313448362E3261392E3920392E392030203020
          3120312E3435362D332E3531367A222F3E0D0A093C2F673E0D0A093C67206F70
          61636974793D222E33223E0D0A09093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D31342032352E37393661392E3920392E39203020
          3020312D332E3531362D312E3435344C31342032302E3832377A4D31312E3137
          2031386C2D332E35313420332E35313441392E3920392E392030203020312036
          2E322031387A222F3E0D0A093C2F673E0D0A093C67206F7061636974793D222E
          33223E0D0A09093C70617468207374796C653D2266696C6C3A766172282D2D64
          7864732D69636F6E2D636F6C6F722D626C75652C202331453842434429222064
          3D224D31342032352E37393661392E3920392E392030203020312D332E353136
          2D312E3435344C31342032302E3832377A4D32352E3820313861392E3920392E
          392030203020312D312E34353820332E3531344C32302E3832382031387A222F
          3E0D0A093C2F673E0D0A093C67206F7061636974793D222E33223E0D0A09093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D707572706C652C2023413834364232292220643D224D32352E
          3820313861392E3920392E392030203020312D312E34353820332E3531344C32
          302E3832382031387A4D32342E3334322031302E34383441392E3920392E3920
          30203020312032352E38203134682D342E3937337A222F3E0D0A093C2F673E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3234
          2E3334322032312E35313441392E3920392E392030203020302032352E382031
          38682D342E3937327A22206F7061636974793D222E33222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32302E383237
          2031344832352E3861392E3920392E392030203020302D312E3435382D332E35
          31367A22206F7061636974793D222E33222F3E0D0A093C70617468207374796C
          653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D7075
          72706C652C202341383436423229222066696C6C2D72756C653D226576656E6F
          64642220636C69702D72756C653D226576656E6F64642220643D224D32362E35
          31352031372E303132612E34382E3438203020302031202E3337382E3533326C
          2D2E3035362E33356131302E39352031302E39352030203020312D322E303435
          20342E3731366C2D2E3037332E303737612E34382E34382030203020312D2E35
          372E3033326C2D2E3038332D2E3036382D342E3334362D342E333435612E3535
          2E35352030203020312D2E3039342D2E363137712E3037322D2E3135362E3133
          312D2E333139612E35352E3535203020302031202E3431382D2E3336334C3230
          2E323620313768362E31357A6D2D322E31373320342E35303241392E3920392E
          392030203020302032352E38203138682D342E3937327A4D32342E3036352039
          2E333438612E3438322E343832203020302031202E3732362E3034322031302E
          39352031302E393520302030203120322E3120352E3036362E34382E34382030
          203020312D2E3337372E3533326C2D2E3130362E303132682D362E3134396C2D
          2E3038342D2E303037612E35352E35352030203020312D2E3338342D2E323836
          6C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E35352030203020
          31202E3039342D2E3631377A4D32302E3832362031344832352E3861392E3920
          392E392030203020302D312E3435382D332E3531357A222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32342E303635
          20392E333438612E3438322E343832203020302031202E3732362E3034322031
          302E39352031302E393520302030203120322E31303120352E3036362E34382E
          34382030203020312D2E3337382E3533326C2D2E3130362E303132682D362E31
          34396C2D2E3038342D2E303037612E35352E35352030203020312D2E3338342D
          2E3238366C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E353520
          3020302031202E3039342D2E3631377A4D32302E38323720313468342E393732
          61392E3920392E392030203020302D312E3435382D332E3531367A22206F7061
          636974793D222E33222F3E0D0A093C70617468207374796C653D2266696C6C3A
          766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C2023314538
          424344292220643D224D32362E3531352031372E303132632E32342E3035322E
          3431342E3237372E3337382E3533326C2D2E3035362E33356131302E39352031
          302E39352030203020312D322E30343520342E3731356C2D2E3037332E303737
          612E34382E34382030203020312D2E35372E3033336C2D2E3038332D2E303638
          2D342E3334362D342E333435612E35352E35352030203020312D2E3039342D2E
          363137712E3037322D2E3135362E3133312D2E333139612E35352E3535203020
          302031202E3431382D2E3336334C32302E323620313768362E31357A6D2D322E
          31373320342E35303241392E3920392E392030203020302032352E3820313868
          2D342E3937327A22206F7061636974793D222E35222F3E0D0A093C7061746820
          7374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F
          722D677265656E2C2023333739453445292220643D224D31312E373420313763
          2E3232382030202E3432342E3135362E3530322E3337712E30362E3136332E31
          332E333139612E35352E35352030203020312D2E3039332E3631374C372E3933
          332032322E36356C2D2E3038332E303638612E34382E34382030203020312D2E
          35372D2E3033336C2D2E3037332D2E3037376131302E39352031302E39352030
          203020312D322E3034342D342E3731356C2D2E3035362D2E3335412E3438322E
          34383220302030203120352E3539322031377A4D362E3220313861392E392039
          2E3920302030203020312E34353620332E3531344C31312E3137312031387A22
          206F7061636974793D222E38222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F77
          2C2023444536433030292220643D224D31312E3734203137632E323238203020
          2E3432342E3135362E3530322E3337712E30362E3136332E31332E333139612E
          35352E35352030203020312D2E3039332E3631374C372E3933332032322E3635
          6C2D2E3038332E303638612E34382E34382030203020312D2E35372D2E303333
          6C2D2E3037332D2E3037376131302E39352031302E39352030203020312D322E
          3034342D342E3731356C2D2E3035362D2E3335412E3438322E34383220302030
          203120352E3539322031377A4D362E3220313861392E3920392E392030203020
          3020312E34353620332E3531344C31312E3137312031387A22206F7061636974
          793D222E32222F3E0D0A093C70617468207374796C653D2266696C6C3A766172
          282D2D647864732D69636F6E2D636F6C6F722D677265656E2C20233337394534
          45292220643D224D31302E3438342032342E33343241392E3920392E39203020
          3020302031342032352E373936762D342E3936397A4D31352032362E3430356C
          2D2E3031322E313037612E34382E34382030203020312D2E3432352E33386C2D
          2E3130372D2E3030326131302E39342031302E39342030203020312D352E3036
          362D322E3039382E3438322E3438322030203020312D2E3034322D2E3732376C
          342E3334352D342E333435612E3534352E353435203020302031202E3631372D
          2E303934712E3135362E3037332E33322E313333632E3231342E3037382E3337
          2E3237352E33372E3530337A222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31302E3438342032342E33343241392E3920
          392E392030203020302031342032352E373936762D342E3936397A4D31352032
          362E3430356C2D2E3031322E313037612E34382E34382030203020312D2E3432
          352E33386C2D2E3130372D2E3030326131302E39342031302E39342030203020
          312D352E3036362D322E3039382E3438322E3438322030203020312D2E303432
          2D2E3732366C342E3334352D342E333436612E3534352E353435203020302031
          202E3631372D2E303934712E3135362E3037332E33322E313333632E3231342E
          3037382E33372E3237352E33372E3530337A22206F7061636974793D222E3322
          2F3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D647864
          732D69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D22
          4D31372E3638392031392E363236612E3534352E353435203020302031202E36
          31372E3039346C342E33343520342E333435612E3438322E3438322030203020
          312D2E3034322E3732376C2D2E3237352E3230316131302E39342031302E3934
          2030203020312D342E373920312E3839376C2D2E3130382E303033612E34382E
          34382030203020312D2E3432342D2E3338314C31372032362E343035762D362E
          31343363302D2E3232382E3135362D2E3432352E33372D2E353033712E313633
          2D2E30362E3331392D2E3133336D2E33313120362E313761392E3920392E3920
          302030203020332E3531342D312E3435344C31382032302E3832387A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3138
          2032352E37393661392E3920392E3920302030203020332E3531342D312E3435
          344C31382032302E3832387A22206F7061636974793D222E35222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D31372E353434
          20352E31316131302E39342031302E393420302030203120352E30363520322E
          303937632E3233352E3137372E32352E3531392E3034322E3732366C2D342E33
          343520342E3334362D2E3036352E303535612E35352E35352030203020312D2E
          3437332E30376C2D2E30382D2E3033312D2E3331382D2E313332612E35352E35
          352030203020312D2E33372D2E35303356352E35393463302D2E3239342E3235
          332D2E3532362E3534342D2E3438354D31382031312E31376C332E3531342D33
          2E35313441392E3920392E3920302030203020313820362E3230327A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D7265642C2023454433443342292220643D226D313820
          31312E313720332E3531342D332E35313441392E3920392E3920302030203020
          313820362E3230327A22206F7061636974793D222E35222F3E0D0A093C706174
          68207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F
          6C6F722D79656C6C6F772C2023444536433030292220643D224D313420362E32
          303261392E3920392E392030203020302D332E35313620312E3435344C313420
          31312E3137327A6D3120352E353336612E3534352E3534352030203020312D2E
          33372E353032203420342030203020302D2E33322E3133336C2D2E3037392E30
          33612E35342E35342030203020312D2E3533382D2E3132344C392E3334382037
          2E393333612E3438322E343832203020302031202E3034322D2E373236203130
          2E39342031302E393420302030203120352E3036362D322E303938632E32392D
          2E30342E3534342E31392E3534342E3438357A222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D224D313420362E32303261
          392E3920392E392030203020302D332E35313620312E3435344C31342031312E
          3137327A22206F7061636974793D222E35222F3E0D0A093C7061746820737479
          6C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79
          656C6C6F772C2023444536433030292220643D224D372E32303720392E333961
          2E3438322E343832203020302031202E3732362D2E3034336C342E3334362034
          2E333436632E3136312E3136322E31392E34312E3039342E363137712D2E3037
          322E3135362D2E3133322E33326C2D2E3033342E303737612E35342E35342030
          203020312D2E3436382E32393348352E353932612E3438322E34383220302030
          20312D2E3438352D2E3534342031302E39352031302E39352030203020312032
          2E312D352E3036376D2E343520312E30393441392E3920392E39203020302030
          20362E3220313468342E3937327A22206F7061636974793D222E37222F3E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D323920313663302D372E31382D
          352E38322D31332D31332D3133533320382E3832203320313673352E38322031
          33203133203133763143382E32363820333020322032332E3733322032203136
          53382E3236382032203136203273313420362E3236382031342031342D362E32
          36382031342D3134203134762D3163372E313820302031332D352E3832203133
          2D3133222F3E0D0A093C67206F7061636974793D222E32223E0D0A09093C7061
          7468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D63
          6F6C6F722D79656C6C6F772C2023444536433030292220643D226D31312E3137
          2031382D332E35313420332E35313441392E3920392E3920302030203120362E
          322031387A4D31312E31373220313448362E3261392E3920392E392030203020
          3120312E3435362D332E3531367A222F3E0D0A093C2F673E0D0A093C67206F70
          61636974793D222E33223E0D0A09093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D31342032352E37393661392E3920392E39203020
          3020312D332E3531362D312E3435344C31342032302E3832377A4D31312E3137
          2031386C2D332E35313420332E35313441392E3920392E392030203020312036
          2E322031387A222F3E0D0A093C2F673E0D0A093C67206F7061636974793D222E
          33223E0D0A09093C70617468207374796C653D2266696C6C3A766172282D2D64
          7864732D69636F6E2D636F6C6F722D626C75652C202331453842434429222064
          3D224D31342032352E37393661392E3920392E392030203020312D332E353136
          2D312E3435344C31342032302E3832377A4D32352E3820313861392E3920392E
          392030203020312D312E34353820332E3531344C32302E3832382031387A222F
          3E0D0A093C2F673E0D0A093C67206F7061636974793D222E33223E0D0A09093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D707572706C652C2023413834364232292220643D224D32352E
          3820313861392E3920392E392030203020312D312E34353820332E3531344C32
          302E3832382031387A4D32342E3334322031302E34383441392E3920392E3920
          30203020312032352E38203134682D342E3937337A222F3E0D0A093C2F673E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3234
          2E3334322032312E35313441392E3920392E392030203020302032352E382031
          38682D342E3937327A22206F7061636974793D222E33222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32302E383237
          2031344832352E3861392E3920392E392030203020302D312E3435382D332E35
          31367A22206F7061636974793D222E33222F3E0D0A093C70617468207374796C
          653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D7075
          72706C652C202341383436423229222066696C6C2D72756C653D226576656E6F
          64642220636C69702D72756C653D226576656E6F64642220643D224D32362E35
          31352031372E303132612E34382E3438203020302031202E3337382E3533326C
          2D2E3035362E33356131302E39352031302E39352030203020312D322E303435
          20342E3731366C2D2E3037332E303737612E34382E34382030203020312D2E35
          372E3033326C2D2E3038332D2E3036382D342E3334362D342E333435612E3535
          2E35352030203020312D2E3039342D2E363137712E3037322D2E3135362E3133
          312D2E333139612E35352E3535203020302031202E3431382D2E3336334C3230
          2E323620313768362E31357A6D2D322E31373320342E35303241392E3920392E
          392030203020302032352E38203138682D342E3937327A4D32342E3036352039
          2E333438612E3438322E343832203020302031202E3732362E3034322031302E
          39352031302E393520302030203120322E3120352E3036362E34382E34382030
          203020312D2E3337372E3533326C2D2E3130362E303132682D362E3134396C2D
          2E3038342D2E303037612E35352E35352030203020312D2E3338342D2E323836
          6C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E35352030203020
          31202E3039342D2E3631377A4D32302E3832362031344832352E3861392E3920
          392E392030203020302D312E3435382D332E3531357A222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32342E303635
          20392E333438612E3438322E343832203020302031202E3732362E3034322031
          302E39352031302E393520302030203120322E31303120352E3036362E34382E
          34382030203020312D2E3337382E3533326C2D2E3130362E303132682D362E31
          34396C2D2E3038342D2E303037612E35352E35352030203020312D2E3338342D
          2E3238366C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E353520
          3020302031202E3039342D2E3631377A4D32302E38323720313468342E393732
          61392E3920392E392030203020302D312E3435382D332E3531367A22206F7061
          636974793D222E33222F3E0D0A093C70617468207374796C653D2266696C6C3A
          766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C2023314538
          424344292220643D224D32362E3531352031372E303132632E32342E3035322E
          3431342E3237372E3337382E3533326C2D2E3035362E33356131302E39352031
          302E39352030203020312D322E30343520342E3731356C2D2E3037332E303737
          612E34382E34382030203020312D2E35372E3033336C2D2E3038332D2E303638
          2D342E3334362D342E333435612E35352E35352030203020312D2E3039342D2E
          363137712E3037322D2E3135362E3133312D2E333139612E35352E3535203020
          302031202E3431382D2E3336334C32302E323620313768362E31357A6D2D322E
          31373320342E35303241392E3920392E392030203020302032352E3820313868
          2D342E3937327A22206F7061636974793D222E35222F3E0D0A093C7061746820
          7374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F
          722D677265656E2C2023333739453445292220643D224D31312E373420313763
          2E3232382030202E3432342E3135362E3530322E3337712E30362E3136332E31
          332E333139612E35352E35352030203020312D2E3039332E3631374C372E3933
          332032322E36356C2D2E3038332E303638612E34382E34382030203020312D2E
          35372D2E3033336C2D2E3037332D2E3037376131302E39352031302E39352030
          203020312D322E3034342D342E3731356C2D2E3035362D2E3335412E3438322E
          34383220302030203120352E3539322031377A4D362E3220313861392E392039
          2E3920302030203020312E34353620332E3531344C31312E3137312031387A22
          206F7061636974793D222E38222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F77
          2C2023444536433030292220643D224D31312E3734203137632E323238203020
          2E3432342E3135362E3530322E3337712E30362E3136332E31332E333139612E
          35352E35352030203020312D2E3039332E3631374C372E3933332032322E3635
          6C2D2E3038332E303638612E34382E34382030203020312D2E35372D2E303333
          6C2D2E3037332D2E3037376131302E39352031302E39352030203020312D322E
          3034342D342E3731356C2D2E3035362D2E3335412E3438322E34383220302030
          203120352E3539322031377A4D362E3220313861392E3920392E392030203020
          3020312E34353620332E3531344C31312E3137312031387A22206F7061636974
          793D222E32222F3E0D0A093C70617468207374796C653D2266696C6C3A766172
          282D2D647864732D69636F6E2D636F6C6F722D677265656E2C20233337394534
          45292220643D224D31302E3438342032342E33343241392E3920392E39203020
          3020302031342032352E373936762D342E3936397A4D31352032362E3430356C
          2D2E3031322E313037612E34382E34382030203020312D2E3432352E33386C2D
          2E3130372D2E3030326131302E39342031302E39342030203020312D352E3036
          362D322E3039382E3438322E3438322030203020312D2E3034322D2E3732376C
          342E3334352D342E333435612E3534352E353435203020302031202E3631372D
          2E303934712E3135362E3037332E33322E313333632E3231342E3037382E3337
          2E3237352E33372E3530337A222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31302E3438342032342E33343241392E3920
          392E392030203020302031342032352E373936762D342E3936397A4D31352032
          362E3430356C2D2E3031322E313037612E34382E34382030203020312D2E3432
          352E33386C2D2E3130372D2E3030326131302E39342031302E39342030203020
          312D352E3036362D322E3039382E3438322E3438322030203020312D2E303432
          2D2E3732366C342E3334352D342E333436612E3534352E353435203020302031
          202E3631372D2E303934712E3135362E3037332E33322E313333632E3231342E
          3037382E33372E3237352E33372E3530337A22206F7061636974793D222E3322
          2F3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D647864
          732D69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D22
          4D31372E3638392031392E363236612E3534352E353435203020302031202E36
          31372E3039346C342E33343520342E333435612E3438322E3438322030203020
          312D2E3034322E3732376C2D2E3237352E3230316131302E39342031302E3934
          2030203020312D342E373920312E3839376C2D2E3130382E303033612E34382E
          34382030203020312D2E3432342D2E3338314C31372032362E343035762D362E
          31343363302D2E3232382E3135362D2E3432352E33372D2E353033712E313633
          2D2E30362E3331392D2E3133336D2E33313120362E313761392E3920392E3920
          302030203020332E3531342D312E3435344C31382032302E3832387A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3138
          2032352E37393661392E3920392E3920302030203020332E3531342D312E3435
          344C31382032302E3832387A22206F7061636974793D222E35222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D31372E353434
          20352E31316131302E39342031302E393420302030203120352E30363520322E
          303937632E3233352E3137372E32352E3531392E3034322E3732366C2D342E33
          343520342E3334362D2E3036352E303535612E35352E35352030203020312D2E
          3437332E30376C2D2E30382D2E3033312D2E3331382D2E313332612E35352E35
          352030203020312D2E33372D2E35303356352E35393463302D2E3239342E3235
          332D2E3532362E3534342D2E3438354D31382031312E31376C332E3531342D33
          2E35313441392E3920392E3920302030203020313820362E3230327A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D7265642C2023454433443342292220643D226D313820
          31312E313720332E3531342D332E35313441392E3920392E3920302030203020
          313820362E3230327A22206F7061636974793D222E35222F3E0D0A093C706174
          68207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F
          6C6F722D79656C6C6F772C2023444536433030292220643D224D313420362E32
          303261392E3920392E392030203020302D332E35313620312E3435344C313420
          31312E3137327A6D3120352E353336612E3534352E3534352030203020312D2E
          33372E353032203420342030203020302D2E33322E3133336C2D2E3037392E30
          33612E35342E35342030203020312D2E3533382D2E3132344C392E3334382037
          2E393333612E3438322E343832203020302031202E3034322D2E373236203130
          2E39342031302E393420302030203120352E3036362D322E303938632E32392D
          2E30342E3534342E31392E3534342E3438357A222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D224D313420362E32303261
          392E3920392E392030203020302D332E35313620312E3435344C31342031312E
          3137327A22206F7061636974793D222E35222F3E0D0A093C7061746820737479
          6C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79
          656C6C6F772C2023444536433030292220643D224D372E32303720392E333961
          2E3438322E343832203020302031202E3732362D2E3034336C342E3334362034
          2E333436632E3136312E3136322E31392E34312E3039342E363137712D2E3037
          322E3135362D2E3133322E33326C2D2E3033342E303737612E35342E35342030
          203020312D2E3436382E32393348352E353932612E3438322E34383220302030
          20312D2E3438352D2E3534342031302E39352031302E39352030203020312032
          2E312D352E3036376D2E343520312E30393441392E3920392E39203020302030
          20362E3220313468342E3937327A22206F7061636974793D222E37222F3E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D323920313663302D372E31382D
          352E38322D31332D31332D3133533320382E3832203320313673352E38322031
          33203133203133763143382E32363820333020322032332E3733322032203136
          53382E3236382032203136203273313420362E3236382031342031342D362E32
          36382031342D3134203134762D3163372E313820302031332D352E3832203133
          2D3133222F3E0D0A093C67206F7061636974793D222E32223E0D0A09093C7061
          7468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D63
          6F6C6F722D79656C6C6F772C2023444536433030292220643D226D31312E3137
          2031382D332E35313420332E35313441392E3920392E3920302030203120362E
          322031387A4D31312E31373220313448362E3261392E3920392E392030203020
          3120312E3435362D332E3531367A222F3E0D0A093C2F673E0D0A093C67206F70
          61636974793D222E33223E0D0A09093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D31342032352E37393661392E3920392E39203020
          3020312D332E3531362D312E3435344C31342032302E3832377A4D31312E3137
          2031386C2D332E35313420332E35313441392E3920392E392030203020312036
          2E322031387A222F3E0D0A093C2F673E0D0A093C67206F7061636974793D222E
          33223E0D0A09093C70617468207374796C653D2266696C6C3A766172282D2D64
          7864732D69636F6E2D636F6C6F722D626C75652C202331453842434429222064
          3D224D31342032352E37393661392E3920392E392030203020312D332E353136
          2D312E3435344C31342032302E3832377A4D32352E3820313861392E3920392E
          392030203020312D312E34353820332E3531344C32302E3832382031387A222F
          3E0D0A093C2F673E0D0A093C67206F7061636974793D222E33223E0D0A09093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D707572706C652C2023413834364232292220643D224D32352E
          3820313861392E3920392E392030203020312D312E34353820332E3531344C32
          302E3832382031387A4D32342E3334322031302E34383441392E3920392E3920
          30203020312032352E38203134682D342E3937337A222F3E0D0A093C2F673E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3234
          2E3334322032312E35313441392E3920392E392030203020302032352E382031
          38682D342E3937327A22206F7061636974793D222E33222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32302E383237
          2031344832352E3861392E3920392E392030203020302D312E3435382D332E35
          31367A22206F7061636974793D222E33222F3E0D0A093C70617468207374796C
          653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D7075
          72706C652C202341383436423229222066696C6C2D72756C653D226576656E6F
          64642220636C69702D72756C653D226576656E6F64642220643D224D32362E35
          31352031372E303132612E34382E3438203020302031202E3337382E3533326C
          2D2E3035362E33356131302E39352031302E39352030203020312D322E303435
          20342E3731366C2D2E3037332E303737612E34382E34382030203020312D2E35
          372E3033326C2D2E3038332D2E3036382D342E3334362D342E333435612E3535
          2E35352030203020312D2E3039342D2E363137712E3037322D2E3135362E3133
          312D2E333139612E35352E3535203020302031202E3431382D2E3336334C3230
          2E323620313768362E31357A6D2D322E31373320342E35303241392E3920392E
          392030203020302032352E38203138682D342E3937327A4D32342E3036352039
          2E333438612E3438322E343832203020302031202E3732362E3034322031302E
          39352031302E393520302030203120322E3120352E3036362E34382E34382030
          203020312D2E3337372E3533326C2D2E3130362E303132682D362E3134396C2D
          2E3038342D2E303037612E35352E35352030203020312D2E3338342D2E323836
          6C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E35352030203020
          31202E3039342D2E3631377A4D32302E3832362031344832352E3861392E3920
          392E392030203020302D312E3435382D332E3531357A222F3E0D0A093C706174
          682066696C6C3D2263757272656E74436F6C6F722220643D224D32342E303635
          20392E333438612E3438322E343832203020302031202E3732362E3034322031
          302E39352031302E393520302030203120322E31303120352E3036362E34382E
          34382030203020312D2E3337382E3533326C2D2E3130362E303132682D362E31
          34396C2D2E3038342D2E303037612E35352E35352030203020312D2E3338342D
          2E3238366C2D2E3033342D2E3037372D2E3133322D2E3332612E35352E353520
          3020302031202E3039342D2E3631377A4D32302E38323720313468342E393732
          61392E3920392E392030203020302D312E3435382D332E3531367A22206F7061
          636974793D222E33222F3E0D0A093C70617468207374796C653D2266696C6C3A
          766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C2023314538
          424344292220643D224D32362E3531352031372E303132632E32342E3035322E
          3431342E3237372E3337382E3533326C2D2E3035362E33356131302E39352031
          302E39352030203020312D322E30343520342E3731356C2D2E3037332E303737
          612E34382E34382030203020312D2E35372E3033336C2D2E3038332D2E303638
          2D342E3334362D342E333435612E35352E35352030203020312D2E3039342D2E
          363137712E3037322D2E3135362E3133312D2E333139612E35352E3535203020
          302031202E3431382D2E3336334C32302E323620313768362E31357A6D2D322E
          31373320342E35303241392E3920392E392030203020302032352E3820313868
          2D342E3937327A22206F7061636974793D222E35222F3E0D0A093C7061746820
          7374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F
          722D677265656E2C2023333739453445292220643D224D31312E373420313763
          2E3232382030202E3432342E3135362E3530322E3337712E30362E3136332E31
          332E333139612E35352E35352030203020312D2E3039332E3631374C372E3933
          332032322E36356C2D2E3038332E303638612E34382E34382030203020312D2E
          35372D2E3033336C2D2E3037332D2E3037376131302E39352031302E39352030
          203020312D322E3034342D342E3731356C2D2E3035362D2E3335412E3438322E
          34383220302030203120352E3539322031377A4D362E3220313861392E392039
          2E3920302030203020312E34353620332E3531344C31312E3137312031387A22
          206F7061636974793D222E38222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F77
          2C2023444536433030292220643D224D31312E3734203137632E323238203020
          2E3432342E3135362E3530322E3337712E30362E3136332E31332E333139612E
          35352E35352030203020312D2E3039332E3631374C372E3933332032322E3635
          6C2D2E3038332E303638612E34382E34382030203020312D2E35372D2E303333
          6C2D2E3037332D2E3037376131302E39352031302E39352030203020312D322E
          3034342D342E3731356C2D2E3035362D2E3335412E3438322E34383220302030
          203120352E3539322031377A4D362E3220313861392E3920392E392030203020
          3020312E34353620332E3531344C31312E3137312031387A22206F7061636974
          793D222E32222F3E0D0A093C70617468207374796C653D2266696C6C3A766172
          282D2D647864732D69636F6E2D636F6C6F722D677265656E2C20233337394534
          45292220643D224D31302E3438342032342E33343241392E3920392E39203020
          3020302031342032352E373936762D342E3936397A4D31352032362E3430356C
          2D2E3031322E313037612E34382E34382030203020312D2E3432352E33386C2D
          2E3130372D2E3030326131302E39342031302E39342030203020312D352E3036
          362D322E3039382E3438322E3438322030203020312D2E3034322D2E3732376C
          342E3334352D342E333435612E3534352E353435203020302031202E3631372D
          2E303934712E3135362E3037332E33322E313333632E3231342E3037382E3337
          2E3237352E33372E3530337A222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31302E3438342032342E33343241392E3920
          392E392030203020302031342032352E373936762D342E3936397A4D31352032
          362E3430356C2D2E3031322E313037612E34382E34382030203020312D2E3432
          352E33386C2D2E3130372D2E3030326131302E39342031302E39342030203020
          312D352E3036362D322E3039382E3438322E3438322030203020312D2E303432
          2D2E3732366C342E3334352D342E333436612E3534352E353435203020302031
          202E3631372D2E303934712E3135362E3037332E33322E313333632E3231342E
          3037382E33372E3237352E33372E3530337A22206F7061636974793D222E3322
          2F3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D647864
          732D69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D22
          4D31372E3638392031392E363236612E3534352E353435203020302031202E36
          31372E3039346C342E33343520342E333435612E3438322E3438322030203020
          312D2E3034322E3732376C2D2E3237352E3230316131302E39342031302E3934
          2030203020312D342E373920312E3839376C2D2E3130382E303033612E34382E
          34382030203020312D2E3432342D2E3338314C31372032362E343035762D362E
          31343363302D2E3232382E3135362D2E3432352E33372D2E353033712E313633
          2D2E30362E3331392D2E3133336D2E33313120362E313761392E3920392E3920
          302030203020332E3531342D312E3435344C31382032302E3832387A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D3138
          2032352E37393661392E3920392E3920302030203020332E3531342D312E3435
          344C31382032302E3832387A22206F7061636974793D222E35222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D31372E353434
          20352E31316131302E39342031302E393420302030203120352E30363520322E
          303937632E3233352E3137372E32352E3531392E3034322E3732366C2D342E33
          343520342E3334362D2E3036352E303535612E35352E35352030203020312D2E
          3437332E30376C2D2E30382D2E3033312D2E3331382D2E313332612E35352E35
          352030203020312D2E33372D2E35303356352E35393463302D2E3239342E3235
          332D2E3532362E3534342D2E3438354D31382031312E31376C332E3531342D33
          2E35313441392E3920392E3920302030203020313820362E3230327A222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D7265642C2023454433443342292220643D226D313820
          31312E313720332E3531342D332E35313441392E3920392E3920302030203020
          313820362E3230327A22206F7061636974793D222E35222F3E0D0A093C706174
          68207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F
          6C6F722D79656C6C6F772C2023444536433030292220643D224D313420362E32
          303261392E3920392E392030203020302D332E35313620312E3435344C313420
          31312E3137327A6D3120352E353336612E3534352E3534352030203020312D2E
          33372E353032203420342030203020302D2E33322E3133336C2D2E3037392E30
          33612E35342E35342030203020312D2E3533382D2E3132344C392E3334382037
          2E393333612E3438322E343832203020302031202E3034322D2E373236203130
          2E39342031302E393420302030203120352E3036362D322E303938632E32392D
          2E30342E3534342E31392E3534342E3438357A222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D224D313420362E32303261
          392E3920392E392030203020302D332E35313620312E3435344C31342031312E
          3137327A22206F7061636974793D222E35222F3E0D0A093C7061746820737479
          6C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79
          656C6C6F772C2023444536433030292220643D224D372E32303720392E333961
          2E3438322E343832203020302031202E3732362D2E3034336C342E3334362034
          2E333436632E3136312E3136322E31392E34312E3039342E363137712D2E3037
          322E3135362D2E3133322E33326C2D2E3033342E303737612E35342E35342030
          203020312D2E3436382E32393348352E353932612E3438322E34383220302030
          20312D2E3438352D2E3534342031302E39352031302E39352030203020312032
          2E312D352E3036376D2E343520312E30393441392E3920392E39203020302030
          20362E3220313468342E3937327A22206F7061636974793D222E37222F3E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672069643D224C617965725F342220646174612D6E
          616D653D224C6179657220342220786D6C6E733D22687474703A2F2F7777772E
          77332E6F72672F323030302F737667222076696577426F783D22302030203332
          203332223E0D0A093C646566733E0D0A09093C7374796C653E2E426C75657B66
          696C6C3A233131373764373B7D3C2F7374796C653E0D0A093C2F646566733E0D
          0A093C7469746C653E526962626F6E20466F726D3C2F7469746C653E0D0A093C
          7061746820636C6173733D22426C75652220643D224D33312C32483141312C31
          2C302C302C302C302C3356323961312C312C302C302C302C312C314833316131
          2C312C302C302C302C312D31563341312C312C302C302C302C33312C325A4D33
          302C32304832563648313276344833305A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672069643D224C617965725F342220646174612D6E
          616D653D224C6179657220342220786D6C6E733D22687474703A2F2F7777772E
          77332E6F72672F323030302F737667222076696577426F783D22302030203332
          203332223E0D0A093C646566733E0D0A09093C7374796C653E2E426C75657B66
          696C6C3A233131373764373B7D2E636C732D317B6F7061636974793A302E3235
          3B7D2E426C61636B7B66696C6C3A233732373237323B7D3C2F7374796C653E0D
          0A093C2F646566733E0D0A093C7469746C653E41707020427574746F6E3C2F74
          69746C653E0D0A093C7265637420636C6173733D22426C75652220783D223222
          20793D2232222077696474683D22313222206865696768743D2236222F3E0D0A
          093C6720636C6173733D22636C732D31223E0D0A09093C706F6C79676F6E2063
          6C6173733D22426C61636B2220706F696E74733D223138203420313820313220
          32203132203220323820333220323820333220342031382034222F3E0D0A093C
          2F673E0D0A093C7061746820636C6173733D22426C61636B2220643D224D3138
          2C31325634483332563248313761312C312C302C302C302D312C317637483161
          312C312C302C302C302D312C3156323961312C312C302C302C302C312C314833
          3256323848325631325A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3136203133
          6135203520302031203120302031302035203520302030203120302D31306D30
          203161342034203020312030203020382034203420302030203020302D38222F
          3E0D0A093C706174682066696C6C3D2263757272656E74436F6C6F722220643D
          224D3136203963352E373420302031302E35353820332E39382031312E393834
          20392E333732612E352E352030203020312D2E3936372E3235364332352E3720
          31332E36352032312E3236203130203136203130732D392E3720332E36352D31
          312E30313720382E363238612E352E352030203020312D2E3936362D2E323536
          43352E3434322031322E39382031302E323620392031362039222F3E0D0A3C2F
          7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D3136203363372E3138203020313320
          352E3832203133203133762E35633020332E3033352D312E38393720362E3836
          382D372E3134382031312E354832382E35612E352E3520302030203120302031
          682D38712D2E3031322D2E3030322D2E3032332D2E303033612E352E35203020
          3020312D2E3237322D2E3039356C2D2E3033382D2E3033322D2E3033362D2E30
          33352D2E3031352D2E3031352D2E3031322D2E303138612E352E352030203020
          312D2E3039372D2E3233326C2D2E3030352D2E3034334C32302032382E356C2E
          3030322D2E303233612E352E35203020302031202E3039352D2E3237326C2E30
          33322D2E3033382E3033352D2E3033362E3031362D2E3031354332362E313432
          2032332E3134372032382031392E3237352032382031362E3556313663302D36
          2E3632372D352E3337332D31322D31322D3132533420392E3337332034203136
          762E35633020322E36383820312E37343320362E34303620372E323733203131
          2E3135336C2E3534372E3436332E3031342E3031342E3033362E3033372E3032
          2E3032312E30312E303134712E3031352E30322E3032362E3034612E352E3520
          3020302031202E3036352E31372E352E352030203020312D2E3039332E333838
          6C2D2E3031342E30322D2E3031352E3031352D2E3033332E3033322D2E303335
          2E3033712D2E30322E3031362D2E30342E3032386C2D2E3033382E30322D2E30
          34312E3031392D2E3034382E303136712D2E30322E3030362D2E30342E303161
          2E352E352030203020312D2E3039312E3030394C31312E35203239682D38612E
          352E3520302030203120302D3168362E36343843342E3839372032332E333637
          20332031392E35333520332031362E35563136433320382E383220382E383220
          332031362033222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203332203332223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D322E30393720332E393932632D
          2E3433372D312E32372E3838362D322E343320322E3038372D312E38336C3235
          2031322E34393863312E3130342E35353220312E31303420322E313238203020
          322E36386C2D32352031322E343937632D312E322E362D322E3532342D2E3536
          2D322E3038372D312E3832394C362E3233382031367A6D312E36342D2E393336
          612E352E352030203020302D2E3639352E36316C342E3038312031312E383335
          4831382E35612E352E352030203120312030202E39393948372E3132334C332E
          3034322032382E333334612E352E35203020302030202E3639362E36316C3234
          2E3939382D31322E343937612E352E3520302030203020302D2E3839347A222F
          3E0D0A3C2F7376673E0D0A}
      end>
  end
  object ilSmallImagesSVG: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 768
    Top = 272
    Bitmap = {
      494C010124002800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000A0000000010020000000000000A0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000000000009C6816DECD8B1DFFCD8B
      1DFFCD8B1DFFAA7318E8000000000000000000000000000000009F6A16E0CD8B
      1DFFCD8B1DFFCD8B1DFFA77018E6000000000000000000000000000000000000
      0000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C08
      013FAC7318E90E09024500000000000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF0000000000000000000000000000000000000000120C
      024CA77118E608060135000000000000000000000000000000000604012FA56F
      18E5150E03530000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484FFFFFFFFFFC1C1C1FFC1C1C1FFC1C1
      C1FFC1C1C1FFC1C1C1FFFFFFFFFF848484FF00000000000000DB000000150000
      000000000000000000000000000000000010000000E0000000000C08013FAB73
      18E9CD8B1DFFAA7318E80E090245000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000000000000503002AAC73
      18E9080501340000000000000000000000000000000000000000000000000604
      002EAB7318E90704013000000000000000005F4227B7B8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFF00000000848484FFFFFFFFFFC1C1C1FFC1C1C1FFC1C1
      C1FFC1C1C1FFC1C1C1FFFFFFFFFF848484FF000000000000009F000000720000
      00000000000000000000000000000000006A000000A800000000875B13CF0C08
      013FCD8B1DFF0A07013A926214D7000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000000000027F5612C91F15
      0464000000000000000000000000000000000000000000000000000000000000
      00001911035B885C14D00000000300000000B8824CFF000000002C1F127EB882
      4CFFB8824CFFB8824CFF00000000848484FFFFFFFFFFC1C1C1FFC1C1C1FFC1C1
      C1FFC1C1C1FFC1C1C1FFFFFFFFFF848484FF000000000000003D000000D60000
      0000000000000000000000000000000000CD0000004500000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFD77610FFFFFFFFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000140D02507F5612C90000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000764F11C11810035800000000B8824CFF2E211381000000002C1F
      127EB8824CFFB8824CFF00000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000001000000D70000
      00FF000000FF000000FF000000FF000000DF0000000200000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF0000000000000000000000005F400EAE1B12045E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000170F035669460FB600000000B8824CFFB8824CFF2E2113810000
      00002C1F127EB8824CFF00000000848484FFFFFFFFFFC1C1C1FFC1C1C1FFFFFF
      FFFFC1C1C1FFC1C1C1FFFFFFFFFF848484FF0000000000000000000000750000
      009D0000000000000000000000940000007D0000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFD77610FFFFFFFFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000A77018E60201001C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001000015B47A1AEF00000000B8824CFFB8824CFFB8824CFF2E21
      1381000000002C1F127E00000000848484FFFFFFFFFFC1C1C1FFC1C1C1FFFFFF
      FFFFC1C1C1FFC1C1C1FFFFFFFFFF848484FF0000000000000000000000170000
      00EE0000000D00000009000000EC0000001D0000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000C0831BF7000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000CD8B1DFF00000000B8824CFFB8824CFFB8824CFFB882
      4CFF2C1F127E0000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      00AD000000640000005C000000B6000000000000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFD77610FFFFFFFFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000A56F18E50201001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010016B07819ED00000000B8824CFFB8824CFFB8824CFF2C1F
      127E000000002E21138100000000848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
      004B000000C7000000BF00000053000000000000000000000000000000000000
      0000CD8B1DFF0000000000000000000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000583B0DA7221704680000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C13046061400EAF00000000B8824CFFB8824CFF2C1F127E0000
      00002E211381B8824CFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003000000E3000000E8000000060000000000000000000000008F6014D50E09
      0245CD8B1DFF0C08013F996716DD000000000000000000000000717171FFFFFF
      FFFFD77610FFFFFFFFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFF717171FF0000000000000000000000000A07013B9E6A16E00000
      000E000000000000000000000000000000000000000000000000000000000000
      00000000000B976616DB0D09024300000000B8824CFF2C1F127E000000002E21
      1381B8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFF2E21
      1381000000002C1F127EB8824CFF000000000000000000000000000000000000
      00000000007C00000084000000000000000000000000000000000A07013AAA73
      18E8CD8B1DFFAB7318E90C08013F000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF00000000000000000000000000000000432D09936F4A
      10BB0000000E0000000000000000000000000000000000000000000000000000
      000B68460EB64C330A9C0000000000000000B8824CFF000000002E211381B882
      4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
      4CFF2E21138100000000B8824CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A07
      013A9F6C17E10C08013F00000000000000000000000000000000717171FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF0000000000000000000000000000000000000004432D
      09939E6A16E0221704680201001E00000004000000040201001D1F1504659967
      16DD4A320A9A00000005000000000000000065462ABDB8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB8824CFFB882
      4CFFB8824CFFB8824CFF65462ABD000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000A07013B583B0DA7A56F18E5C7871DFBC7871DFBA77018E65A3D0DAA0D08
      0240000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B28088AC6871CFB422D
      0992000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA7E1AF30A060139C687
      1CFB0000000000000000000000DF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E6000000000000000000000000000000000000
      0000000000DB0000001600000000000000000000000000000000000000100000
      00E0000000000000000000000000000000000000000000000000000000000000
      000000000000000000DF000000FF000000FF000000FF000000FF000000E60000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000E6000000000000000036240783BA7E1BF33B28
      088A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000009F00000073000000000000000000000000000000000000006A0000
      00A8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000003D000000D600000000000000000000000000000000000000CD0000
      0045000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001000000D7000000FF000000FF000000FF000000FF000000DF0000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B28088AC6871CFB422D
      0992000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000750000009D0000000000000000000000940000007D0000
      00000000000000000000000000000000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E60000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E60000000000000000BA7E1AF30A060139C687
      1CFB0000000000000000000000DF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E6000000000000000000000000000000000000
      00000000000000000017000000EE0000000D00000009000000EC0000001D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036240783BA7E1BF33B28
      088A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000AD000000640000005C000000B6000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000004B000000C7000000BF00000053000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000003000000E3000000E800000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00DF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E60000000000000000000000000000000000000000000000000000
      000000000000000000DF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E600000000000000003B28088AC6871CFB422D
      0992000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000007C0000008400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BA7E1AF30A060139C687
      1CFB0000000000000000000000DF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000036240783BA7E1BF33B28
      088A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000C7000000FF000000FF000000FF000000FF000000F8000000B70000
      002D000000000000000000000000000000000000000000000000000000DE0000
      00FF000000FF000000FF000000FF000000FF000000E600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00DE000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00E6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00F20000002E0000000000000000000000000000000000000000000000000000
      000000000000000000CF00000043000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000012000000A90000
      00FF000000B70000000000000000000000000000000000000000000000000000
      00000000000000000069000000A9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000E6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000130000
      00FF000000F80000000000000000000000000000000000000000000000000000
      0000000000000000000F000000EF000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000005B000000D9000000FE000000DB00000060000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF00000000000000000000000000000000000000150000
      00FF000000F70000000000000000000000000000000000000000000000000000
      000000000000000000000000009E000000760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000059000000DD0000003A0000000200000036000000D9000000600000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF0000000000000000000000000000001A000000AF0000
      00FF000000B30000000000000000000000000000000000000000000000000000
      0000000000000000000000000038000000DB0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000D30000003E00000000000000000000000000000036000000DB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00EF0000002A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000D10000004300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FB0000000500000000000000000000000000000001000000FF0000
      00000000000000000000000000000000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000E6000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000E20000
      0028000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000006B000000A900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000000000000000000031000000FF000000F40000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000F000000EF00000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000000000000000000039000000FF000000F30000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000009E00000076000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF000000FF000000FF000000FF000000FF000000FF000000950000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000038000000DB000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000FF0000
      00000000000000000000000000000000000000000000000000DF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000E60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BF000000FF000000FF000000FF000000EC00000091000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000DE000000FF000000FF000000FF000000FF0000
      00FF000000E60000000000000000000000000000000000000000000000000000
      0000000000DE0000000000000000000000000000000000000000000000DE0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000B2000000EE000000370000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FE0000004F000000E20000
      0019000000000000000000000000000000000000000000000000000000000000
      0050000000EC000000F400000076000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000230000
      00CA000000FF000000E60000000000000000000000FF000000000000007C0000
      00C500000065000000780000008C000000500000000000000000000000000000
      00E10000003B0000001A000000D40000007C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000500000
      00EB000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000ED0000005600000000000000000000000000000000000000BF0000
      007400000002000000000000000000000000000000FF00000000000000010000
      00820000009C0000008700000081000000F70000000000000000000000000000
      00D3000000500000000000000017000000D40000007C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000004000000040000
      0000000000000000000000000000000000000000000000000000000000E50000
      0038000000000000000000000000000000000000000000000000000000000000
      000000000030000000ED00000000000000000000000000000000000000F90000
      00083B28088AC9891DFDCD8B1DFF00000000000000FF00000000000000000000
      00000000000000000013000000C8000000930000000000000000000000000000
      0038000000E8000000450000000000000017000000D40000007C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      005B000000D9000000FF000000E60000000000000000000000DB000000FB0000
      00DC000000610000000000000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000DE0000
      0000C4851CF9170F0356120C024C00000000000000FF00000000000000000000
      00000000001C000000D600000086000000010000000000000000000000000000
      00000000003A000000E8000000450000000000000017000000D40000007C0000
      0000000000000000000000000000000000000000000000000000000000590000
      00DB000000380000000100000000000000000000000000000000000000010000
      0035000000D70000006200000000000000000000000000000000000000FF0000
      00000000000000000000000000000000004D0000005100000001000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000CD8B1DFF120C024C120C024C00000000000000FF00000000000000000000
      0027000000DF000000720000000000000000000000000000000B000000C70000
      001E000000000000003A000000E8000000450000000000000017000000D40000
      007C000000000000000000000000000000000000000000000000000000D40000
      003C000000000000000400000008000000080000000800000008000000040000
      000000000034000000DD00000000000000000000000000000000000000FF0000
      0000000000000000003B000000C4000000D1000000CE000000C70000003F0000
      000000000000000000FF00000000000000000000000000000000000000E60000
      0000CD8B1DFF120C024C120C024C00000000000000FF00000000000000330000
      00E60000005F0000003B000000000000000000000000000000000000006C0000
      00DC0000001E000000000000003A000000E80000004500000000000000170000
      00D6000000610000000000000000000000000000000000000000000000F70000
      000700000000000000DA000000F7000000F7000000F7000000F7000000E20000
      000000000001000000FD00000003000000000000000000000000000000FF0000
      002A000000B0000000E00000005E00000002000000020000005A000000DD0000
      00B40000002E000000FF00000000000000000000000000000000000000DE0000
      0000CD8B1DFF120C024C120C024C00000000000000FD00000046000000E90000
      004E00000000000000D400000000000000000000000000000000000000000000
      006C000000DC0000001E000000000000003A000000E800000045000000000000
      0036000000DB0000000000000000000000000000000000000000000000D20000
      0040000000000000000000000000000000000000000000000000000000000000
      000000000038000000DA00000000000000000000000000000000000000FF0000
      00E9000000720000000800000000000000000000000000000000000000060000
      006D000000E7000000FF00000000000000000000000000000000000000000000
      0000CD8B1DFF120C024C120C024C0000000B000000AA000000E60000003F1911
      035A000000000000000000000000000000000000000000000000000000000000
      00000000006C000000DC0000001E000000000000003A000000D6000000000000
      0003000000FF0000000000000000000000000000000000000000000000540000
      00DF000000410000000500000000000000000000000000000000000000050000
      003D000000DB0000005C00000000000000000000000000000000000000FF0000
      0021000000000000000000000000000000000000000000000000000000000000
      000000000019000000FF00000000000000000000000000000000000000E60000
      0000C3851CF918100359120C024C0B07013B0000000C000000050604012EC787
      1DFB00000000000000E600000000000000000000000000000000000000000000
      0000000000000000006C000000DC0000001E0000000000000000000000000000
      003D000000D90000000000000000000000000000000000000000000000000000
      0053000000D1000000FA000000E60000000000000000000000DE000000FB0000
      00D4000000590000000000000000000000000000000000000000000000E30000
      0043000000000000000000000000000000000000000000000000000000000000
      00000000003B000000EB00000000000000000000000000000000000000FA0000
      000836240783C3851CF9CD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFC3851CF93B28
      088A00000004000000FD00000000000000000000000000000000000000000000
      000000000000000000000000006C000000DF000000430000000B000000410000
      00DE0000005A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000004A0000
      00E3000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000E50000005000000000000000000000000000000000000000BB0000
      007C000000060000000000000000000000000000000000000000000000000000
      000400000073000000C400000000000000000000000000000000000000000000
      000000000000000000000000000000000053000000D0000000F6000000D20000
      0058000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000001F0000
      00C1000000FB000000E600000000000000DE000000E600000000000000DF0000
      00FC000000C60000002300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000B37250885A16C17E2CD8B
      1DFFA46F18E43B28088A0000000D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000656565F1717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000A7F5612C9553A0CA5040300260000
      00010402002450360B9F875B13CF0000000D0000000000000000000000000000
      00000201001B3B28088A926214D7C7871DFBC7871DFC946416D93E2A098D0201
      001D00000000000000000000000000000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000034230781583B0DA70000000000000000A771
      18E6000000000000000050360B9F3B28088A0000000000000000000000001911
      035AAE7619EB3D29088C0704013000000005000000040604002D3A270888AE76
      19EB1D130460000000000000000000000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000000A
      1550005BBDEB006BDEFF0001031E986716DC0604002C0000000000000000CD8B
      1DFF000000000000000004020024A46F18E40000000000000000191103599E6A
      16E00504002B0000000000000000000000000000000000000000000000000403
      0027986716DC1D1304600000000000000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000076000000F0000000F10000007D000000000000
      0000000000000000000000000000000000000000000000000000000000000056
      B2E500050A390000000000000000C0831BF70000000900000000000000009C68
      16DE000000000000000000000001CD8B1DFF0000000001010019AE7618EB0604
      002D000000000000000000000000000000000000000000000000000000000000
      000005030028AE7618EB0201001E00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      00000000000000000042000000DA0000001D0000001A000000D50000004A0000
      000000000000000000000000000000000000000000000000000000000000006B
      DEFF000000000000000000000000956516DA0604012F00000000000000000000
      0000000000000000000004030027A16C16E20000000037250885412C09900000
      0000000000000000000000000000281B05722B1D067600000000000000000000
      0000000000003A2708883E2A098D00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      000000000000000000760000008B0000000000000000000000840000007E0000
      000000000000000000000000000000000000000000000000000000000000006B
      DEFF0000000000000000000000003121077D5D3F0DAC00000001000000007B53
      11C50000000000000000553A0CA53725088500000000895D13D1090601360000
      0000000000000000000000000000332307803323078000000000000000000000
      0000000000000604012E946415D900000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000DB0000
      0014000000000000003F000000DD0000002500000022000000D8000000460000
      00000000000F000000DF0000000000000000000000000000000000000000006B
      DEFF00000000000000000000000000000008785111C35D3F0DAC0604002E0000
      00090604002C583B0DA77F5612C90000000B00000000BB7F1BF40000000C0000
      0000000000000000000000000000332307803323078000000000000000000000
      00000000000000000004C8871DFC00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F00000000000000000000009A0000
      008900000000000000000000006F000000E8000000E900000075000000000000
      000000000080000000A20000000000000000000000000000000000000000006B
      DEFF00000000000000000000000000000000000000083121077D966516DAC083
      1BF7986716DC342307810000000A0000000000000000BB7F1BF40000000D0000
      00000000000000000000000000002519056E281B057200000000000000000000
      00000000000000000005C7871DFC00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0606063F0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000170000
      00E5000000530000000000000000000000000000000000000000000000000000
      004C000000E70000001C0000000000000000000000000000000000000000006B
      DEFF000000000000000000000000000000000000000000000000000000000000
      00000001031E00000000000000000000000000000000875B13CF0A0601390000
      0000000000000000000000000000000000000000000100000000000000000000
      00000000000007040131926214D700000000626262ED717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0031000000E20000009A000000370000000C0000000C00000034000000960000
      00E500000036000000000000000000000000000000000000000000000000006B
      DEFF000000000000000000000000000000000000000000000000000000000000
      0000006BDEFF0000000000000000000000000000000035240783442E09940000
      00000000000000000000000000004D340B9D55390CA400000000000000000000
      0000000000003D29098C3B28088A000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000110000007F000000D0000000F4000000F4000000D2000000830000
      001300000000000000000000000000000000000000000000000000000000006B
      DEFF000000000000000000000000000000000000000000000000000000000005
      0B39005ABBEA0000000000000000000000000000000001010016AC7518EA0705
      01320000000000000000000000000B07013C0D08024000000000000000000000
      00000604002CAE7618EB0201001B0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000006B
      DEFF0069DAFD006BDEFF006BDEFF006BDEFF006BDEFF006BDEFF006BDEFF006B
      DEFF000A154F0000000000000000000000000000000000000000150E0353A16C
      17E2070501310000000000000000000000000000000000000000000000000604
      002D9E6A16E01911035A000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000717171FF0606063F0606063F0606
      063F0606063F0606063F0606063F0606063F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000066
      D3F900010321000000000000000000000000000000000000000000050A38005B
      BDEB00000000000000000000000000000000000000000000000000000000150E
      0353AC7419EA442E0994090601380000000D0000000C09060136412C0990AE76
      19EB1911035900000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000626262ED717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000001C
      3A830066D3F9006BDEFF006BDEFF006BDEFF006BDEFF006BDEFF0056B2E5000A
      1550000000000000000000000000000000000000000000000000000000000000
      00000101001635240782875B13CFBA7F1BF3BB7F1BF4895D14D1372508850101
      0018000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B00000089000000D6000000FB000000FC000000D80000008C0000
      001D000000000000000000000000000000000000000000000000000000000000
      00000000001B00000089000000D6000000FB000000FC000000D80000008C0000
      001D000000000000000000000000000000000000000000000000000000000000
      00000000001B00000089000000D6000000FB000000FC000000D80000008C0000
      001D00000000000000000000000000000000C0690FF1D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC66D0FF50000000000000000000000000000
      005A000000EA0000008B0000003000000005000000040000002D000000870000
      00EB000000600000000000000000000000000000000000000000000000000000
      005A000000EA0000008B0000003000000005000000040000002D000000870000
      00EB000000600000000000000000000000000000000000000000000000000000
      005A000000EA0000008B0000003000000005000000040000002D000000870000
      00EB00000060000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000590000
      00E10000002C0E0F0452535719C41F2009782C1E06777D5311C7170F03570000
      0028000000DE0000006000000000000000000000000000000000000000590000
      00E10000002C0E0F0452535719C41F2009782C1E06777D5311C7170F03570000
      0028000000DE0000006000000000000000000000000000000000000000590000
      00E10000002C0E0F0452535719C41F2009782C1E06777D5311C7170F03570000
      0028000000DE000000600000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000019000000EA0000
      002E000000064B4E16BA8E942AFF23250B8033230780CD8B1DFF744E11C00000
      000900000028000000EB0000001E000000000000000000000019000000EA0000
      002E000000064B4E16BA8E942AFF23250B8033230780CD8B1DFF744E11C00000
      000900000028000000EB0000001E000000000000000000000019000000EA0000
      002E000000064B4E16BA8E942AFF23250B8033230780CD8B1DFF744E11C00000
      000900000028000000EB0000001E00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF000000000000008400000090040C
      0A4D1B4F42C1000100164B4E16BA23250B803221077E744E11C0010000176C3A
      38C0160B0B57000000880000008D00000000000000000000008400000090040C
      0A4D1B4F42C1000100164B4E16BA23250B803221077E744E11C0010000176C3A
      38C0160B0B57000000880000008D00000000000000000000008400000090040C
      0A4D1B4F42C1000100164B4E16BA23250B803221077E744E11C0010000176C3A
      38C0160B0B57000000880000008D00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000000000D000000036194A
      3DBA2D856DF91B4F42C1000000130000001401000012010000136C3A38C0BF67
      62FF743E3BC70000002E000000D90000000000000000000000D000000036194A
      3DBA2D856DF91B4F42C1000000130000001401000012010000136C3A38C0BF67
      62FF743E3BC70000002E000000D90000000000000000000000D000000036194A
      3DBA2D856DF91B4F42C1000000130000001401000012010000136C3A38C0BF67
      62FF743E3BC70000002E000000D900000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF00000000000000F40000000C091A
      16700B211B7D0B201A7B000000150000000000000000000000122E19187E301A
      19802916157700000004000000FC0000000100000000000000F40000000C091A
      16700B211B7D0B201A7B000000150000000000000000000000122E19187E301A
      19802916157700000004000000FC0000000100000000000000F40000000C091A
      16700B211B7D0B201A7B000000150000000000000000000000122E19187E301A
      19802916157700000004000000FC00000001D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF00000000000000F30000000D000A
      1550000D1B59000D1B59000000100000000000000000000000131F0C1D811F0C
      1D821B0A197900000005000000FC0000000000000000000000F30000000D000A
      1550000D1B59000D1B59000000100000000000000000000000131F0C1D811F0C
      1D821B0A197900000005000000FC0000000000000000000000F30000000D000A
      1550000D1B59000D1B59000000100000000000000000000000131F0C1D811F0C
      1D821B0A197900000005000000FC00000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF00000000000000CE00000038001C
      3A8300346CB2001D3D8600000011000001180000011600000114421A3EBA7C30
      75FF491D45C400000030000000D70000000000000000000000CE00000038001C
      3A8300346CB2001D3D8600000011000001180000011600000114421A3EBA7C30
      75FF491D45C400000030000000D70000000000000000000000CE00000038001C
      3A8300346CB2001D3D8600000011000001180000011600000114421A3EBA7C30
      75FF491D45C400000030000000D700000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF0000000000000081000000930004
      0934001D3D8600000113003C7EC0001B37800E0F3A7F23248EC500000117421A
      3EBA0C050C520000008B00000089000000000000000000000081000000930004
      0934001D3D8600000113003C7EC0001B37800E0F3A7F23248EC500000117421A
      3EBA0C050C520000008B00000089000000000000000000000081000000930004
      0934001D3D8600000113003C7EC0001B37800E0F3A7F23248EC500000117421A
      3EBA0C050C520000008B0000008900000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF0000000000000016000000E90000
      003200000003003C7EC0006BDEFF001B37800F0F3B803A3CEDFF23248EC50000
      00060000002C000000EA0000001B000000000000000000000016000000E90000
      003200000003003C7EC0006BDEFF001B37800F0F3B803A3CEDFF23248EC50000
      00060000002C000000EA0000001B000000000000000000000016000000E90000
      003200000003003C7EC0006BDEFF001B37800F0F3B803A3CEDFF23248EC50000
      00060000002C000000EA0000001B00000000D77610FF00000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000530000
      00E3000000320008124A003A79BC00162D740C0C3073202284BF0505164F0000
      002E000000E10000005A00000000000000000000000000000000000000530000
      00E3000000320008124A003A79BC00162D740C0C3073202284BF0505164F0000
      002E000000E10000005A00000000000000000000000000000000000000530000
      00E3000000320008124A003A79BC00162D740C0C3073202284BF0505164F0000
      002E000000E10000005A0000000000000000D77610FF00000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0053000000E900000093000000370000000C0000000C00000035000000900000
      00EA000000590000000000000000000000000000000000000000000000000000
      0053000000E900000093000000370000000C0000000C00000035000000900000
      00EA000000590000000000000000000000000000000000000000000000000000
      0053000000E900000093000000370000000C0000000C00000035000000900000
      00EA00000059000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000001600000081000000CE000000F3000000F4000000D0000000840000
      0018000000000000000000000000000000000000000000000000000000000000
      00000000001600000081000000CE000000F3000000F4000000D0000000840000
      0018000000000000000000000000000000000000000000000000000000000000
      00000000001600000081000000CE000000F3000000F4000000D0000000840000
      001800000000000000000000000000000000BA660EEDD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC0690FF10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000926214D70E0902450000000000000000000000000000
      0000000000000000000000000000000000000000000000000000292AA8D70404
      1145000000000000000000000000000000000000000000000000000000000000
      000003030E3F2C2DB1DD00000000000000000000000000000000000000000000
      0000000000000000000000000002000000DF0000003F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000200000
      0075000000760000002300000000000000000000000000000000000000200000
      0074000000750000002200000000000000000000000000000000000000000000
      000000000000000000000A07013AAA7318E80E09024500000000000000000000
      000000000000000000000000000000000000000000000000000002030C3A3032
      C4E8040411450000000000000000000000000000000000000000000000000303
      0E3F3132C5E903030E3F00000000000000000000000000000000000000000000
      000000000000000000000000000000000045000000EB0000003F000000000000
      000000000000000000000000000000000000000000000000003D000000EA0000
      009400000092000000EA0000004400000000000000000000003D000000EA0000
      009400000092000000EA00000043000000000000000000000007442E0994BA7E
      1BF3CD8B1DFFCD8B1DFFCD8B1DFFCD8B1DFFAC7318E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000203
      0C3A3032C4E8040411450000000000000000000000000000000003030E3F3132
      C5E903030E3F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000045000000EB0000003F0000
      00000000000000000000000000000000000000000000000000CC0000004F0000
      00000000000000000047000000D40000000000000000000000CC0000004F0000
      00000000000000000047000000D40000000000000000412C099161400EAF0100
      001400000000000000000C08013FAB7318E90C08013F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002030C3A3032C4E804041145000000000000000003030E3F3132C5E90303
      0E3F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000045000000EB0000
      003F0000000000000000000000000000000000000000000000F60000000B0000
      00000000000000000003000000FF0000000000000000000000FB0000000B0000
      00000000000000000003000000FE0000000000000000B07719EC0201001A0000
      00000000000000000000895D14D10C08013F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002030C3A3032C4E80404114503030E3F3132C5E903030E3F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000450000
      00EB0000003F00000000000000000000000000000000000000C9000000540000
      0000000000000000004C000000FF0000008000000080000000FF000000540000
      0000000000000000004C000000D10000000000000000AE7619EB0201001D0000
      0000000000000000000000000002000000000000000000000000000000000000
      000000000000010200200A14075C000000000000000000000000000000000000
      0000000000000000000002030C3A3032C4E83132C5E903030E3F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0045000000EA0000002C00000000000000000000000000000049000000F70000
      009C0000009A000000ED000000FF0000008000000080000000FF000000EC0000
      009C0000009A000000F50000005100000000000000003D29098C67450EB50201
      001C00000000000000003031C3E82F31BFE53031C3E803030E3F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003030E3F3132C5E93032C4E804041145000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00EB000000FF000000FF000000FF000000FF000000E600000000000000000000
      000000000063000000B200000000000000000000000000000000000000C70000
      00C80000009700000060000000FF0000008000000080000000FF0000005B0000
      0097000000C4000000CE000000010000000000000000000000053D29088CAE76
      19EBA77018E6000000003A3CEDFF060619540505144C282AA5D5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003030E3F3132C5E903030E3F02030C3A3032C4E8040411450000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000E70000005100000000000000000000000000000000000000000000
      000000000007000000EC00000000000000000000000000000000000000480000
      00DF0000004D0000004F000000FD0000008000000080000000F9000000510000
      004D000000DA0000005000000000000000000000000000000000000000000000
      000000000000000000003A3CEDFF0000000A000000023A3CEBFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003030E3F3132C5E903030E3F000000000000000002030C3A3032C4E80404
      1145000000000000000000000000000000000000000000000000000000000000
      00FF0000002F000000E600000051000000000000000000000000000000000000
      000000000006000000E800000000000000000000000000000000000000000000
      00BE000000C6000000CA000000B30000000000000000000000AB000000CD0000
      00C3000000C50000000100000000000000000000000000000000000000000000
      000000000000000000003A3CEDFF07071E5B060619542829A0D2000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      0E3F3132C5E903030E3F0000000000000000000000000000000002030C3A3032
      C4E8040411450000000000000000000000000000000000000000000000000000
      00FF000000000000002F000000E6000000510000000000000000000000000000
      00000000005D000000A800000000000000000000000000000000000000000000
      000C00000068000000650000000A000000000000000000000008000000630000
      006A0000000E0000000000000000000000000000000000000000000000000000
      000000000000000000003A3CEDFF2C2DB1DD2D2FB6E002030C3A000000000000
      000000000000000000000000000000000000000000000000000003030E3F3132
      C5E903030E3F0000000000000000000000000000000000000000000000000203
      0C3A3032C4E80404114500000000000000000000000000000000000000000000
      00FF00000000000000000000002F000000E6000000700000000D000000090000
      0060000000DD0000002100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003A3CEDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000282AA3D30303
      0E3F000000000000000000000000000000000000000000000000000000000000
      000002030C3A282AA5D500000000000000000000000000000000000000000000
      00DE00000000000000000000000000000022000000A6000000E6000000E40000
      00A3000000200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C2DB4DE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000008A0000
      00FD000000FF000000FF000000200000008A000000FD000000FF000000FF0000
      00FF000000FD0000009200000000000000000000000000000000000000220000
      00C5000000FD000000C900000026000000000000000000000024000000C70000
      00FE000000CA0000002700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050517503133
      C9EB3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF3234CDED06071A5600000000000000000000000000000000000000F90000
      000E000000000000000000000000000000F90000000E00000000000000000000
      00000000000B000000FD00000000000000000000000000000000000000C10000
      0075000000050000006D000000C90000000000000000000000C3000000750000
      00050000006D000000C900000000000000000000000000000000000000000000
      000700000095000000F3000000FF000000FF000000FF000000FD000000910000
      00000000000000000000000000000000000000000000000000002F31BFE50203
      0B39000000000000000000000000000000000000000000000000000000000000
      0000020208313334CEEE00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000F50000
      000C0000000000000005000000FD0000000000000000000000F70000000C0000
      000000000005000000FD00000000000000000000000000000000000000000000
      0091000000DC0000003900000001000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A3CEDFF0000
      0000000000000000000000000000000000000000000000000000000000010000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000BD0000
      007C0000000C00000075000000C50000000000000000000000BD0000007C0000
      000C00000075000000C500000000000000000000000000000000000000000000
      00EC0000003E0000008A000000FD000000FF000000FF000000FF000000FF0000
      00FD0000009200000000000000000000000000000000000000003A3CEDFF0000
      000000000000292AA8D704041145000000000000000003030E3F2C2DB2DD0000
      0001000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000FF000000000000000000000000000000000000001E0000
      00BD000000F5000000FA0000004A000000000000000000000040000000FA0000
      00F5000000C10000002200000000000000000000000000000000000000000000
      00FF00000005000000F90000000E000000000000000000000000000000000000
      000B000000FD00000000000000000000000000000000000000003A3CEDFF0000
      00000000000002030C3A3032C4E80404114503030E3F3132C5E903030E3F0000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      0000000000000000006A000000C90000000400000002000000C0000000700000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000003A3CEDFF0000
      0000000000000000000002030C3A3032C4E83132C5E903030E3F000000000000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000FF0000000000000000000000000000
      000000000000000000FF00000000000000000000000000000000000000000000
      00000000000000000001000000BE000000780000006D000000C2000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000003A3CEDFF0000
      0000000000000000000003030E3F3132C5E93032C4E804041145000000000000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000F90000001200000000000000000000
      00000000000F000000FD00000000000000000000000000000000000000000000
      0000000000000000000000000021000000EC000000EA00000025000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000003A3CEDFF0000
      00000000000003030E3F3132C5E903030E3F02030C3A3032C4E8040411450000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      000000000000000000000000000000000083000000F9000000FF000000FF0000
      00FF000000F90000008A00000000000000000000000000000000000000000000
      0000000000000000000000000002000000CA0000007000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF00000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000003A3CEDFF0000
      0000000000002728A0D103030E3F000000000000000002030C3A292AA8D70000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000006D000000C20000001A00000068000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00F900000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000003A3CEDFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003A3CEDFF00000000000000000000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000023000000EA0000002500000021000000EC0000002A0000
      0000000000000000000000000000000000000000000000000000000000000000
      008300000000000000FF00000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000002E2FBBE30303
      0F40000000000000000000000000000000000000000000000000000000000000
      000002030B383133C9EB00000000000000000000000000000000000000F90000
      00120000008A000000FD000000FF000000FF000000FD000000920000000F0000
      00FD000000000000000000000000000000000000000000000000000000000000
      000000000002000000C00000007000000000000000000000006A000000C90000
      0004000000000000000000000000000000000000000000000000000000000000
      000000000000000000F900000012000000000000000000000000000000000000
      000F000000FD00000000000000000000000000000000000000000405134A2E2F
      BBE33A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3CEDFF3A3C
      EDFF2F31BFE50505175000000000000000000000000000000000000000830000
      00F9000000FF00000021000000000000000000000019000000FF000000F90000
      008A000000000000000000000000000000000000000000000000000000000000
      00000000006D000000C200000002000000000000000000000001000000BE0000
      0078000000000000000000000000000000000000000000000000000000000000
      00000000000000000083000000F9000000FF000000FF000000FF000000FF0000
      00F90000008A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000083000000F9000000FF000000FF000000F90000008A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000CF0000002500000000000000000000000000000000000000210000
      00D9000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0050000000EB000000FF000000FF000000FF000000FF000000FF000000FF0000
      00ED000000570000000000000000000000000000000000000000000000010000
      0008000000080000000800000008000000080000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00E6000000390000000000000000000000000000000000000000000000000000
      0031000000ED0000000000000000000000000000000000000074000000FB0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00F8000000860000000000000000000000000000000000000000000000500000
      00EB000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000ED0000005700000000000000000000000000000000000000000000
      0000000000C7000000FF000000FF000000FF000000FF000000FF000000FF0000
      00CF000000000000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000EC000000340000
      0000000000000000000000000000000000000000000000000000000000000000
      0012000000DA0000004700000000000000000000000000000000000000E50000
      0038000000FF0000000000000000000000000000000000000000000000000000
      00FF00000031000000ED00000000000000000000000000000050000000EB0000
      00FF000000FF0000000000000000000000000000000000000000000000000000
      00FF000000FF000000ED00000057000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF0000009F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000004D000000D500000005000000000000000000000000000000FF0000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF00000000000000FF000000000000000000000000000000E6000000390000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF0000000000000031000000ED000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000E50000
      0034000000000000000000000000000000000000000000000000000000000000
      000000000000000000B80000006E000000000000000000000000000000FF0000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF00000000000000FF000000000000000000000000000000FF000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF0000000000000000000000FF000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000610000
      00C4000000010000000000000000000000000000000000000000000000000000
      0000000000000000002A000000E9000000140000000000000000000000FF0000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF00000000000000FF000000000000000000000000000000FF000000000000
      0000000000BF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C70000000000000000000000FF000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000020000
      00CB0000005A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000091000000940000000000000000000000FF0000
      0000000000BF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C700000000000000FF000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000000000
      003B000000E10000001B00000000000000000000000000000000000000000000
      000000000000000000000000002E000000E20000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000FF000000000000
      0000000000DE000000E600000000000000000000000000000000000000000000
      00000000000000000000000000FF000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000FF00000000000000000000000000000000000000FF000000000000
      000000000077000000F0000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000F6000000750000000000000000000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000000000000000000000000000EB0000001D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000015000000F3000000000000000000000000000000000000
      00FF000000000000000000000000000000000000008A000000FD000000FF0000
      00FF000000FD00000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003B000000EA0000000000000000000000000000000000000000000000FF0000
      000000000000000000C7000000FF000000FF000000FF000000FF000000CF0000
      000000000002000000FE0000000000000000000000000000008C000000B50000
      001C000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF0000001A000000AF00000095000000000000000000000000000000000000
      00FF00000000000000000000000000000000000000F90000000E000000170000
      00D40000007A00000000000000000000000000000000000000FF000000000000
      00000000000000000017000000D4000000FF000000FF000000FF000000FF0000
      00E30000004C0000000000000000000000000000000000000000000000FF0000
      000000000000000000FF00000000000000000000000000000000000000FF0000
      000100000088000000C0000000000000000000000000000000050000008C0000
      00EB000000FF0000000000000000000000000000000000000000000000000000
      00FF000000EC0000009100000007000000000000000000000000000000000000
      00FF00000000000000000000000000000000000000FF00000017000000D40000
      007C0000000000000000000000000000000000000000000000E2000000460000
      00080000001B000000D40000007C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000E30000
      004100000000000000FF00000000000000000000000000000000000000FF0000
      009A000000C90000001400000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      00E300000041000000000000000000000000000000FF000000D40000007C0000
      0000000000000000000000000000000000000000000000000046000000DE0000
      00F7000000F50000007A00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000004A0000
      00E3000000FF000000FF000000FF000000FF000000FF000000FF000000F90000
      00AA0000000C0000000000000000000000000000000000000000000000000000
      0000000000FF0000000000000000000000000000000000000000000000000000
      00FF000000000000000000000000000000000000000000000000000000000000
      004A000000E3000000FF000000FF000000FF000000FA0000007A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000BF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00C7000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000A00000000100010000000000000500000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 17826560
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D342E363833
          20322E303037632E32332E3032322E3434372E3132332E3631322E3238384C37
          203468332E3934374331322E303831203420313320342E383936203133203668
          312E34303361312E3520312E3520302030203120312E3320322E3234396C2D32
          2E373420342E3735413220322030203020312031312E32333220313448382E37
          3837762E3030336C2D352E3733342E3030382D2E32312D2E303131682D2E3234
          3643312E35203134203120313320312031322E3031762D3863302D312E303335
          2E3830382D312E38383720312E3834332D312E39396C2E32312D2E303120312E
          35332D2E3030387A4D352E3736392037613120312030203020302D2E3836372E
          356C2D322E37333920342E3735612E352E35203020302030202E3433342E3735
          68382E36333461312031203020302030202E3836372D2E356C322E3733392D34
          2E3735612E352E352030203020302D2E3433342D2E37357A4D332E3035382033
          2E3031682D2E303035632D2E36303620302D312E3035332E3437332D312E3035
          33203176362E3532316C322E3033362D332E3533613220322030203020312031
          2E3539392D2E3939364C352E373639203648313263302D2E3532382D2E343437
          2D312D312E3035332D3148362E3538364C342E35383820332E3030327A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D31302E3634
          20322E3030396132203220302030203120312E3136352E3531366C312E353437
          20312E34324132203220302030203120313420352E3431375631326132203220
          30203020312D3220324834613220322030203020312D322D3256346132203220
          302030203120312E3739362D312E39394C34203268362E3435337A4D34203361
          3120312030203020302D312031763861312031203020302030202E3839372E39
          39354C3420313356396131203120302030203120312D31683661312031203020
          3020312031203176346131203120302030203020312D3156352E34313863302D
          2E32382D2E3131382D2E3534382D2E3332342D2E3733376C2D312E3534372D31
          2E343138613120312030203020302D2E3132392D2E3156356131203120302030
          20312D3120314836613120312030203020312D312D3156337A6D312031306836
          563948357A6D312D386834563348367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D352E352037612E352E35203020
          30203120302031682D31612E352E3520302030203120302D317A222F3E0D0A09
          3C706174682066696C6C3D2263757272656E74436F6C6F72222066696C6C2D72
          756C653D226576656E6F64642220636C69702D72756C653D226576656E6F6464
          2220643D224D3131203161312031203020302031203120317632613320332030
          20302031203320337634613220322030203020312D322032682D316131203120
          30203020312D3120314835613120312030203020312D312D3148336C2D2E3230
          342D2E3031413220322030203020312031203131563761332033203020302031
          20332D3356326131203120302030203120312D317A4D352031336836762D3348
          357A6D372D3748345635613220322030203020302D3220327634613120312030
          20302030203120316831762D326131203120302030203120312D316836613120
          3120302030203120312031763268316131203120302030203020312D31563761
          3220322030203020302D322D327A4D3520356836563248357A222F3E0D0A3C2F
          7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
          2C2023454433443342292220643D224D31302E31343720352E313436612E352E
          35203020312031202E3730372E3730384C382E37303720386C322E3134362032
          2E313436612E352E352030203120312D2E3730372E3730374C3820382E373038
          6C2D322E31343620322E313436612E352E352030203120312D2E3730382D2E37
          30374C372E323933203820352E31343620352E383534612E352E352030203120
          31202E3730382D2E3730384C3820372E3239337A222F3E0D0A093C7061746820
          7374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F
          722D7265642C202345443344334229222066696C6C2D72756C653D226576656E
          6F64642220636C69702D72756C653D226576656E6F64642220643D224D31322E
          32303420322E303141322032203020302031203134203476386C2D2E30312E32
          3034613220322030203020312D312E37383620312E3738354C31322031344834
          613220322030203020312D312E39392D312E3739364C32203132563461322032
          20302030203120322D3268387A4D342033613120312030203020302D2E393935
          2E3839374C332034763861312031203020302030203120316838613120312030
          2030203020312D315634613120312030203020302D2E3839382D2E3939354C31
          3220337A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D342E303835203248332E354131
          2E3520312E35203020302030203220332E3576313041312E3520312E35203020
          30203020332E3520313568322E363132762D3148332E35612E352E3520302030
          20312D2E352D2E35762D3130612E352E35203020302031202E352D2E35682E35
          383541312E3520312E3520302030203020352E352034683361312E3520312E35
          20302030203020312E3431352D31682E353835612E352E35203020302031202E
          352E355635683156332E3541312E3520312E352030203020302031302E352032
          682D2E35383541312E3520312E3520302030203020382E352031682D3361312E
          3520312E352030203020302D312E34313520314D3520322E35612E352E352030
          20302031202E352D2E356833612E352E3520302030203120302031682D33612E
          352E352030203020312D2E352D2E354D382E35203641312E3520312E35203020
          302030203720372E35763641312E3520312E3520302030203020382E35203135
          683461312E3520312E3520302030203020312E352D312E35762D3641312E3520
          312E352030203020302031322E3520367A4D3820372E35612E352E3520302030
          2031202E352D2E356834612E352E35203020302031202E352E357636612E352E
          352030203020312D2E352E35682D34612E352E352030203020312D2E352D2E35
          7A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31312E373820312E3038632E32
          332E31362E32392E34372E31342E374C392E323120352E38356C2D2E36312D2E
          393120322E34382D332E3732632E31362D2E32332E34372D2E32392E372D2E31
          346D2D2E39353120392E303132712E3332322D2E30392E3637312D2E30393276
          2E30303163312E333739203020322E3520312E31323220322E3520322E35732D
          312E31323120322E352D322E3520322E3561322E34393720322E343937203020
          3020312D312E3536362D342E3434376C2D312E3933332D322E392D312E393332
          20322E393032632E3536372E3435382E39333120312E3135392E39333120312E
          39343443372031332E38373820352E38373920313520342E3520313541322E35
          303320322E35303320302030203120322031322E3561322E35303320322E3530
          3320302030203120332E3136362D322E3430396C322E3232392D332E3334382D
          332E3331312D342E393636612E352E35203020302031202E3833322D2E353534
          7A4D332031322E356330202E3832372E36373320312E3520312E3520312E3553
          362031332E33323720362031322E3520352E33323720313120342E3520313120
          332031312E36373320332031322E356D3720306330202E3832372E3637332031
          2E3520312E3520312E3573312E352D2E36373320312E352D312E352D2E363733
          2D312E352D312E352D312E352D312E352E3637332D312E3520312E35222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D3420342E3038355631302E3561
          322E3520322E3520302030203020322E33333620322E3439354C362E35203133
          68342E34313441312E3520312E3520302030203120392E352031344836613320
          332030203020312D332D3356352E3561312E3520312E3520302030203120312D
          312E3431354D31312E35203241312E3520312E3520302030203120313320332E
          35763761312E3520312E352030203020312D312E3520312E35682D3541312E35
          20312E3520302030203120352031302E35762D3741312E3520312E3520302030
          203120362E3520327A6D302031682D35612E352E352030203020302D2E352E35
          7637612E352E35203020302030202E352E356835612E352E3520302030203020
          2E352D2E35762D37612E352E352030203020302D2E352D2E35222F3E0D0A3C2F
          7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D3520332E356132203220302030
          20312032203268326132203220302030203120322D32682E3037336132203220
          302030203120312E37383820312E3130356C312E35373420332E313437632E33
          35342E3439322E35363520312E3039352E35363520312E373438613320332030
          203120312D362030762D3148377631613320332030203120312D352E3433362D
          312E3734384C332E313420342E3630354132203220302030203120342E393237
          20332E357A6D2D31203461322032203020312030203020342032203220302030
          203020302D346D38203061322032203020312030203020342032203220302030
          203020302D346D2D3520306832762D3148377A6D2D322E3037332D3361312031
          2030203020302D2E3839352E3535336C2D2E37373120312E35343241322E3938
          3620322E393836203020302031203620372E32363856352E3561312031203020
          3020302D312E3030312D317A4D313120342E35613120312030203020302D3120
          3176312E37363861322E393920322E393920302030203120322E3733382D2E36
          37336C2D2E37372D312E353432613120312030203020302D2E3839352D2E3535
          337A222F3E0D0A093C706174682066696C6C3D2263757272656E74436F6C6F72
          2220643D224D352E30303120342E35613120312030203020312031203176312E
          373639613320332030203020302D2E3835322D2E353420332033203020302030
          2D2E3835342D2E3231344C3420362E35712D2E3337362E3030322D2E37342E30
          39366C2E3737322D312E35343361312031203020302031202E3839352D2E3535
          337A6D362E303733203061312031203020302031202E3839352E3535336C2E37
          3720312E353461332E30303120332E3030312030203020302D322E3630342E35
          3537712D2E30372E3035372D2E3133342E31313856352E356131203120302030
          203120312D317A22206F7061636974793D222E33222F3E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
          2C2023454433443342292220643D224D362E352031612E352E35203020302031
          202E352E3576312E38333741312E3720312E372030203020312038203363312E
          3130352030203220312E3132203220322E3553392E3130352038203820386131
          2E3720312E372030203020312D312E3032342D2E333535412E3439372E343937
          203020302031203620372E35762D36612E352E35203020302031202E352D2E35
          4D382034632D2E33353620302D31202E3435322D3120312E3553372E36343420
          372038203773312D2E34353220312D312E3553382E333536203420382034222F
          3E0D0A093C70617468207374796C653D2266696C6C3A766172282D2D64786473
          2D69636F6E2D636F6C6F722D677265656E2C2023333739453445292220643D22
          4D31332E32373320382E303038632E3432352D2E3032382E38352E3032322031
          2E3235342E3134362E32362E30382E3336342E3337352E32352E3632222F3E0D
          0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D69
          636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D342E
          352036612E352E35203020302031203020314834613220322030203120302030
          203468332E3239334C362E31343620392E3835346C2D2E3036342D2E30373961
          2E352E35203020302031202E3639332D2E3639336C2E3037392E303634203220
          32202E3036342E303739712E30312E3031372E30322E3033372E30312E303136
          2E3031382E303334612E352E35203020302031202E3033312E3039376C2E3030
          332E303231712E3030352E3032332E3030382E303434762E3032384C39203131
          2E356C2D2E3030322E3031762E303332712D2E3030312E3031312D2E3030342E
          3032336C2D2E3030332E30327130202E30312D2E3030332E3032612E352E3520
          30203020312D2E3033322E303938712D2E3030382E3031372D2E3031382E3033
          322D2E30312E3032312D2E30322E30346C2D2E3036342E3037392D322032612E
          352E352030203120312D2E3730382D2E3730374C372E32393320313248346133
          203320302031203120302D367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D726564
          2C2023454433443342292220643D224D31332E31343620322E313436612E352E
          35203020302031202E3730372E3730374C382E37303820386C352E3134372035
          2E313436612E352E352030203020312D2E3730382E3730374C3820382E373038
          6C2D352E31343720352E313437612E352E352030203020312D2E3730372D2E37
          30384C372E323933203820322E31343620322E383533612E352E352030203120
          31202E3730372D2E3730374C3820372E3239337A222F3E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D3320322E35612E352E35203020
          3020312031203076332E3834336C332E3137312D332E31373161342034203020
          30203120352E36353720352E3635366C2D352E30323520352E303236612E352E
          352030203020312D2E3730372D2E3730386C352E3032352D352E303235413320
          3320302031203020372E38373820332E38384C342E373537203748382E35612E
          352E352030203020312030203148332E36612E362E362030203020312D2E362D
          2E367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D707572
          706C652C2023413834364232292220643D224D31322E37353620382E35632E31
          31382030202E32312E3130322E3139332E3232613520352030203020312D2E39
          343120322E32372E3139342E3139342030203020312D2E3239322E3031384C39
          2E383920392E313833612E342E34203020302031202E3238342D2E3638337A4D
          31312E37313620342E393933612E3139332E313933203020302031202E323932
          2E303137632E3438372E3635322E383220312E3432372E393420322E3237612E
          3139342E3139342030203020312D2E3139322E3232682D322E353832612E342E
          342030203020312D2E3238342D2E3638327A222F3E0D0A093C70617468207374
          796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D
          626C75652C2023314538424344292220643D224D31322E37353420382E35632E
          3131392030202E3231312E3130322E3139342E3232613520352030203020312D
          2E39343120322E32372E3139332E3139332030203020312D2E3239332E303138
          4C392E383920392E313833612E342E34203020302031202E3238332D2E363833
          7A22206F7061636974793D222E35222F3E0D0A093C706174682066696C6C3D22
          63757272656E74436F6C6F722220643D224D31312E37313420342E393932612E
          3139332E313933203020302031202E3239332E303138632E3438372E3635322E
          383220312E3432382E39343120322E323731612E3139332E3139332030203020
          312D2E3139342E3232682D322E353832612E342E342030203020312D2E323833
          2D2E3638347A22206F7061636974793D222E33222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D226D342E39393120342E32
          383520312E38323620312E383236612E342E34203020302030202E3638332D2E
          32383356332E323435612E3139332E3139332030203020302D2E32322D2E3139
          34203520352030203020302D322E3237312E3934322E3139332E313933203020
          3020302D2E3031382E323932222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31312E3030382031312E373135612E313933
          2E3139332030203020312D2E3031382E323932203520352030203020312D322E
          32372E39342E3139332E3139332030203020312D2E32322D2E313933762D322E
          353831612E342E34203020302031202E3638332D2E3238337A222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D677265656E2C2023333739453445292220643D224D372E3520
          31322E373534612E3139332E3139332030203020312D2E32322E313934203520
          352030203020312D322E3237312D2E39342E3139332E3139332030203020312D
          2E3031382D2E3239334C362E38313720392E3839612E342E3420302030203120
          2E3638332E3238337A222F3E0D0A093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D372E352031322E373534612E3139332E31393320
          30203020312D2E32322E313934203520352030203020312D322E3237312D2E39
          342E3139332E3139332030203020312D2E3031382D2E3239334C362E38313720
          392E3839612E342E34203020302031202E3638332E3238337A222F3E0D0A093C
          67206F7061636974793D222E33223E0D0A09093C70617468207374796C653D22
          66696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C
          2023314538424344292220643D224D372E352031322E373534612E3139342E31
          39342030203020312D2E32322E313934203520352030203020312D322E323731
          2D2E39342E3139332E3139332030203020312D2E3031382D2E3239334C362E38
          313720392E3839612E342E34203020302031202E3638332E3238337A222F3E0D
          0A09093C70617468207374796C653D2266696C6C3A766172282D2D647864732D
          69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D37
          2E352031322E373534612E3139342E3139342030203020312D2E32322E313934
          203520352030203020312D322E3237312D2E39342E3139332E31393320302030
          20312D2E3031382D2E3239334C362E38313720392E3839612E342E3420302030
          2031202E3638332E3238337A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E38223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C2023333739
          453445292220643D224D352E38323720382E35612E342E34203020302031202E
          3238332E3638336C2D312E38323620312E383235612E3139332E313933203020
          3020312D2E3239322D2E303138203520352030203020312D2E3934312D322E32
          372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A0909
          3C70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F
          6E2D636F6C6F722D677265656E2C2023333739453445292220643D224D352E38
          323720382E35612E342E34203020302031202E3238332E3638336C2D312E3832
          3620312E383235612E3139332E3139332030203020312D2E3239322D2E303138
          203520352030203020312D2E3934312D322E32372E3139332E31393320302030
          2031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E32223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F772C20234445
          36433030292220643D224D352E38323720382E35612E342E3420302030203120
          2E3238332E3638336C2D312E38323620312E383235612E3139332E3139332030
          203020312D2E3239322D2E303138203520352030203020312D2E3934312D322E
          32372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A09
          093C70617468207374796C653D2266696C6C3A766172282D2D647864732D6963
          6F6E2D636F6C6F722D79656C6C6F772C2023444536433030292220643D224D35
          2E38323720382E35612E342E34203020302031202E3238332E3638336C2D312E
          38323620312E383235612E3139332E3139332030203020312D2E3239322D2E30
          3138203520352030203020312D2E3934312D322E32372E3139332E3139332030
          20302031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D79656C6C6F772C2023444536433030292220643D224D332E3234352037
          2E3568322E353832612E342E34203020302030202E3238332D2E3638334C342E
          32383420342E393932612E3139332E3139332030203020302D2E3239322E3031
          38203520352030203020302D2E39343120322E3237312E3139332E3139332030
          20302030202E3139342E323222206F7061636974793D222E37222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D382E3520332E
          32343563302D2E3131382E3130322D2E32312E32322D2E313934613520352030
          2030203120322E32372E393432632E3039352E30372E3130312E3230392E3031
          382E3239324C392E31383320362E3131612E342E342030203020312D2E363833
          2D2E3238337A222F3E0D0A093C706174682066696C6C3D2263757272656E7443
          6F6C6F722220643D224D31342038613620362030203120302D36203676314137
          203720302031203120382031613720372030203020312030203134762D316136
          203620302030203020362D36222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D707572
          706C652C2023413834364232292220643D224D31322E37353620382E35632E31
          31382030202E32312E3130322E3139332E3232613520352030203020312D2E39
          343120322E32372E3139342E3139342030203020312D2E3239322E3031384C39
          2E383920392E313833612E342E34203020302031202E3238342D2E3638337A4D
          31312E37313620342E393933612E3139332E313933203020302031202E323932
          2E303137632E3438372E3635322E383220312E3432372E393420322E3237612E
          3139342E3139342030203020312D2E3139322E3232682D322E353832612E342E
          342030203020312D2E3238342D2E3638327A222F3E0D0A093C70617468207374
          796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D
          626C75652C2023314538424344292220643D224D31322E37353420382E35632E
          3131392030202E3231312E3130322E3139342E3232613520352030203020312D
          2E39343120322E32372E3139332E3139332030203020312D2E3239332E303138
          4C392E383920392E313833612E342E34203020302031202E3238332D2E363833
          7A22206F7061636974793D222E35222F3E0D0A093C706174682066696C6C3D22
          63757272656E74436F6C6F722220643D224D31312E37313420342E393932612E
          3139332E313933203020302031202E3239332E303138632E3438372E3635322E
          383220312E3432382E39343120322E323731612E3139332E3139332030203020
          312D2E3139342E3232682D322E353832612E342E342030203020312D2E323833
          2D2E3638347A22206F7061636974793D222E33222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D226D342E39393120342E32
          383520312E38323620312E383236612E342E34203020302030202E3638332D2E
          32383356332E323435612E3139332E3139332030203020302D2E32322D2E3139
          34203520352030203020302D322E3237312E3934322E3139332E313933203020
          3020302D2E3031382E323932222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31312E3030382031312E373135612E313933
          2E3139332030203020312D2E3031382E323932203520352030203020312D322E
          32372E39342E3139332E3139332030203020312D2E32322D2E313933762D322E
          353831612E342E34203020302031202E3638332D2E3238337A222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D677265656E2C2023333739453445292220643D224D372E3520
          31322E373534612E3139332E3139332030203020312D2E32322E313934203520
          352030203020312D322E3237312D2E39342E3139332E3139332030203020312D
          2E3031382D2E3239334C362E38313720392E3839612E342E3420302030203120
          2E3638332E3238337A222F3E0D0A093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D372E352031322E373534612E3139332E31393320
          30203020312D2E32322E313934203520352030203020312D322E3237312D2E39
          342E3139332E3139332030203020312D2E3031382D2E3239334C362E38313720
          392E3839612E342E34203020302031202E3638332E3238337A222F3E0D0A093C
          67206F7061636974793D222E33223E0D0A09093C70617468207374796C653D22
          66696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C
          2023314538424344292220643D224D372E352031322E373534612E3139342E31
          39342030203020312D2E32322E313934203520352030203020312D322E323731
          2D2E39342E3139332E3139332030203020312D2E3031382D2E3239334C362E38
          313720392E3839612E342E34203020302031202E3638332E3238337A222F3E0D
          0A09093C70617468207374796C653D2266696C6C3A766172282D2D647864732D
          69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D37
          2E352031322E373534612E3139342E3139342030203020312D2E32322E313934
          203520352030203020312D322E3237312D2E39342E3139332E31393320302030
          20312D2E3031382D2E3239334C362E38313720392E3839612E342E3420302030
          2031202E3638332E3238337A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E38223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C2023333739
          453445292220643D224D352E38323720382E35612E342E34203020302031202E
          3238332E3638336C2D312E38323620312E383235612E3139332E313933203020
          3020312D2E3239322D2E303138203520352030203020312D2E3934312D322E32
          372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A0909
          3C70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F
          6E2D636F6C6F722D677265656E2C2023333739453445292220643D224D352E38
          323720382E35612E342E34203020302031202E3238332E3638336C2D312E3832
          3620312E383235612E3139332E3139332030203020312D2E3239322D2E303138
          203520352030203020312D2E3934312D322E32372E3139332E31393320302030
          2031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E32223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F772C20234445
          36433030292220643D224D352E38323720382E35612E342E3420302030203120
          2E3238332E3638336C2D312E38323620312E383235612E3139332E3139332030
          203020312D2E3239322D2E303138203520352030203020312D2E3934312D322E
          32372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A09
          093C70617468207374796C653D2266696C6C3A766172282D2D647864732D6963
          6F6E2D636F6C6F722D79656C6C6F772C2023444536433030292220643D224D35
          2E38323720382E35612E342E34203020302031202E3238332E3638336C2D312E
          38323620312E383235612E3139332E3139332030203020312D2E3239322D2E30
          3138203520352030203020312D2E3934312D322E32372E3139332E3139332030
          20302031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D79656C6C6F772C2023444536433030292220643D224D332E3234352037
          2E3568322E353832612E342E34203020302030202E3238332D2E3638334C342E
          32383420342E393932612E3139332E3139332030203020302D2E3239322E3031
          38203520352030203020302D2E39343120322E3237312E3139332E3139332030
          20302030202E3139342E323222206F7061636974793D222E37222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D382E3520332E
          32343563302D2E3131382E3130322D2E32312E32322D2E313934613520352030
          2030203120322E32372E393432632E3039352E30372E3130312E3230392E3031
          382E3239324C392E31383320362E3131612E342E342030203020312D2E363833
          2D2E3238337A222F3E0D0A093C706174682066696C6C3D2263757272656E7443
          6F6C6F722220643D224D31342038613620362030203120302D36203676314137
          203720302031203120382031613720372030203020312030203134762D316136
          203620302030203020362D36222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D707572
          706C652C2023413834364232292220643D224D31322E37353620382E35632E31
          31382030202E32312E3130322E3139332E3232613520352030203020312D2E39
          343120322E32372E3139342E3139342030203020312D2E3239322E3031384C39
          2E383920392E313833612E342E34203020302031202E3238342D2E3638337A4D
          31312E37313620342E393933612E3139332E313933203020302031202E323932
          2E303137632E3438372E3635322E383220312E3432372E393420322E3237612E
          3139342E3139342030203020312D2E3139322E3232682D322E353832612E342E
          342030203020312D2E3238342D2E3638327A222F3E0D0A093C70617468207374
          796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D
          626C75652C2023314538424344292220643D224D31322E37353420382E35632E
          3131392030202E3231312E3130322E3139342E3232613520352030203020312D
          2E39343120322E32372E3139332E3139332030203020312D2E3239332E303138
          4C392E383920392E313833612E342E34203020302031202E3238332D2E363833
          7A22206F7061636974793D222E35222F3E0D0A093C706174682066696C6C3D22
          63757272656E74436F6C6F722220643D224D31312E37313420342E393932612E
          3139332E313933203020302031202E3239332E303138632E3438372E3635322E
          383220312E3432382E39343120322E323731612E3139332E3139332030203020
          312D2E3139342E3232682D322E353832612E342E342030203020312D2E323833
          2D2E3638347A22206F7061636974793D222E33222F3E0D0A093C706174682073
          74796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F72
          2D79656C6C6F772C2023444536433030292220643D226D342E39393120342E32
          383520312E38323620312E383236612E342E34203020302030202E3638332D2E
          32383356332E323435612E3139332E3139332030203020302D2E32322D2E3139
          34203520352030203020302D322E3237312E3934322E3139332E313933203020
          3020302D2E3031382E323932222F3E0D0A093C70617468207374796C653D2266
          696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C20
          23314538424344292220643D224D31312E3030382031312E373135612E313933
          2E3139332030203020312D2E3031382E323932203520352030203020312D322E
          32372E39342E3139332E3139332030203020312D2E32322D2E313933762D322E
          353831612E342E34203020302031202E3638332D2E3238337A222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D677265656E2C2023333739453445292220643D224D372E3520
          31322E373534612E3139332E3139332030203020312D2E32322E313934203520
          352030203020312D322E3237312D2E39342E3139332E3139332030203020312D
          2E3031382D2E3239334C362E38313720392E3839612E342E3420302030203120
          2E3638332E3238337A222F3E0D0A093C70617468207374796C653D2266696C6C
          3A766172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C202333
          3739453445292220643D224D372E352031322E373534612E3139332E31393320
          30203020312D2E32322E313934203520352030203020312D322E3237312D2E39
          342E3139332E3139332030203020312D2E3031382D2E3239334C362E38313720
          392E3839612E342E34203020302031202E3638332E3238337A222F3E0D0A093C
          67206F7061636974793D222E33223E0D0A09093C70617468207374796C653D22
          66696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75652C
          2023314538424344292220643D224D372E352031322E373534612E3139342E31
          39342030203020312D2E32322E313934203520352030203020312D322E323731
          2D2E39342E3139332E3139332030203020312D2E3031382D2E3239334C362E38
          313720392E3839612E342E34203020302031202E3638332E3238337A222F3E0D
          0A09093C70617468207374796C653D2266696C6C3A766172282D2D647864732D
          69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D37
          2E352031322E373534612E3139342E3139342030203020312D2E32322E313934
          203520352030203020312D322E3237312D2E39342E3139332E31393320302030
          20312D2E3031382D2E3239334C362E38313720392E3839612E342E3420302030
          2031202E3638332E3238337A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E38223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D677265656E2C2023333739
          453445292220643D224D352E38323720382E35612E342E34203020302031202E
          3238332E3638336C2D312E38323620312E383235612E3139332E313933203020
          3020312D2E3239322D2E303138203520352030203020312D2E3934312D322E32
          372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A0909
          3C70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F
          6E2D636F6C6F722D677265656E2C2023333739453445292220643D224D352E38
          323720382E35612E342E34203020302031202E3238332E3638336C2D312E3832
          3620312E383235612E3139332E3139332030203020312D2E3239322D2E303138
          203520352030203020312D2E3934312D322E32372E3139332E31393320302030
          2031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C67206F706163
          6974793D222E32223E0D0A09093C70617468207374796C653D2266696C6C3A76
          6172282D2D647864732D69636F6E2D636F6C6F722D79656C6C6F772C20234445
          36433030292220643D224D352E38323720382E35612E342E3420302030203120
          2E3238332E3638336C2D312E38323620312E383235612E3139332E3139332030
          203020312D2E3239322D2E303138203520352030203020312D2E3934312D322E
          32372E3139332E313933203020302031202E3139342D2E32327A222F3E0D0A09
          093C70617468207374796C653D2266696C6C3A766172282D2D647864732D6963
          6F6E2D636F6C6F722D79656C6C6F772C2023444536433030292220643D224D35
          2E38323720382E35612E342E34203020302031202E3238332E3638336C2D312E
          38323620312E383235612E3139332E3139332030203020312D2E3239322D2E30
          3138203520352030203020312D2E3934312D322E32372E3139332E3139332030
          20302031202E3139342D2E32327A222F3E0D0A093C2F673E0D0A093C70617468
          207374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C
          6F722D79656C6C6F772C2023444536433030292220643D224D332E3234352037
          2E3568322E353832612E342E34203020302030202E3238332D2E3638334C342E
          32383420342E393932612E3139332E3139332030203020302D2E3239322E3031
          38203520352030203020302D2E39343120322E3237312E3139332E3139332030
          20302030202E3139342E323222206F7061636974793D222E37222F3E0D0A093C
          70617468207374796C653D2266696C6C3A766172282D2D647864732D69636F6E
          2D636F6C6F722D7265642C2023454433443342292220643D224D382E3520332E
          32343563302D2E3131382E3130322D2E32312E32322D2E313934613520352030
          2030203120322E32372E393432632E3039352E30372E3130312E3230392E3031
          382E3239324C392E31383320362E3131612E342E342030203020312D2E363833
          2D2E3238337A222F3E0D0A093C706174682066696C6C3D2263757272656E7443
          6F6C6F722220643D224D31342038613620362030203120302D36203676314137
          203720302031203120382031613720372030203020312030203134762D316136
          203620302030203020362D36222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672069643D224C617965725F342220646174612D6E
          616D653D224C6179657220342220786D6C6E733D22687474703A2F2F7777772E
          77332E6F72672F323030302F737667222076696577426F783D22302030203332
          203332223E0D0A093C646566733E0D0A09093C7374796C653E2E426C75657B66
          696C6C3A233131373764373B7D3C2F7374796C653E0D0A093C2F646566733E0D
          0A093C7469746C653E526962626F6E20466F726D3C2F7469746C653E0D0A093C
          7061746820636C6173733D22426C75652220643D224D33312C32483141312C31
          2C302C302C302C302C3356323961312C312C302C302C302C312C314833316131
          2C312C302C302C302C312D31563341312C312C302C302C302C33312C325A4D33
          302C32304832563648313276344833305A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672069643D224C617965725F342220646174612D6E
          616D653D224C6179657220342220786D6C6E733D22687474703A2F2F7777772E
          77332E6F72672F323030302F737667222076696577426F783D22302030203332
          203332223E0D0A093C646566733E0D0A09093C7374796C653E2E426C75657B66
          696C6C3A233131373764373B7D2E636C732D317B6F7061636974793A302E3235
          3B7D2E426C61636B7B66696C6C3A233732373237323B7D3C2F7374796C653E0D
          0A093C2F646566733E0D0A093C7469746C653E41707020427574746F6E3C2F74
          69746C653E0D0A093C7265637420636C6173733D22426C75652220783D223222
          20793D2232222077696474683D22313222206865696768743D2236222F3E0D0A
          093C6720636C6173733D22636C732D31223E0D0A09093C706F6C79676F6E2063
          6C6173733D22426C61636B2220706F696E74733D223138203420313820313220
          32203132203220323820333220323820333220342031382034222F3E0D0A093C
          2F673E0D0A093C7061746820636C6173733D22426C61636B2220643D224D3138
          2C31325634483332563248313761312C312C302C302C302D312C317637483161
          312C312C302C302C302D312C3156323961312C312C302C302C302C312C314833
          3256323848325631325A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D31312E35203131612E352E35203020
          302031202E352E357632612E352E352030203020312D312030762D32612E352E
          35203020302031202E352D2E354D31312E352039612E352E3520302031203120
          302031202E352E3520302030203120302D31222F3E0D0A093C70617468207374
          796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D
          626C75652C202331453842434429222066696C6C2D72756C653D226576656E6F
          64642220636C69702D72756C653D226576656E6F64642220643D224D31312E35
          203761342E3520342E352030203120312030203920342E3520342E3520302030
          203120302D396D30203161332E3520332E352030203120302030203720332E35
          20332E3520302030203020302D37222F3E0D0A093C70617468207374796C653D
          2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D79656C6C
          6F772C202344453643303029222066696C6C2D72756C653D226576656E6F6464
          2220636C69702D72756C653D226576656E6F64642220643D224D31302E323034
          20312E3031413220322030203020312031322033762E3237632E3539372E3334
          352031202E3939203120312E373376312E32303861352E3520352E3520302030
          20302D312D2E3138355635613120312030203020302D312D3148342E356C2D2E
          3135332D2E30303841312E3520312E35203020302031203420332E3931325631
          31613120312030203020302031203168312E303233712E3034372E3531372E31
          383520314835613220322030203020312D312E39392D312E3739364C33203131
          56322E3541312E3520312E3520302030203120342E3520314831307A4D342E35
          2032612E352E3520302030203020302031483131613120312030203020302D2E
          3839382D2E3939354C313020327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D382E34393920372E35612E352E3520
          30203120302D3120307633612E352E35203020302030203120307A6D2E32352D
          322E323439612E3734392E3734392030203120312D312E3439392030202E3734
          392E37343920302030203120312E34393820304D382031613720372030203120
          30203020313441372037203020302030203820314D3220386136203620302031
          203120313220304136203620302030203120322038222F3E0D0A3C2F7376673E
          0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D392E352034683161332E352033
          2E35203020302031202E31393420362E3939356C2D2E3139322E3030352D3120
          2E303035612E352E352030203020312D2E3039342D2E3939326C2E30392D2E30
          30384C31302E3520313061322E3520322E35203020302030202E3136342D342E
          3939354C31302E352035682D31612E352E352030203020312D2E30392D2E3939
          327A68317A6D2D3420306831612E352E35203020302031202E30392E3939324C
          362E352035682D3161322E3520322E352030203020302D2E31363420342E3939
          354C352E352031306831612E352E35203020302031202E30392E3939324C362E
          35203131682D3161332E3520332E352030203020312D2E3139322D362E393935
          7A68317A6D3020332035202E303032612E352E35203020302031202E30392E39
          39326C2D2E30392E3030384C352E352038612E352E352030203020312D2E3039
          2D2E3939327A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
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
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D31302E35203441312E3520312E3520
          302030203120313220352E3576312E3330366C2D312D2E39323156352E35612E
          352E352030203020302D2E352D2E35682D35612E352E352030203020302D2E35
          2E357635612E352E35203020302030202E352E354837763148352E356C2D2E31
          35332D2E30303841312E3520312E3520302030203120342031302E35762D3541
          312E3520312E3520302030203120352E3520347A222F3E0D0A093C7061746820
          7374796C653D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F
          722D626C75652C2023314538424344292220643D224D31302E352035612E352E
          35203020302031202E352E35762E3338356C2D2E33332D2E33303443392E3237
          3820342E32393820362E39383820352E3237203720372E31393976332E384835
          2E35612E352E352030203020312D2E352D2E35762D35612E352E352030203020
          31202E352D2E357A22206F7061636974793D222E33222F3E0D0A093C70617468
          2066696C6C3D2263757272656E74436F6C6F722220643D224D322E3520313061
          2E352E35203020302031202E352E35762E3930336C2E3031352E323334712E30
          31352E3131362E3034332E32336C2E30312E30342E3033362E313232712E3032
          322E30362E3034382E3131396C2E3036322E3132712E3130332E3137392E3235
          2E33326C2E3035342E303532712E3134362E31342E33332E32336C2E3133342E
          303537712E3230382E3037322E34332E30373348352E356C2E312E3031612E35
          2E352030203020312030202E39386C2D2E312E303148342E34313261322E3320
          322E332030203020312D2E3736322D2E31336C2D2E32342D2E3161322E332032
          2E332030203020312D2E3435312D2E32396C2D2E3133342D2E3131392D2E3035
          332D2E303561322E3420322E342030203020312D2E3432352D2E3534346C2D2E
          3130362D2E323037613220322030203020312D2E30382D2E3230326C2D2E3036
          332D2E3230382D2E30312D2E3034613320332030203020312D2E3038322D2E35
          32384C322031312E3430335631302E35612E352E35203020302031202E352D2E
          354D322E352037612E352E35203020302031202E352E357631612E352E352030
          203020312D312030762D31612E352E35203020302031202E352D2E354D31332E
          352037612E352E35203020302031202E352E357631612E352E35203020302031
          2D2E30322E31334C313320372E37323956372E35612E352E3520302030203120
          2E352D2E354D352E352032612E352E352030203020312030203148342E343236
          712D2E323320302D2E3434352E3037386C2D2E3133382E30362D2E3136352E30
          39382D2E3031322E30303861312E3520312E352030203020302D2E3435332E35
          30336C2D2E3032362E303436632D2E3132322E32322D2E3138372E34372D2E31
          38372E37323256352E356C2D2E30312E31612E352E352030203020312D2E3938
          20304C3220352E35762D2E39383563302D2E3432332E3130372D2E3833382E33
          31332D312E3230376C2E3032352D2E3034362E3037332D2E313233632E313737
          2D2E32382E3430382D2E3532342E36382D2E3731346C2E3031332D2E3030382E
          3134332D2E30393361322032203020302031202E3134392D2E30386C2E31322D
          2E303537632E3238372D2E3132342E3539372D2E3138372E39312D2E3138377A
          4D31312E3538382032632E32362030202E3531382E3034352E3736322E31336C
          2E32342E31712E3234332E3131392E3435312E32396C2E3133342E3131392E30
          35322E3035712E3235332E3234332E3432362E3534346C2E3130362E32303671
          2E3034352E312E30382E3230336C2E3036332E3230382E30312E3034712E3036
          362E32362E3038322E3532386C2E3030362E31373956352E35612E352E352030
          203020312D312030762D2E3930336C2D2E3031352D2E32333461322032203020
          3020302D2E3034332D2E32336C2D2E30312D2E30342D2E3033372D2E31323271
          2D2E30322D2E30362D2E3034372D2E3131386C2D2E3036322D2E31323261312E
          3420312E342030203020302D2E32352D2E33326C2D2E3035342D2E303561312E
          3320312E332030203020302D2E33332D2E3233316C2D2E3133342D2E30353761
          312E3320312E332030203020302D2E34332D2E3037334831302E356C2D2E312D
          2E3031612E352E3520302030203120302D2E39386C2E312D2E30317A4D382E35
          2032612E352E3520302030203120302031682D31612E352E3520302030203120
          302D317A4D3820372E313934632D2E3030362D312E30343120312E3233332D31
          2E35373820312E3939322D2E3837386C352E36323220352E313835632E383332
          2E3736372E323220322E3133392D2E38393720322E3035326C2D322E3831352D
          2E3232312D312E373820322E3231632D2E3638382E3838322D322E3131352E34
          30372D322E3132322D2E3732317A6D312E3331342D2E313432412E3138372E31
          3837203020302030203920372E31383876372E363237632E3030312E31372E32
          32332E3235332E3333352E31316C312E3833322D322E3237352E30372D2E3038
          612E38352E3835203020302031202E3535352D2E3234346C2E3130362E303032
          20322E3839372E323237612E3138342E313834203020302030202E3134332D2E
          3331387A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F72222066696C6C2D72756C653D226576656E6F64
          642220636C69702D72756C653D226576656E6F64642220643D224D3820326133
          2033203020302031203320336330202E3439322D2E3132312E3935352D2E3333
          3120312E33363441342034203020302031203920313448356131203120302030
          20312D312D3156336131203120302030203120312D317A4D3620313268336132
          203220302031203020302D3448367A6D302D3668326131203120302030203020
          302D3248367A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31322E352032612E352E352030
          2030203120302031682D322E3436324C362E303420313348382E35612E352E35
          20302030203120302031682D36612E352E3520302030203120302D3168322E34
          36324C382E3936203348362E35612E352E3520302030203120302D317A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D31312E35203133612E352E3520
          302030203120302031682D38612E352E3520302030203120302D317A4D31302E
          352032612E352E35203020302031202E352E35763561332E3520332E35203020
          3120312D372030762D35612E352E3520302030203120312030763561322E3520
          322E3520302030203020352030762D35612E352E35203020302031202E352D2E
          35222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D313120332E35612E352E352030
          203020302D2E352D2E35682D39612E352E35203020302030203020316839612E
          352E35203020302030202E352D2E356D342034612E352E352030203020302D2E
          352D2E35682D3133612E352E3520302030203020302031683133612E352E3520
          3020302030202E352D2E356D2D382034612E352E352030203020302D2E352D2E
          35682D35612E352E35203020302030203020316835612E352E35203020302030
          202E352D2E35222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D313320332E35612E352E352030
          203020302D2E352D2E35682D39612E352E35203020302030203020316839612E
          352E35203020302030202E352D2E356D322034612E352E352030203020302D2E
          352D2E35682D3133612E352E3520302030203020302031683133612E352E3520
          3020302030202E352D2E356D2D342034612E352E352030203020302D2E352D2E
          35682D35612E352E35203020302030203020316835612E352E35203020302030
          202E352D2E35222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D3520332E35612E352E35203020
          302031202E352D2E356839612E352E3520302030203120302031682D39612E35
          2E352030203020312D2E352D2E356D2D342034612E352E35203020302031202E
          352D2E35683133612E352E3520302030203120302031682D3133612E352E3520
          30203020312D2E352D2E356D382034612E352E35203020302031202E352D2E35
          6835612E352E3520302030203120302031682D35612E352E352030203020312D
          2E352D2E35222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D224D362E352032612E352E35203020
          302030203020316838612E352E3520302030203020302D317A4D3620372E3561
          2E352E35203020302031202E352D2E356838612E352E35203020302031203020
          31682D38612E352E352030203020312D2E352D2E356D2E3520342E35612E352E
          35203020312030203020316838612E352E3520302030203020302D317A222F3E
          0D0A093C70617468207374796C653D2266696C6C3A766172282D2D647864732D
          69636F6E2D636F6C6F722D626C75652C2023314538424344292220643D224D33
          2031322E35612E352E352030203120302D312030202E352E3520302030203020
          3120306D302D35612E352E352030203120302D312030202E352E352030203020
          30203120306D302D35612E352E352030203120302D312030202E352E35203020
          302030203120306D3120313061312E3520312E352030203120312D3320302031
          2E3520312E35203020302031203320306D302D3561312E3520312E3520302031
          20312D33203020312E3520312E35203020302031203320306D302D3561312E35
          20312E352030203120312D33203020312E3520312E3520302030203120332030
          222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C706174682066696C6C3D
          2263757272656E74436F6C6F722220643D226D382E30343320332E3030332E30
          34322E303035712E30322E3030332E30342E30312E3032312E3030342E303432
          2E3031316C2E3031352E303035712E3031312E3030352E3032332E3031326C2E
          3034322E30322E3033342E3032332E3033352E303235612E352E352030203020
          31202E3038382E3039346C2E3031362E30322E3030352E303131613120312030
          20302031202E30332E3035396C2E30312E303220332E352039202E3032382E30
          3938612E352E352030203020312D2E3931332E3335356C2D2E3034362D2E3039
          4C392E39393120313048362E30316C2D312E30343320322E363832612E352E35
          2030203020312D2E3933322D2E3336346C332E3439322D382E393832612E352E
          35203020302031202E3034382D2E3039376C2E3030362D2E30312E3031352D2E
          303231612E352E35203020302031202E3139372D2E3136326C2E3032362D2E30
          31322E3031342D2E303035712E3032312D2E3030372E3034322D2E3031312E30
          322D2E3030372E30342D2E30312E3032312D2E3030342E3034322D2E3030354C
          372E3938392033682E3032327A4D362E333937203968332E3230364C3820342E
          3837397A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D31322E353120322E303031682E3033
          32712E30322E3030332E30342E303037682E3030326C2E3032332E303034712E
          3030382030202E3031372E3030332E3032322E3030362E3034332E3031356C2E
          3030382E3030322E3032312E3030382E3030382E3030332E3033332E30313871
          2E30322E3030382E3033382E30326C2E3030352E3030352E3030352E3030322E
          3036382E30353820322032202E3036352E303738612E3530312E353031203020
          3020312D2E3639332E3639336C2D2E3037392D2E3036344C313320332E373036
          76382E3538376C312E3134362D312E3134362E3037392D2E303635612E353031
          2E353031203020302031202E3639332E3639336C2D2E3036352E3037392D3220
          322D2E3036382E303537682D2E3030336C2D2E3030362E303035762E30303271
          2D2E30322E3031312D2E3033392E30326C2D2E3033332E303138682D2E303033
          6C2D2E3034392E303138712D2E3031342E3030362D2E3032382E30316C2D2E30
          312E303031712D2E3032332E3030352D2E3034342E3030372D2E3031342E3030
          342D2E3032382E303036682D2E3032324C31322E352031346C2D2E30322D2E30
          3032682D2E303233712D2E3031352D2E3030312D2E30332D2E3030366C2D2E30
          342D2E303037682D2E3031326C2D2E3034342D2E3031362D2E30332D2E303131
          2D2E3030342D2E3030312D2E3034342D2E303233712D2E3031352D2E3030382D
          2E3032382D2E3031366C2D2E3030322D2E303032712D2E3030342D2E3030322D
          2E3030362D2E303035682D2E3030326C2D2E3036392D2E3035372D322D32612E
          352E35203020302031202E3730372D2E3730374C31322031322E32393356332E
          3730366C2D312E31343720312E313437612E352E352030203020312D2E373037
          2D2E3730376C322D32202E3036392D2E3035382E3030352D2E3030322E303035
          2D2E303035712E3031332D2E3030382E3032382D2E3031366C2E3034342D2E30
          32332E3032382D2E3031712E3032352D2E30312E30352D2E3031372E3032312D
          2E3030352E3034322D2E3030372E30322D2E3030342E30342D2E303037682E30
          33334C31322E3520327A222F3E0D0A093C706174682066696C6C3D2263757272
          656E74436F6C6F722220643D226D352E30333820332E3030322E3034382E3030
          352E3033392E3031712E3032312E3030352E3034312E3031326C2E3031362E30
          3035712E3031342E3030362E3032372E303133612E352E35203020302031202E
          3139352E31366C2E3031362E3032312E3030372E303134712E3031332E303233
          2E3032342E3034396C2E3031352E30323720332E352039202E3032372E303938
          612E352E352030203020312D2E3931332E3335356C2D2E3034362D2E30394C36
          2E39393120313048332E30314C312E3936362031322E3638612E352E35203020
          3020312D2E3933322D2E3336336C332E352D39202E3030392D2E303139613120
          31203020302031202E30332D2E3035376C2E3030372D2E3031342E3031352D2E
          30322E3033382D2E3034372E3033362D2E3033362E3031352D2E303132712E30
          31342D2E3031332E3033322D2E30323461312031203020302031202E3037312D
          2E3034712E3031352D2E3030392E3033312D2E3031356C2E3031352D2E303035
          712E30322D2E3030372E3034312D2E3031326C2E30342D2E30312E3034372D2E
          3030354C342E3938392033682E3032327A4D332E333938203968332E3230354C
          3520342E3837387A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E57686974657B66696C
          6C3A234646464646463B7D262331333B262331303B2623393B2E7374307B6F70
          61636974793A302E363B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
          D0BED0B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D342C3330563268323476323848347A222F3E0D0A09093C7061746820
          636C6173733D2257686974652220643D224D362C323856346832307632344836
          7A222F3E0D0A09093C7061746820636C6173733D22426C75652220643D224D38
          2C32326832762D3248385632327A204D382C31386832762D3248385631387A20
          4D382C31346832762D3248385631347A204D382C3876326832563848387A222F
          3E0D0A093C2F673E0D0A3C672069643D22D0A1D0BBD0BED0B95F325F315F2220
          636C6173733D22737430223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D31322C3232683132762D324831325632327A204D31322C31
          38683132762D324831325631387A204D31322C3134683132762D324831325631
          347A204D31322C38763268313256384831327A222F3E0D0A093C2F673E0D0A3C
          2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667222076657273696F6E3D22312E3122207669
          6577426F783D22302030203136203136223E0D0A093C70617468207374796C65
          3D2266696C6C3A766172282D2D647864732D69636F6E2D636F6C6F722D626C75
          652C2023314538424344292220643D224D382E35203141362E3520362E352030
          2030203120313520372E35633020312E3933322D2E38353820342E3231362D33
          2E3220362E3568322E37612E352E3520302030203120302031682D34712D2E30
          31322D2E3030322D2E3032332D2E303033612E352E352030203020312D2E3237
          322D2E3039356C2D2E3033382D2E3033322D2E3033362D2E3033352D2E303135
          2D2E303135712D2E3030372D2E3030382D2E3031322D2E303138612E352E3520
          30203020312D2E3039372D2E3233326C2D2E3030352D2E3034334C3130203134
          2E356C2E3030322D2E303233612E352E35203020302031202E3039352D2E3237
          326C2E3033322D2E3033382E3033352D2E3033362E3031362D2E303135433133
          2E3039332031312E36383820313420392E333220313420372E3541352E352035
          2E3520302030203020382E352032682D3141352E3520352E3520302030203020
          3220372E35633020312E3730352E37393720332E38393420332E32393720362E
          3136316C2E3532332E3435352E3031342E3031342E3033362E3033372E30322E
          3032312E30312E303134712E3031342E30322E3032362E3034612E34392E3439
          2030203020312D2E3032392E3535386C2D2E3031332E30322D2E3031352E3031
          352D2E3033332E303332612E352E352030203020312D2E3037352E3035386C2D
          2E3033382E30322D2E3034312E3031392D2E3034382E303135712D2E30322E30
          30372D2E30342E303131612E352E352030203020312D2E3039312E3030394C35
          2E35203135682D34612E352E3520302030203120302D3168322E37303343312E
          3836312031312E373135203120392E343332203120372E3541362E3520362E35
          20302030203120372E3520317A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000028744558745469746C65004C65747465723B652D6D6169
          6C3B656D61696C3B6D61696C3B54656D706C6174653B9BE1250C000000744944
          4154785EADCFCB09C0201444511B4C4B82C19E928D8B57D94441E1C9E03F810B
          2E320735008E3A07AEFB0D316C140A805882DC24E0F2FFD08025A43FB615D040
          CCA81A60C478EF312A038C14A0F36980DFA8011149D1590134C61AC0632C3D81
          C67C034A034F196D0140B3FF000EF3C0A80FD2FBBDBA0743E2C2000000004945
          4E44AE426082}
      end>
  end
end
