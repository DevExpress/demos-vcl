inherited frmGridLayoutViewCarouselMode: TfrmGridLayoutViewCarouselMode
  Width = 840
  Height = 580
  ExplicitWidth = 840
  ExplicitHeight = 580
  inherited PanelDescription: TdxPanel
    Top = 516
    Width = 840
    ExplicitTop = 516
    ExplicitWidth = 840
    inherited lcBottomFrame: TdxLayoutControl
      Width = 840
      ExplicitWidth = 840
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 440
    Height = 516
    ExplicitWidth = 551
    ExplicitHeight = 516
    inherited Grid: TcxGrid
      Width = 440
      Height = 516
      ExplicitWidth = 551
      ExplicitHeight = 516
      object LayoutView: TcxGridDBLayoutView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsHouses
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.RecordExpanding = True
        OptionsView.CarouselMode.PitchAngle = 80.000000000000000000
        OptionsView.MinValueWidth = 40
        OptionsView.ViewMode = lvvmCarousel
        object LayoutViewRecId: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'RecId'
          Visible = False
          LayoutItem = cxGridLayoutItem1
        end
        object LayoutViewAddress: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Address'
          LayoutItem = LayoutViewLayoutItem3
        end
        object LayoutViewBeds: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Beds'
          LayoutItem = LayoutViewLayoutItem4
        end
        object LayoutViewBaths: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Baths'
          LayoutItem = LayoutViewLayoutItem5
        end
        object LayoutViewHouseSize: TcxGridDBLayoutViewItem
          Caption = 'Size'
          DataBinding.FieldName = 'HouseSize'
          LayoutItem = LayoutViewLayoutItem6
        end
        object LayoutViewPrice: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Price'
          RepositoryItem = EditRepositoryPrice
          LayoutItem = LayoutViewLayoutItem8
        end
        object LayoutViewFeatures: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Features'
          RepositoryItem = EditRepositoryMemo
          LayoutItem = LayoutViewLayoutItem9
        end
        object LayoutViewYearBuilt: TcxGridDBLayoutViewItem
          Caption = 'Year Built'
          DataBinding.FieldName = 'YearBuilt'
          RepositoryItem = EditRepositorySpinItem
          LayoutItem = LayoutViewLayoutItem10
        end
        object LayoutViewPhoto: TcxGridDBLayoutViewItem
          DataBinding.FieldName = 'Photo'
          RepositoryItem = EditRepositoryImage
          LayoutItem = LayoutViewLayoutItem13
        end
        object dxLayoutGroup3: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object cxGridLayoutItem1: TcxGridLayoutItem
          Index = -1
        end
        object LayoutViewLayoutItem3: TcxGridLayoutItem
          Parent = LayoutViewGroup13
          AlignHorz = ahClient
          SizeOptions.Width = 226
          CaptionOptions.Visible = False
          Index = 0
        end
        object LayoutViewLayoutItem4: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 2
        end
        object LayoutViewLayoutItem5: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 3
        end
        object LayoutViewLayoutItem6: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 1
        end
        object LayoutViewLayoutItem8: TcxGridLayoutItem
          Parent = LayoutViewGroup13
          SizeOptions.Width = 139
          CaptionOptions.ImageIndex = 3
          CaptionOptions.Visible = False
          Index = 1
        end
        object LayoutViewLayoutItem9: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          SizeOptions.Width = 175
          CaptionOptions.Visible = False
          Index = 4
        end
        object LayoutViewLayoutItem10: TcxGridLayoutItem
          Parent = LayoutViewGroup3
          Index = 0
        end
        object LayoutViewLayoutItem13: TcxGridLayoutItem
          Parent = LayoutViewGroup4
          AlignVert = avClient
          SizeOptions.Width = 251
          CaptionOptions.Visible = False
          Index = 0
        end
        object LayoutViewGroup4: TdxLayoutGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object LayoutViewGroup13: TdxLayoutGroup
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object LayoutViewGroup3: TdxLayoutGroup
          Parent = LayoutViewGroup4
          AlignHorz = ahClient
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ShowBorder = False
          Index = 1
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = LayoutView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 440
    Width = 400
    Height = 516
    ExplicitLeft = 440
    ExplicitWidth = 400
    ExplicitHeight = 516
    inherited gbSetupTools: TcxGroupBox
      ExplicitHeight = 516
      Height = 516
      Width = 399
      inherited lcFrame: TdxLayoutControl
        Width = 397
        Height = 496
        ExplicitHeight = 496
        object btnCustomize: TcxButton [0]
          Left = 10
          Top = 351
          Width = 377
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Customize Layout'
          TabOrder = 7
          OnClick = btnCustomizeClick
        end
        object tbPitchAngle: TcxTrackBar [1]
          Left = 170
          Top = 65
          Properties.Frequency = 10
          Properties.Max = 180
          Properties.PageSize = 30
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 1
          Transparent = True
          Height = 26
          Width = 217
        end
        object tbEndRecordScale: TcxTrackBar [2]
          Left = 55
          Top = 211
          Properties.Frequency = 10
          Properties.Max = 100
          Properties.PageSize = 10
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 5
          Transparent = True
          Height = 26
          Width = 320
        end
        object tbStartRecordScale: TcxTrackBar [3]
          Left = 55
          Top = 179
          Properties.Frequency = 10
          Properties.Max = 100
          Properties.PageSize = 10
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 4
          Transparent = True
          Height = 26
          Width = 320
        end
        object tbRollAngle: TcxTrackBar [4]
          Left = 170
          Top = 10
          Properties.Frequency = 20
          Properties.Max = 360
          Properties.PageSize = 30
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 0
          Transparent = True
          Height = 26
          Width = 217
        end
        object tbBackgroundAlphaLevel: TcxTrackBar [5]
          Left = 170
          Top = 129
          Properties.Frequency = 10
          Properties.Max = 255
          Properties.PageSize = 10
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 3
          Transparent = True
          Height = 26
          Width = 217
        end
        object tbRecordCount: TcxTrackBar [6]
          Left = 170
          Top = 97
          Position = 1
          Properties.Frequency = 5
          Properties.Max = 21
          Properties.Min = 1
          Properties.PageSize = 10
          Properties.ShowChangeButtons = True
          Properties.OnChange = acAutoPitchAngleExecute
          Style.HotTrack = False
          Style.TransparentBorder = False
          TabOrder = 2
          Transparent = True
          Height = 26
          Width = 217
        end
        object cbInterpolationMode: TcxComboBox [7]
          Left = 170
          Top = 255
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'Default'
            'Low Quality'
            'High Quality'
            'Bilinear'
            'Bicubic'
            'Nearest Neighbor'
            'High Quality Bilinear'
            'High Quality Bicubic')
          Properties.OnChange = acAutoPitchAngleExecute
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Width = 217
        end
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.Width = 330
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'btnCustomize'
          CaptionOptions.Visible = False
          Control = btnCustomize
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 110
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ItemIndex = 3
          ShowBorder = False
          Index = 2
        end
        object liPitchAngle: TdxLayoutItem
          Parent = lcMainGroup7
          CaptionOptions.Text = 'Pitch Angle:'
          Control = tbPitchAngle
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 204
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lcMainItem6: TdxLayoutItem
          Parent = lcMainGroup3
          CaptionOptions.Text = 'End:'
          Control = tbEndRecordScale
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 307
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcMainItem7: TdxLayoutItem
          Parent = lcMainGroup3
          CaptionOptions.Text = 'Start:'
          Control = tbStartRecordScale
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 307
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcMainItem8: TdxLayoutItem
          Parent = lcMainGroup7
          CaptionOptions.Text = 'Roll Angle:'
          Control = tbRollAngle
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 204
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcMainGroup3: TdxLayoutGroup
          Parent = lcMainGroup5
          CaptionOptions.Text = 'Background Record Scale'
          Index = 1
        end
        object lcMainItem9: TdxLayoutItem
          Parent = lcMainGroup5
          CaptionOptions.Text = 'Background Record Alpha Level:'
          Control = tbBackgroundAlphaLevel
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 204
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcMainItem10: TdxLayoutItem
          Parent = lcMainGroup2
          CaptionOptions.Text = 'Record Count:'
          Control = tbRecordCount
          ControlOptions.OriginalHeight = 26
          ControlOptions.OriginalWidth = 204
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lcMainItem11: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Interpolation Mode:'
          Control = cbInterpolationMode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lcMainGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ShowBorder = False
          Index = 0
        end
        object lcMainGroup7: TdxLayoutGroup
          Parent = lcMainGroup2
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object lcMainGroup5: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'Hidden Group'
          Hidden = True
          ShowBorder = False
          Index = 1
        end
        object cbExpandableRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          Action = acRecordExpandButton
          Index = 1
        end
        object cbRecordCaptions: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          Action = acRecordCaptions
          Index = 2
        end
        object cbMultiSelectRecords: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          Action = acMultiSelectRecords
          Index = 3
        end
        object cbAutoPitchAngle: TdxLayoutCheckBoxItem
          Parent = lcMainGroup7
          Action = acAutoPitchAngle
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acAutoPitchAngle: TAction
      AutoCheck = True
      Caption = 'Auto Pitch Angle'
      OnExecute = acAutoPitchAngleExecute
    end
    object acRecordExpandButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Record Expand Button'
      Checked = True
      OnExecute = acRecordExpandButtonExecute
    end
    object acRecordCaptions: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Record Captions'
      Checked = True
      OnExecute = acRecordCaptionsExecute
    end
    object acMultiSelectRecords: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Multi-select Records'
      OnExecute = acMultiSelectRecordsExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsHouses: TDataSource
    DataSet = mdHouses
    Left = 72
    Top = 138
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
    object EditRepositoryPrice: TcxEditRepositoryCurrencyItem
      Properties.AutoSelect = False
      Properties.HideSelection = False
    end
    object EditRepositorySpinItem: TcxEditRepositorySpinItem
    end
  end
  object mdHouses: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 128
    Top = 138
    object mdHousesAddress: TMemoField
      FieldName = 'Address'
      BlobType = ftMemo
    end
    object mdHousesBeds: TSmallintField
      FieldName = 'Beds'
    end
    object mdHousesBaths: TSmallintField
      FieldName = 'Baths'
    end
    object mdHousesHouseSize: TFloatField
      FieldName = 'HouseSize'
      DisplayFormat = '#.00 Sq Ft'
    end
    object mdHousesPrice: TFloatField
      FieldName = 'Price'
    end
    object mdHousesFeatures: TMemoField
      FieldName = 'Features'
      BlobType = ftMemo
    end
    object mdHousesYearBuilt: TMemoField
      FieldName = 'YearBuilt'
      BlobType = ftMemo
    end
    object mdHousesPhoto: TBlobField
      FieldName = 'Photo'
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 184
    Top = 139
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
