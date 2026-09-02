inherited frmSmartMeter: TfrmSmartMeter
  Left = 451
  Top = 134
  Caption = 'Smart Meter'
  ClientHeight = 634
  ClientWidth = 913
  OldCreateOrder = True
  Position = poScreenCenter
  ExplicitWidth = 913
  ExplicitHeight = 634
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 913
    Height = 634
    ExplicitWidth = 913
    ExplicitHeight = 634
    object dxGaugeControl2: TdxGaugeControl [0]
      Left = 22
      Top = 28
      Width = 869
      Height = 546
      BorderStyle = cxcbsNone
      Transparent = True
      object gcsGas: TdxGaugeCircularScale
        AnchorScaleIndex = 1
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.300000011920929000
        OptionsLayout.CenterPositionFactorY = 0.250000000000000000
        OptionsLayout.HeightFactor = 0.479999989271164000
        OptionsLayout.WidthFactor = 0.300000011920929000
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        StyleName = 'CleanWhite'
        Value = 50.000000000000000000
        OnAnimate = gcsGasAnimate
        ZOrder = 1
        object gcsHazeGasCaptionValue: TdxGaugeQuantitativeScaleCaption
          Text = '50'
          OptionsLayout.CenterPositionFactorX = 0.899999976158142100
          OptionsLayout.CenterPositionFactorY = 0.300000011920929000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGreen
          OptionsView.Font.Height = -40
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object gcsHazeCaption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Gas'
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -33
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale1Range1: TdxGaugeCircularScaleRange
          Color = -4144960
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
          WidthFactor = 0.150000005960464500
        end
        object dxGaugeControl2CircularScale1Range2: TdxGaugeCircularScaleRange
          Color = -16744448
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          WidthFactor = 0.150000005960464500
        end
      end
      object dxGaugeControl2ContainerScale1: TdxGaugeContainerScale
      end
      object gcsColdWater: TdxGaugeCircularScale
        AnchorScaleIndex = 1
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.699999988079071100
        OptionsLayout.CenterPositionFactorY = 0.250000000000000000
        OptionsLayout.HeightFactor = 0.479999989271164000
        OptionsLayout.WidthFactor = 0.300000011920929000
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        StyleName = 'CleanWhite'
        Value = 50.000000000000000000
        OnAnimate = gcsColdWaterAnimate
        ZOrder = 2
        object gcsHazeColdWaterCaptionValue: TdxGaugeQuantitativeScaleCaption
          Text = '50'
          OptionsLayout.CenterPositionFactorX = 0.899999976158142100
          OptionsLayout.CenterPositionFactorY = 0.300000011920929000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlue
          OptionsView.Font.Height = -40
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale1Caption3: TdxGaugeQuantitativeScaleCaption
          Text = 'Cold Water'
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -33
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale1Range3: TdxGaugeCircularScaleRange
          Color = -4144960
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
          WidthFactor = 0.150000005960464500
        end
        object dxGaugeControl2CircularScale1Range4: TdxGaugeCircularScaleRange
          Color = -16776961
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          WidthFactor = 0.150000005960464500
        end
      end
      object gcsHotWater: TdxGaugeCircularScale
        AnchorScaleIndex = 1
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.300000011920929000
        OptionsLayout.CenterPositionFactorY = 0.750000000000000000
        OptionsLayout.HeightFactor = 0.479999989271164000
        OptionsLayout.WidthFactor = 0.300000011920929000
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        StyleName = 'CleanWhite'
        Value = 50.000000000000000000
        OnAnimate = gcsHotWaterAnimate
        ZOrder = 3
        object gcsHazeHotWaterCaptionValue: TdxGaugeQuantitativeScaleCaption
          Text = '50'
          OptionsLayout.CenterPositionFactorX = 0.899999976158142100
          OptionsLayout.CenterPositionFactorY = 0.300000011920929000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clRed
          OptionsView.Font.Height = -40
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale2Caption2: TdxGaugeQuantitativeScaleCaption
          Text = 'Hot Water'
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -33
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale2Range1: TdxGaugeCircularScaleRange
          Color = -4144960
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
          WidthFactor = 0.150000005960464500
        end
        object dxGaugeControl2CircularScale2Range2: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          WidthFactor = 0.150000005960464500
        end
      end
      object gcsElectricity: TdxGaugeCircularScale
        AnchorScaleIndex = 1
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.699999988079071100
        OptionsLayout.CenterPositionFactorY = 0.750000000000000000
        OptionsLayout.HeightFactor = 0.479999989271164000
        OptionsLayout.WidthFactor = 0.300000011920929000
        OptionsView.ShowBackground = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = 45
        OptionsView.AngleStart = 270
        OptionsView.ShowNeedle = False
        StyleName = 'CleanWhite'
        Value = 50.000000000000000000
        OnAnimate = gcsElectricityAnimate
        ZOrder = 4
        object gcsHazeElectricityCaptionValue: TdxGaugeQuantitativeScaleCaption
          Text = '50'
          OptionsLayout.CenterPositionFactorX = 0.899999976158142100
          OptionsLayout.CenterPositionFactorY = 0.300000011920929000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = 4227327
          OptionsView.Font.Height = -40
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale3Caption2: TdxGaugeQuantitativeScaleCaption
          Text = 'Electricity'
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWindowText
          OptionsView.Font.Height = -33
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl2CircularScale3Range1: TdxGaugeCircularScaleRange
          Color = -4144960
          RadiusFactor = 1.000000000000000000
          ValueEnd = 100.000000000000000000
          WidthFactor = 0.150000005960464500
        end
        object dxGaugeControl2CircularScale3Range2: TdxGaugeCircularScaleRange
          Color = -32768
          RadiusFactor = 1.000000000000000000
          LinkedWithScaleValue = rlsvValueEnd
          WidthFactor = 0.150000005960464500
        end
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dxGaugeControl2
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 24
  end
end
