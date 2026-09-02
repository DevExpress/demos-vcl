inherited frmRibbonRichEditMain: TfrmRibbonRichEditMain
  Caption = 'Rich Edit Control Demo'
  ClientHeight = 534
  ClientWidth = 746
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 762
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 746
    Height = 165
    ApplicationButton.ScreenTip = stAppMenu
    ApplicationButton.Visible = False
    ColorSchemeAccent = rcsaBlue
    PopupMenuItems = [rpmiItems, rpmiQATPosition, rpmiQATAddRemoveItem, rpmiMinimizeRibbon, rpmiCustomizeRibbon, rpmiCustomizeQAT]
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
        Visible = True
      end>
    TabAreaSearchToolbar.Toolbar = bmbTabAreaSearchToolbar
    OnHelpButtonClick = dxRibbon1HelpButtonClick
    ExplicitWidth = 746
    ExplicitHeight = 165
    object rtFile: TdxRibbonTab [0]
      Caption = 'File'
      Groups = <
        item
          ToolbarName = 'bmbFileCommon'
        end
        item
          ToolbarName = 'barPrintAndExport'
        end>
      Index = 0
    end
    object rtHome: TdxRibbonTab [1]
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
          Caption = 'Styles'
          ToolbarName = 'dxBarStyles'
        end
        item
          ToolbarName = 'bmbHomeEditing'
        end>
      KeyTip = 'H'
      Index = 1
    end
    object rtSelection: TdxRibbonTab [2]
      Caption = 'Selection'
      Groups = <
        item
          ToolbarName = 'dxbSelectionTools'
        end>
      Index = 2
      ContextIndex = 0
    end
    object rtInsert: TdxRibbonTab [3]
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
    object rtPageLayout: TdxRibbonTab [4]
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
    object rtReferences: TdxRibbonTab [5]
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
    object rtMailings: TdxRibbonTab [6]
      Caption = 'Mail Merge'
      Groups = <
        item
          ToolbarName = 'bmbMailingsMailMerge'
        end
        item
          ToolbarName = 'bmbMergeTo'
        end>
      Index = 6
    end
    object rtReview: TdxRibbonTab [7]
      Caption = 'Review'
      Groups = <
        item
          ToolbarName = 'bmbReviewProofing'
        end
        item
          ToolbarName = 'bmbAutoCorrect'
        end
        item
          ToolbarName = 'bmbProtect'
        end
        item
          ToolbarName = 'bmbComment'
        end>
      Index = 7
    end
    object rtView: TdxRibbonTab [8]
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
    object rtHeaderAndFooterTools: TdxRibbonTab [9]
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
    object rtTableToolsLayout: TdxRibbonTab [10]
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
    object rtTableToolsDesign: TdxRibbonTab [11]
      Caption = 'Design'
      Groups = <
        item
          ToolbarName = 'bmbTableToolsTableStyleOptions'
        end
        item
          ToolbarName = 'bmbTableToolsTableStyles'
        end
        item
          Caption = 'Border Shadings'
          ToolbarName = 'bmbTableToolsBordersShadings'
        end>
      Index = 11
      ContextIndex = 2
    end
    object rtPictureTools: TdxRibbonTab [12]
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
    object rtAppearance: TdxRibbonTab [13]
      Caption = 'Appearance'
      Groups = <
        item
          ToolbarName = 'dxbRibbonOptions'
        end
        item
          Caption = 'Quick Access Toolbar'
          ToolbarName = 'dxbQATOptions'
        end
        item
          ToolbarName = 'dxbColorScheme'
        end
        item
          ToolbarName = 'barOptions'
        end
        item
          ToolbarName = 'barSearchOptions'
        end
        item
          ToolbarName = 'barInfo'
        end>
      KeyTip = 'A'
      Index = 13
      ContextIndex = 4
    end
    inherited dxRibbon1Tab1: TdxRibbonTab
      Active = False
      Groups = <
        item
          Caption = 'Options'
          ToolbarName = 'barOptions'
        end
        item
        end
        item
        end
        item
        end
        item
        end
        item
          Caption = 'Appearance'
          ToolbarName = 'barAppearance'
        end
        item
          ToolbarName = 'barPrintAndExport'
        end
        item
          ToolbarName = 'barInfo'
        end>
      Visible = False
      Index = 14
    end
  end
  inherited pnlAllArea: TcxGroupBox
    Top = 165
    ExplicitTop = 165
    ExplicitWidth = 746
    ExplicitHeight = 369
    Height = 369
    Width = 746
    inherited SplitterNavBar: TcxSplitter
      Height = 369
      ExplicitHeight = 402
    end
    inherited plClient: TcxGroupBox
      ExplicitWidth = 533
      ExplicitHeight = 369
      Height = 369
      Width = 533
    end
    inherited NavBarSite: TcxGroupBox
      ExplicitHeight = 402
      Height = 369
      inherited NavBar: TdxNavBar
        Height = 369
        ActiveGroupIndex = 0
        ExplicitHeight = 369
        object nvgHighlightedFeatures: TdxNavBarGroup [0]
          Caption = 'Highlighted Features'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        object nvgEditingFeatures: TdxNavBarGroup [1]
          Caption = 'Editing Features'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        object nvgLayoutAndNavigation: TdxNavBarGroup [2]
          Caption = 'Layout && Navigation'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        object nvgRestriction: TdxNavBarGroup [3]
          Caption = 'Restriction'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        object nvgMailMerge: TdxNavBarGroup [4]
          Caption = 'Mail Merge'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        object nvgDocumentManagement: TdxNavBarGroup [5]
          Caption = 'Document Management'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <>
        end
        inherited nbgSearch: TdxNavBarGroup
          Links = <>
        end
        inherited nbcSearch: TdxNavBarGroupControl
          Top = 337
          Width = 188
          ExplicitTop = 337
          ExplicitWidth = 188
          GroupIndex = 6
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 188
            ExplicitWidth = 188
            inherited edtNavBarFilterText: TcxTextEdit
              ExplicitWidth = 142
              Width = 142
            end
            inherited bClearNavBarFilter: TcxButton
              Left = 158
              ExplicitLeft = 158
            end
          end
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    Font.Name = 'Segoe UI'
    Categories.Strings = (
      'Default'
      'Home | Styles'
      'Page Layout | Page Setup'
      'Table Design | Table Styles')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.Images = dmMain.ilBarSmall
    ImageOptions.LargeImages = dmMain.ilBarLarge
    MenuAnimations = maFade
    UseSystemFont = True
    Left = 392
    Top = 216
    PixelsPerInch = 96
    inherited barPrintAndExport: TdxBar
      DockedLeft = 193
      FloatLeft = 1100
      FloatTop = 12
      FloatClientWidth = 85
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = False
          ItemName = 'biPrint'
        end
        item
          Visible = True
          ItemName = 'bbShowPrintForm'
        end
        item
          Visible = True
          ItemName = 'bbShowPrintPreviewForm'
        end
        item
          Visible = True
          ItemName = 'bbPageSetup'
        end
        item
          Visible = False
          ItemName = 'biPrintPreview'
        end
        item
          Visible = False
          ItemName = 'biPageSetup'
        end>
    end
    inherited barQuickAccess: TdxBar
      FloatLeft = 1075
      FloatTop = 246
      FloatClientWidth = 51
      FloatClientHeight = 304
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
          BeginGroup = True
          Visible = True
          ItemName = 'bbUndo'
        end
        item
          Visible = True
          ItemName = 'bbRedo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'biPrintPreview'
        end>
    end
    inherited barInfo: TdxBar
      DockedLeft = 615
    end
    inherited barOptions: TdxBar
      DockedLeft = 384
      FloatClientWidth = 110
      FloatClientHeight = 54
    end
    inherited barAppearance: TdxBar
      DockedLeft = 231
      OneOnRow = True
    end
    object bmbHomeClipboard: TdxBar [5]
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
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
    object bmbHomeEditing: TdxBar [6]
      Caption = 'Editing'
      CaptionButtons = <>
      DockedLeft = 275
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 57
      FloatClientHeight = 216
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E302E322C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D2246
        696E642220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
        30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
        77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
        78220D0A092076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374796C65
        20747970653D22746578742F637373223E0D0A092E426C61636B7B66696C6C3A
        233732373237323B7D0D0A3C2F7374796C653E0D0A3C7061746820636C617373
        3D22426C61636B2220643D224D32392E352C31392E374C32392E352C31392E37
        4C32392E352C31392E374332392E352C31392E372C32392E352C31392E372C32
        392E352C31392E374C32332E382C366C302C30632D302E342D312E322D312E35
        2D322D322E382D320D0A09632D312E372C302D332C312E332D332C337633682D
        34563763302D312E372D312E332D332D332D3343392E372C342C382E362C342E
        392C382E322C366C302C304C322E352C31392E3763302C302C302C302C302C30
        6C302C30683043322E322C32302E342C322C32312E322C322C32320D0A096330
        2C332E332C322E372C362C362C3673362D322E372C362D36762D346834763463
        302C332E332C322E372C362C362C3673362D322E372C362D364333302C32312E
        322C32392E382C32302E342C32392E352C31392E377A204D382C3236632D322E
        322C302D342D312E382D342D3473312E382D342C342D340D0A0973342C312E38
        2C342C345331302E322C32362C382C32367A204D32342C3236632D322E322C30
        2D342D312E382D342D3473312E382D342C342D3473342C312E382C342C345332
        362E322C32362C32342C32367A222F3E0D0A3C2F7376673E0D0A}
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
    object bmbHomeParagraph: TdxBar [7]
      Caption = 'Paragraph'
      CaptionButtons = <
        item
          KeyTip = 'PG'
          ScreenTip = stParagraphDialog
          OnClick = bmbHomeParagraphClick
        end>
      DockedLeft = 167
      DockedTop = 0
      FloatLeft = 935
      FloatTop = 8
      FloatClientWidth = 109
      FloatClientHeight = 564
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E302E322C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D2241
        6C69676E5F43656E7465722220786D6C6E733D22687474703A2F2F7777772E77
        332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474
        703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070
        78220D0A0920793D22307078222076696577426F783D22302030203332203332
        22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
        20302033322033323B2220786D6C3A73706163653D227072657365727665223E
        0D0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C61
        636B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C7061
        74682069643D22416C69676E5F43656E7465725F315F2220636C6173733D2242
        6C61636B2220643D224D32382C384834563668323456387A204D32342C313048
        3876326831365631307A204D32382C3134483476326832345631347A204D3238
        2C3232483476326832345632327A204D32342C3138483876326831360D0A0956
        31387A222F3E0D0A3C2F7376673E0D0A}
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
    object bmbHomeFont: TdxBar [8]
      Caption = 'Font'
      CaptionButtons = <
        item
          ScreenTip = stFontDialog
          OnClick = bmbHomeFontClick
        end>
      DockedLeft = 122
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 129
      FloatClientHeight = 616
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
          UserWidth = 116
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'beFontName'
        end
        item
          ButtonGroup = bgpMember
          Position = ipContinuesRow
          UserDefine = [udWidth]
          UserWidth = 47
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
    object dxbSelectionTools: TdxBar [9]
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
    object dxbRibbonOptions: TdxBar [10]
      Caption = 'Ribbon Options'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 116
      FloatClientHeight = 108
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
        3E0D0A3C672069643D2253686F7743617074696F6E223E0D0A09093C70617468
        20636C6173733D2259656C6C6F772220643D224D322C3130563563302D302E35
        2C302E352D312C312D3168323663302E352C302C312C302E352C312C31763548
        327A222F3E0D0A09093C6720636C6173733D22737432223E0D0A0909093C7061
        746820636C6173733D22426C61636B2220643D224D322C313276313563302C30
        2E352C302E352C312C312C3168323663302E352C302C312D302E352C312D3156
        313248327A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D
        0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRibbonForm'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbQATOptions: TdxBar [11]
      Caption = 'Quick Access Toolbar Options'
      CaptionButtons = <>
      DockedLeft = 92
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 83
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbQATVisible'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbQATAboveRibbon'
        end
        item
          Visible = True
          ItemName = 'bbQATBelowRibbon'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbColorScheme: TdxBar [12]
      Caption = 'Color Scheme'
      CaptionButtons = <
        item
          OnClick = bbOptionsClick
        end>
      DockedLeft = 281
      DockedTop = 0
      FloatLeft = 1149
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 24
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722031392E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220656E61
        626C652D6261636B67726F756E643D226E657720302030203332203332222078
        6D6C3A73706163653D227072657365727665223E0D0A3C7265637420783D2232
        2220793D223222206F7061636974793D22302E33222066696C6C3D2223333837
        4242352220656E61626C652D6261636B67726F756E643D226E65772020202022
        2077696474683D223822206865696768743D2238222F3E0D0A3C726563742078
        3D2231322220793D223222206F7061636974793D22302E36222066696C6C3D22
        233338374242352220656E61626C652D6261636B67726F756E643D226E657720
        202020222077696474683D223822206865696768743D2238222F3E0D0A3C7265
        637420783D2232322220793D2232222066696C6C3D2223333837424235222077
        696474683D223822206865696768743D2238222F3E0D0A3C7265637420783D22
        322220793D22313222206F7061636974793D22302E33222066696C6C3D222334
        44414538392220656E61626C652D6261636B67726F756E643D226E6577202020
        20222077696474683D223822206865696768743D2238222F3E0D0A3C72656374
        20783D2231322220793D22313222206F7061636974793D22302E36222066696C
        6C3D22233444414538392220656E61626C652D6261636B67726F756E643D226E
        657720202020222077696474683D223822206865696768743D2238222F3E0D0A
        3C7265637420783D2232322220793D223132222066696C6C3D22233444414538
        39222077696474683D223822206865696768743D2238222F3E0D0A3C72656374
        20783D22322220793D22323222206F7061636974793D22302E33222066696C6C
        3D22233743374337432220656E61626C652D6261636B67726F756E643D226E65
        7720202020222077696474683D223822206865696768743D2238222F3E0D0A3C
        7265637420783D2231322220793D22323222206F7061636974793D22302E3622
        2066696C6C3D22233743374337432220656E61626C652D6261636B67726F756E
        643D226E657720202020222077696474683D223822206865696768743D223822
        2F3E0D0A3C7265637420783D2232322220793D223232222066696C6C3D222337
        4337433743222077696474683D223822206865696768743D2238222F3E0D0A3C
        2F7376673E0D0A}
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbFileCommon: TdxBar [13]
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
    object bmbInsertPages: TdxBar [14]
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
    object bmbInsertTables: TdxBar [15]
      Caption = 'Tables'
      CaptionButtons = <>
      DockedLeft = 53
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
    object bmbInserIllustrations: TdxBar [16]
      Caption = 'Illustrations'
      CaptionButtons = <>
      DockedLeft = 109
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
          ItemName = 'bbFloatingObjectPicture'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertLinks: TdxBar [17]
      Caption = ' Links'
      CaptionButtons = <>
      DockedLeft = 226
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
    object bmbInsertHeaderAndFooter: TdxBar [18]
      Caption = 'Header & Footer'
      CaptionButtons = <>
      DockedLeft = 374
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
    object bmbInsertText: TdxBar [19]
      Caption = 'Text'
      CaptionButtons = <>
      DockedLeft = 598
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 60
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTextBox'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbInsertSymbols: TdxBar [20]
      Caption = 'Symbols'
      CaptionButtons = <>
      DockedLeft = 647
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
    object bmbPageLayoutPageSetup: TdxBar [21]
      Caption = 'Page Setup'
      CaptionButtons = <
        item
          OnClick = bmbPageLayoutPageSetupCaptionButtons0Click
        end>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 112
      FloatClientHeight = 204
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemMargins'
        end
        item
          Visible = True
          ItemName = 'rgiOrientation'
        end
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemSize'
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
    object bmbPageLayoutPageBackground: TdxBar [22]
      Caption = 'Page Background'
      CaptionButtons = <>
      DockedLeft = 374
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 96
      FloatClientHeight = 24
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
    object bmbReferencesTableOfContents: TdxBar [23]
      Caption = 'Table of Contents'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 110
      FloatClientHeight = 132
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTableOfContents'
        end
        item
          Visible = True
          ItemName = 'bbUpdateTable'
        end
        item
          Visible = True
          ItemName = 'bsiAddText'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReferencesCaptions: TdxBar [24]
      Caption = 'Captions'
      CaptionButtons = <>
      DockedLeft = 103
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 154
      FloatClientHeight = 102
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiInsertCaption'
        end
        item
          Visible = True
          ItemName = 'bsiInsertTableOfFigures'
        end
        item
          Visible = True
          ItemName = 'bbUpdateTableofFigures'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbMailingsMailMerge: TdxBar [25]
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
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbReviewProofing: TdxBar [26]
      Caption = 'Proofing'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 118
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSpelling'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'bbCheckAsYouType'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbViewDocumentViews: TdxBar [27]
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
    object bmbViewShow: TdxBar [28]
      Caption = 'Show'
      CaptionButtons = <>
      DockedLeft = 157
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
    object bmbViewZoom: TdxBar [29]
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedLeft = 294
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
    object bmbHFTNavigation: TdxBar [30]
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
    object bmbHFTOptions: TdxBar [31]
      CaptionButtons = <>
      DockedLeft = 282
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
    object bmbHFTClose: TdxBar [32]
      Caption = 'Close'
      CaptionButtons = <>
      DockedLeft = 448
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
    object bmbTableToolsTable: TdxBar [33]
      Caption = 'Table'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 90
      FloatClientHeight = 108
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbViewGridLines'
        end
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
    object bmbTableToolsRowsAndColumns: TdxBar [34]
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
    object bmbTableToolsMerge: TdxBar [35]
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
    object bmbTableToolsCellSize: TdxBar [36]
      Caption = 'Cell Size'
      CaptionButtons = <
        item
          OnClick = bmbTableToolsCellSizeClick
        end>
      DockedLeft = 626
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 77
      FloatClientHeight = 24
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
    object bmbTableToolsTableStyleOptions: TdxBar [37]
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
    object bmbTableToolsTableStyles: TdxBar [38]
      Caption = 'Table Styles'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemTableStyles'
        end
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
    object bmbTableToolsBordersShadings: TdxBar [39]
      Caption = 'Border Shadings'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 165
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 62
      FloatClientHeight = 21
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbPictureToolsShapeStyles: TdxBar [40]
      Caption = 'Shape Styles'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 115
      FloatClientHeight = 46
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbFloatingObjectFillColor'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectOutlineColor'
        end
        item
          ViewLevels = [ivlLargeIconWithText, ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbWidthLines'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPictureToolsArrange: TdxBar [41]
      Caption = 'Arrange'
      CaptionButtons = <
        item
          OnClick = bmbPictureToolsArrangeCaptionButtons0Click
        end>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 931
      FloatTop = 8
      FloatClientWidth = 114
      FloatClientHeight = 96
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiWrapText'
        end
        item
          Visible = True
          ItemName = 'bsiPosition'
        end
        item
          Visible = True
          ItemName = 'bsiBringToFront'
        end
        item
          Visible = True
          ItemName = 'bsiSendToBack'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTableToolsAlignment: TdxBar [42]
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
    object bmbMergeTo: TdxBar [43]
      Caption = 'Merge To ...'
      CaptionButtons = <>
      DockedLeft = 331
      DockedTop = 0
      FloatLeft = 1006
      FloatTop = 8
      FloatClientWidth = 150
      FloatClientHeight = 54
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbMailMerge'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbAutoCorrect: TdxBar [44]
      Caption = 'AutoCorrect'
      CaptionButtons = <
        item
          OnClick = bmbAutoCorrectCaptionButtons0Click
        end>
      DockedLeft = 135
      DockedTop = 0
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 185
      FloatClientHeight = 110
      ItemLinks = <
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'beiReplaceAsYouType'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'beiCorrectInitialCaps'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'beiUseSpellCheckerSuggestions'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'beiCorrectSentenceCaps'
        end
        item
          ViewLayout = ivlGlyphControlCaption
          Visible = True
          ItemName = 'beiCorrectCapsLock'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbProtect: TdxBar [45]
      Caption = 'Protect'
      CaptionButtons = <>
      DockedLeft = 474
      DockedTop = 0
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 180
      FloatClientHeight = 238
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbProtectDocument'
        end
        item
          Visible = True
          ItemName = 'bbRangeEditingPermissions'
        end
        item
          Visible = True
          ItemName = 'bbUnprotectDocument'
        end
        item
          Visible = True
          ItemName = 'bbEncrypt'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 180
          Visible = True
          ItemName = 'bcUser'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbComment: TdxBar [46]
      Caption = 'Comment'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 389
      DockedTop = 0
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNewComment'
        end
        item
          Visible = True
          ItemName = 'bbDelete'
        end
        item
          Visible = True
          ItemName = 'bbPrevious'
        end
        item
          Visible = True
          ItemName = 'bbNext'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object bmbTabAreaSearchToolbar: TdxBar [47]
      Caption = 'Tab Area Search Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'beOfficeSearchBox'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarStyles: TdxBar [48]
      Caption = 'Styles'
      CaptionButtons = <>
      DockedLeft = 230
      DockedTop = 0
      FloatLeft = 780
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032332E302E312C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E426C61636B7B66696C6C3A23373237323732
        3B7D0D0A092E426C75657B66696C6C3A233131373744373B7D0D0A092E59656C
        6C6F777B66696C6C3A234646423131353B7D0D0A3C2F7374796C653E0D0A3C70
        61746820636C6173733D22426C75652220643D224D372E36362C313868372E37
        346C302E32332D302E32336C302C306C322E35352D322E35354C31332E35352C
        3248392E374C322C323468332E38354C372E36362C31387A204D31312E36332C
        362E31326C322E392C382E383848382E37310D0A0943382E37312C31352C3131
        2E34392C362E36372C31312E36332C362E31327A222F3E0D0A3C706174682063
        6C6173733D2259656C6C6F772220643D224D31342E36312C32322E333163332E
        30382C332E30382C302C302C332E30382C332E30384331362E31352C33302C31
        312E36322C33302C382C33304331312E34362C32362E35342C31312E37372C32
        322E33312C31342E36312C32322E33317A222F3E0D0A3C7061746820636C6173
        733D225265642220643D224D32392E37372C31322E39326C2D322E36392D322E
        3639632D302E33312D302E33312D302E37372D302E33312D312E30382C306C2D
        372E35342C372E35346C332E37372C332E37374C32392E37372C31340D0A0943
        33302E30372C31332E37372C33302E30372C31332E32332C32392E37372C3132
        2E39327A222F3E0D0A3C7061746820636C6173733D22426C61636B2220643D22
        4D31372E33382C31382E38356C2D312E34362C312E3436632D302E33312C302E
        33312D302E33312C302E37372C302C312E30386C322E36392C322E363963302E
        33312C302E33312C302E37372C302E33312C312E30382C306C312E34362D312E
        34360D0A094C31372E33382C31382E38357A222F3E0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRibbonGalleryItemQuickStyles'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barSearchOptions: TdxBar [49]
      Caption = 'Search Options'
      CaptionButtons = <>
      DockedLeft = 561
      DockedTop = 0
      FloatLeft = 774
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'biRecursiveSearch'
        end
        item
          Visible = True
          ItemName = 'biShowPaths'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    inherited biExportToHTML: TdxBarLargeButton
      ImageIndex = 103
    end
    inherited biExportToXML: TdxBarLargeButton
      ImageIndex = 99
    end
    inherited biExportToExcel97: TdxBarLargeButton
      ImageIndex = 97
    end
    inherited biExportToExcel: TdxBarLargeButton
      ImageIndex = 98
    end
    inherited biExportToPDF: TdxBarLargeButton
      ImageIndex = 94
    end
    inherited biExportToText: TdxBarLargeButton
      ImageIndex = 96
    end
    inherited biShowInspector: TdxBarLargeButton
      ImageIndex = 105
    end
    inherited biPageSetup: TdxBarLargeButton
      ImageIndex = 1
    end
    object bbCursorLine: TdxBarButton [63]
      Caption = 'Line: 0'
      Category = 0
      Hint = 'Line: 0'
      Visible = ivNever
    end
    object bbCursorColumn: TdxBarButton [64]
      Caption = 'Column: 0'
      Category = 0
      Hint = 'Column: 0'
      Visible = ivNever
    end
    object bbLocked: TdxBarButton [65]
      Caption = 'Locked'
      Category = 0
      Hint = 'Locked'
      Visible = ivNever
      ButtonStyle = bsChecked
    end
    object bbModified: TdxBarButton [66]
      Action = acSave
      Caption = 'Modified'
      Category = 0
    end
    object beFontName: TcxBarEditItem [67]
      Action = acFontName
      Category = 0
      KeyTip = 'FF'
      ScreenTip = stFontName
      PropertiesClassName = 'TcxFontNameComboBoxProperties'
      Properties.FontPreview.ShowButtons = False
    end
    object beFontSize: TcxBarEditItem [68]
      Action = acFontSize
      Category = 0
      KeyTip = 'FS'
      ScreenTip = stFontSize
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
    object bbNew: TdxBarLargeButton [69]
      Action = acNewDocument
      Category = 0
      Description = 'Creates a blank document'
      KeyTip = 'FN'
      ScreenTip = stNew
    end
    object bbOpen: TdxBarLargeButton [70]
      Action = acOpenDocument
      Category = 0
      Description = 'Opens existing RTF file'
      KeyTip = 'FO'
      ScreenTip = stOpen
    end
    object bbSave: TdxBarLargeButton [71]
      Action = acSave
      Category = 0
      Description = 'Updates the file with your most recent changes'
      KeyTip = 'SA'
      ScreenTip = stSave
    end
    object bbPaste: TdxBarLargeButton [72]
      Action = acPaste
      Category = 0
      KeyTip = 'V'
      ScreenTip = stPaste
    end
    object bbCut: TdxBarLargeButton [73]
      Action = acCut
      Category = 0
      KeyTip = 'X'
      ScreenTip = stCut
    end
    object bbCopy: TdxBarLargeButton [74]
      Action = acCopy
      Category = 0
      KeyTip = 'C'
      ScreenTip = stCopy
    end
    object bbSelectAll: TdxBarLargeButton [75]
      Action = acSelectAll
      Category = 0
      KeyTip = 'EA'
      ScreenTip = stSelectAll
    end
    object bbFind: TdxBarLargeButton [76]
      Action = acFind
      Category = 0
      KeyTip = 'FD'
      ScreenTip = stFind
    end
    object bbReplace: TdxBarLargeButton [77]
      Action = acReplace
      Category = 0
      KeyTip = 'R'
      ScreenTip = stReplace
    end
    object bbUndo: TdxBarLargeButton [78]
      Action = acUndo
      Category = 0
      KeyTip = 'U'
      ScreenTip = stUndo
    end
    object bbBold: TdxBarLargeButton [79]
      Action = acBold
      Category = 0
      KeyTip = '1'
      ScreenTip = stBold
      ButtonStyle = bsChecked
    end
    object bbItalic: TdxBarLargeButton [80]
      Action = acItalic
      Category = 0
      KeyTip = '2'
      ScreenTip = stItalic
      ButtonStyle = bsChecked
    end
    object bbUnderline: TdxBarLargeButton [81]
      Action = acUnderline
      Category = 0
      KeyTip = '3'
      ScreenTip = stUnderline
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbAlignLeft: TdxBarLargeButton [82]
      Action = acAlignLeft
      Category = 0
      KeyTip = 'AL'
      ScreenTip = stAlignLeft
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignCenter: TdxBarLargeButton [83]
      Action = acAlignCenter
      Category = 0
      KeyTip = 'AC'
      ScreenTip = stAlignCenter
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignRight: TdxBarLargeButton [84]
      Action = acAlignRight
      Category = 0
      KeyTip = 'AR'
      ScreenTip = stAlignRight
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbBullets: TdxBarLargeButton [85]
      Action = acBullets
      Category = 0
      KeyTip = 'BU'
      ScreenTip = stBullets
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object rgiColorTheme: TdxRibbonGalleryItem [86]
      Caption = 'Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiPageColorTheme: TdxRibbonGalleryItem [87]
      Caption = 'Page Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiFontColor: TdxRibbonGalleryItem [88]
      Caption = 'Font Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object rgiPageColor: TdxRibbonGalleryItem [89]
      Caption = 'Page Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object bccZoom: TdxBarControlContainerItem [90]
      Caption = 'Zoom'
      Category = 0
      Hint = 'Zoom'
      Visible = ivAlways
    end
    object bbOptions: TdxBarButton [91]
      Caption = 'Options'
      Category = 0
      Hint = 'Options'
      Visible = ivAlways
      ImageIndex = 23
      OnClick = bbOptionsClick
    end
    object bbExit: TdxBarButton [92]
      Action = acExit
      Category = 0
      ImageIndex = 5
    end
    object bbRibbonForm: TdxBarLargeButton [93]
      Caption = 'Ribbon &Form'
      Category = 0
      Hint = 'Ribbon Form'
      ScreenTip = stRibbonForm
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbRibbonFormClick
      LargeImageIndex = 12
      SyncImageIndex = False
      ImageIndex = 12
    end
    inherited biFullWindowMode: TdxBarLargeButton
      LargeGlyph.Data = {
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
        3744373B7D3C2F7374796C653E0D0A3C672069643D224C617965725F32223E0D
        0A09093C673E0D0A0909093C673E0D0A090909093C7061746820636C6173733D
        22426C75652220643D224D322C32763238683238563248327A204D32382C3238
        483456346832345632387A222F3E0D0A0909093C2F673E0D0A09093C2F673E0D
        0A09093C7265637420783D22342220793D22342220636C6173733D2257686974
        65222077696474683D22323422206865696768743D223234222F3E0D0A09093C
        7061746820636C6173733D22426C75652220643D224D32302C32366C322E332D
        322E336C2D332D336C312E342D312E346C332C334C32362C323076364832307A
        204D32302E372C31322E376C2D312E342D312E346C332D334C32302C36683676
        366C2D322E332D322E334C32302E372C31322E377A204D31322C323648362020
        2623393B2623393B762D366C322E332C322E336C332D336C312E342C312E346C
        2D332C334C31322C32367A204D31312E332C31322E376C2D332D334C362C3132
        563668364C392E372C382E336C332C334C31312E332C31322E377A222F3E0D0A
        093C2F673E0D0A3C2F7376673E0D0A}
      ImageIndex = -1
    end
    object bbQATVisible: TdxBarLargeButton [95]
      Caption = '&Visible'
      Category = 0
      Hint = 'Visible'
      ScreenTip = stQAT
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbQATVisibleClick
      LargeImageIndex = 14
      SyncImageIndex = False
      ImageIndex = 14
    end
    object bbQATAboveRibbon: TdxBarButton [96]
      Action = acQATAboveRibbon
      Category = 0
      ScreenTip = stQATAbove
      ButtonStyle = bsChecked
      GroupIndex = 3
      ImageIndex = 185
    end
    object bbQATBelowRibbon: TdxBarButton [97]
      Action = acQATBelowRibbon
      Category = 0
      ScreenTip = stQATBelow
      ButtonStyle = bsChecked
      GroupIndex = 3
      ImageIndex = 186
    end
    object bsZoom: TdxBarStatic [98]
      Caption = '100 %'
      Category = 0
      Hint = '100 %'
      Visible = ivAlways
    end
    object bbFontSuperscript: TdxBarLargeButton [99]
      Action = acFontSuperscript
      Category = 0
      KeyTip = '8'
      ScreenTip = stFontSuperscript
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbFontSubscript: TdxBarLargeButton [100]
      Action = acFontSubscript
      Category = 0
      KeyTip = '7'
      ScreenTip = stFontSubscript
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbIncreaseFontSize: TdxBarLargeButton [101]
      Action = acIncreaseFontSize
      Category = 0
      KeyTip = 'FG'
      ScreenTip = stIncreaseFontSize
    end
    object bbDecreaseFontSize: TdxBarLargeButton [102]
      Action = acDecreaseFontSize
      Category = 0
      KeyTip = 'FK'
      ScreenTip = stDecreaseFontSize
    end
    object bsiLineSpacing: TdxBarSubItem [103]
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
    object bbSingleLineSpacing: TdxBarLargeButton [104]
      Action = acSingleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbSesquialteralLineSpacing: TdxBarLargeButton [105]
      Action = acSesquialteralLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbDoubleLineSpacing: TdxBarLargeButton [106]
      Action = acDoubleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbLineSpacingOptions: TdxBarLargeButton [107]
      Action = acParagraph
      Caption = 'Line spacing options...'
      Category = 0
    end
    object bbAlignJustify: TdxBarLargeButton [108]
      Action = acJustify
      Category = 0
      KeyTip = 'AJ'
      ScreenTip = stAlignJustify
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbRedo: TdxBarLargeButton [109]
      Action = acRedo
      Category = 0
      KeyTip = 'R'
      ScreenTip = stRedo
    end
    object bbNumbering: TdxBarLargeButton [110]
      Action = acNumbering
      Category = 0
      KeyTip = 'N'
      ScreenTip = stNumbering
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbMultiLevelList: TdxBarLargeButton [111]
      Action = acMultiLevelList
      Category = 0
      KeyTip = 'M'
      ScreenTip = stMultiLevelList
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbDoubleUnderline: TdxBarLargeButton [112]
      Action = acDoubleUnderline
      Category = 0
      KeyTip = '4'
      ScreenTip = stDoubleUnderline
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbStrikeout: TdxBarLargeButton [113]
      Action = acStrikeout
      Category = 0
      KeyTip = '5'
      ScreenTip = stStrikethrough
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbDoubleStrikeout: TdxBarLargeButton [114]
      Action = acDoubleStrikeout
      Category = 0
      KeyTip = '6'
      ScreenTip = stDoubleStrikethrough
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbShowWhitespace: TdxBarLargeButton [115]
      Action = acShowWhitespace
      Category = 0
      KeyTip = 'SO'
      ScreenTip = stShowWhitespace
      ButtonStyle = bsChecked
    end
    object bbDecrementIndent: TdxBarLargeButton [116]
      Action = acDecrementIndent
      Category = 0
      KeyTip = 'AO'
      ScreenTip = stDecrementIndent
    end
    object bbIncrementIndent: TdxBarLargeButton [117]
      Action = acIncrementIndent
      Category = 0
      KeyTip = 'AI'
      ScreenTip = stIncrementIndent
    end
    object bbParagraph: TdxBarButton [118]
      Action = acParagraph
      Category = 0
      KeyTip = 'PG'
      ScreenTip = stParagraphDialog
    end
    object bbRadialMenuAlligns: TdxBarSubItem [119]
      Caption = 'Align'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object bbSaveAs: TdxBarLargeButton [120]
      Action = acSaveAs
      Category = 0
      ScreenTip = stSaveAs
    end
    object bbTableProperties: TdxBarLargeButton [121]
      Action = acShowTablePropertiesForm
      Caption = 'Properties'
      Category = 0
      ScreenTip = stTableProperties
    end
    object bbSymbol: TdxBarLargeButton [122]
      Action = acSymbol
      Category = 0
      ScreenTip = stSymbol
    end
    object bbInsertTable: TdxBarLargeButton [123]
      Action = acInsertTableForm
      Category = 0
      ScreenTip = stInsertTable
    end
    object bbHorizontalRuler: TdxBarLargeButton [124]
      Action = acHorizontalRuler
      Category = 0
      ScreenTip = stHorizontalRuler
      ButtonStyle = bsChecked
    end
    object bbVerticalRuler: TdxBarLargeButton [125]
      Action = acVerticalRuler
      Category = 0
      ScreenTip = stVerticalRuler
      ButtonStyle = bsChecked
    end
    object bbZoomOut: TdxBarLargeButton [126]
      Action = acZoomOut
      Category = 0
      ScreenTip = stZoomOut
    end
    object bbZoomIn: TdxBarLargeButton [127]
      Action = acZoomIn
      Category = 0
      ScreenTip = stZoomIn
    end
    object bsiBorders: TdxBarSubItem [128]
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
    object bbBottomBorder: TdxBarLargeButton [129]
      Action = acBottomBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTopBorder: TdxBarLargeButton [130]
      Action = acTopBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLeftBorder: TdxBarLargeButton [131]
      Action = acLeftBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbRightBorder: TdxBarLargeButton [132]
      Action = acRightBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbNoBorder: TdxBarLargeButton [133]
      Action = acNoBorder
      Category = 0
    end
    object bbAllBorder: TdxBarLargeButton [134]
      Action = acAllBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbOutsideBorder: TdxBarLargeButton [135]
      Action = acOutsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideBorders: TdxBarLargeButton [136]
      Action = acInsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideHorizontalBorder: TdxBarLargeButton [137]
      Action = acHorizontalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideVerticalBorder: TdxBarLargeButton [138]
      Action = acVerticalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbCellsAlignTopLeft: TdxBarLargeButton [139]
      Action = acTableCellsTopLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignTopLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignCenterLeft: TdxBarLargeButton [140]
      Action = acTableCellsMiddleLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignCenterLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignBottomLeft: TdxBarLargeButton [141]
      Action = acTableCellsBottomLeftAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomLeft
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignTopCenter: TdxBarLargeButton [142]
      Action = acTableCellsTopCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignTopCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsAlignCenter: TdxBarLargeButton [143]
      Action = acTableCellsMiddleCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsBottomCenterAlign: TdxBarLargeButton [144]
      Action = acTableCellsBottomCenterAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomCenter
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsTopRightAlign: TdxBarLargeButton [145]
      Action = acTableCellsTopRightAlignment
      Category = 0
      ScreenTip = stCellsAlignTopRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbCellsCenterRightAlign: TdxBarLargeButton [146]
      Action = acTableCellsMiddleRightAlignment
      Category = 0
      ScreenTip = stCellsAlignCenterRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbBottomRightAlign: TdxBarLargeButton [147]
      Action = acTableCellsBottomRightAlignment
      Category = 0
      ScreenTip = stCellsAlignBottomRight
      ButtonStyle = bsChecked
      GroupIndex = 10
      ShowCaption = False
    end
    object bbSplitCells: TdxBarLargeButton [148]
      Action = acSplitCells
      Category = 0
      ScreenTip = stSplitCells
    end
    object bbInsertRowAbove: TdxBarLargeButton [149]
      Action = acInsertRowAbove
      Caption = 'Insert Rows Above'
      Category = 0
      ScreenTip = stInsertRowsAbove
    end
    object bbInsertRowBelow: TdxBarLargeButton [150]
      Action = acInsertRowBelow
      Caption = 'Insert Rows Below'
      Category = 0
      ScreenTip = stInsertRowsBelow
    end
    object bbInsertColumnToTheLeft: TdxBarLargeButton [151]
      Action = acInsertColumnToTheLeft
      Caption = 'Insert Columns to the Left'
      Category = 0
      ScreenTip = stInsertColumnsToTheLeft
    end
    object bbInsertColumnToTheRight: TdxBarLargeButton [152]
      Action = acInsertColumnToTheRight
      Caption = 'Insert Columns to the Right'
      Category = 0
      ScreenTip = stInsertColumnsToTheRight
    end
    object bsiDelete: TdxBarSubItem [153]
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
    object bbDeleteCells: TdxBarLargeButton [154]
      Action = acDeleteTableCellsForm
      Category = 0
    end
    object bbHyperlink: TdxBarLargeButton [155]
      Action = acHyperlinkForm
      Category = 0
      ScreenTip = stHyperlink
    end
    object bbInsertPicture: TdxBarLargeButton [156]
      Action = acInsertPicture
      Category = 0
      ScreenTip = stInlinePicture
    end
    object bsiAutoFit: TdxBarSubItem [157]
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
    object bbAutoFitContents: TdxBarLargeButton [158]
      Action = acAutoFitContents
      Category = 0
    end
    object bbFixedColumnWidth: TdxBarLargeButton [159]
      Action = acFixedColumnWidth
      Category = 0
    end
    object bbAutoFitWindow: TdxBarLargeButton [160]
      Action = acAutoFitWindow
      Category = 0
    end
    object bbSplitTable: TdxBarLargeButton [161]
      Action = acSplitTable
      Category = 0
      ScreenTip = stSplitTable
    end
    object bbMergeCells: TdxBarLargeButton [162]
      Action = acMergeCells
      Category = 0
      ScreenTip = stMergeCells
    end
    object bbTextHighlight: TdxBarLargeButton [163]
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
      OnClick = bbTextHighlightClick
    end
    object bbPage: TdxBarLargeButton [164]
      Action = acPageBreak
      Category = 0
      ScreenTip = stPage
    end
    object bbSimpleView: TdxBarLargeButton [165]
      Action = acSimpleView
      Category = 0
      ScreenTip = stSimpleView
      ButtonStyle = bsChecked
    end
    object bbDraftView: TdxBarLargeButton [166]
      Action = acDraftView
      Category = 0
      ScreenTip = stDraftView
      ButtonStyle = bsChecked
    end
    object bbPrintLayoutView: TdxBarLargeButton [167]
      Action = acPrintLayoutView
      Category = 0
      ScreenTip = stPrintLayoutView
      ButtonStyle = bsChecked
    end
    object bbDeleteTable: TdxBarLargeButton [168]
      Action = acDeleteTable
      Category = 0
    end
    object bbDeleteRows: TdxBarLargeButton [169]
      Action = acDeleteTableRows
      Category = 0
    end
    object bbDeleteColumns: TdxBarLargeButton [170]
      Action = acDeleteTableColumns
      Category = 0
    end
    object bsiChangeCase: TdxBarSubItem [171]
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
    object bbUpperCase: TdxBarLargeButton [172]
      Action = acUpperCase
      Category = 0
    end
    object bbToggleCase: TdxBarLargeButton [173]
      Action = acToggleCase
      Category = 0
    end
    object bbLowerCase: TdxBarLargeButton [174]
      Action = acLowerCase
      Category = 0
    end
    object sbiColumns: TdxBarSubItem [175]
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
          BeginGroup = True
          Visible = True
          ItemName = 'bbMoreColumns'
        end>
    end
    object bbOneColumn: TdxBarLargeButton [176]
      Action = acSectionOneColumn
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTwoColumns: TdxBarLargeButton [177]
      Action = acSectionTwoColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbThreeColumn: TdxBarLargeButton [178]
      Action = acSectionThreeColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbFontColor: TdxBarLargeButton [179]
      Caption = 'Font Color'
      Category = 0
      ScreenTip = stFontColor
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppmFontColor
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
    object rgiTextHighlightColorTheme: TdxRibbonGalleryItem [180]
      Caption = 'TextHighlightColorTheme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiTextHighlightColor: TdxRibbonGalleryItem [181]
      Caption = 'TextHighlightColor'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object bbMoreColumns: TdxBarLargeButton [182]
      Action = acMoreColumns
      Category = 0
    end
    object bsiBreaks: TdxBarSubItem [183]
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
    object bbColumn: TdxBarLargeButton [184]
      Action = acColumnBreak
      Category = 0
    end
    object bbSectionNext: TdxBarLargeButton [185]
      Action = acSectionBreakNextPage
      Category = 0
    end
    object bbSectionEvenPage: TdxBarLargeButton [186]
      Action = acSectionBreakEvenPage
      Category = 0
    end
    object bbSectionOdd: TdxBarLargeButton [187]
      Action = acSectionBreakOddPage
      Category = 0
    end
    object bsiPageColor: TdxBarSubItem [188]
      Caption = 'Page Color'
      Category = 0
      ScreenTip = stPageColor
      Visible = ivAlways
      ImageIndex = 112
      LargeImageIndex = 112
      ItemLinks = <>
    end
    object bsiLineNumbers: TdxBarSubItem [189]
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
    object bbLineNumberingNone: TdxBarLargeButton [190]
      Action = acLineNumberingNone
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbacLineNumberingRestartNewSection: TdxBarLargeButton [191]
      Action = acLineNumberingRestartNewSection
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingRestartNewPage: TdxBarLargeButton [192]
      Action = acLineNumberingRestartNewPage
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingContinuous: TdxBarLargeButton [193]
      Action = acLineNumberingContinuous
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsertMergeField: TdxBarLargeButton [194]
      Action = acShowInsertMergeFieldForm
      Category = 0
    end
    object bbShowAllFieldCodes: TdxBarLargeButton [195]
      Action = acShowAllFieldCodes
      Category = 0
    end
    object bbShowAllFieldResults: TdxBarLargeButton [196]
      Action = acShowAllFieldResults
      Category = 0
    end
    object bbViewMergedData: TdxBarLargeButton [197]
      Action = acToggleViewMergedData
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbFloatingObjectPicture: TdxBarLargeButton [198]
      Action = acInsertFloatingObjectPicture
      Category = 0
    end
    object bbBookmarks: TdxBarLargeButton [199]
      Action = acShowBookmarkForm
      Category = 0
    end
    object bbHeader: TdxBarLargeButton [200]
      Action = acPageHeader
      Category = 0
    end
    object bbFooter: TdxBarLargeButton [201]
      Action = acPageFooter
      Category = 0
    end
    object bbPageNumber: TdxBarLargeButton [202]
      Action = acPageNumber
      Category = 0
    end
    object bbPageCount: TdxBarLargeButton [203]
      Action = acPageCount
      Category = 0
    end
    object bbMargins: TdxBarLargeButton [204]
      Action = acMargins
      Category = 0
    end
    object bbSize: TdxBarLargeButton [205]
      Action = acSize
      Category = 0
    end
    object bbLineNumberingOptions: TdxBarLargeButton [206]
      Action = acLineNumbering
      Category = 0
    end
    object bbGoToHeader: TdxBarLargeButton [207]
      Action = acGoToPageHeader
      Category = 0
    end
    object bbGoToFooter: TdxBarLargeButton [208]
      Action = acGoToPageFooter
      Category = 0
    end
    object bbShowNext: TdxBarLargeButton [209]
      Action = acGoToNextPageHeaderFooter
      Category = 0
    end
    object bbShowPrevious: TdxBarLargeButton [210]
      Action = acGoToPreviousPageHeaderFooter
      Category = 0
    end
    object bbLinkToPrevious: TdxBarLargeButton [211]
      Action = acLinkToPrevious
      Category = 0
    end
    object bbDifferentFirstPage: TdxBarLargeButton [212]
      Action = acDifferentFirstPage
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbDifferentOddAndEvenPages: TdxBarLargeButton [213]
      Action = acDifferentOddAndEvenPages
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbCloseHeaderAndFooter: TdxBarLargeButton [214]
      Action = acClosePageHeaderFooter
      Category = 0
    end
    object bbMailMerge: TdxBarLargeButton [215]
      Action = acMergeDatabaseRecords
      Category = 0
    end
    object bsiWrapText: TdxBarSubItem [216]
      Caption = 'WrapText'
      Category = 0
      Visible = ivAlways
      ImageIndex = 142
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSquare'
        end
        item
          Visible = True
          ItemName = 'bbTight'
        end
        item
          Visible = True
          ItemName = 'bbThrough'
        end
        item
          Visible = True
          ItemName = 'bbTopAndBottom'
        end
        item
          Visible = True
          ItemName = 'bbBehindText'
        end
        item
          Visible = True
          ItemName = 'bbInFrontOfText'
        end>
    end
    object bsiPosition: TdxBarSubItem [217]
      Caption = 'Position'
      Category = 0
      Visible = ivAlways
      ImageIndex = 146
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbFloatingObjectTopLeft'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectTopCenter'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectTopRight'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectMiddleLeft'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectMiddleCenter'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectMiddleRight'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectBottomLeft'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectBottomCenter'
        end
        item
          Visible = True
          ItemName = 'bbFloatingObjectBottomRight'
        end>
    end
    object bsiBringToFront: TdxBarSubItem [218]
      Caption = 'Bring To Front'
      Category = 0
      Visible = ivAlways
      ImageIndex = 153
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbBringForward'
        end
        item
          Visible = True
          ItemName = 'bbBringToFront'
        end
        item
          Visible = True
          ItemName = 'bbBringInFrontOfText'
        end>
    end
    object bsiSendToBack: TdxBarSubItem [219]
      Caption = 'Send To Back'
      Category = 0
      Visible = ivAlways
      ImageIndex = 156
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSendBackward'
        end
        item
          Visible = True
          ItemName = 'bbSendToBack'
        end
        item
          Visible = True
          ItemName = 'bbSendBehindText'
        end>
    end
    object bbSquare: TdxBarLargeButton [220]
      Action = acFloatingObjectSquareTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTight: TdxBarLargeButton [221]
      Action = acFloatingObjectTightTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbThrough: TdxBarLargeButton [222]
      Action = acFloatingObjectThroughTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTopAndBottom: TdxBarLargeButton [223]
      Action = acFloatingObjectTopAndBottomTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbBehindText: TdxBarLargeButton [224]
      Action = acFloatingObjectBehindTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInFrontOfText: TdxBarLargeButton [225]
      Action = acFloatingObjectInFrontOfTextWrapType
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbFloatingObjectTopLeft: TdxBarLargeButton [226]
      Action = acFloatingObjectTopLeftAlignment
      Category = 0
    end
    object bbFloatingObjectTopCenter: TdxBarLargeButton [227]
      Action = acFloatingObjectTopCenterAlignment
      Category = 0
    end
    object bbFloatingObjectTopRight: TdxBarLargeButton [228]
      Action = acFloatingObjectTopRightAlignment
      Category = 0
    end
    object bbFloatingObjectMiddleLeft: TdxBarLargeButton [229]
      Action = acFloatingObjectMiddleLeftAlignment
      Category = 0
    end
    object bbFloatingObjectMiddleCenter: TdxBarLargeButton [230]
      Action = acFloatingObjectMiddleCenterAlignment
      Category = 0
    end
    object bbFloatingObjectMiddleRight: TdxBarLargeButton [231]
      Action = acFloatingObjectMiddleRightAlignment
      Category = 0
    end
    object bbFloatingObjectBottomLeft: TdxBarLargeButton [232]
      Action = acFloatingObjectBottomLeftAlignment
      Category = 0
    end
    object bbFloatingObjectBottomCenter: TdxBarLargeButton [233]
      Action = acFloatingObjectBottomCenterAlignment
      Category = 0
    end
    object bbFloatingObjectBottomRight: TdxBarLargeButton [234]
      Action = acFloatingObjectBottomRightAlignment
      Category = 0
    end
    object bbBringForward: TdxBarLargeButton [235]
      Action = acFloatingObjectBringForward
      Category = 0
    end
    object bbBringToFront: TdxBarLargeButton [236]
      Action = acFloatingObjectBringToFront
      Category = 0
    end
    object bbBringInFrontOfText: TdxBarLargeButton [237]
      Action = acFloatingObjectBringInFrontOfText
      Category = 0
    end
    object bbSendBackward: TdxBarLargeButton [238]
      Action = acFloatingObjectSendBackward
      Category = 0
    end
    object bbSendToBack: TdxBarLargeButton [239]
      Action = acFloatingObjectSendToBack
      Category = 0
    end
    object bbSendBehindText: TdxBarLargeButton [240]
      Action = acFloatingObjectSendBehindText
      Category = 0
    end
    object bbTextBox: TdxBarLargeButton [241]
      Action = acTextBox
      Category = 0
    end
    object bbSpelling: TdxBarLargeButton [242]
      Action = acCheckSpelling
      Category = 0
    end
    object bbShowPrintForm: TdxBarLargeButton [243]
      Action = acShowPrintForm
      Category = 0
    end
    object bbShowPrintPreviewForm: TdxBarLargeButton [244]
      Action = acShowPrintPreviewForm
      Category = 0
    end
    object bbPageSetup: TdxBarLargeButton [245]
      Action = acShowPageSetupForm
      Category = 0
    end
    object bbViewGridLines: TdxBarLargeButton [246]
      Action = acShowTableGridLines
      Category = 0
    end
    object bbWidthLines: TcxBarEditItem [247]
      Action = acOutlineWidth
      Category = 0
      Width = 115
      PropertiesClassName = 'TcxImageComboBoxProperties'
      Properties.ClearKey = 46
      Properties.DropDownRows = 9
      Properties.ImageAlign = iaRight
      Properties.Images = ilWidthLines
      Properties.Items = <
        item
          Description = '0.25 pt'
          ImageIndex = 1
          Value = 5
        end
        item
          Description = '0.5 pt'
          ImageIndex = 2
          Value = 10
        end
        item
          Description = '0.75 pt'
          ImageIndex = 3
          Value = 15
        end
        item
          Description = '1 pt'
          ImageIndex = 4
          Value = 20
        end
        item
          Description = '1.5 pt'
          ImageIndex = 5
          Value = 30
        end
        item
          Description = '2.25 pt'
          ImageIndex = 6
          Value = 45
        end
        item
          Description = '3 pt'
          ImageIndex = 7
          Value = 60
        end
        item
          Description = '4.5 pt'
          ImageIndex = 8
          Value = 90
        end
        item
          Description = '6 pt'
          ImageIndex = 9
          Value = 120
        end>
    end
    object bbFloatingObjectFillColor: TdxBarButton [248]
      Caption = 'Shape Fill'
      Category = 0
      Hint = 'Fill the selected shape with a solid color.'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppmFloatingObjectFillColor
      ImageIndex = 161
      LargeImageIndex = 161
      OnClick = bbFloatingObjectFillColorClick
    end
    object bbFloatingObjectOutlineColor: TdxBarButton [249]
      Caption = 'Shape Outline'
      Category = 0
      Hint = 'Specify color for the outline of the selected shape.'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = ppmFloatingObjectOutlineColor
      ImageIndex = 162
      LargeImageIndex = 162
      OnClick = bbFloatingObjectOutlineColorClick
    end
    object rgiFloatingObjectFillColor: TdxRibbonGalleryItem [250]
      Caption = 'Fill Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object rgiFloatingObjectFillColorTheme: TdxRibbonGalleryItem [251]
      Caption = 'Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object rgiFloatingObjectOutlineColor: TdxRibbonGalleryItem [252]
      Caption = 'Outline Color'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      ItemLinks = <>
    end
    object rgiFloatingObjectOutlineColorTheme: TdxRibbonGalleryItem [253]
      Caption = 'Color Theme'
      Category = 0
      Visible = ivNever
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object bbTableOfContents: TdxBarLargeButton [254]
      Action = acTableOfContents
      Category = 0
    end
    object bbUpdateTable: TdxBarLargeButton [255]
      Action = acUpdateTableOfContents
      Category = 0
    end
    object bsiAddText: TdxBarSubItem [256]
      Caption = 'Add Text'
      Category = 0
      Visible = ivAlways
      ImageIndex = 169
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTableOfContentNoShow'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel1'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel2'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel3'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel4'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel5'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel6'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel7'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel8'
        end
        item
          Visible = True
          ItemName = 'bbTableOfContentLevel9'
        end>
    end
    object bbTableOfContentNoShow: TdxBarLargeButton [257]
      Action = acTableOfContentsSetParagraphBodyTextLevel
      Category = 0
    end
    object bbTableOfContentLevel1: TdxBarLargeButton [258]
      Action = acTableOfContentsSetParagraphHeading1Level1
      Category = 0
    end
    object bbTableOfContentLevel2: TdxBarLargeButton [259]
      Action = acTableOfContentsSetParagraphHeading2Level1
      Category = 0
    end
    object bbTableOfContentLevel3: TdxBarLargeButton [260]
      Action = acTableOfContentsSetParagraphHeading3Level1
      Category = 0
    end
    object bbTableOfContentLevel4: TdxBarLargeButton [261]
      Action = acTableOfContentsSetParagraphHeading4Level1
      Category = 0
    end
    object bbTableOfContentLevel5: TdxBarLargeButton [262]
      Action = acTableOfContentsSetParagraphHeading5Level1
      Category = 0
    end
    object bbTableOfContentLevel6: TdxBarLargeButton [263]
      Action = acTableOfContentsSetParagraphHeading6Level1
      Category = 0
    end
    object bbTableOfContentLevel7: TdxBarLargeButton [264]
      Action = acTableOfContentsSetParagraphHeading7Level1
      Category = 0
    end
    object bbTableOfContentLevel8: TdxBarLargeButton [265]
      Action = acTableOfContentsSetParagraphHeading8Level1
      Category = 0
    end
    object bbTableOfContentLevel9: TdxBarLargeButton [266]
      Action = acTableOfContentsSetParagraphHeading9Level1
      Category = 0
    end
    object bsiInsertCaption: TdxBarSubItem [267]
      Caption = 'Insert Caption'
      Category = 0
      Visible = ivAlways
      ImageIndex = 170
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbFiguresCaption'
        end
        item
          Visible = True
          ItemName = 'bbTablesCaption'
        end
        item
          Visible = True
          ItemName = 'bbEquationsCaption'
        end>
    end
    object bsiInsertTableOfFigures: TdxBarSubItem [268]
      Caption = 'Insert Table of Figures'
      Category = 0
      Visible = ivAlways
      ImageIndex = 171
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbTableOfFigures'
        end
        item
          Visible = True
          ItemName = 'bbTableOfTables'
        end
        item
          Visible = True
          ItemName = 'bbTableOfEquations'
        end>
    end
    object bbFiguresCaption: TdxBarLargeButton [269]
      Action = acInsertFiguresCaption
      Category = 0
    end
    object bbTablesCaption: TdxBarLargeButton [270]
      Action = acInsertTablesCaption
      Category = 0
    end
    object bbEquationsCaption: TdxBarLargeButton [271]
      Action = acInsertEquationsCaption
      Category = 0
    end
    object bbTableOfFigures: TdxBarLargeButton [272]
      Action = acInsertTableOfFigures
      Category = 0
    end
    object bbTableOfTables: TdxBarLargeButton [273]
      Action = acInsertTableOfTables
      Category = 0
    end
    object bbTableOfEquations: TdxBarLargeButton [274]
      Action = acInsertTableOfEquations
      Category = 0
    end
    object bbUpdateTableofFigures: TdxBarLargeButton [275]
      Action = acUpdateTableOfFigures
      Category = 0
    end
    object bbProtectDocument: TdxBarLargeButton [276]
      Action = acProtectDocument
      Category = 0
    end
    object bbRangeEditingPermissions: TdxBarLargeButton [277]
      Action = acRangeEditingPermissions
      Category = 0
    end
    object bbUnprotectDocument: TdxBarLargeButton [278]
      Action = acUnprotectDocument
      Category = 0
    end
    object bbNewComment: TdxBarLargeButton [279]
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bbDelete: TdxBarLargeButton [280]
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bbPrevious: TdxBarLargeButton [281]
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bbNext: TdxBarLargeButton [282]
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bbEncrypt: TdxBarLargeButton [283]
      Action = acEncryptDocument
      Category = 0
    end
    object bbCheckAsYouType: TdxBarLargeButton [284]
      Caption = 'Check As You Type'
      Category = 0
      Hint = 'Check As You Type'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = bbCheckAsYouTypeClick
      LargeImageIndex = 161
      SyncImageIndex = False
      ImageIndex = 161
    end
    object beiReplaceAsYouType: TcxBarEditItem [285]
      Caption = 'Replace As You Type'
      Category = 0
      Hint = 'Replace As You Type'
      Visible = ivAlways
      OnChange = AutoCorrectChange
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object beiCorrectInitialCaps: TcxBarEditItem [286]
      Caption = 'Correct INitial CAps'
      Category = 0
      Hint = 'Correct INitial CAps'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object beiUseSpellCheckerSuggestions: TcxBarEditItem [287]
      Caption = 'Use SpellChecker Suggestions'
      Category = 0
      Hint = 'Use SpellChecker Suggestions'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object beiCorrectSentenceCaps: TcxBarEditItem [288]
      Caption = 'Correct Sentence Caps'
      Category = 0
      Hint = 'Correct Sentence Caps'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object beiCorrectCapsLock: TcxBarEditItem [289]
      Caption = 'Correct Caps Lock'
      Category = 0
      Hint = 'Correct Caps Lock'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
    end
    object beOfficeSearchBox: TcxBarEditItem [290]
      Caption = 'Office Search Box'
      Category = 0
      Hint = 'Type here to search for a specific command'
      KeyTip = 'Q'
      Visible = ivNotInCustomizing
      Width = 200
      PropertiesClassName = 'TdxOfficeSearchBoxProperties'
      Properties.BarManager = dxBarManager
      Properties.Glyph.SourceDPI = 96
      Properties.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001A744558745469746C650053756767657374696F6E3B496465613B4C
        616D701B5C59110000025F49444154785E85934B4854511CC6BF3B8ECE183DD4
        02C5DC2559B93162126A510811B68A16B66AD3A64DD426C3E8411845221A2411
        213D445AB410A274550A61168186086A334EEA8C8EE3D83C6C66EEF3DC734EE7
        84792B2FF5C1C7F973BFFBFFF13FE770C039978654E4C161B92893ED818699CE
        83AFC39D8158A8E3406CBAADAEFFC38DDA63000A642EECF4FD0E9061F05EFDD5
        E8D346AE065F72AA26B82D9C17F5ECA3063E7A736F3B804209F905F0C09132D1
        1668282E2D6BDD71A809BE9D0170460066C12FEA8AA36750565575E96DF3AE26
        C0E9F3C291C75F885B5B6BAA3DCC0883E6AA00F0F590E93328A9A9C6B6F9B98B
        00FA84E9DF00059CD7166EDF0CAE4EC1FEAEC1E3AB8414B3E2E06C16C595FBE0
        2D60756B67810D004EA918C312B182027F1194220E8083912230F14DF1110162
        1052D6C7862358944E5B892580507033013BF55E78043096019B415F8C4033D9
        84A4BA4DC0169246EBA6D1D040F9FE7210E30B1CAD40F19520391E412C63F600
        20AE80131DA1C1772DD5F7BD5E72614B19C0890129C5EB432E9D47782AF5FC74
        77E29904B86D810B5B47EE86AF2FCFAB537A7C15DC02B470129AA8E783996063
        575CDE8026CCDD009868DD2D03339327836ACA00CDADC2CEEA50533A52393204
        40FFD45C4E21E40AE8C135B9D05EFDECD8AB8AC7F85A3F8CFE3D7DE8326FE3E1
        F2A93100F69DC57370073862D1B9E9B19595CCFA6DE5B2792C45433F013621FF
        05F0E1372F16D2E9CC3755D361125B00B2C9C9F1A1A8CC88FD0F00B529CE5FE9
        E6008C5864E6F293DE81F4C791CFE9F862B8058076FC643397FFFC21E7356E00
        FB854BA5D76A8F5BDF0F47CC49F47EBE179B0000000049454E44AE426082}
      Properties.Nullstring = 'Type a command to execute...'
      Properties.Ribbon = dxRibbon1
      Properties.SearchSource = dxRibbon1
      Properties.UseNullString = True
    end
    object biRecursiveSearch: TdxBarLargeButton [296]
      Caption = 'Recursive Search'
      Category = 0
      Hint = 'Recursive Search'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = biRecursiveSearchClick
      LargeImageIndex = 194
      SyncImageIndex = False
      ImageIndex = 183
    end
    object biShowPaths: TdxBarLargeButton [297]
      Caption = 'Show Paths'
      Category = 0
      Hint = 'Show Paths'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = biShowPathsClick
      LargeImageIndex = 195
      SyncImageIndex = False
      ImageIndex = 184
    end
    object rgiOrientation: TdxRibbonGalleryItem [298]
      Caption = 'Orientation'
      Category = 0
      Visible = ivAlways
      ImageIndex = 128
      GalleryOptions.ColumnCount = 1
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.Collapsed = True
      GalleryInRibbonOptions.MinColumnCount = 1
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      GalleryInMenuOptions.ItemTextAlignVert = vaCenter
      ItemLinks = <>
      object rgiOrientationGroup1: TdxRibbonGalleryGroup
        Header.Caption = 'Group0'
        Options.Images = dmMain.ilBarLarge
        object rgiOrientationGroup1Item1: TdxRibbonGalleryGroupItem
          Action = acPortrait
          ImageIndex = 196
          ActionIndex = nil
        end
        object rgiOrientationGroup1Item2: TdxRibbonGalleryGroupItem
          Action = acLandscape
          ImageIndex = 197
          ActionIndex = nil
        end
      end
    end
    object bbModifyStyle: TdxBarButton [299]
      Caption = 'Modify Style...'
      Category = 0
      Visible = ivAlways
      OnClick = bbModifyStyleClick
    end
    object bbRenameStyle: TdxBarButton [300]
      Caption = 'Rename...'
      Category = 0
      Visible = ivAlways
      OnClick = bbRenameStyleClick
    end
    object bcUser: TcxBarEditItem [301]
      Caption = 'User'
      Category = 0
      Hint = 'User'
      Visible = ivAlways
      OnChange = bcUserChange
      ShowCaption = True
      PropertiesClassName = 'TcxComboBoxProperties'
    end
    object dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem [302]
      Action = dxRichEditControlQuickStylesGallery
      Category = 1
      LargeImageIndex = 179
      GalleryOptions.ColumnCount = 4
      GalleryOptions.PopupMenu = ppmQuickStyles
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrHeight
      GalleryInMenuOptions.ItemTextKind = itkNone
      ItemLinks = <>
      OnShowPopupMenu = dxRibbonGalleryItemQuickStylesShowPopupMenu
      object dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup
      end
    end
    object dxRibbonGalleryItemMargins: TdxRibbonGalleryItem [303]
      Action = dxRichEditControlPageMarginsGallery
      Category = 2
      LargeImageIndex = 181
      GalleryOptions.ColumnCount = 1
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.Collapsed = True
      GalleryInRibbonOptions.MinColumnCount = 1
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      GalleryInMenuOptions.ItemTextKind = itkCaptionAndDescription
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbMargins'
        end>
      object dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup
        Options.Images = dmMain.ilBarLarge
        object dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem
          Caption = 'Normal'
          Description = 'Top:'#9'0.79 in    Bottom:'#9'0.79 in'#13#10'Left:'#9'1.18 in    Right:'#9'0.59 in'
          ImageIndex = 183
          ActionIndex = 0
        end
        object dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem
          Caption = 'Narrow'
          Description = 'Top:'#9'0.50 in    Bottom:'#9'0.50 in'#13#10'Left:'#9'0.50 in    Right:'#9'0.50 in'
          ImageIndex = 184
          ActionIndex = 1
        end
        object dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem
          Caption = 'Moderate'
          Description = 'Top:'#9'1.00 in    Bottom:'#9'1.00 in'#13#10'Left:'#9'0.75 in    Right:'#9'0.75 in'
          ImageIndex = 183
          ActionIndex = 2
        end
        object dxRibbonGalleryItemMarginsGroup1Item4: TdxRibbonGalleryGroupItem
          Caption = 'Wide'
          Description = 'Top:'#9'1.00 in    Bottom:'#9'1.00 in'#13#10'Left:'#9'2.00 in    Right:'#9'2.00 in'
          ImageIndex = 185
          ActionIndex = 3
        end
      end
    end
    object dxRibbonGalleryItemSize: TdxRibbonGalleryItem [304]
      Action = dxRichEditControlPaperSizeGallery
      Category = 2
      LargeImageIndex = 182
      GalleryOptions.ColumnCount = 1
      GalleryOptions.LongDescriptionDefaultRowCount = 1
      GalleryFilter.Categories = <>
      GalleryInRibbonOptions.Collapsed = True
      GalleryInRibbonOptions.MinColumnCount = 1
      GalleryInMenuOptions.DropDownGalleryResizing = gsrNone
      GalleryInMenuOptions.ItemTextKind = itkCaptionAndDescription
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbSize'
        end>
      object dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup
        Options.Images = dmMain.ilBarLarge
        object dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem
          Caption = 'Letter'
          Description = '8.50 in x 11.00 in'
          ImageIndex = 186
          ActionIndex = 1
        end
        object dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem
          Caption = 'Tabloid'
          Description = '11.00 in x 17.00 in'
          ImageIndex = 187
          ActionIndex = 3
        end
        object dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem
          Caption = 'Legal'
          Description = '8.50 in x 14.00 in'
          ImageIndex = 188
          ActionIndex = 5
        end
        object dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem
          Caption = 'Statement'
          Description = '5.50 in x 8.50 in'
          ImageIndex = 189
          ActionIndex = 6
        end
        object dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem
          Caption = 'Executive'
          Description = '7.25 in x 10.50 in'
          ImageIndex = 190
          ActionIndex = 7
        end
        object dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem
          Caption = 'A3'
          Description = '11.69 in x 16.54 in'
          ImageIndex = 191
          ActionIndex = 8
        end
        object dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem
          Caption = 'A4'
          Description = '8.27 in x 11.69 in'
          ImageIndex = 192
          ActionIndex = 9
        end
        object dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem
          Caption = 'A5'
          Description = '5.83 in x 8.27 in'
          ImageIndex = 193
          ActionIndex = 11
        end
        object dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem
          Caption = 'B4'
          Description = '9.84 in x 13.94 in'
          ImageIndex = 189
          ActionIndex = 12
        end
        object dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem
          Caption = 'B5'
          Description = '7.17 in x 10.12 in'
          ImageIndex = 189
          ActionIndex = 13
        end
      end
    end
    object dxRibbonGalleryItemTableStyles: TdxRibbonGalleryItem [305]
      Action = dxRichEditControlTableStylesGallery
      Category = 3
      LargeImageIndex = 180
      GalleryOptions.ColumnCount = 7
      GalleryFilter.Categories = <>
      GalleryInMenuOptions.CollapsedInSubmenu = False
      GalleryInMenuOptions.DropDownGalleryResizing = gsrHeight
      GalleryInMenuOptions.ItemTextKind = itkNone
      ItemLinks = <>
      object dxRibbonGalleryItemTableStylesGroup1: TdxRibbonGalleryGroup
      end
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    Left = 636
    Top = 215
    PixelsPerInch = 96
  end
  inherited dxPageSetupDialog1: TdxPageSetupDialog
    Left = 524
    Top = 343
  end
  inherited dxSkinController1: TdxSkinController
    Left = 632
    Top = 280
  end
  inherited RibbonApplicationMenu: TdxBarApplicationMenu
    Buttons = <
      item
        Item = bbOptions
      end
      item
        Item = bbExit
      end>
    ExtraPane.Visible = False
    Left = 232
    Top = 336
    PixelsPerInch = 96
  end
  inherited dxPSEngineController1: TdxPSEngineController
    Active = True
    Left = 634
    Top = 339
  end
  inherited ilBarSmall: TcxImageList
    FormatVersion = 1
    DesignInfo = 14156304
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000030000000E000000150000
          000C000000020000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000012502B189CAC673CFF3217
          0C7A0000000C0000000100000000000000000000000000000000000000000000
          000000000000000000000000000200000010502B199ABE8356FFD8AB76FF904E
          2EF41108043D0000000600000000000000000000000000000000000000000000
          000000000000000000020000000E522D1A97C0875AFFDEB480FFDEB37FFFC997
          67FF6B351CCE0000001500000002000000000000000000000000000000000000
          0000000000010000000C54301C94C38C5FFFE3BD8BFFF0DBB1FFEACFA1FFDFB7
          83FFB57A50FF4020118A0000000C000000010000000000000000000000000000
          00000000000655321E90C69164FFEBD0A2FFF3E3BDFFCC9C72FFD9B48BFFECD1
          A4FFDFB886FFA1603CFC1A0D0748000000070000000100000000000000000000
          000000000008C68B5AFFF2DEB5FFE6CCA5FFB27B52EF3B261868623F289ADAB5
          8DFFEBCEA1FFDAB080FF8C5031E70D07042B0000000400000000000000000000
          0000000000032E1F1449C78D5CFF7E5436B2100A0723000000070000000C7950
          32B2E2C49BFFEBCDA0FFD2A678FF743F25CA0201011400000002000000000000
          0000000000000000000300000006000000050000000200000000000000020503
          02128A5E3EC2E8CDA5FFEDD3A7FFC8966BFF5A321DA10000000D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002070503158D6240C4E5C89FFFF0D7ACFFC08A61FF4527177D000000050000
          0004000000050000000400000007000000070000000400000001000000030000
          0008000000090503021281593AB2E4C49CFFF4E1B8FFC78C5BFF6C3F2DFF0A06
          04266B3E2CFF0804031D6A3D2BFF693D2BFF1F120D540201010B190E0A46673B
          29FF673B29FF000000060202010B775236A5CA905FFF2F20144A704130FF6F40
          30FF6F402FFF090504206D402EFF0D0806306C3F2DFF030201136B3E2CFF0000
          000C000000060000000200000001000000040000000600000003744533FF0906
          0421724332FF0804031A714231FF704131FF351E167F030201116F402FFF0000
          0006000000000000000000000000000000000000000000000000774736FF2214
          1050764635FF06040315754634FF0A060521744533FF0302010D724332FF0000
          00080000000400000001000000000000000000000000000000001F130F457949
          38FF20130F460302010A784837FF774737FF20130F49010100051C110D427545
          35FF754634FF0000000200000000000000000000000000000000}
      end>
  end
  inherited ilBarLarge: TcxImageList
    FormatVersion = 1
    DesignInfo = 18350608
    ImageInfo = <>
  end
  inherited ActionList1: TActionList
    Images = dmMain.ilBarSmall
    Left = 392
    Top = 272
    inherited actPrint: TAction
      ImageIndex = 4
      Visible = False
    end
    inherited actPrintPreview: TAction
      ImageIndex = 114
      Visible = False
    end
    inherited actPageSetup: TAction
      ImageIndex = 115
      Visible = False
    end
    object acExit: TAction
      Caption = 'E&xit'
      Hint = 'Exit'
      ShortCut = 32883
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
      Visible = False
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
    object acQATAboveRibbon: TAction
      Caption = 'Ab&ove the Ribbon'
      GroupIndex = 3
      OnExecute = acQATBelowRibbonExecute
      OnUpdate = acQATAboveRibbonUpdate
    end
    object acQATBelowRibbon: TAction
      Tag = 1
      Caption = 'B&elow the Ribbon'
      GroupIndex = 3
      OnExecute = acQATBelowRibbonExecute
      OnUpdate = acQATAboveRibbonUpdate
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
    end
    object acFontSize: TdxRichEditControlChangeFontSize
      Category = 'Home'
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
    object acShowPageSetupForm: TdxRichEditControlShowPageSetupForm
      Category = 'PageLayout'
      ImageIndex = 115
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
    object acInsertFloatingObjectPicture: TdxRichEditControlInsertFloatingObjectPicture
      Category = 'Insert'
      ImageIndex = 86
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
      Caption = 'Custom M&argins...'
      ImageIndex = 126
      AssignedValues.Caption = True
    end
    object acSize: TdxRichEditControlShowPagePaperSetupForm
      Category = 'PageLayout'
      Caption = 'More P&aper Sizes...'
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
    object acMergeDatabaseRecords: TdxRichEditControlShowMergeDatabaseRecordsForm
      Category = 'DevExpress RichEdit Control'
      ImageIndex = 120
    end
    object acFloatingObjectLayoutOptionsForm: TdxRichEditControlShowFloatingObjectLayoutOptionsForm
      Category = 'PictureTools'
      ImageIndex = 137
    end
    object acFloatingObjectSquareTextWrapType: TdxRichEditControlSetFloatingObjectSquareTextWrapType
      Category = 'PictureTools'
      ImageIndex = 138
    end
    object acFloatingObjectBehindTextWrapType: TdxRichEditControlSetFloatingObjectBehindTextWrapType
      Category = 'PictureTools'
      ImageIndex = 139
    end
    object acFloatingObjectInFrontOfTextWrapType: TdxRichEditControlSetFloatingObjectInFrontOfTextWrapType
      Category = 'PictureTools'
      ImageIndex = 140
    end
    object acFloatingObjectThroughTextWrapType: TdxRichEditControlSetFloatingObjectThroughTextWrapType
      Category = 'PictureTools'
      ImageIndex = 141
    end
    object acFloatingObjectTightTextWrapType: TdxRichEditControlSetFloatingObjectTightTextWrapType
      Category = 'PictureTools'
      ImageIndex = 142
    end
    object acFloatingObjectTopAndBottomTextWrapType: TdxRichEditControlSetFloatingObjectTopAndBottomTextWrapType
      Category = 'PictureTools'
      ImageIndex = 143
    end
    object acFloatingObjectTopLeftAlignment: TdxRichEditControlSetFloatingObjectTopLeftAlignment
      Category = 'PictureTools'
      ImageIndex = 144
    end
    object acFloatingObjectTopCenterAlignment: TdxRichEditControlSetFloatingObjectTopCenterAlignment
      Category = 'PictureTools'
      ImageIndex = 145
    end
    object acFloatingObjectTopRightAlignment: TdxRichEditControlSetFloatingObjectTopRightAlignment
      Category = 'PictureTools'
      ImageIndex = 146
    end
    object acFloatingObjectMiddleLeftAlignment: TdxRichEditControlSetFloatingObjectMiddleLeftAlignment
      Category = 'PictureTools'
      ImageIndex = 147
    end
    object acFloatingObjectMiddleCenterAlignment: TdxRichEditControlSetFloatingObjectMiddleCenterAlignment
      Category = 'PictureTools'
      ImageIndex = 148
    end
    object acFloatingObjectMiddleRightAlignment: TdxRichEditControlSetFloatingObjectMiddleRightAlignment
      Category = 'PictureTools'
      ImageIndex = 149
    end
    object acFloatingObjectBottomLeftAlignment: TdxRichEditControlSetFloatingObjectBottomLeftAlignment
      Category = 'PictureTools'
      ImageIndex = 150
    end
    object acFloatingObjectBottomCenterAlignment: TdxRichEditControlSetFloatingObjectBottomCenterAlignment
      Category = 'PictureTools'
      ImageIndex = 151
    end
    object acFloatingObjectBottomRightAlignment: TdxRichEditControlSetFloatingObjectBottomRightAlignment
      Category = 'PictureTools'
      ImageIndex = 152
    end
    object acFloatingObjectBringForward: TdxRichEditControlFloatingObjectBringForward
      Category = 'PictureTools'
      ImageIndex = 153
    end
    object acFloatingObjectBringToFront: TdxRichEditControlFloatingObjectBringToFront
      Category = 'PictureTools'
      ImageIndex = 154
    end
    object acFloatingObjectBringInFrontOfText: TdxRichEditControlFloatingObjectBringInFrontOfText
      Category = 'PictureTools'
      ImageIndex = 155
    end
    object acFloatingObjectSendBackward: TdxRichEditControlFloatingObjectSendBackward
      Category = 'PictureTools'
      ImageIndex = 156
    end
    object acFloatingObjectSendToBack: TdxRichEditControlFloatingObjectSendToBack
      Category = 'PictureTools'
      ImageIndex = 157
    end
    object acFloatingObjectSendBehindText: TdxRichEditControlFloatingObjectSendBehindText
      Category = 'PictureTools'
      ImageIndex = 158
    end
    object acTextBox: TdxRichEditControlInsertTextBox
      Category = 'Insert'
      ImageIndex = 159
    end
    object acCheckSpelling: TdxRichEditControlCheckSpelling
      Category = 'DevExpress RichEdit Control'
      ImageIndex = 160
    end
    object acShowPrintForm: TdxRichEditControlShowPrintForm
      Category = 'Print'
      ImageIndex = 162
    end
    object acShowPrintPreviewForm: TdxRichEditControlShowPrintPreviewForm
      Category = 'Print'
      ImageIndex = 163
    end
    object acShowTableGridLines: TdxRichEditControlToggleShowTableGridLines
      Category = 'TableToolsLayout'
      ImageIndex = 164
    end
    object acChangeFloatingObjectFillColor: TdxRichEditControlChangeFloatingObjectFillColor
      Category = 'PictureTools'
      ImageIndex = 165
    end
    object acChangeFloatingObjectOutlineColor: TdxRichEditControlChangeFloatingObjectOutlineColor
      Category = 'PictureTools'
      ImageIndex = 166
    end
    object acOutlineWidth: TdxRichEditControlChangeFloatingObjectOutlineWidth
      Category = 'PictureTools'
    end
    object acTableOfContents: TdxRichEditControlInsertTableOfContents
      Category = 'References'
      ImageIndex = 167
    end
    object acUpdateTableOfContents: TdxRichEditControlUpdateTableOfContents
      Category = 'References'
      ImageIndex = 168
    end
    object acTableOfContentsSetParagraphBodyTextLevel: TdxRichEditControlTableOfContentsSetParagraphBodyTextLevel
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading1Level1: TdxRichEditControlTableOfContentsSetParagraphHeading1Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading2Level1: TdxRichEditControlTableOfContentsSetParagraphHeading2Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading3Level1: TdxRichEditControlTableOfContentsSetParagraphHeading3Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading4Level1: TdxRichEditControlTableOfContentsSetParagraphHeading4Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading5Level1: TdxRichEditControlTableOfContentsSetParagraphHeading5Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading6Level1: TdxRichEditControlTableOfContentsSetParagraphHeading6Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading7Level1: TdxRichEditControlTableOfContentsSetParagraphHeading7Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading8Level1: TdxRichEditControlTableOfContentsSetParagraphHeading8Level
      Category = 'References'
    end
    object acTableOfContentsSetParagraphHeading9Level1: TdxRichEditControlTableOfContentsSetParagraphHeading9Level
      Category = 'References'
    end
    object acInsertFiguresCaption: TdxRichEditControlInsertFigureCaption
      Category = 'References'
      ImageIndex = 172
    end
    object acInsertTablesCaption: TdxRichEditControlInsertTableCaption
      Category = 'References'
      ImageIndex = 173
    end
    object acInsertEquationsCaption: TdxRichEditControlInsertEquationCaption
      Category = 'References'
      ImageIndex = 174
    end
    object acInsertTableOfFigures: TdxRichEditControlInsertTableOfFigures
      Category = 'References'
      ImageIndex = 172
    end
    object acInsertTableOfTables: TdxRichEditControlInsertTableOfTables
      Category = 'References'
      ImageIndex = 173
    end
    object acInsertTableOfEquations: TdxRichEditControlInsertTableOfEquations
      Category = 'References'
      ImageIndex = 174
    end
    object acUpdateTableOfFigures: TdxRichEditControlUpdateTableOfFigures
      Category = 'References'
      ImageIndex = 168
    end
    object acProtectDocument: TdxRichEditControlProtectDocument
      Category = 'Protect'
      ImageIndex = 175
    end
    object acUnprotectDocument: TdxRichEditControlUnprotectDocument
      Category = 'Protect'
      ImageIndex = 177
    end
    object acRangeEditingPermissions: TdxRichEditControlShowRangeEditingPermissions
      Category = 'Protect'
      ImageIndex = 176
    end
    object acEncryptDocument: TdxRichEditControlEncryptDocument
      Category = 'Protect'
      ImageIndex = 178
    end
    object dxRichEditControlQuickStylesGallery: TdxRichEditControlQuickStylesGallery
      Category = 'DevExpress RichEdit Control.Home.Styles'
      ImageIndex = 179
      GalleryGroup = dxRibbonGalleryItemQuickStylesGroup1
    end
    object dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
      ImageIndex = 181
    end
    object dxRichEditControlPaperSizeGallery: TdxRichEditControlPaperSizeGallery
      Category = 'DevExpress RichEdit Control.Page Layout.Page Setup'
      ImageIndex = 182
    end
    object dxRichEditControlTableStylesGallery: TdxRichEditControlTableStylesGallery
      Category = 'DevExpress RichEdit Control.Table Design.Table Styles'
      ImageIndex = 180
      GalleryGroup = dxRibbonGalleryItemTableStylesGroup1
    end
  end
  inherited SaveDialog: TdxSaveFileDialog
    Left = 234
    Top = 393
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 384
    Top = 336
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelBoldItemCaption: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object stBarScreenTips: TdxScreenTipRepository
    StandardFooter.Glyph.SourceDPI = 96
    StandardFooter.Glyph.Data = {
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
        000000000000C40E0000C40E00000000000000000000FC02FC00FC02FC00FC02
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
    object stRibbonForm: TdxScreenTip
      Header.Text = 'Ribbon Form'
      Description.Text = 'Toggle to display the editor either as a ribbon or normal form.'
    end
    object stAppButton: TdxScreenTip
      Header.Text = 'Application Button'
      Description.Text = 'Toggle to show/hide Application Button.'
    end
    object stQAT: TdxScreenTip
      Header.Text = 'Quick Access Toolbar Visibility'
      Description.Text = 'Toggle to show/hide Quick Access Toolbar.'
    end
    object stQATBelow: TdxScreenTip
      Header.Text = 'Below the Ribbon'
      Description.Text = 'Show Quick Access Toolbar below the Ribbon.'
    end
    object stQATAbove: TdxScreenTip
      Header.Text = 'Above the Ribbon'
      Description.Text = 'Show Quick Access Toolbar above the Ribbon.'
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
    BarManager = dxBarManager
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 104
    Top = 216
    PixelsPerInch = 96
  end
  object ilSmallColorSchemesGlyphs: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 14156008
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000020000000800000010000000180000001D0000001E0000
          0019000000110000000800000002000000000000000000000000000000000000
          000000000003000000102B21195569513EA29E7A5CD6C29673F4C29673F49E79
          5DD769513EA42B21195800000011000000030000000000000000000000000000
          000300000013503B2A88AD8260E7D6AB88FFE1BEA1FFEACDB6FFEBCEB7FFE2C0
          A4FFD7AD8BFFAD8461E8503B2A8B000000150000000300000000000000010000
          000E4B342285B9855BF8D3A27BFFE2B896FFE4BC9CFFE5BFA1FFE5C0A2FFE5BF
          A0FFE4BC9CFFD5A680FFBB875EF94B34228A0000001000000001000000062317
          0D4D97643BE5C78D5EFFD59E72FFD7A278FFD9A67EFFDAA982FFDAA983FFDAA8
          81FFD8A57DFFD7A177FFC88F62FF97653DE723170D53000000070000000B5031
          1898B2723FFFC98A57FFCB8E5CFFCC9060FFCD9364FFCE9465FFCE9466FFCE94
          65FFCD9263FFCC9060FFCB8D5CFFB27441FF5132189E0000000E0000000E7241
          1BCEB4723CFFC07E48FFC0804BFFC1814EFFC28350FFC28451FFC28451FFC284
          51FFC28351FFC1824EFFC1814DFFB47440FF72411BD2000000130000000F8B4F
          1FF1B5723DFFB8743FFFB97641FFBB7A46FFBD7E4CFFBF8352FFBF8453FFBE82
          50FFBC7D4AFFBA7943FFB97541FFB5723DFF8B4F1FF2000000150000000D8B4F
          1FF1AF6D37FFB2713BFFB67745FFBA7F50FFBB8253FFBC8355FFBD8457FFBD85
          57FFBD8557FFB87D4CFFB3723EFFAF6D37FF8B4F1FF2000000130000000A7040
          19CAA66330FFB27342FFB98053FFBB8459FFBD885DFFBE8A61FFBF8C63FFC08C
          64FFBF8C63FFBE8A61FFB5794AFFA6632FFF70401ACE0000000E000000064B2B
          118C9C5C28FFB58054FFBB8961FFBE8F69FFC1936FFFC39672FFC49875FFC499
          76FFC49875FFC29672FFBC8C64FF9C5C28FF4B2B119300000009000000021E11
          073E804A1EDEAD784CFFC09572FFC49C7BFFC7A081FFC9A385FFCAA588FFCAA6
          88FFCAA688FFC8A385FFB3825AFF814A1EE11E11074400000004000000000000
          00043D240F70965D2FF6B88B67FFCBA98CFFCFAE94FFD1B299FFD2B49CFFD2B5
          9DFFD2B39BFFBE9575FF986032F63D230F750000000700000001000000000000
          0001000000043F26126E88562EDDB48560FFC6A285FFD4B8A2FFD6BBA5FFC9A6
          8CFFB78A66FF895730DE3F261273000000070000000100000000000000000000
          0000000000000000000221140B3A50321B86794B28C4945D31EE945D31EE794C
          28C551321B8821140B3D00000004000000010000000000000000000000000000
          0000000000000000000000000001000000020000000300000004000000040000
          0004000000030000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000020000000800000010000000180000001D0000001E0000
          0019000000110000000800000002000000000000000000000000000000000000
          000000000003000000101C1C1C55464646A26B6B6BD6858585F4848484F46969
          69D7444444A41B1B1B5800000011000000030000000000000000000000000000
          000300000013303030886D6D6DE78D8D8DFF9B9B9BFFA7A7A7FFA8A8A8FF9C9C
          9CFF8C8C8CFF6A6A6AE82E2E2E8B000000150000000300000000000000010000
          000E28282885656565F8717171FF7D7D7DFF858585FF888888FF898989FF8787
          87FF818181FF737373FF626262F92626268A0000001000000001000000061111
          114D494949E5545454FF5A5A5AFF606060FF646464FF686868FF686868FF6666
          66FF616161FF5C5C5CFF565656FF474747E711111153000000070000000B2828
          2898464646FF414141FF454545FF484848FF4B4B4BFF4D4D4DFF4D4D4DFF4C4C
          4CFF494949FF464646FF434343FF474747FF2828289E0000000E0000000E3A3A
          3ACE393939FF343434FF373737FF383838FF3A3A3AFF3C3C3CFF3C3C3CFF3C3C
          3CFF3A3A3AFF383838FF373737FF3A3A3AFF3A3A3AD2000000130000000F4444
          44F12F2F2FFF2D2D2DFF2F2F2FFF343434FF3A3A3AFF404040FF414141FF3E3E
          3EFF383838FF303030FF2D2D2DFF2F2F2FFF454545F2000000150000000D4141
          41F12D2D2DFF2D2D2DFF383838FF434343FF464646FF494949FF4B4B4BFF4B4B
          4BFF4B4B4BFF3F3F3FFF303030FF2D2D2DFF424242F2000000130000000A3333
          33CA2E2E2EFF363636FF494949FF4F4F4FFF545454FF575757FF5A5A5AFF5B5B
          5BFF5A5A5AFF575757FF404040FF2F2F2FFF333333CE0000000E000000062020
          208C323232FF4B4B4BFF595959FF616161FF676767FF6B6B6BFF6E6E6EFF6F6F
          6FFF6E6E6EFF6A6A6AFF5C5C5CFF333333FF2121219300000009000000021010
          103E393939DE525252FF6C6C6CFF757575FF7C7C7CFF808080FF838383FF8484
          84FF838383FF7F7F7FFF616161FF3B3B3BE11010104400000004000000000000
          000426262670535353F6737373FF898989FF909090FF969696FF989898FF9999
          99FF979797FF818181FF585858F6262626750000000700000001000000000000
          0001000000042D2D2D6E5D5D5DDD818181FF939393FFA5A5A5FFA8A8A8FF9B9B
          9BFF888888FF5F5F5FDE2E2E2E73000000070000000100000000000000000000
          000000000000000000021C1C1C3A42424286616161C4777777EE777777EE6262
          62C5434343881C1C1C3D00000004000000010000000000000000000000000000
          0000000000000000000000000001000000020000000300000004000000040000
          0004000000030000000100000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000004000000100000001F0000002E00000037000000390000
          0030000000210000001000000004000000000000000000000000000000000000
          0000000000060000001F4F48438EA19891DEC3BDB9F9CFCDCCFFCFCDCCFFC2BD
          B9F9A19891DF4E48439200000021000000060000000000000000000000000000
          00060000002581766FC8C7C2BFFDD7D7D7FFE0E0E0FFE7E7E7FFE8E8E8FFE1E1
          E1FFD8D8D8FFC6C3BFFD7F766ECB000000290000000600000000000000020000
          001C756A61C5C5C4C3FFD3D3D3FFDDDDDDFFDFDFDFFFE1E1E1FFE1E1E1FFE1E1
          E1FFDFDFDFFFD5D5D5FFC6C5C4FF746961CA0000001F000000020000000C3C34
          2D83ABA6A1FDC9C9C9FFD1D1D1FFD3D3D3FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD3D3D3FFCACACAFFABA6A2FD3B332D8B0000000E000000166E61
          56D6B2B2B2FFC7C7C7FFC9C9C9FFCACACAFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCBCBCBFFCACACAFFC9C9C9FFB4B4B4FF6C6056DB0000001C0000001C7D75
          6DF6B2B2B2FFC1C1C1FFC2C2C2FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC3C3C3FFC3C3C3FFB5B5B5FF7C736CF8000000250000001E8582
          7FFFB3B3B3FFB6B6B6FFB9B9B9FFBEBEBEFFC1C1C1FFC4C4C4FFC4C4C4FFC3C3
          C3FFC1C1C1FFBCBCBCFFB8B8B8FFB3B3B3FF84817EFF000000290000001A8582
          7FFFAAAAAAFFB0B0B0FFBABABAFFC2C2C2FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC0C0C0FFB2B2B2FFAAAAAAFF84817EFF00000025000000147C72
          6AF49D9D9DFFB4B4B4FFC2C2C2FFC4C4C4FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8
          C8FFC8C8C8FFC7C7C7FFBDBDBDFF9D9D9DFF7B726AF60000001C0000000C6656
          4BCC919191FFC2C2C2FFC6C6C6FFC9C9C9FFCBCBCBFFCDCDCDFFCECECEFFCECE
          CEFFCECECEFFCDCDCDFFC8C8C8FF919191FF64564BD200000012000000043228
          206D857E78FBB9B9B9FFCCCCCCFFCFCFCFFFD1D1D1FFD3D3D3FFD4D4D4FFD4D4
          D4FFD4D4D4FFD3D3D3FFC3C3C3FF847E79FC3228207600000008000000000000
          00085A4C41AF979593FFC7C7C7FFD5D5D5FFD8D8D8FFDADADAFFDBDBDBFFDBDB
          DBFFDBDBDBFFCCCCCCFF9B9997FF594B40B50000000E00000002000000000000
          0002000000085F5145AD99928DFBC4C4C4FFD2D2D2FFDDDDDDFFDEDEDEFFD5D5
          D5FFC7C7C7FF9B948FFB5E5045B30000000E0000000200000000000000000000
          000000000000000000043930286775675CC692887FF29C9895FE9C9895FE9288
          7FF274665BC8392F286C00000008000000020000000000000000000000000000
          0000000000000000000000000002000000040000000600000008000000080000
          0008000000060000000200000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000004000000100000001F0000002E00000037000000390000
          0030000000210000001000000004000000000000000000000000000000000000
          0000000000060000001F3E38338E7A7069DE96918CF9A2A09FFFA2A09FFF9590
          8BF9797069DF3E37329200000021000000060000000000000000000000000000
          000600000025635951C8979390FDAFAFAFFFC1C1C1FFD0D0D0FFD1D1D1FFC3C3
          C3FFB1B1B1FF979390FD615850CB000000290000000600000000000000020000
          001C5A4F46C58F8D8CFFA7A7A7FFBCBCBCFFC0C0C0FFC3C3C3FFC3C3C3FFC2C2
          C2FFC0C0C0FFABABABFF908E8DFF584E46CA0000001F000000020000000C3028
          218378736FFD929292FFA4A4A4FFA7A7A7FFACACACFFAEAEAEFFAFAFAFFFAEAE
          AEFFAAAAAAFFA7A7A7FF959595FF78736FFD3028218B0000000E000000165548
          3ED6787878FF909090FF939393FF969696FF989898FF999999FF9A9A9AFF9999
          99FF989898FF969696FF939393FF797979FF52463DDB0000001C0000001C5D53
          4CF6787878FF848484FF868686FF878787FF898989FF898989FF898989FF8989
          89FF898989FF878787FF878787FF7A7A7AFF5A524BF8000000250000001E5D59
          56FF797979FF7C7C7CFF7D7D7DFF808080FF858585FF888888FF898989FF8787
          87FF838383FF7F7F7FFF7D7D7DFF797979FF5B5856FF000000290000001A5D59
          56FF737373FF777777FF7E7E7EFF858585FF878787FF888888FF8A8A8AFF8A8A
          8AFF8A8A8AFF828282FF787878FF737373FF5B5856FF00000025000000145C51
          4AF46B6B6BFF7A7A7AFF868686FF8A8A8AFF8D8D8DFF8F8F8FFF919191FF9292
          92FF919191FF8F8F8FFF808080FF6B6B6BFF5A5149F60000001C0000000C5042
          36CC626262FF858585FF8E8E8EFF939393FF989898FF9A9A9AFF9D9D9DFF9D9D
          9DFF9D9D9DFF9A9A9AFF909090FF626262FF4D4036D200000012000000042920
          186D5E5852FB7D7D7DFF999999FF9F9F9FFFA4A4A4FFA7A7A7FFA9A9A9FFA9A9
          A9FFA9A9A9FFA7A7A7FF878787FF5E5853FC291F187600000008000000000000
          0008483A2FAF686665FF8F8F8FFFACACACFFB1B1B1FFB5B5B5FFB7B7B7FFB7B7
          B7FFB6B6B6FF999999FF6A6867FF47392EB50000000E00000002000000000000
          0002000000084B3E32AD6D6660FB8A8A8AFFA6A6A6FFBBBBBBFFBEBEBEFFABAB
          ABFF8F8F8FFF6E6762FB4A3D32B30000000E0000000200000000000000000000
          000000000000000000042F261E675C4E42C66B6159F26D6966FE6D6966FE6B61
          59F25B4D42C82F251E6C00000008000000020000000000000000000000000000
          0000000000000000000000000002000000040000000600000008000000080000
          0008000000060000000200000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000004000000100000001F0000002E00000037000000390000
          0030000000210000001000000004000000000000000000000000000000000000
          0000000000060000001F4F48438EA19891DEC3BDB9F9CFCDCCFFCFCDCCFFC2BD
          B9F9A19891DF4E48439200000021000000060000000000000000000000000000
          00060000002581766FC8C7C2BFFDD7D7D7FFE0E0E0FFE7E7E7FFE8E8E8FFE1E1
          E1FFD8D8D8FFC6C3BFFD7F766ECB000000290000000600000000000000020000
          001C756A61C5C5C4C3FFD3D3D3FFDDDDDDFFDFDFDFFFE1E1E1FFE1E1E1FFE1E1
          E1FFDFDFDFFFD5D5D5FFC6C5C4FF746961CA0000001F000000020000000C3C34
          2D83ABA6A1FDC9C9C9FFD1D1D1FFD3D3D3FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6
          D6FFD4D4D4FFD3D3D3FFCACACAFFABA6A2FD3B332D8B0000000E000000166E61
          56D6B2B2B2FFC7C7C7FFC9C9C9FFCACACAFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCBCBCBFFCACACAFFC9C9C9FFB4B4B4FF6C6056DB0000001C0000001C7D75
          6DF6B2B2B2FFC1C1C1FFC2C2C2FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC3C3C3FFC3C3C3FFB5B5B5FF7C736CF8000000250000001E8582
          7FFFB3B3B3FFB6B6B6FFB9B9B9FFBEBEBEFFC1C1C1FFC4C4C4FFC4C4C4FFC3C3
          C3FFC1C1C1FFBCBCBCFFB8B8B8FFB3B3B3FF84817EFF000000290000001A8582
          7FFFAAAAAAFFB0B0B0FFBABABAFFC2C2C2FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC0C0C0FFB2B2B2FFAAAAAAFF84817EFF00000025000000147C72
          6AF49D9D9DFFB4B4B4FFC2C2C2FFC4C4C4FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8
          C8FFC8C8C8FFC7C7C7FFBDBDBDFF9D9D9DFF7B726AF60000001C0000000C6656
          4BCC919191FFC2C2C2FFC6C6C6FFC9C9C9FFCBCBCBFFCDCDCDFFCECECEFFCECE
          CEFFCECECEFFCDCDCDFFC8C8C8FF919191FF64564BD200000012000000043228
          206D857E78FBB9B9B9FFCCCCCCFFCFCFCFFFD1D1D1FFD3D3D3FFD4D4D4FFD4D4
          D4FFD4D4D4FFD3D3D3FFC3C3C3FF847E79FC3228207600000008000000000000
          00085A4C41AF979593FFC7C7C7FFD5D5D5FFD8D8D8FFDADADAFFDBDBDBFFDBDB
          DBFFDBDBDBFFCCCCCCFF9B9997FF594B40B50000000E00000002000000000000
          0002000000085F5145AD99928DFBC4C4C4FFD2D2D2FFDDDDDDFFDEDEDEFFD5D5
          D5FFC7C7C7FF9B948FFB5E5045B30000000E0000000200000000000000000000
          000000000000000000043930286775675CC692887FF29C9895FE9C9895FE9288
          7FF274665BC8392F286C00000008000000020000000000000000000000000000
          0000000000000000000000000002000000040000000600000008000000080000
          0008000000060000000200000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000080202021F0303033B0505055406060663060606660505
          05570303033E0202021F00000008000000000000000000000000000000000000
          00000101010C0303033B7F7771CDCCC4BFFBE0DDDBFFEAE9E9FFEAE9E9FFE0DD
          DAFFCBC3BEFB7F7770D10303033E0101010C0000000000000000000000000101
          010C04040445B0A69FF4E2E0DEFFF3F3F3FFFCFCFCFFFFFFFFFFFFFFFFFFFDFD
          FDFFF4F4F4FFE1E0DEFFADA49DF50404044C0101010C00000000000000040303
          0335A2978FF2E1E0E0FFEFEFEFFFF9F9F9FFFBFBFBFFFDFDFDFFFDFDFDFFFDFD
          FDFFFBFBFBFFF1F1F1FFE2E1E1FF9F958DF40303033B0000000401010118695B
          4FC3C5C2BFFFE5E5E5FFEDEDEDFFEFEFEFFFF1F1F1FFF2F2F2FFF2F2F2FFF2F2
          F2FFF0F0F0FFEFEFEFFFE6E6E6FFC6C2BFFF675A4ECB0202021C0202022B9689
          7DF9CECECEFFE3E3E3FFE5E5E5FFE6E6E6FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE7E7E7FFE6E6E6FFE5E5E5FFD0D0D0FF93857AFA03030335030303359C94
          8CFFCECECEFFDDDDDDFFDEDEDEFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFDFDFDFFFDFDFDFFFD1D1D1FF99918BFF0404044503030339A09E
          9CFFCFCFCFFFD2D2D2FFD5D5D5FFDADADAFFDDDDDDFFE0E0E0FFE0E0E0FFDFDF
          DFFFDDDDDDFFD8D8D8FFD4D4D4FFCFCFCFFF9F9D9BFF0404044C03030332A09E
          9CFFC6C6C6FFCCCCCCFFD6D6D6FFDEDEDEFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFDCDCDCFFCECECEFFC6C6C6FF9F9D9BFF04040445020202279B91
          8AFFB9B9B9FFD0D0D0FFDEDEDEFFE0E0E0FFE2E2E2FFE3E3E3FFE4E4E4FFE4E4
          E4FFE4E4E4FFE3E3E3FFD9D9D9FFB9B9B9FF9A9189FF0303033501010118917E
          6FF5ADADADFFDEDEDEFFE2E2E2FFE5E5E5FFE7E7E7FFE9E9E9FFEAEAEAFFEAEA
          EAFFEAEAEAFFE9E9E9FFE4E4E4FFADADADFF8E7C6EF802020223000000085E4B
          3CACA19B96FFD5D5D5FFE8E8E8FFEBEBEBFFEDEDEDFFEFEFEFFFF0F0F0FFF0F0
          F0FFF0F0F0FFEFEFEFFFDFDFDFFFA09A96FF5C4A3CB601010110000000000101
          0110897768E6B3B1B0FFE3E3E3FFF1F1F1FFF4F4F4FFF6F6F6FFF7F7F7FFF7F7
          F7FFF7F7F7FFE8E8E8FFB6B5B4FF887565EA0202021C00000004000000000000
          0004010101108F7E6FE5B4AFACFFE0E0E0FFEEEEEEFFF9F9F9FFFAFAFAFFF1F1
          F1FFE3E3E3FFB6B1AEFF8D7B6FE90202021C0000000400000000000000000000
          0000000000000000000866584DA5A29489F3B2A9A3FFB7B4B2FFB7B4B2FFB2A9
          A3FFA09288F465574BAB01010110000000040000000000000000000000000000
          0000000000000000000000000004000000080101010C01010110010101100101
          01100101010C0000000400000000000000000000000000000000}
      end>
  end
  object ilLargeColorSchemesGlyphs: TcxImageList
    SourceDPI = 96
    Height = 48
    Width = 48
    FormatVersion = 1
    DesignInfo = 17826024
    ImageInfo = <
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000040000000600000008000000090000000A0000000B0000000B0000
          000A0000000A0000000800000006000000040000000200000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000005000000080000
          000F000000160000001D00000022000000270000002B0000002D0000002D0000
          002B00000027000000230000001D000000160000000F00000009000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000B00000015000000201410
          0C42423328786A5441A48E6F56C6AB8768DFC19675F1CFA27EFBCFA27EFBC196
          75F1AB8768DF8E6F56C66A5441A44233287A14100C4300000022000000160000
          000C000000060000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000001000000040000000A00000015000000253C2E2371795D47B2B48D
          6EE7DAB292FFE1BFA4FFE7CAB3FFEDD4C0FFF1DCCCFFF3E0D2FFF3E1D3FFF1DD
          CDFFEDD6C3FFE8CCB6FFE2C0A6FFDBB394FFB48D6EE7785C47B43C2E23730000
          0027000000170000000B00000004000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00020000000700000010000000213D2E227285664BC0D2A784FDDFBA9CFFE9CC
          B4FFF0D8C6FFF1DAC8FFF1DCCAFFF1DCCBFFF2DDCCFFF2DDCDFFF2DECEFFF2DE
          CEFFF2DECEFFF2DDCDFFF2DDCCFFF2DCCCFFEACFB9FFE0BDA0FFD2A885FD8566
          4CC23D2E22750000002400000012000000080000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0009000000161C150F486D523CA8C59975F5DCB595FFE9C9AFFFEDD0B9FFEDD2
          BCFFEED3BEFFEFD5C0FFEFD6C2FFEFD7C4FFF0D8C5FFF0D8C6FFF0D9C6FFF0D9
          C6FFF0D8C6FFF0D8C5FFF0D8C5FFEFD7C4FFEFD6C2FFEFD5C0FFEBCDB7FFDDB8
          99FFC69A78F66D523CAB1C150F4C000000190000000A00000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000030000000A0000
          001A36281C698C684ACBD3A680FFE1BA9BFFE8C5AAFFE9C8ADFFEACAB1FFEBCC
          B3FFECCEB6FFECCFB7FFECD0B9FFEDD1BBFFEDD2BDFFEED3BEFFEED3BEFFEED3
          BEFFEED3BDFFEED3BDFFEDD2BCFFEDD1BBFFEDD1BAFFECCFB7FFEBCDB5FFEBCC
          B3FFE3C0A4FFD4A985FF8D684ACE35281C6D0000001D0000000B000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000030000000A0000001A4130
          2178A47A56E1D4A57FFFE3BA99FFE4BD9DFFE5BFA0FFE6C2A4FFE7C4A8FFE8C6
          AAFFE9C8ADFFE9C9AFFFEACAB0FFEACBB2FFEBCCB4FFEBCCB4FFEBCDB5FFEBCD
          B5FFEBCDB5FFEBCCB4FFEBCCB4FFEACBB2FFEACAB0FFE9C9AFFFE9C8ADFFE8C6
          AAFFE7C4A8FFE6C2A4FFD6A985FFA67A58E34130217D0000001E0000000B0000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000800000018402E1F78A97C
          56E8D2A078FFDFB18CFFE1B591FFE2B794FFE3BA98FFE4BC9CFFE4BE9FFFE5BF
          A1FFE6C1A4FFE6C3A6FFE7C4A8FFE7C5AAFFE8C6AAFFE8C7ACFFE8C7ACFFE8C7
          ACFFE8C6ACFFE8C7ACFFE8C6ABFFE7C5AAFFE7C4A8FFE6C3A6FFE6C2A4FFE5C0
          A2FFE4BE9FFFE3BB9BFFE3B998FFD5A580FFAA7C57EA402E1F7C0000001B0000
          000A000000020000000100000000000000000000000000000000000000000000
          00000000000000000000000000010000000600000014322317679E704CE1CE99
          6EFFDCA980FFDDAC84FFDEAE88FFDFB18CFFE0B390FFE1B592FFE2B896FFE3B9
          98FFE3BB9AFFE4BC9CFFE4BD9EFFE5BEA0FFE5BFA1FFE5C0A2FFE5C0A2FFE5C0
          A2FFE5C0A2FFE5C0A2FFE5BFA1FFE5BEA0FFE4BD9EFFE4BC9CFFE3BB9AFFE3B9
          98FFE2B795FFE1B592FFE0B38FFFDFB18CFFD09E75FF9E714CE23223176C0000
          0017000000070000000100000000000000000000000000000000000000000000
          00000000000000000001000000040000000E19110B43805838C9C89064FFD9A2
          76FFDAA479FFDAA57BFFDBA880FFDCAB83FFDDAC86FFDEAF89FFDFB18CFFE0B2
          8EFFE0B390FFE1B693FFE1B794FFE2B896FFE2B897FFE2B998FFE2B998FFE2B9
          98FFE2B998FFE2B998FFE2B897FFE2B896FFE1B794FFE1B693FFE0B491FFE0B3
          8FFFDFB18CFFDEAF8AFFDDAD86FFDCAB83FFDBA87FFFCA9368FF805838CC1911
          0B48000000100000000400000001000000000000000000000000000000000000
          00000000000000000001000000080000001B5F4026A3BF8556FFD59B6DFFD69D
          70FFD79F72FFD7A074FFD8A277FFD9A479FFD9A57CFFDAA77FFFDBA981FFDCAB
          84FFDCAC86FFDDAE88FFDDAF8AFFDEB08CFFDEB18CFFDEB18DFFDEB28EFFDFB2
          8EFFDEB18DFFDEB18DFFDEB18CFFDEB08CFFDDAF8AFFDDAE88FFDCAC86FFDCAB
          85FFDBA981FFDAA87FFFD9A57BFFD9A47AFFD8A277FFD7A074FFC18759FF5F40
          27A8000000200000000A00000001000000000000000000000000000000000000
          00000000000100000004000000103321146AAB7245F5CA8E5FFFD29666FFD398
          69FFD3996BFFD49A6EFFD59C70FFD59E72FFD59E73FFD6A076FFD7A278FFD7A3
          7AFFD8A57DFFD9A67FFFD9A77FFFD9A880FFDAA982FFDAAA83FFDAAA83FFDAAA
          83FFDAAA83FFDAAA83FFDAA982FFDAA881FFD9A77FFFD9A67FFFD8A57DFFD8A3
          7BFFD7A278FFD6A075FFD69F74FFD59E72FFD59C70FFD49B6EFFCC9264FFAB73
          46F5332113700000001400000005000000010000000000000000000000000000
          000000000001000000080000001C6D4626BABD7F4DFFCE905EFFCF9261FFCF93
          62FFD09565FFD19667FFD19768FFD2996AFFD29A6CFFD39B6EFFD39C6FFFD49D
          71FFD49E72FFD5A075FFD5A076FFD5A177FFD6A278FFD6A278FFD6A278FFD6A2
          78FFD6A278FFD6A278FFD6A278FFD5A177FFD5A176FFD59F74FFD49E72FFD49D
          71FFD39C70FFD39B6EFFD29A6DFFD2996BFFD19869FFD19667FFD09565FFBE82
          52FF6D4626BE000000220000000A000000010000000000000000000000000000
          0001000000030000000F2F1E1066AB6E3DFDC78753FFCB8B58FFCB8C59FFCC8E
          5CFFCD905EFFCD905FFFCE9262FFCE9363FFCF9565FFCF9567FFD09668FFD097
          69FFD0986AFFD1996CFFD1996CFFD19A6DFFD29A6EFFD29A6EFFD29A6EFFD29B
          6EFFD29B6EFFD29B6EFFD19A6DFFD19A6DFFD1996CFFD1996CFFD0986AFFD098
          6AFFD09769FFD09667FFCF9565FFCE9363FFCE9262FFCD9160FFCD905EFFC88A
          58FFAC6E3EFD2F1D0F6D00000013000000040000000100000000000000000000
          000100000006000000165C381CA9B47441FFC78651FFC88753FFC88854FFC989
          55FFC98A57FFCA8B59FFCA8D5BFFCB8E5CFFCB8F5EFFCC905FFFCC9161FFCD91
          61FFCD9263FFCD9364FFCE9465FFCE9466FFCE9566FFCE9566FFCE9566FFCE95
          67FFCE9567FFCE9567FFCE9466FFCE9466FFCE9465FFCD9364FFCD9364FFCD92
          62FFCC9161FFCC905FFFCC8F5FFFCB8E5DFFCB8D5CFFCA8C5AFFCA8B58FFC98A
          57FFB57644FF5C381BAF0000001C000000070000000100000000000000000000
          0001000000090F090434885326E3BB7B46FFC4834DFFC4844EFFC4844FFFC585
          51FFC58651FFC58652FFC68854FFC78956FFC78956FFC78A58FFC88C5AFFC88D
          5BFFC88D5BFFC98D5CFFC98E5DFFC98F5EFFC98F5EFFC98F5EFFCA8F5FFFCA8F
          5FFFCA8F5FFFCA8F5FFFC98F5EFFC98E5EFFC98E5EFFC98E5EFFC98D5CFFC88C
          5BFFC88B59FFC88B59FFC78A58FFC78956FFC68855FFC68854FFC68753FFC586
          52FFBD7E4AFF885328E60F09043B0000000C0000000200000000000000000000
          00020000000E2F1C0C69A46430FFC17F48FFC17F49FFC1804AFFC2814BFFC281
          4CFFC2824DFFC3834EFFC3834FFFC3844FFFC38450FFC48551FFC48652FFC486
          53FFC58755FFC58855FFC68957FFC68957FFC68957FFC68957FFC68957FFC689
          57FFC68957FFC68957FFC68957FFC68957FFC68957FFC58855FFC58855FFC587
          54FFC48653FFC48652FFC48552FFC48551FFC38450FFC3844FFFC3834FFFC383
          4EFFC2824DFFA56531FF2F1C0C71000000110000000300000001000000000000
          0004000000114C2C1396AA6934FFBE7B45FFBF7C46FFBF7D47FFBF7D48FFBF7E
          49FFC07E48FFC07F4BFFC0804BFFC1804BFFC1814DFFC1814EFFC1824EFFC182
          4EFFC2824FFFC28350FFC28350FFC28351FFC28351FFC28451FFC28451FFC284
          51FFC28450FFC28451FFC28451FFC28451FFC28351FFC28351FFC28350FFC283
          50FFC2824FFFC1824EFFC1824EFFC1814DFFC1814DFFC1804CFFC0804CFFC07F
          4BFFC07E49FFAB6A36FF4C2C129C000000160000000500000001000000000000
          000400000014643A17BBAF6D38FFBC7942FFBC7942FFBC7942FFBC7A44FFBD79
          44FFBD7B45FFBD7B46FFBD7C47FFBE7C47FFBE7D47FFBE7C49FFBE7E4AFFBF7E
          4AFFBF7E4AFFBF7F4BFFBF7F4CFFBF7F4CFFBF7F4CFFBF804DFFBF804DFFBF80
          4DFFBF804DFFBF804DFFBF804DFFBF804DFFBF7F4CFFBF7E4CFFBF7F4CFFBF7E
          4BFFBF7E4AFFBF7E4AFFBE7E4AFFBE7D49FFBE7D48FFBE7C46FFBD7B47FFBD7A
          46FFBD7B45FFB06E39FF643A17BF0000001A0000000600000001000000000000
          00050000001678451BD8B2703BFFBA7741FFBA7741FFBA7741FFBA7741FFBA77
          41FFBA7842FFBB7842FFBB7842FFBB7943FFBB7944FFBB7A45FFBC7A45FFBC7A
          45FFBC7B46FFBC7B47FFBC7B47FFBC7A47FFBC7C48FFBC7C48FFBC7B48FFBC7C
          48FFBC7C48FFBC7C48FFBC7C48FFBC7C48FFBC7C48FFBC7A47FFBC7B47FFBC7B
          47FFBC7B46FFBC7A45FFBC7945FFBB7A45FFBB7844FFBB7943FFBB7842FFBB78
          42FFBA7842FFB2703BFF78451BDB0000001D0000000700000001000000000000
          000500000017884D1FEDB5723CFFB8753FFFB8753FFFB8753FFFB8753FFFB874
          3FFFB8743FFFB8753FFFB8753FFFB87640FFB87640FFB97641FFB97741FFB977
          41FFB97742FFB97742FFB97843FFB97944FFB97944FFBB7845FFBB7845FFBB79
          45FFBB7945FFBB7946FFBB7A46FFBB7945FFBA7944FFB97944FFB97843FFB977
          42FFB97642FFB97641FFB97741FFB97541FFB87640FFB87640FFB8753FFFB875
          3FFFB8743FFFB5723CFF874D1FEE0000001F0000000700000001000000000000
          000500000017915321FAB5723CFFB6733DFFB6733DFFB6733DFFB6733DFFB673
          3DFFB6723DFFB6733DFFB6733DFFB6723DFFB6723DFFB6733DFFB6743EFFB674
          3EFFB77540FFB77640FFB87641FFB87642FFB87642FFB87843FFB87843FFB878
          43FFB87843FFB97844FFB97844FFB97844FFB97644FFB87743FFB87541FFB674
          3EFFB6743EFFB6733DFFB6733DFFB6733DFFB6733DFFB6733DFFB6733DFFB673
          3DFFB6733DFFB5723CFF925321FB0000001F0000000800000001000000000000
          000500000016915321FAB26F3AFFB3703BFFB3703BFFB3713BFFB3703BFFB370
          3BFFB3703BFFB3703BFFB3703BFFB3703BFFB3713CFFB4733DFFB4723DFFB473
          3EFFB4743FFFB57440FFB57340FFB57540FFB57440FFB57541FFB57441FFB574
          41FFB67542FFB67542FFB67542FFB67542FFB67542FFB67542FFB67542FFB473
          3EFFB3713BFFB3703BFFB3703BFFB3713BFFB3703BFFB3703BFFB3703BFFB370
          3BFFB3703BFFB2703AFF925321FB0000001E0000000700000001000000000000
          000500000014884E1FECAE6D38FFB16F39FFB16F39FFB16F3AFFB16F39FFB16F
          3AFFB16F39FFB16F39FFB16F39FFB2703CFFB3723DFFB3723DFFB3723FFFB373
          3EFFB37440FFB47441FFB47440FFB47541FFB47542FFB47542FFB57642FFB576
          42FFB57642FFB57643FFB57643FFB57644FFB57643FFB57643FFB57642FFB576
          43FFB3723FFFB16F39FFB16F39FFB16F39FFB16F3AFFB16F3AFFB16F39FFB16F
          3AFFB16F3AFFAE6D37FF874D1FEE0000001C0000000700000001000000000000
          00040000001178451CD6AA6834FFAF6D37FFAF6D38FFAF6D38FFAF6D37FFAF6D
          38FFAF6D37FFAF6D38FFB06E39FFB1703CFFB2723DFFB2723FFFB2733FFFB273
          40FFB27341FFB37440FFB37441FFB37542FFB37543FFB47644FFB47643FFB476
          44FFB47644FFB47644FFB47644FFB47644FFB47644FFB47644FFB47644FFB476
          44FFB37542FFB1703BFFAF6D38FFAF6D37FFAF6D38FFAF6D38FFAF6D37FFAF6D
          37FFAF6D38FFAA6833FF78451BD9000000190000000600000001000000000000
          00030000000F643917B7A5632FFFAD6B36FFAD6B36FFAD6B35FFAD6B36FFAD6B
          36FFAD6B36FFAD6C37FFAF6E3BFFB0713EFFB1713FFFB1723FFFB17340FFB273
          41FFB27441FFB27443FFB27543FFB27543FFB37544FFB37645FFB37645FFB377
          46FFB37746FFB37746FFB37746FFB37746FFB37746FFB37746FFB37746FFB377
          46FFB37645FFB27341FFAD6C37FFAD6B36FFAD6B36FFAD6B36FFAD6B36FFAD6B
          36FFAD6B36FFA5632FFF643917BC000000150000000500000000000000000000
          00030000000C4B2B118FA05F2BFFAC6934FFAC6A35FFAC6A35FFAC6934FFAC6A
          34FFAC6935FFAD6B38FFB0703FFFB0713EFFB1713FFFB17241FFB27342FFB275
          43FFB27443FFB37645FFB37545FFB37545FFB37746FFB37746FFB37747FFB477
          47FFB47747FFB47748FFB47949FFB47849FFB47849FFB47848FFB47748FFB477
          48FFB37746FFB37746FFAF6F3BFFAC6935FFAC6934FFAC6935FFAC6935FFAC69
          34FFAC6A34FFA05F2BFF4B2B1195000000110000000400000000000000000000
          0001000000082E1A0B609B5A27FFAA6833FFAA6833FFAA6832FFAA6733FFAA67
          33FFAA6833FFAD6D3AFFAF713EFFB07241FFB07340FFB07341FFB17443FFB175
          44FFB27544FFB27646FFB27746FFB37747FFB37848FFB37848FFB37849FFB379
          49FFB47849FFB47949FFB4794AFFB47949FFB4794AFFB47949FFB47949FFB379
          49FFB37949FFB37848FFAF713FFFAA6833FFAA6832FFAA6832FFAA6833FFAA68
          32FFAA6832FF9B5A27FF2E1A0B670000000D0000000200000000000000000000
          0001000000050E08032781491EDFA4632EFFA86732FFA86631FFA86632FFA866
          32FFA86632FFAD6E3CFFAE7141FFAF7242FFB07343FFB07544FFB17545FFB176
          47FFB17648FFB27748FFB27848FFB27849FFB3794AFFB3794BFFB3794BFFB37A
          4DFFB37A4DFFB47A4DFFB47A4DFFB47A4DFFB47A4DFFB47A4DFFB37A4DFFB37A
          4DFFB3794CFFB37A4BFFB17645FFA86631FFA86631FFA86631FFA86632FFA866
          31FFA4632FFF814A1EE20E080330000000080000000100000000000000000000
          0000000000030000000C5631149E9E5D29FFA6642FFFA66530FFA66430FFA665
          30FFA66530FFAD7140FFAE7243FFAE7343FFAF7445FFAF7546FFB07648FFB076
          47FFB1774AFFB2784BFFB2794CFFB2794CFFB37B4DFFB37A4EFFB37A4EFFB37B
          4FFFB37B4EFFB47C50FFB47D50FFB47C50FFB47C50FFB47D50FFB37C4FFFB37B
          4FFFB37A4EFFB37B4EFFB27A4CFFA6652FFFA66430FFA66430FFA66430FFA665
          30FF9E5D29FF563114A400000012000000050000000000000000000000000000
          000000000002000000072B180A57975725FDA3622DFFA4642EFFA4632FFFA464
          2EFFA4632EFFAD7243FFAE7444FFAE7545FFAF7547FFAF7748FFB0774AFFB078
          4CFFB1794CFFB17A4DFFB27B4EFFB27C50FFB37C50FFB37D50FFB37D51FFB37D
          51FFB37E52FFB47F52FFB47E53FFB47F52FFB47F53FFB47E53FFB37E51FFB37D
          52FFB37D51FFB37D51FFB27B4EFFA4632FFFA4632FFFA4642FFFA4642EFFA362
          2DFF975725FD2B180A5E0000000B000000020000000000000000000000000000
          000000000000000000040000000C603716AE9D5C28FFA3622DFFA3612DFFA362
          2DFFA3622DFFAC7141FFAE7547FFAF7648FFB0784AFFB0784BFFB1794CFFB17B
          4EFFB27C50FFB37C50FFB47E53FFB47F54FFB48055FFB58055FFB58055FFB581
          56FFB58157FFB58157FFB58157FFB58157FFB58157FFB58156FFB58157FFB57F
          55FFB48055FFB47F54FFB0794BFFA3622DFFA3612DFFA3622DFFA3622DFF9D5C
          28FF603716B30000001300000006000000010000000000000000000000000000
          00000000000000000002000000062C190A578F5322F29F5E29FFA1612CFFA160
          2BFFA1602CFFA86C3DFFAE7749FFAF774BFFB07A4DFFB17C50FFB27D51FFB27D
          52FFB37F55FFB37F55FFB58158FFB58259FFB6835AFFB6845BFFB6845CFFB685
          5CFFB7855DFFB7855CFFB7865DFFB7865DFFB7865DFFB6855CFFB6845CFFB683
          5AFFB6845AFFB58259FFAD7446FFA1612CFFA1602CFFA1602CFF9F5E2AFF8F53
          22F32C190A5E0000000A00000003000000000000000000000000000000000000
          00000000000000000000000000030000000A502E12939A5926FFA05F2BFFA05F
          2BFFA0602BFFA56837FFB0794EFFB17B50FFB27D52FFB37F55FFB48057FFB482
          59FFB5835AFFB6845CFFB7855EFFB7865EFFB7875FFFB88861FFB98862FFB98A
          63FFB98A63FFB98A64FFB98A63FFB98A64FFB98963FFB98963FFB98862FFB888
          61FFB7875FFFB7875FFFA86D3DFFA05F2BFFA05F2BFFA05F2BFF9A5926FF502E
          12980000000F0000000500000001000000000000000000000000000000000000
          000000000000000000000000000100000005140C052D6B3D1ABC9B5A27FF9F5E
          29FF9F5E29FFA0602CFFAC7446FFB37F55FFB48158FFB48259FFB6845BFFB786
          5EFFB78760FFB88862FFB98962FFBA8B65FFBA8B65FFBB8D68FFBB8D68FFBB8D
          69FFBB8D69FFBC8E69FFBC8D69FFBC8E69FFBC8E69FFBC8E69FFBB8D67FFBB8D
          67FFBA8B66FFB27E54FFA1612DFF9F5E2AFF9F5E29FF9B5A27FF6A3D19BF150C
          0533000000070000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000629180A4F7E4A1FD89B5B
          28FF9E5D29FF9E5D29FFA56938FFB38157FFB6855EFFB78660FFB88862FFB98A
          65FFBA8B66FFBB8D68FFBC8F6AFFBC8F6BFFBC906CFFBD916EFFBD906DFFBE92
          6FFFBE9370FFBE926FFFBE9370FFBE9370FFBE9370FFBE926EFFBE926FFFBD91
          6EFFBB8D67FFA86D40FF9E5D28FF9E5D29FF9B5B28FF7F4A20DA29180A550000
          000A000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000006331F0D5F844F
          22E19B5B28FF9D5C28FF9D5C28FFA97043FFB88964FFB98B65FFBA8D67FFBB8E
          6AFFBC906CFFBD926FFFBE9270FFBF9472FFBF9573FFC09673FFC09674FFC097
          76FFC19776FFC19776FFC19776FFC19877FFC09776FFC09776FFC09776FFC096
          74FFAD774BFF9D5C28FF9D5C28FF9B5B28FF844F23E2331E0D650000000A0000
          0004000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000200000006341F
          0E5F814C23D89B5B28FF9C5B27FF9C5C28FFAB7347FFBB8E6AFFBD926EFFBE94
          72FFBF9673FFC09775FFC09877FFC29A79FFC29B7AFFC29B7BFFC39B7CFFC39C
          7DFFC49D7DFFC49D7DFFC49D7EFFC49D7EFFC49D7DFFC39D7DFFC29979FFAF7B
          51FF9D5C29FF9C5B27FF9B5C28FF804C23D9341F0E640000000B000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          00062A190C4D6E421FBA9B5C2AFF9B5B27FF9B5B26FFA97243FFB88A65FFC198
          78FFC19A79FFC39C7CFFC39D7EFFC49E7FFFC59F80FFC5A082FFC6A183FFC6A1
          84FFC6A184FFC6A184FFC7A284FFC7A284FFC7A284FFBD9270FFAB754AFF9B5A
          26FF9B5B27FF9B5C2AFF6E421FBD2A190C520000000900000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000005160D062B5434198F935A2BF19B5C2AFF9A5B27FFA16534FFAF7C
          53FFBD9371FFC5A183FFC6A285FFC7A386FFC8A488FFC8A589FFC9A68AFFC9A6
          8BFFC9A78BFFC9A78BFFCAA78CFFC1997AFFB2815AFFA26737FF9A5A26FF9B5C
          2AFF94592BF255341993160D062F000000070000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003000000062E1D0F52673F21AA9B5F2EFC9B5D2BFF9A5B
          28FF9E6130FFA97447FFB4855FFFBD9472FFC5A082FFC9A88CFFCAA98EFFC6A2
          85FFBF9776FFB68863FFAB764BFF9F6131FF9A5B28FF9B5D2BFF9B5F2EFC673F
          20AC2F1D0F560000000900000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000010000000200000004000000062E1D0F505C3A1E998955
          2BDD9E6130FF9C5E2DFF9B5C2AFF9A5A28FF995926FF985924FF985824FF9959
          26FF9A5A27FF9B5D2AFF9C5E2CFF9E6130FF89552BDD5C3A1E9B2E1D0F530000
          0009000000050000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000050F0A
          051E3220115651341C866D4525B082532DD1935E33E99E6537F99E6537F9945E
          33EA82532DD16D4525B052341C87322011570F0A052100000007000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000030000000400000005000000060000000700000007000000070000
          0007000000070000000600000005000000040000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000002000000020000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000040000000600000008000000090000000A0000000B0000000B0000
          000A0000000A0000000800000006000000040000000200000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000005000000080000
          000F000000160000001D00000022000000270000002B0000002D0000002D0000
          002B00000027000000230000001D000000160000000F00000009000000050000
          0002000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000B00000015000000200E0E
          0E422E2E2E784B4B4BA4646464C67A7A7ADF888888F1939393FB939393FB8888
          88F1797979DF646464C64A4A4AA42D2D2D7A0E0E0E4300000022000000160000
          000C000000060000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000001000000040000000A000000150000002528282871525252B27D7D
          7DE79F9F9FFFABABABFFB6B6B6FFBEBEBEFFC7C7C7FFCCCCCCFFCDCDCDFFC8C8
          C8FFC2C2C2FFB9B9B9FFADADADFFA0A0A0FF7C7C7CE7515151B4282828730000
          0027000000170000000B00000004000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000200000007000000100000002128282872575757C0919191FDA1A1A1FFB0B0
          B0FFBCBCBCFFBEBEBEFFC1C1C1FFC2C2C2FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5
          C5FFC5C5C5FFC4C4C4FFC4C4C4FFC3C3C3FFB5B5B5FFA5A5A5FF919191FD5757
          57C2272727750000002400000012000000080000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          00090000001612121248454545A8818181F5969696FFA6A6A6FFACACACFFB0B0
          B0FFB3B3B3FFB6B6B6FFB8B8B8FFB9B9B9FFBBBBBBFFBCBCBCFFBDBDBDFFBDBD
          BDFFBCBCBCFFBBBBBBFFBBBBBBFFB9B9B9FFB8B8B8FFB6B6B6FFAFAFAFFF9B9B
          9BFF828282F6444444AB1111114C000000190000000A00000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000030000000A0000
          001A21212169575757CB858585FF929292FF9B9B9BFF9F9F9FFFA4A4A4FFA6A6
          A6FFAAAAAAFFACACACFFAEAEAEFFAFAFAFFFB2B2B2FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB1B1B1FFB0B0B0FFAFAFAFFFACACACFFA9A9A9FFA7A7
          A7FF9D9D9DFF898989FF555555CE2020206D0000001D0000000B000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000030000000A0000001A2727
          2778616161E17E7E7EFF898989FF8D8D8DFF919191FF969696FF9A9A9AFF9D9D
          9DFFA0A0A0FFA2A2A2FFA4A4A4FFA6A6A6FFA8A8A8FFA8A8A8FFA9A9A9FFA9A9
          A9FFA9A9A9FFA8A8A8FFA8A8A8FFA6A6A6FFA4A4A4FFA2A2A2FFA0A0A0FF9D9D
          9DFF9A9A9AFF969696FF858585FF626262E32626267D0000001E0000000B0000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000800000018252525786060
          60E8747474FF797979FF7F7F7FFF838383FF878787FF8B8B8BFF8F8F8FFF9292
          92FF959595FF989898FF999999FF9C9C9CFF9C9C9CFF9F9F9FFF9F9F9FFF9F9F
          9FFF9E9E9EFF9E9E9EFF9D9D9DFF9C9C9CFF9A9A9AFF989898FF959595FF9292
          92FF8F8F8FFF8B8B8BFF878787FF7C7C7CFF606060EA2424247C0000001B0000
          000A000000020000000100000000000000000000000000000000000000000000
          000000000000000000000000000100000006000000141B1B1B67565656E16969
          69FF6C6C6CFF717171FF767676FF7A7A7AFF7E7E7EFF808080FF858585FF8888
          88FF8B8B8BFF8D8D8DFF8F8F8FFF919191FF929292FF939393FF939393FF9393
          93FF939393FF939393FF929292FF919191FF8F8F8FFF8D8D8DFF8B8B8BFF8787
          87FF848484FF818181FF7D7D7DFF797979FF717171FF565656E21B1B1B6C0000
          0017000000070000000100000000000000000000000000000000000000000000
          00000000000000000001000000040000000E0D0D0D43454545C9606060FF6161
          61FF646464FF666666FF6C6C6CFF6F6F6FFF737373FF767676FF7A7A7AFF7D7D
          7DFF7E7E7EFF828282FF848484FF868686FF878787FF888888FF888888FF8888
          88FF888888FF888888FF878787FF868686FF848484FF828282FF808080FF7D7D
          7DFF7A7A7AFF777777FF737373FF6F6F6FFF6B6B6BFF656565FF444444CC0D0D
          0D48000000100000000400000001000000000000000000000000000000000000
          00000000000000000001000000080000001B323232A35A5A5AFF585858FF5B5B
          5BFF5E5E5EFF616161FF636363FF666666FF696969FF6C6C6CFF6F6F6FFF7373
          73FF757575FF777777FF797979FF7B7B7BFF7C7C7CFF7D7D7DFF7D7D7DFF7E7E
          7EFF7D7D7DFF7D7D7DFF7C7C7CFF7B7B7BFF7A7A7AFF777777FF757575FF7373
          73FF6F6F6FFF6D6D6DFF686868FF676767FF636363FF616161FF5D5D5DFF3131
          31A8000000200000000A00000001000000000000000000000000000000000000
          00000000000100000004000000101919196A525252F5515151FF525252FF5555
          55FF585858FF5A5A5AFF5D5D5DFF5F5F5FFF606060FF636363FF666666FF6868
          68FF6B6B6BFF6D6D6DFF6F6F6FFF6F6F6FFF717171FF737373FF737373FF7373
          73FF737373FF737373FF717171FF707070FF6F6F6FFF6D6D6DFF6B6B6BFF6868
          68FF666666FF626262FF616161FF5F5F5FFF5D5D5DFF5A5A5AFF585858FF5252
          52F5191919700000001400000005000000010000000000000000000000000000
          000000000001000000080000001C373737BA4D4D4DFF494949FF4C4C4CFF4E4E
          4EFF515151FF535353FF555555FF575757FF595959FF5B5B5BFF5D5D5DFF5E5E
          5EFF606060FF636363FF646464FF656565FF666666FF676767FF676767FF6767
          67FF676767FF676767FF666666FF656565FF646464FF626262FF606060FF5F5F
          5FFF5D5D5DFF5B5B5BFF5A5A5AFF585858FF565656FF535353FF515151FF5151
          51FF363636BE000000220000000A000000010000000000000000000000000000
          0001000000030000000F181818664D4D4DFD434343FF434343FF454545FF4848
          48FF4A4A4AFF4B4B4BFF4E4E4EFF505050FF525252FF545454FF565656FF5757
          57FF585858FF595959FF595959FF5B5B5BFF5C5C5CFF5C5C5CFF5C5C5CFF5D5D
          5DFF5D5D5DFF5D5D5DFF5B5B5BFF5B5B5BFF5A5A5AFF595959FF585858FF5858
          58FF565656FF555555FF525252FF505050FF4E4E4EFF4D4D4DFF4A4A4AFF4949
          49FF4E4E4EFD1717176D00000013000000040000000100000000000000000000
          000100000006000000162F2F2FA9454545FF3C3C3CFF3E3E3EFF3F3F3FFF4141
          41FF434343FF454545FF474747FF494949FF4A4A4AFF4C4C4CFF4D4D4DFF4E4E
          4EFF505050FF515151FF525252FF535353FF545454FF545454FF545454FF5555
          55FF555555FF555555FF535353FF535353FF525252FF515151FF515151FF4F4F
          4FFF4D4D4DFF4C4C4CFF4B4B4BFF494949FF484848FF464646FF444444FF4242
          42FF494949FF2E2E2EAF0000001C000000070000000100000000000000000000
          00010000000908080834444444E33D3D3DFF3A3A3AFF3B3B3BFF3C3C3CFF3E3E
          3EFF3E3E3EFF3F3F3FFF424242FF434343FF444444FF464646FF484848FF4949
          49FF494949FF4A4A4AFF4B4B4BFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D
          4DFF4D4D4DFF4D4D4DFF4D4D4DFF4C4C4CFF4C4C4CFF4C4C4CFF4A4A4AFF4949
          49FF474747FF474747FF464646FF434343FF424242FF424242FF414141FF3F3F
          3FFF414141FF434343E60808083B0000000C0000000200000000000000000000
          00020000000E19191969484848FF353535FF363636FF383838FF393939FF3939
          39FF3B3B3BFF3C3C3CFF3D3D3DFF3D3D3DFF3E3E3EFF3F3F3FFF414141FF4141
          41FF434343FF444444FF454545FF454545FF464646FF464646FF464646FF4646
          46FF464646FF464646FF464646FF454545FF454545FF444444FF444444FF4242
          42FF414141FF414141FF404040FF3F3F3FFF3E3E3EFF3D3D3DFF3D3D3DFF3C3C
          3CFF3B3B3BFF484848FF18181871000000110000000300000000000000000000
          00040000001128282896404040FF313131FF333333FF333333FF343434FF3535
          35FF363636FF373737FF383838FF393939FF3A3A3AFF3B3B3BFF3C3C3CFF3C3C
          3CFF3C3C3CFF3D3D3DFF3D3D3DFF3E3E3EFF3E3E3EFF3F3F3FFF3F3F3FFF3F3F
          3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3E3E3EFF3E3E3EFF3D3D3DFF3D3D
          3DFF3C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFF3A3A3AFF393939FF383838FF3737
          37FF363636FF414141FF2727279C000000160000000500000000000000000000
          000400000014343434BB3B3B3BFF313131FF313131FF313131FF323232FF3333
          33FF333333FF343434FF353535FF363636FF373737FF373737FF383838FF3939
          39FF393939FF3A3A3AFF3B3B3BFF3B3B3BFF3B3B3BFF3C3C3CFF3C3C3CFF3C3C
          3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3B3B3BFF3B3B3BFF3B3B3BFF3A3A
          3AFF393939FF393939FF383838FF373737FF373737FF363636FF353535FF3434
          34FF333333FF3C3C3CFF343434BF0000001A0000000600000000000000000000
          0005000000163E3E3ED8363636FF303030FF303030FF303030FF303030FF3030
          30FF313131FF323232FF323232FF323232FF333333FF343434FF353535FF3535
          35FF363636FF363636FF363636FF363636FF373737FF373737FF373737FF3737
          37FF373737FF373737FF373737FF373737FF373737FF363636FF363636FF3636
          36FF363636FF353535FF353535FF343434FF333333FF323232FF323232FF3232
          32FF313131FF363636FF3E3E3EDB0000001D0000000700000000000000000000
          000500000017464646ED323232FF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F
          2FFF2F2F2FFF2F2F2FFF2F2F2FFF303030FF303030FF313131FF313131FF3131
          31FF323232FF323232FF333333FF343434FF343434FF363636FF363636FF3636
          36FF363636FF363636FF363636FF363636FF353535FF343434FF333333FF3232
          32FF323232FF313131FF313131FF313131FF303030FF303030FF2F2F2FFF2F2F
          2FFF2F2F2FFF323232FF444444EE0000001F0000000700000000000000000000
          0005000000174A4A4AFA2E2E2EFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2E2E2EFF2E2E
          2EFF303030FF303030FF313131FF323232FF323232FF333333FF333333FF3333
          33FF333333FF343434FF343434FF343434FF343434FF333333FF313131FF2E2E
          2EFF2E2E2EFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF2D2D2DFF2E2E2EFF484848FB0000001F0000000800000000000000000000
          000500000016494949FA2D2D2DFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C
          2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2D2D2DFF2E2E2EFF2E2E2EFF2F2F
          2FFF303030FF313131FF313131FF323232FF323232FF333333FF333333FF3333
          33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF2F2F
          2FFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C
          2CFF2C2C2CFF2D2D2DFF474747FB0000001E0000000700000000000000000000
          000500000014434343EC2F2F2FFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C
          2CFF2C2C2CFF2C2C2CFF2C2C2CFF2E2E2EFF303030FF303030FF313131FF3232
          32FF333333FF333333FF333333FF343434FF353535FF353535FF363636FF3636
          36FF363636FF363636FF363636FF373737FF363636FF363636FF363636FF3636
          36FF313131FF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C2CFF2C2C
          2CFF2C2C2CFF2F2F2FFF414141EE0000001C0000000700000000000000000000
          0004000000113A3A3AD6313131FF2B2B2BFF2B2B2BFF2B2B2BFF2B2B2BFF2B2B
          2BFF2B2B2BFF2B2B2BFF2D2D2DFF303030FF323232FF323232FF333333FF3333
          33FF343434FF353535FF363636FF373737FF373737FF373737FF373737FF3838
          38FF383838FF383838FF383838FF383838FF383838FF383838FF383838FF3838
          38FF373737FF2F2F2FFF2B2B2BFF2B2B2BFF2B2B2BFF2B2B2BFF2B2B2BFF2B2B
          2BFF2B2B2BFF313131FF393939D9000000190000000600000000000000000000
          00030000000F2F2F2FB7333333FF292929FF292929FF292929FF292929FF2929
          29FF292929FF2A2A2AFF2E2E2EFF313131FF323232FF333333FF343434FF3535
          35FF363636FF363636FF373737FF373737FF383838FF393939FF393939FF3A3A
          3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A3AFF3A3A
          3AFF393939FF353535FF2A2A2AFF292929FF292929FF292929FF292929FF2929
          29FF292929FF333333FF2F2F2FBC000000150000000500000000000000000000
          00030000000C2323238F373737FF292929FF292929FF292929FF292929FF2929
          29FF292929FF2C2C2CFF333333FF343434FF353535FF363636FF373737FF3838
          38FF393939FF3A3A3AFF3B3B3BFF3B3B3BFF3B3B3BFF3C3C3CFF3C3C3CFF3D3D
          3DFF3D3D3DFF3D3D3DFF3E3E3EFF3E3E3EFF3E3E3EFF3D3D3DFF3D3D3DFF3D3D
          3DFF3C3C3CFF3C3C3CFF303030FF292929FF292929FF292929FF292929FF2929
          29FF292929FF373737FF22222295000000110000000400000000000000000000
          000100000008161616603C3C3CFF282828FF282828FF282828FF282828FF2828
          28FF282828FF303030FF353535FF363636FF373737FF383838FF3A3A3AFF3B3B
          3BFF3B3B3BFF3C3C3CFF3D3D3DFF3E3E3EFF3F3F3FFF3F3F3FFF404040FF4040
          40FF404040FF404040FF404040FF404040FF404040FF404040FF404040FF4040
          40FF404040FF3F3F3FFF353535FF282828FF282828FF282828FF282828FF2828
          28FF282828FF3B3B3BFF151515670000000D0000000200000000000000000000
          00010000000506060627373737DF2C2C2CFF272727FF272727FF272727FF2727
          27FF272727FF333333FF373737FF383838FF3A3A3AFF3A3A3AFF3C3C3CFF3D3D
          3DFF3E3E3EFF3F3F3FFF404040FF404040FF414141FF424242FF424242FF4343
          43FF434343FF444444FF444444FF444444FF444444FF444444FF434343FF4343
          43FF424242FF424242FF3C3C3CFF272727FF272727FF272727FF272727FF2727
          27FF2C2C2CFF373737E206060630000000080000000100000000000000000000
          0000000000030000000C2626269E333333FF262626FF262626FF262626FF2626
          26FF262626FF373737FF3A3A3AFF3A3A3AFF3C3C3CFF3D3D3DFF3F3F3FFF4040
          40FF414141FF424242FF434343FF444444FF454545FF454545FF454545FF4646
          46FF464646FF474747FF474747FF474747FF474747FF474747FF464646FF4646
          46FF454545FF454545FF434343FF262626FF262626FF262626FF262626FF2626
          26FF323232FF252525A400000012000000050000000000000000000000000000
          00000000000200000007131313573A3A3AFD272727FF252525FF252525FF2525
          25FF252525FF3A3A3AFF3C3C3CFF3D3D3DFF3F3F3FFF404040FF414141FF4343
          43FF444444FF454545FF464646FF474747FF484848FF494949FF494949FF4A4A
          4AFF4A4A4AFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4B4B4BFF4A4A4AFF4A4A
          4AFF494949FF494949FF464646FF252525FF252525FF252525FF252525FF2727
          27FF383838FD1212125E0000000B000000020000000000000000000000000000
          000000000000000000040000000C2C2C2CAE323232FF252525FF252525FF2525
          25FF252525FF3A3A3AFF404040FF414141FF434343FF444444FF454545FF4747
          47FF494949FF4A4A4AFF4C4C4CFF4D4D4DFF4E4E4EFF4F4F4FFF4F4F4FFF5050
          50FF515151FF515151FF515151FF515151FF515151FF515151FF515151FF4F4F
          4FFF4E4E4EFF4D4D4DFF454545FF252525FF252525FF252525FF252525FF3131
          31FF2B2B2BB30000001300000006000000010000000000000000000000000000
          0000000000000000000200000006151515573B3B3BF22A2A2AFF242424FF2424
          24FF242424FF353535FF424242FF444444FF464646FF494949FF4B4B4BFF4C4C
          4CFF4E4E4EFF4F4F4FFF525252FF525252FF545454FF555555FF565656FF5656
          56FF575757FF575757FF575757FF585858FF575757FF565656FF565656FF5454
          54FF545454FF525252FF3F3F3FFF242424FF242424FF242424FF2A2A2AFF3A3A
          3AF31515155E0000000A00000003000000000000000000000000000000000000
          00000000000000000000000000030000000A292929933A3A3AFF232323FF2323
          23FF232323FF2F2F2FFF474747FF4A4A4AFF4C4C4CFF4E4E4EFF515151FF5252
          52FF545454FF565656FF585858FF585858FF595959FF5B5B5BFF5C5C5CFF5D5D
          5DFF5D5D5DFF5E5E5EFF5E5E5EFF5E5E5EFF5D5D5DFF5D5D5DFF5C5C5CFF5B5B
          5BFF595959FF585858FF363636FF232323FF232323FF232323FF393939FF2828
          28980000000F0000000500000001000000000000000000000000000000000000
          0000000000000000000000000001000000050B0B0B2D383838BC363636FF2323
          23FF232323FF262626FF414141FF505050FF525252FF545454FF575757FF5959
          59FF5B5B5BFF5D5D5DFF5E5E5EFF606060FF616161FF636363FF636363FF6464
          64FF646464FF656565FF656565FF656565FF656565FF656565FF636363FF6363
          63FF616161FF4F4F4FFF272727FF232323FF232323FF363636FF373737BF0B0B
          0B33000000070000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000002000000061818184F424242D83535
          35FF222222FF222222FF323232FF535353FF595959FF5A5A5AFF5D5D5DFF6060
          60FF616161FF636363FF666666FF666666FF676767FF696969FF696969FF6A6A
          6AFF6C6C6CFF6B6B6BFF6C6C6CFF6C6C6CFF6C6C6CFF6A6A6AFF6A6A6AFF6969
          69FF636363FF393939FF222222FF222222FF343434FF404040DA171717550000
          000A000000030000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000100000002000000061F1F1F5F4747
          47E1363636FF212121FF212121FF3D3D3DFF5F5F5FFF616161FF636363FF6565
          65FF686868FF6A6A6AFF6B6B6BFF6E6E6EFF6E6E6EFF6F6F6FFF707070FF7171
          71FF727272FF727272FF727272FF737373FF717171FF717171FF717171FF6F6F
          6FFF464646FF212121FF212121FF353535FF464646E21E1E1E650000000A0000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000062222
          225F4A4A4AD83C3C3CFF212121FF222222FF424242FF666666FF6A6A6AFF6E6E
          6EFF6F6F6FFF717171FF737373FF757575FF767676FF777777FF787878FF7979
          79FF7A7A7AFF7A7A7AFF7B7B7BFF7B7B7BFF7A7A7AFF797979FF757575FF4C4C
          4CFF232323FF212121FF3C3C3CFF484848D9212121640000000B000000040000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          00061C1C1C4D494949BA4A4A4AFF2D2D2DFF212121FF3F3F3FFF616161FF7575
          75FF767676FF797979FF7B7B7BFF7C7C7CFF7D7D7DFF7F7F7FFF808080FF8181
          81FF818181FF818181FF828282FF828282FF828282FF6D6D6DFF464646FF2121
          21FF2D2D2DFF484848FF494949BD1C1C1C520000000900000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000050F0F0F2B3B3B3B8F585858F1424242FF282828FF303030FF4F4F
          4FFF6E6E6EFF808080FF838383FF838383FF858585FF868686FF888888FF8989
          89FF898989FF898989FF898989FF777777FF565656FF323232FF282828FF4141
          41FF565656F23B3B3B930F0F0F2F000000070000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000300000006222222524B4B4BAA5E5E5EFC474747FF3030
          30FF2B2B2BFF444444FF5B5B5BFF6F6F6FFF7F7F7FFF8A8A8AFF8C8C8CFF8282
          82FF737373FF5F5F5FFF474747FF2C2C2CFF2F2F2FFF464646FF5E5E5EFC4A4A
          4AAC222222560000000900000005000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000002000000040000000623232350474747996464
          64DD606060FF4E4E4EFF3E3E3EFF323232FF282828FF222222FF222222FF2828
          28FF323232FF3E3E3EFF4D4D4DFF5F5F5FFF636363DD4747479B232323530000
          0009000000050000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000003000000050C0C
          0C1E2828285640404086565656B0666666D1737373E97B7B7BF97B7B7BF97373
          73EA666666D1565656B040404087282828570C0C0C2100000007000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0002000000030000000400000005000000060000000700000007000000070000
          0007000000070000000600000005000000040000000300000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000002000000020000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0004000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000400000004000000080000
          0010000000180000001F00000023000000270000002B0000002B000000270000
          00270000001F0000001800000010000000080000000400000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000400000008000000140000001F000000390000
          004F00000063000000700000007E000000860000008B0000008B000000860000
          007E00000073000000630000004F000000390000002300000014000000080000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000400000004000000140000002B0000004C0000006A3A3837B3908F
          8DECB8B7B6FBC6C6C6FFCDCDCDFFD1D1D1FFD3D3D3FFD3D3D3FFD1D1D1FFCDCD
          CDFFC6C6C6FFB8B7B6FB8F8C8BED393837B5000000700000004F0000002E0000
          0018000000080000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          000400000010000000270000004C00000078868482E7BEBDBDFDCECECEFFDADA
          DAFFE0E0E0FFE6E6E6FFEAEAEAFFEEEEEEFFF0F0F0FFF1F1F1FFEFEFEFFFEBEB
          EBFFE7E7E7FFE1E1E1FFDBDBDBFFCECECEFFBDBCBCFE858381E90000007E0000
          00510000002B0000001000000004000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000080000
          001C0000003B0000006D878482E8C1C1C1FFD5D5D5FFDEDEDEFFE6E6E6FFEDED
          EDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFE8E8E8FFDFDFDFFFD5D5D5FFC1C0C0FF8381
          80EA00000075000000420000001F000000080000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000040000000C000000230000
          004F4C4947BCB5B4B3FCD1D1D1FFDBDBDBFFE5E5E5FFE9E9E9FFE9E9E9FFEAEA
          EAFFEBEBEBFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFE7E7E7FFDDDDDDFFD1D1
          D1FFB3B2B2FD4B4846C200000057000000270000000C00000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040000000C000000270000005B7976
          74E1C0C0C0FFD4D4D4FFDEDEDEFFE3E3E3FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8
          E8FFE8E8E8FFE8E8E8FFE9E9E9FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE7E7E7FFE7E7E7FFE1E1
          E1FFD6D6D6FFC0BFBFFF767371E4000000630000002B0000000C000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000040000000C000000270000005B878482ECC5C5
          C5FFD4D4D4FFDEDEDEFFDFDFDFFFE0E0E0FFE2E2E2FFE3E3E3FFE4E4E4FFE5E5
          E5FFE5E5E5FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4E4FFE3E3
          E3FFE2E2E2FFD6D6D6FFC5C5C5FF83817FEE000000660000002B0000000C0000
          0004000000000000000000000000000000000000000000000000000000000000
          00000000000000000004000000080000001F0000005482807EECC4C4C4FFD2D2
          D2FFDADADAFFDBDBDBFFDCDCDCFFDEDEDEFFDFDFDFFFE0E0E0FFE0E0E0FFE1E1
          E1FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2E2FFE1E1E1FFE0E0
          E0FFDEDEDEFFDEDEDEFFD4D4D4FFC4C4C4FF807D7BEE0000005E000000270000
          0008000000040000000000000000000000000000000000000000000000000000
          0000000000000000000400000018000000496E6A69E0C0C0C0FFCECECEFFD6D6
          D6FFD8D8D8FFD9D9D9FFDADADAFFDBDBDBFFDCDCDCFFDDDDDDFFDEDEDEFFDEDE
          DEFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFFDDDD
          DDFFDCDCDCFFDBDBDBFFDADADAFFD1D1D1FFC0C0C0FF6B6966E4000000510000
          001C000000040000000000000000000000000000000000000000000000000000
          0000000000040000001000000035413E3BB5AAAAAAFFCACACAFFD3D3D3FFD4D4
          D4FFD4D4D4FFD6D6D6FFD7D7D7FFD8D8D8FFD9D9D9FFDADADAFFDADADAFFDBDB
          DBFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFFDBDBDBFFDBDBDBFFDADA
          DAFFD9D9D9FFD8D8D8FFD7D7D7FFD6D6D6FFCCCCCCFFA7A6A6FF3F3C3ABC0000
          003B000000100000000400000000000000000000000000000000000000000000
          0000000000040000001F0000005E949291FBC4C4C4FFD0D0D0FFD1D1D1FFD1D1
          D1FFD2D2D2FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FFD6D6D6FFD7D7D7FFD8D8
          D8FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFDADADAFFDADADAFFDADADAFFDADA
          DAFFDADADAFFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD8D8D8FFD7D7D7FFD6D6
          D6FFD6D6D6FFD4D4D4FFD4D4D4FFD3D3D3FFD2D2D2FFC6C6C6FF8F8E8DFC0000
          006A000000270000000400000000000000000000000000000000000000000000
          0004000000100000003B686461E2B9B9B9FFC9C9C9FFCDCDCDFFCECECEFFCFCF
          CFFFCFCFCFFFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4
          D4FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD6D6D6FFD6D6D6FFD5D5D5FFD5D5D5FFD4D4D4FFD4D4D4FFD3D3
          D3FFD2D2D2FFD2D2D2FFD1D1D1FFD0D0D0FFD0D0D0FFCBCBCBFFB9B9B9FF6361
          5EE6000000490000001400000004000000000000000000000000000000000000
          00040000001F0000005F908F8EFEC2C2C2FFCACACAFFCBCBCBFFCBCBCBFFCCCC
          CCFFCDCDCDFFCDCDCDFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1
          D1FFD2D2D2FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
          D3FFD3D3D3FFD3D3D3FFD2D2D2FFD2D2D2FFD1D1D1FFD1D1D1FFD0D0D0FFD0D0
          D0FFCFCFCFFFCFCFCFFFCECECEFFCECECEFFCDCDCDFFCCCCCCFFC3C3C3FF8D8C
          8CFE000000700000002700000004000000000000000000000000000000040000
          000C000000395E5B57DFABABABFFC6C6C6FFC8C8C8FFC8C8C8FFC9C9C9FFCACA
          CAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCDCDCDFFCECE
          CEFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
          CFFFCFCFCFFFCFCFCFFFCFCFCFFFCECECEFFCECECEFFCECECEFFCECECEFFCDCD
          CDFFCDCDCDFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFCACACAFFC7C7C7FFACAC
          ACFF5B5855E40000004500000010000000040000000000000000000000040000
          00180000004F7F7E7DFCB5B5B5FFC5C5C5FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7
          C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCB
          CBFFCBCBCBFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
          CAFFCACACAFFCACACAFFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7C7FFB8B8
          B8FF7B7A79FD0000005F0000001C000000040000000000000000000000040000
          00232523209A8F8F8FFFBEBEBEFFC3C3C3FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5
          C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
          C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7
          C7FFC7C7C7FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5C5FFC1C1
          C1FF8E8E8EFF25221FA70000002E000000080000000000000000000000090000
          0035585450E19D9D9DFFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3
          C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5C5FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5
          C5FFC5C5C5FFC5C5C5FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3
          C3FF9E9E9EFF54514EE70000003E0000000C0000000000000000000000110000
          003E706D6BF8A4A4A4FFBFBFBFFFC0C0C0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1
          C1FFA6A6A6FF6B6968FA0000004F000000140000000000000000000000110000
          0049787877FEAAAAAAFFBCBCBCFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBFBF
          BFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
          C1FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1C1FFC1C1
          C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC0C0C0FFBFBFBFFFBFBFBFFFBFBF
          BFFFACACACFF777675FE0000005B000000180000000000000000000000150000
          004F7E7E7EFFAFAFAFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFBBBB
          BBFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBEBEFFBFBF
          BFFFBFBFBFFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFBFBFBFFFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBFBFBFFFBFBFBFFFBFBF
          BFFFBEBEBEFFBEBEBEFFBEBEBEFFBCBCBCFFBCBCBCFFBBBBBBFFBBBBBBFFBBBB
          BBFFAFAFAFFF7D7D7DFF000000630000001C0000000000000000000000150000
          0051828282FFB2B2B2FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBCBCBCFFBCBC
          BCFFBEBEBEFFBEBEBEFFBCBCBCFFBCBCBCFFBBBBBBFFBBBBBBFFB9B9B9FFB9B9
          B9FFB8B8B8FFB9B9B9FFB8B8B8FFB8B8B8FFB8B8B8FFB6B6B6FFB6B6B6FFB6B6
          B6FFB2B2B2FF818181FF000000690000001C0000000000000000000000150000
          0051858585FFB2B2B2FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB5B5B5FFB5B5B5FFB6B6
          B6FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFBBBBBBFFBBBBBBFFBBBBBBFFB9B9B9FFB9B9B9FFB8B8B8FFB5B5B5FFB5B5
          B5FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB2B2B2FF848484FF000000690000001F0000000000000000000000150000
          004F858585FFADADADFFAFAFAFFFAFAFAFFFB0B0B0FFAFAFAFFFAFAFAFFFAFAF
          AFFFAFAFAFFFAFAFAFFFAFAFAFFFB0B0B0FFB2B2B2FFB2B2B2FFB3B3B3FFB3B3
          B3FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB5B5B5FFB5B5B5FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB3B3B3FFB0B0
          B0FFAFAFAFFFAFAFAFFFB0B0B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
          AFFFAFAFAFFF848484FF000000660000001C0000000000000000000000150000
          0049838383FFAAAAAAFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
          ADFFADADADFFADADADFFAFAFAFFFB2B2B2FFB2B2B2FFB2B2B2FFB2B2B2FFB3B3
          B3FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB6B6B6FFB8B8B8FFB2B2
          B2FFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
          ADFFA9A9A9FF818181FF0000005F0000001C0000000000000000000000110000
          003E807F7FFFA3A3A3FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFACACACFFAFAFAFFFB0B0B0FFB2B2B2FFB2B2B2FFB3B3B3FFB3B3
          B3FFB3B3B3FFB5B5B5FFB5B5B5FFB6B6B6FFB8B8B8FFB6B6B6FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB5B5
          B5FFAFAFAFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFA3A3A3FF7D7D7DFF000000570000001800000000000000000000000C0000
          00397A7978FE9B9B9BFFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA9A9A9FFACACACFFB0B0B0FFB0B0B0FFB2B2B2FFB2B2B2FFB3B3B3FFB3B3
          B3FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB3B3B3FFA9A9A9FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FF9B9B9BFF787776FE0000004C0000001400000000000000000000000C0000
          002E6F6C69F6959595FFA4A4A4FFA6A6A6FFA6A6A6FFA4A4A4FFA6A6A6FFA6A6
          A6FFA9A9A9FFB0B0B0FFB0B0B0FFB0B0B0FFB2B2B2FFB3B3B3FFB5B5B5FFB5B5
          B5FFB8B8B8FFB6B6B6FFB6B6B6FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFB9B9B9FFB9B9B9FFB8B8
          B8FFB8B8B8FFADADADFFA6A6A6FFA4A4A4FFA6A6A6FFA6A6A6FFA4A4A4FFA6A6
          A6FF959595FF6C6A68F80000003E000000100000000000000000000000040000
          001F595350D98E8E8EFFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3
          A3FFAAAAAAFFAFAFAFFFB2B2B2FFB2B2B2FFB2B2B2FFB5B5B5FFB5B5B5FFB6B6
          B6FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFFBCBCBCFFBBBBBBFFBCBCBCFFBBBBBBFFBBBBBBFFBBBBBBFFBBBB
          BBFFB9B9B9FFB0B0B0FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3
          A3FF8E8E8EFF55514DE000000032000000080000000000000000000000040000
          001426221F7E838383FF9B9B9BFFA1A1A1FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFACACACFFB0B0B0FFB2B2B2FFB3B3B3FFB5B5B5FFB6B6B6FFB8B8B8FFB8B8
          B8FFB9B9B9FFB9B9B9FFB9B9B9FFBBBBBBFFBCBCBCFFBCBCBCFFBEBEBEFFBEBE
          BEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBCBC
          BCFFBCBCBCFFB6B6B6FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF9B9B
          9BFF828282FF24201E910000001F000000040000000000000000000000000000
          000C0000002E767472FA929292FF9D9D9DFF9E9E9EFF9D9D9DFF9E9E9EFF9E9E
          9EFFAFAFAFFFB2B2B2FFB2B2B2FFB5B5B5FFB5B5B5FFB8B8B8FFB6B6B6FFB9B9
          B9FFBBBBBBFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBEBEFFBFBFBFFFBEBE
          BEFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBFBFBFFFBEBE
          BEFFBEBEBEFFBCBCBCFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9E9E9EFF9292
          92FF73716FFB0000004200000014000000000000000000000000000000000000
          00080000001C56524DD08A8A8AFF9A9A9AFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
          9BFFB2B2B2FFB3B3B3FFB5B5B5FFB6B6B6FFB8B8B8FFB9B9B9FFBBBBBBFFBBBB
          BBFFBCBCBCFFBEBEBEFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC1C1
          C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFBEBEBEFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9A9A9AFF8A8A
          8AFF534E4BD70000002B00000008000000000000000000000000000000000000
          0000000000100000002E7A7877FD919191FF9A9A9AFF989898FF9A9A9AFF9A9A
          9AFFAFAFAFFFB5B5B5FFB6B6B6FFB9B9B9FFB9B9B9FFBBBBBBFFBEBEBEFFBFBF
          BFFFBFBFBFFFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC1C1C1FFBBBBBBFF9A9A9AFF989898FF9A9A9AFF9A9A9AFF919191FF7877
          76FE000000450000001800000004000000000000000000000000000000000000
          0000000000080000001859534FD0898989FF949494FF979797FF979797FF9797
          97FFA9A9A9FFB8B8B8FFB9B9B9FFBCBCBCFFBFBFBFFFC0C0C0FFC0C0C0FFC1C1
          C1FFC1C1C1FFC2C2C2FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3C3FFC3C3
          C3FFC3C3C3FFB3B3B3FF979797FF979797FF979797FF949494FF888888FF5550
          4CD7000000270000000C00000000000000000000000000000000000000000000
          0000000000000000000C00000027757270F88C8C8CFF959595FF959595FF9595
          95FFA3A3A3FFBCBCBCFFBEBEBEFFC0C0C0FFC1C1C1FFC2C2C2FFC3C3C3FFC3C3
          C3FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC7C7C7FFC6C6C6FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
          C5FFC5C5C5FFA9A9A9FF959595FF959595FF959595FF8C8C8CFF716F6DF90000
          0039000000140000000400000000000000000000000000000000000000000000
          000000000000000000040000001435312D8B7F7F7FFE8E8E8EFF949494FF9494
          94FF979797FFB3B3B3FFC1C1C1FFC2C2C2FFC3C3C3FFC4C4C4FFC5C5C5FFC5C5
          C5FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8C8FFC8C8
          C8FFC9C9C9FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7
          C7FFC1C1C1FF989898FF949494FF949494FF8E8E8EFF7E7E7DFE342F2C970000
          001C000000080000000000000000000000000000000000000000000000000000
          00000000000000000000000000080000001858524EC6878786FF8F8F8FFF9292
          92FF929292FFA3A3A3FFC2C2C2FFC4C4C4FFC5C5C5FFC6C6C6FFC7C7C7FFC7C7
          C7FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFCBCBCBFFCACACAFFC8C8
          C8FFAAAAAAFF929292FF929292FF8F8F8FFF868685FF544F4BCD000000270000
          000C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000080000001866615CD8898989FF8F8F
          8FFF919191FF919191FFAFAFAFFFC6C6C6FFC7C7C7FFC8C8C8FFC9C9C9FFC9C9
          C9FFCACACAFFCBCBCBFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCDCDCDFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCCCCCCFFB8B8
          B8FF919191FF919191FF8F8F8FFF898989FF635E5BDE00000027000000100000
          0004000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004000000080000001868635ED88C8C
          8BFF8F8F8FFF8F8F8FFF919191FFB3B3B3FFC9C9C9FFCACACAFFCBCBCBFFCCCC
          CCFFCDCDCDFFCDCDCDFFCECECEFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFD0D0
          D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFCECECEFFBEBEBEFF9191
          91FF8F8F8FFF8F8F8FFF8B8B8AFF65605DDD0000002B00000010000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000400000008000000185E58
          53C38A8988FE919191FF8F8F8FFF8E8E8EFFAFAFAFFFC7C7C7FFCECECEFFCECE
          CEFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFCBCBCBFFB5B5B5FF8E8E8EFF8F8F
          8FFF919191FF888787FE5C5652CA000000230000001000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000080000
          00143B37328684817FF6939393FF919191FF8E8E8EFF9D9D9DFFBFBFBFFFCBCB
          CBFFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5
          D5FFD5D5D5FFD5D5D5FFCECECEFFC2C2C2FFA0A0A0FF8E8E8EFF919191FF9393
          93FF83807EF83A36328F0000001C0000000C0000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040000000C0000001867615DCA8F8D8CFC969696FF929292FF8F8F8FFF9898
          98FFB2B2B2FFC4C4C4FFCBCBCBFFD1D1D1FFD5D5D5FFD6D6D6FFD2D2D2FFCDCD
          CDFFC6C6C6FFB6B6B6FF989898FF8F8F8FFF929292FF969696FF8E8D8BFD6660
          5CCE000000230000001400000008000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000400000008000000100000001868625EC78E8B8AF9989898FF9898
          98FF949494FF919191FF8E8E8EFF8C8C8CFF8B8B8BFF8B8B8BFF8C8C8CFF8E8E
          8EFF919191FF949494FF989898FF989898FF8B8987FA66605CCB000000230000
          00140000000C0000000400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000080000000C000000142F2B28666F6A
          66CE8C8986F3979695FD9C9C9CFF9E9E9EFFA0A0A0FFA0A0A0FF9E9E9EFF9C9C
          9CFF979695FD8A8784F36F6965D02E2A276D0000001C000000140000000C0000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000400000004000000080000
          000C0000001000000014000000180000001C0000001C0000001C0000001C0000
          001C0000001800000014000000100000000C0000000800000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000400000004000000040000000800000008000000040000
          0004000000040000000400000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000080000000800000008000000080000000800000008000000080000
          0008000000080000000800000008000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000008000000080000
          00100000001F0000002E0000003B00000042000000490000004F0000004F0000
          0049000000490000003B0000002E0000001F0000001000000008000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000800000010000000270000003B0000
          006600000086000000A0000000AF000000BE000000C6000000CB000000CB0000
          00C6000000BE000000B3000000A0000000860000006600000042000000270000
          0010000000080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000800000008000000270000004F00000082000000A83130
          2FE97B7876FE989695FFA2A2A2FFA9A9A9FFADADADFFAFAFAFFFAFAFAFFFADAD
          ADFFA9A9A9FFA2A2A2FF989695FF797574FE302F2DEA000000AF000000860000
          00540000002E0000001000000008000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0008000000080000001F0000004900000082000000B872706DFD9C9A9AFFAAAA
          AAFFB6B6B6FFBCBCBCFFC2C2C2FFC6C6C6FFCACACAFFCCCCCCFFCDCDCDFFCBCB
          CBFFC7C7C7FFC3C3C3FFBDBDBDFFB7B7B7FFAAAAAAFF9B9999FF706D6BFE0000
          00BE000000890000004F0000001F000000080000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000080000
          00100000003500000069000000AC726F6DFD9D9D9DFFB1B1B1FFBABABAFFC2C2
          C2FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFBBBBBBFFB1B1B1FF9E9C
          9CFF6D6B69FE000000B5000000730000003B0000001000000008000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000008000000180000
          004200000086444140EE949291FFADADADFFB7B7B7FFC1C1C1FFC5C5C5FFC5C5
          C5FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9
          C9FFC9C9C9FFC8C8C8FFC8C8C8FFC8C8C8FFC7C7C7FFC7C7C7FFC3C3C3FFB9B9
          B9FFADADADFF918F8FFF403D3CF1000000910000004900000018000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000800000018000000490000
          0096676462FC9C9C9CFFB0B0B0FFBABABAFFBFBFBFFFC1C1C1FFC2C2C2FFC3C3
          C3FFC4C4C4FFC4C4C4FFC4C4C4FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5C5FFC5C5C5FFC4C4C4FFC3C3C3FFC3C3
          C3FFBDBDBDFFB2B2B2FF9D9B9BFF625F5DFD000000A00000004F000000180000
          0008000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000180000004900000096706D
          6AFEA1A1A1FFB0B0B0FFBABABAFFBBBBBBFFBCBCBCFFBEBEBEFFBFBFBFFFC0C0
          C0FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC1C1C1FFC1C1C1FFC0C0
          C0FFBFBFBFFFBEBEBEFFB2B2B2FFA1A1A1FF6A6867FE000000A40000004F0000
          0018000000080000000000000000000000000000000000000000000000000000
          0000000000000000000000000008000000100000003B0000008D6B6867FEA0A0
          A0FFAEAEAEFFB6B6B6FFB7B7B7FFB8B8B8FFBABABAFFBBBBBBFFBCBCBCFFBCBC
          BCFFBDBDBDFFBEBEBEFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBFBFBFFFBEBEBEFFBEBEBEFFBDBD
          BDFFBCBCBCFFBABABAFFBABABAFFB0B0B0FFA0A0A0FF676463FE0000009A0000
          0049000000100000000800000000000000000000000000000000000000000000
          00000000000000000000000000080000002E0000007E5B5856FC9C9C9CFFAAAA
          AAFFB2B2B2FFB4B4B4FFB5B5B5FFB6B6B6FFB7B7B7FFB8B8B8FFB9B9B9FFBABA
          BAFFBABABAFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBDBDBDFFBDBDBDFFBDBD
          BDFFBDBDBDFFBDBDBDFFBCBCBCFFBCBCBCFFBBBBBBFFBBBBBBFFBABABAFFBABA
          BAFFB9B9B9FFB8B8B8FFB7B7B7FFB6B6B6FFADADADFF9C9C9CFF555351FD0000
          0089000000350000000800000000000000000000000000000000000000000000
          000000000000000000080000001F0000005F393633EA868686FFA6A6A6FFAFAF
          AFFFB0B0B0FFB0B0B0FFB2B2B2FFB3B3B3FFB4B4B4FFB5B5B5FFB6B6B6FFB6B6
          B6FFB7B7B7FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB8B8B8FFB8B8B8FFB7B7B7FFB7B7
          B7FFB6B6B6FFB5B5B5FFB4B4B4FFB3B3B3FFB2B2B2FFA8A8A8FF848282FF3331
          30EE000000690000001F00000008000000000000000000000000000000000000
          000000000000000000080000003B0000009A72706FFFA0A0A0FFACACACFFADAD
          ADFFADADADFFAEAEAEFFAFAFAFFFB0B0B0FFB0B0B0FFB1B1B1FFB2B2B2FFB3B3
          B3FFB4B4B4FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB4B4B4FFB3B3
          B3FFB2B2B2FFB2B2B2FFB0B0B0FFB0B0B0FFAFAFAFFFAEAEAEFFA2A2A2FF6D6C
          6BFF000000A80000004900000008000000000000000000000000000000000000
          0000000000080000001F00000069524F4DFC959595FFA5A5A5FFA9A9A9FFAAAA
          AAFFABABABFFABABABFFACACACFFADADADFFADADADFFAEAEAEFFAFAFAFFFAFAF
          AFFFB0B0B0FFB1B1B1FFB1B1B1FFB2B2B2FFB2B2B2FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB2B2B2FFB2B2B2FFB1B1B1FFB1B1B1FFB0B0B0FFB0B0
          B0FFAFAFAFFFAEAEAEFFAEAEAEFFADADADFFACACACFFACACACFFA7A7A7FF9595
          95FF4B4947FD0000007E00000027000000080000000000000000000000000000
          0000000000080000003B0000009B6D6C6BFF9E9E9EFFA6A6A6FFA7A7A7FFA7A7
          A7FFA8A8A8FFA9A9A9FFA9A9A9FFAAAAAAFFABABABFFABABABFFACACACFFACAC
          ACFFADADADFFAEAEAEFFAEAEAEFFAEAEAEFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
          AFFFAFAFAFFFAFAFAFFFAFAFAFFFAEAEAEFFAEAEAEFFADADADFFADADADFFACAC
          ACFFACACACFFABABABFFABABABFFAAAAAAFFAAAAAAFFA9A9A9FFA8A8A8FF9F9F
          9FFF6A6969FF000000AF00000049000000080000000000000000000000000000
          000800000018000000664A4744FB878787FFA2A2A2FFA4A4A4FFA4A4A4FFA5A5
          A5FFA6A6A6FFA6A6A6FFA7A7A7FFA7A7A7FFA8A8A8FFA9A9A9FFA9A9A9FFA9A9
          A9FFAAAAAAFFAAAAAAFFAAAAAAFFABABABFFABABABFFABABABFFABABABFFABAB
          ABFFABABABFFABABABFFABABABFFABABABFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFA9A9A9FFA9A9A9FFA8A8A8FFA7A7A7FFA7A7A7FFA6A6A6FFA6A6A6FFA3A3
          A3FF888888FF43403FFD000000780000001F0000000800000000000000000000
          00080000002E000000865D5C5BFF919191FFA1A1A1FFA2A2A2FFA2A2A2FFA3A3
          A3FFA3A3A3FFA4A4A4FFA4A4A4FFA5A5A5FFA5A5A5FFA6A6A6FFA6A6A6FFA7A7
          A7FFA7A7A7FFA7A7A7FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8
          A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA7A7A7FFA7A7A7FFA7A7
          A7FFA6A6A6FFA6A6A6FFA6A6A6FFA5A5A5FFA5A5A5FFA4A4A4FFA4A4A4FFA3A3
          A3FF949494FF585757FF0000009B000000350000000800000000000000000000
          0008000000421D1B18D76B6B6BFF9A9A9AFF9F9F9FFFA0A0A0FFA0A0A0FFA1A1
          A1FFA1A1A1FFA1A1A1FFA2A2A2FFA2A2A2FFA2A2A2FFA3A3A3FFA4A4A4FFA4A4
          A4FFA4A4A4FFA4A4A4FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5
          A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA5A5A5FFA4A4A4FFA4A4
          A4FFA3A3A3FFA3A3A3FFA3A3A3FFA2A2A2FFA2A2A2FFA2A2A2FFA1A1A1FFA1A1
          A1FF9D9D9DFF6A6A6AFF181614E1000000540000001000000000000000000000
          00120000005F413D3BFC797979FF9D9D9DFF9E9E9EFF9E9E9EFF9E9E9EFF9F9F
          9FFF9F9F9FFF9F9F9FFFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA1A1A1FFA1A1
          A1FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
          A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2A2FFA1A1
          A1FFA1A1A1FFA1A1A1FFA1A1A1FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF9F9F
          9FFF9F9F9FFF7A7A7AFF3B3837FD0000006D0000001800000000000000000000
          00210000006D4F4C4BFF808080FF9B9B9BFF9C9C9CFF9D9D9DFF9D9D9DFF9D9D
          9DFF9D9D9DFF9E9E9EFF9E9E9EFF9E9E9EFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F
          9FFF9F9F9FFFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9E9E9EFF9E9E9EFF9E9E
          9EFF9D9D9DFF828282FF494747FF000000860000002700000000000000000000
          00210000007E545453FF868686FF989898FF989898FF989898FF9A9A9AFF9A9A
          9AFF9B9B9BFF9B9B9BFF9C9C9CFF9C9C9CFF9C9C9CFF9D9D9DFF9D9D9DFF9D9D
          9DFF9D9D9DFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
          9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9D9D
          9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9C9C9CFF9B9B9BFF9B9B
          9BFF9B9B9BFF888888FF535252FF000000960000002E00000000000000000000
          0029000000865A5A5AFF8B8B8BFF959595FF959595FF959595FF959595FF9595
          95FF979797FF979797FF979797FF989898FF989898FF9A9A9AFF9A9A9AFF9A9A
          9AFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9C9C9CFF9C9C9CFF9B9B9BFF9C9C
          9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9B9B9BFF9B9B9BFF9B9B
          9BFF9B9B9BFF9A9A9AFF9A9A9AFF9A9A9AFF989898FF989898FF979797FF9797
          97FF979797FF8B8B8BFF595959FF000000A00000003500000000000000000000
          0029000000895E5E5EFF8E8E8EFF929292FF929292FF929292FF929292FF9292
          92FF929292FF929292FF929292FF949494FF949494FF949494FF959595FF9595
          95FF959595FF959595FF979797FF979797FF979797FF989898FF989898FF9898
          98FF989898FF9A9A9AFF9A9A9AFF989898FF989898FF979797FF979797FF9595
          95FF959595FF949494FF959595FF949494FF949494FF949494FF929292FF9292
          92FF929292FF8E8E8EFF5D5D5DFF000000A70000003500000000000000000000
          002900000089616161FF8E8E8EFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
          8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF919191FF9191
          91FF929292FF929292FF949494FF949494FF949494FF959595FF959595FF9595
          95FF959595FF979797FF979797FF979797FF959595FF959595FF949494FF9191
          91FF919191FF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F
          8FFF8F8F8FFF8E8E8EFF606060FF000000A70000003B00000000000000000000
          002900000086616161FF898989FF8B8B8BFF8B8B8BFF8C8C8CFF8B8B8BFF8B8B
          8BFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B8BFF8C8C8CFF8E8E8EFF8E8E8EFF8F8F
          8FFF8F8F8FFF919191FF919191FF919191FF919191FF929292FF919191FF9191
          91FF929292FF929292FF929292FF929292FF929292FF929292FF929292FF8F8F
          8FFF8C8C8CFF8B8B8BFF8B8B8BFF8C8C8CFF8B8B8BFF8B8B8BFF8B8B8BFF8B8B
          8BFF8B8B8BFF8B8B8BFF606060FF000000A40000003500000000000000000000
          00290000007E5F5F5FFF868686FF898989FF898989FF898989FF898989FF8989
          89FF898989FF898989FF898989FF8B8B8BFF8E8E8EFF8E8E8EFF8E8E8EFF8E8E
          8EFF8F8F8FFF919191FF919191FF919191FF929292FF929292FF929292FF9292
          92FF929292FF949494FF949494FF949494FF949494FF949494FF929292FF9494
          94FF8E8E8EFF898989FF898989FF898989FF898989FF898989FF898989FF8989
          89FF898989FF858585FF5D5D5DFF0000009B0000003500000000000000000000
          00210000006D5C5B5BFF7F7F7FFF868686FF868686FF868686FF868686FF8686
          86FF868686FF868686FF888888FF8B8B8BFF8C8C8CFF8E8E8EFF8E8E8EFF8F8F
          8FFF8F8F8FFF8F8F8FFF919191FF919191FF929292FF949494FF929292FF9494
          94FF949494FF949494FF949494FF949494FF949494FF949494FF949494FF9494
          94FF919191FF8B8B8BFF868686FF868686FF868686FF868686FF868686FF8686
          86FF868686FF7F7F7FFF595959FF000000910000002E00000000000000000000
          001800000066565555FF777777FF838383FF838383FF838383FF838383FF8383
          83FF838383FF858585FF888888FF8C8C8CFF8C8C8CFF8E8E8EFF8E8E8EFF8F8F
          8FFF8F8F8FFF919191FF919191FF919191FF929292FF949494FF949494FF9494
          94FF949494FF949494FF949494FF949494FF949494FF949494FF949494FF9494
          94FF949494FF8F8F8FFF858585FF838383FF838383FF838383FF838383FF8383
          83FF838383FF777777FF545353FF000000820000002700000000000000000000
          0018000000544F4D4BFF717171FF808080FF828282FF828282FF808080FF8282
          82FF828282FF858585FF8C8C8CFF8C8C8CFF8C8C8CFF8E8E8EFF8F8F8FFF9191
          91FF919191FF949494FF929292FF929292FF949494FF949494FF959595FF9595
          95FF959595FF959595FF979797FF979797FF979797FF979797FF959595FF9595
          95FF949494FF949494FF898989FF828282FF808080FF828282FF828282FF8080
          80FF828282FF717171FF4B4948FF0000006D0000001F00000000000000000000
          00080000003B45423FFA6A6A6AFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
          7FFF7F7F7FFF868686FF8B8B8BFF8E8E8EFF8E8E8EFF8E8E8EFF919191FF9191
          91FF929292FF949494FF949494FF959595FF959595FF959595FF979797FF9797
          97FF979797FF979797FF989898FF979797FF989898FF979797FF979797FF9797
          97FF979797FF959595FF8C8C8CFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F
          7FFF7F7F7FFF6A6A6AFF3F3A38FC0000005B0000001000000000000000000000
          00080000002726221FBE5F5F5FFF777777FF7D7D7DFF7C7C7CFF7C7C7CFF7C7C
          7CFF7C7C7CFF888888FF8C8C8CFF8E8E8EFF8F8F8FFF919191FF929292FF9494
          94FF949494FF959595FF959595FF959595FF979797FF989898FF989898FF9A9A
          9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A9AFF9A9A
          9AFF989898FF989898FF929292FF7C7C7CFF7C7C7CFF7C7C7CFF7C7C7CFF7C7C
          7CFF777777FF5E5E5EFF1D1A18D00000003B0000000800000000000000000000
          00000000001800000054545251FF6E6E6EFF797979FF7A7A7AFF797979FF7A7A
          7AFF7A7A7AFF8B8B8BFF8E8E8EFF8E8E8EFF919191FF919191FF949494FF9292
          92FF959595FF979797FF989898FF989898FF9A9A9AFF9A9A9AFF9A9A9AFF9B9B
          9BFF9A9A9AFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9C9C9CFF9B9B9BFF9B9B
          9BFF9A9A9AFF9A9A9AFF989898FF797979FF797979FF797979FF797979FF7A7A
          7AFF6E6E6EFF514F4EFF00000073000000270000000000000000000000000000
          0000000000100000003547433FF7666666FF767676FF777777FF777777FF7777
          77FF777777FF8E8E8EFF8F8F8FFF919191FF929292FF949494FF959595FF9797
          97FF979797FF989898FF9A9A9AFF9B9B9BFF9B9B9BFF9C9C9CFF9C9C9CFF9C9C
          9CFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9C9C9CFF9C9C
          9CFF9C9C9CFF9C9C9CFF9A9A9AFF777777FF777777FF777777FF777777FF7676
          76FF666666FF403D3AF90000004F000000100000000000000000000000000000
          0000000000000000001F00000054575555FF6D6D6DFF767676FF747474FF7676
          76FF767676FF8B8B8BFF919191FF929292FF959595FF959595FF979797FF9A9A
          9AFF9B9B9BFF9B9B9BFF9D9D9DFF9D9D9DFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
          9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E9EFF9E9E
          9EFF9E9E9EFF9D9D9DFF979797FF767676FF747474FF767676FF767676FF6D6D
          6DFF545353FF000000780000002E000000080000000000000000000000000000
          000000000000000000100000002E4A4642F7656565FF707070FF737373FF7373
          73FF737373FF858585FF949494FF959595FF989898FF9B9B9BFF9C9C9CFF9C9C
          9CFF9D9D9DFF9D9D9DFF9E9E9EFF9F9F9FFF9F9F9FFFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FF9F9F
          9FFF9F9F9FFF9F9F9FFF8F8F8FFF737373FF737373FF737373FF707070FF6464
          64FF423E3BF90000004900000018000000000000000000000000000000000000
          000000000000000000000000001800000049545150FF686868FF717171FF7171
          71FF717171FF7F7F7FFF989898FF9A9A9AFF9C9C9CFF9D9D9DFF9E9E9EFF9F9F
          9FFF9F9F9FFFA0A0A0FFA0A0A0FFA1A1A1FFA1A1A1FFA2A2A2FFA2A2A2FFA2A2
          A2FFA2A2A2FFA3A3A3FFA2A2A2FFA3A3A3FFA2A2A2FFA2A2A2FFA2A2A2FFA2A2
          A2FFA1A1A1FFA1A1A1FF858585FF717171FF717171FF717171FF686868FF504E
          4DFF000000660000002700000008000000000000000000000000000000000000
          00000000000000000000000000080000002739342FCB5C5C5BFF6A6A6AFF7070
          70FF707070FF737373FF8F8F8FFF9D9D9DFF9E9E9EFF9F9F9FFFA0A0A0FFA1A1
          A1FFA1A1A1FFA2A2A2FFA2A2A2FFA3A3A3FFA3A3A3FFA4A4A4FFA4A4A4FFA4A4
          A4FFA4A4A4FFA5A5A5FFA4A4A4FFA5A5A5FFA5A5A5FFA5A5A5FFA4A4A4FFA4A4
          A4FFA3A3A3FF9D9D9DFF747474FF707070FF707070FF6A6A6AFF5A5A59FF312E
          2AD5000000350000001000000000000000000000000000000000000000000000
          0000000000000000000000000000000000100000002E4E4845F3636362FF6B6B
          6BFF6E6E6EFF6E6E6EFF7F7F7FFF9E9E9EFFA0A0A0FFA1A1A1FFA2A2A2FFA3A3
          A3FFA3A3A3FFA4A4A4FFA5A5A5FFA5A5A5FFA5A5A5FFA6A6A6FFA6A6A6FFA7A7
          A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA6A6A6FFA7A7A7FFA6A6
          A6FFA4A4A4FF868686FF6E6E6EFF6E6E6EFF6B6B6BFF626261FF46423EF60000
          0049000000180000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008000000100000002E55504DFA6565
          65FF6B6B6BFF6D6D6DFF6D6D6DFF8B8B8BFFA2A2A2FFA3A3A3FFA4A4A4FFA5A5
          A5FFA5A5A5FFA6A6A6FFA7A7A7FFA8A8A8FFA8A8A8FFA8A8A8FFA8A8A8FFA9A9
          A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA9A9A9FFA8A8
          A8FF949494FF6D6D6DFF6D6D6DFF6B6B6BFF656565FF504C49FB000000490000
          001F000000080000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000008000000100000002E5853
          4FFA686867FF6B6B6BFF6B6B6BFF6D6D6DFF8F8F8FFFA5A5A5FFA6A6A6FFA7A7
          A7FFA8A8A8FFA9A9A9FFA9A9A9FFAAAAAAFFABABABFFABABABFFABABABFFABAB
          ABFFACACACFFACACACFFACACACFFACACACFFACACACFFACACACFFAAAAAAFF9A9A
          9AFF6D6D6DFF6B6B6BFF6B6B6BFF676766FF534F4CFB0000004F0000001F0000
          0008000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000008000000100000
          002E57514DF1676665FF6D6D6DFF6B6B6BFF6A6A6AFF8B8B8BFFA3A3A3FFAAAA
          AAFFAAAAAAFFABABABFFACACACFFACACACFFADADADFFADADADFFAEAEAEFFAEAE
          AEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFAEAEAEFFA7A7A7FF919191FF6A6A
          6AFF6B6B6BFF6D6D6DFF656464FF504D48F4000000420000001F000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000080000
          001000000027433D39C6666362FF6F6F6FFF6D6D6DFF6A6A6AFF797979FF9B9B
          9BFFA7A7A7FFAEAEAEFFAEAEAEFFAFAFAFFFAFAFAFFFB0B0B0FFB0B0B0FFB0B0
          B0FFB1B1B1FFB1B1B1FFB1B1B1FFAAAAAAFF9E9E9EFF7C7C7CFF6A6A6AFF6D6D
          6DFF6F6F6FFF63605FFF3E3935CE000000350000001800000008000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000008000000180000002E5F5A55F46D6B6AFF727272FF6E6E6EFF6B6B
          6BFF747474FF8E8E8EFFA0A0A0FFA7A7A7FFADADADFFB1B1B1FFB2B2B2FFAEAE
          AEFFA9A9A9FFA2A2A2FF929292FF747474FF6B6B6BFF6E6E6EFF727272FF6B6A
          68FF5C5652F60000004200000027000000100000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000008000000100000001F0000002E615B58F36D6A69FF7474
          74FF747474FF707070FF6D6D6DFF6A6A6AFF686868FF676767FF676767FF6868
          68FF6A6A6AFF6D6D6DFF707070FF747474FF747474FF6A6866FF5D5754F50000
          0042000000270000001800000008000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000080000001000000018000000273C37
          33A467615EF6706D6AFF747372FF787878FF7A7A7AFF7C7C7CFF7C7C7CFF7A7A
          7AFF787878FF747372FF6E6B68FF65605CF7373330AC00000035000000270000
          0018000000080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000008000000080000
          0010000000180000001F000000270000002E0000003500000035000000350000
          0035000000350000002E000000270000001F0000001800000010000000080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000800000008000000080000000800000010000000100000
          0008000000080000000800000008000000080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000400000004000000040000000400000004000000040000
          0004000000040000000400000004000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000040000
          000800000010000000180000001F00000023000000270000002B0000002B0000
          0027000000270000001F00000018000000100000000800000004000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000400000008000000140000001F0000
          00390000004F00000063000000700000007E000000860000008B0000008B0000
          00860000007E00000073000000630000004F0000003900000023000000140000
          0008000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000400000004000000140000002B0000004C0000006A3A38
          37B3908F8DECB8B7B6FBC6C6C6FFCDCDCDFFD1D1D1FFD3D3D3FFD3D3D3FFD1D1
          D1FFCDCDCDFFC6C6C6FFB8B7B6FB8F8C8BED393837B5000000700000004F0000
          002E000000180000000800000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00040000000400000010000000270000004C00000078868482E7BEBDBDFDCECE
          CEFFDADADAFFE0E0E0FFE6E6E6FFEAEAEAFFEEEEEEFFF0F0F0FFF1F1F1FFEFEF
          EFFFEBEBEBFFE7E7E7FFE1E1E1FFDBDBDBFFCECECEFFBDBCBCFE858381E90000
          007E000000510000002B00000010000000040000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00080000001C0000003B0000006D878482E8C1C1C1FFD5D5D5FFDEDEDEFFE6E6
          E6FFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFEFEFEFFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFE8E8E8FFDFDFDFFFD5D5D5FFC1C0
          C0FF838180EA00000075000000420000001F0000000800000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000040000000C0000
          00230000004F4C4947BCB5B4B3FCD1D1D1FFDBDBDBFFE5E5E5FFE9E9E9FFE9E9
          E9FFEAEAEAFFEBEBEBFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFE7E7E7FFDDDD
          DDFFD1D1D1FFB3B2B2FD4B4846C200000057000000270000000C000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000040000000C000000270000
          005B797674E1C0C0C0FFD4D4D4FFDEDEDEFFE3E3E3FFE5E5E5FFE6E6E6FFE7E7
          E7FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE7E7E7FFE7E7
          E7FFE1E1E1FFD6D6D6FFC0BFBFFF767371E4000000630000002B0000000C0000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000040000000C000000270000005B8784
          82ECC5C5C5FFD4D4D4FFDEDEDEFFDFDFDFFFE0E0E0FFE2E2E2FFE3E3E3FFE4E4
          E4FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4
          E4FFE3E3E3FFE2E2E2FFD6D6D6FFC5C5C5FF83817FEE000000660000002B0000
          000C000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000080000001F0000005482807EECC4C4
          C4FFD2D2D2FFDADADAFFDBDBDBFFDCDCDCFFDEDEDEFFDFDFDFFFE0E0E0FFE0E0
          E0FFE1E1E1FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2E2FFE1E1
          E1FFE0E0E0FFDEDEDEFFDEDEDEFFD4D4D4FFC4C4C4FF807D7BEE0000005E0000
          0027000000080000000400000000000000000000000000000000000000000000
          000000000000000000000000000400000018000000496E6A69E0C0C0C0FFCECE
          CEFFD6D6D6FFD8D8D8FFD9D9D9FFDADADAFFDBDBDBFFDCDCDCFFDDDDDDFFDEDE
          DEFFDEDEDEFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE1E1E1FFE1E1E1FFE1E1
          E1FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDEDEDEFFDEDE
          DEFFDDDDDDFFDCDCDCFFDBDBDBFFDADADAFFD1D1D1FFC0C0C0FF6B6966E40000
          00510000001C0000000400000000000000000000000000000000000000000000
          000000000000000000040000001000000035413E3BB5AAAAAAFFCACACAFFD3D3
          D3FFD4D4D4FFD4D4D4FFD6D6D6FFD7D7D7FFD8D8D8FFD9D9D9FFDADADAFFDADA
          DAFFDBDBDBFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFFDBDBDBFFDBDB
          DBFFDADADAFFD9D9D9FFD8D8D8FFD7D7D7FFD6D6D6FFCCCCCCFFA7A6A6FF3F3C
          3ABC0000003B0000001000000004000000000000000000000000000000000000
          000000000000000000040000001F0000005E949291FBC4C4C4FFD0D0D0FFD1D1
          D1FFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FFD6D6D6FFD7D7
          D7FFD8D8D8FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFDADADAFFDADADAFFDADA
          DAFFDADADAFFDADADAFFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFD8D8D8FFD7D7
          D7FFD6D6D6FFD6D6D6FFD4D4D4FFD4D4D4FFD3D3D3FFD2D2D2FFC6C6C6FF8F8E
          8DFC0000006A0000002700000004000000000000000000000000000000000000
          000000000004000000100000003B686461E2B9B9B9FFC9C9C9FFCDCDCDFFCECE
          CEFFCFCFCFFFCFCFCFFFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD3D3D3FFD3D3
          D3FFD4D4D4FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD6D6D6FFD6D6D6FFD5D5D5FFD5D5D5FFD4D4D4FFD4D4
          D4FFD3D3D3FFD2D2D2FFD2D2D2FFD1D1D1FFD0D0D0FFD0D0D0FFCBCBCBFFB9B9
          B9FF63615EE60000004900000014000000040000000000000000000000000000
          0000000000040000001F0000005F908F8EFEC2C2C2FFCACACAFFCBCBCBFFCBCB
          CBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0
          D0FFD1D1D1FFD2D2D2FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
          D3FFD3D3D3FFD3D3D3FFD3D3D3FFD2D2D2FFD2D2D2FFD1D1D1FFD1D1D1FFD0D0
          D0FFD0D0D0FFCFCFCFFFCFCFCFFFCECECEFFCECECEFFCDCDCDFFCCCCCCFFC3C3
          C3FF8D8C8CFE0000007000000027000000040000000000000000000000000000
          00040000000C000000395E5B57DFABABABFFC6C6C6FFC8C8C8FFC8C8C8FFC9C9
          C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCDCD
          CDFFCECECEFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
          CFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCDCDCDFFCDCDCDFFCCCCCCFFCBCBCBFFCBCBCBFFCACACAFFCACACAFFC7C7
          C7FFACACACFF5B5855E400000045000000100000000400000000000000000000
          0004000000180000004F7F7E7DFCB5B5B5FFC5C5C5FFC6C6C6FFC6C6C6FFC7C7
          C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCB
          CBFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
          CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCBCBCBFFCBCBCBFFCBCB
          CBFFCACACAFFCACACAFFCACACAFFC9C9C9FFC9C9C9FFC8C8C8FFC8C8C8FFC7C7
          C7FFB8B8B8FF7B7A79FD0000005F0000001C0000000400000000000000000000
          0004000000232523209A8F8F8FFFBEBEBEFFC3C3C3FFC4C4C4FFC4C4C4FFC5C5
          C5FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8
          C8FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
          C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC8C8
          C8FFC7C7C7FFC7C7C7FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5C5FFC5C5
          C5FFC1C1C1FF8E8E8EFF25221FA70000002E0000000800000000000000000000
          000900000035585450E19D9D9DFFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3
          C3FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5
          C5FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6C6FFC5C5
          C5FFC5C5C5FFC5C5C5FFC5C5C5FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3
          C3FFC3C3C3FF9E9E9EFF54514EE70000003E0000000C00000000000000000000
          00110000003E706D6BF8A4A4A4FFBFBFBFFFC0C0C0FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3
          C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC3C3C3FFC2C2C2FFC2C2C2FFC2C2
          C2FFC1C1C1FFA6A6A6FF6B6968FA0000004F0000001400000000000000000000
          001100000049787877FEAAAAAAFFBCBCBCFFBCBCBCFFBCBCBCFFBEBEBEFFBEBE
          BEFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0C0FFC1C1C1FFC1C1C1FFC1C1
          C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC1C1
          C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC0C0C0FFBFBFBFFFBFBF
          BFFFBFBFBFFFACACACFF777675FE0000005B0000001800000000000000000000
          00150000004F7E7E7EFFAFAFAFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
          B9FFBBBBBBFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBE
          BEFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFBFBFBFFFC0C0
          C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBFBFBFFFBFBF
          BFFFBFBFBFFFBEBEBEFFBEBEBEFFBEBEBEFFBCBCBCFFBCBCBCFFBBBBBBFFBBBB
          BBFFBBBBBBFFAFAFAFFF7D7D7DFF000000630000001C00000000000000000000
          001500000051828282FFB2B2B2FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB6B6B6FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBBBBFFBCBCBCFFBCBCBCFFBCBC
          BCFFBCBCBCFFBEBEBEFFBEBEBEFFBCBCBCFFBCBCBCFFBBBBBBFFBBBBBBFFB9B9
          B9FFB9B9B9FFB8B8B8FFB9B9B9FFB8B8B8FFB8B8B8FFB8B8B8FFB6B6B6FFB6B6
          B6FFB6B6B6FFB2B2B2FF818181FF000000690000001C00000000000000000000
          001500000051858585FFB2B2B2FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB5B5B5FFB5B5
          B5FFB6B6B6FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9
          B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBBBBFFB9B9B9FFB9B9B9FFB8B8B8FFB5B5
          B5FFB5B5B5FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3B3FFB3B3
          B3FFB3B3B3FFB2B2B2FF848484FF000000690000001F00000000000000000000
          00150000004F858585FFADADADFFAFAFAFFFAFAFAFFFB0B0B0FFAFAFAFFFAFAF
          AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFB0B0B0FFB2B2B2FFB2B2B2FFB3B3
          B3FFB3B3B3FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB5B5B5FFB5B5
          B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6B6FFB3B3
          B3FFB0B0B0FFAFAFAFFFAFAFAFFFB0B0B0FFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
          AFFFAFAFAFFFAFAFAFFF848484FF000000660000001C00000000000000000000
          001500000049838383FFAAAAAAFFADADADFFADADADFFADADADFFADADADFFADAD
          ADFFADADADFFADADADFFADADADFFAFAFAFFFB2B2B2FFB2B2B2FFB2B2B2FFB2B2
          B2FFB3B3B3FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB6B6B6FFB6B6B6FFB6B6
          B6FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB6B6B6FFB8B8
          B8FFB2B2B2FFADADADFFADADADFFADADADFFADADADFFADADADFFADADADFFADAD
          ADFFADADADFFA9A9A9FF818181FF0000005F0000001C00000000000000000000
          00110000003E807F7FFFA3A3A3FFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFACACACFFAFAFAFFFB0B0B0FFB2B2B2FFB2B2B2FFB3B3
          B3FFB3B3B3FFB3B3B3FFB5B5B5FFB5B5B5FFB6B6B6FFB8B8B8FFB6B6B6FFB8B8
          B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB5B5B5FFAFAFAFFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFA3A3A3FF7D7D7DFF000000570000001800000000000000000000
          000C000000397A7978FE9B9B9BFFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FFA9A9A9FFACACACFFB0B0B0FFB0B0B0FFB2B2B2FFB2B2B2FFB3B3
          B3FFB3B3B3FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8B8FFB8B8
          B8FFB8B8B8FFB3B3B3FFA9A9A9FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA7A7
          A7FFA7A7A7FF9B9B9BFF787776FE0000004C0000001400000000000000000000
          000C0000002E6F6C69F6959595FFA4A4A4FFA6A6A6FFA6A6A6FFA4A4A4FFA6A6
          A6FFA6A6A6FFA9A9A9FFB0B0B0FFB0B0B0FFB0B0B0FFB2B2B2FFB3B3B3FFB5B5
          B5FFB5B5B5FFB8B8B8FFB6B6B6FFB6B6B6FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9
          B9FFB9B9B9FFB9B9B9FFBBBBBBFFBBBBBBFFBBBBBBFFBBBBBBFFB9B9B9FFB9B9
          B9FFB8B8B8FFB8B8B8FFADADADFFA6A6A6FFA4A4A4FFA6A6A6FFA6A6A6FFA4A4
          A4FFA6A6A6FF959595FF6C6A68F80000003E0000001000000000000000000000
          00040000001F595350D98E8E8EFFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3
          A3FFA3A3A3FFAAAAAAFFAFAFAFFFB2B2B2FFB2B2B2FFB2B2B2FFB5B5B5FFB5B5
          B5FFB6B6B6FFB8B8B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFBBBBBBFFBBBB
          BBFFBBBBBBFFBBBBBBFFBCBCBCFFBBBBBBFFBCBCBCFFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFFB9B9B9FFB0B0B0FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3
          A3FFA3A3A3FF8E8E8EFF55514DE0000000320000000800000000000000000000
          00040000001426221F7E838383FF9B9B9BFFA1A1A1FFA0A0A0FFA0A0A0FFA0A0
          A0FFA0A0A0FFACACACFFB0B0B0FFB2B2B2FFB3B3B3FFB5B5B5FFB6B6B6FFB8B8
          B8FFB8B8B8FFB9B9B9FFB9B9B9FFB9B9B9FFBBBBBBFFBCBCBCFFBCBCBCFFBEBE
          BEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
          BEFFBCBCBCFFBCBCBCFFB6B6B6FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0A0FFA0A0
          A0FF9B9B9BFF828282FF24201E910000001F0000000400000000000000000000
          00000000000C0000002E767472FA929292FF9D9D9DFF9E9E9EFF9D9D9DFF9E9E
          9EFF9E9E9EFFAFAFAFFFB2B2B2FFB2B2B2FFB5B5B5FFB5B5B5FFB8B8B8FFB6B6
          B6FFB9B9B9FFBBBBBBFFBCBCBCFFBCBCBCFFBEBEBEFFBEBEBEFFBEBEBEFFBFBF
          BFFFBEBEBEFFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFBFBFBFFFBFBF
          BFFFBEBEBEFFBEBEBEFFBCBCBCFF9D9D9DFF9D9D9DFF9D9D9DFF9D9D9DFF9E9E
          9EFF929292FF73716FFB00000042000000140000000000000000000000000000
          0000000000080000001C56524DD08A8A8AFF9A9A9AFF9B9B9BFF9B9B9BFF9B9B
          9BFF9B9B9BFFB2B2B2FFB3B3B3FFB5B5B5FFB6B6B6FFB8B8B8FFB9B9B9FFBBBB
          BBFFBBBBBBFFBCBCBCFFBEBEBEFFBFBFBFFFBFBFBFFFC0C0C0FFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC0C0C0FFC0C0
          C0FFC0C0C0FFC0C0C0FFBEBEBEFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9A9A
          9AFF8A8A8AFF534E4BD70000002B000000080000000000000000000000000000
          000000000000000000100000002E7A7877FD919191FF9A9A9AFF989898FF9A9A
          9AFF9A9A9AFFAFAFAFFFB5B5B5FFB6B6B6FFB9B9B9FFB9B9B9FFBBBBBBFFBEBE
          BEFFBFBFBFFFBFBFBFFFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2C2FFC2C2
          C2FFC2C2C2FFC1C1C1FFBBBBBBFF9A9A9AFF989898FF9A9A9AFF9A9A9AFF9191
          91FF787776FE0000004500000018000000040000000000000000000000000000
          000000000000000000080000001859534FD0898989FF949494FF979797FF9797
          97FF979797FFA9A9A9FFB8B8B8FFB9B9B9FFBCBCBCFFBFBFBFFFC0C0C0FFC0C0
          C0FFC1C1C1FFC1C1C1FFC2C2C2FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC3C3
          C3FFC3C3C3FFC3C3C3FFB3B3B3FF979797FF979797FF979797FF949494FF8888
          88FF55504CD7000000270000000C000000000000000000000000000000000000
          000000000000000000000000000C00000027757270F88C8C8CFF959595FF9595
          95FF959595FFA3A3A3FFBCBCBCFFBEBEBEFFC0C0C0FFC1C1C1FFC2C2C2FFC3C3
          C3FFC3C3C3FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5C5FFC6C6C6FFC6C6C6FFC6C6
          C6FFC6C6C6FFC7C7C7FFC6C6C6FFC7C7C7FFC6C6C6FFC6C6C6FFC6C6C6FFC6C6
          C6FFC5C5C5FFC5C5C5FFA9A9A9FF959595FF959595FF959595FF8C8C8CFF716F
          6DF9000000390000001400000004000000000000000000000000000000000000
          00000000000000000000000000040000001435312D8B7F7F7FFE8E8E8EFF9494
          94FF949494FF979797FFB3B3B3FFC1C1C1FFC2C2C2FFC3C3C3FFC4C4C4FFC5C5
          C5FFC5C5C5FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC8C8
          C8FFC8C8C8FFC9C9C9FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFC8C8C8FFC8C8
          C8FFC7C7C7FFC1C1C1FF989898FF949494FF949494FF8E8E8EFF7E7E7DFE342F
          2C970000001C0000000800000000000000000000000000000000000000000000
          0000000000000000000000000000000000080000001858524EC6878786FF8F8F
          8FFF929292FF929292FFA3A3A3FFC2C2C2FFC4C4C4FFC5C5C5FFC6C6C6FFC7C7
          C7FFC7C7C7FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFCBCBCBFFCACA
          CAFFC8C8C8FFAAAAAAFF929292FF929292FF8F8F8FFF868685FF544F4BCD0000
          00270000000C0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004000000080000001866615CD88989
          89FF8F8F8FFF919191FF919191FFAFAFAFFFC6C6C6FFC7C7C7FFC8C8C8FFC9C9
          C9FFC9C9C9FFCACACAFFCBCBCBFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCDCD
          CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCCCC
          CCFFB8B8B8FF919191FF919191FF8F8F8FFF898989FF635E5BDE000000270000
          0010000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000400000008000000186863
          5ED88C8C8BFF8F8F8FFF8F8F8FFF919191FFB3B3B3FFC9C9C9FFCACACAFFCBCB
          CBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCFCFCFFFCFCFCFFFCFCFCFFFCFCF
          CFFFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFCECECEFFBEBE
          BEFF919191FF8F8F8FFF8F8F8FFF8B8B8AFF65605DDD0000002B000000100000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000080000
          00185E5853C38A8988FE919191FF8F8F8FFF8E8E8EFFAFAFAFFFC7C7C7FFCECE
          CEFFCECECEFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2
          D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFCBCBCBFFB5B5B5FF8E8E
          8EFF8F8F8FFF919191FF888787FE5C5652CA0000002300000010000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0008000000143B37328684817FF6939393FF919191FF8E8E8EFF9D9D9DFFBFBF
          BFFFCBCBCBFFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4
          D4FFD5D5D5FFD5D5D5FFD5D5D5FFCECECEFFC2C2C2FFA0A0A0FF8E8E8EFF9191
          91FF939393FF83807EF83A36328F0000001C0000000C00000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000C0000001867615DCA8F8D8CFC969696FF929292FF8F8F
          8FFF989898FFB2B2B2FFC4C4C4FFCBCBCBFFD1D1D1FFD5D5D5FFD6D6D6FFD2D2
          D2FFCDCDCDFFC6C6C6FFB6B6B6FF989898FF8F8F8FFF929292FF969696FF8E8D
          8BFD66605CCE0000002300000014000000080000000400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000400000008000000100000001868625EC78E8B8AF99898
          98FF989898FF949494FF919191FF8E8E8EFF8C8C8CFF8B8B8BFF8B8B8BFF8C8C
          8CFF8E8E8EFF919191FF949494FF989898FF989898FF8B8987FA66605CCB0000
          0023000000140000000C00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004000000080000000C000000142F2B
          28666F6A66CE8C8986F3979695FD9C9C9CFF9E9E9EFFA0A0A0FFA0A0A0FF9E9E
          9EFF9C9C9CFF979695FD8A8784F36F6965D02E2A276D0000001C000000140000
          000C000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000004000000040000
          00080000000C0000001000000014000000180000001C0000001C0000001C0000
          001C0000001C0000001800000014000000100000000C00000008000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000400000004000000040000000400000008000000080000
          0004000000040000000400000004000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36240000424D3624000000000000360000002800000030000000300000000100
          2000000000000024000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010101080101010801010108010101080101010801010108010101080101
          0108010101080101010801010108010101080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010108010101080101
          01100202021F0303032E0404043B05050542050505490606064F0606064F0505
          0549050505490404043B0303032E0202021F0101011001010108010101080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010801010110030303270404043B0808
          08660B0B0B860E0E0EA0101010AF111111BE131313C6131313CB131313CB1313
          13C6111111BE101010B30E0E0EA00B0B0B860808086605050542030303270101
          0110010101080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101010801010108030303270606064F0B0B0B820E0E0EA86561
          5FE9BBBAB8FEDDDDDCFFEAEAEAFFF1F1F1FFF5F5F5FFF7F7F7FFF7F7F7FFF5F5
          F5FFF1F1F1FFEAEAEAFFDDDDDCFFB9B7B6FE64615FEA101010AF0B0B0B860606
          06540303032E0101011001010108000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000101
          0108010101080202021F050505490B0B0B82111111B8B2B1AFFDE1E1E1FFF2F2
          F2FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFE0E0E0FFB1AFADFE1111
          11BE0B0B0B890606064F0202021F010101080101010800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101080101
          011004040435080808690F0F0FACB2B0AFFDE5E5E5FFF9F9F9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFE4E4
          E4FFAEADABFE101010B5090909730404043B0101011001010108000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010108020202180505
          05420B0B0B867A7773EED9D9D8FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF5F5F5FFD6D6D6FF787371F10C0C0C910505054902020218010101080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000101010802020218050505490C0C
          0C96A6A4A2FCE4E4E4FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFAFAFAFFE3E3E3FFA2A09EFD0E0E0EA00606064F020202180101
          0108000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000101010802020218050505490C0C0C96B1AF
          ADFEE9E9E9FFF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFAFAFAFFE9E9E9FFABAAA8FE0E0E0EA40606064F0202
          0218010101080000000000000000000000000000000000000000000000000000
          0000000000000000000001010108010101100404043B0C0C0C8DACAAA8FEE8E8
          E8FFF6F6F6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFE8E8E8FFA8A6A4FE0D0D0D9A0505
          0549010101100101010800000000000000000000000000000000000000000000
          00000000000000000000010101080303032E0A0A0A7E9A9795FCE4E4E4FFF2F2
          F2FFFAFAFAFFFCFCFCFFFDFDFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF5F5F5FFE4E4E4FF969491FD0B0B
          0B89040404350101010800000000000000000000000000000000000000000000
          000000000000010101080202021F0707075F6D6964EACECECEFFEEEEEEFFF7F7
          F7FFF8F8F8FFF8F8F8FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFEFEFEFFFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFEFEFEFFFDFDFDFFFCFCFCFFFBFBFBFFFAFAFAFFF0F0F0FFCACACAFF6A65
          61EE080808690202021F01010108000000000000000000000000000000000000
          000000000000010101080404043B0D0D0D9AB8B7B6FFE8E8E8FFF4F4F4FFF5F5
          F5FFF5F5F5FFF6F6F6FFF7F7F7FFF8F8F8FFF8F8F8FFF9F9F9FFFAFAFAFFFBFB
          FBFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFBFB
          FBFFFAFAFAFFFAFAFAFFF8F8F8FFF8F8F8FFF7F7F7FFF6F6F6FFEAEAEAFFB3B3
          B2FF0E0E0EA80505054901010108000000000000000000000000000000000000
          0000010101080202021F08080869928F8BFCDDDDDDFFEDEDEDFFF1F1F1FFF2F2
          F2FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF7F7F7FFF7F7
          F7FFF8F8F8FFF9F9F9FFF9F9F9FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFB
          FBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFF9F9F9FFF8F8F8FFF8F8
          F8FFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF4F4F4FFF4F4F4FFEFEFEFFFDDDD
          DDFF8D8A87FD0A0A0A7E03030327010101080000000000000000000000000000
          0000010101080404043B0D0D0D9BB3B3B2FFE6E6E6FFEEEEEEFFEFEFEFFFEFEF
          EFFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4F4FFF4F4
          F4FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
          F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FFF4F4
          F4FFF4F4F4FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF1F1F1FFF0F0F0FFE7E7
          E7FFB1B0B0FF101010AF05050549010101080000000000000000000000000101
          01080202021808080866898581FBCFCFCFFFEAEAEAFFECECECFFECECECFFEDED
          EDFFEEEEEEFFEEEEEEFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FFF1F1F1FFF1F1
          F1FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
          F2FFF1F1F1FFF1F1F1FFF0F0F0FFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEEFFEBEB
          EBFFD0D0D0FF85817DFD090909780202021F0101010800000000000000000101
          01080303032E0B0B0B86A3A3A1FFD9D9D9FFE9E9E9FFEAEAEAFFEAEAEAFFEBEB
          EBFFEBEBEBFFECECECFFECECECFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEF
          EFFFEFEFEFFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
          F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFEFEFEFFFEFEFEFFFEFEF
          EFFFEEEEEEFFEEEEEEFFEEEEEEFFEDEDEDFFEDEDEDFFECECECFFECECECFFEBEB
          EBFFDCDCDCFF9E9E9DFF0D0D0D9B040404350101010800000000000000000101
          0108050505424B4640D7B3B3B3FFE2E2E2FFE7E7E7FFE8E8E8FFE8E8E8FFE9E9
          E9FFE9E9E9FFE9E9E9FFEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFECECECFFECEC
          ECFFECECECFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDED
          EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECEC
          ECFFEBEBEBFFEBEBEBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9E9FFE9E9
          E9FFE5E5E5FFB2B2B2FF4A4540E1060606540101011000000000000000000101
          01120707075F837E78FCC1C1C1FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7
          E7FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9
          E9FFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9
          E9FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7
          E7FFE7E7E7FFC2C2C2FF7D7873FD0909096D0202021800000000000000000202
          02210909096D969391FFC8C8C8FFE3E3E3FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
          E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
          E8FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE6E6
          E6FFE5E5E5FFCACACAFF908E8DFF0B0B0B860303032700000000000000000202
          02210A0A0A7E9B9B9AFFCECECEFFE0E0E0FFE0E0E0FFE0E0E0FFE2E2E2FFE2E2
          E2FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5
          E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E5
          E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE3E3E3FFE3E3
          E3FFE3E3E3FFD0D0D0FF9A9998FF0C0C0C960303032E00000000000000000303
          03290B0B0B86A2A2A2FFD3D3D3FFDDDDDDFFDDDDDDFFDDDDDDFFDDDDDDFFDDDD
          DDFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE2E2E2FFE2E2E2FFE2E2
          E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE3E3E3FFE4E4
          E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3
          E3FFE3E3E3FFE2E2E2FFE2E2E2FFE2E2E2FFE0E0E0FFE0E0E0FFDFDFDFFFDFDF
          DFFFDFDFDFFFD3D3D3FFA1A1A1FF0E0E0EA00404043500000000000000000303
          03290B0B0B89A6A6A6FFD6D6D6FFDADADAFFDADADAFFDADADAFFDADADAFFDADA
          DAFFDADADAFFDADADAFFDADADAFFDCDCDCFFDCDCDCFFDCDCDCFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDFDFDFFFDFDFDFFFDFDFDFFFE0E0E0FFE0E0E0FFE0E0
          E0FFE0E0E0FFE2E2E2FFE2E2E2FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDDDD
          DDFFDDDDDDFFDCDCDCFFDDDDDDFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFFDADA
          DAFFDADADAFFD6D6D6FFA5A5A5FF0E0E0EA70404043500000000000000000303
          03290B0B0B89A9A9A9FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD9D9D9FFD9D9
          D9FFDADADAFFDADADAFFDCDCDCFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDD
          DDFFDDDDDDFFDFDFDFFFDFDFDFFFDFDFDFFFDDDDDDFFDDDDDDFFDCDCDCFFD9D9
          D9FFD9D9D9FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7
          D7FFD7D7D7FFD6D6D6FFA8A8A8FF0E0E0EA70404043B00000000000000000303
          03290B0B0B86A9A9A9FFD1D1D1FFD3D3D3FFD3D3D3FFD4D4D4FFD3D3D3FFD3D3
          D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD6D6D6FFD6D6D6FFD7D7
          D7FFD7D7D7FFD9D9D9FFD9D9D9FFD9D9D9FFD9D9D9FFDADADAFFD9D9D9FFD9D9
          D9FFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFDADADAFFD7D7
          D7FFD4D4D4FFD3D3D3FFD3D3D3FFD4D4D4FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
          D3FFD3D3D3FFD3D3D3FFA8A8A8FF0E0E0EA40404043500000000000000000303
          03290A0A0A7EA7A7A7FFCECECEFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFD1D1D1FFD1D1D1FFD3D3D3FFD6D6D6FFD6D6D6FFD6D6D6FFD6D6
          D6FFD7D7D7FFD9D9D9FFD9D9D9FFD9D9D9FFDADADAFFDADADAFFDADADAFFDADA
          DAFFDADADAFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDADADAFFDCDC
          DCFFD6D6D6FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1
          D1FFD1D1D1FFCDCDCDFFA5A5A5FF0D0D0D9B0404043500000000000000000202
          02210909096DA4A3A3FFC7C7C7FFCECECEFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCECECEFFCECECEFFD0D0D0FFD3D3D3FFD4D4D4FFD6D6D6FFD6D6D6FFD7D7
          D7FFD7D7D7FFD7D7D7FFD9D9D9FFD9D9D9FFDADADAFFDCDCDCFFDADADAFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
          DCFFD9D9D9FFD3D3D3FFCECECEFFCECECEFFCECECEFFCECECEFFCECECEFFCECE
          CEFFCECECEFFC7C7C7FFA1A1A1FF0C0C0C910303032E00000000000000000202
          0218080808669D9C9BFFBFBFBFFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFCDCDCDFFD0D0D0FFD4D4D4FFD4D4D4FFD6D6D6FFD6D6D6FFD7D7
          D7FFD7D7D7FFD9D9D9FFD9D9D9FFD9D9D9FFDADADAFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDCDCFFDCDC
          DCFFDCDCDCFFD7D7D7FFCDCDCDFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
          CBFFCBCBCBFFBFBFBFFF9B9A99FF0B0B0B820303032700000000000000000202
          02180606065495928FFFB9B9B9FFC8C8C8FFCACACAFFCACACAFFC8C8C8FFCACA
          CAFFCACACAFFCDCDCDFFD4D4D4FFD4D4D4FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9
          D9FFD9D9D9FFDCDCDCFFDADADAFFDADADAFFDCDCDCFFDCDCDCFFDDDDDDFFDDDD
          DDFFDDDDDDFFDDDDDDFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDDDDDDFFDDDD
          DDFFDCDCDCFFDCDCDCFFD1D1D1FFCACACAFFC8C8C8FFCACACAFFCACACAFFC8C8
          C8FFCACACAFFB9B9B9FF92908EFF0909096D0202021F00000000000000000101
          01080404043B857D7AFAB2B2B2FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFCECECEFFD3D3D3FFD6D6D6FFD6D6D6FFD6D6D6FFD9D9D9FFD9D9
          D9FFDADADAFFDCDCDCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFDFDFDFFFDFDF
          DFFFDFDFDFFFDFDFDFFFE0E0E0FFDFDFDFFFE0E0E0FFDFDFDFFFDFDFDFFFDFDF
          DFFFDFDFDFFFDDDDDDFFD4D4D4FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7C7FFC7C7
          C7FFC7C7C7FFB2B2B2FF7F7B75FC0707075B0101011000000000000000000101
          0108030303274C453FBEA7A7A7FFBFBFBFFFC5C5C5FFC4C4C4FFC4C4C4FFC4C4
          C4FFC4C4C4FFD0D0D0FFD4D4D4FFD6D6D6FFD7D7D7FFD9D9D9FFDADADAFFDCDC
          DCFFDCDCDCFFDDDDDDFFDDDDDDFFDDDDDDFFDFDFDFFFE0E0E0FFE0E0E0FFE2E2
          E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
          E2FFE0E0E0FFE0E0E0FFDADADAFFC4C4C4FFC4C4C4FFC4C4C4FFC4C4C4FFC4C4
          C4FFBFBFBFFFA6A6A6FF49423DD00404043B0101010800000000000000000000
          000002020218060606549A9997FFB6B6B6FFC1C1C1FFC2C2C2FFC1C1C1FFC2C2
          C2FFC2C2C2FFD3D3D3FFD6D6D6FFD6D6D6FFD9D9D9FFD9D9D9FFDCDCDCFFDADA
          DAFFDDDDDDFFDFDFDFFFE0E0E0FFE0E0E0FFE2E2E2FFE2E2E2FFE2E2E2FFE3E3
          E3FFE2E2E2FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3
          E3FFE2E2E2FFE2E2E2FFE0E0E0FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC2C2
          C2FFB6B6B6FF989694FF09090973030303270000000000000000000000000000
          00000101011004040435857E77F7AEAEAEFFBEBEBEFFBFBFBFFFBFBFBFFFBFBF
          BFFFBFBFBFFFD6D6D6FFD7D7D7FFD9D9D9FFDADADAFFDCDCDCFFDDDDDDFFDFDF
          DFFFDFDFDFFFE0E0E0FFE2E2E2FFE3E3E3FFE3E3E3FFE4E4E4FFE4E4E4FFE4E4
          E4FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4
          E4FFE4E4E4FFE4E4E4FFE2E2E2FFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBEBE
          BEFFAEAEAEFF7F7873F90606064F010101100000000000000000000000000000
          0000000000000202021F060606549D9C9BFFB5B5B5FFBEBEBEFFBCBCBCFFBEBE
          BEFFBEBEBEFFD3D3D3FFD9D9D9FFDADADAFFDDDDDDFFDDDDDDFFDFDFDFFFE2E2
          E2FFE3E3E3FFE3E3E3FFE5E5E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFE5E5E5FFDFDFDFFFBEBEBEFFBCBCBCFFBEBEBEFFBEBEBEFFB5B5
          B5FF9B9A99FF090909780303032E010101080000000000000000000000000000
          000000000000010101100303032E87807AF7ADADADFFB8B8B8FFBBBBBBFFBBBB
          BBFFBBBBBBFFCDCDCDFFDCDCDCFFDDDDDDFFE0E0E0FFE3E3E3FFE4E4E4FFE4E4
          E4FFE5E5E5FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8
          E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE7E7
          E7FFE7E7E7FFE7E7E7FFD7D7D7FFBBBBBBFFBBBBBBFFBBBBBBFFB8B8B8FFACAC
          ACFF817B74F90505054902020218000000000000000000000000000000000000
          0000000000000000000002020218050505499A9896FFB0B0B0FFB9B9B9FFB9B9
          B9FFB9B9B9FFC7C7C7FFE0E0E0FFE2E2E2FFE4E4E4FFE5E5E5FFE6E6E6FFE7E7
          E7FFE7E7E7FFE8E8E8FFE8E8E8FFE9E9E9FFE9E9E9FFEAEAEAFFEAEAEAFFEAEA
          EAFFEAEAEAFFEBEBEBFFEAEAEAFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
          EAFFE9E9E9FFE9E9E9FFCDCDCDFFB9B9B9FFB9B9B9FFB9B9B9FFB0B0B0FF9795
          93FF080808660303032701010108000000000000000000000000000000000000
          000000000000000000000101010803030327635B53CBA3A3A2FFB2B2B2FFB8B8
          B8FFB8B8B8FFBBBBBBFFD7D7D7FFE5E5E5FFE6E6E6FFE7E7E7FFE8E8E8FFE9E9
          E9FFE9E9E9FFEAEAEAFFEAEAEAFFEBEBEBFFEBEBEBFFECECECFFECECECFFECEC
          ECFFECECECFFEDEDEDFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFECEC
          ECFFEBEBEBFFE5E5E5FFBCBCBCFFB8B8B8FFB8B8B8FFB2B2B2FFA1A1A0FF5F57
          51D5040404350101011000000000000000000000000000000000000000000000
          0000000000000000000000000000010101100303032E87817AF3ABABAAFFB3B3
          B3FFB6B6B6FFB6B6B6FFC7C7C7FFE6E6E6FFE8E8E8FFE9E9E9FFEAEAEAFFEBEB
          EBFFEBEBEBFFECECECFFEDEDEDFFEDEDEDFFEDEDEDFFEEEEEEFFEEEEEEFFEFEF
          EFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEEEEEEFFEFEFEFFFEEEE
          EEFFECECECFFCECECEFFB6B6B6FFB6B6B6FFB3B3B3FFAAAAA9FF827B75F60505
          0549020202180000000000000000000000000000000000000000000000000000
          000000000000000000000000000001010108010101100303032E938E89FAADAD
          ADFFB3B3B3FFB5B5B5FFB5B5B5FFD3D3D3FFEAEAEAFFEBEBEBFFECECECFFEDED
          EDFFEDEDEDFFEEEEEEFFEFEFEFFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF1F1
          F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0
          F0FFDCDCDCFFB5B5B5FFB5B5B5FFB3B3B3FFADADADFF8F8985FB050505490202
          021F010101080000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000001010108010101100303032E9691
          8BFAB0B0AFFFB3B3B3FFB3B3B3FFB5B5B5FFD7D7D7FFEDEDEDFFEEEEEEFFEFEF
          EFFFF0F0F0FFF1F1F1FFF1F1F1FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
          F3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF2F2F2FFE2E2
          E2FFB5B5B5FFB3B3B3FFB3B3B3FFAFAFAEFF918C88FB0606064F0202021F0101
          0108000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010108010101100303
          032E8F8882F1ADADACFFB5B5B5FFB3B3B3FFB2B2B2FFD3D3D3FFEBEBEBFFF2F2
          F2FFF2F2F2FFF3F3F3FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6
          F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFEFEFEFFFD9D9D9FFB2B2
          B2FFB3B3B3FFB5B5B5FFACABABFF8B847FF4050505420202021F010101080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101080101
          0110030303276A635CC6AAA8A6FFB7B7B7FFB5B5B5FFB2B2B2FFC1C1C1FFE3E3
          E3FFEFEFEFFFF6F6F6FFF6F6F6FFF7F7F7FFF7F7F7FFF8F8F8FFF8F8F8FFF8F8
          F8FFF9F9F9FFF9F9F9FFF9F9F9FFF2F2F2FFE6E6E6FFC4C4C4FFB2B2B2FFB5B5
          B5FFB7B7B7FFA9A7A5FF69615ACE040404350202021801010108000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001010108020202180303032E97918EF4B3B2B1FFBABABAFFB6B6B6FFB3B3
          B3FFBCBCBCFFD6D6D6FFE8E8E8FFEFEFEFFFF5F5F5FFF9F9F9FFFAFAFAFFF6F6
          F6FFF1F1F1FFEAEAEAFFDADADAFFBCBCBCFFB3B3B3FFB6B6B6FFBABABAFFB1B1
          AFFF96908BF60505054203030327010101100101010800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000001010108010101100202021F0303032E98948FF3B3B1B0FFBCBC
          BCFFBCBCBCFFB8B8B8FFB5B5B5FFB2B2B2FFB0B0B0FFAFAFAFFFAFAFAFFFB0B0
          B0FFB2B2B2FFB5B5B5FFB8B8B8FFBCBCBCFFBCBCBCFFB0AFADFF96908CF50505
          0542030303270202021801010108000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010101080101011002020218030303275A54
          4EA4A09B96F6B4B2B0FFBABAB9FFC0C0C0FFC2C2C2FFC4C4C4FFC4C4C4FFC2C2
          C2FFC0C0C0FFBABAB9FFB2B0AEFF9F9A96F758524CAC04040435030303270202
          0218010101080000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000001010108010101080101
          0110020202180202021F030303270303032E0404043504040435040404350404
          0435040404350303032E030303270202021F0202021801010110010101080000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000101010801010108010101080101010801010110010101100101
          0108010101080101010801010108010101080000000000000000000000000000
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
  object ppmTextHighlightColor: TdxRibbonPopupMenu
    BarManager = dxBarManager
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 104
    Top = 272
    PixelsPerInch = 96
  end
  object ppmFloatingObjectFillColor: TdxRibbonPopupMenu
    BarManager = dxBarManager
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 104
    Top = 384
    PixelsPerInch = 96
  end
  object ppmFloatingObjectOutlineColor: TdxRibbonPopupMenu
    BarManager = dxBarManager
    ItemLinks = <>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 104
    Top = 440
    PixelsPerInch = 96
  end
  object ilWidthLines: TcxImageList
    SourceDPI = 96
    Width = 48
    FormatVersion = 1
    DesignInfo = 21496152
    ImageInfo = <
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
      end
      item
        Image.Data = {
          360C0000424D360C000000000000360000002800000030000000100000000100
          200000000000000C000000000000000000000000000000000000FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
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
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        MaskColor = clWhite
      end>
  end
  object ppmQuickStyles: TdxRibbonPopupMenu
    BarManager = dxBarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbModifyStyle'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbRenameStyle'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    Left = 104
    Top = 488
    PixelsPerInch = 96
  end
end
