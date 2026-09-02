inherited frmGaugeControlDigitalGaugeDisplayModes: TfrmGaugeControlDigitalGaugeDisplayModes
  Left = 568
  Top = 113
  Caption = 'Display Options - Digital Gauges'
  ClientHeight = 626
  ClientWidth = 835
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 835
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 835
    Height = 626
    ExplicitWidth = 835
    ExplicitHeight = 626
    object dxGaugeControl1: TdxGaugeControl [0]
      Left = 10
      Top = 45
      Width = 815
      Height = 533
      Transparent = True
      object dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.168435007333755500
        OptionsLayout.HeightFactor = 0.289123505353927600
        OptionsLayout.WidthFactor = 0.872079670429229700
        OptionsView.DigitCount = 6
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        StyleName = 'IceColdZone'
        Value = 'Gauges'
      end
      object dxGaugeControl1DigitalScale2: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.486737400293350200
        OptionsLayout.HeightFactor = 0.289123505353927600
        OptionsLayout.WidthFactor = 0.872079670429229700
        OptionsView.DigitCount = 6
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        StyleName = 'IceColdZone'
        Value = '17:59'
        ZOrder = 1
      end
      object dxGaugeControl1DigitalScale3: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.820954918861389200
        OptionsLayout.HeightFactor = 0.289123505353927600
        OptionsLayout.WidthFactor = 0.872079670429229700
        OptionsView.DigitCount = 6
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        StyleName = 'IceColdZone'
        Value = '123,45'
        ZOrder = 2
      end
    end
    object cbDisplayModes: TcxComboBox [1]
      Left = 82
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Matrix8x14 Dots'
        'Matrix8x14 Squares'
        'Matrix5x8 Dots'
        'Matrix5x8 Squares'
        'Fourteen Segment'
        'Seven Segment')
      Properties.OnChange = cbDisplayModesPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 133
    end
    object sedtDigitSpacingFactor: TcxSpinEdit [2]
      Left = 335
      Top = 10
      Properties.AssignedValues.MinValue = True
      Properties.DisplayFormat = '0.00'
      Properties.Increment = 0.050000000000000000
      Properties.MaxValue = 1.000000000000000000
      Properties.ValueType = vtFloat
      Properties.OnChange = cxSpinEdit1PropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldVertical
      ShowBorder = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = dxGaugeControl1
      ControlOptions.OriginalHeight = 379
      ControlOptions.OriginalWidth = 815
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Display Mode:'
      Control = cbDisplayModes
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Digit Spacing Factor:'
      Padding.Left = 10
      Padding.AssignedValues = [lpavLeft]
      Control = sedtDigitSpacingFactor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
