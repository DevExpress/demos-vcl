inherited frmGaugeControlCarBreakTester: TfrmGaugeControlCarBreakTester
  Left = 568
  Top = 113
  Caption = 'Car Brake and Suspension Tester'
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
    object cxGroupBox1: TcxGroupBox [0]
      Left = 10
      Top = 10
      PanelStyle.Active = True
      Style.BorderStyle = ebsNone
      TabOrder = 0
      Transparent = True
      Height = 367
      Width = 797
      object gcTester: TdxGaugeControl
        Left = 2
        Top = 2
        Width = 793
        Height = 363
        Align = alClient
        BorderStyle = cxcbsNone
        Transparent = True
        object gsMainScaleBackground: TdxGaugeCircularScale
          AnchorScaleIndex = 10
          OptionsLayout.WidthFactor = 0.467820912599563600
          OptionsView.ShowFirstTick = False
          OptionsView.ShowLabels = False
          OptionsView.ShowLastTick = False
          OptionsView.ShowTicks = False
          OptionsView.ShowNeedle = False
          OptionsView.ShowSpindleCap = False
          StyleName = 'White'
          ZOrder = 7
        end
        object gsColoredScaleBackground: TdxGaugeCircularScale
          AnchorScaleIndex = 10
          OptionsLayout.CenterPositionFactorX = 0.244455292820930500
          OptionsLayout.CenterPositionFactorY = 0.494536280632019100
          OptionsLayout.HeightFactor = 0.600000023841857900
          OptionsLayout.WidthFactor = 0.271543115377426100
          OptionsView.ShowLabels = False
          OptionsView.ShowTicks = False
          OptionsView.ShowNeedle = False
          StyleName = 'White'
          Value = 30.000000000000000000
          ZOrder = 3
        end
        object gsTesterValue4: TdxGaugeCircularScale
          AnchorScaleIndex = 1
          OptionsView.ShowBackground = False
          OptionsView.ShowLabels = False
          OptionsView.ShowTicks = False
          OptionsView.AngleEnd = 70
          OptionsView.AngleStart = 290
          StyleName = 'CleanWhite'
          Value = 45.000000000000000000
          ZOrder = 2
          object dxGaugeControl3CircularScale3Range: TdxGaugeCircularScaleRange
            Color = -7618928
            RadiusFactor = 0.800000011920928900
            ValueEnd = 30.000000000000000000
            WidthFactor = 0.400000005960464400
          end
          object dxGaugeControl3CircularScale3Range1: TdxGaugeCircularScaleRange
            Color = -1517978
            RadiusFactor = 0.800000011920928900
            ValueEnd = 70.000000000000000000
            ValueStart = 30.000000000000000000
            WidthFactor = 0.400000005960464400
          end
          object dxGaugeControl3CircularScale3Range2: TdxGaugeCircularScaleRange
            Color = -4362642
            RadiusFactor = 0.800000011920928900
            ValueEnd = 100.000000000000000000
            ValueStart = 70.000000000000000000
            WidthFactor = 0.400000005960464400
          end
        end
        object gsTesterValue5: TdxGaugeDigitalScale
          AnchorScaleIndex = 10
          OptionsLayout.CenterPositionFactorX = 0.759197115898132400
          OptionsLayout.CenterPositionFactorY = 0.280619114637374900
          OptionsLayout.HeightFactor = 0.150000005960464500
          OptionsLayout.WidthFactor = 0.192555949091911300
          OptionsView.DisplayMode = sdmSevenSegment
          OptionsView.SegmentColorOff = 0
          StyleName = 'CleanWhite'
          Value = '3,4'
          ZOrder = 5
        end
        object gsTesterValue6: TdxGaugeDigitalScale
          AnchorScaleIndex = 10
          OptionsLayout.CenterPositionFactorX = 0.779332637786865300
          OptionsLayout.CenterPositionFactorY = 0.457055240869522100
          OptionsLayout.HeightFactor = 0.150000005960464500
          OptionsLayout.WidthFactor = 0.185411453247070300
          OptionsView.DisplayMode = sdmSevenSegment
          OptionsView.SegmentColorOff = 0
          StyleName = 'CleanWhite'
          Value = '78'
          ZOrder = 4
        end
        object gsTesterValue7: TdxGaugeDigitalScale
          AnchorScaleIndex = 10
          OptionsLayout.CenterPositionFactorX = 0.759197115898132400
          OptionsLayout.CenterPositionFactorY = 0.639059305191040000
          OptionsLayout.HeightFactor = 0.150000005960464500
          OptionsLayout.WidthFactor = 0.187312915921211200
          OptionsView.DisplayMode = sdmSevenSegment
          OptionsView.SegmentColorOff = 0
          StyleName = 'CleanWhite'
          Value = '0,04'
          ZOrder = 6
        end
        object gsTesterValue3: TdxGaugeCircularScale
          AnchorScaleIndex = 0
          OptionsLayout.CenterPositionFactorY = 0.560000002384185800
          OptionsLayout.HeightFactor = 0.451999992132186900
          OptionsLayout.WidthFactor = 0.451999992132186900
          OptionsView.ShowBackground = False
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -13
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 3
          OptionsView.MaxValue = 20.000000000000000000
          OptionsView.MinorTickCount = 5
          OptionsView.MinValue = -20.000000000000000000
          OptionsView.AngleEnd = 320
          OptionsView.AngleStart = 220
          OptionsView.ShowSpindleCap = False
          OptionsView.MaxValue = 20.000000000000000000
          StyleName = 'CleanWhite'
          Value = -10.000000000000000000
          ZOrder = 11
          object gsTesterValue3Caption1: TdxGaugeQuantitativeScaleCaption
            Text = '[ mm/m ]'
            OptionsLayout.CenterPositionFactorY = 0.720000028610229500
          end
        end
        object gsScaleTicks2: TdxGaugeCircularScale
          AnchorScaleIndex = 0
          OptionsLayout.HeightFactor = 0.759999990463256800
          OptionsLayout.WidthFactor = 0.759999990463256800
          OptionsView.ShowBackground = False
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MinorTickCount = 1
          OptionsView.AngleEnd = -20
          OptionsView.AngleStart = 200
          OptionsView.ShowNeedle = False
          StyleName = 'YellowSubmarine'
          ZOrder = 8
          object dxGaugeControl3CircularScale5Range: TdxGaugeCircularScaleRange
            Color = -11912395
            RadiusFactor = 0.790000021457672100
            ValueEnd = 100.000000000000000000
            WidthFactor = 0.004999999888241291
          end
        end
        object gsScaleTicks1: TdxGaugeCircularScale
          AnchorScaleIndex = 0
          OptionsLayout.HeightFactor = 0.959999978542327900
          OptionsLayout.WidthFactor = 0.959999978542327900
          OptionsView.ShowBackground = False
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 9
          OptionsView.MaxValue = 8.000000000000000000
          OptionsView.MinorTickCount = 0
          OptionsView.ShowNeedle = False
          OptionsView.MaxValue = 8.000000000000000000
          StyleName = 'SportCar'
          ZOrder = 9
          object dxGaugeControl3CircularScale6Range: TdxGaugeCircularScaleRange
            Color = -11119018
            RadiusFactor = 0.709999978542327900
            ValueEnd = 8.000000000000000000
            WidthFactor = 0.004999999888241291
          end
        end
        object gsMainBackground: TdxGaugeLinearScale
          OptionsView.ShowBackground = False
          OptionsView.ShowLabels = False
          OptionsView.ShowTicks = False
          OptionsView.ShowLevelBar = False
          OptionsView.RotationAngle = ra0
          StyleName = 'Classic'
          ZOrder = 1
        end
        object gsBackground: TdxGaugeDigitalScale
          AnchorScaleIndex = 9
          OptionsLayout.HeightFactor = 1.200000047683716000
          OptionsLayout.WidthFactor = 1.200000047683716000
          OptionsView.ShowBackground = False
          OptionsView.DigitCount = 4
          OptionsView.SegmentColorOff = 0
          OptionsView.SegmentColorOn = 0
          StyleName = 'White'
        end
        object gsTesterValue1: TdxGaugeCircularScale
          AnchorScaleIndex = 0
          OptionsLayout.HeightFactor = 0.959999978542327900
          OptionsLayout.WidthFactor = 0.959999978542327900
          OptionsView.ShowBackground = False
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 9
          OptionsView.MaxValue = 8.000000000000000000
          OptionsView.MinorTickCount = 0
          OptionsView.ShowFirstTick = False
          OptionsView.ShowLabels = False
          OptionsView.ShowLastTick = False
          OptionsView.ShowTicks = False
          OptionsView.MaxValue = 8.000000000000000000
          StyleName = 'CleanWhite'
          Value = 4.599999904632568000
          ZOrder = 12
          object gsTesterValue1Caption1: TdxGaugeQuantitativeScaleCaption
            Text = 'kN'
            OptionsLayout.CenterPositionFactorY = 0.879999995231628400
            OptionsView.Font.Charset = DEFAULT_CHARSET
            OptionsView.Font.Color = clWindowText
            OptionsView.Font.Height = -19
            OptionsView.Font.Name = 'Tahoma'
            OptionsView.Font.Style = []
            OptionsView.UseOwnFont = True
          end
          object gsTesterValue1Caption2: TdxGaugeQuantitativeScaleCaption
            Text = '[%]'
            OptionsLayout.CenterPositionFactorY = 0.819999992847442700
            OptionsView.Font.Charset = DEFAULT_CHARSET
            OptionsView.Font.Color = clWindowText
            OptionsView.Font.Height = -9
            OptionsView.Font.Name = 'Tahoma'
            OptionsView.Font.Style = []
            OptionsView.UseOwnFont = True
          end
          object gsTesterValue1Caption3: TdxGaugeQuantitativeScaleCaption
            Text = 'VAS 6360'
            OptionsLayout.CenterPositionFactorY = 0.360000014305114800
            OptionsView.Font.Charset = DEFAULT_CHARSET
            OptionsView.Font.Color = clGrayText
            OptionsView.Font.Height = -11
            OptionsView.Font.Name = 'Tahoma'
            OptionsView.Font.Style = [fsItalic]
            OptionsView.UseOwnFont = True
          end
          object dxGaugeControl3CircularScale7Range: TdxGaugeCircularScaleRange
            Color = -11119018
            RadiusFactor = 0.709999978542327900
            ValueEnd = 8.000000000000000000
            WidthFactor = 0.004999999888241291
          end
        end
        object gsTesterValue2: TdxGaugeCircularScale
          AnchorScaleIndex = 7
          OptionsLayout.HeightFactor = 0.959999978542327900
          OptionsLayout.WidthFactor = 0.959999978542327900
          OptionsView.ShowBackground = False
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Arial Narrow'
          OptionsView.Font.Style = []
          OptionsView.MinorTickCount = 0
          OptionsView.ShowFirstTick = False
          OptionsView.ShowLabels = False
          OptionsView.ShowLastTick = False
          OptionsView.ShowTicks = False
          OptionsView.AngleEnd = -20
          OptionsView.AngleStart = 200
          StyleName = 'DarkNight'
          Value = 25.000000000000000000
          ZOrder = 10
        end
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ShowBorder = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = cxGroupBox1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object tCarTesterTimer: TTimer
    Interval = 200
    OnTimer = tCarTesterTimerTimer
    Left = 48
    Top = 120
  end
end
