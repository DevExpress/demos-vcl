inherited frmRibbonRichEditForm: TfrmRibbonRichEditForm
  Caption = 'Rich Edit Control Demo'
  ClientHeight = 606
  ClientWidth = 939
  OldCreateOrder = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object RichEditControl: TdxRichEditControl [0]
    Left = 0
    Top = 159
    Width = 939
    Height = 424
    Align = alClient
    TabOrder = 7
    OnActiveViewChanged = recRichEditControlActiveViewChanged
    OnDocumentClosing = recRichEditControlDocumentClosing
    OnHyperlinkClick = recRichEditControlHyperlinkClick
    OnSelectionChanged = recRichEditControlSelectionChanged
    OnZoomChanged = recRichEditControlZoomChanged
  end
  inherited Ribbon: TdxRibbon
    Width = 939
    Height = 159
    ApplicationButton.ScreenTip = stAppMenu
    PopupMenuItems = [rpmiItems, rpmiQATPosition, rpmiQATAddRemoveItem, rpmiMinimizeRibbon, rpmiCustomizeRibbon, rpmiCustomizeQAT]
    QuickAccessToolbar.Toolbar = dxbQAT
    Contexts = <
      item
        Caption = 'Selection Tools'
        Color = 13468115
      end
      item
        Caption = 'Header & Footer Tools'
        Color = clGreen
      end
      item
        Caption = 'Table Tools'
        Color = clYellow
      end
      item
        Caption = 'Picture Tools'
        Color = clFuchsia
      end
      item
        Caption = 'Application Options'
        Color = clMaroon
      end>
    ExplicitWidth = 575
    ExplicitHeight = 159
    object rtFile: TdxRibbonTab
      Caption = 'File'
      Groups = <
        item
          ToolbarName = 'bmbFileCommon'
        end
        item
          ToolbarName = 'bmbPrint'
        end>
      Index = 0
    end
    object tabHome: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'bmbHomeClipboard'
        end
        item
          ToolbarName = 'bmbHomeFont'
        end
        item
          ToolbarName = 'bmbHomeParagraph'
        end
        item
          ToolbarName = 'bmbHomeEditing'
        end>
      KeyTip = 'H'
      Index = 1
    end
    object rtSelection: TdxRibbonTab
      Caption = 'Selection'
      Groups = <
        item
          ToolbarName = 'dxbSelectionTools'
        end>
      Index = 2
      ContextIndex = 0
    end
    object rtInsert: TdxRibbonTab
      Caption = 'Insert'
      Groups = <
        item
          ToolbarName = 'bmbInsertPages'
        end
        item
          ToolbarName = 'bmbInsertTables'
        end
        item
          ToolbarName = 'bmbInserIllustrations'
        end
        item
          ToolbarName = 'bmbInsertLinks'
        end
        item
          ToolbarName = 'bmbInsertHeaderAndFooter'
        end
        item
          ToolbarName = 'bmbInsertText'
        end
        item
          ToolbarName = 'bmbInsertSymbols'
        end>
      Index = 3
    end
    object rtPageLayout: TdxRibbonTab
      Caption = 'Page Layout'
      Groups = <
        item
          ToolbarName = 'bmbPageLayoutPageSetup'
        end
        item
          ToolbarName = 'bmbPageLayoutPageBackground'
        end>
      Index = 4
    end
    object rtReferences: TdxRibbonTab
      Caption = 'References'
      Groups = <
        item
          ToolbarName = 'bmbReferencesTableOfContents'
        end
        item
          ToolbarName = 'bmbReferencesCaptions'
        end>
      Visible = False
      Index = 5
    end
    object rtMailings: TdxRibbonTab
      Caption = 'Mail Merge'
      Groups = <
        item
          ToolbarName = 'bmbMailingsMailMerge'
        end>
      Index = 6
    end
    object rtReview: TdxRibbonTab
      Caption = 'Review'
      Groups = <
        item
          ToolbarName = 'bmbReviewProofing'
        end
        item
          ToolbarName = 'bmbReviewProtect'
        end>
      Visible = False
      Index = 7
    end
    object rtView: TdxRibbonTab
      Caption = 'View'
      Groups = <
        item
          ToolbarName = 'bmbViewDocumentViews'
        end
        item
          ToolbarName = 'bmbViewShow'
        end
        item
          ToolbarName = 'bmbViewZoom'
        end>
      Index = 8
    end
    object rtHeaderAndFooterTools: TdxRibbonTab
      Caption = 'Design'
      Groups = <
        item
          ToolbarName = 'bmbHFTNavigation'
        end
        item
          ToolbarName = 'bmbHFTOptions'
        end
        item
          ToolbarName = 'bmbHFTClose'
        end>
      Index = 9
      ContextIndex = 1
    end
    object rtTableToolsLayout: TdxRibbonTab
      Caption = 'Layout'
      Groups = <
        item
          ToolbarName = 'bmbTableToolsTable'
        end
        item
          ToolbarName = 'bmbTableToolsRowsAndColumns'
        end
        item
          ToolbarName = 'bmbTableToolsMerge'
        end
        item
          ToolbarName = 'bmbTableToolsCellSize'
        end
        item
          ToolbarName = 'bmbTableToolsAlignment'
        end>
      Index = 10
      ContextIndex = 2
    end
    object rtTableToolsDesign: TdxRibbonTab
      Caption = 'Design'
      Groups = <
        item
          ToolbarName = 'bmbTableToolsTableStyleOptions'
        end
        item
          ToolbarName = 'bmbTableToolsTableStyles'
        end
        item
          ToolbarName = 'bmbTableToolsBordersShadings'
        end>
      Index = 11
      ContextIndex = 2
    end
    object rtPictureTools: TdxRibbonTab
      Caption = 'Format'
      Groups = <
        item
          ToolbarName = 'bmbPictureToolsShapeStyles'
        end
        item
          ToolbarName = 'bmbPictureToolsArrange'
        end>
      Index = 12
      ContextIndex = 3
    end
    object rtHelp: TdxRibbonTab
      Caption = 'Help'
      Groups = <
        item
          ToolbarName = 'dxbHelp'
        end
        item
          ToolbarName = 'dxbLinks'
        end>
      KeyTip = 'E'
      Visible = False
      Index = 13
      ContextIndex = 4
    end
  end
  inherited rsbStatusBar: TdxRibbonStatusBar
    Top = 583
    Width = 939
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'dxbStatusBarToolbar1'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'dxbStatusBarToolbar2'
        Bevel = dxpbRaised
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'dxbStatusBarToolbar3'
        Bevel = dxpbRaised
      end
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.KeyboardStates = [dxksCapsLock, dxksNumLock, dxksScrollLock]
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Bevel = dxpbRaised
      end>
    ExplicitTop = 32000
    ExplicitWidth = 972
  end
  object tbZoom: TdxZoomTrackBar [3]
    Left = 397
    Top = 661
    Properties.TickMarks = cxtmBoth
    Properties.TickSize = 1
    Properties.OnChange = tbZoomPropertiesChange
    Style.TransparentBorder = False
    TabOrder = 1
    Visible = False
    Height = 20
    Width = 148
  end
  inherited bmBarManager: TdxBarManager
    Left = 184
    Top = 208
    DockControlHeights = (
      0
      0
      0
      0)
    object dxbQAT: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbOpen'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbUndo'
        end
        item
          Visible = True
          ItemName = 'bbRedo'
        end
        item
          Visible = True
          ItemName = 'bbPrintPreview'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHomeClipboard: TdxBar
      Caption = 'Clipboard'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 64
      FloatClientHeight = 216
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000B97B49FFB77946FFB677
        44FFB47542FFB37340FFB1713EFFB1703DFFAF6D3AFFAE6D39FF000000050000
        000C0000001100000014000000170000001A0000001DBD814EFFFFF4E9FFFEF3
        E8FFFEF3E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB1713DFF03263F7B054B
        7BE505548BFF045189FF054F87FF044E85FF044D84FFC18655FFFFF5EBFFCB8D
        5EFFC88B5BFFC58858FFC38555FFC08352FFFDF0E2FFB57642FF065080E3198D
        BDFF17B8E6FF15B2E2FF13AEDEFF12AADBFF1297C4FFC58C5CFFFFF7EDFFFFF6
        ECFFFFF6ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB87A48FF065F96FF37CA
        EFFF1DBDE9FF1AB8E6FF16B4E2FF14B0DFFF139FCDFFCB9262FFFFF7EFFFE0A4
        77FFDDA274FFDA9F71FFD89C6EFFD5996BFFFAEADBFFBD7F4DFF07649BFF48D1
        F3FF23C2EDFF1FBEEAFF1DBAE7FF1AB7E5FF18A9D5FFCF9869FFFFF9F1FFFFF8
        F1FFFFF8F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC08553FF08699FFF59D8
        F6FF29C9F1FF27C4EEFF23C1ECFF22BFEAFF1EB4DFFFD39E70FFFFFAF4FFFFF9
        F2FFFEF5EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC58B5AFF096FA5FF72E0
        F9FF3AD0F5FF34CDF2FF2EC9F0FF29C5EEFF26BDE6FFD7A477FFFFFAF5FFFEF7
        EFFFFCF2EAFFFAEDE2FFF7E9DAFFCE9667FFCB9363FFC99160FF0A75ABFF8DE8
        FCFF4ED9F9FF48D6F7FF41D2F5FF39CFF3FF30C9EEFFDBAA7EFFFEF8F1FFFCF3
        EBFFFAEEE4FFF7E9DBFFF5E4D4FFD19C6EFFFFF9F3FFD5D0CAD50B7BB1FFA6EE
        FDFF63E0FCFF5EDDFBFF55DAF9FF4CD7F8FF43CFF2FFDFB085FFDEAE81FFDCAC
        7FFFDAA97DFFD9A77AFFD7A476FFD6A274FFD5D1CCD5171716170C83B6FFBBF3
        FEFF7BE7FEFF74E5FDFF69DCF5FF59C2DDFF4FB3D0FF48B6D3FF40BDDDFF38C4
        E6FF34CBEEFF085C92FF000000150000000000000000000000000E8ABDFFCFF7
        FFFF91ECFFFF77C8DBFF61A7BCFF5BA3B8FF58AAC2FF53B4CEFF4CBCD9FF43C5
        E4FF3BCDEFFF096196FF000000110000000000000000000000001091C3FFDFFA
        FFFFC0854AFFBD8045FFBB7C3FFFB8783AFFB57535FFB37132FFB16F2FFFAF6C
        2DFF43D1F1FF09669CFF0000000E0000000000000000000000001199CBFFEAFB
        FFFFE9C08FFFE6B986FFE2B37DFFDFAD74FFDCA76CFFD9A166FFD69D5FFFB979
        3CFF4DDFFEFF086CA1FF0000000B000000000000000000000000118DB8E083CD
        E7FFEEFCFFFFEAFAFDFFF0D5AFFFEFCB9DFFECC494FFE5C193FFA8EFFDFF94ED
        FEFF45AFD5FF096593E300000007000000000000000000000000094A5F701190
        BBE013A1D1FF129BCDFF7BBBC8FFFCE5C1FFF0DBB8FF7DA3A3FF0E85B9FF0D81
        B5FF0B6E9BE106364C7500000003000000000000000000000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPaste'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCut'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCopy'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbSelectAll'
        end>
      KeyTip = 'FO'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHomeEditing: TdxBar
      Caption = 'Editing'
      CaptionButtons = <>
      DockedLeft = 560
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 57
      FloatClientHeight = 216
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000020000000B0000001A0000002000000015000000050000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000C0E0C096336271DDE412D1FF60B0A09B6010101290000
        0009000000010000000000000000000000000000000000000000000000000000
        0000000000040808073F6C5A4EF2F2CDAAFFFFD1A3FF533C2DFF101010D30303
        03470000000E0000000100000000000000000000000000000000000000050000
        000B000000121616158CD5C3B5FFFFE9D2FFFFE5C9FF8F735EFF414344FF1D1E
        1EE90505056200000014000000030000000000000000000000000808083F1A16
        14C60F0D0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA19285FF8C8C8CFF7878
        78FF282828F8070707880000001A000000040000000000000000343332D0E7D7
        C7FF675547FF2F2F2FFFBAB8B7FFFFFFFDFFE6DFD9FFBCB8B5FFCBCBCBFFB5B5
        B5FF8C8C8CFF1D1D1DFF121212A90101012100000007000000017B7C7BF8FFFF
        FFFFA89C93FF8A8A8AFF656565FF8A8989FFBABABAFFE1E3E3FFE7E7E7FFE1E1
        E1FFBCBCBCFF6D6D6DFF686868FF222222C6040404350000000B747474F0E3E4
        E4FFD0D0D0FFE0E0E0FFC3C3C3FF6A6A6AFF646464FFA8A8A8FFE0E0E0FFF0F0
        F0FFD4D4D4FFD1D1D1FFC4C4C4FF9C9C9CFF464646E20E0E0E523C3C3C656F6F
        6FDABCBCBCFFDCDCDCFFF0F0F0FFC4C4C4FF787878FF585858FF707070FFAEAE
        AEFFE0E0E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E5000000000303
        0305292929494D4D4D86878787D7BCBCBCFBD9D9D9FFC4C4C4FF9B9B9BFF9E9E
        9EFF9E9E9EFFBFBFBFFFE9E9E9FFF3F3F3FFF3F3F3FFA9A9A9FB000000000000
        00000000000000000000010101012424243D464646798D8D8DCCB7B7B7F4D4D4
        D4FFCCCCCCFFA8A8A8FF8E8E8EEDC4C4C4F9DADADAFF808080BD000000000000
        00000000000000000000000000000000000000000000020202031C1C1C294242
        42717D7D7DBB969696DC2727273D25252539474747721414141C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbFind'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbReplace'
        end
        item
          Visible = True
          ItemName = 'bbUndo'
        end
        item
          Visible = True
          ItemName = 'bbRedo'
        end>
      KeyTip = 'FE'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHomeParagraph: TdxBar
      Caption = 'Paragraph'
      CaptionButtons = <
        item
          KeyTip = 'PG'
          ScreenTip = stParagraphDialog
          OnClick = bmbHomeParagraphClick
        end>
      DockedLeft = 407
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 108
      FloatClientHeight = 562
      Glyph.Data = {
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
        00002D2824FF2A2622FF282420FF26211EFF241F1BFF211D19FF1F1B17FF1D19
        15FF1B1814FF1A1513FF181411FF161310FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000332E2AFF302B28FF2E2925FF2B2723FF292420FF2722
        1EFF24201CFF221E1AFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000433D39FF403B37FF3E3935FF3B3632FF393430FF36312EFF342F2BFF312C
        28FF2F2A26FF2C2723FF2A2621FF27231FFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000048433FFF46403CFF443E3AFF413C38FF3E3A36FF3C37
        33FF393431FF37322EFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000056514DFF544F4BFF524D49FF504B47FF4E4844FF4B4642FF494440FF4741
        3EFF443F3BFF423C38FF3F3A36FF3D3834FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          ViewLevels = []
          Visible = True
          ItemName = 'bbBullets'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbNumbering'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbMultiLevelList'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbDecrementIndent'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbIncrementIndent'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbShowWhitespace'
        end
        item
          ButtonGroup = bgpStart
          Visible = True
          ItemName = 'bbAlignLeft'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignCenter'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignRight'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignJustify'
        end
        item
          ButtonGroup = bgpMember
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bsiLineSpacing'
        end>
      KeyTip = 'PG'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHomeFont: TdxBar
      Caption = 'Font'
      CaptionButtons = <
        item
          ScreenTip = stFontDialog
          OnClick = bmbHomeFontClick
        end>
      DockedLeft = 128
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 129
      FloatClientHeight = 613
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000060360DD273400EFF5C330CCD000000000000000000000000000000000000
        0000160C02345A3007D7693807FF683807FF0000000000000000000000000000
        00000000000055300CBA2917065A000000000000000000000000000000000000
        00000D07021E6A3A09FC693909FC0A0601180000000000000000000000000000
        000000000000271606545A330DC3000000000000000000000000000000000000
        0000391F06846D3B09FF482707AB000000000000000000000000000000000000
        000000000000020101036B3D10E7120B03270000000000000000000000000302
        010665380BE76E3C0BFF1D100342000000000000000000000000000000000000
        000000000000000000003F240A8743260A900000000000000000000000002716
        0557703E0DFF5D330AD500000000000000000000000000000000000000000000
        0000000000000000000010090321784512FF774411FF754210FF74420FFF7341
        0FFF72400EFF301B066C00000000000000000000000000000000000000000000
        000000000000000000000000000057330EB72D1A076000000000150C032D7541
        10FF6E3D0FF30704010F00000000000000000000000000000000000000000000
        0000000000000000000000000000271707515E370FC60000000048290B997643
        11FF45270A960000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020101036F4112E71C100539734212F37744
        12FF150C032D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003F250B815D360FC17A4613FF5D35
        0EC3000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000F09031E7B4714FC7B4713FF2A18
        0757000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000058340FB4764413F00302
        0106000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          UserDefine = [udWidth]
          UserWidth = 106
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'beFontName'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          UserDefine = [udWidth]
          UserWidth = 41
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'beFontSize'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbIncreaseFontSize'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbDecreaseFontSize'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbFontColor'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bsiChangeCase'
        end
        item
          ButtonGroup = bgpStart
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbBold'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbItalic'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbUnderline'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbDoubleUnderline'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbStrikeout'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbDoubleStrikeout'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbFontSubscript'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbFontSuperscript'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbTextHighlight'
        end>
      KeyTip = 'FN'
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbStatusBarToolbar1: TdxBar
      Caption = 'Document Status'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 63
      FloatClientHeight = 94
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbCursorLine'
        end
        item
          Visible = True
          ItemName = 'bbCursorColumn'
        end
        item
          Visible = True
          ItemName = 'bbLocked'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIconWithText, ivlControlOnly]
          Visible = True
          ItemName = 'bbModified'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbStatusBarToolbar2: TdxBar
      Caption = 'Alignment'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 100
      FloatClientHeight = 204
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          Visible = True
          ItemName = 'bbAlignLeft'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignCenter'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignRight'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'bbAlignJustify'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbStatusBarToolbar3: TdxBar
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 148
      FloatClientHeight = 38
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsZoom'
        end
        item
          Visible = True
          ItemName = 'bccZoom'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbSelectionTools: TdxBar
      Caption = 'Selection Tools'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 189
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbCopy'
        end
        item
          Visible = True
          ItemName = 'bbCut'
        end
        item
          BeginGroup = True
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbBold'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbItalic'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbUnderline'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 189
          Visible = True
          ItemName = 'beFontName'
        end
        item
          Visible = True
          ItemName = 'beFontSize'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbHelp: TdxBar
      Caption = 'Help'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 60
      FloatClientHeight = 42
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000CB7E41FFCA7C3EFFC87738FFC57435FFC37231FFC26F2EFFC16D2CFFBF6A
        29FFBF6827FFBD6724FFBC6623FFBB6320FF0000000000000000000000000000
        0000EC9636FFFFECC9FFFFE7C0FFFFE6BCFFFFE5BAFFFFE4B6FFFFE3B3FFFFE1
        B0FFFFE0ADFFFFDFAAFFFFE6B1FFBD6624FF0000000000000000000000000000
        0000EC983AFFFFE9C9FFFFE4C0FFFFE2BCFFFFE1B8FFFFDFB5FFFFDEB2FFFFDC
        AEFFFFDBABFFFFD9A7FFFFE0ADFFBE6827FF0000000000000000000000000000
        0000ED9B40FFFFECD1FFFFE8CAFFF5BB78FFE8881CFFE8871BFFE8871BFFE888
        1CFFF8C181FFFFDCAEFFFFE3B3FFBF6B2AFF0000000000000000000000000000
        0000EE9F46FFFFEFDAFFFFECD3FFED9B41FFEA8F29FFFBECD9FFFBEAD7FFE989
        1FFFF0A653FFFFDFB5FFFFE5BAFFC26F2DFF0000000000000000000000000000
        0000EEA44EFFFFF2E0FFFFEFDAFFEFA149FFEC9636FFFFFFFFFFFFFFFFFFE98B
        23FFF0A856FFFFE3BCFFFFE8C0FFC37233FF0000000000000000000000000000
        0000F0A856FFFFF3E4FFFFF1DEFFF2AD5FFFEC912BFFEC993BFFEB9637FFE886
        1AFFF3B670FFFFE6C3FFFFEBC8FFC77638FF0000000000000000000000000000
        0000F1AD60FFFFF5E7FFFFF3E2FFF5BD7DFFF09734FFF2B979FFF2B574FFE887
        1BFFEB9433FFFDE2BEFFFFEDCEFFC97C40FF0000000000000000000000000000
        0000F2B36CFFFFF6EBFFFDE8CEFFF5B874FFF5A244FFFBE8D1FFFFFFFFFFF6D2
        A8FFE8891DFFE98C23FFFCE1B8FFCC8146FF0000000000000000000000000000
        0000F4BB79FFF8CB97FFFAB464FFF9AD58FFF8A84FFFF3A042FFF6C893FFFFFF
        FFFFFDF2E6FFE8881CFFEC9B3FFFD0884FFF0000000000000000000000000000
        0000F5C286FFF8C079FFFCC078FFFBE5CBFFFBE0C0FFF5A64FFFF3A147FFFFFA
        F5FFFFFFFFFFED9B3EFFEB9534FFD49059FF0000000000000000000000000000
        0000F7CB95FFF9C78AFFFED492FFFDEAD3FFFFFFFFFFFFF9F3FFFFF9F3FFFFFF
        FFFFFFFAF5FFEE942FFFEE9E44FFD99863FF0000000000000000000000000000
        0000F9D3A4FFFFF4E8FFFBCB88FFFDD08EFFFAC587FFF9D1A2FFF8D1A1FFF9C1
        82FFF6A64DFFF09939FFFADAB0FFDEA26EFF0000000000000000000000000000
        0000FADAB4FFFFFDFAFFFFF5E7FFF9C587FFFEC881FFFFC178FFFEBA6CFFFBAF
        5CFFF7AD5CFFFBDCB7FFFFF2DFFFE2AB7BFF0000000000000000000000000000
        0000FBE2C2FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFDFAFFFFFB
        F6FFFFF8F0FFFFF5E8FFFFF5E6FFE8B487FF0000000000000000000000000000
        0000FDE5C4FFFDE4C7FFFCE0BCFFFBDDB7FFFBDAAFFFFBD7A9FFF9D3A4FFF9D0
        9DFFF9CC97FFF7C990FFF6C58BFFECBB8BFF0000000000000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbBarsHelp'
        end
        item
          Visible = True
          ItemName = 'bbDockingHelp'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbLinks: TdxBar
      Caption = 'Links'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 186
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 174
      FloatClientHeight = 270
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000CD81
        45FFCC7E41FFC97A3CFFC77637FFC47232FFC26E2EFFC06B2AFFBE6927FFBD66
        24FFBC6422FFBB6320FFBA611EFFBA611EFFBA611EFF0000000000000000EEAE
        76FFFFEDCAFFFFE9C3FFFFE8C0FFFFE6BDFFFFE6BBFFFFE4B8FFFFE3B5FFFFE2
        B2FFFFE1AFFFFFE0ACFFFFDEA9FFFFE5B1FFBA611EFF0000000000000000EEAF
        77FFFFE9CBFFFFE6C4FFFFE5C1FFFFE3BDFFFFE2BAFFFFE0B7FFFFDEB4FFFFDE
        B0FFFFDCADFFFFDAAAFFFFD9A6FFFFDFACFFBA621FFF0000000000000000EFB0
        79FFFFEDD3FFD7AB74FFE7BA7FFFE1B885FFC5A077FFA4825FFF9C7B59FFAA8C
        68FFD4B48BFFF9D8ABFFFFDCADFFFFE2B2FFBB6421FF0000000000000000EFB2
        7CFFFFF1DCFFD4A25AFFD6BB9CFFB48757FFBC762DFFCC8935FFCD9846FF9F80
        49FF705535FFB29771FFF8D9ADFFFFE5B9FFBD6624FF0000000000000000F0B5
        81FFFFF3E1FFDCA34BFF9C6522FFDA8E2EFFF59B34FFE59337FFEA9F3EFFFFCD
        5EFFDCBC74FF7B5F3DFFD1B28BFFFFE8C0FFBE6927FF0000000000000000F1B8
        86FFFFF4E5FFDFB87CFFF9B033FFEF9F2BFFB26F21FFB69370FFD6B38EFFBF7F
        37FFDFAB52FFA78652FFB1916CFFFFEAC7FFC06C2CFF0000000000000000F2BC
        8CFFFFF5E8FFF0E2CDFFE7B34AFFEEA529FFBD7623FF9A5D1FFFA26422FFB26E
        2AFFB87027FFA16629FF9A7859FFFFEDCEFFC27031FF0000000000000000F3C1
        92FFFFF6EBFFEDE0CCFFEAD3A1FFF5C143FFCC8922FFE2A85BFFE7B069FFD389
        2FFFF99F35FFC88131FFA3866BFFFFEED1FFC57537FF0000000000000000F4C5
        9AFFFFF8EFFFE2D1B7FFECD5A0FFF7E2A6FFC09A41FF987752FFB69160FFD18B
        28FFF7A433FFAD793CFFDBC4A8FFFFEFD5FFC97B3FFF0000000000000000F5CB
        A2FFFFFAF2FFFFF7EDFFE3D3B0FFF0DBA0FFF5DC85FFD7AF3CFFDFA228FFF0A8
        2AFFD69639FFC2A47DFFF8E5CCFFFFF0D7FFCD8248FF0000000000000000F7D0
        AAFFFFFBF5FFFFF9F1FFFDF5ECFFDECDAAFFE3D090FFE9D26AFFE8BC44FFE6B6
        49FFC4A579FFE4CEAAFFE4C99DFFFFF1D9FFD18A50FF0000000000000000F8D6
        B2FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC3FFEDD9
        B4FFE5CA97FFE4C791FFE9D2B2FFFFF1DBFFD6935CFF0000000000000000F9DB
        BAFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
        F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9C68FF0000000000000000FBE0
        C5FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
        F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA573FF0000000000000000FCE1
        C2FFFBE3C9FFFBE1C4FFFBDEBFFFFBDDBCFFFADBB8FFFAD9B5FFFAD7B2FFFAD6
        B0FFF9D4ACFFF9D3AAFFF8D0A6FFF8CEA3FFE4AC79FF00000000}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDXOnWeb'
        end
        item
          Visible = True
          ItemName = 'bbDXSupport'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlControlOnly]
          Visible = True
          ItemName = 'bbDXProducts'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlControlOnly]
          Visible = True
          ItemName = 'bbDXDownloads'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlControlOnly]
          Visible = True
          ItemName = 'bbMyDX'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbFileCommon: TdxBar
      Caption = 'Common'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 56
      FloatClientHeight = 216
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbOpen'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbSaveAs'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertPages: TdxBar
      Caption = 'Pages'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPage'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertTables: TdxBar
      Caption = 'Tables'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 51
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbInsertTable'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInserIllustrations: TdxBar
      Caption = 'Illustrations'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 105
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 85
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbInsertPicture'
        end
        item
          Visible = True
          ItemName = 'bbPicture'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertLinks: TdxBar
      Caption = ' Links'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 220
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 70
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbBookmarks'
        end
        item
          Visible = True
          ItemName = 'bbHyperlink'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertHeaderAndFooter: TdxBar
      Caption = 'Header & Footer'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 366
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 89
      FloatClientHeight = 216
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbHeader'
        end
        item
          Visible = True
          ItemName = 'bbFooter'
        end
        item
          Visible = True
          ItemName = 'bbPageNumber'
        end
        item
          Visible = True
          ItemName = 'bbPageCount'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertText: TdxBar
      Caption = 'Text'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 240
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbInsertSymbols: TdxBar
      Caption = 'Symbols'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 588
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 56
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSymbol'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPageLayoutPageSetup: TdxBar
      Caption = 'Page Setup'
      CaptionButtons = <
        item
          OnClick = bmbPageLayoutPageSetupCaptionButtons0Click
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 111
      FloatClientHeight = 196
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbMargins'
        end
        item
          Visible = True
          ItemName = 'bsiOrientation'
        end
        item
          Visible = True
          ItemName = 'bbSize'
        end
        item
          Visible = True
          ItemName = 'sbiColumns'
        end
        item
          Visible = True
          ItemName = 'bsiBreaks'
        end
        item
          Visible = True
          ItemName = 'bsiLineNumbers'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPageLayoutPageBackground: TdxBar
      Caption = 'Page Background'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 374
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 95
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiPageColor'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReferencesTableOfContents: TdxBar
      Caption = 'Table of Contents'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReferencesCaptions: TdxBar
      Caption = 'Captions'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 103
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbMailingsMailMerge: TdxBar
      Caption = 'Mail Merge'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 130
      FloatClientHeight = 216
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbInsertMergeField'
        end
        item
          Visible = True
          ItemName = 'bbShowAllFieldCodes'
        end
        item
          Visible = True
          ItemName = 'bbShowAllFieldResults'
        end
        item
          Visible = True
          ItemName = 'bbViewMergedData'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReviewProofing: TdxBar
      Caption = 'Proofing'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReviewProtect: TdxBar
      Caption = 'Protect'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 55
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbViewDocumentViews: TdxBar
      Caption = 'Document Views'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 80
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSimpleView'
        end
        item
          Visible = True
          ItemName = 'bbDraftView'
        end
        item
          Visible = True
          ItemName = 'bbPrintLayoutView'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbViewShow: TdxBar
      Caption = 'Show'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 155
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 101
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbHorizontalRuler'
        end
        item
          Visible = True
          ItemName = 'bbVerticalRuler'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbViewZoom: TdxBar
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 290
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 71
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbZoomOut'
        end
        item
          Visible = True
          ItemName = 'bbZoomIn'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHFTNavigation: TdxBar
      Caption = 'Navigation'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 100
      FloatClientHeight = 270
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbGoToHeader'
        end
        item
          Visible = True
          ItemName = 'bbGoToFooter'
        end
        item
          Visible = True
          ItemName = 'bbShowNext'
        end
        item
          Visible = True
          ItemName = 'bbShowPrevious'
        end
        item
          Visible = True
          ItemName = 'bbLinkToPrevious'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHFTOptions: TdxBar
      Caption = 'Options'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 280
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 163
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDifferentFirstPage'
        end
        item
          Visible = True
          ItemName = 'bbDifferentOddAndEvenPages'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHFTClose: TdxBar
      Caption = 'Close'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 444
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 146
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbCloseHeaderAndFooter'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsTable: TdxBar
      Caption = 'Table'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 69
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTableProperties'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsRowsAndColumns: TdxBar
      Caption = 'Row & Columns'
      CaptionButtons = <
        item
          ScreenTip = stInsertCells
          OnClick = RowsAndColumnsCaptionButtonsClick
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 78
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 161
      FloatClientHeight = 237
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiDelete'
        end
        item
          Visible = True
          ItemName = 'bbInsertRowAbove'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbInsertRowBelow'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbInsertColumnToTheLeft'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbInsertColumnToTheRight'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsMerge: TdxBar
      Caption = 'Merge'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 480
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 78
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbMergeCells'
        end
        item
          Visible = True
          ItemName = 'bbSplitCells'
        end
        item
          Visible = True
          ItemName = 'bbSplitTable'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsCellSize: TdxBar
      Caption = 'Cell Size'
      CaptionButtons = <
        item
          OnClick = bmbTableToolsCellSizeClick
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 626
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 76
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiAutoFit'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsTableStyleOptions: TdxBar
      Caption = 'Table Style Options'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbTableToolsTableStyles: TdxBar
      Caption = 'Table Styles'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 111
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbTableToolsBordersShadings: TdxBar
      Caption = 'Border Shadings'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 62
      FloatClientHeight = 21
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiBorders'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPictureToolsShapeStyles: TdxBar
      Caption = 'Shape Styles'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPictureToolsArrange: TdxBar
      Caption = 'Arrange'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 74
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsAlignment: TdxBar
      Caption = ' Alignment'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 697
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 342
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsAlignTopLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsAlignTopCenter'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsTopRightAlign'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsAlignCenterLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsAlignCenter'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsCenterRightAlign'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsAlignBottomLeft'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCellsBottomCenterAlign'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbBottomRightAlign'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPrint: TdxBar
      Caption = 'Print'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 180
      DockedTop = 0
      FloatLeft = 1006
      FloatTop = 8
      FloatClientWidth = 85
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPrint'
        end
        item
          Visible = True
          ItemName = 'bbPrintPreview'
        end
        item
          Visible = True
          ItemName = 'bbPageSetup'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bbCursorLine: TdxBarButton
      Caption = 'Line: 0'
      Category = 0
      Hint = 'Line: 0'
      Visible = ivNever
    end
    object bbCursorColumn: TdxBarButton
      Caption = 'Column: 0'
      Category = 0
      Hint = 'Column: 0'
      Visible = ivNever
    end
    object bbLocked: TdxBarButton
      Caption = 'Locked'
      Category = 0
      Hint = 'Locked'
      Visible = ivNever
      ButtonStyle = bsChecked
    end
    object bbModified: TdxBarButton
      Action = acSave
      Caption = 'Modified'
      Category = 0
    end
    object beFontName: TcxBarEditItem
      Action = acFontName
      Category = 0
      KeyTip = 'FF'
      ScreenTip = stFontName
      OnChange = beFontNameChange
      PropertiesClassName = 'TcxFontNameComboBoxProperties'
      Properties.FontPreview.ShowButtons = False
      Properties.FontPreview.OnButtonClick = beFontNamePropertiesFontPreviewButtonClick
      Properties.FontTypes = [cxftTTF]
    end
    object beFontSize: TcxBarEditItem
      Action = acFontSize
      Category = 0
      KeyTip = 'FS'
      ScreenTip = stFontSize
      OnChange = beFontSizeChange
      Width = 50
      PropertiesClassName = 'TcxComboBoxProperties'
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
    object bbNew: TdxBarLargeButton
      Action = acNewDocument
      Category = 0
      Description = 'Creates a blank document'
      KeyTip = 'FN'
      ScreenTip = stNew
    end
    object bbOpen: TdxBarLargeButton
      Action = acOpenDocument
      Category = 0
      Description = 'Opens existing RTF file'
      KeyTip = 'FO'
      ScreenTip = stOpen
    end
    object bbSave: TdxBarLargeButton
      Action = acSave
      Category = 0
      Description = 'Updates the file with your most recent changes'
      KeyTip = 'SA'
      ScreenTip = stSave
    end
    object bbPrint: TdxBarLargeButton
      Action = acPrint
      Category = 0
      Description = 'Prints the current document'
      KeyTip = 'P'
    end
    object bbPaste: TdxBarLargeButton
      Action = acPaste
      Category = 0
      KeyTip = 'V'
      ScreenTip = stPaste
    end
    object bbCut: TdxBarLargeButton
      Action = acCut
      Category = 0
      KeyTip = 'X'
      ScreenTip = stCut
    end
    object bbCopy: TdxBarLargeButton
      Action = acCopy
      Category = 0
      KeyTip = 'C'
      ScreenTip = stCopy
    end
    object bbSelectAll: TdxBarLargeButton
      Action = acSelectAll
      Category = 0
      KeyTip = 'EA'
      ScreenTip = stSelectAll
    end
    object bbFind: TdxBarLargeButton
      Action = acFind
      Category = 0
      KeyTip = 'FD'
      ScreenTip = stFind
    end
    object bbReplace: TdxBarLargeButton
      Action = acReplace
      Category = 0
      KeyTip = 'R'
      ScreenTip = stReplace
    end
    object bbUndo: TdxBarLargeButton
      Action = acUndo
      Category = 0
      KeyTip = 'U'
      ScreenTip = stUndo
    end
    object bbBold: TdxBarLargeButton
      Action = acBold
      Category = 0
      KeyTip = '1'
      ScreenTip = stBold
      ButtonStyle = bsChecked
    end
    object bbItalic: TdxBarLargeButton
      Action = acItalic
      Category = 0
      KeyTip = '2'
      ScreenTip = stItalic
      ButtonStyle = bsChecked
    end
    object bbUnderline: TdxBarLargeButton
      Action = acUnderline
      Category = 0
      KeyTip = '3'
      ScreenTip = stUnderline
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbAlignLeft: TdxBarLargeButton
      Action = acAlignLeft
      Category = 0
      KeyTip = 'AL'
      ScreenTip = stAlignLeft
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignCenter: TdxBarLargeButton
      Action = acAlignCenter
      Category = 0
      KeyTip = 'AC'
      ScreenTip = stAlignCenter
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignRight: TdxBarLargeButton
      Action = acAlignRight
      Category = 0
      KeyTip = 'AR'
      ScreenTip = stAlignRight
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbBullets: TdxBarLargeButton
      Action = acBullets
      Category = 0
      KeyTip = 'BU'
      ScreenTip = stBullets
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object rgiColorTheme: TdxRibbonGalleryItem
      Caption = 'Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiPageColorTheme: TdxRibbonGalleryItem
      Caption = 'Page Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiFontColor: TdxRibbonGalleryItem
      Caption = 'Font Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object rgiPageColor: TdxRibbonGalleryItem
      Caption = 'Page Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object bccZoom: TdxBarControlContainerItem
      Caption = 'Zoom'
      Category = 0
      Hint = 'Zoom'
      Visible = ivAlways
      Control = tbZoom
    end
    object bbOptions: TdxBarButton
      Caption = 'Options'
      Category = 0
      Hint = 'Options'
      Visible = ivAlways
      ImageIndex = 23
    end
    object bbExit: TdxBarButton
      Action = acExit
      Category = 0
      ImageIndex = 5
    end
    object bbBarsHelp: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bbDockingHelp: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bbDXOnWeb: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
      SyncImageIndex = False
      ImageIndex = 2
    end
    object bbDXSupport: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bbDXProducts: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bbDXDownloads: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bbMyDX: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object bsZoom: TdxBarStatic
      Caption = '100 %'
      Category = 0
      Hint = '100 %'
      Visible = ivAlways
    end
    object bbFontSuperscript: TdxBarLargeButton
      Action = acFontSuperscript
      Category = 0
      KeyTip = '8'
      ScreenTip = stFontSuperscript
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbFontSubscript: TdxBarLargeButton
      Action = acFontSubscript
      Category = 0
      KeyTip = '7'
      ScreenTip = stFontSubscript
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbIncreaseFontSize: TdxBarLargeButton
      Action = acIncreaseFontSize
      Category = 0
      KeyTip = 'FG'
      ScreenTip = stIncreaseFontSize
    end
    object bbDecreaseFontSize: TdxBarLargeButton
      Action = acDecreaseFontSize
      Category = 0
      KeyTip = 'FK'
      ScreenTip = stDecreaseFontSize
    end
    object bsiLineSpacing: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      KeyTip = 'K'
      ScreenTip = stLineSpacing
      Visible = ivAlways
      ImageIndex = 38
      LargeImageIndex = 38
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSingleLineSpacing'
        end
        item
          Visible = True
          ItemName = 'bbSesquialteralLineSpacing'
        end
        item
          Visible = True
          ItemName = 'bbDoubleLineSpacing'
        end
        item
          Visible = True
          ItemName = 'bbLineSpacingOptions'
        end>
    end
    object bbSingleLineSpacing: TdxBarLargeButton
      Action = acSingleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbSesquialteralLineSpacing: TdxBarLargeButton
      Action = acSesquialteralLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbDoubleLineSpacing: TdxBarLargeButton
      Action = acDoubleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbLineSpacingOptions: TdxBarLargeButton
      Action = acParagraph
      Caption = 'Line spacing options...'
      Category = 0
    end
    object bbAlignJustify: TdxBarLargeButton
      Action = acJustify
      Category = 0
      KeyTip = 'AJ'
      ScreenTip = stAlignJustify
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbRedo: TdxBarLargeButton
      Action = acRedo
      Category = 0
      KeyTip = 'R'
      ScreenTip = stRedo
    end
    object bbNumbering: TdxBarLargeButton
      Action = acNumbering
      Category = 0
      KeyTip = 'N'
      ScreenTip = stNumbering
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbMultiLevelList: TdxBarLargeButton
      Action = acMultiLevelList
      Category = 0
      KeyTip = 'M'
      ScreenTip = stMultiLevelList
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbDoubleUnderline: TdxBarLargeButton
      Action = acDoubleUnderline
      Category = 0
      KeyTip = '4'
      ScreenTip = stDoubleUnderline
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbStrikeout: TdxBarLargeButton
      Action = acStrikeout
      Category = 0
      KeyTip = '5'
      ScreenTip = stStrikethrough
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbDoubleStrikeout: TdxBarLargeButton
      Action = acDoubleStrikeout
      Category = 0
      KeyTip = '6'
      ScreenTip = stDoubleStrikethrough
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbShowWhitespace: TdxBarLargeButton
      Action = acShowWhitespace
      Category = 0
      KeyTip = 'SO'
      ScreenTip = stShowWhitespace
      ButtonStyle = bsChecked
    end
    object bbDecrementIndent: TdxBarLargeButton
      Action = acDecrementIndent
      Category = 0
      KeyTip = 'AO'
      ScreenTip = stDecrementIndent
    end
    object bbIncrementIndent: TdxBarLargeButton
      Action = acIncrementIndent
      Category = 0
      KeyTip = 'AI'
      ScreenTip = stIncrementIndent
    end
    object bbParagraph: TdxBarButton
      Action = acParagraph
      Category = 0
      KeyTip = 'PG'
      ScreenTip = stParagraphDialog
    end
    object bbRadialMenuAlligns: TdxBarSubItem
      Caption = 'Align'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object bbSaveAs: TdxBarLargeButton
      Action = acSaveAs
      Category = 0
      ScreenTip = stSaveAs
    end
    object bbTableProperties: TdxBarLargeButton
      Action = acShowTablePropertiesForm
      Caption = 'Properties'
      Category = 0
      ScreenTip = stTableProperties
    end
    object bbSymbol: TdxBarLargeButton
      Action = acSymbol
      Category = 0
      ScreenTip = stSymbol
    end
    object bbInsertTable: TdxBarLargeButton
      Action = acInsertTableForm
      Category = 0
      ScreenTip = stInsertTable
    end
    object bbHorizontalRuler: TdxBarLargeButton
      Action = acHorizontalRuler
      Category = 0
      ScreenTip = stHorizontalRuler
      ButtonStyle = bsChecked
    end
    object bbVerticalRuler: TdxBarLargeButton
      Action = acVerticalRuler
      Category = 0
      ScreenTip = stVerticalRuler
      ButtonStyle = bsChecked
    end
    object bbZoomOut: TdxBarLargeButton
      Action = acZoomOut
      Category = 0
      ScreenTip = stZoomOut
    end
    object bbZoomIn: TdxBarLargeButton
      Action = acZoomIn
      Category = 0
      ScreenTip = stZoomIn
    end
    object bsiBorders: TdxBarSubItem
      Caption = 'Borders'
      Category = 0
      ScreenTip = stBorders
      Visible = ivAlways
      LargeImageIndex = 60
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbBottomBorder'
        end
        item
          Visible = True
          ItemName = 'bbTopBorder'
        end
        item
          Visible = True
          ItemName = 'bbLeftBorder'
        end
        item
          Visible = True
          ItemName = 'bbRightBorder'
        end
        item
          Visible = True
          ItemName = 'bbNoBorder'
        end
        item
          Visible = True
          ItemName = 'bbAllBorder'
        end
        item
          Visible = True
          ItemName = 'bbOutsideBorder'
        end
        item
          Visible = True
          ItemName = 'bbInsideBorders'
        end
        item
          Visible = True
          ItemName = 'bbInsideHorizontalBorder'
        end
        item
          Visible = True
          ItemName = 'bbInsideVerticalBorder'
        end>
    end
    object bbBottomBorder: TdxBarLargeButton
      Action = acBottomBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTopBorder: TdxBarLargeButton
      Action = acTopBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLeftBorder: TdxBarLargeButton
      Action = acLeftBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbRightBorder: TdxBarLargeButton
      Action = acRightBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbNoBorder: TdxBarLargeButton
      Action = acNoBorder
      Category = 0
    end
    object bbAllBorder: TdxBarLargeButton
      Action = acAllBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbOutsideBorder: TdxBarLargeButton
      Action = acOutsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideBorders: TdxBarLargeButton
      Action = acInsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideHorizontalBorder: TdxBarLargeButton
      Action = acHorizontalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideVerticalBorder: TdxBarLargeButton
      Action = acVerticalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbCellsAlignTopLeft: TdxBarLargeButton
      Action = acTableCellsTopLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignTopLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignCenterLeft: TdxBarLargeButton
      Action = acTableCellsMiddleLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignCenterLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignBottomLeft: TdxBarLargeButton
      Action = acTableCellsBottomLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignTopCenter: TdxBarLargeButton
      Action = acTableCellsTopCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignTopCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignCenter: TdxBarLargeButton
      Action = acTableCellsMiddleCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsBottomCenterAlign: TdxBarLargeButton
      Action = acTableCellsBottomCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsTopRightAlign: TdxBarLargeButton
      Action = acTableCellsTopRightAlignment
      Category = 0
      ScreenTip = stCellsAlignTopRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsCenterRightAlign: TdxBarLargeButton
      Action = acTableCellsMiddleRightAlignment
      Category = 0
      ScreenTip = stCellsAlignCenterRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbBottomRightAlign: TdxBarLargeButton
      Action = acTableCellsBottomRightAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbSplitCells: TdxBarLargeButton
      Action = acSplitCells
      Category = 0
      ScreenTip = stSplitCells
    end
    object bbInsertRowAbove: TdxBarLargeButton
      Action = acInsertRowAbove
      Caption = 'Insert Rows Above'
      Category = 0
      ScreenTip = stInsertRowsAbove
    end
    object bbInsertRowBelow: TdxBarLargeButton
      Action = acInsertRowBelow
      Caption = 'Insert Rows Below'
      Category = 0
      ScreenTip = stInsertRowsBelow
    end
    object bbInsertColumnToTheLeft: TdxBarLargeButton
      Action = acInsertColumnToTheLeft
      Caption = 'Insert Columns to the Left'
      Category = 0
      ScreenTip = stInsertColumnsToTheLeft
    end
    object bbInsertColumnToTheRight: TdxBarLargeButton
      Action = acInsertColumnToTheRight
      Caption = 'Insert Columns to the Right'
      Category = 0
      ScreenTip = stInsertColumnsToTheRight
    end
    object bsiDelete: TdxBarSubItem
      Caption = 'Delete'
      Category = 0
      ScreenTip = stDelete
      Visible = ivAlways
      LargeImageIndex = 100
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbDeleteCells'
        end
        item
          Visible = True
          ItemName = 'bbDeleteColumns'
        end
        item
          Visible = True
          ItemName = 'bbDeleteRows'
        end
        item
          Visible = True
          ItemName = 'bbDeleteTable'
        end>
    end
    object bbDeleteCells: TdxBarLargeButton
      Action = acDeleteTableCellsForm
      Category = 0
    end
    object bbHyperlink: TdxBarLargeButton
      Action = acHyperlinkForm
      Category = 0
      ScreenTip = stHyperlink
    end
    object bbInsertPicture: TdxBarLargeButton
      Action = acInsertPicture
      Category = 0
      ScreenTip = stInlinePicture
    end
    object bsiAutoFit: TdxBarSubItem
      Caption = 'AutoFit'
      Category = 0
      ScreenTip = stAutoFit
      Visible = ivAlways
      ImageIndex = 90
      LargeImageIndex = 90
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbAutoFitContents'
        end
        item
          Visible = True
          ItemName = 'bbAutoFitWindow'
        end
        item
          Visible = True
          ItemName = 'bbFixedColumnWidth'
        end>
    end
    object bbAutoFitContents: TdxBarLargeButton
      Action = acAutoFitContents
      Category = 0
    end
    object bbFixedColumnWidth: TdxBarLargeButton
      Action = acFixedColumnWidth
      Category = 0
    end
    object bbAutoFitWindow: TdxBarLargeButton
      Action = acAutoFitWindow
      Category = 0
    end
    object bbSplitTable: TdxBarLargeButton
      Action = acSplitTable
      Category = 0
      ScreenTip = stSplitTable
    end
    object bbMergeCells: TdxBarLargeButton
      Action = acMergeCells
      Category = 0
      ScreenTip = stMergeCells
    end
    object bbTextHighlight: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      ScreenTip = stTextHighlight
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppmTextHighlightColor
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00310000003400000036000000380000003B0000003D00000040000000430000
        0044000000470000004A0000004C000000500000005200000000000000000000
        001400000016000000190000001B0000001D0000001E00000021000000230000
        0026000000280000002A0000002D0000002F0000003200000000000000000000
        00030000000400000005000000060000000700000008000000090000000B0000
        000C0000000D0000000F00000011000000130000001500000000000000000000
        0000000000000000000000000000000000001721AAFF0E1385FF0505338B0000
        00150000000C0000000300000000000000000000000000000000000000000000
        0000000000000000000000000000000000002D43D4FF445FF4FF503A31FF4934
        2CFF221814990000001200000003000000000000000000000000000000060000
        000A0000000B0000000B0000000C0000000C19256F8B5D463CFF78594DFF7151
        45FF45396CFF04062FA100000019000000040000000000000000775448BDA575
        64FFA47464FFA47564FFA37463FFBA968AFFC6B0A8FF654D41FFA39596FF6C5D
        99FF5E61E3FF242792FF504B73F3000000170000000200000000A97969FFEFE3
        DEFFEEE2DBFFEDE1DAFFEDE0D9FFECE0D9FFF0E9E5FFA4948DFF7E7EA6FF9EA7
        F2FF686CE6FF696CE6FF282B98FF070A389D0000000F00000002AD7E6EFFF1E7
        E1FFD2C1B8FF724E3CFF724C3CFF714D3BFFF1E9E4FFB2A098FF605C93FF6E78
        C6FFA7B1F4FF7279E9FF7278E9FF2B309EFF0A0D3F990000000EB18473FFF4EB
        E6FF775141FFF1E9E3FFF1E8E2FF754E40FFF0E7E0FF977B71FFF1EBE8FF8284
        BFFF747FCEFFB0BAF6FF7D85ECFF7D83ECFF3238A4FF0A0E3E8CB68979FFF5EF
        EBFFD8C8C0FF7C5646FF7A5546FF7A5444FFF4ECE6FF795543FFF5EEEBFFF3EE
        EBFF6E6BA4FF7B86D5FFBAC5F8FF8990EFFF8D95EBFF181F85F0BA8E7EFFF7F3
        F0FFF7F2EEFFF7F2EDFFF7F1EDFF7F5949FFF6F0ECFF7F5948FFF5EFEBFFF7F1
        EEFFBAA7A0FF8F93D0FF7B86D8FFC8D5FAFFA7B3EBFF171F7CCCBF9383FFFAF8
        F4FFF9F6F3FF845F4DFF835E4CFFDDD0C9FFF9F3EFFF835D4CFF825D4BFF825D
        4BFFE4DBD5FFF7F4F2FF908BBDFF5F69C9F4333C99CD0406162BC29988FFFCFA
        F7FFFBF9F5FFFBF8F5FFFBF8F5FFFAF7F5FFFAF7F4FF866050FFF9F6F3FFF9F5
        F2FFF9F4F2FFFAF7F4FFDBC5BEFF0000000A0000000400000002C69D8DFFFCFC
        FAFFFDFCFAFFFDFCFAFFFCFBFAFFFCFBF9FFFCFBF9FFA5877AFFFCFAF7FFFCF9
        F7FFFCF9F6FFFCF8F5FFC39888FF0000000500000000000000009E8477BED4B2
        A1FFD4B1A0FFD3B09FFFD2AF9EFFD1AE9DFFD1AC9CFFD0AB9AFFCEA999FFCEA8
        97FFCDA696FFCBA595FF96796DBF000000030000000000000000}
      OnClick = bbTextHighlightClick
    end
    object bbPage: TdxBarLargeButton
      Action = acPageBreak
      Category = 0
      ScreenTip = stPage
    end
    object bbSimpleView: TdxBarLargeButton
      Action = acSimpleView
      Category = 0
      ScreenTip = stSimpleView
      ButtonStyle = bsChecked
    end
    object bbDraftView: TdxBarLargeButton
      Action = acDraftView
      Category = 0
      ScreenTip = stDraftView
      ButtonStyle = bsChecked
    end
    object bbPrintLayoutView: TdxBarLargeButton
      Action = acPrintLayoutView
      Category = 0
      ScreenTip = stPrintLayoutView
      ButtonStyle = bsChecked
    end
    object bbDeleteTable: TdxBarLargeButton
      Action = acDeleteTable
      Category = 0
    end
    object bbDeleteRows: TdxBarLargeButton
      Action = acDeleteTableRows
      Category = 0
    end
    object bbDeleteColumns: TdxBarLargeButton
      Action = acDeleteTableColumns
      Category = 0
    end
    object bsiChangeCase: TdxBarSubItem
      Caption = 'Change Case'
      Category = 0
      ScreenTip = stChangeCase
      Visible = ivAlways
      ImageIndex = 103
      LargeImageIndex = 103
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbUpperCase'
        end
        item
          Visible = True
          ItemName = 'bbLowerCase'
        end
        item
          Visible = True
          ItemName = 'bbToggleCase'
        end>
    end
    object bbUpperCase: TdxBarLargeButton
      Action = acUpperCase
      Category = 0
    end
    object bbToggleCase: TdxBarLargeButton
      Action = acToggleCase
      Category = 0
    end
    object bbLowerCase: TdxBarLargeButton
      Action = acLowerCase
      Category = 0
    end
    object sbiColumns: TdxBarSubItem
      Caption = 'Columns'
      Category = 0
      ScreenTip = stColumns
      Visible = ivAlways
      ImageIndex = 106
      LargeImageIndex = 106
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbOneColumn'
        end
        item
          Visible = True
          ItemName = 'bbTwoColumns'
        end
        item
          Visible = True
          ItemName = 'bbThreeColumn'
        end
        item
          Visible = True
          ItemName = 'bbMoreColumns'
        end>
    end
    object bbOneColumn: TdxBarLargeButton
      Action = acSectionOneColumn
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTwoColumns: TdxBarLargeButton
      Action = acSectionTwoColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbThreeColumn: TdxBarLargeButton
      Action = acSectionThreeColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbFontColor: TdxBarLargeButton
      Caption = 'Font Color'
      Category = 0
      ScreenTip = stFontColor
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppmFontColor
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00310000003400000036000000380000003B0000003D00000040000000430000
        0044000000470000004A0000004C000000500000005200000000000000000000
        001400000016000000190000001B0000001D0000001E00000021000000230000
        0026000000280000002A0000002D0000002F0000003200000000000000000000
        00030000000400000005000000060000000700000008000000090000000B0000
        000C0000000D0000000F00000011000000130000001500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000683C0FDC774411FF5E350DCB0000000000000000000000002B18
        05605C330AD16F3D0BFF6E3C0AFF000000000000000000000000000000000000
        000000000000010100036D3F10E7120A03270000000000000000000000000302
        000666390CE7703E0CFF1D100342000000000000000000000000000000000000
        0000000000000000000041250A8744280A900000000000000000000000002817
        055773410EFF5F350BD500000000000000000000000000000000000000000000
        00000000000000000000100903217A4713FF794512FF784511FF774410FF7642
        10FF74410FFF311B066C00000000000000000000000000000000000000000000
        000000000000000000000000000058340EB72E1B076000000000150C032D7744
        11FF70400FF30704010F00000000000000000000000000000000000000000000
        000000000000000000000000000028170751603810C600000000492A0B997845
        12FF46280A960000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010003714213E71C100439754412F37A46
        12FF150C032D0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000040250B815F3710C17C4814FF5E36
        0FC3000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000F09031E7D4916FC7E4915FF2B19
        0757000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000005A3510B4784615F00302
        0006000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = bbFontColorClick
      SyncImageIndex = False
      ImageIndex = -1
    end
    object rgiTextHighlightColorTheme: TdxRibbonGalleryItem
      Caption = 'TextHighlightColorTheme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiTextHighlightColor: TdxRibbonGalleryItem
      Caption = 'TextHighlightColor'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object bbMoreColumns: TdxBarLargeButton
      Action = acMoreColumns
      Category = 0
    end
    object bsiBreaks: TdxBarSubItem
      Caption = 'Breaks'
      Category = 0
      ScreenTip = stBreaks
      Visible = ivAlways
      ImageIndex = 94
      LargeImageIndex = 94
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPage'
        end
        item
          Visible = True
          ItemName = 'bbColumn'
        end
        item
          Visible = True
          ItemName = 'bbSectionNext'
        end
        item
          Visible = True
          ItemName = 'bbSectionEvenPage'
        end
        item
          Visible = True
          ItemName = 'bbSectionOdd'
        end>
    end
    object bbColumn: TdxBarLargeButton
      Action = acColumnBreak
      Category = 0
    end
    object bbSectionNext: TdxBarLargeButton
      Action = acSectionBreakNextPage
      Category = 0
    end
    object bbSectionEvenPage: TdxBarLargeButton
      Action = acSectionBreakEvenPage
      Category = 0
    end
    object bbSectionOdd: TdxBarLargeButton
      Action = acSectionBreakOddPage
      Category = 0
    end
    object bsiPageColor: TdxBarSubItem
      Caption = 'Page Color'
      Category = 0
      ScreenTip = stPageColor
      Visible = ivAlways
      ImageIndex = 112
      LargeImageIndex = 112
      ItemLinks = <>
    end
    object bsiLineNumbers: TdxBarSubItem
      Caption = 'Line Numbers'
      Category = 0
      ScreenTip = stLineNumbers
      Visible = ivAlways
      ImageIndex = 113
      LargeImageIndex = 113
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbLineNumberingNone'
        end
        item
          Visible = True
          ItemName = 'bbLineNumberingContinuous'
        end
        item
          Visible = True
          ItemName = 'bbLineNumberingRestartNewPage'
        end
        item
          Visible = True
          ItemName = 'bbacLineNumberingRestartNewSection'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbLineNumberingOptions'
        end>
    end
    object bbLineNumberingNone: TdxBarLargeButton
      Action = acLineNumberingNone
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbacLineNumberingRestartNewSection: TdxBarLargeButton
      Action = acLineNumberingRestartNewSection
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingRestartNewPage: TdxBarLargeButton
      Action = acLineNumberingRestartNewPage
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingContinuous: TdxBarLargeButton
      Action = acLineNumberingContinuous
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbPrintPreview: TdxBarLargeButton
      Action = acPrintPreview
      Category = 0
    end
    object bbPageSetup: TdxBarLargeButton
      Action = acPageSetup
      Category = 0
    end
    object bbPicture: TdxBarLargeButton
      Action = acPicture
      Category = 0
    end
    object bbInsertMergeField: TdxBarLargeButton
      Action = acShowInsertMergeFieldForm
      Category = 0
    end
    object bbShowAllFieldCodes: TdxBarLargeButton
      Action = acShowAllFieldCodes
      Category = 0
    end
    object bbShowAllFieldResults: TdxBarLargeButton
      Action = acShowAllFieldResults
      Category = 0
    end
    object bbViewMergedData: TdxBarLargeButton
      Action = acToggleViewMergedData
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbBookmarks: TdxBarLargeButton
      Action = acShowBookmarkForm
      Category = 0
    end
    object bbHeader: TdxBarLargeButton
      Action = acPageHeader
      Category = 0
    end
    object bbFooter: TdxBarLargeButton
      Action = acPageFooter
      Category = 0
    end
    object bbPageNumber: TdxBarLargeButton
      Action = acPageNumber
      Category = 0
    end
    object bbPageCount: TdxBarLargeButton
      Action = acPageCount
      Category = 0
    end
    object bbMargins: TdxBarLargeButton
      Action = acMargins
      Category = 0
    end
    object bbSize: TdxBarLargeButton
      Action = acSize
      Category = 0
    end
    object bsiOrientation: TdxBarSubItem
      Caption = 'Orientation'
      Category = 0
      Visible = ivAlways
      ImageIndex = 128
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPortrait'
        end
        item
          Visible = True
          ItemName = 'bbLandscape'
        end>
    end
    object bbPortrait: TdxBarLargeButton
      Action = acPortrait
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLandscape: TdxBarLargeButton
      Action = acLandscape
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingOptions: TdxBarLargeButton
      Action = acLineNumbering
      Category = 0
    end
    object bbGoToHeader: TdxBarLargeButton
      Action = acGoToPageHeader
      Category = 0
    end
    object bbGoToFooter: TdxBarLargeButton
      Action = acGoToPageFooter
      Category = 0
    end
    object bbShowNext: TdxBarLargeButton
      Action = acGoToNextPageHeaderFooter
      Category = 0
    end
    object bbShowPrevious: TdxBarLargeButton
      Action = acGoToPreviousPageHeaderFooter
      Category = 0
    end
    object bbLinkToPrevious: TdxBarLargeButton
      Action = acLinkToPrevious
      Category = 0
    end
    object bbDifferentFirstPage: TdxBarLargeButton
      Action = acDifferentFirstPage
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbDifferentOddAndEvenPages: TdxBarLargeButton
      Action = acDifferentOddAndEvenPages
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbCloseHeaderAndFooter: TdxBarLargeButton
      Action = acClosePageHeaderFooter
      Category = 0
    end
  end
  inherited acActions: TActionList
    Left = 192
    Top = 272
    inherited acQATAboveRibbon: TAction
      GroupIndex = 3
    end
    inherited acQATBelowRibbon: TAction
      GroupIndex = 3
    end
    object acExit: TAction
      Caption = 'E&xit'
      Hint = 'Exit'
      ShortCut = 32883
      OnExecute = acExitExecute
    end
    object acCut: TdxRichEditControlCutSelection
      Category = 'Home'
      ImageIndex = 7
      ShortCut = 16472
    end
    object acCopy: TdxRichEditControlCopySelection
      Category = 'Home'
      ImageIndex = 8
      ShortCut = 16451
    end
    object acPaste: TdxRichEditControlPasteSelection
      Category = 'Home'
      ImageIndex = 6
      ShortCut = 16470
    end
    object acSelectAll: TdxRichEditControlSelectAll
      Category = 'Home'
      ImageIndex = 15
      ShortCut = 16449
    end
    object acPrint: TAction
      Category = 'File'
      Caption = '&Print'
      Hint = 'Print'
      ImageIndex = 4
      ShortCut = 16464
      OnExecute = acPrintExecute
    end
    object acBold: TdxRichEditControlToggleFontBold
      Category = 'Home'
      ImageIndex = 16
      ShortCut = 16450
    end
    object acItalic: TdxRichEditControlToggleFontItalic
      Category = 'Home'
      ImageIndex = 17
      ShortCut = 16457
    end
    object acUnderline: TdxRichEditControlToggleFontUnderline
      Category = 'Home'
      ImageIndex = 18
      ShortCut = 16469
    end
    object acAlignLeft: TdxRichEditControlToggleParagraphAlignmentLeft
      Category = 'Home'
      GroupIndex = 1
      ImageIndex = 19
      ShortCut = 16460
    end
    object acAlignRight: TdxRichEditControlToggleParagraphAlignmentRight
      Tag = 1
      Category = 'Home'
      GroupIndex = 1
      ImageIndex = 21
      ShortCut = 16466
    end
    object acAlignCenter: TdxRichEditControlToggleParagraphAlignmentCenter
      Tag = 2
      Category = 'Home'
      GroupIndex = 1
      ImageIndex = 20
      ShortCut = 16453
    end
    object acJustify: TdxRichEditControlToggleParagraphAlignmentJustify
      Tag = 3
      Category = 'Home'
      GroupIndex = 1
      ImageIndex = 33
      ShortCut = 16458
    end
    object acBullets: TdxRichEditControlToggleBulletedList
      Category = 'Home'
      ImageIndex = 22
    end
    object acRedo: TdxRichEditControlRedo
      Category = 'File'
      ImageIndex = 26
      ShortCut = 16473
    end
    object acUndo: TdxRichEditControlUndo
      Category = 'File'
      ImageIndex = 11
      ShortCut = 16474
    end
    object acParagraph: TdxRichEditControlShowParagraphForm
      Category = 'Home'
      ImageIndex = 47
    end
    object acIncreaseFontSize: TdxRichEditControlIncreaseFontSize
      Category = 'Home'
      ImageIndex = 34
      ShortCut = 24766
    end
    object acDecreaseFontSize: TdxRichEditControlDecreaseFontSize
      Category = 'Home'
      ImageIndex = 35
      ShortCut = 24764
    end
    object acFontSuperscript: TdxRichEditControlToggleFontSuperscript
      Category = 'Home'
      ImageIndex = 36
      ShortCut = 24763
    end
    object acFontSubscript: TdxRichEditControlToggleFontSubscript
      Category = 'Home'
      ImageIndex = 37
      ShortCut = 16571
    end
    object acSingleLineSpacing: TdxRichEditControlSetSingleParagraphSpacing
      Category = 'Home'
    end
    object acDoubleLineSpacing: TdxRichEditControlSetDoubleParagraphSpacing
      Category = 'Home'
    end
    object acSesquialteralLineSpacing: TdxRichEditControlSetSesquialteralParagraphSpacing
      Category = 'Home'
    end
    object acNumbering: TdxRichEditControlToggleSimpleNumberingList
      Category = 'Home'
      ImageIndex = 39
    end
    object acMultiLevelList: TdxRichEditControlToggleMultiLevelList
      Category = 'Home'
      ImageIndex = 40
    end
    object acDoubleUnderline: TdxRichEditControlToggleFontDoubleUnderline
      Category = 'Home'
      ImageIndex = 41
    end
    object acStrikeout: TdxRichEditControlToggleFontStrikeout
      Category = 'Home'
      ImageIndex = 42
    end
    object acDoubleStrikeout: TdxRichEditControlToggleFontDoubleStrikeout
      Category = 'Home'
      ImageIndex = 43
    end
    object acShowWhitespace: TdxRichEditControlToggleShowWhitespace
      Category = 'Home'
      ImageIndex = 44
      ShortCut = 24632
    end
    object acIncrementIndent: TdxRichEditControlIncrementIndent
      Category = 'Home'
      ImageIndex = 45
    end
    object acDecrementIndent: TdxRichEditControlDecrementIndent
      Category = 'Home'
      ImageIndex = 46
    end
    object acFontName: TdxRichEditControlChangeFontName
      Category = 'Home'
      OnUpdate = acFontNameUpdate
    end
    object acFontSize: TdxRichEditControlChangeFontSize
      Category = 'Home'
      OnUpdate = acFontSizeUpdate
    end
    object acNewDocument: TdxRichEditControlNewDocument
      Category = 'File'
      ImageIndex = 0
    end
    object acOpenDocument: TdxRichEditControlLoadDocument
      Category = 'File'
      ImageIndex = 1
    end
    object acSave: TdxRichEditControlSaveDocument
      Category = 'File'
      ImageIndex = 2
      ShortCut = 16467
    end
    object acSaveAs: TdxRichEditControlSaveDocumentAs
      Category = 'File'
      ImageIndex = 3
      ShortCut = 123
    end
    object acFont: TdxRichEditControlShowFontForm
      Category = 'Home'
    end
    object acShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm
      Category = 'TableToolsLayout'
      ImageIndex = 99
    end
    object acFind: TdxRichEditControlSearchFind
      Category = 'Home'
      ImageIndex = 9
      ShortCut = 16454
    end
    object acReplace: TdxRichEditControlSearchReplace
      Category = 'Home'
      ImageIndex = 10
      ShortCut = 16456
    end
    object acFindNext: TdxRichEditControlSearchFindNext
      Category = 'Home'
      ShortCut = 114
    end
    object acSymbol: TdxRichEditControlShowSymbolForm
      Category = 'Insert'
      ImageIndex = 24
    end
    object acInsertTableForm: TdxRichEditControlShowInsertTableForm
      Category = 'Insert'
      ImageIndex = 98
    end
    object acFontColor: TdxRichEditControlChangeFontColor
      Category = 'Home'
      Caption = 'Font Color'
      ImageIndex = 53
      AssignedValues.Caption = True
    end
    object acHorizontalRuler: TdxRichEditControlToggleShowHorizontalRuler
      Category = 'View'
      ImageIndex = 54
    end
    object acVerticalRuler: TdxRichEditControlToggleShowVerticalRuler
      Category = 'View'
      ImageIndex = 55
    end
    object acZoomIn: TdxRichEditControlZoomIn
      Category = 'View'
      ImageIndex = 56
    end
    object acZoomOut: TdxRichEditControlZoomOut
      Category = 'View'
      ImageIndex = 57
    end
    object acAllBorders: TdxRichEditControlToggleTableCellsAllBorders
      Category = 'TableToolsDesign'
      ImageIndex = 58
    end
    object acNoBorder: TdxRichEditControlResetTableCellsBorders
      Category = 'TableToolsDesign'
      ImageIndex = 59
    end
    object acOutsideBorders: TdxRichEditControlToggleTableCellsOutsideBorder
      Category = 'TableToolsDesign'
      ImageIndex = 60
    end
    object acInsideBorders: TdxRichEditControlToggleTableCellsInsideBorder
      Category = 'TableToolsDesign'
      ImageIndex = 61
    end
    object acLeftBorder: TdxRichEditControlToggleTableCellsLeftBorder
      Category = 'TableToolsDesign'
      ImageIndex = 62
    end
    object acRightBorder: TdxRichEditControlToggleTableCellsRightBorder
      Category = 'TableToolsDesign'
      ImageIndex = 63
    end
    object acTopBorder: TdxRichEditControlToggleTableCellsTopBorder
      Category = 'TableToolsDesign'
      ImageIndex = 64
    end
    object acBottomBorder: TdxRichEditControlToggleTableCellsBottomBorder
      Category = 'TableToolsDesign'
      ImageIndex = 65
    end
    object acHorizontalInsideBorder: TdxRichEditControlToggleTableCellsInsideHorizontalBorder
      Category = 'TableToolsDesign'
      ImageIndex = 66
    end
    object acVerticalInsideBorder: TdxRichEditControlToggleTableCellsInsideVerticalBorder
      Category = 'TableToolsDesign'
      ImageIndex = 67
    end
    object acTableCellsTopLeftAlignment: TdxRichEditControlToggleTableCellsTopLeftAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 68
    end
    object acTableCellsTopCenterAlignment: TdxRichEditControlToggleTableCellsTopCenterAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 69
    end
    object acTableCellsTopRightAlignment: TdxRichEditControlToggleTableCellsTopRightAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 70
    end
    object acTableCellsMiddleLeftAlignment: TdxRichEditControlToggleTableCellsMiddleLeftAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 71
    end
    object acTableCellsMiddleCenterAlignment: TdxRichEditControlToggleTableCellsMiddleCenterAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 72
    end
    object acTableCellsMiddleRightAlignment: TdxRichEditControlToggleTableCellsMiddleRightAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 73
    end
    object acTableCellsBottomLeftAlignment: TdxRichEditControlToggleTableCellsBottomLeftAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 74
    end
    object acTableCellsBottomCenterAlignment: TdxRichEditControlToggleTableCellsBottomCenterAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 75
    end
    object acTableCellsBottomRightAlignment: TdxRichEditControlToggleTableCellsBottomRightAlignment
      Category = 'TableToolsLayout'
      ImageIndex = 76
    end
    object acSplitCells: TdxRichEditControlShowSplitTableCellsForm
      Category = 'TableToolsLayout'
      ImageIndex = 77
    end
    object acInsertTableCellsForm: TdxRichEditControlShowInsertTableCellsForm
      Category = 'TableToolsLayout'
      ImageIndex = 78
    end
    object acDeleteTableCellsForm: TdxRichEditControlShowDeleteTableCellsForm
      Category = 'TableToolsLayout'
      ImageIndex = 79
    end
    object acInsertRowAbove: TdxRichEditControlInsertTableRowAbove
      Category = 'TableToolsLayout'
      ImageIndex = 80
    end
    object acInsertRowBelow: TdxRichEditControlInsertTableRowBelow
      Category = 'TableToolsLayout'
      ImageIndex = 81
    end
    object acInsertColumnToTheLeft: TdxRichEditControlInsertTableColumnToTheLeft
      Category = 'TableToolsLayout'
      ImageIndex = 82
    end
    object acInsertColumnToTheRight: TdxRichEditControlInsertTableColumnToTheRight
      Category = 'TableToolsLayout'
      ImageIndex = 83
    end
    object acHyperlinkForm: TdxRichEditControlShowHyperlinkForm
      Category = 'Insert'
      ImageIndex = 84
      ShortCut = 16459
    end
    object acInsertPicture: TdxRichEditControlInsertPicture
      Category = 'Insert'
      ImageIndex = 86
    end
    object acAutoFitContents: TdxRichEditControlToggleTableAutoFitContents
      Category = 'TableToolsLayout'
      ImageIndex = 90
    end
    object acAutoFitWindow: TdxRichEditControlToggleTableAutoFitWindow
      Category = 'TableToolsLayout'
      ImageIndex = 88
    end
    object acFixedColumnWidth: TdxRichEditControlToggleTableFixedColumnWidth
      Category = 'TableToolsLayout'
      ImageIndex = 89
    end
    object acSplitTable: TdxRichEditControlSplitTable
      Category = 'TableToolsLayout'
      ImageIndex = 91
    end
    object acMergeCells: TdxRichEditControlMergeTableCells
      Category = 'TableToolsLayout'
      ImageIndex = 92
    end
    object acTextHighlight: TdxRichEditControlTextHighlight
      Category = 'Home'
      ImageIndex = 93
    end
    object acPageBreak: TdxRichEditControlInsertPageBreak
      Category = 'Insert'
      ImageIndex = 94
    end
    object acDraftView: TdxRichEditControlSwitchToDraftView
      Category = 'View'
      ImageIndex = 95
    end
    object acPrintLayoutView: TdxRichEditControlSwitchToPrintLayoutView
      Category = 'View'
      ImageIndex = 96
    end
    object acSimpleView: TdxRichEditControlSwitchToSimpleView
      Category = 'View'
      ImageIndex = 97
    end
    object acDeleteTable: TdxRichEditControlDeleteTable
      Category = 'TableToolsLayout'
      ImageIndex = 100
    end
    object acDeleteTableRows: TdxRichEditControlDeleteTableRows
      Category = 'TableToolsLayout'
      ImageIndex = 101
    end
    object acDeleteTableColumns: TdxRichEditControlDeleteTableColumns
      Category = 'TableToolsLayout'
      ImageIndex = 102
    end
    object acLowerCase: TdxRichEditControlTextLowerCase
      Category = 'Home'
    end
    object acUpperCase: TdxRichEditControlTextUpperCase
      Category = 'Home'
    end
    object acToggleCase: TdxRichEditControlToggleTextCase
      Category = 'Home'
    end
    object acSectionOneColumn: TdxRichEditControlSetSectionOneColumn
      Category = 'PageLayout'
      ImageIndex = 104
    end
    object acSectionThreeColumns: TdxRichEditControlSetSectionThreeColumns
      Category = 'PageLayout'
      ImageIndex = 105
    end
    object acSectionTwoColumns: TdxRichEditControlSetSectionTwoColumns
      Category = 'PageLayout'
      ImageIndex = 106
    end
    object acMoreColumns: TdxRichEditControlShowColumnsSetupForm
      Category = 'PageLayout'
      Hint = 'Show the Columns dialog box to customize column widths.'
      ImageIndex = 107
      AssignedValues.Hint = True
    end
    object acSectionBreakNextPage: TdxRichEditControlInsertSectionBreakNextPage
      Category = 'PageLayout'
      Hint = 
        'Insert a section break and start the new section on the next pag' +
        'e.'
      ImageIndex = 108
      AssignedValues.Hint = True
    end
    object acSectionBreakOddPage: TdxRichEditControlInsertSectionBreakOddPage
      Category = 'PageLayout'
      Hint = 
        'Insert a section break and start the new section on the next odd' +
        '-numbered page.'
      ImageIndex = 109
      AssignedValues.Hint = True
    end
    object acSectionBreakEvenPage: TdxRichEditControlInsertSectionBreakEvenPage
      Category = 'PageLayout'
      Hint = 
        'Insert a section break and start the new section on the next eve' +
        'n-numbered page.'
      ImageIndex = 110
      AssignedValues.Hint = True
    end
    object acColumnBreak: TdxRichEditControlInsertColumnBreak
      Category = 'PageLayout'
      Hint = 
        'Indicate that the text following the column break will begin in ' +
        'the next column.'
      ImageIndex = 111
      AssignedValues.Hint = True
    end
    object acPageColor: TdxRichEditControlChangePageColor
      Category = 'PageLayout'
      Hint = 'Choose a color for the background of the page.'
      ImageIndex = 112
      AssignedValues.Hint = True
    end
    object acLineNumberingNone: TdxRichEditControlSetSectionLineNumberingNone
      Category = 'PageLayout'
      Hint = 'No line numbers.'
      AssignedValues.Hint = True
    end
    object acLineNumberingContinuous: TdxRichEditControlSetSectionLineNumberingContinuous
      Category = 'PageLayout'
      Hint = 'Continuous'
      AssignedValues.Hint = True
    end
    object acLineNumberingRestartNewPage: TdxRichEditControlSetSectionLineNumberingRestartNewPage
      Category = 'PageLayout'
      Hint = 'Restart Each Page'
      AssignedValues.Hint = True
    end
    object acLineNumberingRestartNewSection: TdxRichEditControlSetSectionLineNumberingRestartNewSection
      Category = 'PageLayout'
      Hint = 'Restart Each Section'
      AssignedValues.Hint = True
    end
    object acPrintPreview: TAction
      Category = 'File'
      Caption = 'Print Preview'
      ImageIndex = 114
      OnExecute = acPrintPreviewExecute
    end
    object acPageSetup: TAction
      Category = 'File'
      Caption = 'Page Setup'
      ImageIndex = 115
      OnExecute = acPageSetupExecute
    end
    object acPicture: TdxRichEditControlInsertFloatingObjectPicture
      Category = 'Insert'
      ImageIndex = 86
    end
    object acShowAllFieldResults: TdxRichEditControlShowAllFieldResults
      Category = 'Mail Merge'
      ImageIndex = 116
    end
    object acShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes
      Category = 'Mail Merge'
      ImageIndex = 117
    end
    object acShowInsertMergeFieldForm: TdxRichEditControlShowInsertMergeFieldForm
      Category = 'Mail Merge'
      ImageIndex = 118
    end
    object acToggleViewMergedData: TdxRichEditControlToggleViewMergedData
      Category = 'Mail Merge'
      ImageIndex = 119
    end
    object acShowBookmarkForm: TdxRichEditControlShowBookmarkForm
      Category = 'Insert'
      Caption = 'Bookmark'
      ImageIndex = 121
      AssignedValues.Caption = True
    end
    object acPageCount: TdxRichEditControlInsertPageCountField
      Category = 'Insert'
      ImageIndex = 122
    end
    object acPageNumber: TdxRichEditControlInsertPageNumberField
      Category = 'Insert'
      ImageIndex = 123
    end
    object acPageHeader: TdxRichEditControlEditPageHeader
      Category = 'Insert'
      ImageIndex = 124
    end
    object acPageFooter: TdxRichEditControlEditPageFooter
      Category = 'Insert'
      ImageIndex = 125
    end
    object acMargins: TdxRichEditControlShowPageMarginsSetupForm
      Category = 'PageLayout'
      Caption = 'M&argins'
      ImageIndex = 126
      AssignedValues.Caption = True
    end
    object acSize: TdxRichEditControlShowPagePaperSetupForm
      Category = 'PageLayout'
      Caption = 'Size'
      ImageIndex = 127
      AssignedValues.Caption = True
    end
    object acPortrait: TdxRichEditControlSetPortraitPageOrientation
      Category = 'PageLayout'
    end
    object acLandscape: TdxRichEditControlSetLandscapePageOrientation
      Category = 'PageLayout'
    end
    object acLineNumbering: TdxRichEditControlShowLineNumberingForm
      Category = 'PageLayout'
      ImageIndex = 113
    end
    object acShowPageSetupForm: TdxRichEditControlShowPageSetupForm
      Category = 'PageLayout'
    end
    object acClosePageHeaderFooter: TdxRichEditControlClosePageHeaderFooter
      Category = 'HeaderFooterTools'
      ImageIndex = 136
    end
    object acGoToPageHeader: TdxRichEditControlGoToPageHeader
      Category = 'HeaderFooterTools'
      ImageIndex = 129
    end
    object acGoToPageFooter: TdxRichEditControlGoToPageFooter
      Category = 'HeaderFooterTools'
      ImageIndex = 130
    end
    object acLinkToPrevious: TdxRichEditControlToggleHeaderFooterLinkToPrevious
      Category = 'HeaderFooterTools'
      ImageIndex = 133
    end
    object acGoToPreviousPageHeaderFooter: TdxRichEditControlGoToPreviousPageHeaderFooter
      Category = 'HeaderFooterTools'
      ImageIndex = 132
    end
    object acGoToNextPageHeaderFooter: TdxRichEditControlGoToNextPageHeaderFooter
      Category = 'HeaderFooterTools'
      ImageIndex = 131
    end
    object acDifferentFirstPage: TdxRichEditControlToggleDifferentFirstPage
      Category = 'HeaderFooterTools'
      ImageIndex = 134
    end
    object acDifferentOddAndEvenPages: TdxRichEditControlToggleDifferentOddAndEvenPages
      Category = 'HeaderFooterTools'
      ImageIndex = 135
    end
  end
  inherited stBarScreenTips: TdxScreenTipRepository
    StandardFooter.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      200000000000000400000000000000000000000000000000000000000000CD81
      45FFCC7E41FFC97A3CFFC77637FFC47232FFC26E2EFFC06B2AFFBE6927FFBD66
      24FFBC6422FFBB6320FFBA611EFFBA611EFFBA611EFF0000000000000000EEAE
      76FFFFEDCAFFFFE9C3FFFFE8C0FFFFE6BDFFFFE6BBFFFFE4B8FFFFE3B5FFFFE2
      B2FFFFE1AFFFFFE0ACFFFFDEA9FFFFE5B1FFBA611EFF0000000000000000EEAF
      77FFFFE9CBFFFFE6C4FFFFE5C1FFFFE3BDFFFFE2BAFFFFE0B7FFFFDEB4FFFFDE
      B0FFFFDCADFFFFDAAAFFFFD9A6FFFFDFACFFBA621FFF0000000000000000EFB0
      79FFFFEDD3FFD7AB74FFE7BA7FFFE1B885FFC5A077FFA4825FFF9C7B59FFAA8C
      68FFD4B48BFFF9D8ABFFFFDCADFFFFE2B2FFBB6421FF0000000000000000EFB2
      7CFFFFF1DCFFD4A25AFFD6BB9CFFB48757FFBC762DFFCC8935FFCD9846FF9F80
      49FF705535FFB29771FFF8D9ADFFFFE5B9FFBD6624FF0000000000000000F0B5
      81FFFFF3E1FFDCA34BFF9C6522FFDA8E2EFFF59B34FFE59337FFEA9F3EFFFFCD
      5EFFDCBC74FF7B5F3DFFD1B28BFFFFE8C0FFBE6927FF0000000000000000F1B8
      86FFFFF4E5FFDFB87CFFF9B033FFEF9F2BFFB26F21FFB69370FFD6B38EFFBF7F
      37FFDFAB52FFA78652FFB1916CFFFFEAC7FFC06C2CFF0000000000000000F2BC
      8CFFFFF5E8FFF0E2CDFFE7B34AFFEEA529FFBD7623FF9A5D1FFFA26422FFB26E
      2AFFB87027FFA16629FF9A7859FFFFEDCEFFC27031FF0000000000000000F3C1
      92FFFFF6EBFFEDE0CCFFEAD3A1FFF5C143FFCC8922FFE2A85BFFE7B069FFD389
      2FFFF99F35FFC88131FFA3866BFFFFEED1FFC57537FF0000000000000000F4C5
      9AFFFFF8EFFFE2D1B7FFECD5A0FFF7E2A6FFC09A41FF987752FFB69160FFD18B
      28FFF7A433FFAD793CFFDBC4A8FFFFEFD5FFC97B3FFF0000000000000000F5CB
      A2FFFFFAF2FFFFF7EDFFE3D3B0FFF0DBA0FFF5DC85FFD7AF3CFFDFA228FFF0A8
      2AFFD69639FFC2A47DFFF8E5CCFFFFF0D7FFCD8248FF0000000000000000F7D0
      AAFFFFFBF5FFFFF9F1FFFDF5ECFFDECDAAFFE3D090FFE9D26AFFE8BC44FFE6B6
      49FFC4A579FFE4CEAAFFE4C99DFFFFF1D9FFD18A50FF0000000000000000F8D6
      B2FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC3FFEDD9
      B4FFE5CA97FFE4C791FFE9D2B2FFFFF1DBFFD6935CFF0000000000000000F9DB
      BAFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
      F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9C68FF0000000000000000FBE0
      C5FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
      F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA573FF0000000000000000FCE1
      C2FFFBE3C9FFFBE1C4FFFBDEBFFFFBDDBCFFFADBB8FFFAD9B5FFFAD7B2FFFAD6
      B0FFF9D4ACFFF9D3AAFFF8D0A6FFF8CEA3FFE4AC79FF00000000}
    StandardFooter.Text = 'Visit www.devexpress.com'
    Left = 104
    Top = 328
    object stBold: TdxScreenTip
      Header.Text = 'Bold'
      Description.Text = 'Make the selected text bold.'
    end
    object stItalic: TdxScreenTip
      Header.Text = 'Italic'
      Description.Text = 'Italicize the selected text.'
    end
    object stNew: TdxScreenTip
      Header.Text = 'New'
      Description.Text = 'Create a new document.'
    end
    object stUnderline: TdxScreenTip
      Header.Text = 'Underline'
      Description.Text = 'Underline the selected text.'
    end
    object stBullets: TdxScreenTip
      Header.Text = 'Bullets'
      Description.Text = 'Starts a bulleted list.'
    end
    object stFind: TdxScreenTip
      Header.Text = 'Find'
      Description.Text = 'Find text in the document.'
    end
    object stPaste: TdxScreenTip
      Header.Text = 'Paste'
      Description.Text = 'Paste the contents of the Clipboard.'
    end
    object stCut: TdxScreenTip
      Header.Text = 'Cut'
      Description.Text = 'Cut the selection from the document and put it on the Clipboard.'
    end
    object stReplace: TdxScreenTip
      Header.Text = 'Replace'
      Description.Text = 'Replace text in the document.'
    end
    object stCopy: TdxScreenTip
      Header.Text = 'Copy'
      Description.Text = 'Copy the selection and put it on the Clipboard.'
    end
    object stAlignLeft: TdxScreenTip
      Header.Text = 'Align Text Left'
      Description.Text = 'Align text to the left.'
    end
    object stAlignRight: TdxScreenTip
      Header.Text = 'Align Text Right'
      Description.Text = 'Align text to the right.'
    end
    object stAlignCenter: TdxScreenTip
      Header.Text = 'Center'
      Description.Text = 'Center text.'
    end
    object stAppMenu: TdxScreenTip
      Header.Text = 'Application Menu'
      Description.Glyph.Data = {
        B6260000424DB62600000000000036040000280000005E0000005C0000000100
        08000000000080220000130B0000130B000000010000000000002466E4001C82
        EC009C8E84008CC2E400D4C2AC00D4E2DC00ECC69400D4D2CC00BC968400FCE2
        B40034BAFC00CCA68C00F4F2E400D4AE9C00DCC2B400ECD6BC00ECE2DC00748A
        8C00D4D2D4005CBEF400A4DEFC00DCC2C400F4EADC0024AAFC00ECD6CC00BCBE
        C400D4BABC00FC02FC00D4DADC0074D6FC00FCF2DC00D4BAAC0074BAEC00CC42
        CC003492EC00BCC2C400FCEEDC00CCC6CC00ECCEB800C4AAA400E4CAA40094AE
        BC00ECEAEC001492E400BC9A9400FCEACF00FCDAB400DCCAC500ECDECD00FCF2
        F400CCF6FC00E4D2BC00F4E2DE006CA2D400B4E2FC00E4DAD70074CEF400148A
        D800ACA2F4004CBAF400D4B6AA00E4D2D40024B2FC00DCBAB000A46ACC00CCCE
        D400F4EAEC00E4CAC4009C968C00E4E2E500F4E2D400F4DEBC00CCB6A800ACD2
        CC00CCB2A800DC9ABC008CDAE400F4CEA400ECF2F400E4C2B400F4D6BC00DCD2
        D400F4DACC00EC22EC007CC2EC00ECD2CC00DCCABC00FCFAFC00248ADC00CCAE
        9400D4B2AC006C96B4005CC6F400ECDADC00DCDADA00D4C6C400F4D2B400CCA2
        9C00DCCED400E4D2CA00F4E6EC00B4EEF400BC6AD400ACDAF400F4F2F400E4CA
        BA00D4C2BC00ECCAAC00D4DAC4002CCEFC00CCA69C00D4B2A200ECE6EC0094EE
        F4003C9EDC00ECDACE00FCF2EC00D4BEB200ECD2BC00CCAAA400ECEEF100C4A2
        9400DCCEC900F4DEDC00FCF6F900F4E6E20084AABC00E4DEE400148EE8004472
        D400CC5EE4006482D40084EEFC001C7EE40064B2F4003CB6E400C48AB400B486
        6C008CBEE400BC76F400F42EF40094A2AC005C8EB40044C2FC009CD2F400E4BA
        D4006CBAEC004492EC00A4F2F40044AAE4008CCEF400C472EC00FC0AFC0034C6
        FC0084BEE40084CEF4006CCAEC00C4EAFC00BCD6EC00DCF2FC0054C6FC0034B2
        FC00CCE2F400649ACC003C9AE4006CDEFC00149AF40094DAFC00FCDEC400248E
        F400C4BAB400C49E8800D45AF4009C9E9C00F4CA9400A49A9400FCE2D00084C2
        E9009CEAFC0044B2EC00C47AEC00FC32EC00D4E6EC00FCE6C400C4C6C400CCBA
        B400DCDEE400B4D6F40034D2FC00DCD2CB00C4967C0074A2CC00D4CECE00BCEE
        FC00FCEEEC00ECDEDC00BCE2FC00D4B6B400CCB2B40094BEE4001C86E400CCAA
        9400DCC6BC00ECDAC400ECE6E400D4D6D400F4EEE400CCCAC900FCEED400FCDE
        AC00E4D6B400E4DEDC00DCBEB200F4EEEE00E4CECA00E4E6E700CCBAAC00E4C6
        B900F4DAC400DCD6D800DCDEDC00E4D6CC00F4F6F900E4CEBA003CA2E400CCAE
        A5009CD6FC00FC0EF40084D2FC00C4BEBC00FCE6CC0084C6EC009C9284005CC2
        F400DCC6C400D4BEBC00E4D6D400F4D2A400D4CAC400D4C6BC00CCAA9C00FCF6
        EC0044C6FC00BCDAEC00D4C2B400ECC69C00FCE2BC00D4AEA400DCC2BC00ECD6
        C400ECE2E400D4D2DC00F4EAE400ECD6D400FCF2E400D4BAB4001B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B52DA73DA73
        DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73
        DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73
        DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA73DA1B0000767676767660
        7676766076767660767676607676766076767660767676607676766076767660
        7676766076767660767676607676766076767660767676607676766076767660
        7676766076767660767676607676766076767660767676750000262626262626
        2626262626262626262626262626262626262626262626262626262626262626
        2626262626262626262626262626262626262626262626262626262626262626
        2626262626262626262626262626262626262626262626750000767660607660
        7660766076607660766076607660766076607660766076607660766076607660
        7660766076607660766076607660766076607660766076607660766076607660
        76607660766076607660766076607660766076607660767500000FF9F918F9F9
        F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9
        F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9F91850F9
        F91850F9F91850F9F91850F9F91850F9F91850F9F9F9DA040000CB7D7C317C31
        7C317C317C317C317C317C317C317C317C317C317C317C317C317C317C317C31
        7C317C317C317C31D5CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
        CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCD375000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C702A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10040000CBD55757BBB6
        9EC7C75757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A1004000073C2575754B6
        A117A45757575757575757575757575757575757575757575757575757575757
        5757575757575757DE2AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10040000CBD55757B105
        8F3EE05757575757FA10FD5D5DC37C5D42C3D52F7343FA5D18FA5D7D31575757
        57575757575757577C2A2A2A162AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A1075000073D55757E7DB
        A00A955757575757FD62D4756FFFD5F0CA3FFAE1EAC51F636F75F8D430575757
        57575757575757577CCC2AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10040000CBC25757E7D2
        1D8FB35757575757D57D57575757574257575757575742575768575757575757
        57575757575757577C2A2A2A2AFC2A162A162A162A162A162A162A162A162A16
        2A162A162A162A162A162A162A162A162A162AFC2A2A1004000073D55757B106
        499C135757575757573434575757575757575757575757575757575757575757
        57575757575757577C2AFC2AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10040000CBD55757C49B
        9B9BA757575757573C6A4AAB2457575757575757575757575757575757575757
        57575757575757577C2A2A2A2ACCFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162A1075000073C257575757
        57575757575757571FFDEC6E7457575757575757575757575757575757575757
        5757575757575757DE2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10040000CBD557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162A162AFC2A2A2A1004000073D557575757
        5757575757575757DE6868686868686868686868686868686868686868686868
        686868686868680C2A2A2AFC2A162A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFC2A10F40000CBC257575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162A2A2A107500007368575757D5
        7870575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFC2A2A10040000CBD55757EEE8
        4402AFDB57575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A2A2ACCFC4504000073C2575745D7
        5EC0AA5E57575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2ACC2AFC2A2A1004000073D5575737DF
        7628C02A5757575743DD3F7A5A34EBD60B70F8F4D443E173EC2F5A3CCA3C2F6E
        3C371857575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A2AFC1004000030D55757572D
        2DED74575757575755C3FAFA7331EA306457C37C34427D64732A55D53468FA42
        7DCC3457575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2ACC78CC2A2A45F40000CBC2575757FE
        FEA8F15757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162AFC2A1004000073D557575774
        F1E6575757575757D4EC73557AD6637457575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A1004000073D557575757
        57575757575757577979C9592C50575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2AFC2A10F40000CB7457575757
        5757575757575757D57C31577C57575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A1004000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162A2A2A1004000030D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A162A10F4000073C257575757
        57575757575757573DD9EAD6CAECD4183DC26255CA7D3755CCD4634342C33CD6
        7A695757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2A2A1004000073D557575757
        5757575757575757514373C35DD6EC637AFC5D37E173D53437ECECFA4218EC63
        5D735757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFC2A2A10F4000073D557575757
        57575757575757577D646831FAFCD5C242345DD5C2426857646442D557FA7DD5
        31347C68575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A2A2A2AFC45040000737457575757
        57575757575757573D3C3C1A3C3F62432FB96FC5632FE1C2EB4ACAF770D42F5A
        1AE15643575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A162A2A10F4000073D557575757
        5757575757575757C37C57575757575757575757575742FC5757575757575757
        57575731575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2AFC1004000030D557575757
        57575757575757575757575757577C5757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A45F4000073C257575757
        5757575757575757FA5AD4FF43106F793CD67357575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162A162A1004000073D557575757
        575757575757575759CA0ECA0ED67A6F0E575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2AFC2A10F40000737457575757
        5757575757575757575757575757575757575757575757575757575757575757
        5757575757575757DE2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162A2A2A1004000030D55757E6DA
        50504D5757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A162A10F4000073C25757E6B7
        D1D1AE3157575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2A2A10F4000073D557572424
        2DF64D7C57575757FA107D10FA73C342106818FA73D57D42C3105D737DFAC374
        42575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFC2A2A10F4000030D55757FEFE
        FED02E7457575757733DEBF81F5AD4186A105A75E1EA0E5D3CEA2F3D1FFF3C56
        43575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A2A2A2AFC4504000073C25757F1F1
        F150F57C57575757423157577C5757575757C2C2577C3157D557575757575757
        7C575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A162A2A10F4000030D55757F157
        F1B0E65757575757107D57575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2AFC10F4000073D55757F1F1
        F174575757575757EB086F77D457575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A45F4000030C257575757
        57575757575757571FCADDDD7D57575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162A162A1004000030D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        5757575757575757DE2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2AFC2A10F40000737457575757
        57575757575757575757DE7C57577CDE7C575757DE577C5778D5685757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000030D55757D545
        5ECD70685757575751C0CDC07F7FCFDB4151C068DBC04107EECF12DB57575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2AFC2A2A2A10F4000073D5577C2A7F
        12255ED5575757577C577C7C68DE7C7CDE7CD57CDE427C7C577C7C5757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A162A10F4000030C2577C7870
        45BA70D5575757572ADB457FD3D7704568704568D54545DE452AD7D5D72A4545
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2A2A10F4000073D5577C6878
        D52A2A685757575742CDBA5ECD5E12BA70CD5E7FBA12FB68D7DBC0422A7FD345
        7C575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2AFC2A2A10F4000030D5575731DE
        D5D57868575757575757577C57575757577C57577C6857575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A2A2ACCCE45F4000073C2577C7C57
        7CDED5D5575757572AD557575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A78CC2ACE2A2A10F4000030D557575757
        5757575757575757CD23E519255E575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A2AFC10F4000073D557575757
        575757575757575745D5D568687C575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A45F4000030C257575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A162A162A162A162A162A162A162A162A162A
        162A162A162A162A162A162A162A162AFC2A162A162A10EF000073D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000030D557575757
        5757575757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A
        FC2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2AFC2A10F4000073C257C41D5C
        E9139B5757575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A162AFC2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000030D55714A5BC
        6D99874E5757575757575757575757575757575757D557575757575757575757
        57575757575757577C2AF0BDCAEF56CA0E56CADDCA6337162A162A162A162A16
        2A162A162A162A162A162A162A162AFC2A162AFC2A2A10EF000073D557C1B284
        84714CF357575757EC3F7A3F37D4420ED92FEAF8100DFA637D7D57ECEBF95757
        5757575757575757DE2AEF7A1FEBF47AFF48E1754A2F302A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A10F4000030C25732947C
        0C24DA4E57575757FDEA733D63ECD5FD5D3D2F4373D6C343CA4A7D77F8C35757
        57575757575757577C2ACC2ACC2AFC2A2A2A2A2ACC2A2AFC2AFC2AFC2AFC2AFC
        2AFC2AFC2AFC2AFC2AFC2AFC2AFC2A162AFC2A162AFC45F4000073D55757650C
        24F6AECE57575757575757575757575757575757575757575757575757575757
        57575757575757577C2A2A2A2A2A2A2A2A2A2A2A2A2ACC2ACC2ACC2ACC2ACC2A
        CC2ACC2ACC2ACC2ACC2ACC2ACC2ACC2A2ACC2A2A2A2A10F4000030D557575724
        7DD5575757575757632FD942104234D557575757575757575757575757575757
        57575757575757577C2A2A2ACC2A2ACCFC2ACC2ACC2A2A2A2A2A2A2A2A2A2A2A
        2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2ACC78CC2ACC2A10EF000030C257575757
        57575757575757573C2789ABAB0BCCC257575757575757575757575757575757
        57575757575757577C2A594A3C48C9BD566A3C1F75481F4AC956D80ECC2ACECC
        2ACECC2ACECC2ACECC2ACECC2ACECC2ACE2A2A16782A10F4000030D557575757
        5757575757575757FA3457575757575757575757575757575757575757575757
        57575757575757577C2A5ABDBDD62FBDCA6A5F632F37CA7A7A7A75632A2A2A2A
        162A2AFC2A2AFC2A2AFC2A2AFC2A2AFC2A2A162A2ACCCCF400007310FC42FC42
        FC42CE42CE42CE42FCFC42FC42FC42FC42FCD5FCD5FCD5FCD5FCD5FCD5FCD5FC
        D5FCD5FCD5FCD5FCCC45103010D31030C3103045C3301010C310301010101010
        D31010D31010D31010D31010D31010D31010D310101030F400005526DF262626
        2626B0506B59AB0808AB0D6B26262626262626DF2626DF2626DF2626DF2626DF
        2626DF2626DF262626DF26DF26DF26DFDF26DF26DFDFDFDF26DFDFDF26DF26DF
        26DF26DF26DF26DF26DF26DF26DF26DF26DF26DF26DFDFF40000CB7352525252
        52F66B27BFF2BCBCBCF25B445926525252525273527352735273527352735273
        5273527352735273735273527352735273527352735252527352527352CBDA73
        DA73DA73DA73DACB52CBDA73DACB52CB52CB52CB523052EF0000734646464646
        461F7E6DBCA0A5A5A5BCBCBC5B084F4646464646464646464646464646464646
        4646464646464646464646464646464646464646464610464610464646464646
        46464646464646464646464646464646464646464646469100001BDFDFDFDFF6
        04876D6DBCA0A5A5A55CBC6D6D87086BDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF1B00001B1B1B1B1B60
        9C3E3E6D6DF2875CA5BC3E873E3EA3081B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1B29
        3E3E3E6D6D3E0058BC3E00583E3E3E111F1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B6087
        173E6D6D6DBC6D222200586D6D3E178708DA1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B233E
        173E6D6D6D6DBC6D22003E6D6D3E173E44261B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B234C3E
        3E6D6D5B11111187A400176D6D6D3E175BDD1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B234C17
        3E6D6D7E8989BF5B83722222876D3E175B631B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B234C38
        A0BCBCBC5C895C20208987932299A0387E631B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B234C14
        E484A5A5A5BE7E8484898DA538A51D147E631B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B2349B2
        A78484274C0BAF7171BE44848484E4B229521B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1BDD84
        657171592727BEF34989AA717171B284271B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1BB04C
        C1949465040BBE0BBE0B6594B294659A691B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1BDD
        843265C132323232323232C165C184AA1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1B52
        49713232329F9F9F9F9F3232327149F91B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1B1B
        524971329F9F9F9F9F9F9F327149F91B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1B1B
        1B465E4C71C19FDE9FC1714C6C461B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B00001B1B1B1B1B1B
        1B1B1B46DDF34C4C4C49BD461B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B
        1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B0000}
      Description.Text = 
        'Click here to open, save, print or perform any  other action you' +
        ' see in the menu.'
      UseStandardFooter = True
    end
    object stOpen: TdxScreenTip
      Header.Text = 'Open'
      Description.Text = 'Open the existing document.'
      Footer.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000CD81
        45FFCC7E41FFC97A3CFFC77637FFC47232FFC26E2EFFC06B2AFFBE6927FFBD66
        24FFBC6422FFBB6320FFBA611EFFBA611EFFBA611EFF0000000000000000EEAE
        76FFFFEDCAFFFFE9C3FFFFE8C0FFFFE6BDFFFFE6BBFFFFE4B8FFFFE3B5FFFFE2
        B2FFFFE1AFFFFFE0ACFFFFDEA9FFFFE5B1FFBA611EFF0000000000000000EEAF
        77FFFFE9CBFFFFE6C4FFFFE5C1FFFFE3BDFFFFE2BAFFFFE0B7FFFFDEB4FFFFDE
        B0FFFFDCADFFFFDAAAFFFFD9A6FFFFDFACFFBA621FFF0000000000000000EFB0
        79FFFFEDD3FFD7AB74FFE7BA7FFFE1B885FFC5A077FFA4825FFF9C7B59FFAA8C
        68FFD4B48BFFF9D8ABFFFFDCADFFFFE2B2FFBB6421FF0000000000000000EFB2
        7CFFFFF1DCFFD4A25AFFD6BB9CFFB48757FFBC762DFFCC8935FFCD9846FF9F80
        49FF705535FFB29771FFF8D9ADFFFFE5B9FFBD6624FF0000000000000000F0B5
        81FFFFF3E1FFDCA34BFF9C6522FFDA8E2EFFF59B34FFE59337FFEA9F3EFFFFCD
        5EFFDCBC74FF7B5F3DFFD1B28BFFFFE8C0FFBE6927FF0000000000000000F1B8
        86FFFFF4E5FFDFB87CFFF9B033FFEF9F2BFFB26F21FFB69370FFD6B38EFFBF7F
        37FFDFAB52FFA78652FFB1916CFFFFEAC7FFC06C2CFF0000000000000000F2BC
        8CFFFFF5E8FFF0E2CDFFE7B34AFFEEA529FFBD7623FF9A5D1FFFA26422FFB26E
        2AFFB87027FFA16629FF9A7859FFFFEDCEFFC27031FF0000000000000000F3C1
        92FFFFF6EBFFEDE0CCFFEAD3A1FFF5C143FFCC8922FFE2A85BFFE7B069FFD389
        2FFFF99F35FFC88131FFA3866BFFFFEED1FFC57537FF0000000000000000F4C5
        9AFFFFF8EFFFE2D1B7FFECD5A0FFF7E2A6FFC09A41FF987752FFB69160FFD18B
        28FFF7A433FFAD793CFFDBC4A8FFFFEFD5FFC97B3FFF0000000000000000F5CB
        A2FFFFFAF2FFFFF7EDFFE3D3B0FFF0DBA0FFF5DC85FFD7AF3CFFDFA228FFF0A8
        2AFFD69639FFC2A47DFFF8E5CCFFFFF0D7FFCD8248FF0000000000000000F7D0
        AAFFFFFBF5FFFFF9F1FFFDF5ECFFDECDAAFFE3D090FFE9D26AFFE8BC44FFE6B6
        49FFC4A579FFE4CEAAFFE4C99DFFFFF1D9FFD18A50FF0000000000000000F8D6
        B2FFFFFCF8FFFFFAF4FFFFFAF3FFFFF9F2FFF9F2E7FFF0E4D4FFEBDBC3FFEDD9
        B4FFE5CA97FFE4C791FFE9D2B2FFFFF1DBFFD6935CFF0000000000000000F9DB
        BAFFFFFDFBFFFFFBF6FFFFFBF5FFFFFAF5FFFFFAF4FFFFFAF3FFFFFAF3FFFFF8
        F0FFFFF7ECFFFFF3E6FFFFF1DEFFFFF2DEFFDB9C68FF0000000000000000FBE0
        C5FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFEFCFFFFFC
        F9FFFFFBF4FFFFF8EEFFFFF5E7FFFFF5E5FFDEA573FF0000000000000000FCE1
        C2FFFBE3C9FFFBE1C4FFFBDEBFFFFBDDBCFFFADBB8FFFAD9B5FFFAD7B2FFFAD6
        B0FFF9D4ACFFF9D3AAFFF8D0A6FFF8CEA3FFE4AC79FF00000000}
      Footer.Text = 'visit to ww.dfetdl'
      UseStandardFooter = True
    end
    object stPrint: TdxScreenTip
      Header.Text = 'Print'
      Description.Text = 'Print the document.'
    end
    object stBlue: TdxScreenTip
      Header.Text = 'Blue'
      Description.Text = 'Apply Blue Color Scheme.'
    end
    object stBlack: TdxScreenTip
      Header.Text = 'Black'
      Description.Text = 'Apply Black Color Scheme.'
    end
    object stSilver: TdxScreenTip
      Header.Text = 'Silver'
      Description.Text = 'Apply Silver Color Scheme.'
    end
    object stFontDialog: TdxScreenTip
      Header.Text = 'Font Dialog'
      Description.Text = 'Show the Font dialog box.'
    end
    object stHelpButton: TdxScreenTip
      Header.Text = 'Help Button'
      Description.Text = 
        'This button is displayed when the OnHelpButtonClick event handle' +
        'r is assigned.'
    end
    object stParagraphDialog: TdxScreenTip
      Header.Text = 'Paragraph dialog'
      Description.Text = 'Show the Paragraph dialog box.'
    end
    object stAlignJustify: TdxScreenTip
      Header.Text = 'Justify'
      Description.Text = 
        'Distribute your text evenly between the marginns.'#13#10#13#10'Justified t' +
        'ext gives your document clean, crisp edges so it looks more poli' +
        'shed.'
    end
    object stFontSuperscript: TdxScreenTip
      Header.Text = 'Superscript'
      Description.Text = 'Type very small letters just above the line of text.'
    end
    object stFontSubscript: TdxScreenTip
      Header.Text = 'Subscript'
      Description.Text = 'Type very small letters just below the line of text.'
    end
    object stIncreaseFontSize: TdxScreenTip
      Header.Text = 'Increase Font Size'
      Description.Text = 'Make your text a bit bigger.'
    end
    object stDecreaseFontSize: TdxScreenTip
      Header.Text = 'Decrease Font Size'
      Description.Text = 'Make your text a bit smaller.'
    end
    object stNumbering: TdxScreenTip
      Header.Text = 'Numbering'
      Description.Text = 'Create a numbered list.'
    end
    object stLineSpacing: TdxScreenTip
      Header.Text = 'Line and Paragraph Spacing'
      Description.Text = 
        #13#10'Choose how much space appeares beteewn lines of text or betwee' +
        'n paragraphs.'
    end
    object stMultiLevelList: TdxScreenTip
      Header.Text = 'Multilevel List'
      Description.Text = 'Create a multilevel list to organize items or create an outline.'
    end
    object stDoubleUnderline: TdxScreenTip
      Header.Text = 'Double Underline'
      Description.Text = 'Double underline the selected text.'
    end
    object stStrikethrough: TdxScreenTip
      Header.Text = 'Strikethrough'
      Description.Text = 'Draw a line through the middle of the selected text.'
    end
    object stDoubleStrikethrough: TdxScreenTip
      Header.Text = 'Double Strikethrough'
      Description.Text = 'Double strikethrough.'
    end
    object stFontName: TdxScreenTip
      Header.Text = 'Font'
      Description.Text = 'Pick a new font for your text.'
    end
    object stFontSize: TdxScreenTip
      Header.Text = 'Font Size'
      Description.Text = 'Change the size for your text.'
    end
    object stFontColor: TdxScreenTip
      Header.Text = 'Font Color'
      Description.Text = 'Change the color for your text.'
    end
    object stShowWhitespace: TdxScreenTip
      Header.Text = 'Show/Hide '#182
      Description.Text = 'Show paragraph marks and other hidden formatting symbols.'
    end
    object stiItemSymbol: TdxScreenTip
      Header.Text = 'Insert a Symbol'
      Description.Text = 'Add symbols that are not on your keyboard.'
    end
    object stIncrementIndent: TdxScreenTip
      Header.Text = 'Increase Indent'
      Description.Text = 'Move your paragraph closer to the margin.'
    end
    object stDecrementIndent: TdxScreenTip
      Header.Text = 'Decrease Indent'
      Description.Text = 'Move your paragraph father away from the margin.'
    end
    object stSave: TdxScreenTip
      Header.Text = 'Save'
      Description.Text = 'Save the Document.'
    end
    object stSaveAs: TdxScreenTip
      Header.Text = 'Save As'
      Description.Text = 
        'Open the Save As dialog box to select a file format and save the' +
        ' document to a new location.'
    end
    object stUndo: TdxScreenTip
      Header.Text = 'Undo.'
      Description.Text = 'Undo.'
    end
    object stRedo: TdxScreenTip
      Header.Text = 'Redo'
      Description.Text = 'Redo.'
    end
    object stSelectAll: TdxScreenTip
      Header.Text = 'Select All'
      Description.Text = 'Select All.'
    end
    object stInsertTable: TdxScreenTip
      Header.Text = 'Table'
      Description.Text = 'Insert a table into the document.'
    end
    object stInlinePicture: TdxScreenTip
      Header.Text = 'Inline Picture'
      Description.Text = 'Insert inline picture from a file.'
    end
    object stHyperlink: TdxScreenTip
      Header.Text = 'Hyperlink'
      Description.Text = 
        'Create a link to a Web page, a picture, an e-mail address, or a ' +
        'program.'
    end
    object stSymbol: TdxScreenTip
      Header.Text = 'Symbol'
      Description.Text = 
        'Insert symbols that are not on your keyboard, such as copyright ' +
        'symbols, trademark sybols, paragraph marks and Unicode character' +
        's.'
    end
    object stHorizontalRuler: TdxScreenTip
      Header.Text = 'Horizontal Ruler'
      Description.Text = 
        'View the horizontal ruler, used to measure and line up objects i' +
        'n the document.'
    end
    object stVerticalRuler: TdxScreenTip
      Header.Text = 'Vertical Ruler'
      Description.Text = 
        'View the vertical ruler, used to measure and line up objects in ' +
        'the document.'
    end
    object stZoomOut: TdxScreenTip
      Header.Text = 'Zoom Out'
      Description.Text = 'Zoom Out.'
    end
    object stZoomIn: TdxScreenTip
      Header.Text = 'Zoom In'
      Description.Text = 'Zoom In.'
    end
    object stTableProperties: TdxScreenTip
      Header.Text = 'Properties'
      Description.Text = 
        'Show the Table Properties dialog box to change advanced table pr' +
        'operties, such as indentation and text wrapping options.'
    end
    object stDelete: TdxScreenTip
      Header.Text = 'Delete'
      Description.Text = 'Delete rows, columns, cells, or the entire Table.'
    end
    object stInsertRowsAbove: TdxScreenTip
      Header.Text = 'Insert Rows Above'
      Description.Text = 'Add a new row directly above the selected row.'
    end
    object stInsertRowsBelow: TdxScreenTip
      Header.Text = 'Insert Rows Below'
      Description.Text = 'Add a new row directly below the selected row.'
    end
    object stInsertColumnsToTheLeft: TdxScreenTip
      Header.Text = 'Insert Columns to the Left'
      Description.Text = 'Add a new column directly to the left of the selected row.'
    end
    object stInsertColumnsToTheRight: TdxScreenTip
      Header.Text = 'Insert Columns to the Right'
      Description.Text = 'Add a new column directly to the right of the selected row.'
    end
    object stSplitCells: TdxScreenTip
      Header.Text = 'Split Cells'
      Description.Text = 'Split the selected cells into multiple new cells.'
    end
    object stBorders: TdxScreenTip
      Header.Text = 'Borders'
      Description.Text = 'Customize the borders of the selected cells.'
    end
    object stCellsAlignTopLeft: TdxScreenTip
      Header.Text = 'Align Top Left'
      Description.Text = 'Align text to the top left corner of the cell.'
    end
    object stCellsAlignCenterLeft: TdxScreenTip
      Header.Text = 'Align Center Left'
      Description.Text = 
        'Center text vertically and align it to the left side of the cell' +
        '.'
    end
    object stCellsAlignBottomLeft: TdxScreenTip
      Header.Text = 'Align Bottom Left'
      Description.Text = 'Align text to the bottom left corner of the cell.'
    end
    object stCellsAlignTopCenter: TdxScreenTip
      Header.Text = 'Align Top Center'
      Description.Text = 'Center text and align it to the top of the cell.'
    end
    object stCellsAlignCenter: TdxScreenTip
      Header.Text = 'Align Center'
      Description.Text = 'Center text horizontally and vertically within the cells.'
    end
    object stCellsAlignBottomCenter: TdxScreenTip
      Header.Text = 'Align Bottom Center'
      Description.Text = 'Center text and align it to the bottom of the cell.'
    end
    object stCellsAlignTopRight: TdxScreenTip
      Header.Text = 'Align Top Right'
      Description.Text = 'Align text to the top right corner of the cell.'
    end
    object stCellsAlignCenterRight: TdxScreenTip
      Header.Text = 'Align Center Right'
      Description.Text = 
        'Center text vertically and align it to the right side of the cel' +
        'l.'
    end
    object stCellsAlignBottomRight: TdxScreenTip
      Header.Text = 'Align Bottom Right'
      Description.Text = 'Align text to the bottom right corner of the cell.'
    end
    object stInsertCells: TdxScreenTip
      Header.Text = 'Insert Cells'
      Description.Text = 'Insert Cells'
    end
    object stAutoFit: TdxScreenTip
      Header.Text = 'AutoFit'
      Description.Text = 
        'Automatically resize the column widths based on the text in them' +
        '.'#13#10#13#10'You can set the table width based on the window size or con' +
        'vert it back to use fixed column widths.'
    end
    object stSplitTable: TdxScreenTip
      Header.Text = 'Split Table'
      Description.Text = 
        'Split the table into two tables.'#13#10'The selected row will become t' +
        'he first row of the new table.'
    end
    object stMergeCells: TdxScreenTip
      Header.Text = 'Merge Cells'
      Description.Text = 'Merge the selected cells into one cell.'
    end
    object stTextHighlight: TdxScreenTip
      Header.Text = 'Text Highlight Color'
      Description.Text = 'Make text look like it was marked with a highlighter pen.'
    end
    object stPage: TdxScreenTip
      Header.Text = 'Page'
      Description.Text = 'Start the next page at the current position.'
    end
    object stSimpleView: TdxScreenTip
      Header.Text = 'Simple View'
      Description.Text = 
        'View the document as a simple memo.'#13#10#13#10'This view ignores the pag' +
        'e layout to draw attention to text editing.'
    end
    object stDraftView: TdxScreenTip
      Header.Text = 'Draft View'
      Description.Text = 
        'View the document as a draft to quickly edit the text.'#13#10#13#10'Certai' +
        'n elements of the document such as header and footers will not b' +
        'e visible in this view.'
    end
    object stPrintLayoutView: TdxScreenTip
      Header.Text = 'Print Layout'
      Description.Text = 'View the document as it will appear on the printed page.'
    end
    object stChangeCase: TdxScreenTip
      Header.Text = 'Change Case'
      Description.Text = 
        'Change all the selected text to UPPERCASE, lowercase, or other c' +
        'ommon capitalizations.'
    end
    object stColumns: TdxScreenTip
      Header.Text = 'Columns'
      Description.Text = 'Split text into two or more columns.'
    end
    object stBreaks: TdxScreenTip
      Header.Text = 'Breaks'
      Description.Text = 'Add page, section, or column breaks to the document.'
    end
    object stPageColor: TdxScreenTip
      Header.Text = 'Page Color'
      Description.Text = 'Choose a color for the background of the page.'
    end
    object stLineNumbers: TdxScreenTip
      Header.Text = 'Line Numbers'
      Description.Text = 
        'Add line numbers in the margin alongside of each line of the doc' +
        'ument.'
    end
  end
  object ppmFontColor: TdxRibbonPopupMenu
    BarManager = bmBarManager
    ItemLinks = <>
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 104
    Top = 208
  end
  object ppmTextHighlightColor: TdxRibbonPopupMenu
    BarManager = bmBarManager
    ItemLinks = <>
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 104
    Top = 264
  end
  object PrinterEngine: TdxPSEngineController
    Active = True
    Left = 192
    Top = 328
  end
  object Printer: TdxComponentPrinter
    CurrentLink = RichEditPrinterLink
    Version = 0
    Left = 264
    Top = 208
    object RichEditPrinterLink: TdxRichEditControlReportLink
      Component = RichEditControl
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.Header = 200
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      BuiltInReportLink = True
    end
  end
end
