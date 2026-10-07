inherited frmGaugeControlTemperatureGauges: TfrmGaugeControlTemperatureGauges
  Left = 568
  Top = 113
  Caption = 'Temperature, Volume and Pressure Gauge'
  ClientHeight = 425
  ClientWidth = 817
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 817
  ExplicitHeight = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 817
    Height = 425
    ExplicitWidth = 817
    ExplicitHeight = 425
    object dxGaugeControl1: TdxGaugeControl [0]
      Left = 22
      Top = 28
      Width = 773
      Height = 337
      BorderStyle = cxcbsNone
      Transparent = True
      object gsPressureValue: TdxGaugeCircularScale
        AnchorScaleIndex = 3
        OptionsAnimate.TransitionEffect = ateBounce
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsAnimate.Interval = 800
        OptionsLayout.WidthFactor = 0.423220932483673100
        OptionsView.MajorTickCount = 8
        OptionsView.MaxValue = 7.000000000000000000
        OptionsView.AngleEnd = 90
        OptionsView.AngleStart = 270
        OptionsView.MaxValue = 7.000000000000000000
        StyleName = 'White'
        Value = 3.500000000000000000
        ZOrder = 1
        object gsPressureValueCaption1: TdxGaugeQuantitativeScaleCaption
          Text = 'BAR'
          OptionsLayout.CenterPositionFactorX = 0.300000011920929000
          OptionsLayout.CenterPositionFactorY = 0.449999988079071000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object gsPressureValueCaption2: TdxGaugeQuantitativeScaleCaption
          Text = 'KPAx100'
          OptionsLayout.CenterPositionFactorX = 0.300000011920929000
          OptionsLayout.CenterPositionFactorY = 0.509999990463256800
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object gsPressureValueRange1: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 0.600000023841857900
          ValueEnd = 7.000000000000000000
          ValueStart = 5.000000000000000000
          WidthFactor = 1.000000000000000000
        end
        object gsPressureValueRange2: TdxGaugeCircularScaleRange
          Color = -16744448
          RadiusFactor = 0.600000023841857900
          ValueEnd = 2.000000000000000000
          WidthFactor = 1.000000000000000000
        end
      end
      object gsVolumeValue: TdxGaugeLinearScale
        AnchorScaleIndex = 0
        OptionsAnimate.TransitionEffectMode = atmOut
        OptionsAnimate.Enabled = True
        OptionsAnimate.Interval = 900
        OptionsLayout.CenterPositionFactorX = 0.699999988079071100
        OptionsLayout.HeightFactor = 0.690634548664093100
        OptionsLayout.WidthFactor = 0.434138715267181400
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 7
        OptionsView.MaxValue = 1000.000000000000000000
        OptionsView.MinValue = 256.000000000000000000
        OptionsView.LogarithmicBase = 2.000000000000000000
        OptionsView.AlignElements = taRightJustify
        OptionsView.MaxValue = 1000.000000000000000000
        StyleName = 'White'
        Value = 780.000000000000000000
        ZOrder = 2
        object gsVolumeValueCaption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Volume'
          OptionsLayout.CenterPositionFactorX = 0.949999988079071100
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.RotationAngle = 90.000000000000000000
          OptionsView.UseOwnFont = True
        end
      end
      object gsVolumeValueSecondary: TdxGaugeLinearScale
        AnchorScaleIndex = 0
        OptionsAnimate.TransitionEffect = ateBounce
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsAnimate.Interval = 800
        OptionsLayout.CenterPositionFactorX = 0.699999988079071100
        OptionsLayout.HeightFactor = 0.708761453628540000
        OptionsLayout.WidthFactor = 0.367673486471176100
        OptionsView.ShowBackground = False
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clBlack
        OptionsView.Font.Height = -13
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
        OptionsView.MajorTickCount = 5
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.MinorTickCount = 0
        OptionsView.MinValue = 20.000000000000000000
        OptionsView.ShowLevelBar = False
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'White'
        Value = 45.000000000000000000
        ZOrder = 3
        object gsVolumeValueSecondaryCaption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Temperature C'#39
          OptionsLayout.CenterPositionFactorX = 0.109999999403953600
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.RotationAngle = 90.000000000000000000
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl1LinearScale2Range: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.395000010728836000
          Color = -16744448
          ValueEnd = 30.000000000000000000
          ValueStart = 20.000000000000000000
          WidthFactor = 0.059999998658895490
          CenterPositionFactor = 0.395000010728836000
        end
        object dxGaugeControl1LinearScale2Range1: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.395000010728836000
          Color = -256
          ValueEnd = 50.000000000000000000
          ValueStart = 30.000000000000000000
          WidthFactor = 0.059999998658895490
          CenterPositionFactor = 0.395000010728836000
        end
        object dxGaugeControl1LinearScale2Range2: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.395000010728836000
          Color = -65536
          ValueEnd = 60.000000000000000000
          ValueStart = 50.000000000000000000
          WidthFactor = 0.059999998658895490
          CenterPositionFactor = 0.395000010728836000
        end
      end
      object dxGaugeControl1ContainerScale1: TdxGaugeContainerScale
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = dxGaugeControl1
      ControlOptions.OriginalHeight = 425
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object tTemperatureTimer: TTimer
    Interval = 1200
    OnTimer = tTemperatureTimerTimer
    Left = 664
    Top = 104
  end
end
