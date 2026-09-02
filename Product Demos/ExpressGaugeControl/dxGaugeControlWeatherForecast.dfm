inherited frmWeatherForecast: TfrmWeatherForecast
  Left = 451
  Top = 134
  Caption = 'Weather Forecast'
  ClientHeight = 634
  ClientWidth = 913
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 913
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 913
    Height = 634
    ExplicitWidth = 913
    ExplicitHeight = 634
    object gcWeather: TdxGaugeControl [0]
      Left = 22
      Top = 28
      Width = 869
      Height = 546
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl3ContainerScale1: TdxGaugeContainerScale
        OptionsLayout.CenterPositionFactorY = 0.501972377300262500
        OptionsLayout.HeightFactor = 0.700845956802368100
      end
      object gcsWeatherLosAnglesHumidity: TdxGaugeCircularScale
        AnchorScaleIndex = 0
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.159248247742652900
        OptionsLayout.HeightFactor = 0.649999976158142100
        OptionsLayout.WidthFactor = 0.349999994039535600
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -90
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        StyleName = 'White'
        Value = 50.000000000000000000
        OnAnimate = gcsWeatherLosAnglesHumidityAnimate
        ZOrder = 1
        object gcsWeatherLosAnglesHumidityCaption: TdxGaugeQuantitativeScaleCaption
          Text = 'h: 85%'
          OptionsLayout.CenterPositionFactorY = 0.569999992847442600
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clSilver
          OptionsView.Font.Height = -16
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale1Range1: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
        end
        object dxGaugeControl3CircularScale1Range2: TdxGaugeCircularScaleRange
          Color = -6776680
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 50.000000000000000000
        end
      end
      object gcsWeatherLosAnglesTemperature: TdxGaugeCircularScale
        AnchorScaleIndex = 1
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.HeightFactor = 1.123580336570740000
        OptionsLayout.WidthFactor = 1.111517071723938000
        OptionsView.ShowBackground = False
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clSilver
        OptionsView.Font.Height = -12
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
        OptionsView.MajorTickCount = 3
        OptionsView.MaxValue = 30.000000000000000000
        OptionsView.MinValue = -30.000000000000000000
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        OptionsView.MaxValue = 30.000000000000000000
        StyleName = 'Classic'
        Value = 21.000000000000000000
        OnAnimate = gcsWeatherLosAnglesTemperatureAnimate
        ZOrder = 2
        object gcsWeatherLosAnglesTemperatureCaption: TdxGaugeQuantitativeScaleCaption
          Text = 't: +21 C'
          OptionsLayout.CenterPositionFactorY = 0.449999988079071000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clRed
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale3Caption3: TdxGaugeQuantitativeScaleCaption
          Text = 'Los Angeles'
          OptionsLayout.CenterPositionFactorY = -0.050000000745058060
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale3Range3: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 0.750000000000000000
          ValueEnd = 30.000000000000000000
          ValueStart = -30.000000000000000000
        end
        object gcsWeatherLosAnglesTemperatureRange: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 0.750000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 12.000000000000000000
        end
      end
      object gcsWeatherMoscowHumidity: TdxGaugeCircularScale
        AnchorScaleIndex = 0
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.500941276550293000
        OptionsLayout.HeightFactor = 0.649999976158142100
        OptionsLayout.WidthFactor = 0.349999994039535600
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -90
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        StyleName = 'White'
        Value = 60.000000000000000000
        OnAnimate = gcsWeatherMoscowHumidityAnimate
        ZOrder = 3
        object gcsWeatherMoscowHumidityCaption: TdxGaugeQuantitativeScaleCaption
          Text = 'h: 60%'
          OptionsLayout.CenterPositionFactorY = 0.569999992847442600
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clSilver
          OptionsView.Font.Height = -16
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale4Range1: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
        end
        object gcsWeatherMowcowHumidityRange: TdxGaugeCircularScaleRange
          Color = -6776680
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 50.000000000000000000
        end
      end
      object gcsWeatherMoscowTemperature: TdxGaugeCircularScale
        AnchorScaleIndex = 3
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.HeightFactor = 1.123580336570740000
        OptionsLayout.WidthFactor = 1.111517071723938000
        OptionsView.ShowBackground = False
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clSilver
        OptionsView.Font.Height = -12
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
        OptionsView.MajorTickCount = 3
        OptionsView.MaxValue = 30.000000000000000000
        OptionsView.MinValue = -30.000000000000000000
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        OptionsView.MaxValue = 30.000000000000000000
        StyleName = 'Classic'
        Value = -3.000000000000000000
        OnAnimate = gcsWeatherMoscowTemperatureAnimate
        ZOrder = 4
        object gcsWeatherMoscowTemperatureCaption: TdxGaugeQuantitativeScaleCaption
          Text = 't: -3 C'
          OptionsLayout.CenterPositionFactorY = 0.449999988079071000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlue
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale2Caption3: TdxGaugeQuantitativeScaleCaption
          Text = 'Moscow'
          OptionsLayout.CenterPositionFactorY = -0.050000000745058060
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object gcsWeatherDate: TdxGaugeQuantitativeScaleCaption
          Text = 'Date'
          OptionsLayout.CenterPositionFactorY = 1.100000023841858000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale2Range1: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 0.750000000000000000
          ValueEnd = 30.000000000000000000
          ValueStart = -30.000000000000000000
        end
        object gcsWeatherMoscowTemperatureRange: TdxGaugeCircularScaleRange
          Color = -16776961
          RadiusFactor = 0.750000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 12.000000000000000000
        end
      end
      object gcsWeatherLondonHumidity: TdxGaugeCircularScale
        AnchorScaleIndex = 0
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.828865289688110300
        OptionsLayout.HeightFactor = 0.649999976158142100
        OptionsLayout.WidthFactor = 0.349999994039535600
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -90
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        StyleName = 'White'
        Value = 75.000000000000000000
        OnAnimate = gcsWeatherLondonHumidityAnimate
        ZOrder = 5
        object gcsWeatherLondonHumidityCaption: TdxGaugeQuantitativeScaleCaption
          Text = 'h: 75%'
          OptionsLayout.CenterPositionFactorY = 0.569999992847442600
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clSilver
          OptionsView.Font.Height = -16
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale5Range1: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
        end
        object gcsWeatherLondonHumidityRange: TdxGaugeCircularScaleRange
          Color = -6776680
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 50.000000000000000000
        end
      end
      object gcsWeatherLondonTemperature: TdxGaugeCircularScale
        AnchorScaleIndex = 5
        OptionsAnimate.TransitionEffect = ateCubic
        OptionsAnimate.TransitionEffectMode = atmInOut
        OptionsAnimate.Enabled = True
        OptionsLayout.HeightFactor = 1.123580336570740000
        OptionsLayout.WidthFactor = 1.111517071723938000
        OptionsView.ShowBackground = False
        OptionsView.Font.Charset = DEFAULT_CHARSET
        OptionsView.Font.Color = clSilver
        OptionsView.Font.Height = -12
        OptionsView.Font.Name = 'Tahoma'
        OptionsView.Font.Style = []
        OptionsView.MajorTickCount = 3
        OptionsView.MaxValue = 30.000000000000000000
        OptionsView.MinValue = -30.000000000000000000
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        OptionsView.MaxValue = 30.000000000000000000
        StyleName = 'Classic'
        Value = 15.000000000000000000
        OnAnimate = gcsWeatherLondonTemperatureAnimate
        ZOrder = 6
        object gcsWeatherLondonTemperatureCaption: TdxGaugeQuantitativeScaleCaption
          Text = 't: +15 C'#39
          OptionsLayout.CenterPositionFactorY = 0.449999988079071000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clRed
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale6Caption3: TdxGaugeQuantitativeScaleCaption
          Text = 'London'
          OptionsLayout.CenterPositionFactorY = -0.050000000745058060
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -19
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl3CircularScale6Range1: TdxGaugeCircularScaleRange
          Color = -1907998
          RadiusFactor = 0.750000000000000000
          ValueEnd = 30.000000000000000000
          ValueStart = -30.000000000000000000
        end
        object gcsWeatherLondonTemperatureRange: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 0.750000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          ValueEnd = 12.000000000000000000
        end
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = gcWeather
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 16
    Top = 24
  end
end
