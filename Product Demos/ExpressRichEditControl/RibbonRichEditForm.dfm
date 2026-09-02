inherited frmRibbonRichEditForm: TfrmRibbonRichEditForm
  Caption = 'Rich Edit Control Demo'
  ClientHeight = 606
  ClientWidth = 939
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  ExplicitWidth = 951
  ExplicitHeight = 644
  TextHeight = 13
  object RichEditControl: TdxRichEditControl [0]
    Left = 0
    Top = 167
    Width = 939
    Height = 412
    Align = alClient
    TabOrder = 3
    OnActiveViewChanged = recRichEditControlActiveViewChanged
    OnDocumentClosing = recRichEditControlDocumentClosing
    OnHyperlinkClick = recRichEditControlHyperlinkClick
    OnSelectionChanged = recRichEditControlSelectionChanged
    OnZoomChanged = recRichEditControlZoomChanged
    ExplicitWidth = 935
    ExplicitHeight = 411
  end
  inherited Ribbon: TdxRibbon
    Width = 939
    Height = 167
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
    ExplicitWidth = 935
    ExplicitHeight = 167
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
          ToolbarName = 'bmbInsertIllustrations'
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
    Top = 579
    Width = 939
    Height = 27
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
    ExplicitTop = 579
    ExplicitWidth = 939
    ExplicitHeight = 27
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
    PixelsPerInch = 96
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000000000
        000000000000000000000000000000000000B97B49FFB77946FFB67744FFB475
        42FFB37340FFB1713EFFB1703DFFAF6D3AFFAE6D39FF000000050000000C0000
        001100000014000000170000001A0000001DBD814EFFFFF4E9FFFEF3E8FFFEF3
        E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB1713DFF03263F7B054B7BE50554
        8BFF045189FF054F87FF044E85FF044D84FFC18655FFFFF5EBFFCB8D5EFFC88B
        5BFFC58858FFC38555FFC08352FFFDF0E2FFB57642FF065080E3198DBDFF17B8
        E6FF15B2E2FF13AEDEFF12AADBFF1297C4FFC58C5CFFFFF7EDFFFFF6ECFFFFF6
        ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB87A48FF065F96FF37CAEFFF1DBD
        E9FF1AB8E6FF16B4E2FF14B0DFFF139FCDFFCB9262FFFFF7EFFFE0A477FFDDA2
        74FFDA9F71FFD89C6EFFD5996BFFFAEADBFFBD7F4DFF07649BFF48D1F3FF23C2
        EDFF1FBEEAFF1DBAE7FF1AB7E5FF18A9D5FFCF9869FFFFF9F1FFFFF8F1FFFFF8
        F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC08553FF08699FFF59D8F6FF29C9
        F1FF27C4EEFF23C1ECFF22BFEAFF1EB4DFFFD39E70FFFFFAF4FFFFF9F2FFFEF5
        EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC58B5AFF096FA5FF72E0F9FF3AD0
        F5FF34CDF2FF2EC9F0FF29C5EEFF26BDE6FFD7A477FFFFFAF5FFFEF7EFFFFCF2
        EAFFFAEDE2FFF7E9DAFFCE9667FFCB9363FFC99160FF0A75ABFF8DE8FCFF4ED9
        F9FF48D6F7FF41D2F5FF39CFF3FF30C9EEFFDBAA7EFFFEF8F1FFFCF3EBFFFAEE
        E4FFF7E9DBFFF5E4D4FFD19C6EFFFFF9F3FFD5D0CAD50B7BB1FFA6EEFDFF63E0
        FCFF5EDDFBFF55DAF9FF4CD7F8FF43CFF2FFDFB085FFDEAE81FFDCAC7FFFDAA9
        7DFFD9A77AFFD7A476FFD6A274FFD5D1CCD5171716170C83B6FFBBF3FEFF7BE7
        FEFF74E5FDFF69DCF5FF59C2DDFF4FB3D0FF48B6D3FF40BDDDFF38C4E6FF34CB
        EEFF085C92FF000000150000000000000000000000000E8ABDFFCFF7FFFF91EC
        FFFF77C8DBFF61A7BCFF5BA3B8FF58AAC2FF53B4CEFF4CBCD9FF43C5E4FF3BCD
        EFFF096196FF000000110000000000000000000000001091C3FFDFFAFFFFC085
        4AFFBD8045FFBB7C3FFFB8783AFFB57535FFB37132FFB16F2FFFAF6C2DFF43D1
        F1FF09669CFF0000000E0000000000000000000000001199CBFFEAFBFFFFE9C0
        8FFFE6B986FFE2B37DFFDFAD74FFDCA76CFFD9A166FFD69D5FFFB9793CFF4DDF
        FEFF086CA1FF0000000B000000000000000000000000118DB8E083CDE7FFEEFC
        FFFFEAFAFDFFF0D5AFFFEFCB9DFFECC494FFE5C193FFA8EFFDFF94EDFEFF45AF
        D5FF096593E300000007000000000000000000000000094A5F701190BBE013A1
        D1FF129BCDFF7BBBC8FFFCE5C1FFF0DBB8FF7DA3A3FF0E85B9FF0D81B5FF0B6E
        9BE106364C7500000003000000000000000000000000}
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000B0000001A000000200000001500000005000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00010000000C0E0C096336271DDE412D1FF60B0A09B601010129000000090000
        0001000000000000000000000000000000000000000000000000000000000000
        00040808073F6C5A4EF2F2CDAAFFFFD1A3FF533C2DFF101010D3030303470000
        000E0000000100000000000000000000000000000000000000050000000B0000
        00121616158CD5C3B5FFFFE9D2FFFFE5C9FF8F735EFF414344FF1D1E1EE90505
        056200000014000000030000000000000000000000000808083F1A1614C60F0D
        0D90171717B4F3EAE3FFFFF1E5FFFFEFDFFFA19285FF8C8C8CFF787878FF2828
        28F8070707880000001A000000040000000000000000343332D0E7D7C7FF6755
        47FF2F2F2FFFBAB8B7FFFFFFFDFFE6DFD9FFBCB8B5FFCBCBCBFFB5B5B5FF8C8C
        8CFF1D1D1DFF121212A90101012100000007000000017B7C7BF8FFFFFFFFA89C
        93FF8A8A8AFF656565FF8A8989FFBABABAFFE1E3E3FFE7E7E7FFE1E1E1FFBCBC
        BCFF6D6D6DFF686868FF222222C6040404350000000B747474F0E3E4E4FFD0D0
        D0FFE0E0E0FFC3C3C3FF6A6A6AFF646464FFA8A8A8FFE0E0E0FFF0F0F0FFD4D4
        D4FFD1D1D1FFC4C4C4FF9C9C9CFF464646E20E0E0E523C3C3C656F6F6FDABCBC
        BCFFDCDCDCFFF0F0F0FFC4C4C4FF787878FF585858FF707070FFAEAEAEFFE0E0
        E0FFF2F2F2FFEBEBEBFFE3E3E3FFCCCCCCFF666666E500000000030303052929
        29494D4D4D86878787D7BCBCBCFBD9D9D9FFC4C4C4FF9B9B9BFF9E9E9EFF9E9E
        9EFFBFBFBFFFE9E9E9FFF3F3F3FFF3F3F3FFA9A9A9FB00000000000000000000
        000000000000010101012424243D464646798D8D8DCCB7B7B7F4D4D4D4FFCCCC
        CCFFA8A8A8FF8E8E8EEDC4C4C4F9DADADAFF808080BD00000000000000000000
        000000000000000000000000000000000000020202031C1C1C29424242717D7D
        7DBB969696DC2727273D25252539474747721414141C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002D28
        24FF2A2622FF282420FF26211EFF241F1BFF211D19FF1F1B17FF1D1915FF1B18
        14FF1A1513FF181411FF161310FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000332E2AFF302B28FF2E2925FF2B2723FF292420FF27221EFF2420
        1CFF221E1AFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000433D
        39FF403B37FF3E3935FF3B3632FF393430FF36312EFF342F2BFF312C28FF2F2A
        26FF2C2723FF2A2621FF27231FFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000048433FFF46403CFF443E3AFF413C38FF3E3A36FF3C3733FF3934
        31FF37322EFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005651
        4DFF544F4BFF524D49FF504B47FF4E4844FF4B4642FF494440FF47413EFF443F
        3BFF423C38FF3F3A36FF3D3834FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006036
        0DD273400EFF5C330CCD0000000000000000000000000000000000000000160C
        02345A3007D7693807FF683807FF000000000000000000000000000000000000
        000055300CBA2917065A00000000000000000000000000000000000000000D07
        021E6A3A09FC693909FC0A060118000000000000000000000000000000000000
        0000271606545A330DC30000000000000000000000000000000000000000391F
        06846D3B09FF482707AB00000000000000000000000000000000000000000000
        0000020101036B3D10E7120B0327000000000000000000000000030201066538
        0BE76E3C0BFF1D10034200000000000000000000000000000000000000000000
        0000000000003F240A8743260A9000000000000000000000000027160557703E
        0DFF5D330AD50000000000000000000000000000000000000000000000000000
        00000000000010090321784512FF774411FF754210FF74420FFF73410FFF7240
        0EFF301B066C0000000000000000000000000000000000000000000000000000
        0000000000000000000057330EB72D1A076000000000150C032D754110FF6E3D
        0FF30704010F0000000000000000000000000000000000000000000000000000
        00000000000000000000271707515E370FC60000000048290B99764311FF4527
        0A96000000000000000000000000000000000000000000000000000000000000
        00000000000000000000020101036F4112E71C100539734212F3774412FF150C
        032D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003F250B815D360FC17A4613FF5D350EC30000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F09031E7B4714FC7B4713FF2A1807570000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000058340FB4764413F0030201060000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
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
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 60
      FloatClientHeight = 42
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000251600002516000000000000000000000000000000000000CB7E
        41FFCA7C3EFFC87738FFC57435FFC37231FFC26F2EFFC16D2CFFBF6A29FFBF68
        27FFBD6724FFBC6623FFBB6320FF00000000000000000000000000000000EC96
        36FFFFECC9FFFFE7C0FFFFE6BCFFFFE5BAFFFFE4B6FFFFE3B3FFFFE1B0FFFFE0
        ADFFFFDFAAFFFFE6B1FFBD6624FF00000000000000000000000000000000EC98
        3AFFFFE9C9FFFFE4C0FFFFE2BCFFFFE1B8FFFFDFB5FFFFDEB2FFFFDCAEFFFFDB
        ABFFFFD9A7FFFFE0ADFFBE6827FF00000000000000000000000000000000ED9B
        40FFFFECD1FFFFE8CAFFF5BB78FFE8881CFFE8871BFFE8871BFFE8881CFFF8C1
        81FFFFDCAEFFFFE3B3FFBF6B2AFF00000000000000000000000000000000EE9F
        46FFFFEFDAFFFFECD3FFED9B41FFEA8F29FFFBECD9FFFBEAD7FFE9891FFFF0A6
        53FFFFDFB5FFFFE5BAFFC26F2DFF00000000000000000000000000000000EEA4
        4EFFFFF2E0FFFFEFDAFFEFA149FFEC9636FFFFFFFFFFFFFFFFFFE98B23FFF0A8
        56FFFFE3BCFFFFE8C0FFC37233FF00000000000000000000000000000000F0A8
        56FFFFF3E4FFFFF1DEFFF2AD5FFFEC912BFFEC993BFFEB9637FFE8861AFFF3B6
        70FFFFE6C3FFFFEBC8FFC77638FF00000000000000000000000000000000F1AD
        60FFFFF5E7FFFFF3E2FFF5BD7DFFF09734FFF2B979FFF2B574FFE8871BFFEB94
        33FFFDE2BEFFFFEDCEFFC97C40FF00000000000000000000000000000000F2B3
        6CFFFFF6EBFFFDE8CEFFF5B874FFF5A244FFFBE8D1FFFFFFFFFFF6D2A8FFE889
        1DFFE98C23FFFCE1B8FFCC8146FF00000000000000000000000000000000F4BB
        79FFF8CB97FFFAB464FFF9AD58FFF8A84FFFF3A042FFF6C893FFFFFFFFFFFDF2
        E6FFE8881CFFEC9B3FFFD0884FFF00000000000000000000000000000000F5C2
        86FFF8C079FFFCC078FFFBE5CBFFFBE0C0FFF5A64FFFF3A147FFFFFAF5FFFFFF
        FFFFED9B3EFFEB9534FFD49059FF00000000000000000000000000000000F7CB
        95FFF9C78AFFFED492FFFDEAD3FFFFFFFFFFFFF9F3FFFFF9F3FFFFFFFFFFFFFA
        F5FFEE942FFFEE9E44FFD99863FF00000000000000000000000000000000F9D3
        A4FFFFF4E8FFFBCB88FFFDD08EFFFAC587FFF9D1A2FFF8D1A1FFF9C182FFF6A6
        4DFFF09939FFFADAB0FFDEA26EFF00000000000000000000000000000000FADA
        B4FFFFFDFAFFFFF5E7FFF9C587FFFEC881FFFFC178FFFEBA6CFFFBAF5CFFF7AD
        5CFFFBDCB7FFFFF2DFFFE2AB7BFF00000000000000000000000000000000FBE2
        C2FFFFFFFFFFFFFEFDFFFFFEFDFFFFFEFCFFFFFEFCFFFFFDFAFFFFFBF6FFFFF8
        F0FFFFF5E8FFFFF5E6FFE8B487FF00000000000000000000000000000000FDE5
        C4FFFDE4C7FFFCE0BCFFFBDDB7FFFBDAAFFFFBD7A9FFF9D3A4FFF9D09DFFF9CC
        97FFF7C990FFF6C58BFFECBB8BFF0000000000000000}
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000CD8145FFCC7E
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
    object bmbInsertIllustrations: TdxBar
      Caption = 'Illustrations'
      CaptionButtons = <>
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
      CaptionButtons = <>
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
    object bbRadialMenuAligns: TdxBarSubItem
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000310000
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
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000000000310000
        003400000036000000380000003B0000003D0000004000000043000000440000
        00470000004A0000004C00000050000000520000000000000000000000140000
        0016000000190000001B0000001D0000001E0000002100000023000000260000
        00280000002A0000002D0000002F000000320000000000000000000000030000
        000400000005000000060000000700000008000000090000000B0000000C0000
        000D0000000F0000001100000013000000150000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000683C0FDC774411FF5E350DCB0000000000000000000000002B1805605C33
        0AD16F3D0BFF6E3C0AFF00000000000000000000000000000000000000000000
        0000010100036D3F10E7120A0327000000000000000000000000030200066639
        0CE7703E0CFF1D10034200000000000000000000000000000000000000000000
        00000000000041250A8744280A90000000000000000000000000281705577341
        0EFF5F350BD50000000000000000000000000000000000000000000000000000
        000000000000100903217A4713FF794512FF784511FF774410FF764210FF7441
        0FFF311B066C0000000000000000000000000000000000000000000000000000
        0000000000000000000058340EB72E1B076000000000150C032D774411FF7040
        0FF30704010F0000000000000000000000000000000000000000000000000000
        0000000000000000000028170751603810C600000000492A0B99784512FF4628
        0A96000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010003714213E71C100439754412F37A4612FF150C
        032D000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000040250B815F3710C17C4814FF5E360FC30000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000F09031E7D4916FC7E4915FF2B1907570000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005A3510B4784615F0030200060000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
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
      424D360400000000000036000000280000001000000010000000010020000000
      0000000000002516000025160000000000000000000000000000CD8145FFCC7E
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
    StandardFooter.Text = 'Visit www.devexpress.com'
    Left = 104
    Top = 328
    PixelsPerInch = 96
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
      Description.Glyph.SourceDPI = 96
      Description.Glyph.Data = {
        424D568700000000000036000000280000005E0000005C000000010020000000
        00000000000025160000251600000000000000000000FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00F4DACCFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFFC02FC00ECD2BCFFECD2BCFFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFF4D2B4FFECD2
        BCFFECD2BCFFECD2BCFFF4D2B4FFECD2BCFFECD2BCFFECD2BCFFD4BEB2FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFD4BEB2FFECD2BCFFECD2BCFFF4D2
        B4FFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2BCFFF4D2B4FFECD2
        BCFFF4D2B4FFECD2BCFFD4BEB2FFECD6BCFFECD6C4FFECD6C4FFECD6CCFFECD6
        C4FFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6CCFFF4D6
        BCFFECD6C4FFECD6C4FFECD6CCFFF4D6BCFFECD6C4FFECD6C4FFECD6C4FFF4DA
        C4FFD4C2ACFFECDAC4FFF4E6E2FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6
        F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6
        F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6
        F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6
        F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6
        F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFFCF6F9FFFCF2F4FFF4EE
        EEFFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6
        E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6
        E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6
        E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6
        E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6
        E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFECE6E4FFE4DEDCFFD4BEB2FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECE6ECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDAC4FFF4EEEEFFFCFA
        FCFFFCFAFCFFB4D6F4FFD4E6ECFFBCD6ECFF94BEE4FF94BEE4FFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFECE2DCFFD4C2ACFFECDACEFFFCEEECFFFCFAFCFFFCFAFCFF7CC2
        ECFFD4E6ECFF34B2FCFF24AAFCFF3C9AE4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4F6F9FFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2ACFFECDAC4FFF4EEEEFFFCFAFCFFFCFAFCFF84C2E9FFD4E2DCFF44C2
        FCFF24B2FCFF3CA2E4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECE2
        E4FFECE2DCFFECD6D4FFECDADCFFECDADCFFECDEDCFFFCF6F9FFECDADCFFF4EA
        ECFFECDEDCFFF4EEEEFFDCCAC5FFECDACEFFE4CAC4FFECE2E4FFECDADCFFECD6
        CCFFECE2E4FFECDADCFFF4E6E2FFFCF2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECE2DCFFD4BEB2FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFF84C6ECFFDCD6D8FF54C6FCFF34BAFCFF44AA
        E4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECD6D4FFDCCED4FFDCBE
        B2FFD4BEB2FFD4B2A2FFD4BAB4FFF4EEEEFFCCAA9CFFDCC6BCFFDCBAB0FFECE2
        E4FFCCAEA5FFDCC6C4FFD4B6B4FFD4BAACFFE4D2CAFFD4B2A2FFD4BEB2FFDCC2
        BCFFDCBEB2FFECDECDFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECE6E4FFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDAC4FFFCEEECFFFCFA
        FCFFFCFAFCFF84C6ECFFE4D6B4FF74D6FCFF44C2FCFF44B2ECFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFF4EEEEFFF4E6E2FFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFF4EAECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4EAECFFFCFAFCFFFCFAFCFFF4F2F4FFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECE2DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFF84C2
        E9FFECC694FFACD2CCFF6CCAECFF5CBEF4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFF4E2DEFFF4E2DEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2ACFFECDAC4FFF4EEEEFFFCFAFCFFFCFAFCFFBCE2FCFF84CEF4FF84CE
        F4FF84CEF4FF94DAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFD4B6
        AAFFD4C2BCFFCCB2A8FFC49E88FFFCEEDCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECE6E4FFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFECE2DCFFD4BEB2FFECDA
        CEFFFCEEECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFD4BAACFFECD6D4FFE4D6
        D4FFCCA69CFFFCF2ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4F6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDAC4FFF4EEEEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEA
        ECFFECEAECFFECE2DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4F6F9FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2
        F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2
        F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2
        F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2F4FFF4F2
        F4FFF4F2E4FFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFECE2
        DCFFD4C2B4FFECDAC4FFFCEEECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EADCFFECEAECFFECEAECFFECEAECFFECE2DCFFD4BEB2FFECDA
        CEFFF4F2F4FFFCFAFCFFFCFAFCFFFCFAFCFFF4EEEEFFECEEF1FFECE6ECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDAC4FFF4EEEEFFFCFA
        FCFFFCFAFCFFD4CAC4FF9C9284FF9C968CFF9C8E84FFA49A94FFDCD6D8FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECE6
        E4FFF4EAE4FFE4E2E5FFD4C2ACFFECDACEFFFCEEECFFFCFAFCFFFCFAFCFFE4E2
        E5FFE4E6E7FFDCDADAFFD4CECEFFC4BAB4FFDCDADAFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECE6E4FFECEAECFFF4EAE4FFECEAECFFECEAECFFECE2
        DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFE4DAD7FFE4CEBAFFECD2
        BCFFE4CAA4FFD4CECEFFECEAECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFE4CA
        C4FFE4D6CCFFDCBAB0FFDCCEC9FFD4B2ACFFF4E2DEFFD4BEBCFFE4CECAFFCCA6
        8CFFECE6ECFFDCC2BCFFD4C2B4FFDCBEB2FFE4CAC4FFCCAEA5FFECDACEFFE4D6
        D4FFDCCAC5FFD4B2ACFFD4B6AAFFDCC6BCFFD4B6AAFFDCCAC5FFCCA69CFFD4B6
        AAFFE4DAD7FFECD6CCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECE2DCFFD4C2ACFFECDE
        CDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCEACFFFFCEACFFFF4D2A4FFFCF2
        ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECD2CCFFECDEDCFFECE2
        E4FFECE2E4FFECDACEFFFCF2F4FFDCC6C4FFECDECDFFF4E6ECFFFCFAFCFFECDE
        DCFFFCF6F9FFF4E2DEFFF4EAECFFF4E6E2FFF4E6ECFFECDACEFFECEAECFFECD2
        CCFFF4EEEEFFF4E2DEFFF4F2F4FFECE2E4FFF4EAECFFF4E6E2FFECE6E4FFF4E2
        DEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE6E4FFECEE
        F1FFECE6E4FFECEAECFFECEAECFFE4E2E5FFD4C2B4FFECDAC4FFFCEEECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCF2E4FFFCF2E4FFFCDEC4FFFCF6ECFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EA
        E4FFECEAECFFECE2DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCF2ECFFFCF6ECFFFCE6CCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFDCBEB2FFE4D6D4FFECDACEFFECD2CCFFDCCEC9FFE4CECAFFE4D2
        CAFFFCF2ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFC4A2
        94FFC4A294FFCCAA94FFCCAE94FFBC9A94FFF4D6BCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECE2DCFFD4C2B4FFECDA
        C4FFFCF2ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4EEEEFFFCF6F9FFFCF2
        F4FFFCFAFCFFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDACEFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFECEA
        ECFFECEAECFFECE2DCFFD4C2ACFFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFECE2
        DCFFD4C2B4FFECDACEFFFCEEECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFE4D2
        D4FFE4C6B9FFDCC6C4FFE4CECAFFDCC6BCFFE4D6D4FFDCBEB2FFECD6CCFFE4D2
        D4FFFCEEECFFDCCED4FFECD2CCFFDCC6BCFFF4E6E2FFE4DAD7FFECD2CCFFECE6
        E4FFDCBEB2FFE4D2CAFFE4CAC4FFF4EAECFFECDEDCFFD4B6AAFFE4CECAFFDCCE
        C9FFE4CABAFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2ACFFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFDCD2D4FFE4CAC4FFECDA
        CEFFECDEDCFFECDADCFFE4CECAFFE4D6D4FFE4D2CAFFDCCEC9FFF4EAE4FFECDA
        DCFFE4DAD7FFCCAEA5FFECDACEFFF4EEEEFFF4E2DEFFE4DAD7FFE4D6D4FFE4D6
        D4FFECE2E4FFF4EAECFFECD6CCFFE4D6D4FFE4D2CAFFECDADCFFECDACEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDACEFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFF4E6E2FFF4E6ECFFF4F2F4FFFCF2F4FFECE2
        E4FFF4EAE4FFF4EEEEFFFCEEECFFF4EAECFFF4E2DEFFECDADCFFF4EEEEFFFCEE
        ECFFF4EAECFFF4F2F4FFFCFAFCFFF4E6ECFFF4E6ECFFF4EAECFFF4EEEEFFFCFA
        FCFFECE2E4FFF4E6E2FFF4EEEEFFFCF2F4FFF4E2DEFFFCF6F9FFF4F2F4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFE4E2E5FFD4C2ACFFECDACEFFFCF2ECFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFE4D2D4FFD4B6AAFFD4B6AAFFD4BABCFFD4B6AAFFDCBAB0FFDCCE
        D4FFE4CAC4FFDCCAC5FFCCBAB4FFD4B2A2FFD4B6B4FFE4D2CAFFDCCAC5FFCCAE
        A5FFFCEEECFFD4BEBCFFCCB2A8FFDCC6BCFFD4AEA4FFECE6ECFFDCBEB2FFDCCA
        C5FFD4B2ACFFD4BABCFFCCAEA5FFDCCABCFFE4CAC4FFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECDE
        DCFFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4EAECFFF4EAE4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCF2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECE2DCFFD4C2ACFFECDE
        CDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFE4E2E5FFD4C2B4FFECDACEFFFCEEECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFECE2E4FFD4B2ACFFDCBEB2FFD4BAB4FFE4CA
        C4FFECE2DCFFD4B2A2FFC4A294FFD4B6AAFFE4CECAFFECDACEFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFECE2DCFFD4C2ACFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFCCAE94FFDCC6BCFFDCC2B4FFDCC6BCFFDCC2B4FFE4CECAFFDCCE
        C9FFD4B2A2FFDCC2B4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECE2DCFFD4C2B4FFECDA
        CEFFFCF2ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4F6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDACEFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFECEA
        ECFFECEAECFFECE2DCFFD4C2ACFFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCE6
        CCFFF4DAC4FFF4D6BCFFF4D6BCFFF4CEA4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFECE2
        DCFFD4C2B4FFECDACEFFFCEEECFFFCFAFCFFFCFAFCFFFCE6CCFFFCE6C4FFFCDE
        ACFFFCDEACFFF4CA94FFFCF2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFFCEEDCFFFCEEDCFFFCEACFFFFCE2BCFFF4CE
        A4FFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECE2E4FFECE2DCFFF4E6
        E2FFECE2DCFFECE2E4FFECDACEFFECDEDCFFF4EAECFFECE2DCFFF4F2F4FFECD6
        CCFFECE2E4FFECDACEFFF4EEEEFFF4E6E2FFF4EAECFFECDEDCFFECE2DCFFECDA
        DCFFECDACEFFF4E6E2FFECE2E4FFECDEDCFFFCF2ECFFF4EAECFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDECDFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCF2E4FFFCF2E4FFFCF2E4FFFCEED4FFFCDAB4FFFCF2ECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFECDACEFFE4D2D4FFD4BEBCFFDCC2BCFFD4BA
        ACFFD4B2ACFFDCBEB2FFECD6CCFFD4C2BCFFECE2DCFFD4B2ACFFD4BEB2FFCCAE
        A5FFDCC6C4FFDCC2B4FFECDADCFFD4B6AAFFDCC6C4FFDCCAC5FFE4D2D4FFD4BA
        ACFFD4BAB4FFD4B6AAFFDCCABCFFE4CAC4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFE4E2E5FFD4C2ACFFECDACEFFFCEEECFFFCFAFCFFFCFAFCFFFCF6
        ECFFFCF6ECFFFCF6ECFFF4D6BCFFECC69CFFFCF6F9FFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4EAECFFFCF2F4FFFCFAFCFFFCFAFCFFFCF6F9FFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCEEECFFFCEEECFFFCFAFCFFFCF6F9FFFCF2
        F4FFFCFAFCFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCF6ECFFFCFAFCFFFCF6
        ECFFFCE2D0FFFCE6CCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECE2
        DCFFF4E6E2FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECE2DCFFD4C2B4FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFFCF6ECFFFCF6ECFFFCF6ECFFFCF2ECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFD4BEBCFFBC9684FFD4B2
        A2FFCCAAA4FFDCBEB2FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFE4E2E5FFD4C2B4FFECDECDFFFCEEECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFD4BAACFFDCC6BCFFE4D6CCFFE4D6CCFFF4E6
        E2FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFECE2DCFFD4C2ACFFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4F6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECE2DCFFD4C2B4FFECDA
        CEFFFCF2ECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4F6
        F9FFFCF6F9FFFCFAFCFFFCFAFCFFFCF6F9FFF4F6F9FFFCF6F9FFFCFAFCFFFCFA
        FCFFFCFAFCFFF4F6F9FFFCFAFCFFFCF6F9FFFCFAFCFFECEEF1FFF4EEEEFFF4F2
        F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDECDFFF4EEEEFFFCFA
        FCFFFCFAFCFFF4EEEEFFE4E2E5FFDCDADAFFD4D6D4FFECE6ECFFF4F2F4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFDCD2D4FFD4CECEFFD4D6D4FFD4CECEFFE4DE
        E4FFE4DEE4FFCCCAC9FFDCD6D8FFCCCED4FFDCD2D4FFD4CECEFFF4F2F4FFDCD6
        D8FFD4CECEFFCCCED4FFD4D2CCFFD4CAC4FFCCCAC9FFD4D2D4FFDCD6D8FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECEA
        ECFFECEAECFFECE2DCFFD4C2B4FFECDACEFFF4EEEEFFFCFAFCFFFCF6F9FFECEA
        ECFFE4DEE4FFD4D2D4FFCCC6CCFFDCDADAFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFFCFAFCFFFCF6F9FFFCF6F9FFF4F2F4FFF4F6F9FFFCF6
        F9FFFCF6F9FFF4F6F9FFFCF6F9FFF4EEEEFFFCF6F9FFF4F6F9FFF4EAECFFFCF6
        F9FFFCF6F9FFFCFAFCFFFCF6F9FFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EADCFFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFFCEEECFFFCFAFCFFFCF6F9FFECEEF1FFECE6ECFFE4E2
        E5FFDCDEE4FFECE6ECFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECEA
        ECFFDCD6D8FFE4E2E5FFE4DEE4FFE4DEDCFFE4E6E7FFECE6ECFFE4E2E5FFF4F2
        F4FFECE6ECFFE4E2E5FFF4F2F4FFF4EEEEFFE4E2E5FFE4E2E5FFF4F6F9FFE4E2
        E5FFECEAECFFE4E6E7FFF4EEEEFFE4E6E7FFECEAECFFE4E2E5FFE4E2E5FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDA
        CEFFF4EEEEFFFCFAFCFFFCF6F9FFF4F2F4FFECEEF1FFF4EEEEFFECEAECFFECEA
        ECFFF4F2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFF4EAECFFD4D6D4FFDCDE
        E4FFDCDADAFFD4D6D4FFDCDADAFFD4D2D4FFDCDEE4FFECE6ECFFD4D6D4FFDCDA
        DAFFE4DEE4FFDCDEE4FFD4D2D4FFD4D2DCFFF4F2F4FFE4E6E7FFDCD6D8FFD4CE
        CEFFF4EAECFFECEAECFFE4DEE4FFE4DEDCFFE4E2E5FFFCF6F9FFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDECDFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCF2F4FFF4F6F9FFF4EEEEFFF4EEEEFFECEEF1FFF4F2F4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFFCFAFCFFFCFAFCFFFCF6
        F9FFF4F2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECE6
        E4FFF4EEE4FFE4E2E5FFD4C2B4FFECDACEFFFCEEECFFFCFAFCFFFCF6F9FFFCF6
        F9FFFCFAFCFFFCF6F9FFF4F6F9FFF4EEEEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFECEAECFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEEF1FFECE6E4FFECEAECFFF4EEE4FFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFD4D6
        D4FFBCC2C4FFC4BEBCFFBCBEC4FFCCC6CCFFDCDADAFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECE2DCFFD4C2B4FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFE4E2E5FFF4EEEEFFF4EE
        EEFFF4F2F4FFF4F2F4FFFCF6F9FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFE4E2E5FFD4C2B4FFECDECDFFFCEEECFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EA
        DCFFECEAECFFECE2DCFFD4C6BCFFECDACEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        E4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EA
        DCFFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFECE2DCFFD4C2B4FFECDA
        CEFFFCEEECFFFCFAFCFFBCE2FCFF74D6FCFF5CC6F4FF5CC2F4FF5CBEF4FF84CE
        F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDECDFFF4EEEEFFFCFA
        FCFFA4DEFCFF6CDEFCFF34D2FCFF2CCEFCFF34C6FCFF3CB6E4FFECF2F4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFCCAA9CFFDCD2CBFFDCC6
        BCFFD4C6BCFFDCCABCFFDCC6BCFFDCC2B4FFDCCABCFFDCC6BCFFE4D6CCFFDCC6
        BCFFE4D2CAFFE4DAD7FFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEAECFFF4EADCFFECEA
        ECFFF4EADCFFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFECE2DCFFD4C6BCFFECDACEFFF4EEEEFFFCFAFCFFBCEEFCFF9CEA
        FCFF84EEFCFF84EEFCFF94EEF4FF8CDAE4FFBCDAECFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFE4D6D4FFDCBAB0FFDCCEC9FFDCBAB0FFE4DAD7FFDCBEB2FFF4EA
        ECFFDCC2B4FFE4C6B9FFDCCAC5FFDCC6C4FFDCC2BCFFECE2DCFFD4AE9CFFECE2
        E4FFE4D2CAFFF4E6E2FFF4E6E2FFFCFAFCFFE4D6D4FFD4BEBCFFECD6C4FFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFF4F6F9FFECEAECFFD4C6BCFFDCCEC9FFD4BAACFFD4BEBCFFD4C2
        B4FFDCCEC9FFD4BAB4FFCCB6A8FFCCAEA5FFD4BEB2FFCCB2A8FFDCCAC5FFECDE
        CDFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFFCEEECFFFCFAFCFFCCF6FCFFA4F2F4FFFCF6F9FFF4F2
        E4FFFCEEDCFFF4DAC4FFECF2F4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECD6
        D4FFDCC6C4FFECDACEFFE4D2D4FFE4D2CAFFE4D6D4FFF4EEEEFFECD6D4FFECDA
        DCFFE4D2D4FFDCCAC5FFE4CAC4FFECDACEFFE4CECAFFECDEDCFFE4CAC4FFDCC6
        BCFFCCB2A8FFF4E6E2FFCCAAA4FFDCC2BCFFECDEDCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFF4EAE4FFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE6E4FFECEAECFFECEAECFFF4EAE4FFECEA
        ECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEA
        ECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEA
        ECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EAE4FFECEAECFFF4EADCFFECEA
        ECFFF4EAE4FFECEAECFFF4EADCFFECEAECFFF4EAE4FFE4E2E5FFD4C2B4FFECDA
        CEFFF4EEEEFFFCFAFCFFFCFAFCFFB4EEF4FFF4F2E4FFFCEEDCFFFCE2BCFFF4CA
        94FFF4EEE4FFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECE6
        E4FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECE6
        E4FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECE6
        E4FFECEAECFFECE6E4FFECEAECFFECE6E4FFECEAECFFECEAECFFECE6E4FFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE2DCFFD4C2B4FFECDECDFFF4EEEEFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCEEDCFFF4E6E2FFF4EEEEFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFE4D2CAFFDCCAC5FFE4C6B9FFF4EAECFFECE2
        DCFFF4EAECFFF4E2DEFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6F9FFECEAECFFECEAECFFECEAECFFECE6
        E4FFECEAECFFECEAECFFECE6E4FFF4EAE4FFECEAECFFECE6E4FFECEAECFFECE6
        E4FFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEAECFFECEA
        ECFFECEAECFFECEAECFFECEAECFFECE6E4FFECEEF1FFECE6E4FFECEAECFFECE6
        E4FFECEAECFFECE2DCFFD4C6BCFFECDECDFFFCEEECFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFD4B6AAFFC4AAA4FFB4866CFFC49E88FFC49E88FFCCA68CFFECE6
        E4FFFCEEECFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCF6F9FFECEAECFFCCAE94FFCCB2A8FFD4B6AAFFCCB6A8FFCCAA
        94FFDCD2CBFFDCCABCFFD4C2BCFFD4B6AAFFD4BAACFFD4BEB2FFCCB6A8FFD4BA
        ACFFCCB2A8FFCCAA94FFDCCABCFFCCBAACFFDCC2B4FFECE6E4FFECEAECFFF4EE
        E4FFECE6E4FFECEAECFFF4EEE4FFECE6E4FFECEAECFFF4EEE4FFECE6E4FFECEA
        ECFFF4EEE4FFECE6E4FFECEAECFFF4EEE4FFECE6E4FFECEAECFFF4EEE4FFECE6
        E4FFECEAECFFF4EEE4FFECEAECFFECEAECFFF4EADCFFECEEF1FFECEAECFFECE2
        DCFFD4C2B4FFECDECDFFF4EEEEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFECE2
        E4FFF4E2DEFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFA
        FCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCFAFCFFFCF6
        F9FFECEAECFFD4B2ACFFDCD2CBFFDCD2CBFFE4CECAFFDCCAC5FFDCD2CBFFDCC6
        BCFFD4C2BCFFD4C6C4FFE4D2CAFFDCCAC5FFE4DAD7FFDCC6BCFFDCCEC9FFDCCE
        C9FFDCCEC9FFD4BEB2FFE4D2CAFFECEAECFFECEAECFFECEAECFFECEAECFFF4EA
        DCFFECEAECFFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECEAECFFECEA
        ECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECEAECFFECEAECFFF4EAE4FFECEA
        ECFFECEAECFFF4EADCFFECEAECFFECEAECFFECE6E4FFECE6E4FFD4C2B4FFECDA
        CEFFECE2DCFFF4EAE4FFF4EAECFFF4EAE4FFF4EAECFFF4EAE4FFF4EAECFFF4EE
        E4FFF4EAECFFF4EEE4FFF4EAECFFF4EEE4FFF4EAECFFF4EAE4FFF4EAE4FFF4EA
        ECFFF4EAE4FFF4EAECFFF4EAE4FFF4EAECFFF4EAE4FFF4EAECFFF4EAE4FFF4EE
        EEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EE
        EEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EE
        EEFFF4EAE4FFF4EEEEFFF4EAE4FFF4EEEEFFF4EAE4FFECE6E4FFE4E2E5FFECE2
        DCFFECDECDFFECE2DCFFE4DEDCFFECE2DCFFECDECDFFECDEDCFFECE2DCFFECDE
        CDFFE4E2E5FFECDEDCFFECDECDFFECE2DCFFECE2DCFFECDEDCFFECE2DCFFECDE
        CDFFECE2DCFFECE2DCFFECE2DCFFECE2DCFFECE2DCFFE4DEDCFFECE2DCFFECE2
        DCFFE4DEDCFFECE2DCFFECE2DCFFE4DEDCFFECE2DCFFECE2DCFFE4DEDCFFECE2
        DCFFECE2DCFFE4DEDCFFECE2DCFFECE2DCFFE4DEDCFFECE2DCFFECE2DCFFE4DE
        DCFFECE2DCFFECE2DCFFECE2DCFFECDECDFFD4C2B4FFECD2CCFFECCEB8FFE4CE
        BAFFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFFCE2D0FFF4D6BCFFECCA
        ACFFCCAE94FFC49E88FFBC9684FFBC9684FFC49E88FFD4AE9CFFECCAACFFECCE
        B8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFECCEB8FFE4CEBAFFECCE
        B8FFECCEB8FFE4CEBAFFECCEB8FFECCEB8FFE4CEBAFFECCEB8FFECCEB8FFE4CE
        BAFFECCEB8FFECCEB8FFE4CEBAFFECCEB8FFECCEB8FFE4CEBAFFECCEB8FFECCE
        B8FFE4CEBAFFECCEB8FFECCEB8FFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCE
        B8FFE4CEBAFFECCEB8FFE4CEBAFFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFECCEB8FFE4CEBAFFE4CEBAFFE4CEBAFFECCE
        B8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCE
        B8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCE
        B8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCEB8FFE4CEBAFFECCE
        B8FFE4CEBAFFE4CEBAFFD4C2B4FFECDAC4FFECDACEFFF4DACCFFF4DACCFFF4DA
        CCFFF4DACCFFF4DACCFFFCE2BCFFECCAACFFC4AAA4FF74A2CCFF44C6FCFF34D2
        FCFF34D2FCFF34D2FCFF44C6FCFF6C96B4FF9C968CFFCCAE94FFECCEB8FFF4DA
        CCFFF4DACCFFF4DACCFFF4DACCFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DA
        CCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DA
        CCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DA
        CCFFECDACEFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDA
        CEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DACCFFECDACEFFF4DACCFFF4DA
        CCFFF4DACCFFECDACEFFF4DACCFFF4DACCFFECDACEFFF4DACCFFECDAC4FFF4DA
        C4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DAC4FFECDACEFFF4DA
        C4FFECDAC4FFF4DACCFFECDAC4FFF4DAC4FFECDACEFFF4DAC4FFECDAC4FFF4DA
        CCFFECDAC4FFF4DACCFFECDAC4FFF4DACCFFECDAC4FFF4DACCFFECDECDFFF4DA
        CCFFD4C6BCFFECDACEFFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFD4BAACFF84AABCFF2CCEFCFF34D2FCFF54C6FCFF6CDEFCFF6CDEFCFF6CDE
        FCFF34D2FCFF34D2FCFF34D2FCFF6C96B4FFBC9684FFE4C2B4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFECE2DCFFF4E2D4FFF4E2
        D4FFECE2DCFFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2
        D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFF4E2D4FFE4BAD4FFFC02
        FC00E4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFFCE2BCFFD4C2ACFF3CB6E4FF2CCE
        FCFF2CCEFCFF34D2FCFF54C6FCFF6CDEFCFF6CDEFCFF6CDEFCFF5CC6F4FF34D2
        FCFF2CCEFCFF2CCEFCFF3CB6E4FFBC9684FFECCAACFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CE
        BAFFE4CEBAFFE4CEBAFFE4CEBAFFE4CEBAFFFC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00F4D2B4FF6CCAECFF24B2FCFF24B2FCFF2CCEFCFF2CCE
        FCFF44C6FCFF3CB6E4FF5CC6F4FF6CDEFCFF34D2FCFF24B2FCFF3CB6E4FF24B2
        FCFF24B2FCFF649ACCFFBC9684FFFC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC0094AEBCFF24B2FCFF24B2FCFF24B2FCFF2CCEFCFF2CCEFCFF24B2FCFF2466
        E4FF248ADCFF34D2FCFF24B2FCFF2466E4FF248ADCFF24B2FCFF24B2FCFF24B2
        FCFF748A8CFFD4BAACFFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00F4D2B4FF3CB6E4FF24AA
        FCFF24B2FCFF2CCEFCFF2CCEFCFF2CCEFCFF34D2FCFF2CCEFCFF3492ECFF3492
        ECFF2466E4FF248ADCFF2CCEFCFF2CCEFCFF24B2FCFF24AAFCFF3CB6E4FFBC96
        84FFF4DAC4FFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00BCC2C4FF24B2FCFF24AAFCFF24B2FCFF2CCE
        FCFF2CCEFCFF2CCEFCFF2CCEFCFF34D2FCFF2CCEFCFF3492ECFF2466E4FF24B2
        FCFF2CCEFCFF2CCEFCFF24B2FCFF24AAFCFF24B2FCFF9C968CFFECCEB8FFFC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00BCC2C4FF8CDAE4FF24B2FCFF24B2FCFF2CCEFCFF2CCEFCFF6C96B4FF748A
        8CFF748A8CFF748A8CFF3CB6E4FF3C9AE4FF2466E4FF24AAFCFF2CCEFCFF2CCE
        FCFF2CCEFCFF24B2FCFF24AAFCFF6C96B4FFE4D6CCFFFC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00BCC2C4FF8CDA
        E4FF24AAFCFF24B2FCFF2CCEFCFF2CCEFCFF84AABCFFB4866CFFB4866CFF74A2
        CCFF6C96B4FF6482D4FF3C9EDCFF3492ECFF3492ECFF3CB6E4FF2CCEFCFF24B2
        FCFF24AAFCFF6C96B4FFE4D2CAFFFC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00BCC2C4FF8CDAE4FF74CEF4FF54C6
        FCFF34D2FCFF34D2FCFF34D2FCFF5CC6F4FFB4866CFF5CC6F4FF74BAECFF74BA
        ECFFB4866CFF3CB6E4FF4492ECFF3492ECFF34C6FCFF54C6FCFF74CEF4FF84AA
        BCFFE4D2CAFFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00BCC2C4FF8CDAE4FFA4DEFCFF84D2FCFF84EEFCFF6CDE
        FCFF6CDEFCFF6CDEFCFFC4967CFF84AABCFF84EEFCFF84EEFCFFB4866CFF94A2
        ACFF6CDEFCFF74CEF4FF6CDEFCFF74D6FCFFA4DEFCFF84AABCFFE4D2CAFFFC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00BCC2C4FFACD2CCFF9CEAFCFF94DAFCFF84EEFCFF84EEFCFFC4AAA4FF8CDA
        E4FFCCA68CFFA49A94FF94EEF4FF94EEF4FFC4967CFF9C968CFF84EEFCFF84EE
        FCFF84EEFCFF84D2FCFF9CEAFCFF94AEBCFFF4DACCFFFC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00E4D6
        CCFF84EEFCFFB4EEF4FF94EEF4FF94EEF4FFCCAE94FFC4AAA4FFC4AAA4FFC496
        7CFFBCDAECFFACD2CCFFB4866CFFC4BAB4FF94EEF4FF94EEF4FF94EEF4FF9CEA
        FCFF84EEFCFFC4AAA4FFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FCE2D0FF8CDAE4FFBCEE
        FCFFA4F2F4FFA4F2F4FFB4EEF4FFD4C2ACFFCCA68CFFC4967CFFCCA68CFFC496
        7CFFCCA68CFFB4EEF4FFA4F2F4FF9CEAFCFFA4F2F4FFB4EEF4FF84BEE4FFE4CA
        BAFFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00E4D6CCFF84EEFCFFCCF6FCFFB4EE
        F4FFBCEEFCFFCCF6FCFFCCF6FCFFCCF6FCFFCCF6FCFFCCF6FCFFCCF6FCFFCCF6
        FCFFBCEEFCFFB4EEF4FFBCEEFCFF84EEFCFFC4BAB4FFFC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00F4DACCFFACD2CCFF94EEF4FFCCF6FCFFCCF6FCFFCCF6
        FCFFDCF2FCFFDCF2FCFFDCF2FCFFDCF2FCFFDCF2FCFFCCF6FCFFCCF6FCFFCCF6
        FCFF94EEF4FFACD2CCFFECD6C4FFFC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00F4DACCFFACD2CCFF94EEF4FFCCF6FCFFDCF2FCFFDCF2FCFFDCF2
        FCFFDCF2FCFFDCF2FCFFDCF2FCFFDCF2FCFFCCF6FCFF94EEF4FFACD2CCFFECD6
        C4FFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00F4E2D4FFDCDADAFF8CDAE4FF94EEF4FFBCEEFCFFDCF2FCFFF4F6F9FFDCF2
        FCFFBCEEFCFF94EEF4FF8CDAE4FFD4DAC4FFF4E2D4FFFC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00F4E2D4FFE4D6CCFFBCDAECFF8CDAE4FF8CDAE4FF8CDAE4FFACD2CCFFDCD2
        CBFFF4E2D4FFFC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02
        FC00FC02FC00FC02FC00FC02FC00FC02FC00FC02FC00}
      Description.Text = 
        'Click here to open, save, print or perform any  other action you' +
        ' see in the menu.'
      UseStandardFooter = True
    end
    object stOpen: TdxScreenTip
      Header.Text = 'Open'
      Description.Text = 'Open the existing document.'
      Footer.Glyph.SourceDPI = 96
      Footer.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        0000000000002516000025160000000000000000000000000000CD8145FFCC7E
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
        'Distribute your text evenly between the margins.'#13#10#13#10'Justified te' +
        'xt gives your document clean, crisp edges so it looks more polis' +
        'hed.'
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
        #13#10'Choose how much space appears between lines of text or between' +
        ' paragraphs.'
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
        'symbols, trademark symbols, paragraph marks and Unicode characte' +
        'rs.'
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
    PixelsPerInch = 96
  end
  object ppmTextHighlightColor: TdxRibbonPopupMenu
    BarManager = bmBarManager
    ItemLinks = <>
    Ribbon = Ribbon
    UseOwnFont = False
    Left = 104
    Top = 264
    PixelsPerInch = 96
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
    PixelsPerInch = 96
    object RichEditPrinterLink: TdxRichEditControlReportLink
      Component = RichEditControl
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
