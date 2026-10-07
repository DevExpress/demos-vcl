inherited frmAutoTrader: TfrmAutoTrader
  Caption = 'Auto Trader'
  ClientHeight = 725
  ClientWidth = 947
  OnCreate = FormCreate
  ExplicitWidth = 947
  ExplicitHeight = 725
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 947
    Height = 725
    ExplicitWidth = 947
    ExplicitHeight = 725
    object dxNavBar1: TdxNavBar [0]
      Left = 668
      Top = 30
      Width = 268
      Height = 646
      ActiveGroupIndex = 0
      TabOrder = 1
      View = 20
      OptionsBehavior.Common.AllowChildGroups = True
      OptionsBehavior.Common.AllowExpandAnimation = True
      object dxNavBar1Group1: TdxNavBarGroup
        Caption = 'Main Parameters'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
        ParentGroupIndex = -1
        Position = 0
      end
      object dxNavBar1Group2: TdxNavBarGroup
        Caption = 'Body'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
        ParentGroupIndex = -1
        Position = 1
      end
      object dxNavBar1Group3: TdxNavBarGroup
        Caption = 'Engine'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
        ParentGroupIndex = -1
        Position = 2
      end
      object dxNavBar1Group4: TdxNavBarGroup
        Caption = 'Price ($)'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 0
        Position = 0
      end
      object dxNavBar1Group5: TdxNavBarGroup
        Caption = 'Trademark'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 0
        Position = 1
      end
      object dxNavBar1Group6: TdxNavBarGroup
        Caption = 'Transmission Type'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 0
        Position = 2
      end
      object dxNavBar1Group7: TdxNavBarGroup
        Caption = 'Body Style'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 1
        Position = 0
      end
      object dxNavBar1Group8: TdxNavBarGroup
        Caption = 'Doors'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 1
        Position = 1
      end
      object dxNavBar1Group9: TdxNavBarGroup
        Caption = 'MPG City'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 2
        Position = 0
      end
      object dxNavBar1Group10: TdxNavBarGroup
        Caption = 'MPG Highway'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 2
        Position = 1
      end
      object dxNavBar1Group4Control: TdxNavBarGroupControl
        Left = 2
        Top = 64
        Width = 247
        Height = 64
        TabOrder = 0
        UseStyle = True
        GroupIndex = 3
        OriginalHeight = 64
        object rtbPrice: TdxRangeTrackBar
          Left = 14
          Top = 7
          Properties.AutoSize = False
          Properties.Frequency = 10000
          Properties.Max = 200000
          Properties.Min = 10000
          Properties.ShowPositionHint = True
          Properties.ThumbStep = cxtsJump
          Properties.OnChange = rtbPricePropertiesChange
          Properties.OnGetPositionHint = dxRangeTrackBar1PropertiesGetPositionHint
          Range.Max = 200000
          Range.Min = 10000
          TabOrder = 0
          Transparent = True
          Height = 50
          Width = 223
        end
      end
      object dxNavBar1Group5Control: TdxNavBarGroupControl
        Left = 2
        Top = 154
        Width = 247
        Height = 230
        TabOrder = 1
        UseStyle = True
        GroupIndex = 4
        OriginalHeight = 230
        object cxCheckGroup1: TcxCheckGroup
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Align = alClient
          Alignment = alBottomLeft
          ParentBackground = False
          Properties.Columns = 2
          Properties.Items = <>
          Properties.OnStatesToEditValue = cxCheckGroup1PropertiesStatesToEditValue
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = True
          TabOrder = 0
          Height = 224
          Width = 234
        end
      end
      object dxNavBar1Group6Control: TdxNavBarGroupControl
        Left = 2
        Top = 410
        Width = 247
        Height = 97
        TabOrder = 2
        UseStyle = True
        GroupIndex = 5
        OriginalHeight = 97
        object cxRadioGroup1: TcxRadioGroup
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Align = alClient
          Alignment = alBottomLeft
          Properties.Items = <>
          Properties.OnChange = cxRadioGroup1PropertiesChange
          Style.BorderStyle = ebsNone
          TabOrder = 0
          Height = 91
          Width = 234
        end
      end
      object dxNavBar1Group7Control: TdxNavBarGroupControl
        Left = 2
        Top = 580
        Width = 247
        Height = 108
        TabOrder = 6
        UseStyle = True
        GroupIndex = 6
        OriginalHeight = 108
        object cxCheckGroup2: TcxCheckGroup
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Align = alClient
          Alignment = alBottomLeft
          ParentBackground = False
          Properties.Columns = 2
          Properties.Items = <>
          Properties.OnStatesToEditValue = cxCheckGroup2PropertiesStatesToEditValue
          Style.BorderStyle = ebsNone
          Style.TransparentBorder = True
          TabOrder = 0
          Height = 102
          Width = 234
        end
      end
      object dxNavBar1Group8Control: TdxNavBarGroupControl
        Left = 2
        Top = 714
        Width = 247
        Height = 109
        TabOrder = 5
        UseStyle = True
        GroupIndex = 7
        OriginalHeight = 109
        object cxRadioGroup2: TcxRadioGroup
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Align = alClient
          Alignment = alBottomLeft
          Properties.Items = <
            item
              Caption = '2'
              Value = '2'
            end
            item
              Caption = '3'
              Value = '3'
            end
            item
              Caption = '4'
              Value = '4'
            end
            item
              Caption = 'All'
            end>
          Properties.OnChange = cxRadioGroup2PropertiesChange
          ItemIndex = 3
          Style.BorderStyle = ebsNone
          TabOrder = 0
          Height = 103
          Width = 234
        end
      end
      object dxNavBar1Group9Control: TdxNavBarGroupControl
        Left = 2
        Top = 896
        Width = 247
        Height = 64
        TabOrder = 4
        UseStyle = True
        GroupIndex = 8
        OriginalHeight = 64
        object rtbMPGCity: TdxRangeTrackBar
          Left = 14
          Top = 7
          Properties.AutoSize = False
          Properties.Frequency = 2
          Properties.Max = 50
          Properties.Min = 10
          Properties.ShowPositionHint = True
          Properties.ThumbStep = cxtsJump
          Properties.OnChange = dxRangeTrackBar1PropertiesChange
          Range.Max = 50
          Range.Min = 10
          TabOrder = 0
          Transparent = True
          Height = 50
          Width = 223
        end
      end
      object dxNavBar1Group10Control: TdxNavBarGroupControl
        Left = 2
        Top = 986
        Width = 247
        Height = 64
        TabOrder = 3
        UseStyle = True
        GroupIndex = 9
        OriginalHeight = 64
        object rtbMPGHighway: TdxRangeTrackBar
          Left = 14
          Top = 7
          Properties.AutoSize = False
          Properties.Frequency = 2
          Properties.Max = 50
          Properties.Min = 10
          Properties.ShowPositionHint = True
          Properties.ThumbStep = cxtsJump
          Properties.OnChange = rtbMPGHighwayPropertiesChange
          Range.Max = 50
          Range.Min = 10
          TabOrder = 0
          Transparent = True
          Height = 50
          Width = 223
        end
      end
    end
    object cxGrid1: TcxGrid [1]
      Left = 10
      Top = 29
      Width = 651
      Height = 648
      TabOrder = 0
      object cxGrid1DBWinExplorerView1: TcxGridDBWinExplorerView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ActiveDisplayMode = dmExtraLargeImages
        DataController.DataSource = DataModule2.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        ItemSet.DescriptionItem = cxGrid1DBWinExplorerView1Price
        ItemSet.ExtraLargeImageItem = cxGrid1DBWinExplorerView1Photo
        ItemSet.TextItem = cxGrid1DBWinExplorerView1Name
        Styles.TextItem = cxStyle1
        Styles.DescriptionItem = cxStyle2
        DisplayModes.ExtraLargeImages.ImageSize.Height = 192
        DisplayModes.ExtraLargeImages.ImageSize.Width = 192
        DisplayModes.ExtraLargeImages.ShowItemDescriptions = True
        object cxGrid1DBWinExplorerView1Name: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Name'
          Options.Editing = False
        end
        object cxGrid1DBWinExplorerView1Price: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DisplayFormat = '$,0.00;($,0.00)'
          Options.Editing = False
        end
        object cxGrid1DBWinExplorerView1Image: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Image'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
        end
        object cxGrid1DBWinExplorerView1Photo: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Photo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
          Options.Editing = False
        end
        object cxGrid1DBWinExplorerView1Trademark: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Trademark'
        end
        object cxGrid1DBWinExplorerView1FullName: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'FullName'
        end
        object cxGrid1DBWinExplorerView1Modification: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Modification'
        end
        object cxGrid1DBWinExplorerView1MPGCity: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'MPG City'
        end
        object cxGrid1DBWinExplorerView1MPGHighway: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'MPG Highway'
        end
        object cxGrid1DBWinExplorerView1Doors: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Doors'
        end
        object cxGrid1DBWinExplorerView1Cylinders: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Cylinders'
        end
        object cxGrid1DBWinExplorerView1Horsepower: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Horsepower'
        end
        object cxGrid1DBWinExplorerView1TransmissionSpeeds: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Transmission Speeds'
        end
        object cxGrid1DBWinExplorerView1TransmissionType: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Transmission Type'
        end
        object cxGrid1DBWinExplorerView1TransmissionTypeName: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'TransmissionTypeName'
        end
        object cxGrid1DBWinExplorerView1RecId: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'RecId'
          Visible = False
        end
        object cxGrid1DBWinExplorerView1ID: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'ID'
        end
        object cxGrid1DBWinExplorerView1TrademarkID: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'TrademarkID'
        end
        object cxGrid1DBWinExplorerView1CategoryID: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'CategoryID'
        end
        object cxGrid1DBWinExplorerView1BodyStyleID: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'BodyStyleID'
        end
        object cxGrid1DBWinExplorerView1Torque: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Torque'
        end
        object cxGrid1DBWinExplorerView1Description: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Description'
        end
        object cxGrid1DBWinExplorerView1DeliveryDate: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Delivery Date'
        end
        object cxGrid1DBWinExplorerView1InStock: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'InStock'
        end
        object cxGrid1DBWinExplorerView1Hyperlink: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Hyperlink'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBWinExplorerView1
      end
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahRight
      AlignVert = avClient
      Control = dxNavBar1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 721
      ControlOptions.OriginalWidth = 268
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGrid1
      ControlOptions.OriginalHeight = 721
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 40
    Top = 24
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 144
    Top = 24
    PixelsPerInch = 96
    object cxStyle3: TcxStyle
      AssignedValues = [svColor]
      Color = clNone
    end
  end
end
