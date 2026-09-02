object frmPDFViewer: TfrmPDFViewer
  Left = 0
  Top = 0
  Caption = 'VCL PDF Viewer Demo'
  ClientHeight = 670
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1184
    Height = 165
    ApplicationButton.Visible = False
    BarManager = dxBarManager1
    CapitalizeTabCaptions = bDefault
    Style = rs2019
    ColorSchemeName = 'Colorful'
    PopupMenuItems = [rpmiQATPosition, rpmiQATAddRemoveItem, rpmiMinimizeRibbon]
    QuickAccessToolbar.Toolbar = QuickAccessBar
    SupportNonClientDrawing = True
    Contexts = <>
    TabAreaToolbar.Toolbar = dxBarManager1Bar2
    TabOrder = 0
    TabStop = False
    object dxRibbonTabHome: TdxRibbonTab
      Active = True
      Caption = 'Demo'
      Groups = <
        item
          Caption = 'File'
          ToolbarName = 'dxBarFile'
        end
        item
          Caption = 'Find'
          ToolbarName = 'dxBarFind'
        end
        item
          Caption = 'Tools'
          ToolbarName = 'dxBarTools'
        end
        item
          Caption = 'Navigation'
          ToolbarName = 'dxRibbonNavigationGroup'
        end
        item
          Caption = 'View'
          ToolbarName = 'dxBarZoom'
        end
        item
          Caption = 'sdasdas'
        end
        item
          ToolbarName = 'barExport'
        end
        item
          ToolbarName = 'dxBarInfo'
        end>
      Index = 0
    end
    object dxRibbon1Tab2: TdxRibbonTab
      Caption = 'Interactive Form'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 1
    end
    object dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Skins'
      Groups = <
        item
          Caption = 'Appearance'
          ToolbarName = 'dxBarAppearance'
        end>
      Index = 2
    end
  end
  object dxPDFViewer1: TdxPDFViewer
    Left = 0
    Top = 165
    Width = 1184
    Height = 480
    Align = alClient
    OptionsFindPanel.Alignment = fpalTopRight
    OptionsNavigationPane.Attachments.Glyph.SourceDPI = 96
    OptionsNavigationPane.Attachments.Glyph.Data = {
      3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
      662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
      6C7573747261746F722032302E312E302C20535647204578706F727420506C75
      672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
      2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
      2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
      77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
      766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
      643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
      2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
      3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
      2220793D22307078220D0A092076696577426F783D2230203020333220333222
      207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
      302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
      0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
      6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706174
      682069643D224174746163686D656E742220636C6173733D22426C61636B2220
      643D224D31372C3263332E392C302C372C332E312C372C37763133682D325639
      63302D322E382D322E322D352D352D35732D352C322E322D352C357631366330
      2C312E372C312E332C332C332C3373332D312E332C332D335631310D0A096330
      2D302E362D302E342D312D312D31732D312C302E342D312C31763131682D3256
      313163302D312E372C312E332D332C332D3373332C312E332C332C3376313463
      302C322E382D322E322C352D352C35732D352D322E322D352D3556394331302C
      352E312C31332E312C322C31372C327A222F3E0D0A3C2F7376673E0D0A}
    OptionsNavigationPane.Bookmarks.Glyph.SourceDPI = 96
    OptionsNavigationPane.Bookmarks.Glyph.Data = {
      3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
      662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
      6C7573747261746F722032302E312E302C20535647204578706F727420506C75
      672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
      2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
      2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
      77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
      766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
      643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
      2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
      3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
      2220793D22307078220D0A092076696577426F783D2230203020333220333222
      207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
      302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
      0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
      6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706F6C
      79676F6E2069643D22426F6F6B6D61726B732220636C6173733D22426C61636B
      2220706F696E74733D2232342C33302031362C323220382C333020382C342032
      342C3420222F3E0D0A3C2F7376673E0D0A}
    OptionsNavigationPane.Thumbnails.Glyph.SourceDPI = 96
    OptionsNavigationPane.Thumbnails.Glyph.Data = {
      3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
      662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
      6C7573747261746F722032302E312E302C20535647204578706F727420506C75
      672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
      2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
      2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
      77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
      766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
      643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
      2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
      3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
      2220793D22307078220D0A092076696577426F783D2230203020333220333222
      207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
      302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
      0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
      6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706174
      682069643D225468756D626E61696C732220636C6173733D22426C61636B2220
      643D224D32382C38682D34563448313276364836763138683136762D36683656
      387A204D32302C32364838563132683476313068385632367A204D32362C3230
      682D34682D32682D36762D38762D3256366838763468345632307A220D0A092F
      3E0D0A3C2F7376673E0D0A}
    OptionsNavigationPane.Visible = True
    OptionsView.HighlightCurrentPage = False
    OnAttachmentOpen = dxPDFViewer1AttachmentOpen
    OnAttachmentSave = dxPDFViewer1AttachmentSave
    OnCustomDrawPreRenderPage = dxPDFViewer1CustomDrawPreRenderPage
    OnCustomDrawPreRenderPageThumbnail = dxPDFViewer1CustomDrawPreRenderPageThumbnail
    OnDocumentLoaded = dxPDFViewer1DocumentLoaded
    OnDocumentUnloaded = dxPDFViewer1DocumentUnloaded
    OnHideFindPanel = dxPDFViewer1HideFindPanel
    OnHyperlinkClick = dxPDFViewer1HyperlinkClick
    OnShowFindPanel = dxPDFViewer1ShowFindPanel
    OnSearchProgress = dxPDFViewer1SearchProgress
    OnSelectedPageChanged = dxPDFViewer1SelectedPageChanged
    OnZoomFactorChanged = dxPDFViewer1ZoomFactorChanged
    ExplicitTop = 132
    ExplicitHeight = 513
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 645
    Width = 1184
    Height = 25
    Color = clBtnFace
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'bmiNavigation'
        Fixed = False
        MinWidth = 100
        Width = 100
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'biStatusBarZoom'
        MinWidth = 76
        Text = 'TdxStatusBarPanel'
        Width = 76
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = dxRibbonStatusBar1Container5
        MinWidth = 150
        Width = 150
      end
      item
        PanelStyleClassName = 'TdxStatusBarToolbarPanelStyle'
        PanelStyle.ToolbarName = 'dxTextSearchStatusBar'
      end
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.AlignControl = False
        PanelStyle.Container = dxRibbonStatusBar1Container6
        Width = 100
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object dxRibbonStatusBar1Container5: TdxStatusBarContainerControl
      Left = 763
      Top = 0
      Width = 152
      Height = 25
      object tbZoom: TdxZoomTrackBar
        Left = 0
        Top = 0
        Align = alClient
        Properties.FirstRange.Frequency = 5
        Properties.OnChange = tbZoomPropertiesChange
        TabOrder = 0
        Height = 25
        Width = 152
      end
    end
    object dxRibbonStatusBar1Container6: TdxStatusBarContainerControl
      Left = 1063
      Top = 0
      Width = 102
      Height = 25
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'PDF Viewer | Zoom'
      'PDF Viewer | File'
      'PDF Viewer | Navigation'
      'Home | File'
      'Home | Tools'
      'Home | Navigation'
      'Home | Find')
    Categories.ItemsVisibles = (
      2
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
      True
      True)
    ImageOptions.Images = SVGImageList1
    ImageOptions.LargeImages = SVGImageList2
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 648
    Top = 208
    PixelsPerInch = 96
    object dxBarManager1Bar2: TdxBar
      Caption = 'Tab Area Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarFile: TdxBar
      Caption = 'File'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
        4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
        31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D22446F63756D656E74504446223E0D0A09093C7061746820636C6173733D22
        426C61636B2220643D224D32322C3234763448325632683134763563302C302E
        362C302E342C312C312C3168357634683256376C2D372D37483143302E342C30
        2C302C302E342C302C3176323863302C302E362C302E342C312C312C31683232
        63302E362C302C312D302E342C312D3120202623393B2623393B762D35483232
        7A222F3E0D0A09093C7061746820636C6173733D225265642220643D224D3139
        2E322C313663302E332C302E352C302E342C312E312C302E342C312E3963302C
        302E392D302E322C312E352D302E352C32632D302E332C302E352D302E372C30
        2E372D312E332C302E37682D302E36762D352E3368302E3620202623393B2623
        393B4331382E342C31352E332C31382E392C31352E362C31392E322C31367A20
        4D31322E312C31352E33682D302E3576322E3668302E3563302E372C302C312E
        312D302E342C312E312D312E3363302D302E342D302E312D302E382D302E332D
        314331322E362C31352E342C31322E342C31352E332C31322E312C31352E337A
        20202623393B2623393B204D33302C313276313248365631324833307A204D31
        342E382C31362E3563302D302E382D302E322D312E352D302E362D312E39632D
        302E342D302E342D312D302E372D312E382D302E37483130763868312E36762D
        322E3768302E3663302E382C302C312E342D302E332C312E392D302E38202026
        23393B2623393B4331342E352C31382C31342E382C31372E332C31342E382C31
        362E357A204D32312E322C31372E3963302D322E362D312E312D332E392D332E
        342D332E39682D322E31763868322E3263312E312C302C312E392D302E342C32
        2E352D312E314332302E392C32302E322C32312E322C31392E322C32312E322C
        31372E397A20202623393B2623393B204D32362C3134682D332E37763868312E
        36762D332E316832762D312E33682D32762D322E324832365631347A222F3E0D
        0A093C2F673E0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonOpen'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonPrint'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonClose'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarZoom: TdxBar
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedLeft = 617
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 71
      FloatClientHeight = 136
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
        4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
        31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D225A6F6F6D223E0D0A09093C7061746820636C6173733D22426C61636B2220
        643D224D32392E372C32372E334C32322C31392E366C2D302E312D302E316331
        2E332D312E382C322E312D342E312C322E312D362E3563302D362E312D342E39
        2D31312D31312D313153322C362E392C322C313373342E392C31312C31312C31
        3120202623393B2623393B63322E342C302C342E372D302E382C362E352D322E
        3163302C302C302C302E312C302E312C302E316C372E372C372E3763302E332C
        302E332C302E392C302E332C312E322C306C312E322D312E324333302E312C32
        382E322C33302E312C32372E362C32392E372C32372E337A204D342C31332020
        2623393B2623393B63302D352C342D392C392D3973392C342C392C39732D342C
        392D392C3953342C31382C342C31337A222F3E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbtnSinglePageMode'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonZoomOut'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonZoomIn'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'lbtnZoomGroup'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarAppearance: TdxBar
      Caption = 'Skins'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarInfo: TdxBar
      Caption = 'DevExpress'
      CaptionButtons = <>
      DockedLeft = 949
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A3C2F7374796C653E0D0A3C7061746820636C61
        73733D22426C75652220643D224D31362C3243382E332C322C322C382E332C32
        2C313673362E332C31342C31342C31347331342D362E332C31342D3134533233
        2E372C322C31362C327A204D31362C3663312E312C302C322C302E392C322C32
        732D302E392C322D322C32732D322D302E392D322D320D0A095331342E392C36
        2C31362C367A204D32302C3234682D38762D326832762D38682D32762D326832
        683476313068325632347A222F3E0D0A3C2F7376673E0D0A}
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmiNavigation: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'StatusBarNavigation'
      CaptionButtons = <>
      DockedLeft = 77
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 90
      FloatClientHeight = 243
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonFirstPage'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonPreviousPage'
        end
        item
          Visible = True
          ItemName = 'dxBarStatic1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 33
          Visible = True
          ItemName = 'sseActivePage'
        end
        item
          Visible = True
          ItemName = 'sbPageCount'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonNextPage'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonLastPage'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object biStatusBarZoom: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'StatusBarZoom'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1105
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbtnZoomGroup'
        end
        item
          Visible = True
          ItemName = 'biStatusBarCurrentZoom'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxRibbonNavigationGroup: TdxBar
      Caption = 'Navigation'
      CaptionButtons = <>
      DockedLeft = 471
      DockedTop = 0
      FloatLeft = 1017
      FloatTop = 8
      FloatClientWidth = 95
      FloatClientHeight = 136
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
        303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
        696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C61
        73733D22426C75652220643D224D32312E362C31342E3463302E352C302E332C
        302E352C302E382C302C312E314C31322C32322E3776322E3663302C302E362C
        302E342C302E382C302E392C302E356C31322E372D31302E3463302E352D302E
        332C302E352D302E372C302D312E3120202623393B4C31322E392C342E314331
        322E342C332E382C31322C342C31322C342E3676322E364C32312E362C31342E
        347A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3137
        2E362C31352E3563302E352D302E332C302E352D302E382C302D312E314C322E
        392C342E3143322E342C332E382C322C342C322C342E367632302E3763302C30
        2E362C302E342C302E382C302E392C302E354C31372E362C31352E357A222F3E
        0D0A3C7061746820636C6173733D22426C75652220643D224D32392C34683263
        302E362C302C312C302E342C312C3176323063302C302E362D302E342C312D31
        2C31682D32632D302E362C302D312D302E342D312D3156354332382C342E342C
        32382E342C342C32392C347A222F3E0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'lbtnNavigation'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'lbtnRotateView'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarTools: TdxBar
      Caption = 'Tools'
      CaptionButtons = <>
      DockedLeft = 302
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
        4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
        31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D2253656C656374223E0D0A09093C7061746820636C6173733D22426C61636B
        2220643D224D31382E322C32304832364C31302C347632326C352E332D352E33
        6C322E372C362E3763302E322C302E352C302E382C302E382C312E332C302E35
        6C302E392D302E3463302E352D302E322C302E382D302E382C302E352D312E33
        4C31382E322C32307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonSelectTool'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonHandTool'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonSelectAll'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxTextSearchStatusBar: TdxBar
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'TextSearchStatusBar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem4'
        end
        item
          Visible = True
          ItemName = 'bbAbortTextSearch'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarFind: TdxBar
      Caption = 'Find'
      CaptionButtons = <>
      DockedLeft = 238
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
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
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
        6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
        7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2246
        696E64223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
        4D32392E352C31392E374C32392E352C31392E374C32392E352C31392E374332
        392E352C31392E372C32392E352C31392E372C32392E352C31392E374C32332E
        382C366C302C30632D302E342D312E322D312E352D322D322E382D3220202623
        393B2623393B632D312E372C302D332C312E332D332C337633682D3456376330
        2D312E372D312E332D332D332D3343392E372C342C382E362C342E392C382E32
        2C366C302C304C322E352C31392E3763302C302C302C302C302C306C302C3068
        3043322E322C32302E342C322C32312E322C322C323220202623393B2623393B
        63302C332E332C322E372C362C362C3673362D322E372C362D36762D34683476
        3463302C332E332C322E372C362C362C3673362D322E372C362D364333302C32
        312E322C32392E382C32302E342C32392E352C31392E377A204D382C3236632D
        322E322C302D342D312E382D342D3473312E382D342C342D3420202623393B26
        23393B73342C312E382C342C345331302E322C32362C382C32367A204D32342C
        3236632D322E322C302D342D312E382D342D3473312E382D342C342D3473342C
        312E382C342C345332362E322C32362C32342C32367A222F3E0D0A093C2F673E
        0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButtonFind1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object QuickAccessBar: TdxBar
      Caption = 'QuickAccessToolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonOpen'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barExport: TdxBar
      Caption = 'Export'
      CaptionButtons = <>
      DockedLeft = 877
      DockedTop = 0
      FloatLeft = 1145
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C61636B7B6669
        6C6C3A233732373237323B7D0D0A092E477265656E7B66696C6C3A2330333943
        32333B7D0D0A3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
        636B2220643D224D31342C3648367638683856367A204D31302C313248385638
        68325631327A222F3E0D0A3C7061746820636C6173733D22426C61636B222064
        3D224D32302C31364C32302C313648345636483143302E342C362C302C362E34
        2C302C3776323263302C302E362C302E342C312C312C3168323263302E362C30
        2C312D302E342C312D315631364832307A204D32302C32364834762D36683136
        5632367A222F3E0D0A3C706F6C79676F6E20636C6173733D22477265656E2220
        706F696E74733D2231362C31302032342C31302032342C31342033322C382032
        342C322032342C362031362C3620222F3E0D0A3C2F7376673E0D0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbtnExportGroup'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = 'Form Data'
      CaptionButtons = <>
      DockedLeft = 64
      DockedTop = 0
      FloatLeft = 1212
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Options'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1212
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Text Edit Item'
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem
      Caption = 'New Skin Chooser'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
      OnSkinChanged = dxSkinChooserGalleryItem1SkinChanged
    end
    object btnAbout: TdxBarLargeButton
      Caption = 'About'
      Category = 0
      Hint = 'About'
      Visible = ivAlways
      LargeImageIndex = 10
    end
    object lbExportToTIFF: TdxBarLargeButton
      Caption = 'TIFF'
      Category = 0
      Hint = 'TIFF'
      Visible = ivAlways
      OnClick = dxBarButtonExportToTIFFClick
      LargeImageIndex = 11
      SyncImageIndex = False
      ImageIndex = 11
    end
    object lbExportToPNG: TdxBarLargeButton
      Caption = 'PNG'
      Category = 0
      Hint = 'PNG'
      Visible = ivAlways
      OnClick = dxBarButtonExportToPNGClick
      LargeImageIndex = 12
    end
    object dxBarExit1: TdxBarLargeButton
      Action = actExit
      Category = 0
    end
    object dxBarButtonAbout: TdxBarLargeButton
      Caption = 'About'
      Category = 0
      Hint = 'About'
      Visible = ivAlways
      OnClick = dxBarButtonAboutClick
      LargeImageIndex = 10
      SyncImageIndex = False
      ImageIndex = 10
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'Page'
      Category = 0
      Hint = 'Page'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object bilPageCount: TcxBarEditItem
      Caption = 'of'
      Category = 0
      Hint = 'of'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object biStatusBarCurrentZoom: TdxBarStatic
      Caption = '100%'
      Category = 0
      Hint = '100%'
      Visible = ivAlways
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'Actual Size:'
      Category = 0
      Hint = 'Actual Size:'
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
    end
    object bteActualZoom: TcxBarEditItem
      Caption = 'Actual Size:'
      Category = 0
      Enabled = False
      Hint = 'Actual Size'
      Visible = ivAlways
      OnChange = bteActualZoomChange
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object bseActivePage: TcxBarEditItem
      Caption = 'Active Page:'
      Category = 0
      Enabled = False
      Hint = 'Active Page'
      Visible = ivAlways
      OnChange = bseActivePageChange
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
    end
    object dxRibbonStatusBarActivePage: TdxBarSpinEdit
      Category = 0
      Visible = ivAlways
    end
    object sseActivePage: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      OnChange = sseActivePageChange
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
      Properties.SpinButtons.Visible = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Demo Description'
      Category = 0
      Hint = 'Demo Description'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarStatic1: TdxBarStatic
      Caption = 'Page'
      Category = 0
      Visible = ivAlways
    end
    object sbPageCount: TdxBarStatic
      Caption = 'of'
      Category = 0
      Hint = 'of'
      Visible = ivAlways
    end
    object dxBarProgressItem1: TdxBarProgressItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxProgressBarProperties'
      Properties.PeakValue = 100.000000000000000000
      InternalEditValue = nil
    end
    object cxBarEditItem5: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxProgressBarProperties'
    end
    object bbAbortTextSearch: TdxBarButton
      Caption = 'Abort'
      Category = 0
      Enabled = False
      Hint = 'Abort'
      Visible = ivAlways
      OnClick = bbAbortTextSearchClick
    end
    object dxBarButton1: TdxBarButton
      Action = actTouchMode
      Category = 0
      ButtonStyle = bsChecked
      Glyph.SourceDPI = 96
      Glyph.SourceHeight = 16
      Glyph.SourceWidth = 16
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
        3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
        6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
        392F786C696E6B2220783D223070782220793D22307078222076696577426F78
        3D22302030203130303020313030302220656E61626C652D6261636B67726F75
        6E643D226E657720302030203130303020313030302220786D6C3A7370616365
        3D227072657365727665223E262331333B262331303B2623393B2623393B2623
        393B2623393B2623393B3C7374796C6520747970653D22746578742F63737322
        20786D6C3A73706163653D227072657365727665223E2E426C61636B7B66696C
        6C3A233732373237323B7D262331333B262331303B2623393B2E5265647B6669
        6C6C3A234431314331433B7D262331333B262331303B2623393B2E59656C6C6F
        777B66696C6C3A234646423131353B7D262331333B262331303B2623393B2E47
        7265656E7B66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C6720
        636C6173733D22426C61636B22207472616E73666F726D3D227472616E736C61
        746528302E3030303030302C3531312E30303030303029207363616C6528302E
        3130303030302C2D302E31303030303029223E0D0A09093C7061746820643D22
        4D343032362E342C343939382E39632D3838332E392D39362E322D313637342E
        312D3732362E392D313936372E392D313537302E33632D3132362E362D333634
        2E372D3135372D3831352E352D38312D313138352E336337332E342D3335392E
        362C3135372D3438362E332C3331362E362D3438362E336337332E342C302C31
        30382E392C31372E372C3135392E362C37382E356337382E352C39332E372C38
        312C3132312E362C31322E372C3331342E31632D3130332E382C3239382E382D
        3130382E392C3736342E392D372E362C313130312E37633131362E352C333937
        2E362C3433302E362C3830372E392C3738302E312C313032332E32633837332E
        382C3533392E352C323035392E312C3239312E332C323539362D353432633239
        362E332D3435352E392C3337372E342D313035362E312C3231372E382D313536
        372E37632D34382E312D3134392E342D35382E322D3231352E332D34302E352D
        3236332E346335302E372D3133312E372C3233332D3138372E342C3334392E35
        2D3130362E346337332E342C35332E322C3137372E332C3337392E392C323130
        2E322C3636332E366335302E362C3435352E392D36382E342C3938352E322D33
        31392E312C313430352E36632D3135372C3236352E392D3531342E312C363238
        2E312D3736392E392C3738352E3143353033392E352C343932352E352C343531
        302E322C353034392E362C343032362E342C343939382E397A222F3E0D0A0909
        3C7061746820643D224D333935302E342C343137352E38632D3534372E312D31
        32312E362D313030302E342D3535322E312D313136372E362D313131342E3463
        2D39312E322D3330332E392D33352E352D3837362E332C39332E372D3938302E
        326337332E342D36332E332C3232372E392D35382E332C3239362E332C352E31
        6337382E352C37332E342C38382E362C3134342E342C34332E312C3331362E36
        632D3132312E362C3437312E312C37382E352C3938302E322C3438312E322C31
        3231352E37633136342E362C39382E382C3430302E322C3134362E392C363333
        2E322C3133342E32633437382E372D33302E342C3831382D3239312E332C3935
        342E382D3733376335332E322D3137342E382C35332E322D3334312E392C352E
        312D3733342E35632D31322E372D3130332E382D372E362D3133312E372C3433
        2E312D3138342E396336382E342D37302E392C3230372E372D38332E362C3239
        332E382D32322E38633132392E322C39312E322C3139352C3538322E352C3132
        342E312C3930362E37632D36382E342C3330362E352D3139352C3532392E332D
        3433302E362C3736342E3943343933332E312C343133302E322C343434342E33
        2C343238342E372C333935302E342C343137352E387A222F3E0D0A09093C7061
        746820643D224D343030362E322C333339332E32632D3232322E392D38312E31
        2D3432302E342D3238382E372D3438382E382D3531342E32632D32372E392D39
        332E372D33352E352D3431322E382D33352E352D313539352E36562D3139352E
        376C2D35352E372C32302E33632D33322E392C31302E312D3134392E342C3230
        2E322D3236302E392C32302E32632D3137342E382C302D3231372E382D31302E
        312D3331392E312D36382E34632D3134312E382D38332E362D3239312E332D32
        34352E372D3335342E362D333835632D34332E312D39362E322D34382E312D31
        38342E392D34382E312D313337322E3763302D313138302E322C322E352D3132
        38312E352C35302E372D313436332E39633135372D3631382C3634302E382D31
        3130312E372C313238342E312D313238362E36633139322E352D35382E332C32
        32322E392D35382E332C313437362E362D35382E3363313235332E372C302C31
        3238342E312C302C313437362E362C35382E33633539352E322C3137322E322C
        313033352E392C3538352E312C313235332E372C313137352E326C36382E342C
        3138342E396C372E362C313532392E3763372E362C313733322E342C31322E37
        2C313637362E372D3138372E342C313839392E35632D36332E332C37302E392D
        3137342E382C3135372D3235302E372C313935632D3132312E352C35382E332D
        3136322E312C36352E392D3332312E362C35352E37632D3130312E332D372E36
        2D3230322E362D32302E332D3232322E392D33302E34632D33302E342D31322E
        372D34382E312C372E362D37332E352C37382E35632D35302E372C3134312E38
        2D3239332E382C3336392E382D3434332E322C3432302E34632D3134392E342C
        35302E372D3334372C35332E322D3437362E312C372E36632D39312E322D3332
        2E392D39332E372D33322E392D3130382E392C33352E34632D34302E352C3139
        302D3331312E352C3434352E382D3533312E392C3530362E35632D3131312E34
        2C33302E342D3332392E332C32352E332D3432332D31322E37632D34332D3137
        2E372D34352E362C32372E392D34352E362C3733392E3663302C3632332D372E
        362C3738302E312D34302E352C3837362E33632D39312E322C3236352E392D34
        31352E342C3439392D3639312E342C34393943343136352E372C333432362E31
        2C343035392E342C333431302E392C343030362E322C333339332E327A204D34
        3433312E372C323933322E32633131312E342D37332E342C3131392D3137322E
        322C3131342D313333392E38632D322E352D3539372E372D352E312D31333139
        2E362D322E352D313630332E3263322E352D3530392E312C322E352D3531342E
        322C36352E382D3537342E396337362D37382E352C3231302E322D38332E362C
        3239332E382D31352E326336302E382C34382E312C36302E382C35332E322C37
        332E352C3731312E376C31322E372C3636332E366C37302E392C36302E386331
        30312E332C38362E312C3331342E312C38362E312C3431352E342C306C37302E
        392D36302E386C31322E372D3635302E396C31322E372D3635302E396C37302E
        392D36302E386339382E382D38332E362C3230352E312D37382E352C3239382E
        392C31322E376C37332E342C37332E35763333312E3863302C3137392E382C31
        302E312C3335372E312C32352E332C3339322E366333352E352C39362E332C31
        33342E332C3134362E392C3237382E362C3134362E39633234332E312C302C33
        32342E322D3132342E312C3239312E332D3435382E34632D32302E322D323230
        2E342D32302E322D3331342C322E352D3639312E346331352E322D3236332E34
        2C31372E382D3237362E312C39312E322D3333362E386338362E312D37332E35
        2C3134342E342D37382E352C3234352E372D32352E33633130362E332C35332E
        322C3132392E322C3135342E352C3132392E322C3536372E3363302C3332362E
        372C352E312C3337322E332C34352E362C3339372E36633133392E332C38382E
        362C3337392E392C35352E372C3435352E392D35382E336334302E352D36332E
        332C34332D3138322E342C34332D313532372E3263302D313331342E352D352E
        312D313437312E352D34352E362D313631382E34632D3133312E372D3438312E
        322D3439362E342D3832302E362D3939352E342D393237632D3236352E392D35
        352E372D323338382E332D35352E372D323636312E392C322E35632D3438332E
        372C39382E382D3832382E322C3431322E392D3938352E322C3839362E36632D
        34302E352C3132342E312D34352E362C3236382E352D35332E322C313336372E
        37632D372E362C313133372E322D352E312C313233352E392C33352E352C3133
        31376338312C3135392E362C3333312E382C3139322E352C3438312E322C3633
        2E336C37302E392D35382E336C31322E372D3636382E366331322E372D363738
        2E382C32352E332D3735342E372C3131362E352D3739302E326335302E372D32
        302E332C3137322E322D32302E332C3232352E342C30633131362E352C34352E
        362C3131342C372E362C3131342C323538302E3876323432332E386C37332E34
        2C37332E346336352E382C36332E332C39332E372C37332E342C3231372E382C
        37332E3443343331352E322C323937322E372C343339332E372C323935372E35
        2C343433312E372C323933322E327A222F3E0D0A093C2F673E0D0A3C2F737667
        3E0D0A}
    end
    object lbtnSinglePageMode: TdxBarLargeButton
      Action = acSinglePageContinuous
      Category = 0
      ButtonStyle = bsChecked
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
        4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
        31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
        3D22456E61626C655363726F6C6C696E67223E0D0A09093C7061746820636C61
        73733D22426C61636B2220643D224D32362C3076313248385630483676313363
        302C302E362C302E342C312C312C3168323063302E362C302C312D302E342C31
        2D3156304832367A204D32362C33325632304838763132483656313963302D30
        2E362C302E342D312C312D3168323020202623393B2623393B63302E362C302C
        312C302E342C312C317631334832367A222F3E0D0A09093C7061746820636C61
        73733D22426C75652220643D224D32322C36483132763268313056367A204D32
        322C34483132563268313056347A204D32322C3330483132762D326831305633
        307A204D32322C323448313276326831305632347A222F3E0D0A093C2F673E0D
        0A3C2F7376673E0D0A}
    end
    object dxBarSubItem6: TdxBarSubItem
      Caption = 'Export'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = 'To Image'
      Category = 0
      Visible = ivAlways
      ImageIndex = 27
      ItemLinks = <>
    end
    object lbtnExportGroup: TdxBarSubItem
      Caption = 'Export'
      Category = 0
      Visible = ivAlways
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
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D224578706F7274223E0D0A09093C7061746820636C6173733D22426C6163
        6B2220643D224D31302C31324836563668345631327A204D32322C3132763676
        3963302C302E362D302E342C312D312C314831632D302E362C302D312D302E34
        2D312D31563763302D302E362C302E342D312C312D3168337638683134762D32
        4832327A204D31382C3138483420202623393B2623393B76366831345631387A
        222F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F
        696E74733D2231362C31302032342C31302032342C31342033322C382032342C
        322032342C362031362C36202623393B222F3E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'lbExportToTIFF'
        end
        item
          Visible = True
          ItemName = 'lbExportToPNG'
        end>
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Action = acSaveAs
      Category = 0
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Action = acSave
      Category = 0
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = acFormDataExport
      Category = 0
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = acFormDataImport
      Category = 0
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Action = acFormDataReset
      Category = 0
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Action = acAllowEdit
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButtonZoomOut: TdxBarLargeButton
      Action = dxPDFViewerZoomOutAction
      Category = 1
      SyncImageIndex = False
      ImageIndex = 6
    end
    object dxBarLargeButtonZoomIn: TdxBarLargeButton
      Action = dxPDFViewerZoomInAction
      Category = 1
      SyncImageIndex = False
      ImageIndex = 7
    end
    object lbtnZoomGroup: TdxBarSubItem
      Caption = 'Zoom'
      Category = 1
      Visible = ivAlways
      ImageIndex = 8
      LargeImageIndex = 8
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bteActualZoom'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton25'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton50'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton75'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton100'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton125'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton150'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton200'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton400'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton500'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonActualSize'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonZoomtoPageLevel'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonFitWidth'
        end>
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Action = dxPDFViewerZoom10Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton25: TdxBarLargeButton
      Action = dxPDFViewerZoom25Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton50: TdxBarLargeButton
      Action = dxPDFViewerZoom50Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton75: TdxBarLargeButton
      Action = dxPDFViewerZoom75Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton100: TdxBarLargeButton
      Action = dxPDFViewerZoom100Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton125: TdxBarLargeButton
      Action = dxPDFViewerZoom125Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton150: TdxBarLargeButton
      Action = dxPDFViewerZoom150Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton200: TdxBarLargeButton
      Action = dxPDFViewerZoom200Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton400: TdxBarLargeButton
      Action = dxPDFViewerZoom400Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButton500: TdxBarLargeButton
      Action = dxPDFViewerZoom500Action
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButtonActualSize: TdxBarLargeButton
      Action = dxPDFViewerZoomActualSizeAction
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 9
    end
    object dxBarLargeButtonZoomtoPageLevel: TdxBarLargeButton
      Action = dxPDFViewerZoomToPageLevelAction
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarLargeButtonFitWidth: TdxBarLargeButton
      Action = dxPDFViewerZoomFitWidthAction
      Category = 1
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = -1
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = 'Zoom'
      Category = 1
      Visible = ivAlways
      ImageIndex = 13
      LargeImageIndex = 13
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton25'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton50'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton75'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton100'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton125'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton150'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton200'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton400'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButton500'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonActualSize'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonZoomtoPageLevel'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonFitWidth'
        end>
    end
    object dxBarLargeButtonOpen: TdxBarLargeButton
      Action = dxPDFViewerOpenDocumentAction
      Category = 2
      ShortCut = 16463
      SyncImageIndex = False
      ImageIndex = 0
    end
    object dxBarLargeButtonPreviousPage: TdxBarLargeButton
      Action = dxPDFViewerGoToPrevPageAction
      Category = 3
      SyncImageIndex = False
      ImageIndex = 1
    end
    object dxBarLargeButtonNextPage: TdxBarLargeButton
      Action = dxPDFViewerGoToNextPageAction
      Category = 3
      SyncImageIndex = False
      ImageIndex = 2
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Navigation'
      Category = 3
      Visible = ivAlways
      ImageIndex = 3
      LargeImageIndex = 3
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonFirstPage'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonLastPage'
        end>
    end
    object dxBarLargeButtonFirstPage: TdxBarLargeButton
      Action = dxPDFViewerGoToFirstPageAction
      Category = 3
      SyncImageIndex = False
      ImageIndex = 4
    end
    object dxBarLargeButtonLastPage: TdxBarLargeButton
      Action = dxPDFViewerGoToLastPageAction
      Category = 3
      SyncImageIndex = False
      ImageIndex = 5
    end
    object lbtnNavigation: TdxBarSubItem
      Caption = 'Navigation'
      Category = 3
      Visible = ivAlways
      ImageIndex = 14
      LargeImageIndex = 14
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bseActivePage'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButtonPreviousPage'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonNextPage'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonFirstPage'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonLastPage'
        end
        item
          BeginGroup = True
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonPreviousView'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonNextView'
        end>
    end
    object dxBarLargeButtonPrint: TdxBarLargeButton
      Action = dxPDFViewerShowPrintForm
      Category = 4
      SyncImageIndex = False
      ImageIndex = 15
    end
    object dxBarLargeButtonClose: TdxBarLargeButton
      Action = dxPDFViewerCloseDocument
      Category = 4
      SyncImageIndex = False
      ImageIndex = 16
    end
    object dxBarLargeButtonSelectTool: TdxBarLargeButton
      Action = dxPDFViewerSelectTool
      Category = 5
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 17
    end
    object dxBarLargeButtonHandTool: TdxBarLargeButton
      Action = dxPDFViewerHandTool
      Category = 5
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 18
    end
    object dxBarLargeButtonSelectAll: TdxBarLargeButton
      Action = dxPDFViewerSelectAll
      Category = 5
      SyncImageIndex = False
      ImageIndex = 19
    end
    object dxBarLargeButtonPreviousView: TdxBarLargeButton
      Action = dxPDFViewerGoToPrevView
      Category = 6
      SyncImageIndex = False
      ImageIndex = 20
    end
    object dxBarLargeButtonNextView: TdxBarLargeButton
      Action = dxPDFViewerGoToNextView
      Category = 6
      SyncImageIndex = False
      ImageIndex = 21
    end
    object lbtnRotateView: TdxBarSubItem
      Caption = 'Rotate View'
      Category = 6
      Visible = ivAlways
      ImageIndex = 22
      LargeImageIndex = 22
      ItemLinks = <
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonRotateClockwise'
        end
        item
          Position = ipContinuesRow
          Visible = True
          ItemName = 'dxBarLargeButtonRotateCounterclockwise'
        end>
    end
    object dxBarLargeButtonRotateClockwise: TdxBarLargeButton
      Action = dxPDFViewerRotateClockwise
      Category = 6
      SyncImageIndex = False
      ImageIndex = 23
    end
    object dxBarLargeButtonRotateCounterclockwise: TdxBarLargeButton
      Action = dxPDFViewerRotateCounterClockwise
      Category = 6
      SyncImageIndex = False
      ImageIndex = 24
    end
    object dxBarLargeButtonFind: TdxBarLargeButton
      Category = 7
      Visible = ivAlways
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 25
    end
    object dxBarLargeButtonFind1: TdxBarLargeButton
      Action = dxPDFViewerFind
      Category = 7
      ButtonStyle = bsChecked
      SyncImageIndex = False
      ImageIndex = 25
    end
  end
  object sbdSelectFolderDialog: TcxShellBrowserDialog
    Left = 648
    Top = 264
  end
  object ActionList1: TActionList
    Images = SVGImageList1
    Left = 520
    Top = 320
    object dxPDFViewerOpenDocumentAction: TdxPDFViewerOpenDocument
      Category = 'DevExpress ExpressPDFViewer.Home.File'
      ImageIndex = 0
    end
    object dxPDFViewerGoToPrevPageAction: TdxPDFViewerGoToPrevPage
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 1
    end
    object dxPDFViewerGoToNextPageAction: TdxPDFViewerGoToNextPage
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 2
    end
    object dxPDFViewerGoToFirstPageAction: TdxPDFViewerGoToFirstPage
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 4
    end
    object dxPDFViewerGoToLastPageAction: TdxPDFViewerGoToLastPage
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 5
    end
    object dxPDFViewerZoomOutAction: TdxPDFViewerZoomOut
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      ImageIndex = 6
    end
    object dxPDFViewerZoomInAction: TdxPDFViewerZoomIn
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      ImageIndex = 7
    end
    object dxPDFViewerZoom10Action: TdxPDFViewerZoom10
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom25Action: TdxPDFViewerZoom25
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom50Action: TdxPDFViewerZoom50
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom75Action: TdxPDFViewerZoom75
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom100Action: TdxPDFViewerZoom100
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom125Action: TdxPDFViewerZoom125
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom150Action: TdxPDFViewerZoom150
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom200Action: TdxPDFViewerZoom200
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom400Action: TdxPDFViewerZoom400
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoom500Action: TdxPDFViewerZoom500
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoomActualSizeAction: TdxPDFViewerZoomActualSize
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
      ImageIndex = 9
    end
    object dxPDFViewerZoomToPageLevelAction: TdxPDFViewerZoomToPageLevel
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object dxPDFViewerZoomFitWidthAction: TdxPDFViewerZoomFitWidth
      Category = 'DevExpress ExpressPDFViewer.Home.Zoom'
      AutoCheck = True
    end
    object actExit: TAction
      Caption = 'Exit'
      ImageIndex = 16
      OnExecute = actExitExecute
    end
    object dxPDFViewerShowPrintForm: TdxPDFViewerShowPrintForm
      Category = 'DevExpress ExpressPDFViewer.Home.File'
      ImageIndex = 15
      OnExecute = dxPDFViewerShowPrintFormExecute
    end
    object dxPDFViewerCloseDocument: TdxPDFViewerCloseDocument
      Category = 'DevExpress ExpressPDFViewer.Home.File'
      ImageIndex = 16
      OnExecute = dxPDFViewerCloseDocumentExecute
    end
    object dxPDFViewerSelectTool: TdxPDFViewerSelectTool
      Category = 'DevExpress ExpressPDFViewer.Home.Tools'
      AutoCheck = True
      ImageIndex = 17
    end
    object dxPDFViewerHandTool: TdxPDFViewerHandTool
      Category = 'DevExpress ExpressPDFViewer.Home.Tools'
      AutoCheck = True
      ImageIndex = 18
    end
    object dxPDFViewerSelectAll: TdxPDFViewerSelectAll
      Category = 'DevExpress ExpressPDFViewer.Home.Tools'
      ImageIndex = 19
    end
    object dxPDFViewerGoToPrevView: TdxPDFViewerGoToPrevView
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 20
    end
    object dxPDFViewerGoToNextView: TdxPDFViewerGoToNextView
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 21
    end
    object dxPDFViewerRotateClockwise: TdxPDFViewerRotateClockwise
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 23
    end
    object dxPDFViewerRotateCounterClockwise: TdxPDFViewerRotateCounterClockwise
      Category = 'DevExpress ExpressPDFViewer.Home.Navigation'
      ImageIndex = 24
    end
    object dxPDFViewerFind: TdxPDFViewerFind
      Category = 'DevExpress ExpressPDFViewer.Home.Find'
      AutoCheck = True
      ImageIndex = 25
    end
    object actTouchMode: TAction
      AutoCheck = True
      Caption = 'Touch Mode'
      Hint = 'Toggle Touch Mode'
      OnExecute = actTouchModeExecute
    end
    object acSinglePageContinuous: TAction
      AutoCheck = True
      Caption = 'Single Page Continuous'
      ImageIndex = 26
      OnExecute = acSinglePageContinuousExecute
    end
    object acSaveAs: TAction
      Caption = 'Save As'
      ImageIndex = 28
      OnExecute = acSaveAsExecute
      OnUpdate = acSaveAsUpdate
    end
    object acSave: TAction
      Caption = 'Save'
      ImageIndex = 29
      OnExecute = acSaveExecute
      OnUpdate = acSaveUpdate
    end
    object acFormDataImport: TAction
      Caption = 'Import'
      ImageIndex = 30
      OnExecute = acFormDataImportExecute
      OnUpdate = acFormDataImportUpdate
    end
    object acFormDataExport: TAction
      Caption = 'Export'
      ImageIndex = 27
      OnExecute = acFormDataExportExecute
      OnUpdate = acFormDataExportUpdate
    end
    object acFormDataReset: TAction
      Caption = 'Reset'
      ImageIndex = 31
      OnExecute = acFormDataResetExecute
      OnUpdate = acFormDataResetUpdate
    end
    object acAllowEdit: TAction
      AutoCheck = True
      Caption = 'Read Only'
      ImageIndex = 32
      OnExecute = acAllowEditExecute
      OnUpdate = acAllowEditUpdate
    end
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Kind = lfOffice11
    SkinName = 'UserSkin'
    Left = 888
    Top = 144
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    SkinName = 'UserSkin'
    Left = 848
    Top = 144
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = dxComponentPrinter1Link1
    Version = 0
    Left = 696
    Top = 208
    PixelsPerInch = 96
    object dxComponentPrinter1Link1: TdxPDFViewerReportLink
      Component = dxPDFViewer1
      PrinterPage.CenterOnPageH = True
      PrinterPage.CenterOnPageV = True
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.Orientation = poAuto
      PrinterPage.PageSize.X = 210820
      PrinterPage.PageSize.Y = 297180
      PrinterPage.ScaleMode = smFit
      PrinterPage.PrintAsImage = True
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ShrinkToPageWidth = True
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <>
    HintStyle.ScreenTipActionLinks = <>
    Left = 656
    Top = 336
  end
  object SVGImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 280
    Top = 392
    Bitmap = {
      494C010121002800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000005280D0D64B11919C1F51919
      C3F60D0D67B30000052A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000005281818B7EF08083C8A0000000E0000
      000D0404246A1717AEE90000052A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF341D
      037E0101001800000000000000000C0C63AF0F0F77C01616A4E2000003230000
      0000000000000404246A0D0D67B3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FF341D037E0905
      0036BD680EEF2D190376000000001919BDF20000001106062F7A1616A4E20000
      0323000000000000000D1919C3F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000341D037E09050036BD68
      0EEFD77610FFD77610FF0000000C1919BCF2000000110000000006062F7A1616
      A4E2000003230000000E1919C2F6000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000FB8650EECD776
      10FFD77610FFD77610FF0E0801430C0C60AD0505287000000000000000000606
      2F7A1616A4E208083C8A0D0D65B1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A0E0259D173
      10FCD77610FFD77610FF6C3C08B5000004261717ADE805052870000000110000
      00110F0F77C01818B7EF00000528000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A0E
      0259D17310FCD77610FFD77610FF331C037D000004260C0C61AE1919BCF21919
      BCF20C0C63AF0000052800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A0E0259D17310FCD77610FFD77610FF6C3C08B50E0701420000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A0E0259D17310FCD77610FFD77610FFD27410FC1C0F025C0301
      0021000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001A0E0259D17310FCD27410FC1C0F025C11090149CA6E
      0FF72D1903750000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A0E02591C0F025C11090149CB7010F8D776
      10FFBA660EED0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000017C56C0FF4D77610FFC36B
      0FF30C07003E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A0E0259B0610DE70C07
      003E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF676767F40000000000000000000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF676767F4000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF6767
      67F4000000000000000000000000000000000000000000000000000000000000
      000000000008071E0071166401CD219402F9219502F9166501CF071F00730000
      00090000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000001
      001B176901D1229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF186C
      02D40002001E00000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF0000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000061665
      01CE229C02FF197202DA030E004F0000000A00000009020D004C186C02D5229C
      02FF186C02D400000009000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF0000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000061A006A229C
      02FF197402DC00000013000000000000000000000000000000000000000F186C
      02D5229C02FF071F0073000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000145D01C6229C
      02FF04110056000000000000000000000000000000000000000000000000020D
      004C229C02FF166501CE000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000666666F2717171FF7171
      71FF717171FF717171FF717171FF676767F40000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0009229C02FF219502F9000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF00000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF2B2B2B9E0000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A229C02FF219502F9000000000000000000000000717171FF717171FF0000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      00000000000000000000000000000000000000000000000000000000000B0D3D
      01A0000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF0825007E00000000000000000000000000000000030E
      004E229C02FF166401CD000000000000000000000000717171FF717171FF0000
      0000717171FF717171FF717171FF717171FF00000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF00000000717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      0000717171FF717171FF0000000000000000000000000104002B186C02D5229C
      02FF000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF0A2C01890000000000000000000000000000000000000010186E
      02D7229C02FF071E0071000000000000000000000000717171FF717171FF0000
      0000717171FF00000000717171FF717171FF00000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF00000000717171FF00000000717171FF717171FF717171FF000000000000
      0000717171FF717171FF000000000000000000000000717171FF717171FF0000
      0000717171FF717171FF000000000000000004160061209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000229C02FF229C
      02FF229C02FF197502DD031000530000000E0000000D030F0050196F02D7229C
      02FF176A02D200000008000000000000000000000000717171FF717171FF0000
      0000717171FF00000000717171FF717171FF00000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000717171FF7171
      71FF00000000717171FF00000000717171FF717171FF717171FF000000000000
      0000717171FF717171FF000000000000000000000000646464F0717171FF0000
      0000717171FF717171FF00000000000000000414005D1F8E02F3229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000229C02FF0A2F
      018D176B01D3229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1769
      01D10001001C00000000000000000000000000000000646464F0717171FF0000
      0000717171FF717171FF717171FF717171FF00000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000646464F07171
      71FF00000000717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FF666666F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000040029176A01D2229C
      02FF0000000000000000000000000000000000000000000000000825007E0000
      000000000008061E0071166201CB209002F5209002F5166201CB061D006F0000
      0007000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0C3A
      019C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000646464F0717171FF7171
      71FF717171FF717171FF717171FF666666F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000900000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000E09280182197502DD229C02FF229A02FE197002D80823
      007A0000000A0000000000000000000000000000000000000007252525936666
      66F2666666F22626269500000008000000000000000000000007252525936666
      66F2666666F22626269500000008000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000666666F2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF676767F40000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000051A0069229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF186E02D60002001E00000000000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000000000000000000007171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000002
      00210002002100000000051A0068020C00490000000900000009020D004C186C
      02D5229C02FF176902D2000000070000000000000000636363EF010101180000
      00000000000000000014666666F20000000000000000636363EF010101180000
      00000000000000000014666666F2000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF717171FF000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000200211B78
      02E01B7802E00002002100000000000000000000000000000000000000000000
      000F186C02D5229C02FF061B006C0000000000000000606060EC0101011A0000
      00000000000000000016717171FF0000000000000000717171FF0101011A0000
      00000000000000000016646464F0000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF717171FF000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      00000000000000000000000000000000000000000000000200211B7802E0229C
      02FF229C02FF1B7802E000020021000000000000000000000000000000000000
      0000020D004C229C02FF145D01C5000000000000000028282897373737B30101
      011901010118363636B0717171FF0000000000000000717171FF373737B30101
      011901010118363636B02929299B000000000000000000000000000000006464
      64F0717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F20000000000000000717171FF717171FF000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      000000000000000000000000000000000000000200211B7802E0229C02FF229C
      02FF229C02FF229C02FF1B7802E0000200210000000000000000000000000000
      000000000009229C02FF1E8802EE00000000000000000303032E717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF04040431000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000001F90
      02F5229C02FF0000000D00000000000000000000000000000000000000000000
      00000000000A229C02FF1D8702ED000000000000000000000000414141C27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF444444C600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000001560
      01C9229C02FF0310005200000000000000000000000000000000000000000000
      0000030E004E229C02FF145B01C40000000000000000000000000D0D0D587171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0E0E0E5C00000000000000000000000000000000000000006666
      66F2717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF676767F40000000000000000717171FF717171FF000000000000
      00000000000000000000000000000000000000000000717171FF717171FF0000
      00000D3E01A20000000C0000000000000000000000000000000000000000061C
      006D229C02FF197102D900000012000000000000000000000000000000000000
      0010186E02D7229C02FF061A006A000000000000000000000000000000065C5C
      5CE7717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF5F5F5FEA0000000700000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF717171FF000000007171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000229C02FF186E02D60104002D000000000000000000000000000000000000
      0007166601CF229C02FF197102D9031000520000000D0000000D030F0050196F
      02D7229C02FF166601CF00000006000000000000000000000000000000001D1D
      1D83717171FF717171FF717171FF0000000000000000717171FF717171FF7171
      71FF1F1F1F870000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF717171FF000000007171
      71FF717171FF000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209002F5051700630000000000000000000000000000
      00000001001A166601CF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF176701D00001001B00000000000000000000000000000000000000000101
      011D6D6D6DFB717171FF6F6F6FFC00000000000000006D6D6DFA717171FF6F6F
      6FFC010101200000000000000000000000000000000000000000000000007171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000646464F0717171FF000000007171
      71FF717171FF000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF208E02F40415005F0000000000000000000000000000
      00000000000000000007061C006D156001C9209002F5209002F5166101CA061D
      006F000000070000000000000000000000000000000000000000000000000000
      00001E1E1E83696969F52222228E00000000000000002121218A696969F62121
      218A000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF186C02D40004002A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D3B019E0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020100193C21048796520BD5CF7210FACF7210FA97530BD63D2204890201
      001B000000000000000000000000000000000000000000000000000000000000
      0000020100193C21048796520BD5CF7210FACF7210FA97530BD63D2204890201
      001B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000190E
      0258C16A0FF2D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC36B
      0FF31B0E025B000000000000000000000000000000000000000000000000190E
      0258C16A0FF2D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC36B
      0FF31B0E025B0000000000000000000000000000000000000000000000000000
      0008071E0071166401CD219402F9219402F9166501CE071E0071000000080000
      0000000000000000000000000000000000000000000000000000000000000000
      0008071E0071166401CD219402F9219402F9166501CE071E0071000000080000
      0000000000000000000000000000000000000000000000000000190D0257D474
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD57510FE1B0E025B00000000000000000000000000000000190D0257D474
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD57510FE1B0E025B000000000000000000000000000000000001001C1769
      01D2229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF051800650000
      00000000000000000000000000000000000000000000000000000001001C1769
      01D2229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF051800650000
      0000000000000000000000000000000000000000000001010018C06A0FF1D776
      10FFD77610FFD77610FFD77610FF341D037ED77610FFD77610FFD77610FFD776
      10FFD77610FFC36B0FF30201001B000000000000000001010018C06A0FF1D776
      10FFD77610FFD77610FFD77610FFD77610FF341D037ED77610FFD77610FFD776
      10FFD77610FFC36B0FF30201001B000000000000000000000007176902D1229C
      02FF196E02D7030E004D0000000900000008020C0047061A006A000000000002
      0021000200210000000000000000000000000000000000000007176902D1229C
      02FF196E02D7030E004D0000000900000008020C0047061A006A000000000002
      002100020021000000000000000000000000000000003A200485D77610FFD776
      10FFD77610FFD77610FF341D037E00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF3D22048900000000000000003A200485D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000341D037ED77610FFD776
      10FFD77610FFD77610FF3D2204890000000000000000061D006F229C02FF196F
      02D7000000100000000000000000000000000000000000000000000200211B78
      02E01B7802E000020021000000000000000000000000061D006F229C02FF196F
      02D7000000100000000000000000000000000000000000000000000200211B78
      02E01B7802E00002002100000000000000000000000092500BD2D77610FFD776
      10FFD77610FF341D037E0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF97530BD6000000000000000092500BD2D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000341D037ED776
      10FFD77610FFD77610FF97530BD60000000000000000166101CA229C02FF030F
      00500000000000000000000000000000000000000000000200211B7802E0229C
      02FF229C02FF1B7802E0000200210000000000000000166101CA229C02FF030F
      00500000000000000000000000000000000000000000000200211B7802E0229C
      02FF229C02FF1B7802E0000200210000000000000000C86E0FF6D77610FFD776
      10FF341D037E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFCF7210FA0000000000000000C86E0FF6D77610FFD776
      10FF00000000000000000000000000000000000000000000000000000000341D
      037ED77610FFD77610FFCF7210FA0000000000000000209102F6229C02FF0000
      000D00000000000000000000000000000000000200211B7802E0229C02FF229C
      02FF229C02FF229C02FF1B7802E00002002100000000209102F6229C02FF0000
      000D00000000000000000000000000000000000200211B7802E0229C02FF229C
      02FF229C02FF229C02FF1B7802E00002002100000000C86E0FF6D77610FFD776
      10FF371E04820000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFCF7210FA0000000000000000C86E0FF6D77610FFD776
      10FF00000000000000000000000000000000000000000000000000000000371E
      0482D77610FFD77610FFCF7210FA00000000000000001F9002F5229C02FF0000
      000D0000000000000000000000000000000000000000000000000000000A229C
      02FF219502F9000000000000000000000000000000001F9002F5229C02FF0000
      000D0000000000000000000000000000000000000000000000000000000A229C
      02FF219502F90000000000000000000000000000000090500BD1D77610FFD776
      10FFD77610FF371E04820000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF96520BD5000000000000000090500BD1D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000371E0482D776
      10FFD77610FFD77610FF96520BD50000000000000000156001C9229C02FF0310
      0052000000000000000000000000000000000000000000000000030E004E229C
      02FF166401CD00000000000000000000000000000000156001C9229C02FF0310
      0052000000000000000000000000000000000000000000000000030E004E229C
      02FF166401CD00000000000000000000000000000000381F0483D77610FFD776
      10FFD77610FFD77610FF371E048200000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF3C2104870000000000000000381F0483D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000371E0482D77610FFD776
      10FFD77610FFD77610FF3C2104870000000000000000061C006D229C02FF1971
      02D9000000120000000000000000000000000000000000000010186E02D7229C
      02FF071E007100000000000000000000000000000000061C006D229C02FF1971
      02D9000000120000000000000000000000000000000000000010186E02D7229C
      02FF071E00710000000000000000000000000000000001000017BE690FF0D776
      10FFD77610FFD77610FFD77610FF371E0482D77610FFD77610FFD77610FFD776
      10FFD77610FFC16A0FF202010019000000000000000001000017BE690FF0D776
      10FFD77610FFD77610FFD77610FFD77610FF371E0482D77610FFD77610FFD776
      10FFD77610FFC16A0FF202010019000000000000000000000007166601CF229C
      02FF197102D9031000520000000D0000000D030F0050196F02D7229C02FF176A
      02D2000000080000000000000000000000000000000000000007166601CF229C
      02FF197102D9031000520000000D0000000D030F0050196F02D7229C02FF176A
      02D2000000080000000000000000000000000000000000000000170C0154D374
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD47410FD190E025800000000000000000000000000000000170C0154D374
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD47410FD190E0258000000000000000000000000000000000001001A1666
      01CF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF176901D10001
      001C0000000000000000000000000000000000000000000000000001001A1666
      01CF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF176901D10001
      001C00000000000000000000000000000000000000000000000000000000170C
      0154BE690FF0D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A
      0FF1190D0257000000000000000000000000000000000000000000000000170C
      0154BE690FF0D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A
      0FF1190D02570000000000000000000000000000000000000000000000000000
      0007061C006D156001C9209002F5209002F5166201CB061D006F000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      0007061C006D156001C9209002F5209002F5166201CB061D006F000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000017381F048390500BD1C86E0FF6C86E0FF692500BD23A2004850101
      0018000000000000000000000000000000000000000000000000000000000000
      000001000017381F048390500BD1C86E0FF6C86E0FF692500BD23A2004850101
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001818B7EF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1919BBF1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020223393939B66B6B6BF8717171FF717171FF666666F22020
      2089000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      00000000000000000000000000000000000001010118606060EB070707440000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202255B5B5BE5717171FF717171FF717171FF717171FF717171FF7171
      71FF1A1A1A7A00000000000000000000000000000000717171FF717171FF7171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      0000000000001F1F1F8500000000000000001A1A1A7A6F6F6FFD0101011F0000
      0000000000000000000000000000000000000000000000000000000000000202
      02255A5A5AE4717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF656565F10000000E000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF0606327E0606327E1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606327E0606
      327E1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF1F1F1F8500000002575757DF393939B5000000000000
      0000000000000000000000000000000000000000000000000000020202235959
      59E2717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF1313136A000000000000000000000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF07073582000000000606327E1B1BD1FF1B1BD1FF0606327E000000000707
      35821B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF3A3A3AB7717171FF0A0A0A4F000000000000
      0000000000000000000000000000000000000000000001010121595959E27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF4D4D4DD30000000000000000000000000000000000000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF07073582000000000606327E0606327E00000000070735821B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1B1B1B7E00000000000000000000000001010121575757E0717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0606063E0000000000000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF070735820000000000000000070735821B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF1B1B
      1B7E00000000000000000000000000000000515151D8717171FF6D6D6DFB2525
      2593555555DE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF2F2F2FA60000000000000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF0606327E00000000000000000606327E1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF1B1B1B7E0000
      000000000000000000000000000000000000393939B5464646C9040404320000
      0000474747CA717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF6B6B6BF900000017000000000000000000000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0606327E000000000707358207073582000000000606327E1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF1B1B1B7E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00096D6D6DFA717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF07070742444444C6717171FF1A1A1A7A00000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF0606327E00000000070735821B1BD1FF1B1BD1FF07073582000000000606
      327E1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF1B1B1B7E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      063C717171FF595959E300000014717171FF717171FF01010122595959E27171
      71FF0B0B0B530A0A0A4E717171FF575757DF00000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF07073582070735821B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF070735820707
      35821B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF717171FF1B1B1B7E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001717
      1775717171FF2F2F2FA400000000717171FF717171FF000000002D2D2DA07171
      71FF2020208800000002434343C5454545C8000000000000000000000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      000000000000717171FF1B1B1B7E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      33AC717171FF1313136900000000717171FF717171FF00000000101010617171
      71FF3D3D3DBC00000000000000000000000000000000717171FF00000000D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF00000000717171FF0000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000000000000000000000000
      0000000000001B1B1B7E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A5A
      5AE4717171FF0303032C00000000717171FF717171FF00000000010101217171
      71FF646464F000000001000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000001818B5ED1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1818B7EF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003C3C
      3CBA444444C60000000200000000717171FF717171FF00000000000000004242
      42C34C4C4CD100000001000000000000000000000000717171FF717171FF7171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242C4454545C800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      63EF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005323232AA28282899000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005333333AC717171FF333333AC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053333
      33AC717171FF333333AC0000000500000000000000008E4E0BCF080400330000
      00000000000000000000884B0BCB030200220000000000000000000000000000
      00000000000000000000C16A0FF2C56C0FF400000000454545C8717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF484848CC000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FE5E5E5EE82C2C2CA00303032C333333AC7171
      71FF333333AC00000005000000000000000000000000D77610FFCE7110FA311B
      037A0000000300000000B3630EE9B7640EEB0D07014100000000000000000000
      00000000000000000000D77610FFD77610FF00000000717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000000000000A0A0A4D5F5F
      5FEA191919780101011D000000010101011C18181876666666F2717171FF3333
      33AC0000000500000000000000000000000000000000D77610FFD77610FFD776
      10FF7E4509C3030100210201001A784209BFCF7210FA2514026A000000000000
      00000000000000000000D77610FFD77610FF00000000717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF0000000000000000000000003A2999F2402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF3B299CF40000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040432666666F20303
      032C0000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFC06A0FF11E10026000000003381F0483D37410FD4D2A05990000
      00060000000000000000D77610FFD77610FF00000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000402DAAFF402D
      AAFF05030D491D144CAB1A1246A4010103261D144EAD120C2E86110C2D840201
      06330201052F402DAAFF402DAAFF00000000000000002A2A2A9C1A1A1A7B0000
      0000000000000000000000000000000000000000000000000000181818772C2C
      2CA00000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF623507AC010000130F080145B3630EE97B43
      09C10100001500000000D77610FFD77610FF00000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000402DAAFF402D
      AAFF04030A401C1349A70A071B66030207370A071A65100B2A800101042C2B1E
      71D001010326402DAAFF402DAAFF00000000000000005A5A5AE4010101210000
      00000000000000000000000000000000000000000000000000000101011D5E5E
      5EE80000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF8B4C0BCD0000000007040030D776
      10FF8C4D0BCE00000000D77610FFD77610FF00000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000402DAAFF402D
      AAFF04030A401C1349A70000021F261B65C501000323100B2A800201052F2E20
      79D7201653B3402DAAFF402DAAFF00000000000000006D6D6DFA000000050000
      0000000000000000000000000000000000000000000000000000000000017171
      71FE0000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF6B3B08B4010000170C07003EAB5E0DE49753
      0BD60402002600000000D77610FFD77610FF00000000717171FF717171FF0000
      000D000000000000000000000000000000000000000000000000000000000000
      00000000000B717171FF717171FF000000000000000000000000402DAAFF402D
      AAFF060512551F1651B102020735402DAAFF0805155A140E348E1B1346A50302
      0A3F0806165D402DAAFF402DAAFF00000000000000005A5A5AE3010101210000
      00000000000000000000000000000000000000000000000000000101011D5D5D
      5DE70000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFC56C0FF42313026800000002301B037AD07210FB663808B00000
      000E0000000000000000D77610FFD77610FF00000000424242C3717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000717171FF454545C8000000000000000000000000392896F0402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF3A2999F200000000000000002929299B1B1B1B7D0000
      0000000000000000000000000000000000000000000000000000191919792C2C
      2C9F0000000000000000000000000000000000000000D77610FFD77610FFD776
      10FF864A0ACA0402002601000015703D08B8D47410FD351D037F000000020000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000020202235E5E5EE90505
      05370000000000000000000000000000000000000000040404345F5F5FEA0202
      02250000000000000000000000000000000000000000D77610FFD07210FB371E
      04820000000500000000AB5E0DE4C0690FF1140B014F00000000000000000000
      00000000000000000000D77610FFD77610FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000090909495E5E
      5EE91B1B1B7C0101012100000005010101201A1A1A7A5F5F5FEA0A0A0A4C0000
      000000000000000000000000000000000000000000009A550BD80A0600390000
      0000000000000000000095510BD4050300290000000000000000000000000000
      00000000000000000000BF690FF0C16A0FF20000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000006262
      62ED717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF636363EF00000000000000000000000000000000000000000101
      01222929299B5A5A5AE36D6D6DFA5A5A5AE42A2A2A9C02020224000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005323232AA28282899000000000000000081460AC5000000004224
      048E784209BF391F04840402002584490AC87F4609C40201001A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020100193C21048796520BD5CF7210FACF7210FA97530BD63D2204890201
      001B000000000000000000000000000000000000000000000000000000006363
      63EF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005333333AC717171FF333333AC00000000000000008E4E0BCF00000000AD5F
      0DE500000002B6640EEB2C1803752A170372301A03792A170372000000000000
      000000000000000000010000000000000000000000000000000000000000190E
      0258C16A0FF2D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC36B
      0FF31B0E025B0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053333
      33AC717171FF333333AC0000000500000000231302688E4E0BCF00000000A85C
      0DE200000003BD680EEF291603702B180374301A0379301B037A000000000000
      0000000000093A3A3AB82F2F2FA4000000000000000000000000190D0257D474
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD57510FE1B0E025B00000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FE5E5E5EE82C2C2CA00303032C333333AC7171
      71FF333333AC000000050000000000000000130A014D84480AC800000000351D
      047F784209BF442505900201001E86490AC993500BD30603002C000000000000
      00093B3B3BB9717171FF353535AE000000000000000001010018C06A0FF1D776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFC36B0FF30201001B000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000000000000A0A0A4D5F5F
      5FEA191919780101011D000000010101011C18181876666666F2717171FF3333
      33AC000000050000000000000000000000000000000000000008000000000000
      0000000000000000000000000000000000020000000300000000000000093B3B
      3BB9717171FF363636B10000000600000000000000003A200485D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF3D220489000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040432666666F20303
      032C000000000000000000000000000000000000000000000000000000000000
      00000000000B1F1F1F87595959E2717171FE595959E21F1F1F873B3B3BB97171
      71FF373737B30000000700000000000000000000000092500BD2D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF97530BD60000000000000000000000003A2999F2402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF3B299CF400000000000000002A2A2A9C1A1A1A7B0000
      0000000000000000000000000000000000000000000000000000181818772C2C
      2CA0000000000000000000000000000000000000000000000000000000000000
      000B484848CB2E2E2EA30202022700000002020202262D2D2DA0717171FF3939
      39B60000000800000000000000000000000000000000C86E0FF6D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFCF7210FA000000000000000000000000402DAAFF402D
      AAFF05030D491D144CAB1A1246A4010103261D144EAD120C2E86110C2D840201
      06330201052F402DAAFF402DAAFF00000000000000005A5A5AE4010101210000
      00000000000000000000000000000000000000000000000000000101011D5E5E
      5EE8000000000000000000000000000000000000000000000000000000001E1E
      1E852E2E2EA400000000000000000000000000000000000000002C2C2CA02121
      218B0000000000000000000000000000000000000000C86E0FF6D77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFCF7210FA000000000000000000000000402DAAFF402D
      AAFF04030A401C1349A70A071B66030207370A071A65100B2A800101042C2B1E
      71D001010326402DAAFF402DAAFF00000000000000006D6D6DFA000000050000
      0000000000000000000000000000000000000000000000000000000000017171
      71FE000000000000000000000000000000000000000000000000000000005757
      57DF0202022A0000000000000000000000000000000000000000020202265A5A
      5AE3000000000000000000000000000000000000000090500BD1D77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF96520BD5000000000000000000000000402DAAFF402D
      AAFF04030A401C1349A70000021F261B65C501000323100B2A800201052F2E20
      79D7201653B3402DAAFF402DAAFF00000000000000005A5A5AE3010101210000
      00000000000000000000000000000000000000000000000000000101011D5D5D
      5DE7000000000000000000000000000000000000000000000000000000006D6D
      6DFA000000060000000000000000000000000000000000000000000000027070
      70FE0000000000000000000000000000000000000000381F0483D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF3C210487000000000000000000000000402DAAFF402D
      AAFF060512551F1651B102020735402DAAFF0805155A140E348E1B1346A50302
      0A3F0806165D402DAAFF402DAAFF00000000000000002929299B1B1B1B7D0000
      0000000000000000000000000000000000000000000000000000191919792C2C
      2C9F000000000000000000000000000000000000000000000000000000005555
      55DE0303032B0000000000000000000000000000000000000000020202275959
      59E2000000000000000000000000000000000000000001000017BE690FF0D776
      10FFD77610FFD77610FFD77610FF0A05003708040034D77610FFD77610FFD776
      10FFD77610FFC16A0FF202010019000000000000000000000000392896F0402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF3A2999F20000000000000000020202235E5E5EE90505
      05370000000000000000000000000000000000000000040404345F5F5FEA0202
      0225000000000000000000000000000000000000000000000000000000001D1D
      1D832F2F2FA600000000000000000000000000000000000000002E2E2EA31F1F
      1F87000000000000000000000000000000000000000000000000170C0154D374
      10FDD77610FFD77610FFD77610FF0B06003C0A050037D77610FFD77610FFD776
      10FFD47410FD190E025800000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000090909495E5E
      5EE91B1B1B7C0101012100000005010101201A1A1A7A5F5F5FEA0A0A0A4C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000A464646C82F2F2FA60303032B00000006030303292E2E2EA4484848CB0000
      000B00000000000000000000000000000000000000000000000000000000170C
      0154BE690FF0D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A
      0FF1190D02570000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000101
      01222929299B5A5A5AE36D6D6DFA5A5A5AE42A2A2A9C02020224000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A1D1D1D83555555DE6D6D6DFA575757DF1E1E1E850000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000017381F048390500BD1C86E0FF6C86E0FF692500BD23A2004850101
      0018000000000000000000000000000000000000000000000000000000006262
      62ED717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF636363EF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005333333AC353535AF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000005323232AA28282899000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005333333AC717171FF333333AC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0005333333AC717171FF333333AC000000000000000000000000C0690FF1C36B
      0FF3000000000000000000000000000000000000000000000000000000000000
      0000100901479E570CDB0000000E000000000000000000000000A3590DDE150B
      0150000000000000000000000000000000000000000000000000000000000000
      0000BD680EEFC06A0FF100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053333
      33AC717171FF333333AC00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053333
      33AC717171FF333333AC00000005000000000000000000000000D77610FFD776
      10FF0000000000000000000000000000000000000000000000000201001B5F34
      07AAD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FF683908B20301002000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FE5C5C5CE72B2B2B9E0303032B333333AC7171
      71FF333333AC0000000500000000000000000000000000000000000000000202
      02252C2C2C9F5E5E5EE8717171FE5E5E5EE82C2C2CA00303032C333333AC7171
      71FF333333AC0000000500000000000000000000000000000000D77610FFD776
      10FF000000000000000000000000000000000000000429160370C16A0FF2D776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFC56C0FF42E190377000000050000000000000000000000000000
      0000D77610FFD77610FF000000000000000000000000000000000A0A0A4D5F5F
      5FEA191919780101011D000000010101011C18181876666666F2717171FF3333
      33AC0000000500000000000000000000000000000000000000000A0A0A4D5F5F
      5FEA191919780101011D000000010101011C18181876666666F2717171FF3333
      33AC000000050000000000000000000000000000000000000000D77610FFD776
      10FF0000000000000000000000000A0500388E4E0BCFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF93510BD30B06003C00000000000000000000
      0000D77610FFD77610FF000000000000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040432646464F00101
      011F0000000000000000000000000000000000000000020202245F5F5FEA0404
      0434000000000000000000000000000000000000000004040432666666F20303
      032C000000000000000000000000000000000000000000000000D77610FFD776
      10FF00000000010000124D2A0599D37410FDD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD57510FE512C069D010000140000
      0000D77610FFD77610FF0000000000000000000000002A2A2A9C1A1A1A7B0000
      0000000000000000000000000000000000000000000000000000181818772323
      238F00000000000000000000000000000000000000002A2A2A9C1A1A1A7B0000
      00000000000000000000D77610FF000000000000000000000000181818772C2C
      2CA0000000000000000000000000000000000000000000000000D77610FFD776
      10FF0000000081470AC6D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF884B0BCB0000
      0000D77610FFD77610FF0000000000000000000000005A5A5AE4010101210000
      00000000000000000000000000000000000000000000000000000101011D5252
      52DA00000000000000000000000000000000000000005A5A5AE4010101210000
      00000000000000000000D77610FF0000000000000000000000000101011D5E5E
      5EE8000000000000000000000000000000000000000000000000D77610FFD776
      10FF000000000000000B3F23048ACF7210FAD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD07210FB4224048E0000000C0000
      0000D77610FFD77610FF0000000000000000000000006D6D6DFA000000050000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000016666
      66F200000000000000000000000000000000000000006D6D6DFA000000050000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000017171
      71FE000000000000000000000000000000000000000000000000D77610FFD776
      10FF0000000000000000000000000603002E80460AC5D77610FFD77610FFD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF864A0ACA0804003100000000000000000000
      0000D77610FFD77610FF0000000000000000000000005A5A5AE3010101210000
      00000000000000000000000000000000000000000000000000000101011D5555
      55DD00000000000000000000000000000000000000005A5A5AE3010101210000
      00000000000000000000D77610FF0000000000000000000000000101011D5D5D
      5DE7000000000000000000000000000000000000000000000000D77610FFD776
      10FF000000000000000000000000000000000000000222120266BA660EEDD776
      10FFD77610FFD77610FF00000010000000000000000000000000D77610FFD776
      10FFD77610FFC0690FF12615026C000000030000000000000000000000000000
      0000D77610FFD77610FF0000000000000000000000002929299B1B1B1B7D0000
      0000000000000000000000000000000000000000000000000000191919792828
      289700000000000000000000000000000000000000002929299B1B1B1B7D0000
      00000000000000000000D77610FF000000000000000000000000191919792C2C
      2C9F000000000000000000000000000000000000000000000000D77610FFD776
      10FF000000000000000000000000000000000000000000000000010000165730
      06A2D57610FED77610FF00000010000000000000000000000000D77610FFD776
      10FF603507AB0201001A00000000000000000000000000000000000000000000
      0000D77610FFD77610FF000000000000000000000000020202235F5F5FEA0505
      05370000000000000000000000000000000000000000040404345E5E5EE80101
      01220000000000000000000000000000000000000000020202235E5E5EE90505
      05370000000000000000000000000000000000000000040404345F5F5FEA0202
      0225000000000000000000000000000000000000000000000000BF690FF0C16A
      0FF2000000000000000000000000000000000000000000000000000000000000
      00000E07014298530BD70000000D0000000000000000000000009E570CDB120A
      014B000000000000000000000000000000000000000000000000000000000000
      0000BC670EEFC0690FF1000000000000000000000000000000000A0A0A4C6060
      60EB1B1B1B7C0101012100000005010101201A1A1A7A606060EB0A0A0A4C0000
      0000000000000000000000000000000000000000000000000000090909495E5E
      5EE91B1B1B7C0101012100000005010101201A1A1A7A5F5F5FEA0A0A0A4C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02262E2E2EA3626262EE717171FF636363EE2E2E2EA402020227000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01222929299B5A5A5AE36D6D6DFA5A5A5AE42A2A2A9C02020224000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000305250C6D9EC914B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0742609D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005344C8B031A266314B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14AEFBFD00060A3300000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0701429250
      0BD2000000000000000000000000000000000000000000000000000000000000
      000093500BD30F08014500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008E4E0BCF080400330000
      00000000000000000000884B0BCB030200220000000000000000000000000000
      00000000000000000000C16A0FF2C56C0FF41194D4E900000111129EE3F114B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF0B618CBD00000000000000000000000000000000000000000000
      00000000000000000000000000000000000001000017573007A3D67610FED776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF5C3207A7020100190000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFCE7110FA311B
      037A0000000300000000B3630EE9B7640EEB0D07014100000000000000000000
      00000000000000000000D77610FFD77610FF14B1FFFF02131B54073C589614B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF010E154A000000000000000000000000000000000000
      000000000000000000000000000223130267BB670EEED77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFC0690FF12715036E00000003000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FF7E4509C3030100210201001A784209BFCF7210FA2514026A000000000000
      00000000000000000000D77610FFD77610FF14B1FFFF0A5C84B80006093014B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0D78ADD2000000030000000000000000000000000000
      0000000000000704003083480AC7D77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF8B4C0BCD090500360000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFC06A0FF11E10026000000003381F0483D37410FD4D2A05990000
      00060000000000000000D77610FFD77610FF14B1FFFF14AEFBFD000204200C6D
      9EC914B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF031A25620000000000000000000000000000
      000D4124048DD07210FBD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD37410FD4A29
      05970000001100000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF623507AC010000130F080145B3630EE97B43
      09C10100001500000000D77610FFD77610FF14B1FFFF14B1FFFF052D4282031A
      266314B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF0F87C3DF0000000000000000000000008348
      0AC7D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF96530BD500000002000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF8B4C0BCD0000000007040030D776
      10FF8C4D0BCE00000000D77610FFD77610FF14B1FFFF14B1FFFF108FCDE50001
      0218000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00104A290596D37410FDD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD57610FE532D
      069F0100001500000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF6B3B08B4010000170C07003EAB5E0DE49753
      0BD60402002600000000D77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      000000000000090500378C4D0BCED77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF95510BD40C07003E0000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFC56C0FF42313026800000002301B037AD07210FB663808B00000
      000E0000000000000000D77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF129F
      E5F2000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000429160370C16A0FF2D77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFC56C0FF42E19037600000005000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FF864A0ACA0402002601000015703D08B8D47410FD351D037F000000020000
      00000000000000000000D77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000201001B603507ABD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF663808B00301001F0000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD07210FB371E
      04820000000500000000AB5E0DE4C0690FF1140B014F00000000000000000000
      00000000000000000000D77610FFD77610FF129DE1F014B1FFFF14B1FFFF14B1
      FFFF129FE5F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001109014A9D56
      0CDA000000000000000000000000000000000000000000000000000000000000
      00009D560CDA130A014D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009A550BD80A0600390000
      0000000000000000000095510BD4050300290000000000000000000000000000
      00000000000000000000BF690FF0C16A0FF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000900000000100010000000000800400000000000000000000
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
      000000000000}
    DesignInfo = 25690392
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
          303B3C7374796C6520747970653D22746578742F637373223E2E59656C6C6F77
          7B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C706174682063
          6C6173733D2259656C6C6F772220643D224D302E322C32372E326C352E352D31
          3443362C31322E352C362E372C31322C372E352C3132483234563963302D302E
          362D302E342D312D312D31483130563563302D302E362D302E342D312D312D31
          483143302E342C342C302C342E342C302C3576323220202623393B63302C302E
          322C302C302E332C302E312C302E3443302E312C32372E332C302E322C32372E
          332C302E322C32372E327A222F3E0D0A3C7061746820636C6173733D2259656C
          6C6F772220643D224D33312E332C313448372E364C322C32386832312E386330
          2E352C302C312E312D302E332C312E332D302E374C33322C31342E374333322E
          312C31342E332C33312E382C31342C33312E332C31347A222F3E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2250
          7265762220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D32332E312C342E314332332E362C332E382C32342C
          342E312C32342C342E367632302E3763302C302E362D302E342C302E382D302E
          392C302E354C362E342C31352E35632D302E352D302E332D302E352D302E382C
          302D312E314C32332E312C342E317A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224E
          6578742220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D382E392C342E3143382E342C332E382C382C342E31
          2C382C342E367632302E3763302C302E362C302E342C302E382C302E392C302E
          356C31362E382D31302E3363302E352D302E332C302E352D302E382C302D312E
          314C382E392C342E317A222F3E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D32312E362C31342E3463302E352C302E332C
          302E352C302E382C302C312E314C31322C32322E3776322E3663302C302E362C
          302E342C302E382C302E392C302E356C31322E372D31302E3463302E352D302E
          332C302E352D302E372C302D312E3120202623393B4C31322E392C342E314331
          322E342C332E382C31322C342C31322C342E3676322E364C32312E362C31342E
          347A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3137
          2E362C31352E3563302E352D302E332C302E352D302E382C302D312E314C322E
          392C342E3143322E342C332E382C322C342C322C342E367632302E3763302C30
          2E362C302E342C302E382C302E392C302E354C31372E362C31352E357A222F3E
          0D0A3C7061746820636C6173733D22426C75652220643D224D32392C34683263
          302E362C302C312C302E342C312C3176323063302C302E362D302E342C312D31
          2C31682D32632D302E362C302D312D302E342D312D3156354332382C342E342C
          32382E342C342C32392C347A222F3E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D31302E342C31342E35632D302E352C302E33
          2D302E352C302E382C302C312E316C31362E382C31302E3363302E352C302E33
          2C302E392C302E312C302E392D302E3556342E3663302D302E362D302E342D30
          2E382D302E392D302E354C31302E342C31342E357A20202623393B204D342C32
          35563563302D302E362C302E342D312C312D31683263302E362C302C312C302E
          342C312C3176323063302C302E352D302E342C312D312C31483543342E342C32
          362C342C32352E352C342C32357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          6173742220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D32312E362C31342E3563302E352C302E332C302E35
          2C302E382C302C312E314C342E392C32352E3943342E342C32362E322C342C32
          352E392C342C32352E3456342E3663302D302E362C302E342D302E382C302E39
          2D302E354C32312E362C31342E357A20202623393B204D32382C323556356330
          2D302E362D302E352D312D312D31682D32632D302E352C302D312C302E342D31
          2C3176323063302C302E352C302E352C312C312C3168324332372E352C32362C
          32382C32352E352C32382C32357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C672069643D225A6F6F6D5F4F7574223E
          0D0A09093C7265637420783D22382220793D2231322220636C6173733D22426C
          7565222077696474683D22313022206865696768743D2232222F3E0D0A09093C
          7061746820636C6173733D22426C61636B2220643D224D32392E372C32372E33
          6C2D372E392D372E3963312E332D312E382C322E312D342C322E312D362E3563
          302D362E312D342E392D31312D31312D313143362E392C322C322C362E392C32
          2C313373342E392C31312C31312C313120202623393B2623393B63322E342C30
          2C342E362D302E382C362E352D322E316C372E392C372E3963302E332C302E33
          2C302E392C302E332C312E322C306C312E322D312E324333302E312C32382E32
          2C33302E312C32372E362C32392E372C32372E337A204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C3920202623393B2623393B732D34
          2C392D392C3943382C32322C342C31382C342C31337A222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D225A6F6F6D223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D32392E372C32372E334C32322C31392E366C2D302E312D302E316331
          2E332D312E382C322E312D342E312C322E312D362E3563302D362E312D342E39
          2D31312D31312D313153322C362E392C322C313373342E392C31312C31312C31
          3120202623393B2623393B63322E342C302C342E372D302E382C362E352D322E
          3163302C302C302C302E312C302E312C302E316C372E372C372E3763302E332C
          302E332C302E392C302E332C312E322C306C312E322D312E324333302E312C32
          382E322C33302E312C32372E362C32392E372C32372E337A204D342C31332020
          2623393B2623393B63302D352C342D392C392D3973392C342C392C39732D342C
          392D392C3953342C31382C342C31337A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225F
          7833315F30305F7832355F2220786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474
          703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070
          782220793D22307078222076696577426F783D22302030203332203332222073
          74796C653D22656E61626C652D6261636B67726F756E643A6E65772030203020
          33322033323B2220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C7374796C6520747970653D22746578742F6373732220786D
          6C3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D32392E372C32332E334C32322E352C313663312D
          312E342C312E352D332E322C312E352D3563302D352D342D392D392D39732D39
          2C342D392C3973342C392C392C3963312E392C302C332E362D302E362C352D31
          2E356C372E332C372E3320202623393B63302E332C302E332C302E392C302E33
          2C312E322C306C312E322D312E324333302E312C32342E322C33302E312C3233
          2E362C32392E372C32332E337A204D382C313163302D332E392C332E312D372C
          372D3773372C332E312C372C37732D332E312C372D372C3753382C31342E392C
          382C31317A222F3E0D0A3C7061746820636C6173733D22426C75652220643D22
          4D31362C3330632D322C302D332D312E332D332D332E3963302D312E332C302E
          332D322E342C302E382D332E3163302E352D302E372C312E332D312E312C322E
          332D312E3163312E392C302C322E392C312E332C322E392C332E392020262339
          3B63302C312E332D302E332C322E332D302E382C334331372E372C32392E372C
          31362E392C33302C31362C33307A204D31362C32332E33632D302E382C302D31
          2E322C302E392D312E322C322E3863302C312E372C302E342C322E362C312E32
          2C322E3663302E382C302C312E312D302E392C312E312D322E3720202623393B
          4331372E312C32342E322C31362E382C32332E332C31362C32332E337A204D39
          2C3330632D322C302D332D312E332D332D332E3963302D312E332C302E332D32
          2E342C302E382D332E3143372E332C32322E342C382E312C32322C392E312C32
          3263312E392C302C322E392C312E332C322E392C332E3920202623393B63302C
          312E332D302E332C322E332D302E382C334331302E372C32392E372C392E392C
          33302C392C33307A204D392C32332E33632D302E382C302D312E322C302E392D
          312E322C322E3863302C312E372C302E342C322E362C312E322C322E3663302E
          382C302C312E312D302E392C312E312D322E3720202623393B4331302E312C32
          342E322C392E382C32332E332C392C32332E337A204D322C3330762D352E3248
          30762D312E3263302E332C302C302E362C302C302E382D302E3163302E332C30
          2C302E352D302E312C302E372D302E3363302E322D302E312C302E342D302E33
          2C302E352D302E3520202623393B63302E312D302E322C302E322D302E352C30
          2E332D302E3868312E33763848327A222F3E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D31362C3243382E332C322C322C382E332C32
          2C313673362E332C31342C31342C31347331342D362E332C31342D3134533233
          2E372C322C31362C327A204D31362C3663312E312C302C322C302E392C322C32
          732D302E392C322D322C32732D322D302E392D322D3220202623393B5331342E
          392C362C31362C367A204D32302C3234682D38762D326832762D38682D32762D
          326832683476313068325632347A222F3E0D0A3C2F7376673E0D0A}
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
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431
          314331433B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D382C3468313876366832563363302D302E352D302E352D31
          2D312D31483743362E352C322C362C322E352C362C337637683256347A222F3E
          0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C323848
          38563136483676313363302C302E352C302E352C312C312C3168323063302E35
          2C302C312D302E352C312D31563136682D325632387A222F3E0D0A3C70617468
          20636C6173733D225265642220643D224D32392C38483543342E342C382C342C
          382E342C342C3976313063302C302E362C302E342C312C312C3168323463302E
          362C302C312D302E342C312D3156394333302C382E342C32392E362C382C3239
          2C387A204D392E352C31372E394838762D372E3768312E3520202623393B5631
          372E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C
          302D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E38
          2D302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D
          302E312D302E312D302E352D302E322D312E316C302C3020202623393B63302C
          302E382C302E312C312E342C302E312C3276342E33682D312E34762D372E3768
          322E326C312E342C342E3663302E312C302E342C302E322C302E372C302E322C
          312E316C302C3063302E312D302E342C302E322D302E382C302E332D312E316C
          312E342D342E3648313976372E374831382E397A20202623393B204D32362C31
          372E33632D302E372C302E342D312E352C302E372D322E352C302E37632D312E
          312C302D322D302E332D322E362D315332302C31352E342C32302C31342E3273
          302E332D322E322C312D3373312E362D312E312C322E382D312E3163302E372C
          302C312E342C302E312C312E392C302E3356313220202623393B632D302E352D
          302E332D312E322D302E352D312E392D302E35632D302E362C302D312E322C30
          2E322D312E362C302E37732D302E362C312E312D302E362C312E3963302C302E
          382C302E322C312E342C302E352C312E3863302E342C302E342C302E382C302E
          362C312E352C302E3620202623393B63302E342C302C302E372D302E312C302E
          392D302E32762D312E35682D312E34762D312E344832365631372E337A222F3E
          0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D32392C38483543342E342C382C342C382E342C34
          2C3976313063302C302E362C302E342C312C312C3168323463302E362C302C31
          2D302E342C312D3156394333302C382E342C32392E362C382C32392C387A204D
          392E352C31372E394838762D372E3768312E3520202623393B2623393B563137
          2E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C30
          2D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E382D
          302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D30
          2E312D302E312D302E352D302E322D312E316C302C3020202623393B2623393B
          63302C302E382C302E312C312E342C302E312C3276342E33682D312E34762D37
          2E3768322E326C312E342C342E3663302E312C302E342C302E322C302E372C30
          2E322C312E316C302C3063302E312D302E342C302E322D302E382C302E332D31
          2E316C312E342D342E3648313976372E374831382E397A20202623393B262339
          3B204D32362C31372E33632D302E372C302E342D312E352C302E372D322E352C
          302E37632D312E312C302D322D302E332D322E362D315332302C31352E342C32
          302C31342E3273302E332D322E322C312D3373312E362D312E312C322E382D31
          2E3163302E372C302C312E342C302E312C312E392C302E335631322020262339
          3B2623393B632D302E352D302E332D312E322D302E352D312E392D302E35632D
          302E362C302D312E322C302E322D312E362C302E37732D302E362C312E312D30
          2E362C312E3963302C302E382C302E322C312E342C302E352C312E3863302E34
          2C302E342C302E382C302E362C312E352C302E3620202623393B2623393B6330
          2E342C302C302E372D302E312C302E392D302E32762D312E35682D312E34762D
          312E344832365631372E337A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431
          314331433B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D382C3468313876366832563363302D302E352D302E352D31
          2D312D31483743362E352C322C362C322E352C362C337637683256347A222F3E
          0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C323848
          38563136483676313363302C302E352C302E352C312C312C3168323063302E35
          2C302C312D302E352C312D31563136682D325632387A222F3E0D0A3C70617468
          20636C6173733D225265642220643D224D32392C38483543342E342C382C342C
          382E342C342C3976313063302C302E362C302E342C312C312C3168323463302E
          362C302C312D302E342C312D3156394333302C382E342C32392E362C382C3239
          2C387A204D392E352C31372E394838762D372E3768312E3520202623393B5631
          372E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C
          302D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E38
          2D302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D
          302E312D302E312D302E352D302E322D312E316C302C3020202623393B63302C
          302E382C302E312C312E342C302E312C3276342E33682D312E34762D372E3768
          322E326C312E342C342E3663302E312C302E342C302E322C302E372C302E322C
          312E316C302C3063302E312D302E342C302E322D302E382C302E332D312E316C
          312E342D342E3648313976372E374831382E397A20202623393B204D32362C31
          372E33632D302E372C302E342D312E352C302E372D322E352C302E37632D312E
          312C302D322D302E332D322E362D315332302C31352E342C32302C31342E3273
          302E332D322E322C312D3373312E362D312E312C322E382D312E3163302E372C
          302C312E342C302E312C312E392C302E3356313220202623393B632D302E352D
          302E332D312E322D302E352D312E392D302E35632D302E362C302D312E322C30
          2E322D312E362C302E37732D302E362C312E312D302E362C312E3963302C302E
          382C302E322C312E342C302E352C312E3863302E342C302E342C302E382C302E
          362C312E352C302E3620202623393B63302E342C302C302E372D302E312C302E
          392D302E32762D312E35682D312E34762D312E344832365631372E337A222F3E
          0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D32392C38483543342E342C382C342C382E342C34
          2C3976313063302C302E362C302E342C312C312C3168323463302E362C302C31
          2D302E342C312D3156394333302C382E342C32392E362C382C32392C387A204D
          392E352C31372E394838762D372E3768312E3520202623393B2623393B563137
          2E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C30
          2D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E382D
          302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D30
          2E312D302E312D302E352D302E322D312E316C302C3020202623393B2623393B
          63302C302E382C302E312C312E342C302E312C3276342E33682D312E34762D37
          2E3768322E326C312E342C342E3663302E312C302E342C302E322C302E372C30
          2E322C312E316C302C3063302E312D302E342C302E322D302E382C302E332D31
          2E316C312E342D342E3648313976372E374831382E397A20202623393B262339
          3B204D32362C31372E33632D302E372C302E342D312E352C302E372D322E352C
          302E37632D312E312C302D322D302E332D322E362D315332302C31352E342C32
          302C31342E3273302E332D322E322C312D3373312E362D312E312C322E382D31
          2E3163302E372C302C312E342C302E312C312E392C302E335631322020262339
          3B2623393B632D302E352D302E332D312E322D302E352D312E392D302E35632D
          302E362C302D312E322C302E322D312E362C302E37732D302E362C312E312D30
          2E362C312E3963302C302E382C302E322C312E342C302E352C312E3863302E34
          2C302E342C302E382C302E362C312E352C302E3620202623393B2623393B6330
          2E342C302C302E372D302E312C302E392D302E32762D312E35682D312E34762D
          312E344832365631372E337A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D225A6F6F6D223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D32392E372C32372E334C32322C31392E366C2D302E312D302E316331
          2E332D312E382C322E312D342E312C322E312D362E3563302D362E312D342E39
          2D31312D31312D313153322C362E392C322C313373342E392C31312C31312C31
          3120202623393B2623393B63322E342C302C342E372D302E382C362E352D322E
          3163302C302C302C302E312C302E312C302E316C372E372C372E3763302E332C
          302E332C302E392C302E332C312E322C306C312E322D312E324333302E312C32
          382E322C33302E312C32372E362C32392E372C32372E337A204D342C31332020
          2623393B2623393B63302D352C342D392C392D3973392C342C392C39732D342C
          392D392C3953342C31382C342C31337A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
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
          73733D22426C75652220643D224D32312E362C31342E3463302E352C302E332C
          302E352C302E382C302C312E314C31322C32322E3776322E3663302C302E362C
          302E342C302E382C302E392C302E356C31322E372D31302E3463302E352D302E
          332C302E352D302E372C302D312E3120202623393B4C31322E392C342E314331
          322E342C332E382C31322C342C31322C342E3676322E364C32312E362C31342E
          347A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3137
          2E362C31352E3563302E352D302E332C302E352D302E382C302D312E314C322E
          392C342E3143322E342C332E382C322C342C322C342E367632302E3763302C30
          2E362C302E342C302E382C302E392C302E354C31372E362C31352E357A222F3E
          0D0A3C7061746820636C6173733D22426C75652220643D224D32392C34683263
          302E362C302C312C302E342C312C3176323063302C302E362D302E342C312D31
          2C31682D32632D302E362C302D312D302E342D312D3156354332382C342E342C
          32382E342C342C32392C347A222F3E0D0A3C2F7376673E0D0A}
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
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2250
          72696E74223E0D0A09093C706F6C79676F6E20636C6173733D22426C61636B22
          20706F696E74733D2231302C342032322C342032322C31322032342C31322032
          342C3220382C3220382C31322031302C3132202623393B222F3E0D0A09093C70
          61746820636C6173733D22426C61636B2220643D224D32382C3130682D327633
          63302C302E362D302E342C312D312C314837632D302E362C302D312D302E342D
          312D31762D334834632D312E312C302D322C302E392D322C3276313263302C31
          2E312C302E392C322C322C3268347634683136762D34683420202623393B2623
          393B63312E312C302C322D302E392C322D325631324333302C31302E392C3239
          2E312C31302C32382C31307A204D32322C323476327632483130762D32762D32
          762D346831325632347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
          6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D225265642220643D224D32392C32483343322E352C322C322C322E352C32
          2C3376323663302C302E352C302E352C312C312C3168323663302E352C302C31
          2D302E352C312D3156334333302C322E352C32392E352C322C32392C327A204D
          32342C32326C2D322C326C2D362D366C2D362C3620202623393B6C2D322D326C
          362D366C2D362D366C322D326C362C366C362D366C322C326C2D362C364C3234
          2C32327A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253656C656374223E0D0A09093C7061746820636C6173733D22426C61636B
          2220643D224D31382E322C32304832364C31302C347632326C352E332D352E33
          6C322E372C362E3763302E322C302E352C302E382C302E382C312E332C302E35
          6C302E392D302E3463302E352D302E322C302E382D302E382C302E352D312E33
          4C31382E322C32307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2248616E64546F6F6C223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D33312E312C382E33632D312E312D302E372D322E352D302E
          322D322E392C302E396C2D312E392C342E31632D302E322C302E342D302E362C
          302E362D312C302E366830632D302E372C302D312E322D302E362D312D312E33
          4C32362C342E3420202623393B2623393B63302E322D312E312D302E342D322E
          312D312E352D322E34632D312E312D302E322D322E312C302E342D322E342C31
          2E356C2D312E392C372E36632D302E312C302E352D302E352C302E382D312C30
          2E38682D302E31632D302E362C302D312E312D302E352D312E312D312E315632
          2E3120202623393B2623393B63302D312D302E372D312E392D312E362D322E31
          4331352E312D302E322C31342C302E382C31342C3276382E3963302C302E362D
          302E352C312E312D312E312C312E31682D302E31632D302E352C302D302E392D
          302E332D312D302E384C31302C332E3643392E372C322E342C382E342C312E37
          2C372E332C322E3220202623393B2623393B43362E332C322E352C352E392C33
          2E362C362E312C342E366C322E352C31312E3363302E322C302E382D302E372C
          312E352D312E352C312E316C2D342D322E36632D302E382D302E352D312E382D
          302E342D322E352C302E33632D302E382C302E382D302E382C322E312C302C32
          2E394C31302E392C323820202623393B2623393B63312E322C312E332C332C32
          2C342E392C3248323063322E392C302C342E372D322C352E392D342E386C352E
          392D31342E334333322E322C31302C33312E392C382E392C33312E312C382E33
          7A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253656C656374416C6C223E0D0A09093C7061746820636C6173733D22426C
          61636B2220643D224D342C32683476324834763448325634563248347A204D31
          302C3468345632682D3456347A204D31362C3468345632682D3456347A204D32
          362C32682D34763268347634683256324832367A204D342C3130483276346832
          5631307A204D342C313648327634683220202623393B2623393B5631367A204D
          342C32324832763668326834762D3248345632327A204D31302C32386834762D
          32682D345632387A204D31362C32386834762D32682D345632387A204D32362C
          3236682D3476326836762D31762D31762D34682D325632367A204D32362C3230
          6832762D34682D325632307A204D32362C31346832762D3420202623393B2623
          393B682D325631347A222F3E0D0A09093C7265637420783D22362220793D2236
          2220636C6173733D22426C7565222077696474683D2231382220686569676874
          3D223138222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2250726576696F757356696577223E0D0A09093C7061746820636C6173733D
          22426C75652220643D224D31362C3243382E332C322C322C382E332C322C3136
          73362E332C31342C31342C31347331342D362E332C31342D31345332332E372C
          322C31362C327A204D32342C3138682D3876366C2D382D386C382D3876366838
          5631387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D224E65787456696577223E0D0A09093C7061746820636C6173733D22426C75
          652220643D224D31362C3243382E332C322C322C382E332C322C313673362E33
          2C31342C31342C31347331342D362E332C31342D31345332332E372C322C3136
          2C327A204D31362C3234762D364838762D34683856386C382C384C31362C3234
          7A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436C6F636B77697365223E0D0A09093C7061746820636C61
          73733D22477265656E2220643D224D31382E362C32322E364331372E332C3233
          2E352C31352E372C32342C31342C3234632D342E342C302D382D332E362D382D
          3873332E362D382C382D3873382C332E362C382C38682D356C372C376C372D37
          682D3563302D362E362D352E342D31322D31322D313220202623393B2623393B
          53322C392E342C322C313663302C362E362C352E342C31322C31322C31326332
          2E382C302C352E342D312C372E342D322E364C31382E362C32322E367A222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436C6F636B77697365223E0D0A09093C7061746820636C61
          73733D22477265656E2220643D224D31382E362C32322E364331372E332C3233
          2E352C31352E372C32342C31342C3234632D342E342C302D382D332E362D382D
          3873332E362D382C382D3873382C332E362C382C38682D356C372C376C372D37
          682D3563302D362E362D352E342D31322D31322D313220202623393B2623393B
          53322C392E342C322C313663302C362E362C352E342C31322C31322C31326332
          2E382C302C352E342D312C372E342D322E364C31382E362C32322E367A222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436F756E746572636C6F636B77697365223E0D0A09093C70
          61746820636C6173733D22477265656E2220643D224D31382C344331312E342C
          342C362C392E342C362C313648316C372C376C372D37682D3563302D342E342C
          332E362D382C382D3873382C332E362C382C38732D332E362C382D382C38632D
          312E372C302D332E332D302E352D342E362D312E3420202623393B2623393B6C
          2D322E392C322E3963322C312E362C342E362C322E362C372E342C322E366336
          2E362C302C31322D352E342C31322D31324333302C392E342C32342E362C342C
          31382C347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          696E64223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
          4D32392E352C31392E374C32392E352C31392E374C32392E352C31392E374332
          392E352C31392E372C32392E352C31392E372C32392E352C31392E374C32332E
          382C366C302C30632D302E342D312E322D312E352D322D322E382D3220202623
          393B2623393B632D312E372C302D332C312E332D332C337633682D3456376330
          2D312E372D312E332D332D332D3343392E372C342C382E362C342E392C382E32
          2C366C302C304C322E352C31392E3763302C302C302C302C302C306C302C3068
          3043322E322C32302E342C322C32312E322C322C323220202623393B2623393B
          63302C332E332C322E372C362C362C3673362D322E372C362D36762D34683476
          3463302C332E332C322E372C362C362C3673362D322E372C362D364333302C32
          312E322C32392E382C32302E342C32392E352C31392E377A204D382C3236632D
          322E322C302D342D312E382D342D3473312E382D342C342D3420202623393B26
          23393B73342C312E382C342C345331302E322C32362C382C32367A204D32342C
          3236632D322E322C302D342D312E382D342D3473312E382D342C342D3473342C
          312E382C342C345332362E322C32362C32342C32367A222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22456E61626C655363726F6C6C696E67223E0D0A09093C7061746820636C61
          73733D22426C61636B2220643D224D32362C3076313248385630483676313363
          302C302E362C302E342C312C312C3168323063302E362C302C312D302E342C31
          2D3156304832367A204D32362C33325632304838763132483656313963302D30
          2E362C302E342D312C312D3168323020202623393B2623393B63302E362C302C
          312C302E342C312C317631334832367A222F3E0D0A09093C7061746820636C61
          73733D22426C75652220643D224D32322C36483132763268313056367A204D32
          322C34483132563268313056347A204D32322C3330483132762D326831305633
          307A204D32322C323448313276326831305632347A222F3E0D0A093C2F673E0D
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
          643D224578706F7274223E0D0A09093C7061746820636C6173733D22426C6163
          6B2220643D224D31302C31324836563668345631327A204D32322C3132763676
          3963302C302E362D302E342C312D312C314831632D302E362C302D312D302E34
          2D312D31563763302D302E362C302E342D312C312D3168337638683134762D32
          4832327A204D31382C3138483420202623393B2623393B76366831345631387A
          222F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F
          696E74733D2231362C362032342C362032342C322033322C382032342C313420
          32342C31302031362C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2253
          6176652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C61636B7B66696C
          6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D22426C61636B2220643D224D33312C30483139632D302E362C302D312C302E
          342D312C3176313663302C302E362C302E342C312C312C3168313263302E362C
          302C312D302E342C312D3156314333322C302E342C33312E362C302C33312C30
          7A204D33302C313648323056326831305631367A222F3E0D0A3C706174682063
          6C6173733D22426C61636B2220643D224D32322C323076344836762D36683130
          762D3448365634483343322E342C342C322C342E342C322C3576323263302C30
          2E362C302E342C312C312C3168323263302E362C302C312D302E342C312D3176
          2D374832327A204D31362C3448387638683856347A20202623393B204D31322C
          3130682D32563668325631307A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2253617665223E0D0A09093C673E0D
          0A0909093C7061746820636C6173733D22426C61636B2220643D224D32372C34
          682D3376313048385634483543342E342C342C342C342E342C342C3576323263
          302C302E362C302E342C312C312C3168323263302E362C302C312D302E342C31
          2D3156354332382C342E342C32372E362C342C32372C347A204D32342C323448
          3820202623393B2623393B2623393B762D366831365632347A204D31302C3476
          3868313056344831307A204D31342C3130682D32563668325631307A222F3E0D
          0A09093C2F673E0D0A09093C673E0D0A0909093C7061746820636C6173733D22
          426C61636B2220643D224D32372C34682D3376313048385634483543342E342C
          342C342C342E342C342C3576323263302C302E362C302E342C312C312C316832
          3263302E362C302C312D302E342C312D3156354332382C342E342C32372E362C
          342C32372C347A204D32342C3234483820202623393B2623393B2623393B762D
          366831365632347A204D31302C34763868313056344831307A204D31342C3130
          682D32563668325631307A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C
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
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22496D706F7274223E0D0A09093C7061746820636C6173733D22426C61636B
          2220643D224D31322C31324838563668345631327A204D32342C313776317639
          63302C302E362D302E342C312D312C314833632D302E362C302D312D302E342D
          312D31563763302D302E362C302E342D312C312D31683376386831344C32342C
          31377A204D32302C3138483620202623393B2623393B76366831345631387A22
          2F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F69
          6E74733D2233322C362032342C362032342C322031362C382032342C31342032
          342C31302033322C3130202623393B222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
        FileName = 'SVG Images\PDF Viewer\Import.svg'
        Keywords = 'PDF Viewer;Import'
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
          63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
          333B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E59656C6C6F777B66696C
          6C3A234646423131353B7D262331333B262331303B2623393B2E426C75657B66
          696C6C3A233131373744373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2252657365744C61796F75744F7074696F6E73223E0D0A09093C7061746820
          636C6173733D22477265656E2220643D224D31362C34632D332E332C302D362E
          332C312E332D382E352C332E354C342C3476313068302E3268342E314831346C
          2D332E362D332E364331312E382C382E392C31332E382C382C31362C3863342E
          342C302C382C332E362C382C38732D332E362C382D382C3820202623393B2623
          393B632D332E372C302D362E382D322E362D372E372D3648342E3263312C352E
          372C352E392C31302C31312E382C313063362E362C302C31322D352E342C3132
          2D31325332322E362C342C31362C347A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
        FileName = 'SVG Images\Dashboards\ResetLayoutOptions.svg'
        Keywords = 'Dashboards;ResetLayoutOptions'
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
          3B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431314331
          433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220
          643D224D32352E362C362E326C2D332E382D332E38632D302E352D302E352D31
          2E342D302E352D312E392C306C2D322E352C322E356C352E382C352E386C322E
          352D322E354332362E312C372E362C32362E312C362E382C32352E362C362E32
          7A222F3E0D0A3C706F6C79676F6E20636C6173733D22426C75652220706F696E
          74733D22322C323620382C323620322C323020222F3E0D0A3C7061746820636C
          6173733D22426C75652220643D224D32312E372C31324C31362C362E334C332E
          352C31382E386C352E382C352E386C322E372D322E374331322E312C31362E35
          2C31362E342C31322E322C32312E372C31327A222F3E0D0A3C7061746820636C
          6173733D225265642220643D224D32322C3134632D342E342C302D382C332E36
          2D382C3873332E362C382C382C3873382D332E362C382D385332362E342C3134
          2C32322C31347A204D32322C313663312E312C302C322E322C302E332C332E31
          2C302E396C2D382E322C382E3220202623393B632D302E362D302E392D302E39
          2D322D302E392D332E314331362C31382E372C31382E372C31362C32322C3136
          7A204D32322C3238632D312E342C302D322E372D302E352D332E372D312E336C
          382E342D382E3463302E382C312C312E332C322E332C312E332C332E37202026
          23393B4332382C32352E332C32352E332C32382C32322C32387A222F3E0D0A3C
          2F7376673E0D0A}
        FileName = 'SVG Images\XAF\Demo_Security_ReadOnly.svg'
        Keywords = 'XAF;Demo;Security;ReadOnly'
      end>
  end
  object SVGImageList2: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 320
    Top = 464
    Bitmap = {
      494C010121002800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002001000001002000000000000040
      0200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000007300A0A
      4A9914149BDC1B1BCBFC1B1BCDFD14149EDE0A0A4C9B01010835000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080A0A4A991B1BCFFE1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCFFE0A0A509E0000
      000B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000080F0F75BF1B1BD1FF1A1AC5F80808
      418F0101083200000005000000040000062E08083B891919C1F51B1BD1FF1010
      7CC50000000B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000090948961B1BD1FF1B1BD1FF0B0B54A20000
      00000000000000000000000000000000000000000000000005291515A1E01B1B
      D1FF0A0A509E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF321C037C0000000000000000000000000000
      000000000000000000000000062D1B1BCEFD1B1BCCFC1B1BD1FF1B1BD1FF0808
      3D8B000000000000000000000000000000000000000000000000000005291919
      C1F51B1BCFFE0101083400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF321C037C000000000000000B160C0153000000000000
      00000000000000000000090945931B1BD1FF0909449305052B741B1BD1FF1B1B
      D1FF08083D8B0000000000000000000000000000000000000000000000000808
      3B891B1BD1FF0A0A4C9B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FF321C037C000000000000000B7A4309C0D57610FE2615026C0000
      00000000000000000000141493D61B1BD1FF010109360000000005052B741B1B
      D1FF1B1BD1FF08083D8B00000000000000000000000000000000000000000000
      062E1B1BD1FF14149DDD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF321C037C000000000000000B7A4309C0D77610FFD77610FFD57610FE2615
      026C00000000000000001919C1F51B1BD1FF0000000C00000000000000000505
      2B741B1BD1FF1B1BD1FF08083D8B000000000000000000000000000000000000
      00041B1BD1FF1B1BCCFC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF321C
      037C000000000000000B7A4309C0D77610FFD77610FFD77610FFD77610FFD576
      10FE0000000A000000001919BFF41B1BD1FF0000000D00000000000000000000
      000005052B741B1BD1FF1B1BD1FF08083D8B0000000000000000000000000000
      00051B1BD1FF1B1BCCFC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000321C037C0000
      00000000000B7A4309C0D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF0402002600000000131390D41B1BD1FF01010A3900000000000000000000
      00000000000005052B741B1BD1FF1B1BD1FF08083D8B00000000000000000101
      08321B1BD1FF14149BDC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B7A4309C0D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF1B0F025C00000000090943911B1BD1FF0909469400000000000000000000
      0000000000000000000005052B741B1BD1FF1B1BD1FF08083D8B000000000808
      418F1B1BD1FF0A0A4A9900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000704
      0031C06A0FF1D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF643708AE000000000000052A1B1BCDFD1A1AC7F901010833000000000000
      000000000000000000000000000005052B741B1BD1FF1B1BD1FF0B0B54A21A1A
      C5F81B1BCFFE0000073100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B06003AC06A0FF1D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD07210FB0402002500000000090943911B1BD1FF1616ADE8010108330000
      00000000000000000000000000000000000005052B741B1BD1FF1B1BD1FF1B1B
      D1FF0A0A4A990000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06003AC06A0FF1D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF6E3C08B600000001000000060E0E6EB91B1BD1FF1A1AC7F90909
      469401010A380000000C0000000C01010936090944931B1BCCFC1B1BD1FF0F0F
      75BF000000080000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B06003AC06A0FF1D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF311B037B0000000000000006090943911B1BCDFD1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCEFD090948960000
      0008000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B06003AC06A0FF1D77610FFD77610FFD776
      10FFD77610FFD77610FFD57610FE311B037B00000001000000000000052A0909
      4391131390D41919BFF41919C1F5131393D6090945930000062D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B06003AC06A0FF1D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF6D3C08B604020024000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B06003AC06A0FF1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD07210FB633608AD1B0E
      025B040200240000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B06003AC06A
      0FF1D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC56C0FF40D07003F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B06
      003AC06A0FF1D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC56C
      0FF40D07003F00000000030200221F1102620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B06003AC06A0FF1D77610FFD77610FFD77610FFD77610FFC56C0FF40D07
      003F0000000003020022A75C0DE1D57610FE2615026C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B06003AC06A0FF1D77610FFD77610FFC56C0FF40D07003F0000
      000003020022A75C0DE1D77610FFD77610FFD57610FE2514026A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B06003AC06A0FF1C56C0FF40D07003F000000000302
      0022A75C0DE1D77610FFD77610FFD77610FFD77610FFC76D0FF5000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B06003A0D07003F0000000003020022A75C
      0DE1D77610FFD77610FFD77610FFD77610FFD77610FF7D4509C3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003020022A75C0DE1D776
      10FFD77610FFD77610FFD77610FFD77610FF8F4E0BD001000014000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A050038C06A0FF1D776
      10FFD77610FFD77610FFD77610FF8F4E0BD00100001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B06003AC06A
      0FF1D77610FFD77610FF8F4E0BD0010000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A06
      0039A45A0DDF7B4309C101000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000484848CC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF4E4E4ED4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000484848CC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000000000000000000000484848CC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF4E4E4ED40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      00210823007A135501BD1D8302E9229A02FD229A02FE1D8302EA135701BF0825
      007D000300240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000002001E0E4201A62299
      02FD229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229A02FE104601AB00020022000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000031100551F8B02F1229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF208E02F40415005F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000061B006B229A02FE229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0822007900000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030F0050229A02FE229C02FF229C02FF229C02FF229C
      02FF176902D2051A006800030024000000030000000300020022051700641662
      01CB229C02FF229C02FF229C02FF229C02FF229C02FF0415005F000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000100181E8702ED229C02FF229C02FF229C02FF219602FA061D
      006F000000020000000000000000000000000000000000000000000000000000
      000104160061209002F5229C02FF229C02FF229C02FF208E02F4000200220000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C38019A229C02FF229C02FF229C02FF219602FB020D004C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000108003A209002F5229C02FF229C02FF229C02FF104601AB0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000010017219402F9229C02FF229C02FF229C02FF07220078000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004160061229C02FF229C02FF229C02FF229A02FE0003
      0024000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000061B006C229C02FF229C02FF229C02FF197402DC00000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001166101CA229C02FF229C02FF229C02FF0825
      007D000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000104701AD229C02FF229C02FF229C02FF0721007700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005170064229C02FF229C02FF229C02FF1357
      01BF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000484848CC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF4E4E4ED40000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000020022229C02FF229C02FF229C02FF1D83
      02EA000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF676767F40F0F0F5E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000002229C02FF229C02FF229C02FF229A
      02FE000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF4D4D4DD302020229000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000003229C02FF229C02FF229C02FF229A
      02FE000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF2A2A2A9D0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000030023229C02FF229C02FF229C02FF1D83
      02E9000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B0D3E01A10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0824007C00000000000000000000000000000000000000000000
      000000000000000000000000000005190067229C02FF229C02FF229C02FF1355
      01BD000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000104002C186E02D6229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0824007C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000001166601CF229C02FF229C02FF229C02FF0823
      007A000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000004160062209002F5229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0824
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005190066229C02FF229C02FF229C02FF229A02FD0002
      0022000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000000000000000000B0D3E
      01A1229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0F4301A90000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002090040209202F7229C02FF229C02FF229C02FF0F4201A70000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000000000000104002C186E02D6229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229802FC0722
      0078000000040000000000000000000000000000000000000000000000000000
      0002051A0069209202F7229C02FF229C02FF229C02FF1F8C02F20002001F0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000004160062209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF196F02D7061D006F0104002B0000000B0000000A00040029061B006C176A
      02D2229C02FF229C02FF229C02FF229C02FF229B02FE04120058000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000413005A1F8C02F2229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000229C02FF229C02FF229C02FF115001B8229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229B02FE061E007000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000434343C47171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000030027176801D0229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000229C02FF229C02FF0824007C000000000413005B1F8E02F3229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF1F8B02F1041200570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090C38
      0199229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF0824007C000000000000000000000000000200200F4201A72298
      02FC229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229802FC0E3F01A30002001D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000434343C47171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000434343C4717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000413005A1F8C02F2229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000824007C0000000000000000000000000000000000000000000000000002
      002007210076115001B71B7A02E2209102F6209102F61B7A02E2115001B70720
      00750002001E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000030027176801D0229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000090C3801990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000434343C47171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF484848CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000080001001B000100180000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001020900400C38019A197402DC229A02FE229C02FF229C02FF2298
      02FC176B02D30B31018F01060032000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000008161616734A4A4ACF6D6D6DFB6D6D6DFB4B4B4BD1181818760000
      000A000000000000000000000000000000000000000000000000000000000000
      000000000008161616734A4A4ACF6D6D6DFB6D6D6DFB4B4B4BD1181818760000
      000A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000484848CC717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF4E4E4ED400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000107
      003A166101CA229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF125101B90004002900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      011B4C4C4CD1717171FF717171FF717171FF717171FF717171FF717171FF5050
      50D60101011F0000000000000000000000000000000000000000000000000101
      011B4C4C4CD1717171FF717171FF717171FF717171FF717171FF717171FF5050
      50D60101011F0000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010600332298
      02FC229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF209202F705170063000000000000
      0000000000000000000000000000000000000000000000000000000000074B4B
      4BD0717171FF505050D70A0A0A4D0000000800000008090909494D4D4DD37171
      71FF505050D60000000A00000000000000000000000000000000000000074B4B
      4BD0717171FF505050D70A0A0A4D0000000800000008090909494D4D4DD37171
      71FF505050D60000000A00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000720
      0074229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF072200780000
      00000000000000000000000000000000000000000000000000001515156E7171
      71FF515151D800000011000000000000000000000000000000000000000E4D4D
      4DD3717171FF18181876000000000000000000000000000000001515156E7171
      71FF515151D800000011000000000000000000000000000000000000000E4D4D
      4DD3717171FF1818187600000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007200074229C02FF145C01C5041600600002002100000003000000030002
      002205170064166201CB229C02FF229C02FF229C02FF229C02FF229B02FE0413
      0059000000000000000000000000000000000000000000000000464646C97171
      71FF0B0B0B520000000000000000000000000000000000000000000000000909
      094A717171FF4B4B4BD100000000000000000000000000000000464646C97171
      71FF0B0B0B520000000000000000000000000000000000000000000000000909
      094A717171FF4B4B4BD100000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000092901840929018400000000000000000000
      0000000000000105002F00000000000000000000000000000000000000000000
      0000000000000000000104160061209002F5229C02FF229C02FF229C02FF1F8C
      02F10001001C0000000000000000000000000000000000000000676767F37171
      71FF0000000F0000000000000000000000000000000000000000000000000000
      0008717171FF6D6D6DFB00000000000000000000000000000000676767F37171
      71FF0000000F0000000000000000000000000000000000000000000000000000
      0008717171FF6D6D6DFB00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009290184229C02FF229C02FF09290184000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000108003A209002F5229C02FF229C02FF229C
      02FF0D3C019F0000000000000000000000000000000000000000646464F17171
      71FF000000110000000000000000000000000000000000000000000000000000
      0009717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF000000110000000000000000000000000000000000000000000000000000
      0009717171FF6B6B6BF900000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009290184229C02FF229C02FF229C02FF229C02FF092901840000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004160061229C02FF229C02FF229C
      02FF219602FA0001001800000000000000000000000000000000404040C07171
      71FF0C0C0C550000000000000000000000000000000000000000000000000A0A
      0A4D717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF0C0C0C550000000000000000000000000000000000000000000000000A0A
      0A4D717171FF464646C800000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009290184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0929
      0184000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001166101CA229C02FF229C
      02FF229C02FF061B006C00000000000000000000000000000000111111647171
      71FF545454DC0000001400000000000000000000000000000000000000115050
      50D7717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF545454DC0000001400000000000000000000000000000000000000115050
      50D7717171FF1414146C00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000929
      0184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF092901840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005170064229C02FF229C
      02FF229C02FF0F4601AB000000000000000000000000000000000000000B6363
      63EF717171FF545454DC0C0C0C55000000110000000F0B0B0B52515151D87171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF717171FF545454DC0C0C0C55000000110000000F0B0B0B52515151D87171
      71FF676767F30000000F00000000000000000000000000000000000000000000
      00000000000000000000434343C4717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009290184229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0929018400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020022229C02FF229C
      02FF229C02FF186C02D400000000000000000000000000000000000000002323
      238F717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF282828970000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009290184229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF09290184000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002229C02FF229C
      02FF229C02FF1C7E02E600000000000000000000000000000000000000000202
      0227707070FE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0303032E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000209102F6229C02FF229C02FF229C02FF0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003229C02FF229C
      02FF229C02FF1C7E02E600000000000000000000000000000000000000000000
      00003C3C3CBA717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4141
      41C2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B7A02E1229C02FF229C02FF229C02FF0104002B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000030023229C02FF229C
      02FF229C02FF176A02D200000000000000000000000000000000000000000000
      00000B0B0B50717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0D0D
      0D59000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000114E01B5229C02FF229C02FF229C02FF061C006E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000005190067229C02FF229C
      02FF229C02FF0F4301A900000000000000000000000000000000000000000000
      000000000004595959E2717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF5C5C5CE70000
      0006000000000000000000000000000000000000000000000000000000000000
      00000000000000000000484848CC717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED400000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000E4101A50000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000071F0072229C02FF229C02FF229C02FF186D02D50000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001166601CF229C02FF229C
      02FF229C02FF051A006900000000000000000000000000000000000000000000
      0000000000001A1A1A7B717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF1D1D1D830000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000229C02FF197002D80105002F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000001001C219602FB229C02FF229C02FF229C02FF061D
      006E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005190066229C02FF229C02FF229C
      02FF219402F90001001600000000000000000000000000000000000000000000
      000000000000000000176B6B6BF9717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6E6E6EFC0101011D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF209202F60518
      0066000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D3C019F229C02FF229C02FF229C02FF2194
      02F9020B00460000000000000000000000000000000000000000000000000000
      000000000000000000000000000002090040209202F7229C02FF229C02FF229C
      02FF0C39019A0000000000000000000000000000000000000000000000000000
      000000000000000000002F2F2FA5717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF353535AE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF0E4101A50000000D00000000000000000000000000000000000000000000
      00000000000000000000000000000001001A1E8902EF229C02FF229C02FF229C
      02FF219402F9061D006E00000003000000000000000000000000000000000000
      00000000000000000002051A0069209202F7229C02FF229C02FF229C02FF1E88
      02EE000100190000000000000000000000000000000000000000000000000000
      000000000000000000000606063C717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF07070744000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF197002D80105002F000000000000000000000000000000000000
      000000000000000000000000000000000000030F0051229A02FE229C02FF229C
      02FF229C02FF229C02FF186D02D5061C006E0104002B0000000B0000000A0004
      0029061B006C176A02D2229C02FF229C02FF229C02FF229C02FF229A02FE030F
      0051000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004B4B4BD0717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF515151D800000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209202F6051800660000000000000000000000000000
      00000000000000000000000000000000000000000000051A0069229A02FE229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229A02FE061B006B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012121266717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF1515156F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF1F8E02F40414005E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030F00511E89
      02EF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF1E8A02F003100054000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000C646464F0717171FF717171FF7171
      71FF717171FF676767F400000000000000000000000000000000606060EC7171
      71FF717171FF717171FF717171FF676767F40000001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000434343C4717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF176B02D300040029000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      001A0D3C019F219602FB229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229802FC0D3E01A20001001C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E83717171FF717171FF7171
      71FF717171FF2929299900000000000000000000000000000000242424917171
      71FF717171FF717171FF717171FF242424900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF0D3A019D0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000001001B071F0072114E01B51B7A02E1209102F6209102F61B7A
      02E2115001B7072000750002001E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000041F1F1F855F5F5FEA6262
      62ED272727960000000900000000000000000000000000000000000000072424
      2491616161EC616161EC25252592000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF1F8E02F40414
      005E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF176B02D3000400290000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D3A019D0000000A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020D07
      01414224048E83480AC7B8650EECD57510FED57610FEBA660EED85490AC94425
      05900F0801440000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020D07
      01414224048E83480AC7B8650EECD57510FED57610FEBA660EED85490AC94425
      05900F0801440000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003201102639F570CDBD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFA35A0DDE23130267000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003201102639F570CDBD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFA35A0DDE23130267000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005020027864A0ACAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF8D4D0BCF0603002B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005020027864A0ACAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF8D4D0BCF0603002B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000200210823007A1356
      01BE1D8302E9229A02FE229A02FE1D8302E9135601BE0824007B000200210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000200210823007A1356
      01BE1D8302E9229A02FE229A02FE1D8302E9135601BE0824007B000200210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010090147C06A0FF1D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC46C0FF4130A014C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010090147C06A0FF1D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC46C0FF4130A014C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000002001F0F4201A7229A02FD229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229A02FD0F43
      01A80002001F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000002001F0F4201A7229A02FD229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229A02FD0F43
      01A80002001F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010090146CB7010F8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FA130A014D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010090146CB7010F8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FA130A014D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000041200581F8C02F2229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1F8C02F20003002600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000041200581F8C02F2229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1F8C02F20003002600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004020026C0690FF1D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC46C0FF40603
      002B000000000000000000000000000000000000000000000000000000000000
      000004020026C0690FF1D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC46C0FF40603
      002B000000000000000000000000000000000000000000000000000000000000
      000000000000061E0071229B02FE229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0824007C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000061E0071229B02FE229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF0824007C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000284480AC8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF321C037CD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8D4D
      0BCF000000040000000000000000000000000000000000000000000000000000
      000284480AC8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF321C037CD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8D4D
      0BCF000000040000000000000000000000000000000000000000000000000000
      000004120057229B02FE229C02FF229C02FF229C02FF229C02FF166501CE0518
      00660002002300000003000000020002001F0414005D135801C1229C02FF0824
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004120057229B02FE229C02FF229C02FF229C02FF229C02FF166501CE0518
      00660002002300000003000000020002001F0414005D135801C1229C02FF0824
      007C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D10
      025FD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF321C037C00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF231302670000000000000000000000000000000000000000000000001D10
      025FD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000321C037CD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF231302670000000000000000000000000000000000000000000000000002
      001D1F8C02F1229C02FF229C02FF229C02FF209202F705190066000000010000
      00000000000000000000000000000000000000000000000000000105002F0000
      0000000000000000000000000000092901840929018400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      001D1F8C02F1229C02FF229C02FF229C02FF209202F705190066000000010000
      00000000000000000000000000000000000000000000000000000105002F0000
      0000000000000000000000000000092901840929018400000000000000000000
      0000000000000000000000000000000000000000000000000000000000019A55
      0BD8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF321C037C0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA35A0DDE0000000300000000000000000000000000000000000000019A55
      0BD8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000321C037CD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA35A0DDE0000000300000000000000000000000000000000000000000E3F
      01A3229C02FF229C02FF229C02FF209202F70209004000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009290184229C02FF229C02FF09290184000000000000
      0000000000000000000000000000000000000000000000000000000000000E3F
      01A3229C02FF229C02FF229C02FF209202F70209004000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009290184229C02FF229C02FF09290184000000000000
      00000000000000000000000000000000000000000000000000000B06003CD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF321C037C000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0F080144000000000000000000000000000000000B06003CD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF000000000000000000000000321C
      037CD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0F080144000000000000000000000000000000000002001E2298
      02FC229C02FF229C02FF229C02FF051A00690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009290184229C02FF229C02FF229C02FF229C02FF092901840000
      00000000000000000000000000000000000000000000000000000002001E2298
      02FC229C02FF229C02FF229C02FF051A00690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000009290184229C02FF229C02FF229C02FF229C02FF092901840000
      00000000000000000000000000000000000000000000000000003D220488D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF321C
      037C00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF44250590000000000000000000000000000000003D220488D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000321C037CD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF442505900000000000000000000000000000000007200075229C
      02FF229C02FF229C02FF176A02D2000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009290184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0929
      018400000000000000000000000000000000000000000000000007200075229C
      02FF229C02FF229C02FF176A02D2000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000009290184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF0929
      01840000000000000000000000000000000000000000000000007B4309C1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF321C037C0000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF85490AC9000000000000000000000000000000007B4309C1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000321C037CD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF85490AC900000000000000000000000000000000115001B7229C
      02FF229C02FF229C02FF061B006C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000929
      0184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF092901840000000000000000000000000000000000000000115001B7229C
      02FF229C02FF229C02FF061B006C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000929
      0184229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF092901840000000000000000000000000000000000000000AD5F0DE5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF321C037C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFBA660EED00000000000000000000000000000000AD5F0DE5D776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000321C037CD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBA660EED000000000000000000000000000000001B7A02E2229C
      02FF229C02FF229C02FF0004002A000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009290184229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF09290184000000000000000000000000000000001B7A02E2229C
      02FF229C02FF229C02FF0004002A000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000009290184229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF0929018400000000000000000000000000000000C96E0FF7D776
      10FFD77610FFD77610FFD77610FFD77610FF321C037C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000C96E0FF7D776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000321C037CD77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000209102F6229C
      02FF229C02FF229C02FF0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009290184229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF09290184000000000000000000000000209102F6229C
      02FF229C02FF229C02FF0000000A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009290184229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF09290184000000000000000000000000C76E0FF6D776
      10FFD77610FFD77610FFD77610FFD77610FF391F048400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000C76E0FF6D776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000391F0484D77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000209102F6229C
      02FF229C02FF229C02FF0000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003229C02FF229C02FF229C02FF229A02FE000000000000
      0000000000000000000000000000000000000000000000000000209102F6229C
      02FF229C02FF229C02FF0000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003229C02FF229C02FF229C02FF229A02FE000000000000
      0000000000000000000000000000000000000000000000000000AC5F0DE4D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF391F0484000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFB8650EEC00000000000000000000000000000000AC5F0DE4D776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000391F0484D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFB8650EEC000000000000000000000000000000001B7A02E1229C
      02FF229C02FF229C02FF0104002B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000030023229C02FF229C02FF229C02FF1D8302E9000000000000
      00000000000000000000000000000000000000000000000000001B7A02E1229C
      02FF229C02FF229C02FF0104002B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000030023229C02FF229C02FF229C02FF1D8302E9000000000000
      0000000000000000000000000000000000000000000000000000794209BFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF391F04840000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF83480AC700000000000000000000000000000000794209BFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000391F0484D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF83480AC700000000000000000000000000000000114E01B5229C
      02FF229C02FF229C02FF061C006E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005190067229C02FF229C02FF229C02FF135501BD000000000000
      0000000000000000000000000000000000000000000000000000114E01B5229C
      02FF229C02FF229C02FF061C006E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000005190067229C02FF229C02FF229C02FF135501BD000000000000
      00000000000000000000000000000000000000000000000000003B200486D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF391F
      048400000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4225058E000000000000000000000000000000003B200486D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000391F0484D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4225058E00000000000000000000000000000000071F0072229C
      02FF229C02FF229C02FF186D02D5000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001166601CF229C02FF229C02FF229C02FF0823007A000000000000
      0000000000000000000000000000000000000000000000000000071F0072229C
      02FF229C02FF229C02FF186D02D5000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001166601CF229C02FF229C02FF229C02FF0823007A000000000000
      00000000000000000000000000000000000000000000000000000A060039D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF391F0484000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0D070141000000000000000000000000000000000A060039D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF000000000000000000000000391F
      0484D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0D070141000000000000000000000000000000000001001C2196
      02FB229C02FF229C02FF229C02FF061D006E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005190066229C02FF229C02FF229C02FF229A02FD00020022000000000000
      00000000000000000000000000000000000000000000000000000001001C2196
      02FB229C02FF229C02FF229C02FF061D006E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005190066229C02FF229C02FF229C02FF229A02FD00020022000000000000
      0000000000000000000000000000000000000000000000000000000000019552
      0BD5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF391F04840000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF9F570CDB0000000200000000000000000000000000000000000000019552
      0BD5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000391F0484D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF9F570CDB0000000200000000000000000000000000000000000000000D3C
      019F229C02FF229C02FF229C02FF219402F9020B004600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000209
      0040209202F7229C02FF229C02FF229C02FF0F4201A700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D3C
      019F229C02FF229C02FF229C02FF219402F9020B004600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000209
      0040209202F7229C02FF229C02FF229C02FF0F4201A700000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A0E
      025AD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF391F048400000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF201102630000000000000000000000000000000000000000000000001A0E
      025AD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000391F0484D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF201102630000000000000000000000000000000000000000000000000001
      001A1E8902EF229C02FF229C02FF229C02FF219402F9061D006E000000030000
      0000000000000000000000000000000000000000000000000002051A00692092
      02F7229C02FF229C02FF229C02FF1F8C02F20002001F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      001A1E8902EF229C02FF229C02FF229C02FF219402F9061D006E000000030000
      0000000000000000000000000000000000000000000000000002051A00692092
      02F7229C02FF229C02FF229C02FF1F8C02F20002001F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00027E4509C3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF391F0484D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF874A
      0BCA000000030000000000000000000000000000000000000000000000000000
      00027E4509C3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF391F0484D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF874A
      0BCA000000030000000000000000000000000000000000000000000000000000
      0000030F0051229A02FE229C02FF229C02FF229C02FF229C02FF186D02D5061C
      006E0104002B0000000B0000000A00040029061B006C176A02D2229C02FF229C
      02FF229C02FF229C02FF229B02FE041200580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030F0051229A02FE229C02FF229C02FF229C02FF229C02FF186D02D5061C
      006E0104002B0000000B0000000A00040029061B006C176A02D2229C02FF229C
      02FF229C02FF229C02FF229B02FE041200580000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003020022BB670EEED77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF10502
      0027000000000000000000000000000000000000000000000000000000000000
      000003020022BB670EEED77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF10502
      0027000000000000000000000000000000000000000000000000000000000000
      000000000000051A0069229A02FE229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229B02FE061E0070000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000051A0069229A02FE229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229B02FE061E0070000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D070141C76E0FF6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCB7010F8100901470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D070141C76E0FF6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCB7010F8100901470000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030F00511E8902EF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1F8B02F10412005700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030F00511E8902EF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1F8B02F10412005700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D070141BB670EEED77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC0690FF110090146000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D070141BB670EEED77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC0690FF110090146000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001001A0D3C019F219602FB229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229802FC0E3F
      01A30002001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000001001A0D3C019F219602FB229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229802FC0E3F
      01A30002001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030200227E4509C3D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF84480AC80402002600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030200227E4509C3D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF84480AC80402002600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001B071F0072114E
      01B51B7A02E1209102F6209102F61B7A02E2115001B7072000750002001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001B071F0072114E
      01B51B7A02E1209102F6209102F61B7A02E2115001B7072000750002001E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000021A0E025A95520BD5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A550BD81D10025F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000021A0E025A95520BD5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A550BD81D10025F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010A06
      00393B200486794209C0AC5F0DE4C76E0FF6C86E0FF6AD5F0DE57B4309C13D22
      04880B06003C0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010A06
      00393B200486794209C0AC5F0DE4C76E0FF6C86E0FF6AD5F0DE57B4309C13D22
      04880B06003C0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F77C11B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF111180C800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050505372E2E2EA35A5A5AE4717171FE717171FF717171FF717171FF7171
      71FF6D6D6DFB4A4A4ACF13131369000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000022121
      218B717171FE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF3B3B3BB90000000900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007535353DB4E4E
      4ED40909094B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001282828977171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2E2E2EA300000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E5A717171FF7171
      71FF434343C50000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000125252593717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF09090948000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002121218B0000
      00000000000000000000000000000000000000000000404040C1717171FF7171
      71FF1414146D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000125252593717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF464646C8000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF2121
      218B0000000000000000000000000000000002020229717171FF717171FF6969
      69F5000000100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000025252592717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF050505360000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C0606307C1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0606307C0606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF2121218B0000000000000000000000002323238F717171FF717171FF2B2B
      2B9E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002121218B717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF2C2C2C9F0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C00000000000000000606
      307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF0606307C00000000000000000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF2121218B0000000000000009626262ED717171FF717171FF0505
      0538000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002121218B717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF696969F60000
      0013000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707378400000000000000000000
      00000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606
      307C000000000000000000000000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF2121218B0F0F0F5F717171FF717171FF4B4B4BD00000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002121218B717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF1616
      1673000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF07073784000000000000
      0000000000000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C0000
      00000000000000000000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF666666F2717171FF717171FF131313690000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E1E
      1E85717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF5353
      53DA000000020000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF070737840000
      000000000000000000000606307C1B1BD1FF1B1BD1FF0606307C000000000000
      000000000000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF1A1A1A7C000000000000
      00000000000000000000000000000000000000000000000000001E1E1E847171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF080808460000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707
      37840000000000000000000000000606307C0606307C00000000000000000000
      0000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF1A1A1A7C00000000000000000000
      000000000000000000000000000000000000000000001E1E1E84717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF353535AF0000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF070737840000000000000000000000000000000000000000000000000707
      37841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF1A1A1A7C0000000000000000000000000000
      00000000000000000000000000000000000018181876717171FF717171FF7171
      71FF717171FF717171FF717171FF5E5E5EE9717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF6E6E6EFC0101011D00000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0707378400000000000000000000000000000000070737841B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF1A1A1A7C000000000000000000000000000000000000
      000000000000000000000000000000000000626262ED717171FF717171FF7171
      71FF717171FF636363EF10101062000000011B1B1B7D717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF1D1D1D8300000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0606307C000000000000000000000000000000000606307C1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF1A1A1A7C00000000000000000000000000000000000000000000
      000000000000000000000000000000000000515151D8717171FF717171FF7171
      71FF353535AF01010119000000000000000019191979717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF5C5C5CE700000006000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF0606307C0000000000000000000000000000000000000000000000000606
      307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1A1A1A7C0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040435474747CA4C4C4CD10C0C
      0C5600000000000000000000000000000000363636B1717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0C0C0C56000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606
      307C000000000000000000000000070737840707378400000000000000000000
      00000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF1A1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000015E5E5EE9717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF2121218C020202234A4A4ACE7171
      71FF717171FF717171FF404040BF000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C0000
      00000000000000000000070737841B1BD1FF1B1BD1FF07073784000000000000
      0000000000000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF1A1A1A7C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020224717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0D0D0D58000000000A0A0A4E7171
      71FF717171FF717171FF717171FF0303032A0000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C000000000000
      000000000000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF070737840000
      000000000000000000000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF1A1A1A7C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E5D717171FF717171FF717171FF5E5E
      5EE8000000150606063D717171FF717171FF717171FF717171FF0E0E0E5D0303
      032B5E5E5EE9717171FF717171FF717171FF2222228C00000000000000024F4F
      4FD5717171FF717171FF717171FF252525930000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606307C00000000000000000000
      0000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707
      37840000000000000000000000000606307C1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF1A1A1A7C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262694717171FF717171FF717171FF2F2F
      2FA40000000000000000717171FF717171FF717171FF717171FF000000020000
      00002D2D2DA1717171FF717171FF717171FF404040C000000000000000001010
      1061717171FF717171FF717171FF626262ED0000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707378400000000000000000707
      37841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF070737840000000000000000070737841B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF1A1A1A7C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000494949CC717171FF717171FF717171FF1313
      13690000000000000000717171FF717171FF717171FF717171FF000000000000
      000010101062717171FF717171FF717171FF676767F300000003000000000000
      00065A5A5AE3717171FF717171FF5A5A5AE40000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF07073784070737841B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF07073784070737841B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF1A1A1A7C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B6D6D6DFB717171FF717171FF717171FF0303
      032C0000000000000000717171FF717171FF717171FF717171FF000000000000
      000001010122717171FF717171FF717171FF717171FF0303032B000000000000
      00000909094B5E5E5EE9606060EC0B0B0B500000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF1A1A1A7C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000606063F717171FF717171FF717171FF626262ED0000
      00020000000000000000717171FF717171FF717171FF717171FF000000000000
      000000000000585858E1717171FF717171FF717171FF10101060000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF1A1A1A7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000018181877717171FF717171FF717171FF373737B20000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000002D2D2DA1717171FF717171FF717171FF26262695000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF1A1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000353535AF717171FF717171FF717171FF181818760000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      00000000000010101062717171FF717171FF717171FF474747CA000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A7C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5AE3717171FF717171FF717171FF0505053A0000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      00000000000001010122717171FF717171FF717171FF6B6B6BF8000000050000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004F4F4FD5717171FF717171FF636363EF000000060000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      00000000000000000000555555DD717171FF717171FF676767F4000000050000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000000000000E0E6DB91B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0F0F77C000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000070707404F4F4FD5555555DE0A0A0A4E000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      00000000000000000000080808475E5E5EE8666666F210101061000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF0000000000000000717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000595959E2717171FF717171FF5C5C5CE7000000000000
      0000000000000000000000000000000000000000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000090909495C5C5CE5626262ED0A0A0A4D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000404040C1717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4646
      46C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000144444
      44C6333333AC0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF373737B200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD00000001400000000000000000000000000000000000000009A550BD82313
      0268000000010000000000000000000000000000000000000000000000000000
      00009A550BD8190D025700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000894B0ACCD77610FFD77610FF95510BD400000000000000000B0B0B506060
      60EB717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF626262ED0D0D0D5600000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000000000000000000000D77610FFD776
      10FF6A3B08B40100001700000000000000000000000000000000000000000000
      0000D77610FFD57610FE391F0484000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF00000000000000005B5B5BE57171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF626262ED00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015151515703B3B3BB95E5E
      5EE86F6F6FFD707070FE5E5E5EE83B3B3BB91616167100000017000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFB4630EE9140B014E000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF673908B10000000D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B21212189696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF82323238F0101
      01214B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF4E2B069A0000000C00000000000000000000
      00005A3107A5D77610FFD77610FFD77610FF95510BD403020023000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000002020225505050D7717171FF707070FE363636B10D0D0D570101
      011E00000002000000020101011C0C0C0C55353535AE6F6F6FFD717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF9E570CDB0A050038000000000000
      00000000000022120266C86E0FF6D77610FFD77610FFB8650EEC0E0701420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000020202255E5E5EE8717171FF4D4D4DD20404043300000000000000000000
      000000000000000000000000000000000000000000000303032F4A4A4ACE7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD07210FB361E04800000
      000400000000000000000704002F9B550BD8D77610FFD77610FFCF7210FB2615
      026C000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000291D6DCC402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF2C1F75D400000000000000000000000000000000000000000000
      000A505050D6717171FF3C3C3CBA0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000093838
      38B4717171FF6F6F6FFD01010121000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8449
      0AC80402002500000000000000000000000D5A3107A5D77610FFD77610FFD776
      10FF4F2B069B0000000600000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000000000001F1F
      1F86717171FF4D4D4DD30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00094A4A4ACE717171FF2323238F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC46C0FF42213026600000001000000000000000022120266C86E0FF6D776
      10FFD77610FF7D4509C301000016000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000118130D328C402DAAFF0906
      186007051459402DAAFF0705135703020839402DAAFF0D0A237600000118402D
      AAFF402DA8FE100B2C820000011A00000000000001190C081F6E402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000000000136868
      68F5717171FE0505053600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032F6F6F6FFD6B6B6BF8000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF683908B20100001600000000000000000704002F9B55
      0BD8D77610FFD77610FFA65C0DE1070400310000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D483A299AF300000008000000002E207AD80A071C6800000000402D
      AAFF150E379200000000020207360F0B297E0202073500000000402DAAFF402D
      AAFF402DAAFF402DAAFF000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000353535AE717171FF161616710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFB3630EE9130A014C00000000000000000000
      000D5A3107A5D77610FFD77610FFC66D0FF5170D015500000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D481D144CAB0000000101010428120D318A0A071C6800000000402D
      AAFF0101042B0000021F3D2BA2F9402DAAFF100B2A8000000000402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000373737B27171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF3B3B3BB90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF48270594000000000000
      00000000000024140269D77610FFD77610FFD57610FE361E0481000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D480806165E0201052E100C2C830302093C0A071C6800000000402D
      AAFF0000000A0805155B402DAAFF05040E4A0000011800000000402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000575757E17171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011D717171FF5E5E5EE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF5A3107A5000000000000
      000000000000190E0258D77610FFD77610FFD77610FF733F08BB000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105004030C46000000130F0A277C2B1E71D0000000030604115200000000402D
      AAFF0000001106041153402DAAFF0E0A277B0A071C680A071C68402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000696969F67171
      71FF0000000A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002717171FF707070FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFBF690FF01C0F025D00000000000000000000
      000747270593D77610FFD77610FFD77610FF4827059400000005000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF04040433000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303032B717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      10500100022200000000281C69C9402DAAFF010002200000011800000000402D
      AAFF05040E4B0000000E342489E5402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000686868F57171
      71FF0000000A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002717171FF6F6F6FFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF7C4409C203010020000000000000000003020023894B
      0BCCD77610FFD77610FFCB7010F81F1102620000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      10500000000300000119402DA8FE402DAAFF0B081E6D0000000100000000402D
      AAFF281C69C9000000070000021D0C0820700B071C6909071A64402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000575757E07171
      71FF020202260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011E717171FF5D5D5DE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCD7010F92F1A0378000000030000000000000000170C0154BE690FF0D776
      10FFD77610FFAB5E0DE409050037000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000595959E37171
      71FF717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF717171FF606060EB00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF0302083818113F9C402DAAFF0D09
      247603020838100B2B81402DAAFF402DAAFF261A63C30302083803020838402D
      AAFF402DAAFF261B65C505040E4B0100032201010428100B2A80402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000363636B07171
      71FF101010600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D58717171FF3B3B3BB80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9652
      0BD50704003100000000000000000000000747270593D77610FFD77610FFD776
      10FF7F4609C40101001800000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF00000000000000000909094A5959
      59E3717171FF717171FF0000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF5B5B5BE50B0B0B5000000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000131313697171
      71FF3B3B3BB90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636B1717171FF151515700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD57510FE452605910000
      0009000000000000000003020023894B0BCCD77610FFD77610FFD77610FF4C2A
      0598000000060000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000261B65C4402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF291D6DCC00000000000000000000000000000000000000116767
      67F3717171FF0505053A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040433707070FE696969F6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFAD5F0DE510090147000000000000
      000000000000170C0154BE690FF0D77610FFD77610FFCD7010F9221302660000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000001D1D
      1D82717171FF505050D70000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4D4D4DD2717171FF21212189000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF603507AB0100001300000000000000000000
      000047270593D77610FFD77610FFD77610FFAF610DE60A060039000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00084C4C4CD1717171FF404040C00000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3C3C
      3CBA717171FF505050D70000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFC0690FF11D10025F000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF83480AC70201001B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000010101215B5B5BE5717171FF505050D70505053A00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD37171
      71FF5E5E5EE80202022500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF7D4409C20301002000000000000000000000000000000000000000000000
      0000D77610FFD77610FF512C069C000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000010101214C4C4CD1717171FF717171FF3B3B3BB90F0F0F5F0202
      02260000000A0000000A020202240F0F0F5D393939B6717171FE717171FF5050
      50D6020202240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2610DE8301A
      0379000000030000000000000000000000000000000000000000000000000000
      0000B2610DE82414026900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F4509C4D77610FFD77610FF894B0BCC0000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000081D1D1D82676767F3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF686868F51F1F1F860000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B3B3BB9717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4040
      40C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001113131368363636B05757
      57E0696969F5696969F6575757E1373737B31414146B00000013000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000144444
      44C6333333AC0000000700000000000000000000000000000000B0610DE74425
      059000000000000000000000000B593107A4C96E0FF7C86E0FF64D2A05990000
      0005000000000000000B593107A4C96E0FF7C76E0FF648270594000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020D07
      01414224048E83480AC7B8650EECD57510FED57610FEBA660EED85490AC94425
      05900F0801440000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000404040C1717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4646
      46C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF373737B200000000000000000000000000000000D77610FF532D
      069F00000000000000003E220489D77610FF3C2104883C210488D77610FF2B18
      0373000000003E220489D77610FF3C2104883C210488D77610FF231302670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003201102639F570CDBD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFA35A0DDE23130267000000040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACE00000000000000000000000000000000D77610FF532D
      069F00000000000000009F570CDBBE690FF00000000300000006CD7010F99551
      0BD4000000009F570CDBBE690FF00000000300000006CD7010F98B4C0BCD0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005020027864A0ACAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF8D4D0BCF0603002B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000D77610FF532D
      069F0000000000000000C76E0FF693500BD30000000000000000AB5D0DE3CF72
      10FB00000000C76E0FF693500BD30000000000000000AB5D0DE3CD700FF90000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000010000000000000000000000000000000000000000000000000000
      0000000000000000000010090147C06A0FF1D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC46C0FF4130A014C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD0000000140000000000000000000000000000000000000000D77610FF532D
      069F0000000000000000C36B0FF396530BD50000000000000000AB5E0DE4D575
      10FE00000000C36B0FF396530BD50000000000000000AB5E0DE4D57610FE0000
      0000000000000000000000000000000000000000000000000000010101225555
      55DE434343C40000000E00000000000000000000000000000000000000000000
      00000000000010090146CB7010F8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FA130A014D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000008E4E0BCF8E4E0BCFD77610FF532D
      069F0000000000000000894B0BCCC36B0FF30000000500000007CE7210FAA75C
      0DE100000000894B0BCCC36B0FF30000000500000007CE7210FAAF610DE60000
      0000000000000000000000000000000000000000000001010122585858E17171
      71FF717171FF404040C100000000000000000000000000000000000000000000
      000004020026C0690FF1D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC46C0FF40603
      002B000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015151515703B3B3BB95E5E
      5EE86F6F6FFD707070FE5E5E5EE83B3B3BB91616167100000017000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000002514026B7D4509C3D77610FF532D
      069F00000000000000002B180373D77610FF452605914325058FD77610FF4325
      058F000000002B180373D77610FF452605914325058FD77610FF4F2B069B0000
      00000000000000000000000000000000000001010122585858E1717171FF7171
      71FF717171FF4A4A4ACE00000000000000000000000000000000000000000000
      000284480AC8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8D4D
      0BCF000000040000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B21212189696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF82323238F0101
      01214B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000006A85C0DE2532D
      069F0000000000000000000000043D220488B4630EE9C06A0FF15A3107A50000
      000D00000000000000054E2B069ACF7210FAD77610FF784209BF010000150000
      000000000000000000000000000001010122585858E1717171FF717171FF7171
      71FF4E4E4ED40000001600000000000000000000000000000000000000001D10
      025FD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF231302670000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000002020225505050D7717171FF707070FE363636B10D0D0D570101
      011E00000002000000020101011C0C0C0C55353535AE6F6F6FFD717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000110000
      000F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000070000000D00000000000000000000
      0000000000000000000001010122585858E1717171FF717171FF717171FF4E4E
      4ED4000000170000000000000000000000000000000000000000000000019A55
      0BD8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA35A0DDE0000000300000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000020202255E5E5EE8717171FF4D4D4DD20404043300000000000000000000
      000000000000000000000000000000000000000000000303032F4A4A4ACE7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010122585858E1717171FF717171FF717171FF525252D90000
      00170000000000000000000000000000000000000000000000000B06003CD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0F08014400000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000A505050D6717171FF3C3C3CBA0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000093838
      38B4717171FF6F6F6FFD01010121000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020A0A
      0A4E313131A8585858E16F6F6FFD6F6F6FFD595959E2313131A80A0A0A4D0000
      000201010122585858E1717171FF717171FF717171FF525252D90101011A0000
      00000000000000000000000000000000000000000000000000003D220488D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4425059000000000000000000000000000000000000000000000
      0000291D6DCC402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF2C1F75D400000000000000000000000000000000000000001F1F
      1F86717171FF4D4D4DD30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00094A4A4ACE717171FF2323238F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303032D484848CC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4A4A
      4ACE585858E1717171FF717171FF717171FF535353DB0101011A000000000000
      00000000000000000000000000000000000000000000000000007B4309C1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF85490AC900000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000000000136868
      68F5717171FE0505053600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032F6F6F6FFD6B6B6BF8000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000008080845676767F4717171FF5959
      59E2161616730202022700000004000000030202022615151570575757DF7171
      71FF717171FF717171FF717171FF555555DD0101011E00000000000000000000
      0000000000000000000000000000000000000000000000000000AD5F0DE5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBA660EED00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000118130D328C402DAAFF0906
      186007051459402DAAFF0705135703020839402DAAFF0D0A237600000118402D
      AAFF402DA8FE100B2C820000011A00000000000001190C081F6E402DAAFF402D
      AAFF402DAAFF402DAAFF000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000353535AE717171FF161616710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303032C676767F4717171FF2C2C2C9F0000
      000A000000000000000000000000000000000000000000000000000000092828
      2899717171FF717171FF555555DD0101011E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C96E0FF7D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D483A299AF300000008000000002E207AD80A071C6800000000402D
      AAFF150E379200000000020207360F0B297E0202073500000000402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000373737B27171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF3B3B3BB90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001464646C9717171FF2D2D2DA1000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000028282899717171FF4D4D4DD2000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C76E0FF6D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD57610FE00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D481D144CAB0000000101010428120D318A0A071C6800000000402D
      AAFF0101042B0000021F3D2BA2F9402DAAFF100B2A8000000000402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000575757E17171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011D717171FF5E5E5EE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000009090949717171FF5A5A5AE40000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000009575757DF717171FF0C0C0C560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AC5F0DE4D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFB8650EEC00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105005030D480806165E0201052E100C2C830302093C0A071C6800000000402D
      AAFF0000000A0805155B402DAAFF05040E4A0000011800000000402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000696969F67171
      71FF0000000A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002717171FF707070FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002D2D2DA2717171FF1919197800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000015151570717171FF333333AC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000794209BFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF83480AC700000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      105004030C46000000130F0A277C2B1E71D0000000030604115200000000402D
      AAFF0000001106041153402DAAFF0E0A277B0A071C680A071C68402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000686868F57171
      71FF0000000A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000002717171FF6F6F6FFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000535353DB717171FF0303032E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020226717171FF5A5A5AE30000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B200486D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4225058E00000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      10500100022200000000281C69C9402DAAFF010002200000011800000000402D
      AAFF05040E4B0000000E342489E5402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000575757E07171
      71FF020202260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011E717171FF5D5D5DE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000686868F5717171FF0000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003717171FF6F6F6FFD0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A060039D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF0D07014100000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF00000000100B2A80402DAAFF0604
      10500000000300000119402DA8FE402DAAFF0B081E6D0000000100000000402D
      AAFF281C69C9000000070000021D0C0820700B071C6909071A64402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000363636B07171
      71FF101010600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D58717171FF3B3B3BB80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000686868F5717171FF0000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000004717171FF6F6F6FFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000019552
      0BD5D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF9F570CDB0000000200000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF0302083818113F9C402DAAFF0D09
      247603020838100B2B81402DAAFF402DAAFF261A63C30302083803020838402D
      AAFF402DAAFF261B65C505040E4B0100032201010428100B2A80402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000131313697171
      71FF3B3B3BB90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636B1717171FF151515700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000525252D9717171FF0303033000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020228717171FF585858E10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A0E
      025AD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF653808AF01000014010000125E3407A9D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF201102630000000000000000000000000000000000000000000000000000
      0000402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF00000000000000000000000000000000000000116767
      67F3717171FF0505053A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040433707070FE696969F6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002C2C2C9F717171FF1A1A1A7B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000017171773717171FF303030A70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00027E4509C3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0201001A000000000000000001000013D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF874A
      0BCA000000030000000000000000000000000000000000000000000000000000
      0000261B65C4402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402DAAFF402D
      AAFF402DAAFF291D6DCC00000000000000000000000000000000000000001D1D
      1D82717171FF505050D70000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4D4D4DD2717171FF21212189000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000008080846717171FF5C5C5CE70000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A595959E2717171FF0A0A0A4E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003020022BB670EEED77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0201001D000000000000000001000015D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC06A0FF10502
      0027000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00084C4C4CD1717171FF404040C00000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3C3C
      3CBA717171FF505050D70000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001434343C5717171FF303030A7000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      00012C2C2C9F717171FF484848CC000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D070141C76E0FF6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF6C3C08B50201001C0201001A653808AFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCB7010F8100901470000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000010101215B5B5BE5717171FF505050D70505053A00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD37171
      71FF5E5E5EE80202022500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020228666666F2717171FF303030A70000
      000D0000000000000000000000000000000000000000000000000000000B2D2D
      2DA1717171FF676767F40303032E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D070141BB670EEED77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFC0690FF110090146000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000010101214C4C4CD1717171FF717171FF3B3B3BB90F0F0F5F0202
      02260000000A0000000A020202240F0F0F5D393939B6717171FE717171FF5050
      50D6020202240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000606063F666666F2717171FF5C5C
      5CE71A1A1A7B0303032F0000000B0000000B0303032E191919785A5A5AE47171
      71FF676767F40808084500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000030200227E4509C3D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF84480AC80402002600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000081D1D1D82676767F3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF686868F51F1F1F860000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020228434343C57171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4646
      46C90303032C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000021A0E025A95520BD5D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A550BD81D10025F000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001113131368363636B05757
      57E0696969F5696969F6575757E1373737B31414146B00000013000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010808
      08462C2C2CA0525252D9686868F5696969F5535353DB2D2D2DA2090909490000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010A06
      00393B200486794209C0AC5F0DE4C76E0FF6C86E0FF6AD5F0DE57B4309C13D22
      04880B06003C0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003B3B3BB9717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4040
      40C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000144A4A
      4ACE4D4D4DD30000001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000144444
      44C6333333AC0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF4D4D4DD200000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000144B4B4BD07171
      71FF717171FF373737B200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACE00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000144B4B4BD0717171FF7171
      71FF717171FF4A4A4ACE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000144B4B4BD0717171FF717171FF7171
      71FF4B4B4BD00000001400000000000000000000000000000000000000000000
      000083480AC7D77610FFD77610FF8D4E0BCF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000006301B037AC36B
      0FF3010000170000000000000000000000000000000000000000000000000000
      0000B6640EEB4124048D0000000D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B4309C1D77610FFD77610FF8448
      0AC8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD0000000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B
      4BD0000000140000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D07014198530BD6D77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFAA5D0DE3160C01520000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD00000
      0014000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001000017573007A3D77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF6B3B08B403010021000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015151515703B3B3BB95E5E
      5EE86F6F6FFD707070FE5E5E5EE83A3A3AB71515156E00000014000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000015151515703B3B3BB95E5E
      5EE86F6F6FFD707070FE5E5E5EE83B3B3BB91616167100000017000000000000
      0000000000144B4B4BD0717171FF717171FF717171FF4B4B4BD0000000140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000224140269BC670EEFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFC76D0FF5301A03790000
      0006000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B21212189696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF696969F62121218A0101
      01204B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B21212189696969F6717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF82323238F0101
      01214B4B4BD0717171FF717171FF717171FF4B4B4BD000000014000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000804
      003286490AC9D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9552
      0BD50C07003E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      00000000000002020225505050D7717171FF707070FE363636B10D0D0D570101
      011E00000002000000020101011C0C0C0C55353535AE6F6F6FFD717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020225505050D7717171FF707070FE363636B10D0D0D570101
      011E00000002000000020101011C0C0C0C55353535AE6F6F6FFD717171FF6F6F
      6FFD717171FF717171FF717171FF4B4B4BD00000001400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000000F46260592D174
      10FCD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD57610FE532D069F01000015000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000020202255E5E5EE8717171FF4D4D4DD20404043300000000000000000000
      000000000000000000000000000000000000000000000303032F4A4A4ACE7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000020202255E5E5EE8717171FF4D4D4DD20404043300000000000000000000
      000000000000000000000000000000000000000000000303032F4A4A4ACE7171
      71FF717171FF717171FF4B4B4BD0000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000000000000000000000190E0258AF600DE6D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB8650EEC201102630000000100000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      000A505050D6717171FF3C3C3CBA0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000093838
      38B4717171FF676767F400000016000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A505050D6717171FF3C3C3CBA0000000B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000093838
      38B4717171FF6F6F6FFD01010121000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000004020026733F08BBD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF7F4509C40603002D000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000001F1F
      1F86717171FF4D4D4DD30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00094A4A4ACE717171FF12121268000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1F
      1F86717171FF4D4D4DD30000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00094A4A4ACE717171FF2323238F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000009371E0482CB7010F8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFCF7210FA3E22048A0000
      000B00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000136868
      68F5717171FE0505053600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032F6F6F6FFD5C5C5CE6000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000136868
      68F5717171FE0505053600000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      00000303032F6F6F6FFD6B6B6BF8000000170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000001109
      01489F580CDCD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFA65B
      0DE0140A014E000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000353535AE717171FF0B0B0B530000000000000000000000000000
      00000000000000000000000000000000000000000000000000001414146B7171
      71FF393939B60000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000353535AE717171FF161616710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000552E06A0D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF5F3407A90000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000373737B27171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF2A2A2A9C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000373737B27171
      71FF0F0F0F5E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000C0C0C56717171FF3B3B3BB90000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000361E0481CF72
      10FAD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD17310FC3D2204880000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000575757E17171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011D717171FF484848CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000575757E17171
      71FF020202250000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011D717171FF5E5E5EE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000603
      002D7F4609C4D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF874A
      0BCA08040031000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000696969F67171
      71FF0000000A000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF5A5A5AE40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000696969F67171
      71FF0000000A000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF707070FE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000221120264BA660EEDD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFC0690FF12715026D0000
      000300000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000686868F57171
      71FF0000000A000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF5B5B5BE60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000686868F57171
      71FF0000000A000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      00000000000000000002717171FF6F6F6FFD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000001000016562F06A1D57610FED77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF603507AB0201001A000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000575757E07171
      71FF020202260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000101011E717171FF4D4D4DD20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000575757E07171
      71FF020202260000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000101011E717171FF5D5D5DE80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000D07014098530BD7D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA45A0DDF120A014B0000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000363636B07171
      71FF101010600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D58717171FF2F2F2FA50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000363636B07171
      71FF101010600000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000D0D0D58717171FF3B3B3BB80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000007321C037CC96E
      0FF7D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCF7210FA3E2204890000000B000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000131313697171
      71FF3B3B3BB90000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636B1717171FF101010600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000131313697171
      71FF3B3B3BB90000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000363636B1717171FF151515700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000402
      0024713E08B9D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8147
      0AC60603002E0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000116767
      67F3717171FF0505053A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004040433707070FE656565F10000000E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000116767
      67F3717171FF0505053A00000000000000000000000000000000000000000000
      0000D77610FFD77610FF00000000000000000000000000000000000000000000
      000004040433707070FE696969F6000000160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000190E0258AF610DE6D77610FFD77610FFD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFBC670EEF231302680000
      0002000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000001D1D
      1D83717171FF505050D70000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4D4D4DD2717171FF1C1C1C7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D82717171FF505050D70000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B4D4D4DD2717171FF21212189000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000F48280595D37410FDD77610FFD77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF5B3207A601010018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      00094E4E4ED4717171FF404040C00000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3C3C
      3CBA717171FF4D4D4DD200000008000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00084C4C4CD1717171FF404040C00000000E0000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B3C3C
      3CBA717171FF505050D70000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000090500368C4D0BCED77610FFD776
      10FF030100200000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF9F580CDC100901460000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF000000000000000000000000000000000000000000000000000000000000
      0000020202235C5C5CE7717171FF505050D70505053A00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD37171
      71FF5E5E5EE80202022300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101215B5B5BE5717171FF505050D70505053A00000000000000000000
      00000000000000000000000000000000000000000000050505364D4D4DD37171
      71FF5E5E5EE80202022500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F4509C4D77610FFD77610FF894B0BCC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000429160370BB67
      0EEE010000160000000000000000000000000000000000000000000000000000
      0000B3630DE93A20048500000009000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000784209BED77610FFD77610FF8147
      0AC6000000000000000000000000000000000000000000000000000000000000
      00000000000002020224515151D8717171FF717171FF3B3B3BB90F0F0F5F0202
      02260000000A0000000A020202240F0F0F5D393939B6717171FE717171FF5252
      52DA020202260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101214C4C4CD1717171FF717171FF3B3B3BB90F0F0F5F0202
      02260000000A0000000A020202240F0F0F5D393939B6717171FE717171FF5050
      50D6020202240000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000C2222228D6B6B6BF9717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF6B6B6BF9242424900000
      000D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000081D1D1D82676767F3717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF686868F51F1F1F860000
      000A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101011A1919197A434343C56868
      68F5717171FF717171FF696969F6444444C61A1A1A7C0101011C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001113131368363636B05757
      57E0696969F5696969F6575757E1373737B31414146B00000013000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001000000100000000F00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000113000000000C6A99C614B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0D77ABD100000113000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000052B3F7F000000000318246014B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF06385190000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F89C6E1000000030000000A129B
      E0EF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF13A9F3F9000304230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000054A29059600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F2C069B0000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009A550BD82313
      0268000000010000000000000000000000000000000000000000000000000000
      00009A550BD8190D025700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000894B0ACCD77610FFD77610FF95510BD414B1FFFF010E144900000000063A
      549314B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF094C6EA80000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000100
      0012754009BCD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF7A43
      09C0010000140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF6A3B08B40100001700000000000000000000000000000000000000000000
      0000D77610FFD57610FE391F0484000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF095175AD000000000005
      072D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14AFFDFE0107
      0B36000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050200279D56
      0CDAD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFA1580CDD0503002A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFB4630EE9140B014E000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF673908B10000000D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14A9F5FA000102170000
      00000C6A99C614B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0C64
      90C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F080145BC670EEFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFC0690FF11109014A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF4E2B069A0000000C00000000000000000000
      00005A3107A5D77610FFD77610FFD77610FF95510BD403020023000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF042536760000
      00000318246014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF010F174D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002615026CD07210FBD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD17410FC291703710000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF9E570CDB0A050038000000000000
      00000000000022120266C86E0FF6D77610FFD77610FFB8650EEC0E0701420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF0F80B8D90000
      00010000000A129BE0EF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0E7BB2D50000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000054A290596D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF4F2C069B00000006000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD07210FB361E04800000
      000400000000000000000704002F9B550BD8D77610FFD77610FFCF7210FB2615
      026C000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF010B
      104000000000063A549314B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF031B276500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001000012754009BCD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF7A4309C0010000140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8449
      0AC80402002500000000000000000000000D5A3107A5D77610FFD77610FFD776
      10FF4F2B069B0000000600000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF0848
      68A3000000000005072D14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF118FCFE60000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050200279D560CDAD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFA1580CDD0503
      002A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC46C0FF42213026600000001000000000000000022120266C86E0FF6D776
      10FFD77610FF7D4509C301000016000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF13A5
      EFF700000111000000000C6A99C614B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF042A3D7D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F08
      0145BC670EEFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC069
      0FF11109014A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF683908B20100001600000000000000000704002F9B55
      0BD8D77610FFD77610FFA65C0DE1070400310000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF03202E6D000000000318246014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF129FE5F2000102170000000000000000000000000000
      00000000000000000000000000000000000000000000000000002615026CD072
      10FBD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD17410FC2917037100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFB3630EE9130A014C00000000000000000000
      000D5A3107A5D77610FFD77610FFC66D0FF5170D015500000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0D77ABD1000000000000000A129BE0EF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF073C58960000000000000000000000000000
      000000000000000000000000000000000000000000000000000020120264CD70
      10F9D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCF7210FB2414026900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF48270594000000000000
      00000000000024140269D77610FFD77610FFD57610FE361E0481000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF01080B3700000000063A549314B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF1191D1E70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D07
      003FB6640EEBD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFBA67
      0EEE0E0801430000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF5A3107A5000000000000
      000000000000190E0258D77610FFD77610FFD77610FF733F08BB000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF07415E9B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000302002295520BD5D77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9A550BD80402
      0025000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFBF690FF01C0F025D00000000000000000000
      000747270593D77610FFD77610FFD77610FF4827059400000005000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14A9F5FA02141E58000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000F6D3C08B6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF723F08BA000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF7C4409C203010020000000000000000003020023894B
      0BCCD77610FFD77610FFCB7010F81F1102620000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000034224058ED77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF4727059300000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCD7010F92F1A0378000000030000000000000000170C0154BE690FF0D776
      10FFD77610FFAB5E0DE409050037000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020120264CD7010F9D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFCF7210FB241402690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9652
      0BD50704003100000000000000000000000747270593D77610FFD77610FFD776
      10FF7F4609C40101001800000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D07003FB6640EEBD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFBA670EEE0E080143000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD57510FE452605910000
      0009000000000000000003020023894B0BCCD77610FFD77610FFD77610FF4C2A
      0598000000060000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF0D71A3CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030200229552
      0BD5D77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF9A550BD80402002500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFAD5F0DE510090147000000000000
      000000000000170C0154BE690FF0D77610FFD77610FFCD7010F9221302660000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000F6D3C08B6D77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF723F
      08BA000000110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FF603507AB0100001300000000000000000000
      000047270593D77610FFD77610FFD77610FFAF610DE60A060039000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000034224058E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000472705930000
      0004000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFC0690FF11D10025F000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF83480AC70201001B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF7D4409C20301002000000000000000000000000000000000000000000000
      0000D77610FFD77610FF512C069C000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0C6896C414B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0D71A3CC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B2610DE8301A
      0379000000030000000000000000000000000000000000000000000000000000
      0000B2610DE82414026900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F4509C4D77610FFD77610FF894B0BCC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000080000000200100000100010000000000001200000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
    DesignInfo = 30409024
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
          303B3C7374796C6520747970653D22746578742F637373223E2E59656C6C6F77
          7B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C706174682063
          6C6173733D2259656C6C6F772220643D224D302E322C32372E326C352E352D31
          3443362C31322E352C362E372C31322C372E352C3132483234563963302D302E
          362D302E342D312D312D31483130563563302D302E362D302E342D312D312D31
          483143302E342C342C302C342E342C302C3576323220202623393B63302C302E
          322C302C302E332C302E312C302E3443302E312C32372E332C302E322C32372E
          332C302E322C32372E327A222F3E0D0A3C7061746820636C6173733D2259656C
          6C6F772220643D224D33312E332C313448372E364C322C32386832312E386330
          2E352C302C312E312D302E332C312E332D302E374C33322C31342E374333322E
          312C31342E332C33312E382C31342C33312E332C31347A222F3E0D0A3C2F7376
          673E0D0A}
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
          262331303B3C7374796C6520747970653D22746578742F637373223E2E426C75
          657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C706F6C7967
          6F6E20636C6173733D22426C75652220706F696E74733D2232322C362031302C
          31362032322C323620222F3E0D0A3C2F7376673E0D0A}
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
          262331303B3C7374796C6520747970653D22746578742F637373223E2E426C75
          657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D
          22D0A1D0BBD0BED0B95F32223E0D0A09093C706F6C79676F6E20636C6173733D
          22426C75652220706F696E74733D2231302C362032322C31362031302C323620
          2623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D32312E362C31342E3463302E352C302E332C
          302E352C302E382C302C312E314C31322C32322E3776322E3663302C302E362C
          302E342C302E382C302E392C302E356C31322E372D31302E3463302E352D302E
          332C302E352D302E372C302D312E3120202623393B4C31322E392C342E314331
          322E342C332E382C31322C342C31322C342E3676322E364C32312E362C31342E
          347A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3137
          2E362C31352E3563302E352D302E332C302E352D302E382C302D312E314C322E
          392C342E3143322E342C332E382C322C342C322C342E367632302E3763302C30
          2E362C302E342C302E382C302E392C302E354C31372E362C31352E357A222F3E
          0D0A3C7061746820636C6173733D22426C75652220643D224D32392C34683263
          302E362C302C312C302E342C312C3176323063302C302E362D302E342C312D31
          2C31682D32632D302E362C302D312D302E342D312D3156354332382C342E342C
          32382E342C342C32392C347A222F3E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D31302E342C31342E35632D302E352C302E33
          2D302E352C302E382C302C312E316C31362E382C31302E3363302E352C302E33
          2C302E392C302E312C302E392D302E3556342E3663302D302E362D302E342D30
          2E382D302E392D302E354C31302E342C31342E357A20202623393B204D342C32
          35563563302D302E362C302E342D312C312D31683263302E362C302C312C302E
          342C312C3176323063302C302E352D302E342C312D312C31483543342E342C32
          362C342C32352E352C342C32357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          6173742220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C75652220643D224D32312E362C31342E3563302E352C302E332C302E35
          2C302E382C302C312E314C342E392C32352E3943342E342C32362E322C342C32
          352E392C342C32352E3456342E3663302D302E362C302E342D302E382C302E39
          2D302E354C32312E362C31342E357A20202623393B204D32382C323556356330
          2D302E362D302E352D312D312D31682D32632D302E352C302D312C302E342D31
          2C3176323063302C302E352C302E352C312C312C3168324332372E352C32362C
          32382C32352E352C32382C32357A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C672069643D225A6F6F6D5F4F7574223E
          0D0A09093C7265637420783D22382220793D2231322220636C6173733D22426C
          7565222077696474683D22313022206865696768743D2232222F3E0D0A09093C
          7061746820636C6173733D22426C61636B2220643D224D32392E372C32372E33
          6C2D372E392D372E3963312E332D312E382C322E312D342C322E312D362E3563
          302D362E312D342E392D31312D31312D313143362E392C322C322C362E392C32
          2C313373342E392C31312C31312C313120202623393B2623393B63322E342C30
          2C342E362D302E382C362E352D322E316C372E392C372E3963302E332C302E33
          2C302E392C302E332C312E322C306C312E322D312E324333302E312C32382E32
          2C33302E312C32372E362C32392E372C32372E337A204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C3920202623393B2623393B732D34
          2C392D392C3943382C32322C342C31382C342C31337A222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225A
          6F6F6D5F496E2220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D2231382C31322031342C31322031342C38203132
          2C382031322C313220382C313220382C31342031322C31342031322C31382031
          342C31382031342C31342031382C313420222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D32392E372C32372E334C32322C31392E3663
          302C302D302E312D302E312D302E312D302E3163312E332D312E382C322E312D
          342E312C322E312D362E3563302D362E312D342E392D31312D31312D31314336
          2E392C322C322C362E392C322C313320202623393B73342E392C31312C31312C
          313163322E342C302C342E372D302E382C362E352D322E3163302C302C302C30
          2E312C302E312C302E316C372E372C372E3763302E332C302E332C302E392C30
          2E332C312E322C306C312E322D312E324333302E312C32382E322C33302E312C
          32372E362C32392E372C32372E337A20202623393B204D342C313363302D352C
          342D392C392D3963352C302C392C342C392C39732D342C392D392C3943382C32
          322C342C31382C342C31337A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D225A6F6F6D223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D32392E372C32372E334C32322C31392E366C2D302E312D302E316331
          2E332D312E382C322E312D342E312C322E312D362E3563302D362E312D342E39
          2D31312D31312D313153322C362E392C322C313373342E392C31312C31312C31
          3120202623393B2623393B63322E342C302C342E372D302E382C362E352D322E
          3163302C302C302C302E312C302E312C302E316C372E372C372E3763302E332C
          302E332C302E392C302E332C312E322C306C312E322D312E324333302E312C32
          382E322C33302E312C32372E362C32392E372C32372E337A204D342C31332020
          2623393B2623393B63302D352C342D392C392D3973392C342C392C39732D342C
          392D392C3953342C31382C342C31337A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D225F
          7833315F30305F7832355F2220786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474
          703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070
          782220793D22307078222076696577426F783D22302030203332203332222073
          74796C653D22656E61626C652D6261636B67726F756E643A6E65772030203020
          33322033323B2220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C7374796C6520747970653D22746578742F6373732220786D
          6C3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D32392E372C32332E334C32322E352C313663312D
          312E342C312E352D332E322C312E352D3563302D352D342D392D392D39732D39
          2C342D392C3973342C392C392C3963312E392C302C332E362D302E362C352D31
          2E356C372E332C372E3320202623393B63302E332C302E332C302E392C302E33
          2C312E322C306C312E322D312E324333302E312C32342E322C33302E312C3233
          2E362C32392E372C32332E337A204D382C313163302D332E392C332E312D372C
          372D3773372C332E312C372C37732D332E312C372D372C3753382C31342E392C
          382C31317A222F3E0D0A3C7061746820636C6173733D22426C75652220643D22
          4D31362C3330632D322C302D332D312E332D332D332E3963302D312E332C302E
          332D322E342C302E382D332E3163302E352D302E372C312E332D312E312C322E
          332D312E3163312E392C302C322E392C312E332C322E392C332E392020262339
          3B63302C312E332D302E332C322E332D302E382C334331372E372C32392E372C
          31362E392C33302C31362C33307A204D31362C32332E33632D302E382C302D31
          2E322C302E392D312E322C322E3863302C312E372C302E342C322E362C312E32
          2C322E3663302E382C302C312E312D302E392C312E312D322E3720202623393B
          4331372E312C32342E322C31362E382C32332E332C31362C32332E337A204D39
          2C3330632D322C302D332D312E332D332D332E3963302D312E332C302E332D32
          2E342C302E382D332E3143372E332C32322E342C382E312C32322C392E312C32
          3263312E392C302C322E392C312E332C322E392C332E3920202623393B63302C
          312E332D302E332C322E332D302E382C334331302E372C32392E372C392E392C
          33302C392C33307A204D392C32332E33632D302E382C302D312E322C302E392D
          312E322C322E3863302C312E372C302E342C322E362C312E322C322E3663302E
          382C302C312E312D302E392C312E312D322E3720202623393B4331302E312C32
          342E322C392E382C32332E332C392C32332E337A204D322C3330762D352E3248
          30762D312E3263302E332C302C302E362C302C302E382D302E3163302E332C30
          2C302E352D302E312C302E372D302E3363302E322D302E312C302E342D302E33
          2C302E352D302E3520202623393B63302E312D302E322C302E322D302E352C30
          2E332D302E3868312E33763848327A222F3E0D0A3C2F7376673E0D0A}
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
          73733D22426C75652220643D224D31362C3243382E332C322C322C382E332C32
          2C313673362E332C31342C31342C31347331342D362E332C31342D3134533233
          2E372C322C31362C327A204D31362C3663312E312C302C322C302E392C322C32
          732D302E392C322D322C32732D322D302E392D322D3220202623393B5331342E
          392C362C31362C367A204D32302C3234682D38762D326832762D38682D32762D
          326832683476313068325632347A222F3E0D0A3C2F7376673E0D0A}
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
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431
          314331433B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D382C3468313876366832563363302D302E352D302E352D31
          2D312D31483743362E352C322C362C322E352C362C337637683256347A222F3E
          0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C323848
          38563136483676313363302C302E352C302E352C312C312C3168323063302E35
          2C302C312D302E352C312D31563136682D325632387A222F3E0D0A3C70617468
          20636C6173733D225265642220643D224D32392C38483543342E342C382C342C
          382E342C342C3976313063302C302E362C302E342C312C312C3168323463302E
          362C302C312D302E342C312D3156394333302C382E342C32392E362C382C3239
          2C387A204D392E352C31372E394838762D372E3768312E3520202623393B5631
          372E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C
          302D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E38
          2D302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D
          302E312D302E312D302E352D302E322D312E316C302C3020202623393B63302C
          302E382C302E312C312E342C302E312C3276342E33682D312E34762D372E3768
          322E326C312E342C342E3663302E312C302E342C302E322C302E372C302E322C
          312E316C302C3063302E312D302E342C302E322D302E382C302E332D312E316C
          312E342D342E3648313976372E374831382E397A20202623393B204D32362C31
          372E33632D302E372C302E342D312E352C302E372D322E352C302E37632D312E
          312C302D322D302E332D322E362D315332302C31352E342C32302C31342E3273
          302E332D322E322C312D3373312E362D312E312C322E382D312E3163302E372C
          302C312E342C302E312C312E392C302E3356313220202623393B632D302E352D
          302E332D312E322D302E352D312E392D302E35632D302E362C302D312E322C30
          2E322D312E362C302E37732D302E362C312E312D302E362C312E3963302C302E
          382C302E322C312E342C302E352C312E3863302E342C302E342C302E382C302E
          362C312E352C302E3620202623393B63302E342C302C302E372D302E312C302E
          392D302E32762D312E35682D312E34762D312E344832365631372E337A222F3E
          0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D32392C38483543342E342C382C342C382E342C34
          2C3976313063302C302E362C302E342C312C312C3168323463302E362C302C31
          2D302E342C312D3156394333302C382E342C32392E362C382C32392C387A204D
          392E352C31372E394838762D372E3768312E3520202623393B2623393B563137
          2E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C30
          2D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E382D
          302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D30
          2E312D302E312D302E352D302E322D312E316C302C3020202623393B2623393B
          63302C302E382C302E312C312E342C302E312C3276342E33682D312E34762D37
          2E3768322E326C312E342C342E3663302E312C302E342C302E322C302E372C30
          2E322C312E316C302C3063302E312D302E342C302E322D302E382C302E332D31
          2E316C312E342D342E3648313976372E374831382E397A20202623393B262339
          3B204D32362C31372E33632D302E372C302E342D312E352C302E372D322E352C
          302E37632D312E312C302D322D302E332D322E362D315332302C31352E342C32
          302C31342E3273302E332D322E322C312D3373312E362D312E312C322E382D31
          2E3163302E372C302C312E342C302E312C312E392C302E335631322020262339
          3B2623393B632D302E352D302E332D312E322D302E352D312E392D302E35632D
          302E362C302D312E322C302E322D312E362C302E37732D302E362C312E312D30
          2E362C312E3963302C302E382C302E322C312E342C302E352C312E3863302E34
          2C302E342C302E382C302E362C312E352C302E3620202623393B2623393B6330
          2E342C302C302E372D302E312C302E392D302E32762D312E35682D312E34762D
          312E344832365631372E337A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431
          314331433B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
          636B2220643D224D382C3468313876366832563363302D302E352D302E352D31
          2D312D31483743362E352C322C362C322E352C362C337637683256347A222F3E
          0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C323848
          38563136483676313363302C302E352C302E352C312C312C3168323063302E35
          2C302C312D302E352C312D31563136682D325632387A222F3E0D0A3C70617468
          20636C6173733D225265642220643D224D32392C38483543342E342C382C342C
          382E342C342C3976313063302C302E362C302E342C312C312C3168323463302E
          362C302C312D302E342C312D3156394333302C382E342C32392E362C382C3239
          2C387A204D392E352C31372E394838762D372E3768312E3520202623393B5631
          372E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C
          302D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E38
          2D302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D
          302E312D302E312D302E352D302E322D312E316C302C3020202623393B63302C
          302E382C302E312C312E342C302E312C3276342E33682D312E34762D372E3768
          322E326C312E342C342E3663302E312C302E342C302E322C302E372C302E322C
          312E316C302C3063302E312D302E342C302E322D302E382C302E332D312E316C
          312E342D342E3648313976372E374831382E397A20202623393B204D32362C31
          372E33632D302E372C302E342D312E352C302E372D322E352C302E37632D312E
          312C302D322D302E332D322E362D315332302C31352E342C32302C31342E3273
          302E332D322E322C312D3373312E362D312E312C322E382D312E3163302E372C
          302C312E342C302E312C312E392C302E3356313220202623393B632D302E352D
          302E332D312E322D302E352D312E392D302E35632D302E362C302D312E322C30
          2E322D312E362C302E37732D302E362C312E312D302E362C312E3963302C302E
          382C302E322C312E342C302E352C312E3863302E342C302E342C302E382C302E
          362C312E352C302E3620202623393B63302E342C302C302E372D302E312C302E
          392D302E32762D312E35682D312E34762D312E344832365631372E337A222F3E
          0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C617373
          3D22426C75652220643D224D32392C38483543342E342C382C342C382E342C34
          2C3976313063302C302E362C302E342C312C312C3168323463302E362C302C31
          2D302E342C312D3156394333302C382E342C32392E362C382C32392C387A204D
          392E352C31372E394838762D372E3768312E3520202623393B2623393B563137
          2E397A204D31382E392C31372E39682D312E35762D342E3663302D302E352C30
          2D312C302E312D312E366C302C30632D302E312C302E352D302E322C302E382D
          302E322C316C2D312E362C352E32682D312E336C2D312E362D352E3263302D30
          2E312D302E312D302E352D302E322D312E316C302C3020202623393B2623393B
          63302C302E382C302E312C312E342C302E312C3276342E33682D312E34762D37
          2E3768322E326C312E342C342E3663302E312C302E342C302E322C302E372C30
          2E322C312E316C302C3063302E312D302E342C302E322D302E382C302E332D31
          2E316C312E342D342E3648313976372E374831382E397A20202623393B262339
          3B204D32362C31372E33632D302E372C302E342D312E352C302E372D322E352C
          302E37632D312E312C302D322D302E332D322E362D315332302C31352E342C32
          302C31342E3273302E332D322E322C312D3373312E362D312E312C322E382D31
          2E3163302E372C302C312E342C302E312C312E392C302E335631322020262339
          3B2623393B632D302E352D302E332D312E322D302E352D312E392D302E35632D
          302E362C302D312E322C302E322D312E362C302E37732D302E362C312E312D30
          2E362C312E3963302C302E382C302E322C312E342C302E352C312E3863302E34
          2C302E342C302E382C302E362C312E352C302E3620202623393B2623393B6330
          2E342C302C302E372D302E312C302E392D302E32762D312E35682D312E34762D
          312E344832365631372E337A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D225A6F6F6D223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D32392E372C32372E334C32322C31392E366C2D302E312D302E316331
          2E332D312E382C322E312D342E312C322E312D362E3563302D362E312D342E39
          2D31312D31312D313153322C362E392C322C313373342E392C31312C31312C31
          3120202623393B2623393B63322E342C302C342E372D302E382C362E352D322E
          3163302C302C302C302E312C302E312C302E316C372E372C372E3763302E332C
          302E332C302E392C302E332C312E322C306C312E322D312E324333302E312C32
          382E322C33302E312C32372E362C32392E372C32372E337A204D342C31332020
          2623393B2623393B63302D352C342D392C392D3973392C342C392C39732D342C
          392D392C3953342C31382C342C31337A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
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
          73733D22426C75652220643D224D32312E362C31342E3463302E352C302E332C
          302E352C302E382C302C312E314C31322C32322E3776322E3663302C302E362C
          302E342C302E382C302E392C302E356C31322E372D31302E3463302E352D302E
          332C302E352D302E372C302D312E3120202623393B4C31322E392C342E314331
          322E342C332E382C31322C342C31322C342E3676322E364C32312E362C31342E
          347A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D3137
          2E362C31352E3563302E352D302E332C302E352D302E382C302D312E314C322E
          392C342E3143322E342C332E382C322C342C322C342E367632302E3763302C30
          2E362C302E342C302E382C302E392C302E354C31372E362C31352E357A222F3E
          0D0A3C7061746820636C6173733D22426C75652220643D224D32392C34683263
          302E362C302C312C302E342C312C3176323063302C302E362D302E342C312D31
          2C31682D32632D302E362C302D312D302E342D312D3156354332382C342E342C
          32382E342C342C32392C347A222F3E0D0A3C2F7376673E0D0A}
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
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2250
          72696E74223E0D0A09093C706F6C79676F6E20636C6173733D22426C61636B22
          20706F696E74733D2231302C342032322C342032322C31322032342C31322032
          342C3220382C3220382C31322031302C3132202623393B222F3E0D0A09093C70
          61746820636C6173733D22426C61636B2220643D224D32382C3130682D327633
          63302C302E362D302E342C312D312C314837632D302E362C302D312D302E342D
          312D31762D334834632D312E312C302D322C302E392D322C3276313263302C31
          2E312C302E392C322C322C3268347634683136762D34683420202623393B2623
          393B63312E312C302C322D302E392C322D325631324333302C31302E392C3239
          2E312C31302C32382C31307A204D32322C323476327632483130762D32762D32
          762D346831325632347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
          6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D225265642220643D224D32392C32483343322E352C322C322C322E352C32
          2C3376323663302C302E352C302E352C312C312C3168323663302E352C302C31
          2D302E352C312D3156334333302C322E352C32392E352C322C32392C327A204D
          32342C32326C2D322C326C2D362D366C2D362C3620202623393B6C2D322D326C
          362D366C2D362D366C322D326C362C366C362D366C322C326C2D362C364C3234
          2C32327A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253656C656374223E0D0A09093C7061746820636C6173733D22426C61636B
          2220643D224D31382E322C32304832364C31302C347632326C352E332D352E33
          6C322E372C362E3763302E322C302E352C302E382C302E382C312E332C302E35
          6C302E392D302E3463302E352D302E322C302E382D302E382C302E352D312E33
          4C31382E322C32307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2248616E64546F6F6C223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D33312E312C382E33632D312E312D302E372D322E352D302E
          322D322E392C302E396C2D312E392C342E31632D302E322C302E342D302E362C
          302E362D312C302E366830632D302E372C302D312E322D302E362D312D312E33
          4C32362C342E3420202623393B2623393B63302E322D312E312D302E342D322E
          312D312E352D322E34632D312E312D302E322D322E312C302E342D322E342C31
          2E356C2D312E392C372E36632D302E312C302E352D302E352C302E382D312C30
          2E38682D302E31632D302E362C302D312E312D302E352D312E312D312E315632
          2E3120202623393B2623393B63302D312D302E372D312E392D312E362D322E31
          4331352E312D302E322C31342C302E382C31342C3276382E3963302C302E362D
          302E352C312E312D312E312C312E31682D302E31632D302E352C302D302E392D
          302E332D312D302E384C31302C332E3643392E372C322E342C382E342C312E37
          2C372E332C322E3220202623393B2623393B43362E332C322E352C352E392C33
          2E362C362E312C342E366C322E352C31312E3363302E322C302E382D302E372C
          312E352D312E352C312E316C2D342D322E36632D302E382D302E352D312E382D
          302E342D322E352C302E33632D302E382C302E382D302E382C322E312C302C32
          2E394C31302E392C323820202623393B2623393B63312E322C312E332C332C32
          2C342E392C3248323063322E392C302C342E372D322C352E392D342E386C352E
          392D31342E334333322E322C31302C33312E392C382E392C33312E312C382E33
          7A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253656C656374416C6C223E0D0A09093C7061746820636C6173733D22426C
          61636B2220643D224D342C32683476324834763448325634563248347A204D31
          302C3468345632682D3456347A204D31362C3468345632682D3456347A204D32
          362C32682D34763268347634683256324832367A204D342C3130483276346832
          5631307A204D342C313648327634683220202623393B2623393B5631367A204D
          342C32324832763668326834762D3248345632327A204D31302C32386834762D
          32682D345632387A204D31362C32386834762D32682D345632387A204D32362C
          3236682D3476326836762D31762D31762D34682D325632367A204D32362C3230
          6832762D34682D325632307A204D32362C31346832762D3420202623393B2623
          393B682D325631347A222F3E0D0A09093C7265637420783D22362220793D2236
          2220636C6173733D22426C7565222077696474683D2231382220686569676874
          3D223138222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2250726576696F757356696577223E0D0A09093C7061746820636C6173733D
          22426C75652220643D224D31362C3243382E332C322C322C382E332C322C3136
          73362E332C31342C31342C31347331342D362E332C31342D31345332332E372C
          322C31362C327A204D32342C3138682D3876366C2D382D386C382D3876366838
          5631387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D224E65787456696577223E0D0A09093C7061746820636C6173733D22426C75
          652220643D224D31362C3243382E332C322C322C382E332C322C313673362E33
          2C31342C31342C31347331342D362E332C31342D31345332332E372C322C3136
          2C327A204D31362C3234762D364838762D34683856386C382C384C31362C3234
          7A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436C6F636B77697365223E0D0A09093C7061746820636C61
          73733D22477265656E2220643D224D31382E362C32322E364331372E332C3233
          2E352C31352E372C32342C31342C3234632D342E342C302D382D332E362D382D
          3873332E362D382C382D3873382C332E362C382C38682D356C372C376C372D37
          682D3563302D362E362D352E342D31322D31322D313220202623393B2623393B
          53322C392E342C322C313663302C362E362C352E342C31322C31322C31326332
          2E382C302C352E342D312C372E342D322E364C31382E362C32322E367A222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436C6F636B77697365223E0D0A09093C7061746820636C61
          73733D22477265656E2220643D224D31382E362C32322E364331372E332C3233
          2E352C31352E372C32342C31342C3234632D342E342C302D382D332E362D382D
          3873332E362D382C382D3873382C332E362C382C38682D356C372C376C372D37
          682D3563302D362E362D352E342D31322D31322D313220202623393B2623393B
          53322C392E342C322C313663302C362E362C352E342C31322C31322C31326332
          2E382C302C352E342D312C372E342D322E364C31382E362C32322E367A222F3E
          0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22526F74617465436F756E746572636C6F636B77697365223E0D0A09093C70
          61746820636C6173733D22477265656E2220643D224D31382C344331312E342C
          342C362C392E342C362C313648316C372C376C372D37682D3563302D342E342C
          332E362D382C382D3873382C332E362C382C38732D332E362C382D382C38632D
          312E372C302D332E332D302E352D342E362D312E3420202623393B2623393B6C
          2D322E392C322E3963322C312E362C342E362C322E362C372E342C322E366336
          2E362C302C31322D352E342C31322D31324333302C392E342C32342E362C342C
          31382C347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          696E64223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
          4D32392E352C31392E374C32392E352C31392E374C32392E352C31392E374332
          392E352C31392E372C32392E352C31392E372C32392E352C31392E374C32332E
          382C366C302C30632D302E342D312E322D312E352D322D322E382D3220202623
          393B2623393B632D312E372C302D332C312E332D332C337633682D3456376330
          2D312E372D312E332D332D332D3343392E372C342C382E362C342E392C382E32
          2C366C302C304C322E352C31392E3763302C302C302C302C302C306C302C3068
          3043322E322C32302E342C322C32312E322C322C323220202623393B2623393B
          63302C332E332C322E372C362C362C3673362D322E372C362D36762D34683476
          3463302C332E332C322E372C362C362C3673362D322E372C362D364333302C32
          312E322C32392E382C32302E342C32392E352C31392E377A204D382C3236632D
          322E322C302D342D312E382D342D3473312E382D342C342D3420202623393B26
          23393B73342C312E382C342C345331302E322C32362C382C32367A204D32342C
          3236632D322E322C302D342D312E382D342D3473312E382D342C342D3473342C
          312E382C342C345332362E322C32362C32342C32367A222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22456E61626C655363726F6C6C696E67223E0D0A09093C7061746820636C61
          73733D22426C61636B2220643D224D32362C3076313248385630483676313363
          302C302E362C302E342C312C312C3168323063302E362C302C312D302E342C31
          2D3156304832367A204D32362C33325632304838763132483656313963302D30
          2E362C302E342D312C312D3168323020202623393B2623393B63302E362C302C
          312C302E342C312C317631334832367A222F3E0D0A09093C7061746820636C61
          73733D22426C75652220643D224D32322C36483132763268313056367A204D32
          322C34483132563268313056347A204D32322C3330483132762D326831305633
          307A204D32322C323448313276326831305632347A222F3E0D0A093C2F673E0D
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
          643D224578706F7274223E0D0A09093C7061746820636C6173733D22426C6163
          6B2220643D224D31302C31324836563668345631327A204D32322C3132763676
          3963302C302E362D302E342C312D312C314831632D302E362C302D312D302E34
          2D312D31563763302D302E362C302E342D312C312D3168337638683134762D32
          4832327A204D31382C3138483420202623393B2623393B76366831345631387A
          222F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F
          696E74733D2231362C362032342C362032342C322033322C382032342C313420
          32342C31302031362C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2253
          6176652220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F637373223E2E426C61636B7B66696C
          6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D22426C61636B2220643D224D33312C30483139632D302E362C302D312C302E
          342D312C3176313663302C302E362C302E342C312C312C3168313263302E362C
          302C312D302E342C312D3156314333322C302E342C33312E362C302C33312C30
          7A204D33302C313648323056326831305631367A222F3E0D0A3C706174682063
          6C6173733D22426C61636B2220643D224D32322C323076344836762D36683130
          762D3448365634483343322E342C342C322C342E342C322C3576323263302C30
          2E362C302E342C312C312C3168323263302E362C302C312D302E342C312D3176
          2D374832327A204D31362C3448387638683856347A20202623393B204D31322C
          3130682D32563668325631307A222F3E0D0A3C2F7376673E0D0A}
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
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2253617665223E0D0A09093C673E0D
          0A0909093C7061746820636C6173733D22426C61636B2220643D224D32372C34
          682D3376313048385634483543342E342C342C342C342E342C342C3576323263
          302C302E362C302E342C312C312C3168323263302E362C302C312D302E342C31
          2D3156354332382C342E342C32372E362C342C32372C347A204D32342C323448
          3820202623393B2623393B2623393B762D366831365632347A204D31302C3476
          3868313056344831307A204D31342C3130682D32563668325631307A222F3E0D
          0A09093C2F673E0D0A09093C673E0D0A0909093C7061746820636C6173733D22
          426C61636B2220643D224D32372C34682D3376313048385634483543342E342C
          342C342C342E342C342C3576323263302C302E362C302E342C312C312C316832
          3263302E362C302C312D302E342C312D3156354332382C342E342C32372E362C
          342C32372C347A204D32342C3234483820202623393B2623393B2623393B762D
          366831365632347A204D31302C34763868313056344831307A204D31342C3130
          682D32563668325631307A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C
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
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D22496D706F7274223E0D0A09093C7061746820636C6173733D22426C61636B
          2220643D224D31322C31324838563668345631327A204D32342C313776317639
          63302C302E362D302E342C312D312C314833632D302E362C302D312D302E342D
          312D31563763302D302E362C302E342D312C312D31683376386831344C32342C
          31377A204D32302C3138483620202623393B2623393B76366831345631387A22
          2F3E0D0A09093C706F6C79676F6E20636C6173733D22477265656E2220706F69
          6E74733D2233322C362032342C362032342C322031362C382032342C31342032
          342C31302033322C3130202623393B222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
        FileName = 'SVG Images\PDF Viewer\Import.svg'
        Keywords = 'PDF Viewer;Import'
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
          63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
          333B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E59656C6C6F777B66696C
          6C3A234646423131353B7D262331333B262331303B2623393B2E426C75657B66
          696C6C3A233131373744373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2252657365744C61796F75744F7074696F6E73223E0D0A09093C7061746820
          636C6173733D22477265656E2220643D224D31362C34632D332E332C302D362E
          332C312E332D382E352C332E354C342C3476313068302E3268342E314831346C
          2D332E362D332E364331312E382C382E392C31332E382C382C31362C3863342E
          342C302C382C332E362C382C38732D332E362C382D382C3820202623393B2623
          393B632D332E372C302D362E382D322E362D372E372D3648342E3263312C352E
          372C352E392C31302C31312E382C313063362E362C302C31322D352E342C3132
          2D31325332322E362C342C31362C347A222F3E0D0A093C2F673E0D0A3C2F7376
          673E0D0A}
        FileName = 'SVG Images\Dashboards\ResetLayoutOptions.svg'
        Keywords = 'Dashboards;ResetLayoutOptions'
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
          3B7D262331333B262331303B2623393B2E5265647B66696C6C3A234431314331
          433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220
          643D224D32352E362C362E326C2D332E382D332E38632D302E352D302E352D31
          2E342D302E352D312E392C306C2D322E352C322E356C352E382C352E386C322E
          352D322E354332362E312C372E362C32362E312C362E382C32352E362C362E32
          7A222F3E0D0A3C706F6C79676F6E20636C6173733D22426C75652220706F696E
          74733D22322C323620382C323620322C323020222F3E0D0A3C7061746820636C
          6173733D22426C75652220643D224D32312E372C31324C31362C362E334C332E
          352C31382E386C352E382C352E386C322E372D322E374331322E312C31362E35
          2C31362E342C31322E322C32312E372C31327A222F3E0D0A3C7061746820636C
          6173733D225265642220643D224D32322C3134632D342E342C302D382C332E36
          2D382C3873332E362C382C382C3873382D332E362C382D385332362E342C3134
          2C32322C31347A204D32322C313663312E312C302C322E322C302E332C332E31
          2C302E396C2D382E322C382E3220202623393B632D302E362D302E392D302E39
          2D322D302E392D332E314331362C31382E372C31382E372C31362C32322C3136
          7A204D32322C3238632D312E342C302D322E372D302E352D332E372D312E336C
          382E342D382E3463302E382C312C312E332C322E332C312E332C332E37202026
          23393B4332382C32352E332C32352E332C32382C32322C32387A222F3E0D0A3C
          2F7376673E0D0A}
        FileName = 'SVG Images\XAF\Demo_Security_ReadOnly.svg'
        Keywords = 'XAF;Demo;Security;ReadOnly'
      end>
  end
  object SaveDialog1: TdxSaveFileDialog
    DefaultExt = 'pdf'
    Filter = 'PDF Document (*.pdf)|*.pdf'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 528
    Top = 448
  end
  object ofdOpenFormDataDialog: TdxOpenFileDialog
    Left = 640
    Top = 504
  end
end
