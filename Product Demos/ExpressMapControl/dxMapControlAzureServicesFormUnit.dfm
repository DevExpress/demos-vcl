inherited frmAzureServices: TfrmAzureServices
  Caption = 'Azure Services'
  ClientHeight = 505
  ClientWidth = 880
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 880
  ExplicitHeight = 505
  TextHeight = 13
  object dxRibbon1: TdxRibbon [0]
    Left = 0
    Top = 0
    Width = 880
    Height = 126
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Demo'
      Groups = <
        item
        end
        item
          Caption = 'Azure Services'
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  inherited lcMain: TdxLayoutControl
    Top = 126
    Width = 880
    Height = 379
    TabOrder = 1
    ExplicitTop = 126
    ExplicitWidth = 880
    ExplicitHeight = 379
    inherited pnlMap: TPanel
      Top = 10
      Width = 607
      Height = 321
      Color = 16505534
      StyleElements = [seFont, seClient, seBorder]
      ExplicitTop = 10
      ExplicitWidth = 607
      ExplicitHeight = 321
      inherited dxMapControl1: TdxMapControl
        Width = 607
        Height = 321
        CenterPoint.Longitude = -118.255629000000000000
        CenterPoint.Latitude = 34.158506000000000000
        OptionsBehavior.MapItemSelectMode = mismNone
        PopupMenu = dxRibbonPopupMenu1
        ZoomLevel = 14.000000000000000000
        OnMouseDown = dxMapControl1MouseDown
        OnMouseUp = dxMapControl1MouseUp
        ExplicitWidth = 607
        ExplicitHeight = 321
        object dxMapControl1ImageTileLayer1: TdxMapImageTileLayer
          ProviderClassName = 'TdxMapControlAzureMapImageryDataProvider'
        end
        object dxMapControl1ItemLayer1: TdxMapItemLayer
          ProjectionClassName = 'TdxMapControlSphericalMercatorProjection'
          ItemStyle.AssignedValues = [mcsvBorderWidth, mcsvBorderColor]
          ItemStyle.BorderColor = -1627389697
          ItemStyle.BorderWidth = 4
          ItemStyleHot.AssignedValues = [mcsvBorderWidth, mcsvBorderColor]
          ItemStyleHot.BorderColor = -8355712
          ItemStyleHot.BorderWidth = 4
          object miManeuverPoint: TdxMapDot
            Style.AssignedValues = [mcsvColor, mcsvBorderColor]
            Style.BorderColor = -1627389952
            Style.Color = -1
            Visible = False
            Size = 2
          end
          object miNewPointPointer: TdxMapDot
            Style.AssignedValues = [mcsvColor, mcsvBorderWidth, mcsvBorderColor]
            Style.BorderColor = -1
            Style.BorderWidth = 1
            Style.Color = -65536
            StyleHot.AssignedValues = [mcsvColor, mcsvBorderWidth, mcsvBorderColor]
            StyleHot.BorderColor = -1
            StyleHot.BorderWidth = 1
            StyleHot.Color = -65536
            Visible = False
            Size = 4
          end
        end
        object dxMapControl1AzureMapGeocodeProvider1: TdxMapControlAzureMapGeocodeProvider
          OnResponse = dxMapControl1AzureMapGeocodeProvider1Response
        end
        object dxMapControl1AzureMapReverseGeocodeProvider1: TdxMapControlAzureMapReverseGeocodeProvider
        end
        object dxMapControl1AzureMapRouteProvider1: TdxMapControlAzureMapRouteProvider
          OnResponse = dxMapControl1AzureMapRouteProvider1Response
        end
      end
      object imgSearchBackground: TcxImage
        Left = 395
        Top = 12
        TabStop = False
        Anchors = [akTop, akRight]
        AutoSize = True
        Picture.Data = {
          0D546478536D617274496D61676589504E470D0A1A0A0000000D494844520000
          00B40000002808060000005769D00A000000017352474200AECE1CE900000004
          67414D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8
          640000011D49444154785EEDDD414AC3601485D15841C18EEA4045F720B8FF5D
          E81A2AD681330BA2B47D4F23822BE87F39076E69E61F216490FF64FAB3A8DDD6
          AE6BCBF91A8ED5AEF65EDBD49EE7EBE937E8F3DA7DAD4386D174D88FB58FD3FA
          E93BF1434DCC8CEAAC76597BE9A0EF6A3735185947FDD577E77E668604571DB4
          470D522C3B686F3348B1103351044D14411345D044113451044D14411345D044
          113451044D14411345D044113451044D14411345D044113451044D14411345D0
          44113451044D14411345D044113451044D144113A583FEFEF23904D875D0FDF5
          7348B0EDA05F7FFEC3F0361DF4BAE62ECDE8BAE1751F49B1AFBDD556B5FEAC3F
          8CA6637EAA7DFE3FD6ADCF5BE9232A2EE66B3856FD32635BEB63DDFA29A3AEA7
          E90044D31E40A7CAB6F70000000049454E44AE426082}
        Properties.Center = False
        Properties.FitMode = ifmStretch
        Properties.GraphicClassName = 'TdxSmartImage'
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        StyleFocused.BorderStyle = ebsNone
        StyleHot.BorderStyle = ebsNone
        TabOrder = 1
        Transparent = True
      end
      object edSearch: TcxTextEdit
        Left = 407
        Top = 24
        Anchors = [akTop, akRight]
        Style.BorderStyle = ebsUltraFlat
        TabOrder = 2
        TextHint = 'Enter search location'
        OnKeyUp = edSearchKeyUp
        Width = 161
      end
    end
    object cbRoutes: TcxComboBox [1]
      Left = 630
      Top = 30
      Anchors = [akLeft, akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.OnEditValueChanged = cbRoutesPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 240
    end
    object btnShowAllRoute: TcxButton [2]
      Left = 753
      Top = 306
      Width = 117
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Zoom To Route'
      TabOrder = 4
      OnClick = btnShowAllRouteClick
    end
    object btnClearRoute: TcxButton [3]
      Left = 630
      Top = 306
      Width = 117
      Height = 25
      Action = actClear
      Anchors = [akRight, akBottom]
      Caption = 'Clear routes'
      TabOrder = 3
    end
    object lvWaypoints: TdxListViewControl [4]
      Left = 630
      Top = 77
      Width = 240
      Height = 223
      ReadOnly = True
      TabOrder = 2
      ViewStyle = Report
      ViewStyleReport.RowSelect = True
      ViewStyleReport.ShowColumnHeaders = False
      OnResize = lvWaypointsResize
      OnSelectItem = lvWaypointsSelectItem
      object lvWaypointsColumn1: TdxListColumn
        Width = 213
        CreatedOrderIndex = 0
      end
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 2
      LayoutDirection = ldHorizontal
    end
    inherited lsSetupSplitter: TdxLayoutSplitterItem
      AlignHorz = ahRight
      Visible = True
    end
    inherited lgSetupTools: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
      Visible = True
      SizeOptions.Width = 240
      Index = 2
    end
    inherited dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'dxMapControl1'
      Index = 0
    end
    object liSelectedRouteCombo: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      Control = cbRoutes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liWaypointsList: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxListViewControl1'
      CaptionOptions.Visible = False
      Control = lvWaypoints
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liShowAllRouteBtn: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnShowAllRoute
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liClearRouteBtn: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnClearRoute
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object liSelectedRouteLabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Selected Route:'
      Index = 0
    end
    object liWaypointsLabel: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Waypoints:'
      Index = 2
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.Strings = (
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    Left = 344
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Azure Services Demo Options'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 831
      FloatTop = 8
      FloatClientWidth = 90
      FloatClientHeight = 123
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButtonDriving'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonWalking'
        end
        item
          Visible = True
          ItemName = 'dxBarButtonBicycle'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Driving'
      Category = 0
      Hint = 'Driving'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Tag = 1
      Caption = 'Walking'
      Category = 0
      Hint = 'Walking'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Tag = 2
      Caption = 'Transit'
      Category = 0
      Hint = 'Transit'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarLargeButton1Click
    end
    object dxBarButtonDriving: TdxBarButton
      Tag = 2
      Caption = 'Driving'
      Category = 0
      Hint = 'Driving'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
      OnClick = dxBarLargeButton1Click
    end
    object dxBarButtonWalking: TdxBarButton
      Tag = 4
      Caption = 'Walking'
      Category = 0
      Hint = 'Walking'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarLargeButton1Click
    end
    object dxBarButtonBicycle: TdxBarButton
      Caption = 'Bicycle'
      Category = 0
      Hint = 'Bicycle'
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 1
      OnClick = dxBarLargeButton1Click
    end
    object pmItemSetStartPoint: TdxBarButton
      Action = actAddStartPoint
      Category = 1
    end
    object pmItemSetAsStartPoint: TdxBarButton
      Action = actSetAsStartPoint
      Category = 1
    end
    object pmItemChangeStartPoint: TdxBarButton
      Action = actChangeStartPoint
      Category = 1
    end
    object pmItemAddRoutePoint: TdxBarButton
      Action = actAddEndPoint
      Category = 1
    end
    object pmItemSetAsRoutePoint: TdxBarButton
      Action = actSetAsEndPoint
      Category = 1
    end
    object pmItemDeletePoint: TdxBarButton
      Action = actDeletePoint
      Category = 1
    end
    object pmItemStartNewRoute: TdxBarButton
      Action = actStartNewRoute
      Category = 1
    end
  end
  object ActionList1: TActionList [3]
    Left = 488
    Top = 264
    object actAddStartPoint: TAction
      Caption = 'Set start point'
      OnExecute = actAddStartPointExecute
    end
    object actAddEndPoint: TAction
      Caption = 'Add end point'
      OnExecute = actAddEndPointExecute
    end
    object actStartNewRoute: TAction
      Caption = 'Start New Route'
      OnExecute = actStartNewRouteExecute
    end
    object actDeletePoint: TAction
      Caption = 'Delete point'
      OnExecute = actDeletePointExecute
    end
    object actChangeStartPoint: TAction
      Caption = 'Change start point'
      OnExecute = actChangeStartPointExecute
    end
    object actClear: TAction
      Caption = 'Clear route points'
      OnExecute = actClearExecute
    end
    object actSetAsStartPoint: TAction
      Caption = 'Set as start point'
      OnExecute = actSetAsStartPointExecute
    end
    object actSetAsEndPoint: TAction
      Caption = 'Set as end point'
      OnExecute = actSetAsEndPointExecute
    end
  end
  object dxRibbonPopupMenu1: TdxRibbonPopupMenu [4]
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'pmItemSetStartPoint'
      end
      item
        Visible = True
        ItemName = 'pmItemSetAsStartPoint'
      end
      item
        Visible = True
        ItemName = 'pmItemChangeStartPoint'
      end
      item
        Visible = True
        ItemName = 'pmItemStartNewRoute'
      end
      item
        Visible = True
        ItemName = 'pmItemAddRoutePoint'
      end
      item
        Visible = True
        ItemName = 'pmItemSetAsRoutePoint'
      end
      item
        Visible = True
        ItemName = 'pmItemDeletePoint'
      end>
    Ribbon = dxRibbon1
    UseOwnFont = False
    OnPopup = dxBarPopupMenu1Popup
    Left = 288
    Top = 232
    PixelsPerInch = 96
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 200
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxBigCaptionCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxMediumCaptionCxLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
