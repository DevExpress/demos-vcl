inherited frmSampleHybridGauges: TfrmSampleHybridGauges
  Left = 568
  Top = 113
  Caption = 'Sample Hybrid Gauges '
  ClientHeight = 518
  ClientWidth = 835
  Position = poScreenCenter
  ExplicitWidth = 835
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 835
    Height = 518
    ExplicitWidth = 835
    ExplicitHeight = 518
    object gcHybrid: TdxGaugeControl [0]
      Left = 290
      Top = 28
      Width = 255
      Height = 430
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale5: TdxGaugeCircularScale
        AnchorScaleIndex = 2
        OptionsLayout.CenterPositionFactorX = 0.299563497304916400
        OptionsLayout.CenterPositionFactorY = 0.726132452487945600
        OptionsLayout.HeightFactor = 0.465173423290252700
        OptionsLayout.WidthFactor = 0.519227564334869400
        OptionsView.MinorTickCount = 5
        StyleName = 'DeepFire'
        Value = 45.000000000000000000
        ZOrder = 2
      end
      object dxGaugeControl11dxGaugeDigitalScale1: TdxGaugeDigitalScale
        AnchorScaleIndex = 2
        OptionsLayout.CenterPositionFactorX = 0.283615887165069600
        OptionsLayout.CenterPositionFactorY = 0.370000004768371600
        OptionsLayout.HeightFactor = 0.139715045690536500
        OptionsLayout.WidthFactor = 0.491119205951690700
        OptionsView.DigitCount = 6
        OptionsView.DisplayMode = sdmSevenSegment
        StyleName = 'IceColdZone'
        Value = '13:01:37'
        ZOrder = 1
      end
      object gcHybridContainerScale1: TdxGaugeContainerScale
        OptionsLayout.HeightFactor = 0.478501588106155400
        OptionsLayout.WidthFactor = 0.787630796432495100
      end
      object gcHybridLinearScale1: TdxGaugeLinearScale
        AnchorScaleIndex = 2
        OptionsLayout.CenterPositionFactorX = 0.788264513015747100
        OptionsLayout.CenterPositionFactorY = 0.630706548690795900
        OptionsLayout.HeightFactor = 0.668214857578277600
        OptionsLayout.WidthFactor = 0.380225300788879400
        Value = 45.000000000000000000
        ZOrder = 3
        object gcHybridLinearScale1Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'ExpressGauge Control'
          OptionsLayout.CenterPositionFactorX = 0.800000011920928900
          OptionsLayout.CenterPositionFactorY = 0.649999976158142100
          OptionsView.RotationAngle = 90.000000000000000000
        end
      end
      object gcHybridCircularWideScale1: TdxGaugeCircularWideScale
        AnchorScaleIndex = 2
        OptionsLayout.CenterPositionFactorX = 0.526187717914581300
        OptionsLayout.CenterPositionFactorY = 0.146947056055069000
        OptionsLayout.HeightFactor = 0.276879131793975800
        OptionsLayout.WidthFactor = 0.903978347778320300
        StyleName = 'Disco'
        Value = 68.000000000000000000
        ZOrder = 4
      end
    end
    object gcHybridDarkNight: TdxGaugeControl [1]
      Left = 559
      Top = 28
      Width = 254
      Height = 430
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale3: TdxGaugeCircularScale
        StyleName = 'DarkNight'
        Value = 72.000000000000000000
      end
      object dxGaugeDigitalScale4: TdxGaugeDigitalScale
        AnchorScaleIndex = 0
        OptionsLayout.CenterPositionFactorX = 0.579999983310699500
        OptionsLayout.CenterPositionFactorY = 0.750000000000000000
        OptionsLayout.HeightFactor = 0.159999996423721300
        OptionsLayout.WidthFactor = 0.319999992847442600
        OptionsView.DigitCount = 3
        OptionsView.DisplayMode = sdmSevenSegment
        StyleName = 'DarkNight'
        Value = '72'
        ZOrder = 1
      end
    end
    object dxGaugeControl1: TdxGaugeControl [2]
      Left = 22
      Top = 28
      Width = 254
      Height = 430
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale1: TdxGaugeCircularScale
        OptionsView.MinorTickCount = 5
        StyleName = 'IceColdZone'
        Value = 45.000000000000000000
      end
      object dxGaugeDigitalScale1: TdxGaugeDigitalScale
        AnchorScaleIndex = 0
        OptionsLayout.CenterPositionFactorY = 0.300000011920929000
        OptionsLayout.HeightFactor = 0.159999996423721300
        OptionsLayout.WidthFactor = 0.319999992847442600
        OptionsView.DigitCount = 3
        OptionsView.DisplayMode = sdmSevenSegment
        StyleName = 'IceColdZone'
        Value = '45'
        ZOrder = 1
      end
      object dxGaugeCircularScale2: TdxGaugeCircularScale
        AnchorScaleIndex = 0
        OptionsView.ShowBackground = False
        OptionsView.MinorTickCount = 5
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        StyleName = 'IceColdZone'
        Value = 45.000000000000000000
        ZOrder = 2
        object gcHybridIceColdZoneCircularScale1Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'HPM km/h'
          OptionsLayout.CenterPositionFactorY = 0.699999988079071100
        end
      end
    end
    object dxLayoutControl6Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcHybrid
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl6Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcHybridDarkNight
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl6Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxGaugeControl1
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl6SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl6SplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
  end
end
