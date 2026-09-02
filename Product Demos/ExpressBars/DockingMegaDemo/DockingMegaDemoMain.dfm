object DockingMegaDemoMainForm: TDockingMegaDemoMainForm
  Left = 164
  Top = 90
  Caption = 'RAD Studio Inspired UI Demo'
  ClientHeight = 818
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    1200
    818)
  TextHeight = 13
  object dsHost: TdxDockSite
    Left = 0
    Top = 51
    Width = 1200
    Height = 704
    Align = alClient
    DockingType = 5
    OriginalWidth = 1200
    OriginalHeight = 704
    object dxLayoutDockSite2: TdxLayoutDockSite
      Left = 0
      Top = 0
      Width = 900
      Height = 680
      ExplicitWidth = 896
      ExplicitHeight = 679
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      object dxLayoutDockSite1: TdxLayoutDockSite
        Left = 300
        Top = 0
        Width = 600
        Height = 680
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
        object dxLayoutDockSite5: TdxLayoutDockSite
          Left = 0
          Top = 0
          Width = 600
          Height = 680
          ExplicitWidth = 596
          ExplicitHeight = 679
          DockingType = 0
          OriginalWidth = 300
          OriginalHeight = 200
          object dxLayoutDockSite3: TdxLayoutDockSite
            Left = 0
            Top = 0
            Width = 600
            Height = 680
            DockingType = 0
            OriginalWidth = 300
            OriginalHeight = 200
          end
          object dxTabContainerDockSite2: TdxTabContainerDockSite
            Left = 0
            Top = 0
            Width = 600
            Height = 680
            ActiveChildIndex = 0
            AllowFloating = True
            AutoHide = False
            CustomCaptionButtons.Buttons = <>
            ShowCaption = False
            TabsProperties.CloseTabWithMiddleClick = True
            TabsProperties.CustomButtons.Buttons = <>
            TabsProperties.Options = [pcoAlwaysShowGoDialogButton, pcoCloseButton, pcoGoDialog, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize]
            TabsProperties.TabPosition = tpTop
            DockingType = 0
            OriginalWidth = 470
            OriginalHeight = 285
            object dpStartPage: TdxDockPanel
              Left = 0
              Top = 0
              Width = 596
              Height = 651
              AllowFloating = True
              AutoHide = False
              Caption = 'Welcome Page'
              CustomCaptionButtons.Buttons = <>
              ImageIndex = 8
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitWidth = 592
              ExplicitHeight = 650
              DockingType = 0
              OriginalWidth = 470
              OriginalHeight = 285
              object reWelcome: TcxRichEdit
                AlignWithMargins = True
                Left = 5
                Top = 5
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Properties.ReadOnly = True
                Properties.ScrollBars = ssVertical
                Lines.Strings = (
                  'reWelcome')
                Style.BorderStyle = ebsNone
                Style.Edges = []
                Style.TransparentBorder = False
                TabOrder = 0
                ExplicitWidth = 582
                ExplicitHeight = 640
                Height = 641
                Width = 586
              end
            end
            object dpUnit1: TdxDockPanel
              Left = 0
              Top = 0
              Width = 596
              Height = 651
              AllowFloating = True
              AutoHide = False
              Caption = 'Unit1.pas'
              CustomCaptionButtons.Buttons = <>
              ImageIndex = 9
              TabsProperties.CustomButtons.Buttons = <>
              ExplicitWidth = 592
              ExplicitHeight = 650
              DockingType = 0
              OriginalWidth = 185
              OriginalHeight = 140
              object reUnit1: TcxRichEdit
                AlignWithMargins = True
                Left = 5
                Top = 5
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                Properties.ScrollBars = ssBoth
                Style.BorderStyle = ebsNone
                Style.Edges = []
                Style.LookAndFeel.SkinName = ''
                Style.TransparentBorder = False
                StyleDisabled.LookAndFeel.SkinName = ''
                StyleFocused.LookAndFeel.SkinName = ''
                StyleHot.LookAndFeel.SkinName = ''
                TabOrder = 0
                ExplicitWidth = 582
                ExplicitHeight = 640
                Height = 641
                Width = 586
              end
            end
          end
        end
        object dxTabContainerDockSite1: TdxTabContainerDockSite
          Left = 0
          Top = 0
          Width = 0
          Height = 159
          Visible = False
          ActiveChildIndex = 2
          AllowFloating = True
          AutoHide = True
          AutoHideBarExpandAllTabs = True
          CustomCaptionButtons.Buttons = <>
          TabsProperties.CustomButtons.Buttons = <>
          AutoHidePosition = 3
          DockingType = 4
          OriginalWidth = 179
          OriginalHeight = 159
          object dpOutput: TdxDockPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 135
            AllowFloating = True
            AutoHide = False
            Caption = 'Messages'
            CustomCaptionButtons.Buttons = <>
            ImageIndex = 6
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 0
            OriginalWidth = 179
            OriginalHeight = 159
            object meMessages: TcxMemo
              Left = 0
              Top = 0
              Align = alClient
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 135
              Width = 0
            end
          end
          object dpCallStack: TdxDockPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 135
            AllowFloating = True
            AutoHide = False
            Caption = 'Call Stack'
            CustomCaptionButtons.Buttons = <>
            ImageIndex = 5
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 0
            OriginalWidth = 139
            OriginalHeight = 159
            object lvCallStack: TcxListView
              Left = 0
              Top = 0
              Width = 0
              Height = 135
              Align = alClient
              Columns = <
                item
                  Width = 20
                end
                item
                  Caption = 'Name'
                  Width = 100
                end
                item
                  Caption = 'Language'
                  Width = 200
                end>
              TabOrder = 0
              ViewStyle = vsReport
            end
          end
          object dpWatch: TdxDockPanel
            Left = 0
            Top = 0
            Width = 0
            Height = 135
            AllowFloating = True
            AutoHide = False
            Caption = 'Watches'
            CustomCaptionButtons.Buttons = <>
            ImageIndex = 4
            TabsProperties.CustomButtons.Buttons = <>
            DockingType = 0
            OriginalWidth = 215
            OriginalHeight = 159
            object lvWatches: TcxListView
              Left = 0
              Top = 0
              Width = 0
              Height = 135
              Align = alClient
              Columns = <
                item
                  Width = 20
                end
                item
                  Caption = 'Name'
                  Width = 100
                end
                item
                  Caption = 'Value'
                  Width = 200
                end>
              TabOrder = 0
              ViewStyle = vsReport
            end
          end
        end
      end
      object dxVertContainerDockSite1: TdxVertContainerDockSite
        Left = 0
        Top = 0
        Width = 300
        Height = 680
        ActiveChildIndex = -1
        AllowFloating = True
        AutoHide = False
        CustomCaptionButtons.Buttons = <>
        DockingType = 1
        OriginalWidth = 300
        OriginalHeight = 297
        object dpStructure: TdxDockPanel
          Left = 0
          Top = 0
          Width = 300
          Height = 308
          AllowFloating = True
          AutoHide = False
          Caption = 'Structure'
          CustomCaptionButtons.Buttons = <>
          ImageIndex = 3
          TabsProperties.CustomButtons.Buttons = <>
          DockingType = 2
          OriginalWidth = 300
          OriginalHeight = 329
          object tvStructure: TdxTreeViewControl
            Left = 0
            Top = 0
            Width = 296
            Height = 284
            Align = alClient
            Images = ilStructure
            TabOrder = 0
            OnSelectionChanged = tvStructureSelectionChanged
            ExplicitHeight = 283
          end
        end
        object dpProperties: TdxDockPanel
          Left = 0
          Top = 308
          Width = 300
          Height = 372
          AllowFloating = True
          AutoHide = False
          Caption = 'Object Inspector'
          CustomCaptionButtons.Buttons = <>
          ImageIndex = 2
          TabsProperties.CustomButtons.Buttons = <>
          DockingType = 2
          OriginalWidth = 300
          OriginalHeight = 398
          object cxRTTIInspector1: TcxRTTIInspector
            Left = 0
            Top = 27
            Width = 296
            Height = 321
            BorderStyle = cxcbsNone
            Align = alClient
            InspectedObject = DockingManager
            TabOrder = 0
            Version = 1
          end
          object cbObjects: TcxComboBox
            AlignWithMargins = True
            Left = 0
            Top = 3
            Margins.Left = 0
            Margins.Right = 0
            Align = alTop
            Properties.DropDownListStyle = lsEditFixedList
            Properties.IncrementalFiltering = True
            Properties.OnChange = cbObjectsPropertiesChange
            TabOrder = 1
            Width = 296
          end
        end
      end
    end
    object dxVertContainerDockSite2: TdxVertContainerDockSite
      Left = 900
      Top = 0
      Width = 300
      Height = 680
      ActiveChildIndex = -1
      AllowFloating = True
      AutoHide = False
      CustomCaptionButtons.Buttons = <>
      ExplicitLeft = 896
      ExplicitHeight = 679
      DockingType = 3
      OriginalWidth = 300
      OriginalHeight = 264
      object dpProjectManager: TdxDockPanel
        Left = 0
        Top = 0
        Width = 300
        Height = 328
        AllowFloating = True
        AutoHide = False
        Caption = 'Project Manager'
        CustomCaptionButtons.Buttons = <>
        ImageIndex = 1
        TabsProperties.CustomButtons.Buttons = <>
        DockingType = 2
        OriginalWidth = 300
        OriginalHeight = 351
        object tvProjectManager: TdxTreeViewControl
          Left = 0
          Top = 0
          Width = 296
          Height = 304
          Align = alClient
          Images = ilProjectManager
          TabOrder = 0
          OnCustomDrawNode = tvProjectManagerCustomDrawNode
          Data = {
            01000100C00200000A00000000090100000028000000000C020000000D000000
            500072006F006A00650063007400470072006F00750070003100400000001A0C
            0800000008000000FEFFFFFF020000001300000044006F0063006B0069006E00
            67004D00650067006100440065006D006F002E006500780065003E0000000A0C
            040000000400000002000000140000004200750069006C006400200043006F00
            6E00660069006700750072006100740069006F006E007300200000000A050600
            00000600000007000000520065006C006500610073006500200000001A050600
            000006000000FEFFFFFF0500000044006500620075006700360000000A0C0200
            0000020000000200000010000000540061007200670065007400200050006C00
            6100740066006F0072006D0073002E0000000A0502000000020000000E000000
            330032002D006200690074002000570069006E0064006F007700730032000000
            1A050200000002000000FEFFFFFF0E000000360034002D006200690074002000
            570069006E0064006F00770073001A0000000A0C090000000900000003000000
            020000002E002E00340000000A0C0700000007000000010000000F0000006400
            7800410062006F0075007400440065006D006F002E0070006100730030000000
            0A0505000000050000000F00000064007800410062006F007500740044006500
            6D006F002E00640066006D00300000000A0501000000010000000F0000006400
            7800440065006D006F005500740069006C0073002E0070006100730044000000
            0A0C0700000007000000010000001700000044006F0063006B0069006E006700
            4D00650067006100440065006D006F004D00610069006E002E00700061007300
            400000000A0505000000050000001700000044006F0063006B0069006E006700
            4D00650067006100440065006D006F004D00610069006E002E00640066006D00}
        end
      end
      object dpToolbox: TdxDockPanel
        Left = 0
        Top = 328
        Width = 300
        Height = 352
        ManagerFont = False
        ParentFont = True
        AllowFloating = True
        AutoHide = False
        Caption = 'Tool Palette'
        CustomCaptionButtons.Buttons = <>
        ImageIndex = 0
        TabsProperties.CustomButtons.Buttons = <>
        DockingType = 2
        OriginalWidth = 300
        OriginalHeight = 376
        object dxNavBar1: TdxNavBar
          Left = 0
          Top = 0
          Width = 296
          Height = 328
          Align = alClient
          ActiveGroupIndex = 0
          TabOrder = 0
          TabStop = True
          View = 20
          OptionsBehavior.Common.AllowExpandAnimation = True
          OptionsBehavior.NavigationPane.Collapsible = True
          OptionsImage.SmallImages = iComponentsIcons
          OptionsView.NavigationPane.MaxVisibleGroups = 0
          ExplicitHeight = 327
          object bgStandard: TdxNavBarGroup
            Caption = 'Standard'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = biLabel
              end
              item
                Item = biEdit
              end
              item
                Item = biButton
              end
              item
                Item = biCheckBox
              end
              item
                Item = biRadioButton
              end
              item
                Item = biGroupBox
              end
              item
                Item = biImage
              end>
          end
          object bgSystem: TdxNavBarGroup
            Caption = 'System'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = biTimer
              end>
          end
          object bgDX: TdxNavBarGroup
            Caption = 'Developer Express'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            Links = <
              item
                Item = biGrid
              end
              item
                Item = biTreeList
              end
              item
                Item = biBarManager
              end
              item
                Item = biPivot
              end
              item
                Item = biLayout
              end
              item
                Item = biBarCode
              end
              item
                Item = biTile
              end
              item
                Item = biPDFViewer
              end>
          end
          object bgTemp: TdxNavBarGroup
            Caption = 'Temp'
            SelectedLinkIndex = -1
            TopVisibleLinkIndex = 0
            OptionsExpansion.Expanded = False
            Links = <>
          end
          object biLabel: TdxNavBarItem
            Caption = 'Label'
            SmallImageIndex = 0
          end
          object biEdit: TdxNavBarItem
            Caption = 'Edit'
            SmallImageIndex = 1
          end
          object biButton: TdxNavBarItem
            Caption = 'Button'
            SmallImageIndex = 2
          end
          object biCheckBox: TdxNavBarItem
            Caption = 'CheckBox'
            SmallImageIndex = 3
          end
          object biRadioButton: TdxNavBarItem
            Caption = 'RadioButton'
            SmallImageIndex = 4
          end
          object biGroupBox: TdxNavBarItem
            Caption = 'GroupBox'
            SmallImageIndex = 5
          end
          object biPanel: TdxNavBarItem
            Caption = 'Panel'
            SmallImageIndex = 6
          end
          object biImage: TdxNavBarItem
            Caption = 'Image'
            SmallImageIndex = 7
          end
          object biMainMenu: TdxNavBarItem
            Caption = 'MainMenu'
            SmallImageIndex = 8
          end
          object biTimer: TdxNavBarItem
            Caption = 'Timer'
            SmallImageIndex = 9
          end
          object biGrid: TdxNavBarItem
            Caption = 'Grid'
            SmallImageIndex = 10
          end
          object biTreeList: TdxNavBarItem
            Caption = 'TreeList'
            SmallImageIndex = 11
          end
          object biBarManager: TdxNavBarItem
            Caption = 'BarManager'
            SmallImageIndex = 12
          end
          object biPivot: TdxNavBarItem
            Caption = 'PivotGrid'
            SmallImageIndex = 13
          end
          object biLayout: TdxNavBarItem
            Caption = 'LayoutControl'
            SmallImageIndex = 14
          end
          object biTile: TdxNavBarItem
            Caption = 'TileControl'
            SmallImageIndex = 15
          end
          object biNavBar: TdxNavBarItem
            Caption = 'NavBar'
            SmallImageIndex = 16
          end
          object biBarCode: TdxNavBarItem
            Caption = 'BarCode'
            SmallImageIndex = 17
          end
          object biGauge: TdxNavBarItem
            Caption = 'Gauge'
            SmallImageIndex = 18
          end
          object biPDFViewer: TdxNavBarItem
            Caption = 'PDF Viewer'
            SmallImageIndex = 19
          end
          object biMap: TdxNavBarItem
            Caption = 'Map Control'
            SmallImageIndex = 20
          end
        end
      end
    end
  end
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 755
    Width = 1200
    Height = 63
    Align = alBottom
    TabOrder = 1
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    ExplicitTop = 754
    ExplicitWidth = 1196
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lliDescription: TdxLayoutLabeledItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
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
      CaptionOptions.Text = 
        'This example demonstrates an application with docking functional' +
        'ity similar to the RAD Studio IDE. It displays a number of dock ' +
        'panels that can be docked to the form'#39's edges, combined into tab' +
        ' containers and side containers.'
      CaptionOptions.WordWrap = True
      Index = 0
    end
  end
  object DockingManager: TdxDockingManager
    Color = clBtnFace
    DefaultHorizContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultHorizContainerSiteProperties.Dockable = True
    DefaultHorizContainerSiteProperties.ImageIndex = -1
    DefaultVertContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultVertContainerSiteProperties.Dockable = True
    DefaultVertContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.CustomCaptionButtons.Buttons = <>
    DefaultTabContainerSiteProperties.Dockable = True
    DefaultTabContainerSiteProperties.ImageIndex = -1
    DefaultTabContainerSiteProperties.TabsProperties.CustomButtons.Buttons = <>
    DockStyle = dsVS2005
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    Images = ilDockIcons
    Options = [doActivateAfterDocking, doDblClickDocking, doFloatingOnTop, doTabContainerHasCaption, doTabContainerCanAutoHide, doSideContainerCanClose, doSideContainerCanAutoHide, doRedrawOnResize, doFillDockingSelection]
    OnLayoutChanged = DockingManagerLayoutChanged
    Left = 568
    PixelsPerInch = 96
  end
  object BarManager: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'File'
      'View'
      'Style'
      'Help'
      'Menus'
      'Popup')
    Categories.ItemsVisibles = (
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
      True)
    ImageOptions.Images = imBarIcons
    ImageOptions.LargeImages = imBarIcons
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 598
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      51
      0)
    object BarManagerBar1: TdxBar
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 43
      FloatTop = 96
      FloatClientWidth = 132
      FloatClientHeight = 38
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItemFile'
        end
        item
          Visible = True
          ItemName = 'siEdit'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItemInsert'
        end
        item
          Visible = True
          ItemName = 'siRun'
        end
        item
          Visible = True
          ItemName = 'dxBarDockStyle'
        end
        item
          Visible = True
          ItemName = 'siStyles'
        end
        item
          Visible = True
          ItemName = 'siHelp'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxbStandard: TdxBar
      Caption = 'Standard'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 404
      FloatTop = 341
      FloatClientWidth = 46
      FloatClientHeight = 22
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
          ItemName = 'bbSaveAll'
        end>
      OldName = 'File'
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbDebug: TdxBar
      Caption = 'Debug'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 137
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 1080
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRun'
        end
        item
          Visible = True
          ItemName = 'bbPause'
        end
        item
          Visible = True
          ItemName = 'bbStop'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbTraceInto'
        end
        item
          Visible = True
          ItemName = 'bbStepOver'
        end
        item
          Visible = True
          ItemName = 'bbRunUntilReturn'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxbDesktop: TdxBar
      Caption = 'Desktop'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 308
      DockedTop = 25
      DockingStyle = dsTop
      FloatLeft = 1080
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 118
          Visible = True
          ItemName = 'edtDesktopPresets'
        end
        item
          Visible = True
          ItemName = 'bbLoadLayout'
        end
        item
          Visible = True
          ItemName = 'bbSaveLayout'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButtonExit: TdxBarLargeButton
      Caption = 'E&xit'
      Category = 0
      Hint = 'Exit'
      Visible = ivAlways
      ShortCut = 32856
      OnClick = dxBarButtonExitClick
      HotImageIndex = 38
      LargeImageIndex = 38
    end
    object siStyles: TdxBarSubItem
      Caption = 'Styles'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarDockStyle: TdxBarSubItem
      Caption = 'Dock Style'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDockStyleStandard'
        end
        item
          Visible = True
          ItemName = 'dxBarDockStyleVS2005'
        end>
    end
    object dxBarDockStyleStandard: TdxBarButton
      Caption = 'Standard'
      Category = 0
      Hint = 'Standard'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarDockStyleStandardClick
    end
    object dxBarDockStyleVS2005: TdxBarButton
      Caption = 'VS2005'
      Category = 0
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxBarDockStyleStandardClick
    end
    object bbShowStructure: TdxBarButton
      Caption = 'Structure'
      Category = 0
      Hint = 'Structure'
      Visible = ivAlways
      ImageIndex = 5
      ShortCut = 41082
      OnClick = bbShowStructureClick
    end
    object bbShowToolPalette: TdxBarButton
      Caption = 'Tool Palette'
      Category = 0
      Hint = 'Tool Palette'
      Visible = ivAlways
      ImageIndex = 2
      ShortCut = 49232
      OnClick = bbShowToolPaletteClick
    end
    object bbShowObjectInspector: TdxBarButton
      Caption = 'Object Inspector'
      Category = 0
      Hint = 'Object Inspector'
      Visible = ivAlways
      ImageIndex = 4
      ShortCut = 122
      OnClick = bbShowObjectInspectorClick
    end
    object bbShowProjectManager: TdxBarButton
      Caption = 'Project Manager'
      Category = 0
      Hint = 'Project Manager'
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 49274
      OnClick = bbShowProjectManagerClick
    end
    object bbShowMessages: TdxBarButton
      Caption = 'Messages'
      Category = 0
      Hint = 'Messages'
      Visible = ivAlways
      ImageIndex = 8
      OnClick = bbShowMessagesClick
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Configuration Manager'
      Category = 0
      Enabled = False
      Hint = 'Configuration Manager'
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = 'Project Statistics'
      Category = 0
      Enabled = False
      Hint = 'Project Statistics'
      Visible = ivAlways
    end
    object dxBarButton10: TdxBarButton
      Caption = 'Clipboard History'
      Category = 0
      Enabled = False
      Hint = 'Clipboard History'
      Visible = ivAlways
    end
    object bsiDebugWindows: TdxBarSubItem
      Caption = 'Debug Windows'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbCallstack'
        end
        item
          Visible = True
          ItemName = 'bbShowWatches'
        end>
    end
    object bbShowWatches: TdxBarButton
      Caption = 'Watches'
      Category = 0
      Hint = 'Watches'
      Visible = ivAlways
      ImageIndex = 6
      ShortCut = 49239
      OnClick = bbShowWatchesClick
    end
    object bbCallstack: TdxBarButton
      Caption = 'Call Stack'
      Category = 0
      Hint = 'Call Stack'
      Visible = ivAlways
      ImageIndex = 7
      ShortCut = 49235
      OnClick = bbCallstackClick
    end
    object bbNew: TdxBarButton
      Caption = 'New Project'
      Category = 0
      Hint = 'New Project'
      Visible = ivAlways
      ImageIndex = 10
      OnClick = LogActionHandler
    end
    object bbOpen: TdxBarButton
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmRecentProjects
      ImageIndex = 0
      OnClick = LogActionHandler
    end
    object bliRecentProjects: TdxBarListItem
      Caption = 'Recent Projects'
      Category = 0
      Visible = ivAlways
      Items.Strings = (
        'C:\MyProjects\Project1.dpr'
        'C:\MyProjects\Project2.dpr'
        'C:\MyProjects\Project3.dpr')
    end
    object bbSave: TdxBarButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      ImageIndex = 1
      ShortCut = 16467
      OnClick = LogActionHandler
    end
    object bbSaveAll: TdxBarButton
      Caption = 'Save All'
      Category = 0
      Hint = 'Save All'
      Visible = ivAlways
      ImageIndex = 11
      ShortCut = 24659
      OnClick = LogActionHandler
    end
    object bliRecentFiles: TdxBarListItem
      Caption = 'Recent Files'
      Category = 0
      Visible = ivAlways
      Items.Strings = (
        'C:\MyProjects\Unit1.pas'
        'C:\MyProjects\Unit2.pas'
        'C:\MyProjects\Unit3.pas')
    end
    object bbRun: TdxBarButton
      Caption = 'Run'
      Category = 0
      Hint = 'Run'
      Visible = ivAlways
      ImageIndex = 12
      ShortCut = 120
      OnClick = LogActionHandler
    end
    object bbStop: TdxBarButton
      Caption = 'Program Reset'
      Category = 0
      Hint = 'Program Reset'
      Visible = ivAlways
      ImageIndex = 14
      OnClick = LogActionHandler
    end
    object bbPause: TdxBarButton
      Caption = 'Program Pause'
      Category = 0
      Hint = 'Program Pause'
      Visible = ivAlways
      ImageIndex = 13
      OnClick = LogActionHandler
    end
    object bbTraceInto: TdxBarButton
      Caption = 'Trace Into'
      Category = 0
      Hint = 'Trace Into'
      Visible = ivAlways
      ImageIndex = 17
      ShortCut = 118
      OnClick = LogActionHandler
    end
    object bbStepOver: TdxBarButton
      Caption = 'Step Over'
      Category = 0
      Hint = 'Step Over'
      Visible = ivAlways
      ImageIndex = 16
      ShortCut = 119
      OnClick = LogActionHandler
    end
    object bbRunUntilReturn: TdxBarButton
      Caption = 'Run Until Return'
      Category = 0
      Hint = 'Run Until Return'
      Visible = ivAlways
      ImageIndex = 15
      ShortCut = 8311
      OnClick = LogActionHandler
    end
    object bbOpenProject: TdxBarButton
      Caption = 'Open Project...'
      Category = 0
      Hint = 'Open Project'
      Visible = ivAlways
      ShortCut = 16506
      OnClick = LogActionHandler
    end
    object bbOpenSingle: TdxBarButton
      Caption = 'Open...'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      ImageIndex = 0
    end
    object siReopen: TdxBarSubItem
      Caption = 'Reopen'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bliRecentProjects'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bliRecentFiles'
        end>
    end
    object bbSaveAs: TdxBarButton
      Caption = 'Save As...'
      Category = 0
      Hint = 'Save As'
      Visible = ivAlways
      ImageIndex = 18
      OnClick = LogActionHandler
    end
    object bbClose: TdxBarButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      OnClick = LogActionHandler
    end
    object bbPrint: TdxBarButton
      Caption = 'Print...'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 19
      OnClick = LogActionHandler
    end
    object siEdit: TdxBarSubItem
      Caption = 'Edit'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbUndo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'dxBarButton13'
        end
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end
        item
          Visible = True
          ItemName = 'dxBarButton11'
        end>
    end
    object bbUndo: TdxBarButton
      Action = actEditUndo
      Category = 0
      ImageIndex = 20
    end
    object dxBarButton12: TdxBarButton
      Action = actEditCut
      Category = 0
      ImageIndex = 22
    end
    object dxBarButton13: TdxBarButton
      Action = actEditCopy
      Category = 0
      ImageIndex = 23
    end
    object dxBarButton14: TdxBarButton
      Action = actEditPaste
      Category = 0
      ImageIndex = 24
    end
    object dxBarButton11: TdxBarButton
      Action = actEditSelectAll
      Category = 0
    end
    object siRun: TdxBarSubItem
      Caption = 'Run'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbRun'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbTraceInto'
        end
        item
          Visible = True
          ItemName = 'bbStepOver'
        end
        item
          Visible = True
          ItemName = 'bbRunUntilReturn'
        end
        item
          Visible = True
          ItemName = 'bbPause'
        end
        item
          Visible = True
          ItemName = 'bbStop'
        end>
    end
    object edtDesktopPresets: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      OnChange = edtDesktopPresetsChange
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = 'Default Layout'
    end
    object bbSaveLayout: TdxBarButton
      Caption = 'Save Current Desktop'
      Category = 0
      Hint = 'Save Current Desktop'
      Visible = ivAlways
      ImageIndex = 26
      OnClick = bbSaveLayoutClick
    end
    object bbLoadLayout: TdxBarButton
      Caption = 'Reload Current Desktop'
      Category = 0
      Hint = 'Reload Current Desktop'
      Visible = ivAlways
      ImageIndex = 27
      OnClick = edtDesktopPresetsChange
    end
    object dxBarButton1: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
      HotImageIndex = 39
    end
    object dxBarButton2: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton5: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton6: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarButton7: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Category = 3
      Visible = ivAlways
    end
    object dxBarSubItemFile: TdxBarSubItem
      Caption = '&File'
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbOpenSingle'
        end
        item
          Visible = True
          ItemName = 'bbOpenProject'
        end
        item
          Visible = True
          ItemName = 'siReopen'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbSaveAs'
        end
        item
          Visible = True
          ItemName = 'bbSaveAll'
        end
        item
          Visible = True
          ItemName = 'bbClose'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbPrint'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButtonExit'
        end>
    end
    object dxBarSubItemInsert: TdxBarSubItem
      Caption = '&View'
      Category = 4
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bsiDebugWindows'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'bbShowStructure'
        end
        item
          Visible = True
          ItemName = 'bbShowObjectInspector'
        end
        item
          Visible = True
          ItemName = 'bbShowMessages'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarButton10'
        end
        item
          Visible = True
          ItemName = 'bbShowToolPalette'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'bbShowProjectManager'
        end>
    end
    object dxBarSubItemWindow: TdxBarSubItem
      Caption = '&Window'
      Category = 4
      Visible = ivAlways
      ItemLinks = <>
    end
    object siHelp: TdxBarSubItem
      Caption = '&Help'
      Category = 4
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButtonDockable: TdxBarButton
      Caption = 'Dockable'
      Category = 5
      Hint = 'Dockable'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButtonDockableClick
    end
    object dxBarButtonHide: TdxBarButton
      Caption = 'Hide'
      Category = 5
      Hint = 'Hide'
      Visible = ivAlways
      OnClick = dxBarButtonHideClick
    end
    object dxBarButtonFloating: TdxBarButton
      Caption = 'Floating'
      Category = 5
      Hint = 'Floating'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButtonFloatingClick
    end
    object dxBarButtonAutoHide: TdxBarButton
      Caption = 'Auto Hide'
      Category = 5
      Hint = 'Auto Hide'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = dxBarButtonAutoHideClick
    end
  end
  object BarPopupMenu: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButtonDockable'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonHide'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonFloating'
      end
      item
        Visible = True
        ItemName = 'dxBarButtonAutoHide'
      end>
    UseOwnFont = False
    Left = 632
    PixelsPerInch = 96
  end
  object SkinController: TdxSkinController
    ScrollbarMode = sbmHybrid
    Left = 536
  end
  object imBarIcons: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 600
    Top = 32
    Bitmap = {
      494C01011C002800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000008000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000666666F2717171FF717171FF717171FF7171
      71FF717171FF717171FF676767F4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF676767F400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000129FE5F214B1
      FFFF14B1FFFF14B1FFFF00000000717171FF0000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000707
      3682070736820000000000000000000000000000000000000000000000000707
      3682070736820000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000092801820000
      00000000000907200075166601CF219502F9219502F9166501CF071F00730000
      000800000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000717171FF0000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000070736821B1B
      D1FF1B1BD1FF0707368200000000000000000000000000000000070736821B1B
      D1FF1B1BD1FF0707368200000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000229C02FF0B31
      0191186E02D6229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF176B
      01D30002001D000000000000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000717171FF00000000717171FF717171FF7171
      71FF717171FF00000000717171FF0000000000000000000000000606317D1B1B
      D1FF1B1BD1FF1B1BD1FF070736820000000000000000070736821B1BD1FF1B1B
      D1FF1B1BD1FF0606317D00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000229C02FF229C
      02FF229C02FF197202DA030E004F0000000A00000009030E004D197002D8229C
      02FF176902D1000000070000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000606
      317D1B1BD1FF1B1BD1FF1B1BD1FF07073682070736821B1BD1FF1B1BD1FF1B1B
      D1FF0606317D0000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000229C02FF229C
      02FF229C02FF0B30018E00000000000000000000000000000000000000111971
      02D9229C02FF061D006F0000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000717171FF00000000717171FF717171FF7171
      71FF717171FF00000000717171FF000000000000000000000000000000000000
      00000606317D1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606
      317D000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF092A0185000000000000000000000000000000000310
      0052229C02FF166101CA0000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000000000000606317D1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606317D0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF00000000C16A0FF2D776
      10FFD77610FFD77610FFD77610FFC56C0FF40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000070736821B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF070736820000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000D77610FF0000
      0000000000000000000000000000D77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000646464F0717171FF717171FF717171FF7171
      71FF717171FF717171FF666666F2000000000000000000000000000000000000
      0000070736821B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707
      3682000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000717171FF717171FF717171FF717171FF00000000D77610FF0000
      0000000000000000000000000000D77610FF0000000000000000145E01C7229C
      02FF04120058000000000000000000000000000000000823007A229C02FF229C
      02FF229C02FF229C02FF0000000000000000000000000000000014B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      36821B1BD1FF1B1BD1FF1B1BD1FF0606317D0606317D1B1BD1FF1B1BD1FF1B1B
      D1FF070736820000000000000000000000000000000000000000717171FF7171
      71FF00000000717171FF00000000717171FF717171FF00000000D77610FF0000
      0000000000000000000000000000D77610FF0000000000000000061C006D229C
      02FF1A7602DE0001001500000000000000000000000000000000092A0185229C
      02FF229C02FF229C02FF0000000000000000000000000000000014B1FFFF14B1
      FFFF0000000000000000000000000000000000000000000000000000000014B1
      FFFF14B1FFFF0000000000000000000000000000000000000000070736821B1B
      D1FF1B1BD1FF1B1BD1FF0606317D00000000000000000606317D1B1BD1FF1B1B
      D1FF1B1BD1FF0707368200000000000000000000000000000000717171FF7171
      71FF00000000717171FF00000000717171FF717171FF00000000D77610FF0000
      0000000000000000000000000000D77610FF0000000000000000000000071767
      01D0229C02FF197402DC031000530000000E0000000D030F0051197302DB229C
      02FF229C02FF229C02FF0000000000000000000000000000000014B1FFFF14B1
      FFFF0000000000000000000000000000000000000000000000000000000014B1
      FFFF14B1FFFF00000000000000000000000000000000000000000606317D1B1B
      D1FF1B1BD1FF0606317D000000000000000000000000000000000606317D1B1B
      D1FF1B1BD1FF0606317D00000000000000000000000000000000646464F07171
      71FF00000000717171FF717171FF717171FF717171FF00000000D77610FFD776
      10FFC56C0FF40000000000000000D77610FF0000000000000000000000000001
      001B176701D0229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF186C
      02D50A30018E229C02FF0000000000000000000000000000000014B1FFFF14B1
      FFFF00000000666666F2717171FF717171FF717171FF676767F40000000014B1
      FFFF14B1FFFF0000000000000000000000000000000000000000000000000606
      317D0606317D0000000000000000000000000000000000000000000000000606
      317D0606317D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000341D037ED776
      10FFD77610FF0000000000000000D77610FF0000000000000000000000000000
      000000000007061D006E166101CA209002F5209102F6166301CC071F00720000
      0009000000000825007E00000000000000000000000000000000129DE1F014B1
      FFFF00000000717171FF717171FF717171FF717171FF717171FF0000000014B1
      FFFF12A1E7F30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000341D
      037ED77610FFD77610FFD77610FFC16A0FF20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000646464F0717171FF666666F200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001001B115001B81F8E
      02F4145B01C40003002500000000000000000000000000000000000200231560
      01C9229A02FE156001C900030026000000000000000000000000636363EF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF656565F10000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000115101B8071E00710000
      0005061C006D166201CB00000000000000000000000000000000135701BF071E
      007100000005061C006D155F01C8000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000120100001200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F8E02F3000000090000
      000000000005229C02FF00000008000000000000000000000000209102F60000
      00090000000000000005219602FA000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000201001D673808B00000000000000000000000000000
      00000000000000000000000000002715026D2715026D00000000000000000000
      000000000000000000000000000000000000683908B20301001F000000000000
      00000000000000000000000000000000000000000000135801C0072000750000
      0009071E0071186D02D500000000000000000000000000000000145A01C20720
      007500000009071E0071135701C0000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      00000000000329170371C36B0FF3D77610FF0000000000000000000000000000
      0000000000000000000E4929059649280595462605924D2A05990000000F0000
      000000000000000000000000000000000000D77610FFC36C0FF32B1703730000
      0004000000000000000000000000000000000000000000020022145D01C52196
      02FB145D01C61E8902EF0105002F0000000000000000000200221D8502EB1253
      01BB1F8D02F3135501BD00020020000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000804
      00348B4C0BCDD77610FFD77610FFD77610FF000000050000001005030029170D
      01554C2A0598BB670EEED77610FF0B06003A09050036D77610FFBD680EEF4D2A
      0599180D02560503002A0000001000000005D77610FFD77610FFD77610FF8C4D
      0BCE090500350000000000000000000000000000000000000000000000000000
      00000000000006100054C8760FFCD77610FF96520BD500000011020900400000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF0000000000000000000000000000000D44250590D174
      10FCD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF703D08B800000000000000006B3B08B4D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD27410FC462605920000000E000000000000000000000000000000000000
      0000000000000000000024140269D77610FFD77610FF4A290597000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000717171FF0000000000000000150C0151AA5D0DE3D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFAD5F0DE50201001C00000000000000000201001AAA5D0DE3D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFAB5E0DE4160C01530000000000000000000000000000
      0000000000001008014608040032351D037FD77610FFD77610FF140B014F0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000636363EF717171FF717171FF555555DE0000
      000000000000717171FF0000000000000000130A014DA65B0DE0D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF8B4C0BCD040200230000000000000000000000000000000003010021884B
      0BCBD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFA85C0DE2140B014F0000000000000000000000000000
      000001000017B2610DE8B1610DE80201001949280595D77610FFB6640EEB0201
      001B000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000717171FF717171FF555555DE0101011F0000
      000000000000717171FF0000000000000000000000000000000C4024048CD072
      10FBD77610FFD77610FFD77610FFD77610FFCD7010F9A85C0DE2643708AE180D
      0257000000030000000000000000000000000000000000000000000000000000
      0003170D0155633608ADA75C0DE1CD7010F9D77610FFD77610FFD77610FFD776
      10FFD17310FC4224058E0000000C000000000000000000000000000000000000
      00016E3C08B7D77610FF5D3307A800000002000000025F3407AAD77610FF7440
      09BC000000020000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000717171FF555555DE0101011F000000000000
      000000000000717171FF00000000000000000000000000000000000000000704
      0031864A0ACAD77610FFD77610FFD77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FF884B
      0BCB080400320000000000000000000000000000000000000000000000002917
      0371D77610FF754009BC00000007000000000000000000000007744009BCD776
      10FF2D1903760000000000000000000000000000000000000000626262ED7171
      71FF717171FF717171FF717171FF555555DE0101011F00000000636363EF7171
      71FF717171FF555555DE00000000000000000000000000000000000000000000
      0000000000032715026DC06A0FF1D77610FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFC16A0FF22816036F0000
      000300000000000000000000000000000000000000000000000000000000BC67
      0EEF8B4C0BCD0000000E000000000000000000000000000000000000000D894B
      0BCCC36B0FF30000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000717171FF7171
      71FF555555DE0101011F00000000000000000000000000000000000000000000
      000000000000000000000201001B623508AC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000643708AE0201001C000000000000
      0000000000000000000000000000000000000000000000000000000000005F34
      07A9010000170000000000000000000000000000000000000000000000000100
      0016603507AB0000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000717171FF5555
      55DE0101011F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000626262ED717171FF717171FF717171FF717171FF555555DE0101
      011F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000633608AD0100001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000000000000000000000000000000000002B180373361E
      0480D77610FFB6640EEB190E0258000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000D77610FF361E
      0480D77610FFB4630EE9170C0154000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000000000000000
      0000717171FF00000000717171FF717171FF717171FF717171FF000000007171
      71FF000000000000000000000000000000000000000000000000D77610FF0000
      00005E3407A90100001500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF0000000000000000454545C8717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF484848CC000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000503002900000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF0000000000000000717171FF717171FF7171
      71FF717171FF00000000717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C96E0FF72E19037600000003000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF600DE6C36B
      0FF3D77610FFD77610FF562F06A10000000000000000717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF0000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000D77610FF0000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000D77610FF0000
      000CD27410FC4023048B00000009000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF0000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF0000
      00000A06003900000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDBA4FF43AB
      28FF239D04FF3C9704FF94850BFF0000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF000000000000000000000000D77610FF0000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0DCA5FF229C02FF229C
      02FF229C02FF229C02FF229C02FF0415005F00000000717171FF717171FF0000
      000D000000000000000000000000000000000000000000000000000000000000
      00000000000B717171FF717171FF000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF0000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFFFFFFFFF46AC2BFF229C02FF229C
      02FF229C02FF229C02FF229C02FF197102D900000000424242C3717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000717171FF454545C8000000000000000000000000D77610FF0000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF279E08FFCEE9C7FF229C
      02FFCEE9C7FF229C02FFCEE9C7FF229A02FD0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BC670EEFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFFFFFFFFF47AD2CFF229C02FF229C
      02FF229C02FF229C02FF229C02FF197002D80000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000BF690FF0D776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3DDA7FF229C02FF229C
      02FF229C02FF229C02FF229C02FF0414005D0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004120059186C
      02D4219502F9186E02D60413005B000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000092B01870003
      0026000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C16A0FF2D776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF2194
      02F90A2C01890000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000BD680EEFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFC06A0FF100000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF1C7F02E60414005E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF145D01C60106003400000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229A02FD0C39019B000100160000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF2525258E0D0D0D55474747C6474747C60D0D0D552525258E7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      00000000000000000000000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1E8902EF061D
      0070000000050000000000000000000000000000000000000000777777FF7777
      77FF777777FF0D0D0D5500000000353535AA353535AA000000000D0D0D557777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF186C02D50106003300000000000000000000000000000000777777FF7777
      77FF777777FF0D0D0D5500000000353535AA353535AA000000000D0D0D557777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF197202DA0107003700000000000000000000000000000000777777FF7777
      77FF777777FF0D0D0D5500000000353535AA353535AA000000000D0D0D557777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF1F8C02F20721
      0076000000070000000000000000000000000000000000000000777777FF7777
      77FF777777FF0D0D0D5500000000353535AA353535AA000000000D0D0D557777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229A02FD0D3C019F000100190000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF2525258E0D0D0D55474747C6474747C60D0D0D552525258E7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF229C02FF229C02FF145E01C70106003600000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF0000
      0000633608AD0100001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF229C
      02FF229C02FF1C7E02E50414005E000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FF361E
      0480D77610FFB6640EEB190E0258000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000229C02FF2094
      02F80A2B01870000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000777777FF7777
      77FF777777FF777777FF777777FF777777FF777777FF777777FF777777FF7777
      77FF777777FF777777FF00000000000000000000000000000000BA660EEDD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBD680EEF0000000000000000000000000000000029170371361E
      0480D77610FFB4630EE9170C0154000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000092901840003
      0023000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005E3407A90100001500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      000000000000020202233B3A3AB66D6C6CF8737272FF737272FF676767F22121
      2189000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FF717171FF717171FF7171
      71FF404040C0404040C0D77610FF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000020202255D5C5CE5737272FF737272FF737272FF737272FF737272FF7372
      72FF1A1A1A7A0000000000000000000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF676767F40000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FF717171FF717171FF7171
      71FF1C1C1C801C1C1C80D77610FF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02255C5B5BE4737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF676666F10000000E00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFA57441FFA57441FFA574
      41FFA57441FFA57441FFD77610FF0000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000020202235A5A
      5AE2737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF1313136A00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFEBBB88FFEBBB88FFEBBB
      88FFEBBB88FFEBBB88FFD77610FF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000010101215A5A5AE27372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF4F4E4ED300000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FF0000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF000000000000000001010121595858E0737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF0606063E000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFEEEEEEFFDCDCDCFFDCDC
      DCFFEEEEEEFFFFFFFFFFD77610FF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000525151D8737272FF6F6E6EFB2625
      2593575656DE737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF313030A6000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFEEEEEEFFDCDCDCFFDCDC
      DCFFDCDCDCFFEEEEEEFFD77610FF0000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000003A3939B5484747C9040404320000
      0000484747CA737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF6D6C6CF9000000170000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FF717171FF7171
      71FF717171FF404040C0404040C0D77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      00096F6E6EFA737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF07070742454444C6737272FF1A1A1A7A0000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FF717171FF7171
      71FF717171FF1C1C1C801C1C1C80D77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000606
      063C737272FF5B5A5AE300000014737272FF737272FF020101225A5A5AE27372
      72FF0C0C0C530A0A0A4E737272FF585757DF0000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FFA57441FFA574
      41FFA57441FFA57441FFA57441FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000001818
      1875737272FF302F2FA400000000737272FF737272FF000000002D2D2DA07372
      72FF2020208800000002454444C5474646C80000000000000000717171FF0000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF555555DE00000000000000000000000000000000D77610FFEBBB88FFEBBB
      88FFEBBB88FFEBBB88FFEBBB88FFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000000000003534
      34AC737272FF1313136900000000737272FF737272FF00000000101010617372
      72FF3F3E3EBC0000000000000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000000000000717171FF717171FF5555
      55DE0101011F00000000000000000000000000000000D77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000005C5B
      5BE4737272FF0303032C00000000737272FF737272FF00000000010101217372
      72FF666565F00000000100000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000000000000717171FF555555DE0101
      011F0000000000000000000000000000000000000000D77610FFEEEEEEFFDCDC
      DCFFDCDCDCFFEEEEEEFFFFFFFFFFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000003D3D
      3DBA454545C60000000200000000737272FF737272FF00000000000000004343
      43C34D4C4CD10000000100000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF555555DE0101011F0000
      00000000000000000000000000000000000000000000D77610FFEEEEEEFFDCDC
      DCFFDCDCDCFFDCDCDCFFEEEEEEFFD77610FF0000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000444343C4474646C800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000100001400000000442E
      149C473015A00000000001000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012A36E31F1533819ADA06C
      30EFA26D31F0523719ABA67032F3010000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010121414141C10101
      0121000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E3418A7B77B37FFB77B
      37FFB77B37FFB77B37FF523719AB000000000000000000000000000000000000
      000000000000000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F10000000000000000000000000000000000000007252525936666
      66F2666666F22626269500000008000000000000000000000007252525936666
      66F2666666F226262695000000080000000001010121585858E0727272FF5858
      58E0010101210000000000000000A6682EF1BA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFA6682EF10000000000000000000000000000
      000000000000000000000000000000000000473015A0A16C30EFB77B37FF0805
      023707050234B77B37FFA26D31F0483116A10000000000000000000000000000
      0000717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF0000000000000000000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF00000000191919771C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000442E149C9E6A30EDB77B37FF0A06
      033C08050237B77B37FFA06C30EF442E149D0000000000000000000000000000
      0000717171FF0000000000000000000000001299DCED14B1FFFF14B1FFFF14B1
      FFFF129BE0EF00000000000000000000000000000000636363EF010101180000
      00000000000000000014666666F20000000000000000636363EF010101180000
      00000000000000000014666666F2000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF000000001C1C1C7F000000000000
      00000000000000000000000000000000000000000000513719AAB77B37FFB77B
      37FFB77B37FFB77B37FF533819AC000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000606060EC0101011A0000
      00000000000000000016717171FF0000000000000000717171FF0101011A0000
      00000000000000000016646464F0000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF000000129E6A30ED513718AA9E6B
      30EDA06C31EF4E3418A7A36E31F1010000140000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000028282897373737B30101
      011901010118363636B0717171FF0000000000000000717171FF373737B30101
      011901010118363636B02929299B000000000000000000000000727272FF0000
      0000000000000000000000000000A3662DEFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFA4662DEF000000001C1C1C7F000000000000
      000000000000000000000000000000000000000000000000001100000000432E
      149B4730159F0000000000000012000000000000000000000000000000000000
      0000717171FF000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F1000000000000000000000000000000000303032E717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF04040431000000000000000000000000727272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF0000000000000000000000000000000000000000414141C27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF444444C600000000000000000000000000000000727272FF0000
      0000191919791C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F19191979000000000000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000717171FF000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F100000000000000000000000000000000000000000D0D0D587171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0E0E0E5C00000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000000000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000065C5C
      5CE7717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF5F5F5FEA0000000700000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F000000000000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001D1D
      1D83717171FF717171FF717171FF0000000000000000717171FF717171FF7171
      71FF1F1F1F870000000000000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F00000000000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF0000000000000000000000000000000000000000129FE5F214B1
      FFFF14B1FFFF14B1FFFF13A2E9F4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      011D6D6D6DFB717171FF6F6F6FFC00000000000000006D6D6DFA717171FF6F6F
      6FFC010101200000000000000000000000000000000000000000727272FF0000
      0000191919781C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1919197800000000000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E83696969F52222228E00000000000000002121218A696969F62121
      218A000000000000000000000000000000000000000000000000727272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E6A30EDB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFA16C31EF0000000000000000000000000000000000000000129BE0EF14B1
      FFFF14B1FFFF14B1FFFF129EE3F1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010122353535AE6969
      69F5696969F6353535B0020202230000000000000000000204210A577FB414B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF094A6AA500000000000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF00000000000000000000000000000001073E
      5A980A5F89BB0000000A0000000000000000000000000402002583480AC7C86E
      0FF605020028000000000000000000000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF353535AF020202235A5A5AE4161616730000
      000E0000000D151515705B5B5BE50202022500000000063349890004062A14AB
      F7FB14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B0FDFE01090D3A000000000000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF000000000000000000000000073D599714B1
      FFFF14B1FFFF0B608ABC0000000A000000000000000086490AC9D77610FF1D10
      025E000000000B06003B0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000003F3F3FBE1414146D000000004545
      45C8484848CC0000000013131369414141C2000000000B638FBF00070A33073C
      589614B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF0C6A98C5000000010000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FFD77610FFD77610FF0000000000000000000000000A567CB214B1
      FFFF14B1FFFF14B1FFFF14ADFBFD04283B7B00000000CF7210FBCF7210FB0302
      0021381F0483BA660EED0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000003D3D3DBB15151570000000004242
      42C3454545C8000000001414146C404040BF000000000B638FBF07415E9B0001
      0217129DE1F014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF02121A530000000000000000D77610FFD77610FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FFD77610FFD77610FF000000000000000000000000000000070A56
      7DB314B1FFFF14B1FFFF14B1FFFF0426387800000000894B0BCCD77610FFD776
      10FFD77610FF673908B10000000000000000717171FF00000000000000000000
      000000000000000000000000000000000000010101215A5A5AE3181818770000
      001200000011171717745A5A5AE402020223000000000B638FBF0B638FBF010D
      13460426377714B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0F7DB3D60000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      000714ABF7FB14B1FFFF4391B7FF1D1D1D820C06003DD27410FC884B0BCBCF72
      10FA7F4509C40201001D0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000001010120323232AA6565
      65F1666666F2333333AC0101012100000000000000000B638FBF0B638FBF094D
      70A9000001120000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      000004233272042637771B1B1B7E717171FF1D1D1D820C06003D000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      000000000000000000000000000000000000000000003C3C3CBA000000000000
      000000000000070707440000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0B638FBF04293C7C042739790B638FBF0B63
      8FBF0000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      000000000002000000000D07003F1C1C1B7E717171FF1D1D1D82000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      000000000000717171FF0000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0B638FBF0000000800000011094B6CA60A57
      7DB30000000000000000000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF00000000000000000000000004020025894B
      0BCCD47410FD8F4E0BD0D07210FB090500371B1B1B7E717171FF2D2D2DA11010
      106100000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      000000000000717171FF0000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF00000000000000000000000009280183000000000000
      00000000000009280182000000000000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF0000000000000000000000007F4609C4D776
      10FFD27410FCD77610FF7D4409C200000000000000002C2C2C9F717171FF7171
      71FF1D1D1D82000000000000000000000000BA660EEDD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFBD680EEF000000000000
      000000000000717171FF0000000000000000000000000A577DB30B638FBF0B63
      8FBF0B638FBF0A5980B5000000000000000000000000104701AD104801AE0108
      003D0000000A229C02FF092801820000000000000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000C56C0FF42414
      026902010019D57610FEC16A0FF200000000000000000F0F0F5F717171FF7171
      71FF717171FF1D1D1D8200000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000300261E8702EE229C
      02FF229C02FF229C02FF229C02FF0928018200000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000603002C0000
      00002B180373D77610FF774209BE0000000000000000000000001B1B1B7E7171
      71FF717171FF1B1B1B7E00000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000300261048
      01AE1F8C02F2229C02FF229C02FF0825007E00000000D77610FFD77610FFFFFF
      FFFFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9B9FFB9B9
      B9FFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000603
      002DC56C0FF4774209BE0201001C000000000000000000000000000000001B1B
      1B7E1B1B1B7E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000229C02FF0825007E0000000000000000D77610FFD77610FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BA660EEDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBD680EEF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000825007E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000800000000100010000000000000400000000000000000000
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
    DesignInfo = 2097752
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23
          3033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B6669
          6C6C3A234646423131353B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D224C6F61644368617274223E0D0A09093C7061746820636C6173733D225965
          6C6C6F772220643D224D32392E332C313848392E364C342C32386831392E3863
          302E352C302C312E312D302E322C312E332D302E366C342E392D382E39433330
          2E312C31382E322C32392E382C31382C32392E332C31387A222F3E0D0A09093C
          6720636C6173733D22737431223E0D0A0909093C7061746820636C6173733D22
          59656C6C6F772220643D224D32332C3132682D322E32632D302E342C302E352D
          302E372C312D302E382C312E35632D302E322C302E392D312C312E362D322C31
          2E3663302C302C302C302C302C30632D312C302D312E382D302E372D312E392D
          312E3720202623393B2623393B2623393B4331362C31322E392C31362C31322E
          342C31362C3132682D34563963302D302E362D302E342D312D312D3148334332
          2E342C382C322C382E352C322C3976313863302C302E322C302C302E332C302E
          312C302E3463302C302C302E312D302E312C302E312D302E326C352E352D3130
          20202623393B2623393B2623393B43382C31362E352C382E372C31362C392E35
          2C3136483234762D334332342C31322E352C32332E352C31322C32332C31327A
          222F3E0D0A09093C2F673E0D0A09093C7061746820636C6173733D2247726565
          6E2220643D224D33322C366C2D362D367634632D342E342C302D382C332E362D
          382C3863302C302E342C302C302E382C302E312C312E314331382E362C31302E
          322C32322C382C32362C3876344C33322C367A222F3E0D0A093C2F673E0D0A3C
          2F7376673E0D0A}
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
          73706163653D227072657365727665223E2E57686974657B66696C6C3A234646
          464646463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E426C75657B66696C
          6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
          61636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BB
          D0BED0B95F32223E0D0A09093C672069643D2253617665223E0D0A0909093C70
          6F6C79676F6E20636C6173733D22426C75652220706F696E74733D2233302C32
          20322C3220322C333020322C333020362C333020362C32302032362C32302032
          362C33302033302C3330202623393B2623393B222F3E0D0A0909093C72656374
          20783D22362220793D22322220636C6173733D22576869746522207769647468
          3D22323022206865696768743D223134222F3E0D0A0909093C7061746820636C
          6173733D22426C61636B2220643D224D362C323076313068323056323048367A
          204D32342C3238682D34762D3668345632387A222F3E0D0A0909093C6720636C
          6173733D22737430223E0D0A090909093C7265637420783D22382220793D2234
          2220636C6173733D22426C61636B222077696474683D22313622206865696768
          743D2232222F3E0D0A090909093C7265637420783D22382220793D2238222063
          6C6173733D22426C61636B222077696474683D22313222206865696768743D22
          32222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F
          7376673E0D0A}
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
          3744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23
          3033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B6669
          6C6C3A234646423131353B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D22426C75652220643D224D372E382C31332E39632D312E34
          2D302E332D322E372D312E342D332E332D322E3743342E322C31302E362C342E
          312C31302C342C392E3543332E392C382E362C342E332C372E372C342E392C37
          2E316C302C306C322E352C322E3520202623393B63302E372C302E372C312E39
          2C302E362C322E342D302E3363302E342D302E362C302E322D312E342D302E33
          2D312E394C372E312C342E396C302C3063302E362D302E362C312E352D312C32
          2E342D302E3963302E352C302E312C312E312C302E322C312E362C302E352020
          2623393B63312E332C302E372C322E342C312E392C322E372C332E3363302E33
          2C312E342C302C322E362D302E362C332E376C312E372C312E374C31332E322C
          31356C2D312E372D312E374331302E352C31332E392C392E322C31342E322C37
          2E382C31332E397A204D32342E322C31382E3120202623393B632D312E342D30
          2E332D322E362C302D332E372C302E364C31382E382C31374C31372C31382E38
          6C312E372C312E37632D302E362C312D302E392C322E332D302E362C332E3763
          302E332C312E342C312E342C322E372C322E372C332E3363302E362C302E332C
          312E312C302E342C312E362C302E3520202623393B63302E392C302E312C312E
          382D302E322C322E342D302E396C302C306C2D322E342D322E34632D302E352D
          302E352D302E372D312E332D302E332D312E3963302E352D302E392C312E372D
          312C322E342D302E336C322E352C322E3563302C302C302C302C302C3063302E
          362D302E362C312D312E352C302E392D322E3420202623393B632D302E312D30
          2E352D302E322D312D302E352D312E364332362E382C31392E352C32352E362C
          31382E352C32342E322C31382E317A222F3E0D0A3C706F6C79676F6E20636C61
          73733D22426C61636B2220706F696E74733D2231392C31312031392C39203234
          2C342032382C382032332C31332032312C31332031332C32312031312C313920
          222F3E0D0A3C7061746820636C6173733D2259656C6C6F772220643D224D3135
          2E332C32312E336C2D342E362D342E36632D302E342D302E342D312D302E342D
          312E342C306C2D302E372C302E3743382E322C31372E382C382C31382E332C38
          2C31382E3876302E376C2D332E382C332E3820202623393B632D302E332C302E
          332D302E332C302E382C302C312E316C332E342C332E3463302E332C302E332C
          302E382C302E332C312E312C306C332E382D332E3868302E3763302E352C302C
          312D302E322C312E342D302E366C302E372D302E374331352E372C32322E332C
          31352E372C32312E372C31352E332C32312E337A222F3E0D0A3C2F7376673E0D
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
          643D2257696E646F7773223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D31382C31382E31563136683276302E394331392E332C3137
          2E322C31382E362C31372E362C31382C31382E317A204D31342E372C32364832
          563136483076313163302C302E352C302E352C312C312C316831352E31202026
          23393B2623393B4331352E352C32372E332C31352E312C32362E362C31342E37
          2C32367A204D32342C313863352E372C302C382C362C382C36732D322E332C36
          2D382C36632D352E372C302D382D362D382D365331382E332C31382C32342C31
          38204D32342C3230632D332E332C302D352E312C322E372D352E382C34202026
          23393B2623393B63302E372C312E332C322E352C342C352E382C3463332E332C
          302C352E312D322E372C352E382D344332392E312C32322E372C32372E332C32
          302C32342C32304C32342C32307A204D32342C3232632D312E312C302D322C30
          2E392D322C3273302E392C322C322C3263312E312C302C322D302E392C322D32
          20202623393B2623393B5332352E312C32322C32342C32327A204D32362C3136
          2E325638683276382E394332372E342C31362E362C32362E372C31362E342C32
          362C31362E327A204D31302C3848387632683256387A222F3E0D0A09093C7061
          746820636C6173733D22426C75652220643D224D302C3136762D3563302D302E
          352C302E352D312C312D3168313863302E352C302C312C302E352C312C317635
          48307A204D32382C38563363302D302E352D302E352D312D312D31483943382E
          352C322C382C322E352C382C3376354832387A222F3E0D0A093C2F673E0D0A3C
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
          343B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          43423031423B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233132394334393B7D262331333B262331303B2623393B2E426C75657B6669
          6C6C3A233338374342373B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234430323132373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A6E6F6E653B66696C6C3A233733373337343B7D
          3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220643D22
          4D32342C386832563363302D302E352D302E352D312D312D31483343322E352C
          322C322C322E352C322C33763568324832347A222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D32322C3132483132762D326831305631
          327A204D32322C3136762D3248313276324832327A204D362C32306834762D32
          48365632307A204D31362C3138682D34763268345631387A204D362C31366834
          762D3248365631367A204D362C31326834762D32483620202623393B5631327A
          222F3E0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C
          6173733D22426C61636B2220643D224D32342C31345638683276364832347A20
          4D31342C323248345638483276313563302C302E352C302E352C312C312C3168
          31315632327A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D33322C3235762D326C2D322E352D302E36632D302E312D
          302E342D302E332D302E382D302E352D312E326C312E352D322E316C2D312E36
          2D312E364C32362E382C3139632D302E342D302E322D302E382D302E342D312E
          322D302E354C32352C3136682D3220202623393B6C2D302E362C322E35632D30
          2E342C302E312D302E382C302E332D312E322C302E356C2D322D312E356C2D31
          2E372C312E376C312E352C32632D302E322C302E342D302E342C302E382D302E
          352C312E324C31362C323376326C322E352C302E3663302E312C302E342C302E
          332C302E382C302E352C312E3220202623393B6C2D312E352C322E316C312E36
          2C312E366C322E312D312E3563302E342C302E322C302E382C302E342C312E32
          2C302E354C32332C333268326C302E362D322E3563302E342D302E312C302E38
          2D302E332C312E322D302E356C322E312C312E356C312E362D312E364C32392C
          32362E3820202623393B63302E322D302E342C302E342D302E382C302E352D31
          2E324C33322C32357A204D32342C3236632D312E312C302D322D302E392D322D
          3273302E392D322C322D3273322C302E392C322C325332352E312C32362C3234
          2C32367A222F3E0D0A3C2F7376673E0D0A}
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
          3D22496E736572745472656556696577223E0D0A09093C7061746820636C6173
          733D2259656C6C6F772220643D224D31332C38483543342E342C382C342C372E
          362C342C37563363302D302E352C302E342D312C312D31683863302E362C302C
          312C302E352C312C3176344331342C372E362C31332E362C382C31332C387A20
          4D32362C3137762D3420202623393B2623393B63302D302E362D302E352D312D
          312D31682D38632D302E352C302D312C302E342D312C31763463302C302E352C
          302E352C312C312C3168384332352E352C31382C32362C31372E352C32362C31
          377A204D32362C3237762D3463302D302E352D302E352D312D312D31682D3863
          2D302E352C302D312C302E352D312C3120202623393B2623393B763463302C30
          2E352C302E352C312C312C3168384332352E352C32382C32362C32372E352C32
          362C32377A222F3E0D0A09093C706F6C79676F6E20636C6173733D22426C6163
          6B2220706F696E74733D2231342C31362031342C31342031302C31342031302C
          313020382C313020382C32362031342C32362031342C32342031302C32342031
          302C3136202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23333437354241
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373337
          3337333B7D262331333B262331303B2623393B2E5265647B66696C6C3A234346
          323132373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D
          0A09093C7061746820636C6173733D22426C61636B2220643D224D32352C3136
          4839632D302E362C302D312D302E342D312D31563763302D302E362C302E342D
          312C312D3168313663302E352C302C312C302E342C312C3176384332362C3135
          2E362C32352E352C31362C32352C31367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D33312C3238483135632D302E
          362C302D312D302E352D312D31762D3863302D302E352C302E342D312C312D31
          68313663302E352C302C312C302E352C312C3176384333322C32372E352C3331
          2E352C32382C33312C32387A222F3E0D0A3C706F6C79676F6E20636C6173733D
          22426C61636B2220706F696E74733D22362C323620362C3420342C3420342C32
          3620312C323620352C333020392C323620222F3E0D0A3C2F7376673E0D0A}
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
          3D22496E736572744C697374426F78223E0D0A09093C7061746820636C617373
          3D22426C61636B2220643D224D32372C33304833632D302E352C302D312D302E
          352D312D31563163302D302E362C302E352D312C312D3168323463302E352C30
          2C312C302E342C312C317632384332382C32392E352C32372E352C33302C3237
          2C33307A204D32362C324834763236683232563220202623393B2623393B7A20
          4D32322C364838763268313456367A204D32322C313048387632683134563130
          7A204D32322C3134483876326831345631347A204D32322C3138483876326831
          345631387A204D32322C3232483876326831345632327A222F3E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
          343B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344303230
          32373B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233335
          373542423B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234643423031423B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233135394334393B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C70617468
          20636C6173733D22426C61636B2220643D224D33312E312C382E33632D312E31
          2D302E372D322E352D302E322D322E392C302E396C2D312E392C342E31632D30
          2E322C302E342D302E362C302E362D312C302E366C302C30632D302E372C302D
          312E322D302E362D312D312E334C32362C342E3420202623393B63302E322D31
          2E312D302E342D322E312D312E352D322E34632D312E312D302E322D322E312C
          302E342D322E342C312E356C2D312E392C372E36632D302E312C302E352D302E
          352C302E382D312C302E38682D302E31632D302E362C302D312E312D302E352D
          312E312D312E3156322E3120202623393B63302D312D302E372D312E392D312E
          362D322E314331352E312D302E322C31342C302E382C31342C3276382E396330
          2C302E362D302E352C312E312D312E312C312E31682D302E31632D302E352C30
          2D302E392D302E332D312D302E384C31302C332E3643392E372C322E342C382E
          342C312E372C372E332C322E3220202623393B632D312C302E332D312E342C31
          2E342D312E322C322E346C322E352C31312E3363302E322C302E382D302E372C
          312E352D312E352C312E316C2D342D322E36632D302E382D302E352D312E382D
          302E342D322E352C302E33632D302E382C302E382D302E382C322E312C302C32
          2E394C31302E392C323820202623393B63312E322C312E332C332C322C342E39
          2C3248323063322E392C302C342E372D322C352E392D342E386C352E392D3134
          2E334333322E322C31302C33312E392C382E392C33312E312C382E337A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224E
          65772220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030
          302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77
          332E6F72672F313939392F786C696E6B2220783D223070782220793D22307078
          222076696577426F783D2230203020333220333222207374796C653D22656E61
          626C652D6261636B67726F756E643A6E6577203020302033322033323B222078
          6D6C3A73706163653D227072657365727665223E262331333B262331303B3C73
          74796C6520747970653D22746578742F637373223E2E426C61636B7B66696C6C
          3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D31392C32483543342E342C322C342C322E342C34
          2C3376323463302C302E362C302E342C312C312C3168323063302E362C302C31
          2D302E342C312D3156394C31392C327A204D32342C3236483656346831327635
          63302C302E362C302E342C312C312C31683520202623393B5632367A222F3E0D
          0A3C2F7376673E0D0A}
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
          73706163653D227072657365727665223E2E7374307B66696C6C3A2331313737
          44373B7D262331333B262331303B2623393B2E7374317B66696C6C3A23464646
          4646463B7D262331333B262331303B2623393B2E7374327B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E7374337B6F706163697479
          3A302E353B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B95F
          32223E0D0A09093C672069643D2253617665223E0D0A0909093C706F6C79676F
          6E20636C6173733D227374302220706F696E74733D2231362C3220322C322032
          2C313620322C313620342C313620342C31312031342C31312031342C31362031
          362C3136202623393B2623393B222F3E0D0A0909093C7265637420783D223422
          20793D22322220636C6173733D22737431222077696474683D22313022206865
          696768743D2237222F3E0D0A0909093C7061746820636C6173733D2273743222
          20643D224D342C31317635683130762D3548347A204D31332C3135682D32762D
          3368325631357A222F3E0D0A0909093C6720636C6173733D22737433223E0D0A
          090909093C7265637420783D22352220793D22332220636C6173733D22737432
          222077696474683D223822206865696768743D2231222F3E0D0A090909093C72
          65637420783D22352220793D22352220636C6173733D22737432222077696474
          683D223622206865696768743D2231222F3E0D0A0909093C2F673E0D0A09093C
          2F673E0D0A093C2F673E0D0A3C672069643D22D0A1D0BBD0BED0B95F325F315F
          223E0D0A09093C672069643D22536176655F315F223E0D0A0909093C706F6C79
          676F6E20636C6173733D227374302220706F696E74733D2233302C3136203136
          2C31362031362C33302031362C33302031382C33302031382C32352032382C32
          352032382C33302033302C3330202623393B2623393B222F3E0D0A0909093C72
          65637420783D2231382220793D2231362220636C6173733D2273743122207769
          6474683D22313022206865696768743D2237222F3E0D0A0909093C7061746820
          636C6173733D227374322220643D224D31382C32357635683130762D35483138
          7A204D32372C3239682D32762D3368325632397A222F3E0D0A0909093C672063
          6C6173733D22737433223E0D0A090909093C7265637420783D2231392220793D
          2231372220636C6173733D22737432222077696474683D223822206865696768
          743D2231222F3E0D0A090909093C7265637420783D2231392220793D22313922
          20636C6173733D22737432222077696474683D223622206865696768743D2231
          222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F73
          76673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E477265656E7B
          66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22477265656E2220643D224D342C332E377632342E3563302C302E38
          2C302E382C312E332C312E352C302E396C32312D31322E3363302E372D302E34
          2C302E372D312E332C302D312E374C352E352C322E3943342E382C322E352C34
          2C332C342C332E377A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D223020302032342032342220656E61626C65
          2D6261636B67726F756E643D226E6577203020302032342032342220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C673E0D0A
          09093C673E0D0A0909093C673E0D0A090909093C673E0D0A09090909093C7061
          74682066696C6C3D22233738373837382220643D224D332C3376313868313856
          3348337A204D31312C31364838563868335631367A204D31362C3136682D3356
          3868335631367A222F3E0D0A090909093C2F673E0D0A090909093C673E0D0A09
          090909093C706174682066696C6C3D22233738373837382220643D224D332C33
          763138683138563348337A204D31312C31364838563868335631367A204D3136
          2C3136682D33563868335631367A222F3E0D0A090909093C2F673E0D0A090909
          3C2F673E0D0A09093C2F673E0D0A09093C673E0D0A0909093C673E0D0A090909
          093C673E0D0A09090909093C706174682066696C6C3D22233738373837382220
          643D224D332C33763138683138563348337A204D31312C313648385638683356
          31367A204D31362C3136682D33563868335631367A222F3E0D0A090909093C2F
          673E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
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
          73733D22426C75652220643D224D32372C34483543342E352C342C342C342E35
          2C342C3576323263302C302E352C302E352C312C312C3168323263302E352C30
          2C312D302E352C312D3156354332382C342E352C32372E352C342C32372C347A
          222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E7374307B66696C6C3A233732373237323B
          7D262331333B262331303B2623393B2E7374317B66696C6C3A23313137374437
          3B7D3C2F7374796C653E0D0A3C7265637420783D2231302220793D2232342220
          636C6173733D22737430222077696474683D22313822206865696768743D2232
          222F3E0D0A3C7061746820636C6173733D227374312220643D224D352C333068
          39762D3248365637683276336C362D344C382C327633483543342E342C352C34
          2C352E342C342C3676323343342C32392E362C342E342C33302C352C33307A22
          2F3E0D0A3C7265637420783D2231382220793D2232302220636C6173733D2273
          7430222077696474683D22313022206865696768743D2232222F3E0D0A3C7265
          637420783D2231302220793D2231362220636C6173733D227374302220776964
          74683D22313822206865696768743D2232222F3E0D0A3C2F7376673E0D0A}
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
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D3C2F7374796C653E0D0A3C7265637420783D2231302220793D2236
          2220636C6173733D22426C61636B222077696474683D22313822206865696768
          743D2232222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D
          342C3376323363302C302E362C302E342C312C312C31683376336C362D346C2D
          362D3476334836563468385632483543342E342C322C342C322E342C342C337A
          222F3E0D0A3C7265637420783D2231382220793D2231302220636C6173733D22
          426C61636B222077696474683D22313022206865696768743D2232222F3E0D0A
          3C7265637420783D2231302220793D2231342220636C6173733D22426C61636B
          222077696474683D22313822206865696768743D2232222F3E0D0A3C2F737667
          3E0D0A}
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
          63653D227072657365727665223E2E7374307B66696C6C3A233732373237323B
          7D262331333B262331303B2623393B2E7374317B66696C6C3A23313137374437
          3B7D3C2F7374796C653E0D0A3C7265637420783D2231302220793D2238222063
          6C6173733D22737430222077696474683D22313822206865696768743D223222
          2F3E0D0A3C7061746820636C6173733D227374312220643D224D342C36763130
          2E3963302C302E362C302E342C312C312C31683376336C362D346C2D362D3476
          3348365636222F3E0D0A3C7265637420783D2231382220793D2231322220636C
          6173733D22737430222077696474683D22313022206865696768743D2232222F
          3E0D0A3C7265637420783D2231302220793D2232342220636C6173733D227374
          30222077696474683D22313822206865696768743D2232222F3E0D0A3C726563
          7420783D2231382220793D2231362220636C6173733D22737430222077696474
          683D22313022206865696768743D2232222F3E0D0A3C7265637420783D223138
          2220793D2232302220636C6173733D22737430222077696474683D2231302220
          6865696768743D2232222F3E0D0A3C7061746820636C6173733D227374312220
          643D224D31342C365634483543342E342C342C342C342E352C342C357631222F
          3E0D0A3C2F7376673E0D0A}
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
          463B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
          373237323B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E426C75657B66696C
          6C3A233131373744373B7D262331333B262331303B2623393B2E7374307B6F70
          61636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D224C617965
          725F32223E0D0A09093C672069643D22536176655F6173223E0D0A0909093C70
          6F6C79676F6E20636C6173733D22426C75652220706F696E74733D2233302C32
          20322C3220322C333020322C333020362C333020362C32302032362C32302032
          362C33302033302C3330202623393B2623393B222F3E0D0A0909093C72656374
          20783D22362220793D22322220636C6173733D22576869746522207769647468
          3D22323022206865696768743D223134222F3E0D0A0909093C7061746820636C
          6173733D22426C61636B2220643D224D362C323076313068323056323048367A
          204D32342C3238682D34762D3668345632387A222F3E0D0A0909093C6720636C
          6173733D22737430223E0D0A090909093C7265637420783D22382220793D2234
          2220636C6173733D22426C61636B222077696474683D22382220686569676874
          3D2232222F3E0D0A090909093C7265637420783D22382220793D22382220636C
          6173733D22426C61636B222077696474683D223822206865696768743D223222
          2F3E0D0A0909093C2F673E0D0A0909093C7061746820636C6173733D22477265
          656E2220643D224D32352C3063332E392C302C372C332E312C372C37732D332E
          312C372D372C37632D332E392C302D372D332E312D372D375332312E312C302C
          32352C307A222F3E0D0A0909093C673E0D0A090909093C636972636C6520636C
          6173733D225768697465222063783D223231222063793D22372220723D223122
          2F3E0D0A090909093C636972636C6520636C6173733D22576869746522206378
          3D223235222063793D22372220723D2231222F3E0D0A090909093C636972636C
          6520636C6173733D225768697465222063783D223239222063793D2237222072
          3D2231222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2251
          7569636B5F5072696E742220786D6C6E733D22687474703A2F2F7777772E7733
          2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
          3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
          2220793D22307078222076696577426F783D2230203020333220333222207374
          796C653D22656E61626C652D6261636B67726F756E643A6E6577203020302033
          322033323B2220786D6C3A73706163653D227072657365727665223E26233133
          3B262331303B3C7374796C6520747970653D22746578742F637373223E2E426C
          61636B7B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D22426C61636B2220643D224D31302C326831327638683256
          304838763130683256327A204D32382C38682D32763363302C302E362D302E34
          2C312D312C314837632D302E362C302D312D302E342D312D3156384834632D31
          2E312C302D322C302E392D322C3276313220202623393B63302C312E312C302E
          392C322C322C3268347636683136762D36683463312E312C302C322D302E392C
          322D325631304333302C382E392C32392E312C382C32382C387A204D32322C32
          3276327634483130762D34762D32762D346831325632327A204D32302C323468
          2D38763268385632347A204D32302C3230682D38763220202623393B68385632
          307A222F3E0D0A3C2F7376673E0D0A}
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
          7665222069643D22556E646F223E262331333B262331303B20203C7374796C65
          20747970653D22746578742F637373223E2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C7061746820643D224D33322C32366330
          2C302C302D382D31362D3876364C302C31344C31362C3476364333322C31302C
          33322C32362C33322C32367A222066696C6C3D22233131373744372220636C61
          73733D22426C7565222F3E0D0A3C2F7376673E0D0A}
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
          7665222069643D225265646F223E262331333B262331303B20203C7374796C65
          20747970653D22746578742F637373223E2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C7061746820643D224D31362C31305634
          6C31362C31304C31362C3234762D3643302C31382C302C32362C302C32365330
          2C31302C31362C31307A222066696C6C3D22233131373744372220636C617373
          3D22426C7565222F3E0D0A3C2F7376673E0D0A}
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
          73706163653D227072657365727665223E2E437573746F6D477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E437573746F
          6D426C75657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C67
          2069643D22437574223E0D0A09093C7061746820636C6173733D22437573746F
          6D426C75652220643D224D31312E382C31352E356C322E382D332E314C372C34
          43352E382C352E322C352E372C372C362E362C382E334C31312E382C31352E35
          7A222F3E0D0A09093C7061746820636C6173733D22437573746F6D477265656E
          2220643D224D32392E392C32342E32632D302E332D312E392D312E382D332E36
          2D332E372D34632D312E352D302E342D322E382C302D332E392C302E376C2D31
          2E392D322E316C2D312E312C312E366C312E352C32632D302E372C312E312D31
          2C322E342D302E362C332E3920202623393B2623393B63302E352C312E392C32
          2E312C332E342C342E312C332E374332372E362C33302E342C33302E352C3237
          2E362C32392E392C32342E327A204D32352C3238632D312E372C302D332D312E
          332D332D3373312E332D332C332D3373332C312E332C332C335332362E372C32
          382C32352C32387A222F3E0D0A09093C7061746820636C6173733D2243757374
          6F6D426C75652220643D224D32352C344C31312E362C31382E376C312E322C31
          2E364C31332C323068346C382E342D31312E374332362E332C372C32362E322C
          352E322C32352C347A222F3E0D0A09093C7061746820636C6173733D22437573
          746F6D477265656E2220643D224D392E372C32302E38632D312E312D302E372D
          322E352D312D332E392D302E37632D312E392C302E352D332E342C322E312D33
          2E372C34632D302E352C332E342C322E332C362E322C352E372C352E3863322D
          302E332C332E362D312E382C342E312D332E3720202623393B2623393B63302E
          342D312E352C302E312D322E382D302E362D332E396C312E352D326C2D312E32
          2D312E364C392E372C32302E387A204D372C3238632D312E372C302D332D312E
          332D332D3373312E332D332C332D3373332C312E332C332C3353382E372C3238
          2C372C32387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          3D22436F7079223E0D0A09093C7061746820636C6173733D22426C61636B2220
          643D224D32312C32483131632D302E352C302D312C302E352D312C3176354835
          43342E352C382C342C382E352C342C3976323063302C302E352C302E352C312C
          312C3168313663302E352C302C312D302E352C312D31762D35683563302E352C
          302C312D302E352C312D3120202623393B2623393B56394C32312C327A204D32
          302C323848365631306838763563302C302E352C302E352C312C312C31683556
          32387A204D32362C3232682D34762D376C2D372D37682D335634683876356330
          2C302E352C302E352C312C312C3168355632327A222F3E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
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
          46423131353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D225965
          6C6C6F772220643D224D31322C323476344835632D302E362C302D312D302E34
          2D312D31563363302D302E362C302E342D312C312D3168337632324831327A20
          4D32352C32682D337638683456322E384332362C322E342C32352E362C322C32
          352C327A222F3E0D0A3C7061746820636C6173733D22426C61636B2220643D22
          4D32392C3132483135632D302E362C302D312C302E342D312C3176313663302C
          302E362C302E342C312C312C3168313463302E362C302C312D302E342C312D31
          5631334333302C31322E342C32392E362C31322C32392C31327A204D32382C32
          3848313656313420202623393B6831325632387A204D32362C3230682D38762D
          3268385632307A204D32362C3234682D38762D3268385632347A222F3E0D0A3C
          7061746820636C6173733D22426C61636B2220643D224D31382C32563163302D
          302E362D302E342D312D312D31682D34632D302E362C302D312C302E342D312C
          317631682D32763363302C302E362C302E342C312C312C31683863302E362C30
          2C312D302E342C312D3156324831387A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2252
          65645F43726F73732220786D6C6E733D22687474703A2F2F7777772E77332E6F
          72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F
          2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070782220
          793D22307078222076696577426F783D2230203020313620313622207374796C
          653D22656E61626C652D6261636B67726F756E643A6E65772030203020313620
          31363B2220786D6C3A73706163653D227072657365727665223E262331333B26
          2331303B3C7374796C6520747970653D22746578742F637373223E2E5265647B
          66696C6C3A234431314331433B7D3C2F7374796C653E0D0A3C706F6C79676F6E
          20636C6173733D225265642220706F696E74733D2231342C342031322C322038
          2C3620342C3220322C3420362C3820322C313220342C313420382C3130203132
          2C31342031342C31322031302C3820222F3E0D0A3C2F7376673E0D0A}
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
          3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32342C323076364838762D36683130762D3448385636483543
          342E342C362C342C362E342C342C3776323263302C302E362C302E342C312C31
          2C3168323263302E362C302C312D302E342C312D31762D394832347A204D3138
          2C36682D387638683856367A20202623393B204D31342C3132682D3256386832
          5631327A222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D
          33312C32682D35682D326C2D342C347632763963302C302E362C302E342C312C
          312C3168313063302E362C302C312D302E342C312D3156334333322C322E342C
          33312E362C322C33312C327A204D33302C3136682D385638683320202623393B
          63302E362C302C312D302E342C312D31563468345631367A222F3E0D0A3C2F73
          76673E0D0A}
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
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A
          234646423131353B7D262331333B262331303B2623393B2E5265647B66696C6C
          3A234431314331433B7D262331333B262331303B2623393B2E477265656E7B66
          696C6C3A233033394332333B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E313B7D262331333B262331303B2623393B2E
          7374337B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374347B6F7061636974793A302E343B7D262331333B262331303B2623393B
          2E7374357B6F7061636974793A302E35353B7D262331333B262331303B262339
          3B2E7374367B6F7061636974793A302E373B7D262331333B262331303B262339
          3B2E7374377B6F7061636974793A302E38353B7D262331333B262331303B2623
          393B2E7374387B6F7061636974793A302E323B7D262331333B262331303B2623
          393B2E7374397B6F7061636974793A302E333B7D262331333B262331303B2623
          393B2E737431307B6F7061636974793A302E363B7D262331333B262331303B26
          23393B2E737431317B6F7061636974793A302E383B7D262331333B262331303B
          2623393B2E737431327B6F7061636974793A302E393B7D3C2F7374796C653E0D
          0A3C7061746820636C6173733D22477265656E2220643D224D32382C34763130
          682D302E324831386C332E362D332E364332302E322C382E392C31382E322C38
          2C31362C38632D332E372C302D362E382C322E362D372E372C3648342E324335
          2E312C382E332C31302E312C342C31362C3420202623393B63332E332C302C36
          2E332C312E332C382E352C332E354C32382C347A204D31362C3234632D322E32
          2C302D342E322D302E392D352E362D322E344C31342C313848342E3248347631
          306C332E352D332E3543392E372C32362E372C31322E372C32382C31362C3238
          63352E392C302C31302E382D342E332C31312E382D313020202623393B682D34
          2E314332322E382C32312E342C31392E372C32342C31362C32347A222F3E0D0A
          3C2F7376673E0D0A}
      end>
  end
  object iComponentsIcons: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 984
    Top = 440
    Bitmap = {
      494C010115001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000371E04820000
      00000000000000000000000000000000000000000000371E0482371E04820000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FF371E
      048200000000000000000000000000000000371E0482904F0BD1D77610FF371E
      0482000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF371E04820000000000000000371E0482904F0BD101000014D77610FFD776
      10FF371E04820000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FF371E0482371E0482904F0BD10100001400000000D77610FFD776
      10FFD77610FF371E048200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF904F0BD1010000140000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF01000014000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000001000014D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FF000000000000000001000014904F0BD1D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000341D037ED776
      10FFD77610FFD77610FF0000000001000014904F0BD1341D037E341D037ED776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000341D
      037ED77610FFD77610FF01000014904F0BD1341D037E0000000000000000341D
      037ED77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000341D037ED77610FF904F0BD1341D037E0000000000000000000000000000
      0000341D037ED77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000341D037E341D037E000000000000000000000000000000000000
      000000000000341D037E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000C373737B70707074200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00050F0F0F5F3C3C3CBA626262EE717171FF636363EF3D3D3DBB101010610000
      0005000000000000000000000000000000000000000000000000000000000000
      000A3A3A3ABD626262F507070742000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00C0C0C0008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF656565F1000000000000000000000000020202284D4D
      4DD23D3D3DBB0B0B0B500000001400000001000000130A0A0A4F3B3B3BB94E4E
      4ED40303032B00000000000000000000000000000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF626262F50909094C3A3A3ABD6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF0000000000000000020202285C5C5CE61010
      1061000000000000000000000000000000000000000000000000000000000F0F
      0F5E5C5C5CE70303032B000000000000000000000000000000006A6A6AFF0000
      0000000000000000000A3A3A3ABD626262F50707074200000000000000000000
      0000000000156A6A6AFF0000000000000000000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000717171FF00000000717171FF0000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000717171FF00000000717171FF00000000000000044B4B4BD1101010620503
      0029000000000000000000000000000000000000000000000000000000000000
      03200F0F0F5E4E4E4ED4000000050000000000000000000000006A6A6AFF0000
      000000000000000000000000000A3A3A3ABD626262F51B1B1B82484848D26868
      68FC5D5D5DEF6A6A6AFF0101011D00000000000000000000000080808000FFFF
      FF00FFFFFF0080800000FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000717171FF00000000717171FF0000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000F0F0F5D3E3E3EBD04020025C76E
      0FF53A2004850000000000000000000000000000000000000000070735821818
      B7EF0000021C3B3B3BB9101010610000000000000000000000006A6A6AFF0000
      00000000000000000000000000000000000A464646D06A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF535353E200000018000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF000000003A3A3AB70C0C0C54512C069DD776
      10FF562F06A100000000000000000000000000000000000000010B0B5BA81B1B
      D1FF090943910A0A0A503D3D3DBB0000000000000000000000006A6A6AFF0000
      0000000000000000000000000000000000095C5C5CEE6A6A6AFF151515720000
      00070303032F505050DD6A6A6AFF2B2B2BA2000000000000000080808000FFFF
      FF00FFFFFF0080800000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000606060EB00000017AB5F0DE4D776
      10FF0603002B000000002222228E6D6D6DFA2525259200000000000005281B1B
      D1FF141499DA00000013636363EF0000000000000000000000006A6A6AFF0000
      00000000000000000000000000000606063D6A6A6AFF434343CB000000000000
      0000000000000E0E0E5F6A6A6AFF606060F3000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF000000006D6D6DFB00000005CF7210FAD776
      10FF0000000600000000696969F6717171FF6D6D6DFA00000000000000011B1B
      D1FF1919BCF200000001717171FF0000000000000000000000006A6A6AFF0000
      00000000000000000000000000000606063E6A6A6AFF444444CD000000000000
      0000000000000F0F0F616A6A6AFF606060F3000000000000000080808000FFFF
      FF00FFFFFF0080800000FFFFFF00808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF000000005F5F5FEA01010118AB5D0DE3D776
      10FF0603002B000000002121218A696969F6646464F007070740000001141B1B
      CDFD14149CDC00000014626262EE0000000000000000000000006A6A6AFF0000
      0000000000000000000000000000000000095B5B5BEC6A6A6AFF171717770000
      000C04040434525252E06A6A6AFF2B2B2BA2000000000000000080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000393939B60C0C0C554F2B069BD776
      10FF5B3207A60000000000000000000000000505053B5C5C5CE7070707400404
      246A090948960B0B0B513C3C3CBA0000000000000000000000006A6A6AFF0000
      0000000000000000000000000000000000000C0C0C56686868FC6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF555555E40101011A000000000000000080808000FFFF
      FF00C0C0C0008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF00000000717171FF00000000717171FF0000
      0000717171FF00000000717171FF000000000E0E0E5C404040BF03020023C46C
      0FF4D77610FF5B3207A60603002B00000005010000170505053B5C5C5CE70707
      07400000000B3D3D3DBB101010600000000000000000000000006A6A6AFF0000
      000000000000000000000000000000000000000000000606063F3A3A3ABD6161
      61F4595959E96A6A6AFF0101011D00000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000000000044A4A4ACF111111661109
      0149C46C0FF4D77610FFD77610FFD77610FFD37410FD1E1002600505053B1616
      1672101010614D4D4DD2000000050000000000000000000000006A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006A6A6AFF0000000000000000000000000000000080808000FFFF
      FF00C0C0C0008080800080808000808080008080800080808000808080008080
      800080808000FFFFFF000000000000000000626262ED717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF636363EF0000000000000000020202265C5C5CE51111
      1166030200234F2B069BAB5D0DE3CF7210FAAB5D0DE34C2A0598000000051010
      10625C5C5CE602020228000000000000000000000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000006A6A6AFF0000000000000000000000000000000080808000FFFF
      FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202264A4A
      4ACF404040BF0C0C0C540101011800000005000000170B0B0B533E3E3EBD4B4B
      4BD1020202280000000000000000000000000000000000000000000000000000
      00006A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000006A6A6AFF00000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00040E0E0E5B393939B65F5F5FEA6D6D6DFB606060EB3A3A3AB70F0F0F5D0000
      0004000000000000000000000000000000000000000000000000000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919197D6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001919197D6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001919
      197D6A6A6AFF1B1B1B8200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001919197D6A6A6AFF1B1B1B82000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001919197D6A6A6AFF1B1B1B820000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001919197D6A6A6AFF1B1B1B8200000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001919197D6A6A6AFF1B1B1B82000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001B1B1B826A6A6AFF1919197D000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B1B1B826A6A6AFF1919197D00000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B826A6A6AFF1919197D0000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000006A6A6AFF00000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      00001B1B1B826A6A6AFF1919197D000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000001B1B
      1B826A6A6AFF1919197D00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000001B1B1B826A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000001B1B1B826A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020227191919792D2D2DA12D2D2DA11919197902020225000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000C2C2C
      2C9F7C7C7CFDB0B0B0FFCACACAFFCBCBCBFFB1B1B1FF7C7C7CFD282828980000
      0009000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000636363EF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F10000000000000000000000000000000A454545C8A8A8
      A8FFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FFAAAAAAFF3A3A
      3AB600000000000000000000000000000000444444CD6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF484848D20000000000000000000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000024242490A4A4A4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B
      4B9E000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000015717171F8F4F4F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDC
      DCED0000000C0000000000000000000000006A6A6AFF6A6A6AFF000000000000
      0000000000006A6A6AFF000000000000000000000000000000006A6A6AFF0000
      000000000000000000006A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666F27171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000E0E0E5A9F9F9FFFFFFFFFFFFFFF
      FFFFFFFFFFFFF7F7FDFF8888E7FF8888E7FFF7F7FDFFFFFFFFFFFFFFFFFFFFFF
      FFFF1C1C1C560000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000001A1A1A7BB4B4B4FFFFFFFFFFFFFF
      FFFFFFFFFFFF9B9BEBFF1B1BD1FF1B1BD1FFA0A0ECFFFFFFFFFFFFFFFFFFFDFD
      FDFF525252B10000000300000000000000006A6A6AFF6A6A6AFF000000000000
      0000000000006A6A6AFF000000000000000000000000000000006A6A6AFF0000
      000000000000000000006A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000017171774B1B1B1FFFFFFFFFFFFFF
      FFFFF8F8FDFF3636D6FF1B1BD1FF1B1BD1FFBABAF1FFFFFFFFFFFDFDFDFFA5A5
      A5FF717171FF2F2F2FA600000003000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000717171FF0000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000008080845929292FFFFFFFFFFFFFF
      FFFF9494E9FF1B1BD1FF6464E0FFCDCDF5FFFFFFFFFFFDFDFDFFA5A5A5FF7171
      71FF717171FF717171FF2F2F2FA6000000036A6A6AFF6A6A6AFF000000000000
      0000000000006A6A6AFF000000000000000000000000000000006A6A6AFF0000
      000000000000000000006A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000717171FF0000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBD680EEF000000000000000000000005595959E2E3E3E3FFECEC
      FBFF5858DEFFC9C9F4FFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FFCFCFCFFFB5B5
      B5FF595959E20D0D0D580D0D0D580101011E6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000D77610FFD77610FFD77610FFD77610FFD77610FF00000000000000007171
      71FF00000000000000000000000000000000000000000B0B0B53898989FFE5E5
      F1FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FF8A8A
      8AFF0D0D0D560000000000000000000000006A6A6AFF6A6A6AFF000000000000
      0000000000006A6A6AFF000000000000000000000000000000006A6A6AFF0000
      000000000000000000006A6A6AFF6A6A6AFF0000000000000000000000000000
      00006A6A6AFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000BF690FF0D77610FFD77610FFD77610FFC16A0FF200000000000000007171
      71FF000000000000000000000000000000000000000000000000181818768585
      85FED9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADAFF868686FE1A1A
      1A7C000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000707
      0744474747CA848484FF9E9E9EFF9E9E9EFF848484FF4B4B4BCF090909490000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF6666
      66F2000000000000000000000000000000000000000000000000000000000000
      000000000000010101202D2D2DA12E2E2EA30202022300000000000000000000
      000000000000000000000000000000000000414141C76A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF444444CD00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C544D4D4DD34D4D4DD30C0C0C5400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303032C0D0D0D580D0D0D580303032C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000404043028282898535353DB6D6D6DFB6E6E6EFC545454DC2929299A0404
      0433000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000082828
      2898707070FE717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FE2A2A2A9C0000000A0000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000080808000000000008080
      8000000000008080800000000000808080000000000080808000000000008080
      8000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000083F3F3FBF7171
      71FF6B6B6BF72222228D040404310000000500000005030303302121218B6969
      69F6717171FF424242C30000000A00000000000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000666565EF747373FF7473
      73FF747373FF747373FF747373FF747373FF747373FF747373FF747373FF7473
      73FF747373FF747373FF686767F1000000000000000027272796717171FF5959
      59E30303032D0000000000000000000000000000000000000000000000000303
      032A575757E0717171FF2A2A2A9C00000000000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000747373FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000747373FF000000000303032E6F6F6FFD6B6B6BF80303
      032E0000000002020228373737B2696969F66A6A6AF7383838B40303032B0000
      00000303032A696969F6717171FE04040433000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000747373FF00000000489C
      11FF489C11FF489C11FF489C11FF489C11FF489C11FF1125047E040A01411126
      047F0409003F00000000747373FF0000000026262694717171FF242424900000
      000002020227636363EE717171FF717171FF717171FF717171FF646464F00303
      032B000000002121218B717171FF2929299A000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000747373FF00000000489C
      11FF489C11FF489C11FF489C11FF489C11FF1125047E040A01411126047F0409
      003F0000000000000000747373FF00000000505050D7717171FF040404350000
      0000353535AF717171FF717171FF717171FF717171FF717171FF717171FF3838
      38B40000000003030330717171FF545454DC000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000747373FF00000000489C
      11FF489C11FF489C11FF489C11FF1125047E000000000409003F0409003F0000
      00000000000000000000747373FF00000000696969F6717171FF0000000A0000
      0000656565F1717171FF717171FF717171FF717171FF717171FF717171FF6A6A
      6AF70000000000000005717171FF6F6F6FFC000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000747373FF000000001125
      047E489C11FF489C11FF1125047E000000000000000000000000000000000000
      00000000000000000000747373FF00000000696969F6717171FF0000000B0000
      0000656565F1717171FF717171FF717171FF717171FF717171FF717171FF6969
      69F60000000000000006717171FF6D6D6DFB000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000747373FF000000000000
      00001125047E1125047E00000000000000000000000000000000000000000000
      00000000000000000000747373FF000000004F4F4FD6717171FF050505360000
      0000343434AD717171FF717171FF717171FF717171FF717171FF717171FF3737
      37B20000000004040431717171FF535353DB000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000747373FF000000000000
      0000000000000000000000000000000000000000000008344A8B19A8F0F90837
      4F8F0000000000000000747373FF0000000025252593717171FF252525930000
      000002020225616161EC717171FF717171FF717171FF717171FF636363EE0202
      0228000000002222228D717171FF28282898000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000747373FF000000000000
      0000000000000000000000000000000000000000000018A2E8F51AB0FCFF19A8
      F0F90000000000000000747373FF000000000303032C6F6F6FFD6B6B6BF90404
      04310000000002020225343434AD656565F1656565F1353535AF020202270000
      00000303032D6A6A6AF7707070FE04040430000000006A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000006A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000747373FF000000000000
      000000000000000000000000000000000000000000000731478718A2E8F50834
      4A8B0000000000000000747373FF000000000000000025252593717171FF5C5C
      5CE5040404310000000000000000000000000000000000000000000000000303
      032E595959E3717171FF2828289800000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000C0C0C000FFFF
      FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
      FF00C0C0C000FFFFFF00808080000000000000000000747373FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000747373FF0000000000000000000000073D3D3DBB7171
      71FF6B6B6BF925252593050505360000000B0000000A04040435242424906B6B
      6BF8717171FF3F3F3FBF0000000800000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000080808000FFFFFF00C0C0
      C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
      C000FFFFFF00C0C0C000000000000000000000000000646363ED747373FF7473
      73FF747373FF747373FF747373FF747373FF747373FF747373FF747373FF7473
      73FF747373FF747373FF666565EF000000000000000000000000000000072525
      25936F6F6FFD717171FF717171FF717171FF717171FF717171FF717171FF6F6F
      6FFD27272796000000080000000000000000000000006A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000808080000000
      0000808080000000000080808000000000008080800000000000808080000000
      0000808080000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303032C25252593505050D6696969F6696969F6505050D7262626940303
      032E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      71FF717171FF717171FF676767F4000000000000000000000000140B014FD776
      10FF98530BD70000000000000000000000000000000000000000000000009050
      0BD1D77610FF160C01530000000000000000666666F2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF676767F40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000000000000000000000000006BA65
      0EEDD77610FF09050036000000000000000000000000000000000603002BD776
      10FFBB670EEE000000070000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FFC16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC56C0FF400000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000004C29
      0597D77610FF4727059300000000000000000000000000000000391F0484D776
      10FF4D2A0599000000000000000000000000717171FF00000000000000000000
      000101010122000000050000000000000000000000070101011C010101180202
      0224000000000000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      000000000000371E0482371E0482000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000B06
      003CD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF0C06003D000000000000000000000000717171FF00000000000000002323
      238E696969F5484848CB717171FF0404043407070740717171FF454545C86969
      69F5161616720000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000000000030F080145BA670EEED776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      0000371E0482D77610FFD77610FF371E04820000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0001A35A0DDED77610FFD77610FFD77610FFD77610FFD77610FFD77610FFA35A
      0DDE00000001000000000000000000000000717171FF00000000000000003333
      33AC2626269504040431717171FF04040434070707406B6B6BF8000000051B1B
      1B7C535353DB0000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000583007A3B8650EEC0000000D49280595D776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF00000000371E
      0482D77610FF341D037E341D037ED77610FF371E048200000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000391F0484D77610FF583007A30000000000000000532D069FD77610FF371E
      048200000000000000000000000000000000717171FF00000000000000000101
      011B1F1F1F87393939B5717171FF04040433070707406F6F6FFD0101011B1C1C
      1C7F545454DC0000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000001A0E02592A1703710000000881470AC6D776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF00000000341D
      037E341D037E0000000000000000341D037ED77610FF371E0482000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000005030029D77610FFC46C0FF40000000C0000000AC16A0FF2D77610FF0402
      002700000000000000000000000000000000717171FF00000000000000000808
      0846323232AA363636B0616161EC0000000E07070740717171FF353535AE6565
      65F1121212670000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000001209014A0F080144160C0152D07210FBD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      000000000000000000000000000000000000341D037ED77610FF371E04820000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000894B0BCCD77610FF1C0F025D190E0258D77610FF84490AC80000
      000000000000000000000000000000000000717171FF00000000000000000000
      00040606063D0B0B0B530101011A0000000007070740717171FF000000000000
      0000000000000000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000004D2A0599673908B10000000081470AC6D776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      00000000000000000000000000000000000000000000341D037ED77610FF371E
      04820000000000000000717171FF000000000000000000000000000000000000
      00000000000029170371D77610FF703D08B86B3B08B4D77610FF2615026C0000
      000000000000000000000000000000000000717171FF00000000000000000000
      00000000000000000000000000000000000004040433484848CB000000000000
      0000000000000000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000100000001001000014160C0154C76E0FF6D776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000341D037ED776
      10FF371E048200000000717171FF000000000000000000000000000000000000
      00000000000002010019D17410FCD17310FCCF7210FACF7210FA010000150000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000717171FF000000000000
      000000000000000000000000000000000000000000000000000000000000341D
      037E341D037E00000000717171FF000000000000000000000000000000000000
      00000000000000000000713E08B9D77610FFD77610FF683908B2000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FFBF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC16A0FF200000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000000000001D10025ED77610FFD77610FF180D0256000000000000
      000000000000000000000000000000000000646464F0717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF666666F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000646464F0717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF666666F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C001000000000000C001000000000000C001000000000000
      C001000000000000C00100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFFF00000000000080010000
      0000000080010000000000008001000000000000800100000000000080010000
      0000000080010000000000008001000000000000800100000000000080010000
      0000000080010000000000008001000000000000800100000000000080010000
      000000008001000000000000FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 28836824
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2254
          6162732220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F3230
          30302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E
          77332E6F72672F313939392F786C696E6B2220783D223070782220793D223070
          78222076696577426F783D2230203020333220333222207374796C653D22656E
          61626C652D6261636B67726F756E643A6E6577203020302033322033323B2220
          786D6C3A73706163653D227072657365727665223E262331333B262331303B3C
          7374796C6520747970653D22746578742F6373732220786D6C3A73706163653D
          227072657365727665223E2E57686974657B66696C6C3A234646464646463B7D
          262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23
          4431314331433B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D262331333B262331303B2623393B2E477265656E7B66
          696C6C3A233033394332333B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E353B7D262331333B262331303B2623393B2E7374317B
          6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069643D224C
          6162656C223E0D0A09093C7061746820636C6173733D22426C75652220643D22
          4D32322E372C32384832374C31382E332C34682D302E34483134682D302E344C
          352C323868342E336C322E322D3668392E314C32322E372C32387A204D31322E
          392C31384C31362C392E346C332E312C382E364831322E397A222F3E0D0A093C
          2F673E0D0A3C2F7376673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D31342E332C3232682D322E35762D312E
          326C302C30632D302E362C312D312E342C312E352D322E362C312E35632D302E
          382C302D312E352D302E322D322D302E37732D302E372D312E312D302E372D31
          2E3963302D312E372C312D322E362C332D322E3920202623393B6C322E332D30
          2E3363302D302E392D302E352D312E342D312E352D312E34732D322C302E332D
          322E392C302E39762D3263302E342D302E322C302E392D302E342C312E352D30
          2E3573312E322D302E322C312E382D302E3263322E352C302C332E372C312E32
          2C332E372C332E3776354831342E337A20202623393B204D31312E382C31382E
          35762D302E366C2D312E362C302E32632D302E392C302E312D312E332C302E35
          2D312E332C312E3263302C302E332C302E312C302E362C302E332C302E377330
          2E352C302E332C302E392C302E3363302E352C302C302E392D302E322C312E32
          2D302E3520202623393B4331312E362C31392E352C31312E382C31392C31312E
          382C31382E357A222F3E0D0A3C7061746820636C6173733D22426C61636B2220
          643D224D33312C34483143302E342C342C302C342E342C302C3576323263302C
          302E362C302E342C312C312C3168333063302E362C302C312D302E342C312D31
          56354333322C342E342C33312E362C342C33312C347A204D33302C3236483256
          366832385632367A222F3E0D0A3C7061746820636C6173733D22426C61636B22
          20643D224D32302C32312E334C32302C32312E336C302C302E39682D322E3556
          31302E3468322E357635683063302E362D302E392C312E352D312E342C322E36
          2D312E3463312C302C312E382C302E342C322E342C312E3120202623393B6330
          2E362C302E372C302E382C312E372C302E382C322E3963302C312E332D302E33
          2C322E342D312C332E32632D302E372C302E382D312E352C312E322D322E362C
          312E324332312E322C32322E342C32302E352C32322E312C32302C32312E337A
          204D31392E392C31372E3976302E3820202623393B63302C302E352C302E312C
          302E392C302E342C312E3363302E332C302E332C302E372C302E352C312E312C
          302E3563302E362C302C312D302E322C312E332D302E3763302E332D302E342C
          302E352D312E312C302E352D312E3863302D302E372D302E312D312E322D302E
          342D312E3620202623393B632D302E332D302E342D302E372D302E362D312E32
          2D302E36632D302E352C302D302E392C302E322D312E322C302E364332302E31
          2C31362E392C31392E392C31372E342C31392E392C31372E397A222F3E0D0A3C
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
          303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
          696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C61
          73733D22426C75652220643D224D31372E322C31342E3563302E332D302E332C
          302E352D302E362C302E352D312E3163302D302E392D302E372D312E332D322D
          312E33682D3176322E3868312E324331362E342C31342E392C31362E382C3134
          2E382C31372E322C31342E357A222F3E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D31372E362C31372E33632D302E332D302E332D302E382D
          302E342D312E342D302E34682D312E3556323068312E3563302E362C302C312E
          312D302E312C312E352D302E3463302E342D302E332C302E352D302E372C302E
          352D312E3220202623393B4331382E312C31372E392C31372E392C31372E362C
          31372E362C31372E337A222F3E0D0A3C7061746820636C6173733D22426C7565
          2220643D224D33312C36483143302E342C362C302C362E342C302C3776313863
          302C302E362C302E342C312C312C3168333063302E362C302C312D302E342C31
          2D3156374333322C362E342C33312E362C362C33312C367A204D31392E382C32
          3120202623393B632D302E382C302E362D312E382C312D332E322C3148313256
          31302E3168342E3363312E332C302C322E332C302E322C332E312C302E377331
          2E312C312E322C312E312C322E3163302C302E362D302E322C312E322D302E37
          2C312E37632D302E342C302E352D312C302E382D312E372C3176302020262339
          3B63302E382C302E312C312E352C302E342C322C302E3963302E352C302E352C
          302E382C312E322C302E382C312E394332302E392C31392E352C32302E352C32
          302E342C31392E382C32317A222F3E0D0A3C2F7376673E0D0A}
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
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D322C3376323663302C302E362C302E342C312C312C31683236
          63302E362C302C312D302E342C312D31563363302D302E362D302E342D312D31
          2D31483343322E342C322C322C322E342C322C337A204D32382C323848345634
          6832345632387A222F3E0D0A3C706F6C79676F6E20636C6173733D22426C7565
          2220706F696E74733D2232342C382031322C323020382C313620362C31382031
          302C32322031322C32342031342C32322032362C313020222F3E0D0A3C2F7376
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
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
          463B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337
          32373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
          233131373744373B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D3C2F7374796C653E0D0A3C7061746820
          636C6173733D22426C61636B2220643D224D382C3043332E362C302C302C332E
          362C302C3873332E362C382C382C3873382D332E362C382D385331322E342C30
          2C382C307A204D382C3134632D332E332C302D362D322E372D362D3673322E37
          2D362C362D3673362C322E372C362C3620202623393B5331312E332C31342C38
          2C31347A204D31322C3863302C322E322D312E382C342D342C34732D342D312E
          382D342D3473312E382D342C342D345331322C352E382C31322C387A222F3E0D
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
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E7374307B6669
          6C6C3A233642364236423B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D227374302220643D224D312C31763134683134563148317A204D31342C31
          34483256346831325631347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008080
          8000000000008080800000000000808080000000000080808000000000008080
          8000000000008080800000000000808080000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
          FF00C0C0C000FFFFFF00C0C0C000FFFFFF008080800000000000000000008080
          8000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0
          C000FFFFFF00C0C0C000FFFFFF00C0C0C0000000000000000000000000000000
          0000808080000000000080808000000000008080800000000000808080000000
          0000808080000000000080808000000000008080800000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF00008001000080010000800100008001000080010000800100008001
          000080010000800100008001000080010000800100008001000080010000FFFF
          0000}
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233734373437
          353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23333837
          3642423B7D262331333B262331303B2623393B2E5265647B66696C6C3A234430
          323032373B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234643423031423B7D262331333B262331303B2623393B2E477265656E7B66
          696C6C3A233132394334393B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C7061746820636C61
          73733D22426C61636B2220643D224D32392C34483343322E352C342C322C342E
          352C322C3576323263302C302E352C302E352C312C312C3168323663302E352C
          302C312D302E352C312D3156354333302C342E352C32392E352C342C32392C34
          7A204D32382C3236483456366832345632367A222F3E0D0A3C636972636C6520
          636C6173733D2259656C6C6F77222063783D223231222063793D223131222072
          3D2233222F3E0D0A3C706F6C79676F6E20636C6173733D22477265656E222070
          6F696E74733D2232302C32342031302C313420362C313820362C323420222F3E
          0D0A3C6720636C6173733D22737430223E0D0A09093C706F6C79676F6E20636C
          6173733D22477265656E2220706F696E74733D2232322C32342031382C323020
          32302C31382032362C3234202623393B222F3E0D0A093C2F673E0D0A3C2F7376
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
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32362C3134763132483130762D34762D32762D364838763648
          36563668313676386832563563302D302E362D302E342D312D312D3148354334
          2E342C342C342C342E342C342C3576313663302C302E362C302E342C312C312C
          316833763520202623393B63302C302E352C302E352C312C312C316831386330
          2E352C302C312D302E352C312D315631344832367A222F3E0D0A3C7061746820
          636C6173733D22426C75652220643D224D32372C3132682D39563963302D302E
          362D302E342D312D312D31483943382E342C382C382C382E342C382C39763476
          317632683230762D334332382C31322E352C32372E352C31322C32372C31327A
          222F3E0D0A3C2F7376673E0D0A}
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
          73706163653D227072657365727665223E2E7374307B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E7374317B66696C6C3A23464646
          4646463B7D262331333B262331303B2623393B2E7374327B66696C6C3A234431
          314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22737430
          2220643D224D31332C352E3443362E342C352E392C312E312C31312E352C312C
          3138632D302E322C372E332C352E372C31332E332C31332C31332E3363362E34
          2C302C392E392D342E372C392E392D342E374C31392C31372E3368372E392020
          2623393B4332362E342C31302E332C32302E322C342E382C31332C352E347A22
          2F3E0D0A3C706F6C79676F6E20636C6173733D227374302220706F696E74733D
          2231352C332E332031372C332E332031372C312E332031312C312E332031312C
          332E332031332C332E332031332C372E332031352C372E332031352C372E3320
          222F3E0D0A3C7061746820636C6173733D227374312220643D224D31342C372E
          3363362E312C302C31312C342E392C31312C3131732D342E392C31312D31312C
          3131732D31312D342E392D31312D313153372E392C372E332C31342C372E337A
          222F3E0D0A3C706F6C79676F6E20636C6173733D227374302220706F696E7473
          3D2231392C31332E332032352C31392E332033312C31332E3320222F3E0D0A3C
          7061746820636C6173733D227374322220643D224D31342E322C31352E336C2D
          372E322D346C342C372E3263302E312C312E372C312E372C332E312C332E362C
          322E3763312E322D302E322C322E312D312E322C322E332D322E334331372E33
          2C31372E312C31362C31352E352C31342E322C31352E337A222F3E0D0A3C2F73
          76673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D226261636B636F6C6F722220643D224D31352C3248314330
          2E342C322C302C322E342C302C3376313063302C302E362C302E342C312C312C
          3168313463302E362C302C312D302E342C312D3156334331362C322E342C3135
          2E362C322C31352C327A204D31342C36682D335635683356367A20202623393B
          204D362C313056396834763148367A204D31302C313176314836762D31483130
          7A204D31302C377631483656374831307A204D362C3656356834763148367A20
          4D352C3848325637683356387A204D352C3976314832563948357A204D31312C
          3968337631682D3356397A204D31312C385637683376314831317A2020262339
          3B204D352C3576314832563548357A204D322C31316833763148325631317A20
          4D31312C3132762D31683376314831317A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C726563
          7420783D22322220793D22312220636C6173733D226261636B636F6C6F722220
          77696474683D223522206865696768743D2233222F3E0D0A3C706F6C79676F6E
          20636C6173733D226261636B636F6C6F722220706F696E74733D22382C392038
          2C3820352C3820352C3520342C3520342C313420352C313420382C313420382C
          313320352C313320352C3920222F3E0D0A3C7265637420783D22392220793D22
          372220636C6173733D226261636B636F6C6F72222077696474683D2235222068
          65696768743D2233222F3E0D0A3C7265637420783D22392220793D2231322220
          636C6173733D226261636B636F6C6F72222077696474683D2235222068656967
          68743D2233222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C726563
          7420783D22312220793D22312220636C6173733D226261636B636F6C6F722220
          77696474683D22313422206865696768743D2234222F3E0D0A3C726563742078
          3D22312220793D22362220636C6173733D226261636B636F6C6F722220776964
          74683D22313022206865696768743D2234222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706F6C
          79676F6E20636C6173733D226261636B636F6C6F722220706F696E74733D2231
          352C3120312C3120332C3320382C3820332C313320312C31352031352C313520
          31352C313320352C313320392C392031302C3820392C3720352C332031352C33
          20222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D226261636B636F6C6F722220643D224D312C317631346831
          34563148317A204D322C313456356833763948327A204D31342C31344836762D
          3468385631347A204D31342C3948365635683856397A204D31342C3448325632
          68313256347A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C726563
          7420793D22382220636C6173733D226261636B636F6C6F72222077696474683D
          223722206865696768743D2237222F3E0D0A3C7265637420636C6173733D2262
          61636B636F6C6F72222077696474683D223722206865696768743D2237222F3E
          0D0A3C7265637420783D22382220636C6173733D226261636B636F6C6F722220
          77696474683D223722206865696768743D2237222F3E0D0A3C2F7376673E0D0A}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00808080000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00C0C0C000808080008080800080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF0080800000FFFFFF0080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF0080800000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF0080800000FFFFFF0080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00C0C0C000808080008080800080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00C0C0C000808080008080800080808000808080008080
          8000808080008080800080808000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF0080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000FFFFFF0000000000FF00FF00FF00FF00FF00
          FF00808080008080800080808000808080008080800080808000808080008080
          80008080800080808000808080008080800080808000FF00FF00}
        MaskColor = clFuchsia
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
          643D22426172636F6465223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D32392C34483143302E352C342C302C342E352C302C357632
          3263302C302E352C302E352C312C312C3168323863302E352C302C312D302E35
          2C312D3156354333302C342E352C32392E352C342C32392C347A204D32382C32
          36483256366832365632367A20202623393B2623393B204D362C323448345638
          68325632347A204D31302C32304838563868325632307A204D31342C3234682D
          32563868325632347A204D31382C3230682D32563868325632307A204D32322C
          3230682D32563868325632307A204D32362C3234682D32563868325632347A22
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
          2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C673E
          0D0A09093C696D616765207374796C653D22646973706C61793A6E6F6E653B6F
          766572666C6F773A76697369626C653B222077696474683D2231363522206865
          696768743D223331302220786C696E6B3A687265663D22646174613A696D6167
          652F6A7065673B6261736536342C2F396A2F34414151536B5A4A526741424167
          4541534142494141442F374141525248566A61336B4141514145414141414867
          41412F2B34414955466B62324A6C414754414141414141514D41202045414D43
          417759414141546F4141414A6B4141414733622F327743454142414C4377734D
          4378414D44424158447730504678735545424155477838584678635846783865
          46786F6147686F5820204868346A4A53636C497834764C7A4D7A4C7939415145
          4241514542415145424151454241514541424551385045524D52465249534652
          51524642455547685157466851614A686F6148426F6120204A6A416A48683465
          48694D774B79346E4A7963754B7A55314D4441314E5542415030424151454241
          514542415145424151502F43414245494154594170514D424967414345514544
          4551482F20207841432B41414541417745424151414141414141414141414141
          4141417751464167454741514542415145414141414141414141414141414141
          4141415149444541414341674544417751422020424149444141414141414143
          4177454542514177455341544E424168456852414D5545564269496A4D795157
          4551414341514D434177514743514D44425145414141414241674D4145524968
          2020424445694530465273544977595846796B744A41675A4768516C496A4D78
          515149494C5259714C7777624A444A4155534141494241515549415151444141
          41414141414141414552414441682020515747424168416738444652635A4768
          456B437877534C524D6D4C2F3267414D4177454141684544455141414150732F
          5A4B6573324766746C5237784E643964776E6179697373697373697320207369
          73736973736973736972484A5A72356A3654744C546930695A48656F6F494141
          4141414172545135654C6130666C50714E754B3169464A596164697450337A32
          4141414141414B316976202077573264646956533671327A2B54535576533479
          3768595A6D6D41414141566F704C4A6E58752F53476C706A466D31426C324C67
          7A3464595A32694141414145475A787A6E743374596537652020644747354863
          7836475870313049414141414141727A77304E5454372B5A2B6B6C36564B7361
          716835576779644B4A4141414141415131724D316D5A70656C6771364B4D7544
          62565173546F2020414141414141687A644C4F3369446278746D7133466D767A
          3344446434713733484A41414141414145506E754C764F745038743944793162
          5559744E4E695356727372673245453841414141202041513532697379746676
          334F2B4F4A6C7A526B74437057314278324141414141454F50734D36784E374C
          316459703164534A61506C365373364B335A4D69532F4B5A6B4733795A757253
          3054202030514142443378444C335A2B562B70787231517A2B6D4E396A656D77
          78504B33474836626235796333454D304144454E734550505874554E4F475538
          686E3969764E3249665A4F546A727630202068725878353641447A304151352B
          68795A756C785A78724D7A2F6F2B4F6D63726E5A706B4E443644302B65363375
          53546F6741414143486A75444F7562767A7630665058486C476E333537372020
          3566534E4358352F6B2B6A59454A394B7762706F6941426947324347534D5232
          71566D587446335A3039486A6E6B6B656A783641414141496372567063393558
          304D6E57706C30666F32732F202050393771766E7574385956623662672B6333
          765A7749414141684B316B6C72357A364F6F656F73334E326F38433557704C38
          3932627A7A3241414141414959537976706C656A4E414141414120204141412F
          2F396F4143414543414145464142695A6B686B64652B76665969654A3976546E
          5959667867702F796A587473785050547873382B6E50537A6E674A69512F6165
          4E6752356D596A302020346E584858457A47706E3035324638636E4938613974
          67422B556A38356E584536346E72677047654935325444357841434D52366532
          75593950626F6E6E6852475152726A5847754E636458202079356A5A6E336851
          7943346E5874726E3335366A6B6F68426D6352484F754E636134317837644848
          4F682B50477930536B5141516A584F756463363536592F556F3147754E636463
          6671573120202F396F41434145444141454641436E69424B4A32754E544D7A74
          52484D43502B72616E6169654E7448772B624F6535376337457A78484538624D
          787A7233326A3534434A3532544C34787755202062556A426149796E6145766A
          504D7A50722B30394D63637367594C6F2F66703434326F2F55796769312B3357
          4D524D7445526E552B3270314F70367035353256794D53525357314F6F327031
          202047312F2F32674149415145414151554149584E6439613172363172583172
          57767257746657746147765A4858617461375672586174613756725861746137
          5672586174613756725861746137202056725861746137567258617461375672
          53764A7375795064546B4C555069596D4C39747455612B54426F75755645522F
          4C555074627459774F785A706E4D4259694C46662F67794E4762734F20207736
          6A4F4D6265686462473261396A64724441324E63522B476A79474E576F527951
          72734355454E79314E63483337464B4379644555334D335171454D7755626950
          49796272556E59473141202031346D4B393271566B447032374257634339796A
          784C5A57505047346A795078456552594A634D544177646165555A4F32796F6E
          37796C61755A6D7255424F62724E6647586F7A4669785A6D202077334C525474
          4665724259566E61623765776A794C6C51336C394E337972726C616249575443
          74695730692F383945746268325069706876726E6170754E37635978326F7766
          384133362B4B20204F767331353573544D5271434766773165566676524E6F48
          536F566C387779746C31634B6D5535574763704D434A356A642F724C7262597A
          654A7373636D6C6173774977493236537265726520204D7232706E436E4E5942
          67423356655352434D4178625077317845577262695A61526B652F4B792B6138
          67397178444A4B7156687A4E5130737A43416248396C78736D6C6B7456746835
          566D20206F59764F71323479496759745656326C7A686C7A6F3844584A566E47
          764F367646796D4B6452644F7674683558346765566474576C324858626F4571
          536C575163316350644F4C716A6E4648202048387659565A5563735875423556
          7A46576E7662684C5A536F4A42566D7371306F73556B7758697161316A683634
          696849495475423554626C5A4A7A6B61635374674E443845504B797A69432020
          394A736A574C346A483568636C6A6C32447153762B79664F7647627346433879
          5251724F4F654E4F7A4675747442355752777A3764705743734B65685A725335
          53334B2B736A7544683641712020586A366F53654D6F6D446347676D70537443
          746F504B64625167346D436A3849504B7A6B73564E4D73697071696B6C355268
          694E35525570444C576E524F62624D4D7931784D4E79626F664F202056797239
          556231706237566C74624F4976574657517A647477563351394853486C577759
          7975574F757953782B414F53703631592B6D71475932693066715674574D5057
          4E41554B617848452020343851696E576A544B746473746F5533615043564473
          434D435053486C4D594367566553786E345165566B784971316477485A316C69
          2F784B38564344796D52694D31385779742B51714B6E20204B50376972755366
          6B4C7253725A784E7079726973786B486A55664E697430663136336C62446442
          3556784C6E4B6A46325950544672614559366846662B4F78387753316D54366C
          577A716120203165534B6E554B53516B3562557175686D47704D664552456451
          6555646D75736F75314A304A43596B516A45544578367778633669596E624479
          724A32344E62626B746F2B4A6E6C7977447920204463666A5479562B48526C72
          63507774363963436D4231385A574F774F53546D637179714548416241655532
          6A57624959756B45724156675169576A71316D54326C61444752393564644369
          202037612F684B45544D566173467368355437674A6B636F4D774A515975656C
          416A617246487039757044594B436A6244797279334C6C46642B5275434D434F
          624668786B6D5045687557366C5420204857626C6932446769796A4958527331
          724F55664D356A496E4D5738675A5941766C69656E2B764B7979326144796A43
          44436C51436E36385272346A7149694E66456566694F754931496A4F20207549
          3145524777486C4F615335472F4A456C6E6358597456716F4B6370362F516D4C
          456C32613747375965566B3736515970466D437051555663385567746468696B
          75796431434A666B49632020687A48354F773533386B6C755157784F53766D44
          4D686537564132485436773871356845323341416747773566645855714B7142
          73423554474D6870574843477256797654585873707372492020684162467046
          565665796D7976634479727A577262545664707848365A515350473557627768
          6247375A546B426D63514D324257706D51687532486C573471793252782F3466
          38412F396F412020434145434167592F4145774F38744950616C5A4C4C793578
          326F744F4C2F476B2B5A6E362B767367734F6B33756566744C4B4E686578554C
          4A30706673755638435751704C43466A39515544202053594B6A363076697948
          6549744A4A76746D65336A44654B744B736E79316A347332546A692F5A783267
          786E4765362B6B6264496A714642704A5A637A657A7842687650544471314243
          364420204855707830637942387A6A6936507437336C70566E51306C704B5069
          4561516D6E61396E485744445A342B31444D6536462B5548397336582F396F41
          434145444167592F414F52506163694F2020394D4F344B6B5430446731586E58
          7148695A487A50503062473333515773726F635957527146796739306753452B
          56506D315373664F3646764D7A4B69356145344D66785252446742504B7A2020
          785361634A4E356D5247336A47484C317568386F744A6379637966353248442B
          5676704B6B44304D59355159624D334D39363241446E664D6E37555046366877
          634F455738793765744C392B202055444C584B44596361497A677A6F335A5576
          2F6141416742415145475077426B51716D4367387775546B5433482F62583771
          6643666D7239315068507A562B366E776E35712F645434543831202066757038
          4A2B616A7A6F536639702B61765048384A2B61765048384A2B61765048384A2B
          61765048384A2B61765048384A2B61765048384A2B61765048384A2B61765048
          384A2B617650483820204A2B61765048384A2B61765048384A2B61765048384A
          2B61765048384A2B61765048384A2B617066636A385871546F6C756D72344333
          544134412F6A31376154713768656E6D41344C772B5820202F4857726A55476F
          52444573736B38676956586378714C717A584C42482F4C33556A54644F41336B
          5352586B4753795275497945756F79584938644F7A54576E6165654F4952324C
          6C335651202075576935584F6C2B796F746F4A6B6153644F70465A3149595873
          4C6332742B7A3030705267777851584276327655727179576137367064744261
          3257587137716B4C7449596A4742482F38412020514D412B466A2B6E31527036
          735455642F7741712B4662644D6971785369523857614E7351724C7974485967
          383366554D63594337574F4765466B7553783632484E63334A504B5353546539
          2020517A733055752F6A6C36306D524B787679474944494B534C4C7277343142
          4F4F6D624355544B4356433956672F77436E796D397264747654536761444650
          462F6F73767570347657636A59722020336D706A4B354D532B5544586A777451
          596347467839644945584F575A6848456E414669436454334143395148657247
          6F6D6D365A644378554C67373331463733536B6E6159434B572B44362020324E
          744432615667386D556764593252626B71577478303964426871434C6A307376
          75703476553642585A454B6B41416B635634666655316F6E4A4154384A376855
          514F687757342B716B4D202062394F6146684A45354677474149314863516256
          746E3354783562656354596F707849434F6E346A787531364D4B797030326164
          69724272417A506D72414B52716F4E74616D43534B4A4A4A20206F35314A4274
          2B6D46466A6233614756737261323458394C4C3771654C2F525A666454786570
          444C6A696F57786358417665694A656D636D2F54415857333355683956493646
          49773768586E20206B42614F4A5343636E436C644C6933455644464F2F553345
          674274416A79416939733749487855393747337271636C5A476C67526E365A6A
          6B584D4C594842696C6D476F7552653153524D7320206B537852724B5A4A4935
          45466D7663484E4674772B756B3533426B6242454D556F6374612F6B4B5A6664
          51326D307757544871504C4B437971743741597156755437612F6A37356C4369
          455320204D38614F3275544B7A57584C465262743464394A74324C4353543973
          6C487759324C57456D4F46374468656F4E7641736B696268575A5A756C4B4635
          6362574A6A73527A616D3968322B686C2020393150463663644E5A5933433342
          637059726675423736522B676C342F4A2B71326E2F436B5274536F3174514732
          6C534A37366D5244497048646948512F66556262536456496A574B6353522020
          354231566D635942585443326264342B7974784930796B7A704B6D5969416C49
          6D4F58366B6D5A4C3463427730715554547179376946595A677364726C4C3473
          74336133485547395174654220204F6978613233674541664A63655942323170
          647A745A68424F71344D585471493663624D6F5A4470325761706D6C6E426B6E
          32353237454A59416E4C6D41795035754833314876476C52756B202079737555
          56355142483073424C6C6F6E34724163613250546D424F7A6A4D4C5A4A667149
          324E375763596E6C39666F5A64434F564F50746574644B304950732B68792B35
          4834765478453873202052746A32587465352B3275734467774677426F435057
          4B562F774177422B327475497046684D30776A61527747437156647542492F4C
          55623771554C5A5A325A67764A496B444265714466512020574E3644494A475A
          6E43434D4C6479534D7548645955447776332B6D336E3870326B4B5368593359
          454578366C625A41473274486462515A352F75526A513348614B524A49326952
          51413750202078734F49416F4B4F41466855496C3157475153596B4168694179
          324E2F6570512F4C47734D7348545777474D32495073746A5232356E41424935
          6C685257734262384E74665853714E516F41202075654F6E707066636A385871
          37454144744F6C636A7133756B48772B687967666B6A38586F786B325643514F
          327756517A4544763171506451463168795A497A494231485A52647372666870
          2020582F4D41667471474745684A647A4A306C6B4E6A687973356178346D7936
          56754A4A70354E30494A416A6D525939757945676148713942434E62672B7674
          703531446C456758644851616F2B202056674E65504C5748536C5A4D31694D77
          5663413732737075312B33757455794B5378687677614D35596E453258715A4C
          722B59436C6B4D62524668664238535238444D5076394A4C376B666920203966
          79596B457661305A4F4A42345A4B65483230686C67364B7078647943396A7843
          6847492B75676F3041304642484C4B56595048496873794F4F444C782B2F5476
          724D376D59376A7139592020376A39504D746830664C302B6E6244547930734B
          547A5270305274354D536C35493176624D736A4853353457704567576464755A
          556C6C5A6E6936424B5731565265584932743356496B4F3720206D6A69664969
          49434A6C5173626E4871524D33326B3075336A4A4B72665672416B6E55364946
          58374236535833492F462F6F737675522B4C3149696C37413867573172574646
          535A4D3743772020573172322F774261517435696F7637625642444332443769
          515264546A694D57596B65766C306F795353507551574148555A51327663624B
          4B44724335692F6A72755866546C56387243334520206D363175445043366856
          68435145726F5A437779793455726B596C686531776266574E5053792B354834
          76556B6B6278684A44666D42754E414B49575350456743374135634C55694533
          4B712020426632436A464B435675434344597177344D7037434B52586C6D5A34
          337A5355767A67346C4C4132345759303051556C476858626B45332F41453079
          742F355649424C4E6C4B46563543393220204B7265777552363653474D575241
          4655656F656C6C3979507865696B6A3259433541566A6F66594456756F546275
          566A362B7755736B5A795268634836464C376B66693953674733496C2F2B2020
          564E684E696F4163677066384B33462B71766855466D7947486D74612F774235
          386133456979535276444649364E4737526E4A564A4638434C31744E72477254
          6E63493072795379735369702020686B6273484A382B67703977647049454951
          7763736E503147437144654961366A795A556970737A315752335A585A6F7742
          47526533556A566A652B6E4C526157465956614872776C704C3520204C65316D
          78546C5073765553786253383872794A677A736971593747354C7871316A6638
          744A4F46777A47713376596A694C6A30637675522B4C3030386379497271716C
          57517365572B74782020497666526C58634479346759472F414C787A3956496A
          746D796978626866377A5477796A4B4F52536A72714C71777352705563755050
          43724A47626E52587879482F45553849522B692F38412020366A4C4955585849
          644E53396B7365474E7255445A33594B7942704A4A4A4778653251796B5A6A32
          55714E48797248306C356D4243413373434466733438616736655377786D5270
          50315A52202049576341584567624C732F4E5378524C6A476773716A73413948
          4C376B6669394A484B324C53655451366B646C41673342344836484C376B6669
          39467049544E6D77364443396B39576E6266202074726E6B35576A646E484549
          343443314978346C5154396C5152427A4848504B49355A426F5170566A594873
          755261746B6D794C466E334942523547494E3470664D574C47326C2F71714F4B
          20204B474D626B396271683249516678333662596B4335755470547972434F6A
          48416B7A58626D752B51436A53334563614D636B455A33476361674B3577744C
          7731494230714B535A6354742F352020416C534E69566270714470772B2B7473
          79514341535471743379554F6A497A57315831646C644F5641304532386E6857
          5173533459475278702B586C74526D4C6B625A49596C6C516E6C416B20206555
          5A3239544166565738334C4D57367952507434584C4651484C7167554B436273
          42656F2B6C74304474484A493464696F5870746952777655637746756F6F6133
          64662B365833492F463620206B534941794563743942656931304C754E574767
          532F4854747055343467432F73706F706C4478746F564E49456A743033366958
          4A596837466233596E734A6F4B384949444D347353446B35202075787544326D
          6D2F54577A7149324674436938462B71394C42436F6A51534C49344A4A4C4265
          793937306972454145797876632B667A63654E364D5968354C68725A4E6F5634
          45613663657920206C74474268495A6C39556A5875332F493149306B5959796F
          49354C2F41496B46794650326D6D366B5162494B4478476961727737716A596F
          50343855624949726B61733256376730465557412020466742336633532B3548
          347652647A5A52784E434F7A4978386F635776374F50304F5833492F46364154
          7A68314B4476494F677055684C4178754A5A5333454E653248332F77424E7645
          3759202077547A4C484D6546314B7351705038417559416664556D3132577A57
          4F59377059565247446F533058567978597769355557746B4E652B6D76484643
          2B32675762634A4C65375A46685A4D4820204958796637754E62415074323343
          76495359426A632F70736678736F30714C5A7230306B6A69655A2B7464724947
          306A474C4C714232305474346F316C6C65464D6D425037694672745969392020
          72615674554C786F4661654F64565673584D544B4C6A6E3775462B4666797978
          454D4F33694534374F6E4A4A4B70622F41424942396C36336D38756570756F6F
          48676A5946787A76496B53682020636B314B6758314774516F69777853756B7A
          53475145674742736446567A78393432714B636A45794B4749396F2F74337937
          784C37574C63537274706D4E6D594232474E753156372F71396C2020532B3548
          34765157417173675A574265354768376851426D444953433868484F514E6362
          4454362F364E484B6F654E685A6C595842486351614F31473269473359334D4F
          4334453862343274202055514F326974422B7A794C2B6E72666B303070575A51
          7A49626F534C6C547730706635454B545947365A71477850654C316D596B4C58
          445A59693931466C503155724E444753726D5253564220207335347350583636
          5A6E6A566936344F5341636B313554367454544361464A413443754755484A56
          4E31427632416D6F6E614B4D77516F79724159314B5859713251374261336451
          4146674E202041422F664C376B66693946586B56534F494A72535A507446426C
          4E3150416972735142336E537267334237522F5A594D4E4F4F6F72513339484C
          376B66693953394D442B4E6B2F566238514F20204334312F38746D6536354275
          4747584E5566732F37317330574E4A536479746F356649334A4A357444345569
          62517173363965575346674D5938477530594C4F7467706177746654674B6C6B
          2020426A4733686E68694D654A4C4D4A6C6A4A357236574C3931526E4F4E6B6B
          6B6C513763413952424547746333376365366D6B3349514979686B784B33462F
          776B4B37483762552B362F6A626220205667424A6A6C493135514F666C486A55
          6545776A696166645A526B5844454D756E6D4770374B6663465931446D495267
          346E4179537047565A566373644737514B554F775A77426B7747494A20203754
          6257336F5A66636A3858706936587A38327041503247727047515478495A7639
          6143494C4B756746444941346D34754C3250654B75384B4D6235637967366E53
          2B6F6F3869366B4536442020556A6766717451336B6A686970596F7178716D72
          4447374D4E5730706D696A5247627A4656436B2B323159594C682B5777743338
          4B424D616B71636864526F33655058544F49554450717A42202052636D2B5770
          74332B696C397950786569754A5A6C414A7466532F73424E466D6A4955616B36
          3850386C5767793847467839645A7A794C456C375A4F7755583970724A5A6B5A
          5341515177492020737878587437546F50366D457A783956654D656135433365
          7437304755676736676A55656B6C39795078657635634669794B63304F6D5369
          69664A456F55755365787561774642527741734B202032537859427A75567431
          464C4C354A4F4B676A7870397249557369374A7A303178475462724532766332
          3565463664493930476474354C484C4A4B55546F6A4B5167736347433532486D
          4873202072475764486A6A685269497358523259754C35685233646C662F7078
          6D6262676C704C516E39382F706A554850682F6A573332797978517772484669
          6B7271686C444458454D684C6634734B2020326F6264342F79306B596C593035
          4F6D56746A63486A665739624F30734D416B675355744B36784C4B3559683147
          534E6531686F7042316F4D64782B6E4E75647874684745586C575071344D2020
          44612B51777262336D3637424147626C757041315134393372312F7533783370
          747447334570327150664D41753276715539672F364E532B3548347654493342
          67516672707972733565317920203175436977484B422F586852304776477442
          617232462B2B7541303456777255445468584374426230457675522B4C306971
          6F4A652F456B445158374161784853794A78417A62556A2F436C202063693251
          346361456D356C57464363517A6B4B4C6E7331705A5958456B626171366D3450
          312F31564759426E7545556E5672636255384D6369744C462B3467494C4C6676
          48704A66636A38582020703165566B614E6971716F3731482B74527961734649
          5A53556B75415463396C716A79425672616738654E62535153434848634B544B
          793571764A4A7152635641736B7A375861795075486620206449422B704A6D47
          516A4E577856386D61333331496477356A6D6B32614E41754F706D752B566859
          362B5853704A2B732B4D6534696957484663436A716D562B572F62333174544A
          4D37797220204A4C3149536F437857466C7470326A764E6269506253474E336D
          67523255584958413563526273714E336E6B6C5562703975305A56624E476F65
          7A47793379356550437430346C6270597773202047494476417279465A65434B
          4D6C54573274716D4733335265426430736638414B634253735269563733574E
          754C6E6A6A555453534C4B355857524F44657667504430457675522B4C305A57
          20206B5A636D795A514F4A74616C51634641412B7254304C5268326A792F4768
          737739684E365A59797A475269386A75636D5A6A326B2B775739444C376B6669
          39434F50485653784C58374342322020555A41306271707363623939752F3841
          70314E7778524E65594B7A577471623467326F53776B736830424B6C66755941
          305763685647704A304146646164385937675873547132673057357220207151
          746B6C37634343434F77687245656C6C39795078656D4D4B4753546F74696F74
          784C4B4F30697431424D684D4D6857524A52594C6D534D68624A6A5172646F67
          4C4D304D6756514C6B6B20207164414B3253524F384542527571364A49354467
          4C67434943482F4E36752B747A437A54764130546D46674851764D455575434F
          4954386F507248645548524D746C654935344D3871674D4C20206B6F796C6A62
          31696C5A2B7575316B6D64705A3430644A70426A797379494D68723343747548
          4D2F534E763542496134467A302F742F4662306B7675522B4C3076564D676C78
          4E756C314C342020334637394C31304F6F2B34787550503138654F6C38686236
          482F2F5A22207472616E73666F726D3D226D617472697828302E393939392030
          203020302E39393939202D3930202D31383029222F3E0D0A093C2F673E0D0A3C
          672069643D22476175676573223E0D0A09093C7061746820636C6173733D2242
          6C75652220643D224D31352C3863302E382C302C312E362C302E312C322E332C
          302E346C332D334331382E382C342E352C31362E392C342C31352C3443382E39
          2C342C342C382E392C342C313563302C332C312E322C352E382C332E322C372E
          386C322E382D322E3820202623393B2623393B43382E382C31382E372C382C31
          362E392C382C313543382C31312E312C31312E312C382C31352C387A222F3E0D
          0A09093C7061746820636C6173733D225265642220643D224D32312E362C3132
          2E3763302E332C302E372C302E342C312E352C302E342C322E3363302C312E39
          2D302E382C332E372D322E312C342E396C322E382C322E3863322D322C332E32
          2D342E372C332E322D372E3863302D312E392D302E352D332E382D312E342D35
          2E3420202623393B2623393B4C32312E362C31322E377A222F3E0D0A09093C70
          61746820636C6173733D22426C61636B2220643D224D31352C3043362E372C30
          2C302C362E372C302C313563302C382E332C362E372C31352C31352C31356338
          2E332C302C31352D362E372C31352D31354333302C362E372C32332E332C302C
          31352C307A204D31352C323820202623393B2623393B43372E382C32382C322C
          32322E322C322C313553372E382C322C31352C327331332C352E382C31332C31
          335332322E322C32382C31352C32387A204D31372E372C31332E3763302E322C
          302E342C302E332C302E382C302E332C312E3363302C312E372D312E332C332D
          332C33732D332D312E332D332D3320202623393B2623393B73312E332D332C33
          2D3363302E352C302C302E392C302E312C312E332C302E336C362D366C312E34
          2C312E344C31372E372C31332E377A222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D226261636B636F6C6F722220643D224D31342C342E365630
          48347632483276313268322E376C2D312C316C312C316C342E372D342E376330
          2E362C302E352C312E362C302E372C322E342C302E3763302E332C302C302E31
          2D302E312C312E312D302E3156313348382E376C2D312C314831342020262339
          3B762D322E3663312D302E372C322D322C322D332E345331352C352E322C3134
          2C342E367A204D372E372C3863302C302E382C302E332C312E362C302E372C32
          2E334C352E372C31334833563368325631683876332E314331322C342E312C31
          322E322C342C31312E392C3443392E362C342C372E372C352E382C372E372C38
          20202623393B7A204D31312E372C3130632D312E312C302D322D302E392D322D
          3263302D312E312C302E392D322C322D3273322C302E392C322C324331332E37
          2C392E312C31322E382C31302C31312E372C31307A222F3E0D0A3C2F7376673E
          0D0A}
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
          323B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A233033
          394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234646423131353B7D262331333B262331303B2623393B2E426C75657B6669
          6C6C3A233131373744373B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D3C2F7374796C653E0D0A3C672069643D224D61
          70223E0D0A09093C7061746820636C6173733D22426C75652220643D224D3230
          2C31306C2D382D386C2D382C387632306C382D386C382C386C382D3856324C32
          302C31307A204D32302C32372E326C2D382D3856342E386C382C385632372E32
          7A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object ilDockIcons: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 568
    Top = 32
    Bitmap = {
      494C01010A001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000636363EF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000331C037DD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF331C037D0000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000331C037DD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF331C037D000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000331C037DD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF331C037D00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000331C
      037DD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF331C037D0000000000000000000000000000000000000000717171FF0000
      0000000000003F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF0000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000331C037DD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF331C
      037D000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000331C037DD77610FFD77610FFD77610FFD77610FF331C037D0000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000331C037DD77610FFD77610FF331C037D000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000331C037D331C037D00000000000000000000
      0000000000000000000000000000000000000000000000000000626262ED7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
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
      0000000000000000000000000000000000000000000001010121414141C10101
      0121000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      000000000000020202233B3A3AB66D6C6CF8737272FF737272FF676767F22121
      2189000000020000000000000000000000000000000000000007252525936666
      66F2666666F22626269500000008000000000000000000000007252525936666
      66F2666666F226262695000000080000000001010121585858E0727272FF5858
      58E0010101210000000000000000A6682EF1BA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFA6682EF100000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000020202255D5C5CE5737272FF737272FF737272FF737272FF737272FF7372
      72FF1A1A1A7A0000000000000000000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000024242491363636B00000
      001500000014343434AD26262695000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF00000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000202
      02255C5B5BE4737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF676666F10000000E000000000000000000000000636363EF010101180000
      00000000000000000014666666F20000000000000000636363EF010101180000
      00000000000000000014666666F2000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF00000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000020202235A5A
      5AE2737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF1313136A000000000000000000000000606060EC0101011A0000
      00000000000000000016717171FF0000000000000000717171FF0101011A0000
      00000000000000000016646464F0000000000000000000000000727272FF0000
      0000000000000000000000000000BA7433FFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFBA7433FF00000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000010101215A5A5AE27372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF4F4E4ED300000000000000000000000028282897373737B30101
      011901010118363636B0717171FF0000000000000000717171FF373737B30101
      011901010118363636B02929299B000000000000000000000000727272FF0000
      0000000000000000000000000000A3662DEFBA7433FFBA7433FFBA7433FFBA74
      33FFBA7433FFBA7433FFBA7433FFA4662DEF00000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF000000000000000001010121595858E0737272FF7372
      72FF737272FF737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF0606063E00000000000000000303032E717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF04040431000000000000000000000000727272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000525151D8737272FF6F6E6EFB2625
      2593575656DE737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF313030A6000000000000000000000000414141C27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF444444C600000000000000000000000000000000727272FF0000
      0000191919791C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1919197900000000000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000003A3939B5484747C9040404320000
      0000484747CA737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF737272FF737272FF6D6C6CF90000001700000000000000000D0D0D587171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0E0E0E5C00000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      00096F6E6EFA737272FF737272FF737272FF737272FF737272FF737272FF7372
      72FF07070742454444C6737272FF1A1A1A7A0000000000000000000000065C5C
      5CE7717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF5F5F5FEA0000000700000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F00000000000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000000000000606
      063C737272FF5B5A5AE300000014737272FF737272FF020101225A5A5AE27372
      72FF0C0C0C530A0A0A4E737272FF585757DF0000000000000000000000001D1D
      1D83717171FF717171FF717171FF0000000000000000717171FF717171FF7171
      71FF1F1F1F870000000000000000000000000000000000000000727272FF0000
      00001C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000001818
      1875737272FF302F2FA400000000737272FF737272FF000000002D2D2DA07372
      72FF2020208800000002454444C5474646C80000000000000000000000000101
      011D6D6D6DFB717171FF6F6F6FFC00000000000000006D6D6DFA717171FF6F6F
      6FFC010101200000000000000000000000000000000000000000727272FF0000
      0000191919781C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F1919197800000000000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      000000000000717171FF00000000000000000000000000000000000000003534
      34AC737272FF1313136900000000737272FF737272FF00000000101010617372
      72FF3F3E3EBC0000000000000000000000000000000000000000000000000000
      00001E1E1E83696969F52222228E00000000000000002121218A696969F62121
      218A000000000000000000000000000000000000000000000000727272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000005C5B
      5BE4737272FF0303032C00000000737272FF737272FF00000000010101217372
      72FF666565F00000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000003D3D
      3DBA454545C60000000200000000737272FF737272FF00000000000000004343
      43C34D4C4CD10000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000444343C4474646C800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000100001400000000442E
      149C473015A00000000001000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010122353535AE6969
      69F5696969F6353535B002020223000000000000000000000000000000000000
      00000000000000000000000000000000000000000012A36E31F1533819ADA06C
      30EFA26D31F0523719ABA67032F3010000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000001073E
      5A980A5F89BB0000000A0000000000000000000000000402002583480AC7C86E
      0FF605020028000000000000000000000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF353535AF020202235A5A5AE4161616730000
      000E0000000D151515705B5B5BE5020202250000000000000000000000000000
      000000000000000000000000000000000000000000004E3418A7B77B37FFB77B
      37FFB77B37FFB77B37FF523719AB000000000000000000000000000000000000
      000000000000000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F10000000000000000000000000000000000000000073D599714B1
      FFFF14B1FFFF0B608ABC0000000A000000000000000086490AC9D77610FF1D10
      025E000000000B06003B0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000003F3F3FBE1414146D000000004545
      45C8484848CC0000000013131369414141C20000000000000000000000000000
      000000000000000000000000000000000000473015A0A16C30EFB77B37FF0805
      023707050234B77B37FFA26D31F0483116A10000000000000000000000000000
      0000717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF00000000000000000000000000000000000000000A567CB214B1
      FFFF14B1FFFF14B1FFFF14ADFBFD04283B7B00000000CF7210FBCF7210FB0302
      0021381F0483BA660EED0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000003D3D3DBB15151570000000004242
      42C3454545C8000000001414146C404040BF00000000191919771C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000442E149C9E6A30EDB77B37FF0A06
      033C08050237B77B37FFA06C30EF442E149D0000000000000000000000000000
      0000717171FF0000000000000000000000001299DCED14B1FFFF14B1FFFF14B1
      FFFF129BE0EF0000000000000000000000000000000000000000000000070A56
      7DB314B1FFFF14B1FFFF14B1FFFF0426387800000000894B0BCCD77610FFD776
      10FFD77610FF673908B10000000000000000717171FF00000000000000000000
      000000000000000000000000000000000000010101215A5A5AE3181818770000
      001200000011171717745A5A5AE402020223000000001C1C1C7F000000000000
      00000000000000000000000000000000000000000000513719AAB77B37FFB77B
      37FFB77B37FFB77B37FF533819AC000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000714ABF7FB14B1FFFF4391B7FF1D1D1D820C06003DD27410FC884B0BCBCF72
      10FA7F4509C40201001D0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000001010120323232AA6565
      65F1666666F2333333AC0101012100000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF000000129E6A30ED513718AA9E6B
      30EDA06C31EF4E3418A7A36E31F1010000140000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004233272042637771B1B1B7E717171FF1D1D1D820C06003D000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      000000000000000000000000000000000000000000003C3C3CBA000000000000
      000000000000070707440000000000000000000000001C1C1C7F000000000000
      000000000000000000000000000000000000000000000000001100000000432E
      149B4730159F0000000000000012000000000000000000000000000000000000
      0000717171FF000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F10000000000000000000000000000000000000000000000000000
      000000000002000000000D07003F1C1C1B7E717171FF1D1D1D82000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      000000000000717171FF0000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF0000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000000000000000000004020025894B
      0BCCD47410FD8F4E0BD0D07210FB090500371B1B1B7E717171FF2D2D2DA11010
      106100000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      000000000000717171FF0000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000717171FF000000000000000000000000129BE0EF14B1FFFF14B1FFFF14B1
      FFFF129EE3F100000000000000000000000000000000000000007F4609C4D776
      10FFD27410FCD77610FF7D4409C200000000000000002C2C2C9F717171FF7171
      71FF1D1D1D82000000000000000000000000BA660EEDD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFBD680EEF000000000000
      000000000000717171FF0000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C56C0FF42414
      026902010019D57610FEC16A0FF200000000000000000F0F0F5F717171FF7171
      71FF717171FF1D1D1D8200000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000603002C0000
      00002B180373D77610FF774209BE0000000000000000000000001B1B1B7E7171
      71FF717171FF1B1B1B7E00000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF0000000000000000000000000000000000000000129FE5F214B1
      FFFF14B1FFFF14B1FFFF13A2E9F4000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000603
      002DC56C0FF4774209BE0201001C000000000000000000000000000000001B1B
      1B7E1B1B1B7E0000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BA660EEDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBD680EEF0000000000000000000000009E6A30EDB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFA16C31EF0000000000000000000000000000000000000000129BE0EF14B1
      FFFF14B1FFFF14B1FFFF129EE3F1000000000000000000000000000000000000
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
    DesignInfo = 2097720
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23
          3033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B6669
          6C6C3A234646423131353B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D22426C75652220643D224D372E382C31332E39632D312E34
          2D302E332D322E372D312E342D332E332D322E3743342E322C31302E362C342E
          312C31302C342C392E3543332E392C382E362C342E332C372E372C342E392C37
          2E316C302C306C322E352C322E3520202623393B63302E372C302E372C312E39
          2C302E362C322E342D302E3363302E342D302E362C302E322D312E342D302E33
          2D312E394C372E312C342E396C302C3063302E362D302E362C312E352D312C32
          2E342D302E3963302E352C302E312C312E312C302E322C312E362C302E352020
          2623393B63312E332C302E372C322E342C312E392C322E372C332E3363302E33
          2C312E342C302C322E362D302E362C332E376C312E372C312E374C31332E322C
          31356C2D312E372D312E374331302E352C31332E392C392E322C31342E322C37
          2E382C31332E397A204D32342E322C31382E3120202623393B632D312E342D30
          2E332D322E362C302D332E372C302E364C31382E382C31374C31372C31382E38
          6C312E372C312E37632D302E362C312D302E392C322E332D302E362C332E3763
          302E332C312E342C312E342C322E372C322E372C332E3363302E362C302E332C
          312E312C302E342C312E362C302E3520202623393B63302E392C302E312C312E
          382D302E322C322E342D302E396C302C306C2D322E342D322E34632D302E352D
          302E352D302E372D312E332D302E332D312E3963302E352D302E392C312E372D
          312C322E342D302E336C322E352C322E3563302C302C302C302C302C3063302E
          362D302E362C312D312E352C302E392D322E3420202623393B632D302E312D30
          2E352D302E322D312D302E352D312E364332362E382C31392E352C32352E362C
          31382E352C32342E322C31382E317A222F3E0D0A3C706F6C79676F6E20636C61
          73733D22426C61636B2220706F696E74733D2231392C31312031392C39203234
          2C342032382C382032332C31332032312C31332031332C32312031312C313920
          222F3E0D0A3C7061746820636C6173733D2259656C6C6F772220643D224D3135
          2E332C32312E336C2D342E362D342E36632D302E342D302E342D312D302E342D
          312E342C306C2D302E372C302E3743382E322C31372E382C382C31382E332C38
          2C31382E3876302E376C2D332E382C332E3820202623393B632D302E332C302E
          332D302E332C302E382C302C312E316C332E342C332E3463302E332C302E332C
          302E382C302E332C312E312C306C332E382D332E3868302E3763302E352C302C
          312D302E322C312E342D302E366C302E372D302E374331352E372C32322E332C
          31352E372C32312E372C31352E332C32312E337A222F3E0D0A3C2F7376673E0D
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
          643D2257696E646F7773223E0D0A09093C7061746820636C6173733D22426C61
          636B2220643D224D31382C31382E31563136683276302E394331392E332C3137
          2E322C31382E362C31372E362C31382C31382E317A204D31342E372C32364832
          563136483076313163302C302E352C302E352C312C312C316831352E31202026
          23393B2623393B4331352E352C32372E332C31352E312C32362E362C31342E37
          2C32367A204D32342C313863352E372C302C382C362C382C36732D322E332C36
          2D382C36632D352E372C302D382D362D382D365331382E332C31382C32342C31
          38204D32342C3230632D332E332C302D352E312C322E372D352E382C34202026
          23393B2623393B63302E372C312E332C322E352C342C352E382C3463332E332C
          302C352E312D322E372C352E382D344332392E312C32322E372C32372E332C32
          302C32342C32304C32342C32307A204D32342C3232632D312E312C302D322C30
          2E392D322C3273302E392C322C322C3263312E312C302C322D302E392C322D32
          20202623393B2623393B5332352E312C32322C32342C32327A204D32362C3136
          2E325638683276382E394332372E342C31362E362C32362E372C31362E342C32
          362C31362E327A204D31302C3848387632683256387A222F3E0D0A09093C7061
          746820636C6173733D22426C75652220643D224D302C3136762D3563302D302E
          352C302E352D312C312D3168313863302E352C302C312C302E352C312C317635
          48307A204D32382C38563363302D302E352D302E352D312D312D31483943382E
          352C322C382C322E352C382C3376354832387A222F3E0D0A093C2F673E0D0A3C
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
          343B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          43423031423B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233132394334393B7D262331333B262331303B2623393B2E426C75657B6669
          6C6C3A233338374342373B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234430323132373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A6E6F6E653B66696C6C3A233733373337343B7D
          3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220643D22
          4D32342C386832563363302D302E352D302E352D312D312D31483343322E352C
          322C322C322E352C322C33763568324832347A222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D32322C3132483132762D326831305631
          327A204D32322C3136762D3248313276324832327A204D362C32306834762D32
          48365632307A204D31362C3138682D34763268345631387A204D362C31366834
          762D3248365631367A204D362C31326834762D32483620202623393B5631327A
          222F3E0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C
          6173733D22426C61636B2220643D224D32342C31345638683276364832347A20
          4D31342C323248345638483276313563302C302E352C302E352C312C312C3168
          31315632327A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D33322C3235762D326C2D322E352D302E36632D302E312D
          302E342D302E332D302E382D302E352D312E326C312E352D322E316C2D312E36
          2D312E364C32362E382C3139632D302E342D302E322D302E382D302E342D312E
          322D302E354C32352C3136682D3220202623393B6C2D302E362C322E35632D30
          2E342C302E312D302E382C302E332D312E322C302E356C2D322D312E356C2D31
          2E372C312E376C312E352C32632D302E322C302E342D302E342C302E382D302E
          352C312E324C31362C323376326C322E352C302E3663302E312C302E342C302E
          332C302E382C302E352C312E3220202623393B6C2D312E352C322E316C312E36
          2C312E366C322E312D312E3563302E342C302E322C302E382C302E342C312E32
          2C302E354C32332C333268326C302E362D322E3563302E342D302E312C302E38
          2D302E332C312E322D302E356C322E312C312E356C312E362D312E364C32392C
          32362E3820202623393B63302E322D302E342C302E342D302E382C302E352D31
          2E324C33322C32357A204D32342C3236632D312E312C302D322D302E392D322D
          3273302E392D322C322D3273322C302E392C322C325332352E312C32362C3234
          2C32367A222F3E0D0A3C2F7376673E0D0A}
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
          3D22496E736572745472656556696577223E0D0A09093C7061746820636C6173
          733D2259656C6C6F772220643D224D31332C38483543342E342C382C342C372E
          362C342C37563363302D302E352C302E342D312C312D31683863302E362C302C
          312C302E352C312C3176344331342C372E362C31332E362C382C31332C387A20
          4D32362C3137762D3420202623393B2623393B63302D302E362D302E352D312D
          312D31682D38632D302E352C302D312C302E342D312C31763463302C302E352C
          302E352C312C312C3168384332352E352C31382C32362C31372E352C32362C31
          377A204D32362C3237762D3463302D302E352D302E352D312D312D31682D3863
          2D302E352C302D312C302E352D312C3120202623393B2623393B763463302C30
          2E352C302E352C312C312C3168384332352E352C32382C32362C32372E352C32
          362C32377A222F3E0D0A09093C706F6C79676F6E20636C6173733D22426C6163
          6B2220706F696E74733D2231342C31362031342C31342031302C31342031302C
          313020382C313020382C32362031342C32362031342C32342031302C32342031
          302C3136202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23333437354241
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373337
          3337333B7D262331333B262331303B2623393B2E5265647B66696C6C3A234346
          323132373B7D262331333B262331303B2623393B2E7374307B6F706163697479
          3A302E353B7D3C2F7374796C653E0D0A3C6720636C6173733D22737430223E0D
          0A09093C7061746820636C6173733D22426C61636B2220643D224D32352C3136
          4839632D302E362C302D312D302E342D312D31563763302D302E362C302E342D
          312C312D3168313663302E352C302C312C302E342C312C3176384332362C3135
          2E362C32352E352C31362C32352C31367A222F3E0D0A093C2F673E0D0A3C7061
          746820636C6173733D22426C75652220643D224D33312C3238483135632D302E
          362C302D312D302E352D312D31762D3863302D302E352C302E342D312C312D31
          68313663302E352C302C312C302E352C312C3176384333322C32372E352C3331
          2E352C32382C33312C32387A222F3E0D0A3C706F6C79676F6E20636C6173733D
          22426C61636B2220706F696E74733D22362C323620362C3420342C3420342C32
          3620312C323620352C333020392C323620222F3E0D0A3C2F7376673E0D0A}
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
          3D22496E736572744C697374426F78223E0D0A09093C7061746820636C617373
          3D22426C61636B2220643D224D32372C33304833632D302E352C302D312D302E
          352D312D31563163302D302E362C302E352D312C312D3168323463302E352C30
          2C312C302E342C312C317632384332382C32392E352C32372E352C33302C3237
          2C33307A204D32362C324834763236683232563220202623393B2623393B7A20
          4D32322C364838763268313456367A204D32322C313048387632683134563130
          7A204D32322C3134483876326831345631347A204D32322C3138483876326831
          345631387A204D32322C3232483876326831345632327A222F3E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
          343B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344303230
          32373B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233335
          373542423B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C
          3A234643423031423B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233135394334393B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C70617468
          20636C6173733D22426C61636B2220643D224D33312E312C382E33632D312E31
          2D302E372D322E352D302E322D322E392C302E396C2D312E392C342E31632D30
          2E322C302E342D302E362C302E362D312C302E366C302C30632D302E372C302D
          312E322D302E362D312D312E334C32362C342E3420202623393B63302E322D31
          2E312D302E342D322E312D312E352D322E34632D312E312D302E322D322E312C
          302E342D322E342C312E356C2D312E392C372E36632D302E312C302E352D302E
          352C302E382D312C302E38682D302E31632D302E362C302D312E312D302E352D
          312E312D312E3156322E3120202623393B63302D312D302E372D312E392D312E
          362D322E314331352E312D302E322C31342C302E382C31342C3276382E396330
          2C302E362D302E352C312E312D312E312C312E31682D302E31632D302E352C30
          2D302E392D302E332D312D302E384C31302C332E3643392E372C322E342C382E
          342C312E372C372E332C322E3220202623393B632D312C302E332D312E342C31
          2E342D312E322C322E346C322E352C31312E3363302E322C302E382D302E372C
          312E352D312E352C312E316C2D342D322E36632D302E382D302E352D312E382D
          302E342D322E352C302E33632D302E382C302E382D302E382C322E312C302C32
          2E394C31302E392C323820202623393B63312E322C312E332C332C322C342E39
          2C3248323063322E392C302C342E372D322C352E392D342E386C352E392D3134
          2E334333322E322C31302C33312E392C382E392C33312E312C382E337A222F3E
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
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E57686974657B66696C6C3A234646464646
          463B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A233033
          394332333B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
          3131373744373B7D262331333B262331303B2623393B2E59656C6C6F777B6669
          6C6C3A234646423131353B7D262331333B262331303B2623393B2E426C61636B
          7B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E5265
          647B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C67206964
          3D22486F6D655F315F223E0D0A09093C706F6C79676F6E20636C6173733D2242
          6C75652220706F696E74733D22322C313620322C3820302C3820382C30203136
          2C382031342C382031342C31362031302C313620362C3136202623393B222F3E
          0D0A09093C7265637420783D22362220793D2231302220636C6173733D225768
          697465222077696474683D223422206865696768743D2236222F3E0D0A093C2F
          673E0D0A3C2F7376673E0D0A}
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
          423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
          696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
          23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
          2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
          6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
          393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
          6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
          393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C673E0D0A09093C6720636C6173733D22
          737431223E0D0A0909093C7061746820636C6173733D22426C61636B2220643D
          224D32322C3138483130762D326831325631387A204D32322C38483130763268
          313256387A204D32322C313248313076326831325631327A204D32322C323048
          313076326831325632307A222F3E0D0A09093C2F673E0D0A09093C7061746820
          636C6173733D22426C61636B2220643D224D32372C30483543342E352C302C34
          2C302E352C342C3176323863302C302E352C302E352C312C312C316832326330
          2E352C302C312D302E352C312D3156314332382C302E352C32372E352C302C32
          372C307A204D32362C3238483656326832305632387A222F3E0D0A093C2F673E
          0D0A3C2F7376673E0D0A}
      end>
  end
  object ilStructure: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 208
    Top = 96
    Bitmap = {
      494C010102000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD680EEFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFC06A0FF1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF000000010000
      001000000010000000050101011A000000110000001201010119000000050000
      00100000001000000001D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF0000000C5C5C
      5CE7353535AF050505372F2F2FA41313136B151515702C2C2C9F040404343535
      35AF5C5C5CE600000010D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF0000000C3737
      37B3000000000000000000000000000000000000000000000000000000000000
      0000353535AF00000010D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF000000040404
      0435000000000000000000000000000000000000000000000000000000000000
      00000404043400000005D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF0000000B3434
      34AD000000000000000000000000000000000000000000000000000000000000
      00002C2C2C9F01010119D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF000000081A1A
      1A7A000000000000000000000000000000000000000000000000000000000000
      00001515157000000012D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FF000000071717
      1774000000000000000000000000000000000000000000000000000000000000
      00001414146B00000011D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FF0000000B3838
      38B3000000000000000000000000000000000000000000000000000000000000
      00002E2E2EA40101011AD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF000000040505
      0538000000000000000000000000000000000000000000000000000000000000
      00000505053700000005D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF0000000C3737
      37B3000000000000000000000000000000000000000000000000000000000000
      0000353535AF00000010D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF0000000C5E5E
      5EE8373737B305050538373737B3171717741A1A1A7A343434AD040404353737
      37B35C5C5CE700000010D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000D77610FF000000010000
      000C0000000C000000040000000B00000007000000080000000B000000040000
      000C0000000C00000001D77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF000000000000000000000000BA660EEDD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFBD680EEF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 6291664
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2242
          6F786573342220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F
          323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777
          772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D22
          307078222076696577426F783D2230203020313620313622207374796C653D22
          656E61626C652D6261636B67726F756E643A6E6577203020302031362031363B
          2220786D6C3A73706163653D227072657365727665223E262331333B26233130
          3B3C7374796C6520747970653D22746578742F637373223E2E426C75657B6669
          6C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D22426C75652220643D224D362C3848307636683656387A204D362C304830
          7636683656307A204D31342C3048387636683656307A204D31342C3848387636
          683656387A222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E7374307B66696C6C3A233131373744373B
          7D262331333B262331303B2623393B2E7374317B66696C6C3A23373237323732
          3B7D3C2F7374796C653E0D0A3C672069643D225363616C65223E0D0A09093C70
          61746820636C6173733D227374302220643D224D32392C32483343322E352C32
          2C322C322E352C322C3376323663302C302E352C302E352C312C312C31683236
          63302E352C302C312D302E352C312D3156334333302C322E352C32392E352C32
          2C32392C327A204D32382C3238483456346832345632387A222F3E0D0A093C2F
          673E0D0A3C706F6C79676F6E20636C6173733D227374312220706F696E74733D
          22372E342C32312E3420352E392C32312E3420352E392C32362E312031302E36
          2C32362E312031302E362C32342E3620372E342C32342E3620222F3E0D0A3C70
          6F6C79676F6E20636C6173733D227374312220706F696E74733D22352E392C31
          302E3620372E342C31302E3620372E342C372E342031302E362C372E34203130
          2E362C352E3920352E392C352E3920222F3E0D0A3C706F6C79676F6E20636C61
          73733D227374312220706F696E74733D2232342E362C32342E362032312E342C
          32342E362032312E342C32362E312032362E312C32362E312032362E312C3231
          2E342032342E362C32312E3420222F3E0D0A3C706F6C79676F6E20636C617373
          3D227374312220706F696E74733D2232312E342C352E392032312E342C372E34
          2032342E362C372E342032342E362C31302E362032362E312C31302E36203236
          2E312C352E3920222F3E0D0A3C7265637420783D22352E392220793D2231322E
          312220636C6173733D22737431222077696474683D22312E3622206865696768
          743D22332E31222F3E0D0A3C7265637420783D22352E392220793D2231362E37
          2220636C6173733D22737431222077696474683D22312E362220686569676874
          3D22332E31222F3E0D0A3C7265637420783D2231322E312220793D22352E3922
          20636C6173733D22737431222077696474683D22332E3122206865696768743D
          22312E36222F3E0D0A3C7265637420783D2231362E372220793D22352E392220
          636C6173733D22737431222077696474683D22332E3122206865696768743D22
          312E36222F3E0D0A3C7265637420783D2232342E362220793D2231322E312220
          636C6173733D22737431222077696474683D22312E3622206865696768743D22
          332E31222F3E0D0A3C7265637420783D2232342E362220793D2231362E372220
          636C6173733D22737431222077696474683D22312E3622206865696768743D22
          332E31222F3E0D0A3C7265637420783D2231322E312220793D2232342E362220
          636C6173733D22737431222077696474683D22332E3122206865696768743D22
          312E36222F3E0D0A3C7265637420783D2231362E372220793D2232342E362220
          636C6173733D22737431222077696474683D22332E3122206865696768743D22
          312E36222F3E0D0A3C2F7376673E0D0A}
      end>
  end
  object ilProjectManager: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 1008
    Top = 80
    Bitmap = {
      494C01010A001800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000100001400000000442E
      149C473015A00000000001000014000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000012A36E31F1533819ADA06C
      30EFA26D31F0523719ABA67032F3010000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E3418A7B77B37FFB77B
      37FFB77B37FFB77B37FF523719AB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000473015A0A16C30EFB77B37FF0805
      023707050234B77B37FFA26D31F0483116A100000000000101160C6590C014B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF073E5A9800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000191919771C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F00000000442E149C9E6A30EDB77B37FF0A06
      033C08050237B77B37FFA06C30EF442E149D0000000002141E58010E154A14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14A9F5FA0002031D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000000000
      00000000000000000000000000000000000000000000513719AAB77B37FFB77B
      37FFB77B37FFB77B37FF533819AC000000000000000006344C8B0000000F0D77
      ABD114B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF06364F8E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF000000129E6A30ED513718AA9E6B
      30EDA06C31EF4E3418A7A36E31F101000014000000000637508F010F164C0216
      205B14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF12A0E7F3000001110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000000000
      000000000000000000000000000000000000000000000000001100000000432E
      149B4730159F000000000000001200000000000000000637508F053046860000
      000C0F86C1DE14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF04283B7B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      000000000000000000000000000000000000000000000637508F0637508F010B
      1040031F2D6C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF108CCAE30000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F000000000000000000000000000000000637508F0637508F052C
      40800000000D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000007372
      72FF737272FF00000000737272FF737272FF737272FF737272FF737272FF0000
      00001C1C1C7F000000000000000000000000000000000637508F0637508F0637
      508F0637508F0637508F0637508F0637508F0637508F0637508F0637508F0637
      508F0637508F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C7F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C7F000000000000000000000000000000000637508F0637508F0637
      508F0637508F0637508F0637508F0637508F0637508F0637508F0637508F0637
      508F053148880000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF000000000000000000000000000000000637508F0637508F0637
      508F0637508F0637508F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B77B37FFB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFB77B37FF00000000000000000000000000000000053147870637508F0637
      508F0637508F0531488800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009E6A30EDB77B37FFB77B
      37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B37FFB77B
      37FFA16C31EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000636363EF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF656565F10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C16A0FF2D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC56C0FF40000000000000000000000000000
      0000000000000000000001000015D77610FFD77610FF01000017000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000100000000120A014B6C3C
      08B500000000000000010000000000000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF000000000000000000000000140B
      014F03020021000000000E080143D77610FFD77610FF0D070140000000000603
      002E180D02560000000000000000000000000000000000000000000000006363
      63EF717171FF717171FF717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000003A200485633608AD743F08BBD374
      10FD361E04819A550BD80201001C00000000D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000717171FF717171FF717171FF717171FF7171
      71FF00000000130A014C00000000D77610FF0000000000000000160C0153D274
      10FCBF690FF02F1A037884480AC8D77610FFD77610FF8C4D0BCE3D210488C96E
      0FF7D37410FD150C015100000000000000000000000000000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      00000000000000000000000000000000000011090149D77610FFD37410FDBE69
      0FF0D77610FF874A0ACA0000000200000000D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      000000000000130A014C00000000D77610FF00000000000000000603002BC76E
      0FF6D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFBD680EEF030100200000000000000000636363EF717171FF717171FF7171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000170C0154884B0BCBD77610FF180D02560000
      0006894B0BCBC36B0FF35B3207A600000009D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000717171FF717171FF717171FF717171FF7171
      71FF00000000130A014C00000000D77610FF000000000000000000000000391F
      0484D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF2F1A0378000000000000000000000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000010000
      0000683908B2140A014E00000000160C015383480AC7D77610FF1A0E02590000
      00078B4C0BCDC16A0FF2573006A200000009D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      000000000000D77610FF00000000D77610FF00000000010000160D07003F884B
      0BCBD77610FFD77610FF663808B00100001501000014633608ADD77610FFD776
      10FF864A0ACA100901460201001900000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000201001A9A550BD8361E
      0480D07210FB784209BF603507AB3D2204891109014AD77610FFD57510FEC36B
      0FF3D77610FF894B0BCC0000000200000000D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000717171FF717171FF717171FF717171FF7171
      71FF00000000D77610FF00000000D77610FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FF01010018000000000000000001000014D77610FFD776
      10FFD77610FFD77610FFD77610FF00000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000183480AC7D776
      10FFBE690FF0D27410FCD77610FF130A014C381F04835F3407A9723F08BAD274
      10FC311B037B95520BD50201001C00000000D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      000000000000D77610FF00000000D77610FF00000000D77610FFD77610FFD776
      10FFD77610FFD77610FF0201001A000000000000000001000016D77610FFD776
      10FFD77610FFD77610FFD77610FF00000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000075A3107A5C16A0FF28D4E
      0BCF00000007160C0152D77610FF894B0BCC190D025700000000110901496839
      08B100000000000000010000000000000000D77610FF00000000717171FF7171
      71FF717171FF717171FF00000000717171FF717171FF717171FF717171FF7171
      71FF00000000D77610FF00000000D77610FF00000000010000150E0801438B4C
      0BCDD77610FFD77610FF6A3A08B30201001901010018663808B0D77610FFD776
      10FF894B0BCC0B06003B0100001300000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF00000007562F06A1C0690FF18F4E
      0BD000000008170D0155D77610FF86490AC9170C015400000000000000000000
      000000000000000000000000000000000000D77610FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D77610FF000000000000000000000000361E
      0481D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF3D220489000000000000000000000000717171FF00000000000000007171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000183480AC7D776
      10FFC36B0FF3D47410FDD77610FF140B014F0000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF000000000000000004020027C36C
      0FF3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCB7010F8070400300000000000000000717171FF00000000000000007171
      71FF0000000000000000626262ED717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF636363EF000000000201001995510BD4331C
      037DCF7210FB743F09BB5C3207A73C2104870000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0A0500370804
      0034D77610FF0A05003708040034D77610FF0000000000000000180D0257D474
      10FDC76D0FF5391F048486490AC9D77610FFD77610FF83480AC72B180373BA66
      0EEDD27410FC170C01540000000000000000717171FF00000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000010000
      0000643708AE130A014C00000000000000010000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0B06003C0A05
      0037D77610FF0B06003C0A050037D77610FF000000000000000000000000180D
      025705020028000000000B06003BD77610FFD77610FF10080146000000000201
      001D140A014E000000000000000000000000717171FF00000000000000006262
      62ED717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF636363EF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFC16A0FF20000000000000000000000000000
      0000000000000000000001000012D77610FFD77610FF01010018000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262ED717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF636363EF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF00000000052D428200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0000000014B1FFFF052D4282000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF676767F400000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000000000
      00011E1E1E81696969F0353535AA0000000000000000353535AA6A6A6AF12020
      2085000000010000000000000000000000000000000000000000000000000000
      000000000000000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0000000014B1FFFF14B1FFFF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000000F0F
      0F5D737373FB1A1A1A7706060639000000000000000006060639191919757171
      71F9111111630000000000000000000000000000000000000000000000000000
      000000000000000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0000000014B1FFFF14B1FFFF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000003131
      31A33C3C3CB60000000000000000000000000000000000000000000000003A3A
      3AB2323232A70000000000000000000000000000000000000000000000000000
      000000000000000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0000000014B1FFFF14B1FFFF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000003535
      35AA353535AA0000000000000000000000000000000000000000000000003535
      35AA353535AA000000000000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF000000000B638FBF0B638FBF0B638FBF0B638FBF0B638FBF0B63
      8FBF0000000014B1FFFF14B1FFFF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF00000000000000001866E8FF1866E8FF1866
      E8FF1866E8FF1866E8FF1866E8FF000000000000000000000000000000024B4B
      4BCB2C2C2C9C0000000000000000000000000000000000000000000000002828
      28954E4E4ECF000000020000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0000000000000000000000000000000000000000000000000000
      0000000000000B638FBF14B1FFFF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004E4E4ECE6F6F
      6FF7050505350000000000000000000000000000000000000000000000000303
      032C6E6E6EF54F4F4FCF0000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF00030524010A0F3F042B3F7F042B3F7F042B3F7F042B3F7F042B
      3F7F031A2562000001110B638FBF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000494949C97171
      71F8050505370000000000000000000000000000000000000000000000000404
      04336F6F6FF74B4B4BCB0000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0A557BB100030524010A0F3F042B3F7F042B3F7F042B3F7F042B
      3F7F042B3F7F031A256200000111000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000014949
      49C92D2D2D9D0000000000000000000000000000000000000000000000002929
      29974D4D4DCE000000020000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0A557BB1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000003535
      35AA353535AA0000000000000000000000000000000000000000000000003535
      35AA353535AA000000000000000000000000000000000B638FBF0B638FBF0B63
      8FBF0B638FBF0B638FBF0B638FBF0000000014B1FFFF14B1FFFF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF555555DE000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000003030
      30A33D3D3DB70000000000000000000000000000000000000000000000003A3A
      3AB3323232A60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B638FBF14B1FFFF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000000000000717171FF717171FF5555
      55DE0101011F000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000000E0E
      0E5A747474FC1C1C1C7D060606390000000000000000060606391B1B1B7A7373
      73FA1010106000000000000000000000000000000000010A0F3F042B3F7F042B
      3F7F042B3F7F042B3F7F042B3F7F031A2562000001110B638FBF000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000000000000717171FF555555DE0101
      011F00000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000000000
      00011C1C1C7C646464EA353535AA0000000000000000353535AA666666EC1E1E
      1E80000000010000000000000000000000000000000000000000010A0F3F042B
      3F7F042B3F7F042B3F7F042B3F7F042B3F7F031A256200000111000000000000
      0000000000000000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF555555DE0101011F0000
      000000000000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF0000000000000000229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF000000000000000000000000000000000000
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
    DesignInfo = 5243888
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
          423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
          696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
          23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
          2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
          6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
          393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
          6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
          393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C672069643D2250726F647563745F7835
          465F47726F7570223E0D0A09093C7061746820636C6173733D2259656C6C6F77
          2220643D224D31362C372E346C342D34563130682D3456372E347A204D32362C
          31372E345633306C342D345631332E344C32362C31372E347A222F3E0D0A0909
          3C6720636C6173733D22737430223E0D0A0909093C7061746820636C6173733D
          2259656C6C6F772220643D224D31342E362C3648326C342D346831322E364C31
          342E362C367A204D31362C31326C2D342C346831322E366C342D344831367A22
          2F3E0D0A09093C2F673E0D0A09093C6720636C6173733D22737431223E0D0A09
          09093C7061746820636C6173733D2259656C6C6F772220643D224D31342C3131
          2E326C2D342C345631387632483256386831325631312E327A204D31322C3330
          6831325631384831325633307A222F3E0D0A09093C2F673E0D0A093C2F673E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224E
          65772220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030
          302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77
          332E6F72672F313939392F786C696E6B2220783D223070782220793D22307078
          222076696577426F783D2230203020333220333222207374796C653D22656E61
          626C652D6261636B67726F756E643A6E6577203020302033322033323B222078
          6D6C3A73706163653D227072657365727665223E262331333B262331303B3C73
          74796C6520747970653D22746578742F637373223E2E426C61636B7B66696C6C
          3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D
          22426C61636B2220643D224D31392C32483543342E342C322C342C322E342C34
          2C3376323463302C302E362C302E342C312C312C3168323063302E362C302C31
          2D302E342C312D3156394C31392C327A204D32342C3236483656346831327635
          63302C302E362C302E342C312C312C31683520202623393B5632367A222F3E0D
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
          63653D227072657365727665223E2E7374307B66696C6C3A233131373744373B
          7D262331333B262331303B2623393B2E7374317B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374327B6F7061636974793A302E35
          3B7D262331333B262331303B2623393B2E7374337B66696C6C3A234431314331
          433B7D262331333B262331303B2623393B2E7374347B66696C6C3A2330333943
          32333B7D3C2F7374796C653E0D0A3C672069643D2243617465676F72697A6522
          3E0D0A09093C7265637420783D22322220793D2231382220636C6173733D2273
          7430222077696474683D22313222206865696768743D223132222F3E0D0A0909
          3C7265637420783D2231382220793D2231382220636C6173733D227374312220
          77696474683D22313222206865696768743D223132222F3E0D0A09093C672063
          6C6173733D22737432223E0D0A0909093C7265637420783D2231382220793D22
          31382220636C6173733D22737433222077696474683D22313222206865696768
          743D223132222F3E0D0A09093C2F673E0D0A09093C7265637420783D22322220
          793D22322220636C6173733D22737433222077696474683D2231322220686569
          6768743D223132222F3E0D0A09093C7265637420783D2231382220793D223222
          20636C6173733D22737434222077696474683D22313222206865696768743D22
          3132222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D223020302032342032342220656E61626C65
          2D6261636B67726F756E643D226E6577203020302032342032342220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          2066696C6C3D22233738373837382220643D224D372C39563763302D312E312C
          302E392D322C322D3268315633483943362E382C332C352C342E382C352C3776
          3263302C312E312D302E392C322D322C32763263312E312C302C322C302E392C
          322C32763263302C322E322C312E382C342C342C346831762D3220202623393B
          4839632D312E312C302D322D302E392D322D32762D3263302D312E322D302E35
          2D322E332D312E342D3343362E352C31312E332C372C31302E322C372C397A22
          2F3E0D0A3C706174682066696C6C3D22233738373837382220643D224D31392C
          39563763302D322E322D312E382D342D342D34682D317632683163312E312C30
          2C322C302E392C322C32763263302C312E322C302E352C322E332C312E342C33
          632D302E382C302E372D312E342C312E382D312E342C33763220202623393B63
          302C312E312D302E392C322D322C32682D317632683163322E322C302C342D31
          2E382C342D34762D3263302D312E312C302E392D322C322D32762D324331392E
          392C31312C31392C31302E312C31392C397A222F3E0D0A3C2F7376673E0D0A}
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
          303B3C7374796C6520747970653D22746578742F637373223E2E7374307B6669
          6C6C3A233131373744373B7D3C2F7374796C653E0D0A3C672069643D2250726F
          70657274696573223E0D0A09093C7061746820636C6173733D22737430222064
          3D224D31372E312C31332E31762D322E326C2D322E342D302E34632D302E312D
          302E342D302E332D302E382D302E352D312E316C312E342D326C2D312E352D31
          2E356C2D322C312E344331312E382C372E312C31312E342C372C31312C362E38
          6C2D302E342D322E3420202623393B2623393B48382E344C382C362E3843372E
          362C362E392C372E322C372E312C362E392C372E336C2D322D312E344C332E34
          2C372E346C312E342C32632D302E322C302E342D302E342C302E382D302E352C
          312E316C2D322E342C302E3476322E326C322E342C302E3463302E312C302E34
          2C302E332C302E382C302E352C312E3120202623393B2623393B6C2D312E342C
          326C312E352C312E356C322D312E3443372E322C31362E392C372E362C31372C
          382C31372E326C302E342C322E3468322E326C302E342D322E3463302E342D30
          2E312C302E382D302E332C312E312D302E356C322C312E346C312E352D312E35
          6C2D312E342D3220202623393B2623393B63302E322D302E342C302E342D302E
          382C302E352D312E314C31372E312C31332E317A204D392E352C31342E32632D
          312E322C302D322E322D312D322E322D322E3273312D322E322C322E322D322E
          3273322E322C312C322E322C322E325331302E372C31342E322C392E352C3134
          2E327A222F3E0D0A093C2F673E0D0A3C672069643D2250726F70657274696573
          5F315F223E0D0A09093C7061746820636C6173733D227374302220643D224D33
          302E312C32312E31762D322E326C2D322E342D302E34632D302E312D302E342D
          302E332D302E382D302E352D312E316C312E342D326C2D312E352D312E356C2D
          322C312E34632D302E342D302E322D302E382D302E342D312E312D302E356C2D
          302E342D322E3420202623393B2623393B682D322E324C32312C31342E38632D
          302E342C302E312D302E382C302E332D312E312C302E356C2D322D312E346C2D
          312E352C312E356C312E342C32632D302E322C302E342D302E342C302E382D30
          2E352C312E316C2D322E342C302E3476322E326C322E342C302E342020262339
          3B2623393B63302E312C302E342C302E332C302E382C302E352C312E316C2D31
          2E342C326C312E352C312E356C322D312E3463302E342C302E322C302E382C30
          2E342C312E312C302E356C302E342C322E3468322E326C302E342D322E346330
          2E342D302E312C302E382D302E332C312E312D302E356C322C312E3420202623
          393B2623393B6C312E352D312E356C2D312E342D3263302E322D302E342C302E
          342D302E382C302E352D312E314C33302E312C32312E317A204D32322E352C32
          322E32632D312E322C302D322E322D312D322E322D322E3273312D322E322C32
          2E322D322E3273322E322C312C322E322C322E3220202623393B2623393B5332
          332E372C32322E322C32322E352C32322E327A222F3E0D0A093C2F673E0D0A3C
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
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23373237
          3237323B7D262331333B262331303B2623393B2E7374307B6F7061636974793A
          302E333B7D3C2F7374796C653E0D0A3C7265637420783D2231342220793D2231
          362220636C6173733D22426C61636B222077696474683D223130222068656967
          68743D2232222F3E0D0A3C7265637420783D2231342220793D2232302220636C
          6173733D22426C61636B222077696474683D22313022206865696768743D2232
          222F3E0D0A3C7265637420783D2231342220793D2232342220636C6173733D22
          426C61636B222077696474683D22313022206865696768743D2232222F3E0D0A
          3C7265637420783D2231342220793D2231322220636C6173733D22426C61636B
          222077696474683D22313022206865696768743D2232222F3E0D0A3C6720636C
          6173733D22737430223E0D0A09093C7265637420783D2232362220793D223132
          2220636C6173733D22426C7565222077696474683D223222206865696768743D
          223134222F3E0D0A093C2F673E0D0A3C7265637420783D2232362220793D2231
          322220636C6173733D22426C7565222077696474683D22322220686569676874
          3D2238222F3E0D0A3C7061746820636C6173733D22426C75652220643D224D33
          312C32483143302E342C322C302C322E342C302C3376323663302C302E362C30
          2E342C312C312C3168333063302E362C302C312D302E342C312D315633433332
          2C322E342C33312E362C322C33312C327A204D32322C3463312E312C302C322C
          302E392C322C3220202623393B63302C312E312D302E392C322D322C32732D32
          2D302E392D322D324332302C342E392C32302E392C342C32322C347A204D3330
          2C3238483136682D32682D324838483256313068366834683268326831345632
          387A204D32382C38632D312E312C302D322D302E392D322D3263302D312E312C
          302E392D322C322D3220202623393B73322C302E392C322C324333302C372E31
          2C32392E312C382C32382C387A222F3E0D0A3C7265637420783D22342220793D
          2231322220636C6173733D22426C61636B222077696474683D22382220686569
          6768743D223134222F3E0D0A3C2F7376673E0D0A}
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
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2253
          657474696E6773223E0D0A09093C7061746820636C6173733D22426C75652220
          643D224D33302C3138762D346C2D342E342D302E37632D302E322D302E382D30
          2E352D312E352D302E392D322E316C322E362D332E366C2D322E382D322E386C
          2D332E362C322E36632D302E372D302E342D312E342D302E372D322E312D302E
          394C31382C32682D3420202623393B2623393B6C2D302E372C342E34632D302E
          382C302E322D312E352C302E352D322E312C302E394C372E352C342E374C342E
          372C372E356C322E362C332E36632D302E342C302E372D302E372C312E342D30
          2E392C322E314C322C313476346C342E342C302E3763302E322C302E382C302E
          352C312E352C302E392C322E3120202623393B2623393B6C2D322E362C332E36
          6C322E382C322E386C332E362D322E3663302E372C302E342C312E342C302E37
          2C322E312C302E394C31342C333068346C302E372D342E3463302E382D302E32
          2C312E352D302E352C322E312D302E396C332E362C322E366C322E382D322E38
          6C2D322E362D332E3620202623393B2623393B63302E342D302E372C302E372D
          312E342C302E392D322E314C33302C31387A204D31362C3230632D322E322C30
          2D342D312E382D342D3463302D322E322C312E382D342C342D3473342C312E38
          2C342C344332302C31382E322C31382E322C32302C31362C32307A222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224D
          756C7469706C655F446F63756D656E74732220786D6C6E733D22687474703A2F
          2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E
          6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B22
          20783D223070782220793D22307078222076696577426F783D22302030203332
          20333222207374796C653D22656E61626C652D6261636B67726F756E643A6E65
          77203020302033322033323B2220786D6C3A73706163653D2270726573657276
          65223E262331333B262331303B3C7374796C6520747970653D22746578742F63
          7373223E2E426C61636B7B66696C6C3A233732373237323B7D3C2F7374796C65
          3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D33312C3868
          2D35563563302D302E352D302E352D312D312D31682D35563163302D302E352D
          302E352D312D312D31483143302E352C302C302C302E352C302C317632326330
          2C302E352C302E352C312C312C316835763363302C302E352C302E352C312C31
          2C3120202623393B6835763363302C302E352C302E352C312C312C3168313863
          302E352C302C312D302E352C312D3156394333322C382E352C33312E352C382C
          33312C387A204D362C35763137483256326831367632483743362E352C342C36
          2C342E352C362C357A204D31322C397631374838563668313676324831332020
          2623393B4331322E352C382C31322C382E352C31322C397A204D33302C333048
          31345631306831365633307A222F3E0D0A3C2F7376673E0D0A}
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
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
          343B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          43423031423B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233132394334393B7D262331333B262331303B2623393B2E426C75657B6669
          6C6C3A233338374342373B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234430323132373B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A6E6F6E653B66696C6C3A233733373337343B7D
          3C2F7374796C653E0D0A3C7061746820636C6173733D22426C75652220643D22
          4D32342C386832563363302D302E352D302E352D312D312D31483343322E352C
          322C322C322E352C322C33763568324832347A222F3E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D32322C3132483132762D326831305631
          327A204D32322C3136762D3248313276324832327A204D362C32306834762D32
          48365632307A204D31362C3138682D34763268345631387A204D362C31366834
          762D3248365631367A204D362C31326834762D32483620202623393B5631327A
          222F3E0D0A3C6720636C6173733D22737430223E0D0A09093C7061746820636C
          6173733D22426C61636B2220643D224D32342C31345638683276364832347A20
          4D31342C323248345638483276313563302C302E352C302E352C312C312C3168
          31315632327A222F3E0D0A093C2F673E0D0A3C7061746820636C6173733D2242
          6C75652220643D224D33322C3235762D326C2D322E352D302E36632D302E312D
          302E342D302E332D302E382D302E352D312E326C312E352D322E316C2D312E36
          2D312E364C32362E382C3139632D302E342D302E322D302E382D302E342D312E
          322D302E354C32352C3136682D3220202623393B6C2D302E362C322E35632D30
          2E342C302E312D302E382C302E332D312E322C302E356C2D322D312E356C2D31
          2E372C312E376C312E352C32632D302E322C302E342D302E342C302E382D302E
          352C312E324C31362C323376326C322E352C302E3663302E312C302E342C302E
          332C302E382C302E352C312E3220202623393B6C2D312E352C322E316C312E36
          2C312E366C322E312D312E3563302E342C302E322C302E382C302E342C312E32
          2C302E354C32332C333268326C302E362D322E3563302E342D302E312C302E38
          2D302E332C312E322D302E356C322E312C312E356C312E362D312E364C32392C
          32362E3820202623393B63302E322D302E342C302E342D302E382C302E352D31
          2E324C33322C32357A204D32342C3236632D312E312C302D322D302E392D322D
          3273302E392D322C322D3273322C302E392C322C325332352E312C32362C3234
          2C32367A222F3E0D0A3C2F7376673E0D0A}
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
          7665222069643D224F70656E223E262331333B262331303B20203C7374796C65
          20747970653D22746578742F6373732220786D6C3A73706163653D2270726573
          65727665223E2E59656C6C6F777B66696C6C3A234646423131353B7D26233130
          3B2623393B2E7374307B6F7061636974793A302E37353B7D3C2F7374796C653E
          0D0A3C67206F7061636974793D22302E37352220636C6173733D22737430223E
          0D0A09093C7061746820643D224D322E322C32352E326C352E352D313263302E
          332D302E372C312D312E322C312E382D312E32483236563963302D302E362D30
          2E342D312D312D31483132563563302D302E362D302E342D312D312D31483343
          322E342C342C322C342E342C322C3576323020202063302C302E322C302C302E
          332C302E312C302E3443322E312C32352E332C322E322C32352E332C322E322C
          32352E327A222066696C6C3D222346464231313522206F7061636974793D2230
          2E37352220636C6173733D2259656C6C6F77222F3E0D0A093C2F673E0D0A3C70
          61746820643D224D33312E332C313448392E364C342C32366832312E3863302E
          352C302C312E312D302E332C312E332D302E374C33322C31342E374333322E31
          2C31342E332C33312E382C31342C33312E332C31347A222066696C6C3D222346
          46423131352220636C6173733D2259656C6C6F77222F3E0D0A3C2F7376673E0D
          0A}
      end>
  end
  object pmRecentProjects: TdxBarPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bliRecentProjects'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bliRecentFiles'
      end>
    UseOwnFont = False
    Left = 40
    Top = 48
    PixelsPerInch = 96
  end
  object ActionList: TActionList
    Left = 664
    object actEditUndo: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object actEditCut: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object actEditCopy: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object actEditPaste: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object actEditSelectAll: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
