object frmPrinting: TfrmPrinting
  Left = 0
  Top = 0
  Width = 1041
  Height = 762
  ParentShowHint = False
  ShowHint = True
  TabOrder = 0
  object lcPrintPreview: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1041
    Height = 762
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lcxLookAndFeel
    object PSPreviewWindow: TdxPSPreviewWindow
      Left = 260
      Top = 10
      Width = 771
      Height = 742
      BorderStyle = cxcbsNone
      PreviewPopupMenu = pmPreview
      OnUpdateControls = PSPreviewWindowUpdateControls
    end
    object btnPrint: TcxButton
      Left = 10
      Top = 10
      Width = 75
      Height = 75
      Caption = '&Print'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = DM.ilToolbarsLarge
      OptionsImage.Layout = blGlyphTop
      TabOrder = 0
      OnClick = btnPrintClick
    end
    object sePrintCopies: TcxSpinEdit
      Left = 162
      Top = 10
      Properties.ImmediatePost = True
      Properties.MinValue = 1.000000000000000000
      Style.HotTrack = False
      TabOrder = 1
      Value = 1
      Width = 48
    end
    object btnPrinter: TcxButton
      Left = 10
      Top = 133
      Width = 200
      Height = 50
      Caption = 'btnPrinter'
      DropDownMenu = pmPrinters
      Kind = cxbkOfficeDropDown
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = DM.ilToolbarsLarge
      TabOrder = 2
      WordWrap = True
    end
    object btnPrintCollate: TcxButton
      Left = 10
      Top = 334
      Width = 200
      Height = 50
      DropDownMenu = pmPrintCollate
      Kind = cxbkOfficeDropDown
      OptionsImage.ImageIndex = 61
      OptionsImage.Images = DM.ilToolbarsLarge
      TabOrder = 5
      WordWrap = True
    end
    object btnPrintPages: TcxButton
      Left = 10
      Top = 251
      Width = 200
      Height = 50
      DropDownMenu = pmPrintRanges
      Kind = cxbkOfficeDropDown
      OptionsImage.ImageIndex = 60
      OptionsImage.Images = DM.ilToolbarsLarge
      TabOrder = 3
      WordWrap = True
    end
    object tePrintRange: TcxTextEdit
      Left = 48
      Top = 307
      Properties.OnChange = tePrintRangePropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Width = 162
    end
    object btnPageOrientation: TcxButton
      Left = 10
      Top = 390
      Width = 200
      Height = 50
      DropDownMenu = pmPageOrientation
      Kind = cxbkOfficeDropDown
      OptionsImage.ImageIndex = 59
      OptionsImage.Images = DM.ilToolbarsLarge
      TabOrder = 6
      WordWrap = True
    end
    object btnPaperSize: TcxButton
      Left = 10
      Top = 446
      Width = 200
      Height = 50
      DropDownMenu = pmPaperSizes
      Kind = cxbkOfficeDropDown
      OptionsImage.ImageIndex = 68
      OptionsImage.Images = DM.ilToolbarsLarge
      TabOrder = 7
      WordWrap = True
    end
    object lcPrintPreviewGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcPrintPreviewGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxPSPreviewWindow1'
      CaptionOptions.Visible = False
      Control = PSPreviewWindow
      ControlOptions.OriginalHeight = 240
      ControlOptions.OriginalWidth = 320
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnPrint
      ControlOptions.OriginalHeight = 75
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liCopies: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Copies:'
      Control = sePrintCopies
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = lcPrintPreviewGroup_Root
      CaptionOptions.Text = 'Separator'
      Index = 2
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lcPrintPreviewGroup_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lcPrintPreviewGroup_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      SizeOptions.Width = 200
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Visible = False
      Control = btnPrinter
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcPrintPreviewGroup_Root
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup1
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object liPrinterProperties: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      LayoutLookAndFeel = lcxLookAndFeelLinks
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'Printer Properties'
      OnCaptionClick = liPrinterPropertiesCaptionClick
      Index = 4
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup1
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object liPageSetup: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      LayoutLookAndFeel = lcxLookAndFeelLinks
      CaptionOptions.Cursor = crHandPoint
      CaptionOptions.Text = 'Page Setup'
      OnCaptionClick = liPageSetupCaptionClick
      Index = 12
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Visible = False
      Control = btnPrintCollate
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liPrinter: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup1
      LayoutLookAndFeel = lcxLookAndFeelCaptions
      CaptionOptions.Text = 'Printer'
      Index = 2
    end
    object liSettings: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup1
      LayoutLookAndFeel = lcxLookAndFeelCaptions
      CaptionOptions.Text = 'Settings'
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Visible = False
      Control = btnPrintPages
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liPages: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Pages:'
      Control = tePrintRange
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Visible = False
      Control = btnPageOrientation
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 173
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnPaperSize
      ControlOptions.OriginalHeight = 50
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 11
    end
  end
  object BarManager: TdxBarManager
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
    ImageOptions.Images = ilSmall
    ImageOptions.LargeImages = DM.ilToolbarsLarge
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 99
    Top = 56
    PixelsPerInch = 96
    object bliPrinters: TdxBarListItem
      Caption = 'Printers'
      Category = 0
      Visible = ivAlways
      OnClick = bliPrintersClick
      ShowCheck = True
      ShowNumbers = False
    end
    object bliPrintRanges: TdxBarListItem
      Caption = 'Print Ranges'
      Category = 0
      Visible = ivAlways
      OnClick = bliPrintRangesClick
      ItemIndex = 0
      Items.Strings = (
        'Print All Pages'
        'Print Current Page'
        'Custom')
      ShowCheck = True
      ShowNumbers = False
    end
    object bliPageOrientation: TdxBarListItem
      Caption = 'Page Orientation'
      Category = 0
      Visible = ivAlways
      OnClick = bliPageOrientationClick
      ItemIndex = 0
      Items.Strings = (
        'Portrait Orientation'
        'Landscape Orientation')
      ShowCheck = True
      ShowNumbers = False
    end
    object bliCollation: TdxBarListItem
      Caption = 'Collation'
      Category = 0
      Visible = ivAlways
      OnClick = bliCollationClick
      ItemIndex = 0
      Items.Strings = (
        'Collate'
        'Uncollate')
      ShowCheck = True
      ShowNumbers = False
    end
    object bliPaperSizes: TdxBarListItem
      Caption = 'Paper Sizes'
      Category = 0
      Visible = ivAlways
      OnClick = bliPaperSizesClick
      ItemIndex = 0
      ShowCheck = True
      ShowNumbers = False
    end
    object bbCustomPaperSize: TdxBarButton
      Caption = 'More...'
      Category = 0
      Hint = 'More'
      Visible = ivAlways
      OnClick = liPageSetupCaptionClick
    end
    object bbDesignReport: TdxBarButton
      Caption = 'Design Report...'
      Category = 0
      Hint = 'Design Report'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bbDesignReportClick
    end
    object bbRebuildReport: TdxBarButton
      Caption = 'Rebuild Report'
      Category = 0
      Hint = 'Rebuild Report'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = bbRebuildReportClick
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 184
    Top = 56
    object lcxLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    object lcxLookAndFeelCaptions: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -15
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
    object lcxLookAndFeelLinks: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = [fsUnderline]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
  object pmPrinters: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'bliPrinters'
      end>
    UseOwnFont = False
    Left = 160
    Top = 144
    PixelsPerInch = 96
  end
  object pmPrintCollate: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'bliCollation'
      end>
    UseOwnFont = False
    Left = 160
    Top = 346
    PixelsPerInch = 96
  end
  object pmPrintRanges: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bliPrintRanges'
      end>
    UseOwnFont = False
    Left = 160
    Top = 264
    PixelsPerInch = 96
  end
  object pmPageOrientation: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bliPageOrientation'
      end>
    UseOwnFont = False
    Left = 160
    Top = 400
    PixelsPerInch = 96
  end
  object pmPaperSizes: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bliPaperSizes'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'bbCustomPaperSize'
      end>
    UseOwnFont = False
    Left = 160
    Top = 456
    PixelsPerInch = 96
  end
  object pmPreview: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <
      item
        Visible = True
        ItemName = 'bbDesignReport'
      end
      item
        Visible = True
        ItemName = 'bbRebuildReport'
      end>
    UseOwnFont = False
    Left = 504
    Top = 368
    PixelsPerInch = 96
  end
  object ilSmall: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 6291660
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000900000012000000120000
          0009000000020000000000000000000000000000000000000000000000000000
          0000000000030000000A0000000A0000000B2519156F68473BFF67443BFF1D13
          0F700000000C0000000B0000000C000000050000000100000000000000000000
          00030403021A543B33C738251EB30D0907454C362DC4B5A198FFAB958AFF3E29
          23C50D080748311F1AB13A241ECE030202220000000400000000000000000000
          00085A4138C9C7B9B0FFA8958BFF6C4F47FF715044FECABAB0FFC6B5AAFF6142
          37FE6B5047FE9C857AFFA89388FF3B241FCB0000000B00000000000000000000
          00074C3930ABC0AEA7FFE3DBD5FFD2C3BAFFC1AFA6FFCFC0B7FFCEBEB5FFBCAA
          9FFFCAB9AEFFC9B8ADFF9F897FFF36221DB20000000A00000000000000010000
          0007110C0B368D6F65FCEAE3DFFFDACDC6FFD8CCC3FFE3D9D3FFE7E0DAFFE1D6
          D0FFD2C3B9FFCDBCB3FF705449FE0D0907410000000A00000002000000042A1E
          1A6B4C372EBB846356FED9CEC8FFE3DAD5FFCDBEB7FF8E6F62FF947567FFD0C0
          B9FFE3DAD3FFC8B7ADFF6A4940FF47312AC22418147100000007000000088D6D
          60FFD8CCC7FFEEE8E5FFEBE6E0FFEAE3DDFF7F6257FF2219155E241B175E9374
          67FFEBE4DFFFD6C8C0FFD3C6BDFFB9A59BFF78574BFF0000000D000000079373
          64FFD9CECAFFF6F3F2FFFAF7F6FFEFEAE5FF76574DFF1D1411551E1613568869
          5DFFEFE9E6FFDDD2CBFFD8CAC3FFC7B8B1FF7E5B4FFF0000000C000000033428
          245F665046B5937467FEECE6E3FFF0ECE8FFCEC2BDFF856961FF886D65FFD2C7
          C2FFECE4DFFFD9CFC9FF856458FD5A443AB92B201C6102010108000000000000
          000316110F2EA78B7EFDF6F4F1FFF3EFECFFF2EEEAFFF3EFECFFF0EBE7FFEFEA
          E6FFEFEBE7FFECE5E0FF83665BFD110C0B390000000600000001000000000000
          0003685349AADCD1CBFFF8F6F3FFF8F5F3FFEBE4E1FFFDFCFBFFF3EEECFFE2D8
          D3FFFAF9F8FFF9F7F5FFC8B9B3FF4E3931B00000000500000000000000000000
          0002776055BDE5DDD8FFDCD0CBFFAC9183FD9E7E6EFDFBF8F8FFF5F1EEFF9979
          6AFDA3897EFCD7CBC5FFE0D6D1FF6E564CC20000000500000000000000000000
          00010605040D7C6458BF69544BA51713102B6F594EB2E1D7D2FFE0D6D1FF6D57
          4DB314100E2B614D44A4775E53C7050404110000000100000000000000000000
          0000000000000000000100000002000000023B302A5EA68676FFA58375FF3A2F
          295F000000030000000300000003000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000030000
          0001000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000100000002000000080000000C0000000F0000000F0000000D0000
          0007000000040000000700000007000000020000000000000000000000000000
          0001000000050204031C102F2291184A34D31E5C41FF1E5B40FF184732D2112F
          227D0000000E14382995072C1B95000000090000000100000000000000010000
          00080A1C145722674CE723966DFF23B481FF24CA92FF39CF9DFF37886AFF0C21
          185D06100C392A7B5CFB146744FB020C08370000000400000000000000060D25
          1C652E8867FF28B586FF3BDAA8FF59E0B7FF6FE5C2FF5FC6A6FF1F533FBF0000
          00161E523DBF27B786FF1EB07DFF0C3E28BF0000000C00000001040A08223080
          62F62BBA8BFF42DDADFF65CEADFF53AB8EFF3A8B6EFF2F7D60FA07120D360E24
          1B5D2F9671FF28D59EFF28D59EFF1D805AFF051B125C00000005194434903CAC
          88FF2DDAA5FF5ECFAEFF45987CF914362A750409072002050415010302162B73
          57E12ACC98FF29D8A1FF2AD7A0FF26C592FF145438E00001010F2A7258D438C7
          9BFF30DDA9FF5CB699FF194133810000000700000001000000061941328460B8
          9CFF83ECCFFF2BDAA5FF34DBA8FF88EDD0FF479D7FFF0B2A1C77358C6DF250DF
          B6FF61E8C2FF3F9475FF040A081E00000002000000000205040F36896CF4378F
          70FF419A7BFF30DCA8FF38D7A7FF358A6BFF34886AFF317E61EF3B997AFA98ED
          D8FF8DF1D8FF398E6DFF040B0820000000010000000000000002000000070205
          04193F9675FF43E2B3FF4DDAB1FF1D6749F20000000F0000000734856AD398E1
          CFFF9AF4DEFF57A98BFF11382681000000060000000100000001000000051237
          287659B092FF8BF1D7FF6ECEB2FF1E6047D400000006000000002359478A81CF
          BAFFB4F9EAFF82D3BCFF3A8767FB0E352383030C0823030C08230E3222753D8E
          6EF984DFC7FFAAF6E5FF6FB8A0FF1642328C0000000300000000050D0A1855B2
          95F5A5E5D5FFBCFAEDFF94E5D0FF56A386FF2D7B59FF2D7B59FF54A386FF85D4
          BDFFB5F8EAFF9ADAC9FF419477F5030A0719000000010000000000000002173A
          2F5669C6AAFFAAE7D9FFCBFDF3FFC1FBEFFFBAF9ECFFB8F9EBFFBEFBEEFFC7FC
          F2FFA6E5D5FF5CB096FF12302657000000020000000000000000000000000000
          0002122E264453AB90E38AD7C2FFB2EADDFFCEF9F1FFCEF9F1FFB1EADCFF87D4
          BFFF50A78CE40F29204400000002000000000000000000000000000000000000
          0000000000010409070F255D4C813A9076C849B896FC49B795FC399075C8255B
          4A82030907100000000100000000000000000000000000000000000000000000
          0000000000000000000000000001000000020000000200000002000000020000
          0001000000000000000000000000000000000000000000000000}
      end>
  end
end
