inherited frmRichEditDocumentRestrictions: TfrmRichEditDocumentRestrictions
  Width = 1049
  Height = 567
  ExplicitWidth = 1049
  ExplicitHeight = 567
  inherited plTop: TPanel
    Width = 1049
    Height = 121
    AutoSize = True
    Visible = True
    ExplicitWidth = 1049
    ExplicitHeight = 121
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 1049
      Height = 121
      Align = alTop
      TabOrder = 0
      AutoSize = True
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        Hidden = True
        ItemIndex = 5
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Character'
        ItemIndex = 1
        Index = 0
      end
      object lgParagraph: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Paragraph'
        ItemIndex = 1
        Index = 1
      end
      object lgNumbering: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Numbering'
        Index = 2
      end
      object lgContent: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Content'
        ItemIndex = 1
        Index = 3
      end
      object lgLinks: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Links'
        ItemIndex = 1
        Index = 4
      end
      object lgOther: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Other'
        LayoutDirection = ldHorizontal
        Index = 5
      end
      object cbFormatting: TdxLayoutCheckBoxItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Formatting'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbStyle: TdxLayoutCheckBoxItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Style'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbInsertNew: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup1
        AlignHorz = ahClient
        CaptionOptions.Text = 'Insert New'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbParagraphFormatting: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Formatting'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbTabs: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup1
        CaptionOptions.Text = 'Tabs'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbParagraphStyle: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        CaptionOptions.Text = 'Style'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
        Parent = lgParagraph
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = lgParagraph
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object cbBulleted: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Bulleted'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbMultiLevel: TdxLayoutCheckBoxItem
        Parent = lgNumbering
        CaptionOptions.Text = 'Multi Level'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbSimple: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup3
        CaptionOptions.Text = 'Simple'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = lgNumbering
        LayoutDirection = ldHorizontal
        Index = 0
      end
      object cbPictures: TdxLayoutCheckBoxItem
        Parent = lgContent
        CaptionOptions.Text = 'Pictures'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbContentTabs: TdxLayoutCheckBoxItem
        Parent = lgContent
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Tabs'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbHyperlinks: TdxLayoutCheckBoxItem
        Parent = lgLinks
        CaptionOptions.Text = 'Hyperlinks'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbBookmarks: TdxLayoutCheckBoxItem
        Parent = lgLinks
        CaptionOptions.Text = 'Bookmarks'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbSections: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup4
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'Sections'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbHeadersFooters: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup4
        CaptionOptions.Text = 'Headers/Footers'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbTables: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'Tables'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbHideDisabledBarItems: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup5
        CaptionOptions.Text = 'Hide Disabled Bar Items'
        OnClick = OptionsChanged
        Index = 1
      end
      object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
        Parent = lgOther
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 1
      end
      object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
        Parent = lgOther
        AlignHorz = ahLeft
        Index = 0
      end
    end
  end
  inherited pnlSeparator: TPanel
    Top = 173
    Width = 1049
    ExplicitTop = 173
    ExplicitWidth = 1049
  end
  inherited lcDescription: TdxLayoutControl
    Top = 494
    Width = 1049
    ExplicitTop = 494
    ExplicitWidth = 1049
  end
  inherited RichEditControl: TdxRichEditControl
    Top = 173
    Width = 1049
    Height = 321
    ExplicitTop = 173
    ExplicitWidth = 1049
    ExplicitHeight = 321
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 256
    Top = 368
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object ActionList: TActionList
    Images = dmMain.ilBarSmall
    Left = 107
    Top = 320
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
    object acFont: TdxRichEditControlShowFontForm
      Category = 'Home'
    end
    object acShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm
      Category = 'TableToolsLayout'
      ImageIndex = 99
    end
    object acFindNext: TdxRichEditControlSearchFindNext
      Category = 'Home'
      ShortCut = 114
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
    ImageOptions.Images = dmMain.ilBarSmall
    ImageOptions.LargeImages = dmMain.ilBarLarge
    ImageOptions.StretchGlyphs = False
    MenuAnimations = maFade
    NotDocking = [dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 24
    Top = 320
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      52
      0)
    object bmbParagraph: TdxBar
      Caption = 'Paragraph'
      CaptionButtons = <
        item
          KeyTip = 'PG'
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 2520
      FloatTop = 227
      FloatClientWidth = 108
      FloatClientHeight = 562
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
        end
        item
          Visible = True
          ItemName = 'bbParagraph'
        end>
      KeyTip = 'PG'
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbFont: TdxBar
      Caption = 'Font'
      CaptionButtons = <
        item
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 305
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1424
      FloatTop = 237
      FloatClientWidth = 129
      FloatClientHeight = 109
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
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbFontColor'
        end
        item
          Position = ipContinuesRow
          ViewLevels = [ivlLargeControlOnly, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbTextHighlight'
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
          ItemName = 'bsiChangeCase'
        end>
      KeyTip = 'FN'
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbIllustrations: TdxBar
      Caption = 'Illustrations'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 533
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1773
      FloatTop = 597
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbInsertPicture'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbtLinks: TdxBar
      Caption = 'Links'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 571
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1306
      FloatTop = 726
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbHyperlink'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbPage: TdxBar
      Caption = 'Page'
      CaptionButtons = <
        item
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 370
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 1659
      FloatTop = 679
      FloatClientWidth = 111
      FloatClientHeight = 66
      ItemLinks = <
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
        end
        item
          Visible = True
          ItemName = 'bsiPageColor'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbTables: TdxBar
      Caption = 'Tables'
      CaptionButtons = <
        item
        end>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 26
      DockingStyle = dsTop
      FloatLeft = 470
      FloatTop = 480
      FloatClientWidth = 147
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbInsertTable'
        end
        item
          Visible = True
          ItemName = 'bbTableProperties'
        end
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
        end
        item
          Visible = True
          ItemName = 'bsiAlign'
        end
        item
          Visible = True
          ItemName = 'bsiBorders'
        end
        item
          Visible = True
          ItemName = 'bbSplitTable'
        end
        item
          Visible = True
          ItemName = 'bbSplitCells'
        end
        item
          Visible = True
          ItemName = 'bbMergeCells'
        end
        item
          Visible = True
          ItemName = 'bsiAutoFit'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object beFontName: TcxBarEditItem
      Action = acFontName
      Category = 0
      KeyTip = 'FF'
      PropertiesClassName = 'TcxFontNameComboBoxProperties'
      Properties.FontPreview.ShowButtons = False
    end
    object beFontSize: TcxBarEditItem
      Action = acFontSize
      Category = 0
      KeyTip = 'FS'
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
    object bbBold: TdxBarButton
      Action = acBold
      Category = 0
      KeyTip = '1'
      ButtonStyle = bsChecked
    end
    object bbItalic: TdxBarButton
      Action = acItalic
      Category = 0
      KeyTip = '2'
      ButtonStyle = bsChecked
    end
    object bbUnderline: TdxBarButton
      Action = acUnderline
      Category = 0
      KeyTip = '3'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbAlignLeft: TdxBarButton
      Action = acAlignLeft
      Category = 0
      KeyTip = 'AL'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignCenter: TdxBarButton
      Action = acAlignCenter
      Category = 0
      KeyTip = 'AC'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbAlignRight: TdxBarButton
      Action = acAlignRight
      Category = 0
      KeyTip = 'AR'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbBullets: TdxBarButton
      Action = acBullets
      Category = 0
      KeyTip = 'BU'
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
    object bbFontSuperscript: TdxBarButton
      Action = acFontSuperscript
      Category = 0
      KeyTip = '8'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbFontSubscript: TdxBarButton
      Action = acFontSubscript
      Category = 0
      KeyTip = '7'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 7
    end
    object bbIncreaseFontSize: TdxBarButton
      Action = acIncreaseFontSize
      Category = 0
      KeyTip = 'FG'
    end
    object bbDecreaseFontSize: TdxBarButton
      Action = acDecreaseFontSize
      Category = 0
      KeyTip = 'FK'
    end
    object bsiLineSpacing: TdxBarSubItem
      Category = 0
      KeyTip = 'K'
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
        end>
    end
    object bbSingleLineSpacing: TdxBarButton
      Action = acSingleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbSesquialteralLineSpacing: TdxBarButton
      Action = acSesquialteralLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbDoubleLineSpacing: TdxBarButton
      Action = acDoubleLineSpacing
      Category = 0
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 8
    end
    object bbAlignJustify: TdxBarButton
      Action = acJustify
      Category = 0
      KeyTip = 'AJ'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object bbNumbering: TdxBarButton
      Action = acNumbering
      Category = 0
      KeyTip = 'N'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbMultiLevelList: TdxBarButton
      Action = acMultiLevelList
      Category = 0
      KeyTip = 'M'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 2
    end
    object bbDoubleUnderline: TdxBarButton
      Action = acDoubleUnderline
      Category = 0
      KeyTip = '4'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 5
    end
    object bbStrikeout: TdxBarButton
      Action = acStrikeout
      Category = 0
      KeyTip = '5'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbDoubleStrikeout: TdxBarButton
      Action = acDoubleStrikeout
      Category = 0
      KeyTip = '6'
      AllowAllUp = True
      ButtonStyle = bsChecked
      GroupIndex = 6
    end
    object bbShowWhitespace: TdxBarButton
      Action = acShowWhitespace
      Category = 0
      KeyTip = 'SO'
      ButtonStyle = bsChecked
    end
    object bbDecrementIndent: TdxBarButton
      Action = acDecrementIndent
      Category = 0
      KeyTip = 'AO'
    end
    object bbIncrementIndent: TdxBarButton
      Action = acIncrementIndent
      Category = 0
      KeyTip = 'AI'
    end
    object bbParagraph: TdxBarButton
      Action = acParagraph
      Category = 0
      KeyTip = 'PG'
    end
    object bbTableProperties: TdxBarButton
      Action = acShowTablePropertiesForm
      Caption = 'Properties'
      Category = 0
    end
    object bbInsertTable: TdxBarButton
      Action = acInsertTableForm
      Category = 0
    end
    object bsiBorders: TdxBarSubItem
      Category = 0
      Visible = ivAlways
      ImageIndex = 60
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
    object bbBottomBorder: TdxBarButton
      Action = acBottomBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTopBorder: TdxBarButton
      Action = acTopBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLeftBorder: TdxBarButton
      Action = acLeftBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbRightBorder: TdxBarButton
      Action = acRightBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbNoBorder: TdxBarButton
      Action = acNoBorder
      Category = 0
    end
    object bbAllBorder: TdxBarButton
      Action = acAllBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbOutsideBorder: TdxBarButton
      Action = acOutsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideBorders: TdxBarButton
      Action = acInsideBorders
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideHorizontalBorder: TdxBarButton
      Action = acHorizontalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbInsideVerticalBorder: TdxBarButton
      Action = acVerticalInsideBorder
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbCellsAlignTopLeft: TdxBarButton
      Action = acTableCellsTopLeftAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsAlignCenterLeft: TdxBarButton
      Action = acTableCellsMiddleLeftAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsAlignBottomLeft: TdxBarButton
      Action = acTableCellsBottomLeftAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsAlignTopCenter: TdxBarButton
      Action = acTableCellsTopCenterAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsAlignCenter: TdxBarButton
      Action = acTableCellsMiddleCenterAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsBottomCenterAlign: TdxBarButton
      Action = acTableCellsBottomCenterAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsTopRightAlign: TdxBarButton
      Action = acTableCellsTopRightAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbCellsCenterRightAlign: TdxBarButton
      Action = acTableCellsMiddleRightAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbBottomRightAlign: TdxBarButton
      Action = acTableCellsBottomRightAlignment
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 10
    end
    object bbSplitCells: TdxBarButton
      Action = acSplitCells
      Category = 0
    end
    object bbInsertRowAbove: TdxBarButton
      Action = acInsertRowAbove
      Caption = 'Insert Rows Above'
      Category = 0
    end
    object bbInsertRowBelow: TdxBarButton
      Action = acInsertRowBelow
      Caption = 'Insert Rows Below'
      Category = 0
    end
    object bbInsertColumnToTheLeft: TdxBarButton
      Action = acInsertColumnToTheLeft
      Caption = 'Insert Columns to the Left'
      Category = 0
    end
    object bbInsertColumnToTheRight: TdxBarButton
      Action = acInsertColumnToTheRight
      Caption = 'Insert Columns to the Right'
      Category = 0
    end
    object bsiDelete: TdxBarSubItem
      Category = 0
      Visible = ivAlways
      ImageIndex = 100
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
    object bbDeleteCells: TdxBarButton
      Action = acDeleteTableCellsForm
      Category = 0
    end
    object bbHyperlink: TdxBarButton
      Action = acHyperlinkForm
      Category = 0
    end
    object bbInsertPicture: TdxBarButton
      Action = acInsertPicture
      Category = 0
    end
    object bsiAutoFit: TdxBarSubItem
      Category = 0
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
    object bbAutoFitContents: TdxBarButton
      Action = acAutoFitContents
      Category = 0
    end
    object bbFixedColumnWidth: TdxBarButton
      Action = acFixedColumnWidth
      Category = 0
    end
    object bbAutoFitWindow: TdxBarButton
      Action = acAutoFitWindow
      Category = 0
    end
    object bbSplitTable: TdxBarButton
      Action = acSplitTable
      Category = 0
    end
    object bbMergeCells: TdxBarButton
      Action = acMergeCells
      Category = 0
    end
    object bbTextHighlight: TdxBarButton
      Category = 0
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
    object bbPage: TdxBarButton
      Action = acPageBreak
      Category = 0
    end
    object bbDeleteTable: TdxBarButton
      Action = acDeleteTable
      Category = 0
    end
    object bbDeleteRows: TdxBarButton
      Action = acDeleteTableRows
      Category = 0
    end
    object bbDeleteColumns: TdxBarButton
      Action = acDeleteTableColumns
      Category = 0
    end
    object bsiChangeCase: TdxBarSubItem
      Category = 0
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
    object bbUpperCase: TdxBarButton
      Action = acUpperCase
      Category = 0
    end
    object bbToggleCase: TdxBarButton
      Action = acToggleCase
      Category = 0
    end
    object bbLowerCase: TdxBarButton
      Action = acLowerCase
      Category = 0
    end
    object sbiColumns: TdxBarSubItem
      Category = 0
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
    object bbOneColumn: TdxBarButton
      Action = acSectionOneColumn
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbTwoColumns: TdxBarButton
      Action = acSectionTwoColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbThreeColumn: TdxBarButton
      Action = acSectionThreeColumns
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbFontColor: TdxBarButton
      Caption = 'Font Color'
      Category = 0
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
    object bbMoreColumns: TdxBarButton
      Action = acMoreColumns
      Category = 0
    end
    object bsiBreaks: TdxBarSubItem
      Category = 0
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
    object bbColumn: TdxBarButton
      Action = acColumnBreak
      Category = 0
    end
    object bbSectionNext: TdxBarButton
      Action = acSectionBreakNextPage
      Category = 0
    end
    object bbSectionEvenPage: TdxBarButton
      Action = acSectionBreakEvenPage
      Category = 0
    end
    object bbSectionOdd: TdxBarButton
      Action = acSectionBreakOddPage
      Category = 0
    end
    object bsiPageColor: TdxBarSubItem
      Category = 0
      Visible = ivAlways
      ImageIndex = 112
      LargeImageIndex = 112
      ItemLinks = <>
    end
    object bsiLineNumbers: TdxBarSubItem
      Category = 0
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
        end>
    end
    object bbLineNumberingNone: TdxBarButton
      Action = acLineNumberingNone
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbacLineNumberingRestartNewSection: TdxBarButton
      Action = acLineNumberingRestartNewSection
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingRestartNewPage: TdxBarButton
      Action = acLineNumberingRestartNewPage
      Category = 0
      ButtonStyle = bsChecked
    end
    object bbLineNumberingContinuous: TdxBarButton
      Action = acLineNumberingContinuous
      Category = 0
      ButtonStyle = bsChecked
    end
    object bsiAlign: TdxBarSubItem
      Category = 0
      Visible = ivAlways
      ImageIndex = 72
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
    end
    object biHintContainer: TdxBarControlContainerItem
      Align = iaClient
      Caption = 'Hint'
      Category = 6
      Hint = 'Hint'
      Visible = ivInCustomizing
    end
  end
  object ppmFontColor: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <>
    UseOwnFont = False
    Left = 136
    Top = 328
    PixelsPerInch = 96
  end
  object ppmTextHighlightColor: TdxRibbonPopupMenu
    BarManager = BarManager
    ItemLinks = <>
    UseOwnFont = False
    Left = 64
    Top = 320
    PixelsPerInch = 96
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 384
    Top = 368
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
