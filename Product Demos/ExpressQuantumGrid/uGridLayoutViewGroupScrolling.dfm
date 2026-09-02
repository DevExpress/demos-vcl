inherited frmGridLayoutViewGroupScrolling: TfrmGridLayoutViewGroupScrolling
  inherited PanelGrid: TdxPanel
    Width = 752
    ExplicitWidth = 752
    inherited Grid: TcxGrid
      Width = 752
      Height = 667
      ExplicitWidth = 752
      object LayoutView: TcxGridDBLayoutView
        FilterBox.Visible = fvNever
        DataController.DataSource = dmMain.dsModels
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
          LayoutItem = LayoutViewLayoutItem7
        end
        object LayoutViewTransmissSpeedCount: TcxGridDBLayoutViewItem
          Caption = 'Speed Count'
          DataBinding.FieldName = 'Transmission Speeds'
          LayoutItem = LayoutViewLayoutItem8
        end
        object LayoutViewTransmissAutomatic: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Transmission Type'
          RepositoryItem = dmMain.EditRepositoryTransmissionTypeCheckBox
          Visible = False
          LayoutItem = LayoutViewLayoutItem9
        end
        object LayoutViewMPG_City: TcxGridDBLayoutViewItem
          Caption = 'City (mpg)'
          DataBinding.FieldName = 'MPG City'
          LayoutItem = LayoutViewLayoutItem10
        end
        object LayoutViewMPG_Highway: TcxGridDBLayoutViewItem
          Caption = 'Highway (mpg)'
          DataBinding.FieldName = 'MPG Highway'
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
          PropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.SingleClick = True
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
        object LayoutViewRating: TcxGridDBLayoutViewItem
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
          LayoutDirection = ldHorizontal
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
          Parent = LayoutViewGroup22
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 306
          CaptionOptions.Visible = False
          Index = 0
        end
        object LayoutViewLayoutItem4: TcxGridLayoutItem
          Parent = LayoutViewGroup22
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 151
          CaptionOptions.AlignVert = tavBottom
          CaptionOptions.Visible = False
          Index = 1
        end
        object LayoutViewLayoutItem5: TcxGridLayoutItem
          Parent = LayoutViewGroup20
          AlignHorz = ahClient
          SizeOptions.Width = 64
          Index = 4
        end
        object LayoutViewLayoutItem6: TcxGridLayoutItem
          Parent = LayoutViewGroup20
          AlignHorz = ahClient
          SizeOptions.Width = 75
          Index = 2
        end
        object LayoutViewLayoutItem7: TcxGridLayoutItem
          Parent = LayoutViewGroup20
          AlignHorz = ahLeft
          SizeOptions.Width = 118
          Index = 0
        end
        object LayoutViewLayoutItem8: TcxGridLayoutItem
          Parent = LayoutViewGroup21
          AlignHorz = ahClient
          Index = 0
        end
        object LayoutViewLayoutItem9: TcxGridLayoutItem
          SizeOptions.Width = 200
          CaptionOptions.Visible = False
          Index = -1
        end
        object LayoutViewLayoutItem10: TcxGridLayoutItem
          Parent = LayoutViewGroup25
          AlignHorz = ahClient
          Index = 0
        end
        object LayoutViewLayoutItem11: TcxGridLayoutItem
          Parent = LayoutViewGroup25
          AlignHorz = ahClient
          Index = 2
        end
        object LayoutViewLayoutItem12: TcxGridLayoutItem
          Parent = LayoutViewGroup18
          SizeOptions.Width = 89
          Index = 0
        end
        object LayoutViewLayoutItem13: TcxGridLayoutItem
          Parent = LayoutViewGroup24
          SizeOptions.Height = 231
          SizeOptions.Width = 61
          CaptionOptions.ImageIndex = 35
          CaptionOptions.Visible = False
          Index = 0
        end
        object LayoutViewLayoutItem14: TcxGridLayoutItem
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          SizeOptions.Width = 267
          CaptionOptions.ImageIndex = 36
          CaptionOptions.VisibleElements = [cveImage]
          Index = 5
        end
        object LayoutViewLayoutItem15: TcxGridLayoutItem
          Parent = LayoutViewGroup22
          SizeOptions.Height = 94
          SizeOptions.Width = 212
          CaptionOptions.Visible = False
          Index = 2
        end
        object LayoutViewLayoutItem16: TcxGridLayoutItem
          Parent = LayoutViewGroup18
          AlignVert = avBottom
          SizeOptions.Width = 78
          CaptionOptions.ImageIndex = 28
          Index = 2
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup17
          SizeOptions.Height = 10
          SizeOptions.Width = 11
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
          Parent = LayoutViewGroup18
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object LayoutViewSpaceItem2: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup25
          AlignHorz = ahClient
          SizeOptions.Height = 10
          SizeOptions.Width = 22
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewSpaceItem3: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup20
          SizeOptions.Height = 10
          SizeOptions.Width = 21
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewSpaceItem4: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup20
          SizeOptions.Height = 10
          SizeOptions.Width = 15
          CaptionOptions.Text = 'Empty Space Item'
          Index = 3
        end
        object LayoutViewSpaceItem5: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup21
          SizeOptions.Height = 10
          SizeOptions.Width = 30
          CaptionOptions.Text = 'Empty Space Item'
          Index = 1
        end
        object LayoutViewGroup14: TdxLayoutGroup
          Parent = LayoutViewGroup16
          CaptionOptions.Text = 'Engine'
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object LayoutViewGroup15: TdxLayoutGroup
          Parent = LayoutViewGroup16
          CaptionOptions.Text = 'Transmission'
          Index = 0
        end
        object LayoutViewGroup16: TdxLayoutGroup
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = -1
        end
        object LayoutViewGroup17: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Product'
          SizeOptions.Height = 205
          SizeOptions.Width = 231
          LayoutDirection = ldHorizontal
          ScrollOptions.Horizontal = smAuto
          Index = 0
        end
        object LayoutViewGroup18: TdxLayoutGroup
          Parent = LayoutViewGroup17
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          SizeOptions.Width = 176
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          Index = 2
        end
        object LayoutViewGroup19: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Information'
          SizeOptions.Height = 205
          SizeOptions.Width = 266
          ItemIndex = 4
          ScrollOptions.Horizontal = smAuto
          Index = 1
        end
        object LayoutViewGroup20: TdxLayoutGroup
          Parent = LayoutViewGroup23
          AlignHorz = ahClient
          CaptionOptions.Text = 'Engine'
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object LayoutViewGroup21: TdxLayoutGroup
          Parent = LayoutViewGroup23
          CaptionOptions.Text = 'Transmission'
          ItemIndex = 1
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object LayoutViewGroup22: TdxLayoutGroup
          Parent = LayoutViewGroup17
          CaptionOptions.Text = 'Hidden Group'
          CaptionOptions.Visible = False
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object LayoutViewGroup23: TdxLayoutAutoCreatedGroup
          Parent = LayoutViewGroup19
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object LayoutViewGroup24: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Description'
          SizeOptions.Height = 205
          SizeOptions.Width = 312
          ScrollOptions.Vertical = smAuto
          Index = 2
        end
        object LayoutViewGroup25: TdxLayoutGroup
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Fuel economy'
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object LayoutViewLayoutItem1: TcxGridLayoutItem
          Parent = LayoutViewGroup19
          AlignHorz = ahLeft
          SizeOptions.Width = 265
          Index = 3
        end
        object LayoutViewSpaceItem1: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup19
          AlignHorz = ahClient
          SizeOptions.Height = 10
          SizeOptions.Width = 236
          CaptionOptions.Text = 'Empty Space Item'
          Index = 4
        end
        object LayoutViewSpaceItem6: TdxLayoutEmptySpaceItem
          Parent = LayoutViewGroup19
          AlignHorz = ahClient
          SizeOptions.Height = 10
          SizeOptions.Width = 257
          CaptionOptions.Text = 'Empty Space Item'
          Index = 2
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = LayoutView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 752
    Width = 170
    ExplicitLeft = 752
    ExplicitWidth = 170
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 169
      Width = 169
      inherited lcFrame: TdxLayoutControl
        Width = 165
        ExplicitLeft = 2
        ExplicitTop = 18
        ExplicitWidth = 165
        object seRecordWidth: TcxSpinEdit [0]
          Left = 87
          Top = 10
          Properties.AssignedValues.MinValue = True
          Properties.Increment = 100.000000000000000000
          Properties.OnChange = seRecordWidthPropertiesChange
          Style.HotTrack = False
          TabOrder = 0
          Value = 500
          Width = 68
        end
        object seRecordHeight: TcxSpinEdit [1]
          Left = 87
          Top = 37
          Properties.AssignedValues.MinValue = True
          Properties.Increment = 50.000000000000000000
          Properties.OnChange = seRecordHeightPropertiesChange
          Style.HotTrack = False
          TabOrder = 1
          Value = 300
          Width = 68
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'Record Width:'
          Control = seRecordWidth
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'Record Height:'
          Control = seRecordHeight
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 80
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object mmMain: TMainMenu
    Left = 52
    Top = 58
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
    Left = 156
    Top = 59
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
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clNavy
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
    Left = 108
    Top = 50
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
