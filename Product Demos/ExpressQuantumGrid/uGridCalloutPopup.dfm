inherited frmGridCalloutPopup: TfrmGridCalloutPopup
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = -86
    Top = -97
    Width = 537
    Height = 401
    TabOrder = 3
    Visible = False
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object cxButton1: TcxButton
      Left = 452
      Top = 366
      Width = 75
      Height = 25
      Action = Action1
      TabOrder = 0
    end
    object imgsHome: TdxImageSlider
      Left = 10000
      Top = 10000
      Width = 488
      Height = 289
      BorderStyle = cxcbsNone
      Color = 16053234
      Images = icSlider
      ParentColor = False
      Visible = False
    end
    object reFeatures: TcxRichEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Lines.Strings = (
        'reFeatures')
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Height = 289
      Width = 488
    end
    object dxMapControl1: TdxMapControl
      Left = 10000
      Top = 10000
      Width = 488
      Height = 288
      NavigationPanel.Style.CoordinateFont.Charset = DEFAULT_CHARSET
      NavigationPanel.Style.CoordinateFont.Color = clWindowText
      NavigationPanel.Style.CoordinateFont.Height = -21
      NavigationPanel.Style.CoordinateFont.Name = 'Tahoma'
      NavigationPanel.Style.CoordinateFont.Style = []
      NavigationPanel.Style.ScaleFont.Charset = DEFAULT_CHARSET
      NavigationPanel.Style.ScaleFont.Color = clWindowText
      NavigationPanel.Style.ScaleFont.Height = -16
      NavigationPanel.Style.ScaleFont.Name = 'Tahoma'
      NavigationPanel.Style.ScaleFont.Style = []
      TabOrder = 7
      Visible = False
      ZoomLevel = 15.000000000000000000
      object dxMapControl1ImageTileLayer1: TdxMapImageTileLayer
        ProviderClassName = 'TdxMapControlBingMapImageryDataProvider'
      end
      object dxMapControl1ItemLayer1: TdxMapItemLayer
        ProjectionClassName = 'TdxMapControlSphericalMercatorProjection'
      end
      object dxMapControl1BingMapGeoCodingDataProvider1: TdxMapControlBingMapGeoCodingDataProvider
        OnResponse = dxMapControl1BingMapGeoCodingDataProvider1Response
      end
    end
    object cxDBLabel1: TcxDBLabel
      Left = 45
      Top = 212
      AutoSize = True
      DataBinding.DataField = 'Phone'
      DataBinding.DataSource = dmMain.dsAgents
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 20
      Width = 309
    end
    object cxDBLabel2: TcxDBLabel
      Left = 45
      Top = 240
      AutoSize = True
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = dmMain.dsAgents
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Transparent = True
      Height = 20
      Width = 309
    end
    object cxDBImage1: TcxDBImage
      Left = 23
      Top = 23
      DataBinding.DataField = 'Photo'
      DataBinding.DataSource = dmMain.dsAgents
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Style.Edges = []
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Height = 151
      Width = 158
    end
    object cxButton4: TcxButton
      Left = 416
      Top = 294
      Width = 95
      Height = 25
      Caption = 'Ask a Question'
      TabOrder = 1
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.TabPosition = tpBottom
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Contact'
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Photos'
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = imgsHome
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Property Details'
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = reFeatures
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Map'
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxMapControl1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001818184533333393474747CC5151
        51E7595959FF595959FF2D2D2D81000000000000000000000000000000000000
        0000000000000000000018181845484848CF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF2D2D2D810000000000000000000000000000
        00000101010333333393595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF0000000000000000000000000101
        01033E3E3EB1595959FF595959FF595959FF555555F3454545C7595959FF5959
        59FF595959FF595959FF595959FF2C2C2C7E0000000000000000000000003232
        3290595959FF595959FF595959FF3C3C3CAB07070715000000002C2C2C7E5959
        59FF595959FF595959FF2C2C2C7E000000000000000000000000181818455959
        59FF595959FF595959FF2E2E2E84000000000000000000000000000000002C2C
        2C7E595959FF2C2C2C7E00000000000000000000000001010103484848CF5959
        59FF595959FF3B3B3BA800000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001515153C595959FF5959
        59FF555555F30808081800000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003131318D595959FF5959
        59FF474747CB0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000474747CC595959FF5959
        59FF595959FF2D2D2D8100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000515151E7595959FF5959
        59FF595959FF595959FF2D2D2D81000000000000000000000000000000000000
        00000000000000000000000000000000000000000000585858FC595959FF5959
        59FF595959FF595959FF595959FF000000000000000000000000000000000000
        00000000000000000000000000000000000000000000595959FF595959FF5959
        59FF595959FF595959FF2C2C2C7E000000000000000000000000000000000000
        000000000000000000000000000000000000000000002C2C2C7E595959FF5959
        59FF595959FF2C2C2C7E00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002C2C2C7E5959
        59FF2C2C2C7E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      CaptionOptions.Text = 'Phone:'
      CaptionOptions.VisibleElements = [cveImage]
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 309
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000404040B7595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF404040B700000000595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF00000000595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF545454F0595959FF595959FF5959
        59FF595959FF595959FF595959FF595959FF00000000595959FF595959FF5959
        59FF595959FF595959FF595959FF404040B70404040C404040B7595959FF5959
        59FF595959FF595959FF595959FF595959FF00000000595959FF595959FF5959
        59FF595959FF595959FF404040B70505050F2C2C2C7E0505050F404040B75959
        59FF595959FF595959FF595959FF595959FF00000000595959FF595959FF5959
        59FF595959FF404040B70505050F404040B7595959FF404040B70505050F4040
        40B7595959FF595959FF595959FF595959FF00000000595959FF595959FF5959
        59FF404040B70505050F404040B7595959FF595959FF595959FF404040B70505
        050F404040B7595959FF595959FF595959FF00000000595959FF595959FF4040
        40B70505050F404040B7595959FF595959FF595959FF595959FF595959FF4040
        40B70505050F404040B7595959FF595959FF00000000595959FF404040B70505
        050F404040B7595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF404040B70505050F404040B7595959FF00000000595959FF0505050F4040
        40B7595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF404040B70505050F595959FF00000000424242BD595959FF5959
        59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
        59FF595959FF595959FF595959FF424242BD0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      CaptionOptions.Text = 'Email:'
      CaptionOptions.VisibleElements = [cveImage]
      Control = cxDBLabel2
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 30
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxDBImage1'
      CaptionOptions.Visible = False
      Control = cxDBImage1
      ControlOptions.OriginalHeight = 151
      ControlOptions.OriginalWidth = 158
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      Offsets.Left = 28
      Offsets.Top = 9
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'For Sale: 23'
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sold: 15'
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = 'Years of experience: 10'
      Index = 2
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object cxLabel1: TcxLabel [2]
    Left = 172
    Top = 60
    AutoSize = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.HotTrack = False
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Transparent = True
    Visible = False
    Height = 162
    Width = 279
  end
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object gvHomes: TcxGridDBWinExplorerView
        OnMouseDown = gvHomesMouseDown
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        ActiveDisplayMode = dmExtraLargeImages
        DataController.DataSource = dmMain.dsHomes
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        ItemSet.ExtraLargeImageItem = gvHomesPhoto
        ItemSet.TextItem = gvHomesPrice
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        Styles.TextItem = cxStyle2
        DisplayModes.ExtraLargeImages.ImageSize.Height = 340
        DisplayModes.ExtraLargeImages.ImageSize.Width = 500
        object gvHomesRecId: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object gvHomesID: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'ID'
        end
        object gvHomesAddress: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Address'
        end
        object gvHomesBeds: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Beds'
        end
        object gvHomesBaths: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Baths'
        end
        object gvHomesHouseSize: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'HouseSize'
        end
        object gvHomesLotSize: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'LotSize'
        end
        object gvHomesPrice: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
        end
        object gvHomesFeatures: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Features'
        end
        object gvHomesYearBuilt: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'YearBuilt'
        end
        object gvHomesType: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Type'
        end
        object gvHomesStatus: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Status'
        end
        object gvHomesPhoto: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Photo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmNormal
          Properties.GraphicClassName = 'TdxSmartImage'
        end
        object gvHomesAgentId: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'AgentId'
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = gvHomes
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Visible = False
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 152
    Top = 88
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -16
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 80
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object dxCalloutPopup1: TdxCalloutPopup
    PopupControl = dxLayoutControl1
    Alignment = cpaRightCenter
    OnHide = dxCalloutPopup1Hide
    OnShow = dxCalloutPopup1Show
    Left = 40
    Top = 136
  end
  object icSlider: TcxImageCollection
    Left = 624
    Top = 344
  end
  object ActionList1: TActionList
    OnUpdate = ActionList1Update
    Left = 464
    Top = 312
    object Action1: TAction
      Caption = 'Close'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
  object dxCalloutPopup2: TdxCalloutPopup
    PopupControl = cxLabel1
    Alignment = cpaRightTop
    Rounded = True
    RoundRadius = 9
    Left = 272
    Top = 128
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 88
    Top = 224
  end
end
