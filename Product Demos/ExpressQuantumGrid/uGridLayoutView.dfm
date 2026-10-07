inherited frmGridLayoutView: TfrmGridLayoutView
  Width = 950
  Height = 580
  ExplicitWidth = 950
  ExplicitHeight = 580
  inherited PanelDescription: TdxPanel
    Top = 516
    Width = 950
    ExplicitTop = 519
    ExplicitWidth = 950
    inherited lcBottomFrame: TdxLayoutControl
      Width = 950
      ExplicitWidth = 950
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 661
    Height = 516
    ExplicitWidth = 661
    ExplicitHeight = 519
    inherited Grid: TcxGrid
      Width = 661
      Height = 519
      ExplicitWidth = 661
      ExplicitHeight = 519
      object LayoutView: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Images = dmMain.ilMain
        OptionsCustomize.RecordExpanding = True
        OptionsView.MinValueWidth = 40
        OptionsView.ShowItemFilterButtons = sfbAlways
        OptionsView.ShowOnlyEntireRecords = False
        OptionsView.ViewMode = lvvmSingleRow
        object LayoutViewRecId: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'RecId'
          Visible = False
          LayoutItem = cxGridLayoutItem1
        end
        object LayoutViewID: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'ID'
          Visible = False
          LayoutItem = LayoutViewLayoutItem2
        end
        object LayoutViewTrademarkID: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'TrademarkID'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          RepositoryItem = dmMain.edrepTrademarkLogo
          LayoutItem = LayoutViewLayoutItem3
          Options.Editing = False
        end
        object LayoutViewFullName: TcxGridDBLayoutViewItem
          Caption = 'Model'
          DataBinding.FieldName = 'FullName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          LayoutItem = LayoutViewLayoutItem4
          Styles.Content = dmMain.cxStyleBoldTimes12
        end
        object LayoutViewHP: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Horsepower'
          LayoutItem = LayoutViewLayoutItem5
        end
        object LayoutViewTorque: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Torque'
          LayoutItem = LayoutViewLayoutItem6
        end
        object LayoutViewCyl: TcxGridDBLayoutViewItem
          Caption = 'Cylinder'
          DataBinding.FieldName = 'Cylinders'
          PropertiesClassName = 'TcxTextEditProperties'
          LayoutItem = LayoutViewLayoutItem7
        end
        object LayoutViewTransmissSpeedCount: TcxGridDBLayoutViewItem
          Caption = 'Speed Count'
          DataBinding.FieldName = 'Transmission Speeds'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          LayoutItem = LayoutViewLayoutItem8
        end
        object LayoutViewTransmissAutomatic: TcxGridDBLayoutViewItem
          Caption = 'Automatic'
          DataBinding.FieldName = 'Transmission Type'
          RepositoryItem = dmMain.EditRepositoryTransmissionTypeCheckBox
          LayoutItem = LayoutViewLayoutItem9
        end
        object LayoutViewMPG_City: TcxGridDBLayoutViewItem
          Caption = 'City (mpg)'
          DataBinding.FieldName = 'MPG City'
          PropertiesClassName = 'TcxTextEditProperties'
          LayoutItem = LayoutViewLayoutItem10
        end
        object LayoutViewMPG_Highway: TcxGridDBLayoutViewItem
          Caption = 'Highway (mpg)'
          DataBinding.FieldName = 'MPG Highway'
          PropertiesClassName = 'TcxTextEditProperties'
          LayoutItem = LayoutViewLayoutItem11
        end
        object LayoutViewCategory: TcxGridDBLayoutViewItem
          Caption = 'Category'
          DataBinding.FieldName = 'CategoryID'
          RepositoryItem = dmMain.EditRepositoryCategoryLookup
          LayoutItem = LayoutViewLayoutItem12
        end
        object LayoutViewDescription: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Description'
          RepositoryItem = EditRepositoryMemo
          LayoutItem = LayoutViewLayoutItem13
        end
        object LayoutViewHyperlink: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Hyperlink'
          RepositoryItem = EditRepositoryHyperLink
          LayoutItem = LayoutViewLayoutItem14
          Options.Filtering = False
        end
        object LayoutViewPicture: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Photo'
          RepositoryItem = EditRepositoryImage
          LayoutItem = LayoutViewLayoutItem15
        end
        object LayoutViewPrice: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Price'
          RepositoryItem = EditRepositoryPrice
          LayoutItem = LayoutViewLayoutItem16
          Options.Filtering = False
        end
        object LayoutViewItem1: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Rating'
          RepositoryItem = dmMain.edrepModelRating
          LayoutItem = LayoutViewLayoutItem1
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          CaptionOptions.Visible = False
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = -1
        end
        object cxGridLayoutItem1: TcxGridLayoutItem
          Index = -1
        end
        object LayoutViewLayoutItem2: TcxGridLayoutItem
          Index = -1
        end
        object LayoutViewLayoutItem3: TcxGridLayoutItem
          Parent = LayoutViewGroup21
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 463
          CaptionOptions.Visible = False
          Index = 0
        end
        object LayoutViewLayoutItem4: TcxGridLayoutItem
          Parent = LayoutViewGroup21
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 151
          CaptionOptions.AlignVert = tavBottom
          CaptionOptions.Visible = False
          Index = 1
        end
        object LayoutViewLayoutItem5: TcxGridLayoutItem
          Parent = LayoutViewGroup18
          AlignHorz = ahRight
          SizeOptions.Width = 140
          Index = 4
        end
        object LayoutViewLayoutItem6: TcxGridLayoutItem
          Parent = LayoutViewGroup18
          AlignHorz = ahLeft
          SizeOptions.Width = 124
          Index = 2
        end
        object LayoutViewLayoutItem7: TcxGridLayoutItem
          Parent = LayoutViewGroup18
          AlignHorz = ahLeft
          SizeOptions.Width = 93
          Index = 0
        end
        object LayoutViewLayoutItem8: TcxGridLayoutItem
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          Index = 0
        end
        object LayoutViewLayoutItem9: TcxGridLayoutItem
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          SizeOptions.Width = 88
          Index = 2
        end
        object LayoutViewLayoutItem10: TcxGridLayoutItem
          Parent = LayoutViewGroup20
          AlignHorz = ahLeft
          Index = 0
        end
        object LayoutViewLayoutItem11: TcxGridLayoutItem
          Parent = LayoutViewGroup20
          AlignHorz = ahLeft
          SizeOptions.Width = 105
          Index = 2
        end
        object LayoutViewLayoutItem12: TcxGridLayoutItem
          Parent = LayoutViewGroup2
          AlignHorz = ahLeft
          SizeOptions.Width = 192
          Index = 0
        end
        object LayoutViewLayoutItem13: TcxGridLayoutItem
          Parent = LayoutViewGroup16
          AlignVert = avClient
          SizeOptions.Height = 100
          CaptionOptions.ImageIndex = 35
          CaptionOptions.Visible = False
          Index = 1
        end
        object LayoutViewLayoutItem14: TcxGridLayoutItem
          Parent = LayoutViewGroup17
          CaptionOptions.ImageIndex = 36
          CaptionOptions.VisibleElements = [cveImage]
          Index = 6
        end
        object LayoutViewLayoutItem15: TcxGridLayoutItem
          Parent = LayoutViewGroup21
          SizeOptions.Height = 109
          SizeOptions.Width = 453
          CaptionOptions.Visible = False
          Index = 2
        end
        object LayoutViewLayoutItem16: TcxGridLayoutItem
          Parent = LayoutViewGroup2
          AlignHorz = ahRight
          AlignVert = avBottom
          SizeOptions.Width = 125
          CaptionOptions.ImageIndex = 28
          Index = 1
        end
        object LayoutViewSpaceItem2: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup20
          AlignHorz = ahLeft
          SizeOptions.Height = 10
          SizeOptions.Width = 25
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewSpaceItem3: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup18
          SizeOptions.Height = 10
          SizeOptions.Width = 26
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewSpaceItem4: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup18
          AlignHorz = ahLeft
          SizeOptions.Height = 10
          SizeOptions.Width = 27
          CaptionOptions.Text = 'Empty Space Item'
          Index = 3
        end
        object LayoutViewSpaceItem5: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          SizeOptions.Height = 10
          SizeOptions.Width = 25
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewLayoutItem1: TcxGridLayoutItem
          Parent = LayoutViewGroup17
          AlignHorz = ahClient
          AlignVert = avTop
          Index = 4
        end
        object LayoutViewSpaceItem1: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup17
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 5
        end
        object LayoutViewSpaceItem6: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup17
          AlignHorz = ahClient
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 3
        end
        object LayoutViewGroup1: TdxLayoutGroup
          Parent = LayoutViewGroup13
          CaptionOptions.Text = 'Engine'
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object LayoutViewGroup12: TdxLayoutGroup
          Parent = LayoutViewGroup13
          CaptionOptions.Text = 'Transmission'
          Index = 0
        end
        object LayoutViewGroup13: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = -1
        end
        object LayoutViewGroup14: TdxLayoutGroup
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.Width = 296
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object LayoutViewGroup15: TdxLayoutGroup
          Parent = LayoutViewGroup14
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          SizeOptions.Width = 154
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object LayoutViewGroup16: TdxLayoutGroup
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.Width = 373
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = 1
        end
        object LayoutViewGroup17: TdxLayoutGroup
          Parent = LayoutViewGroup16
          CaptionOptions.Text = 'Information'
          Index = 0
        end
        object LayoutViewGroup18: TdxLayoutGroup
          Parent = LayoutViewGroup17
          CaptionOptions.Text = 'Engine'
          ItemIndex = 4
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object LayoutViewGroup19: TdxLayoutGroup
          Parent = LayoutViewGroup17
          CaptionOptions.Text = 'Transmission'
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object LayoutViewGroup20: TdxLayoutGroup
          Parent = LayoutViewGroup17
          CaptionOptions.Text = 'Fuel economy'
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object LayoutViewGroup21: TdxLayoutGroup
          Parent = LayoutViewGroup14
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object LayoutViewGroup2: TdxLayoutAutoCreatedGroup
          Parent = LayoutViewGroup21
          LayoutDirection = ldHorizontal
          Index = 3
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = LayoutView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 661
    Height = 516
    ExplicitLeft = 661
    ExplicitHeight = 516
    inherited gbSetupTools: TcxGroupBox
      ExplicitHeight = 516
      Height = 516
      inherited lcFrame: TdxLayoutControl
        Height = 496
        ExplicitTop = -6
        ExplicitHeight = 515
        object rgViewMode: TcxRadioGroup [0]
          Left = 10
          Top = 141
          Caption = ' View Mode '
          ParentBackground = False
          ParentColor = False
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'Single Record'
            end
            item
              Caption = 'Single Row'
            end
            item
              Caption = 'Multiple Rows'
            end
            item
              Caption = 'Single Column'
            end
            item
              Caption = 'Multiple Columns'
            end>
          ItemIndex = 1
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.Color = clBtnFace
          TabOrder = 0
          OnClick = rgViewModeClick
          Height = 100
          Width = 266
        end
        object btnCustomize: TcxButton [1]
          Left = 10
          Top = 258
          Width = 266
          Height = 25
          Caption = 'Customize Layout'
          TabOrder = 1
          OnClick = btnCustomizeClick
        end
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.Width = 250
          ItemIndex = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = lgSetupTools
          AlignVert = avTop
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 214
          CaptionOptions.Visible = False
          Control = rgViewMode
          ControlOptions.AutoColor = True
          ControlOptions.OriginalHeight = 100
          ControlOptions.OriginalWidth = 214
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup9: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 666
          ShowBorder = False
          Index = 2
        end
        object lgCheckBoxes: TdxLayoutGroup
          Parent = dxLayoutGroup9
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup7: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup5: TdxLayoutGroup
          Parent = dxLayoutGroup7
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
          Parent = dxLayoutGroup7
          AlignVert = avClient
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object dxLayoutGroup6: TdxLayoutGroup
          Parent = dxLayoutGroup7
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ItemIndex = 1
          ShowBorder = False
          Index = 2
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutGroup9
          AlignVert = avTop
          CaptionOptions.Text = 'Layout Customization'
          CaptionOptions.Visible = False
          Control = btnCustomize
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object cbCenterRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup5
          Action = acCenterRecords
          Index = 0
        end
        object cbShowOnlyEntireRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup5
          Action = acShowOnlyEntireRecords
          Index = 1
        end
        object cbMultiSelectRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup5
          Action = acMultiSelectRecords
          Index = 2
        end
        object cbRecordCaptions: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup6
          Action = acRecordCaptions
          Index = 0
        end
        object cbExpandableRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup6
          Action = acExpandableRecords
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acCenterRecords: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Center Records'
      Checked = True
      OnExecute = acCenterRecordsExecute
    end
    object acShowOnlyEntireRecords: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Only Entire Records'
      OnExecute = acShowOnlyEntireRecordsExecute
    end
    object acMultiSelectRecords: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Multi-select Records'
      OnExecute = acMultiSelectRecordsExecute
    end
    object acRecordCaptions: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Record Captions'
      Checked = True
      OnExecute = acRecordCaptionsExecute
    end
    object acExpandableRecords: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Record Expand Button'
      Checked = True
      OnExecute = acExpandableRecordsExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object mmMain: TMainMenu
    Left = 44
    Top = 138
    object miFile: TMenuItem
      Caption = '&File'
      object miExit: TMenuItem
        Caption = 'E&xit'
        Hint = 'Press to quit the demo-program'
        ShortCut = 32856
      end
    end
    object miView: TMenuItem
      Caption = '&View'
      object miCustomize: TMenuItem
        Caption = 'Customize...'
      end
    end
    object miAbout: TMenuItem
      Caption = '&About this demo'
      Hint = 'Displays the brief description of the current demo features'
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 124
    Top = 99
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 14811135
      TextColor = clBlack
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor]
      Color = 14872561
    end
    object cxStyle8: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle9: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle10: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle11: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle12: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle13: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 14811135
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object cxStyle14: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object cxStyle15: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle16: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle17: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 12937777
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle18: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle19: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle20: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 16247513
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TextColor = clBlack
    end
    object cxStyle21: TcxStyle
      AssignedValues = [svColor]
      Color = 15451300
    end
    object cxStyle22: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 4707838
      TextColor = clBlack
    end
    object cxStyle23: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 16749885
      TextColor = clWhite
    end
    object cxStyle24: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = 12937777
      TextColor = clWhite
    end
    object stValues: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      TextColor = clMaroon
    end
    object stItems: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object stHeader: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object stRecordCaption: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
    end
    object stRecordSelected: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsItalic]
      TextColor = clNavy
    end
    object GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle1
      Styles.Content = cxStyle2
      Styles.ContentEven = cxStyle3
      Styles.ContentOdd = cxStyle4
      Styles.FilterBox = cxStyle5
      Styles.IncSearch = cxStyle11
      Styles.Footer = cxStyle6
      Styles.Group = cxStyle7
      Styles.GroupByBox = cxStyle8
      Styles.Header = cxStyle9
      Styles.Inactive = cxStyle10
      Styles.Indicator = cxStyle12
      Styles.Preview = cxStyle13
      Styles.Selection = cxStyle14
      BuiltIn = True
    end
    object GridCardViewStyleSheetDevExpress: TcxGridCardViewStyleSheet
      Caption = 'DevExpress'
      Styles.Background = cxStyle15
      Styles.Content = cxStyle18
      Styles.ContentEven = cxStyle19
      Styles.ContentOdd = cxStyle20
      Styles.IncSearch = cxStyle22
      Styles.CaptionRow = cxStyle16
      Styles.CardBorder = cxStyle17
      Styles.Inactive = cxStyle21
      Styles.RowCaption = cxStyle23
      Styles.Selection = cxStyle24
      BuiltIn = True
    end
  end
  object EditRepository: TcxEditRepository
    Left = 100
    Top = 138
    PixelsPerInch = 96
    object EditRepositoryImage: TcxEditRepositoryImageItem
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
    end
    object EditRepositoryMemo: TcxEditRepositoryMemoItem
      Properties.VisibleLineCount = 10
    end
    object EditRepositoryHyperLink: TcxEditRepositoryHyperLinkItem
    end
    object EditRepositoryPrice: TcxEditRepositoryCurrencyItem
      Properties.AutoSelect = False
      Properties.HideSelection = False
    end
    object EditRepositoryAutomatic: TcxEditRepositoryCheckBoxItem
      Properties.ValueChecked = 'Yes'
      Properties.ValueUnchecked = 'No'
    end
  end
end
