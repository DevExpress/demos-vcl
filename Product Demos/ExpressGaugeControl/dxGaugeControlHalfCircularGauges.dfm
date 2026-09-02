inherited frmHalfCircularGauges: TfrmHalfCircularGauges
  Left = 568
  Top = 113
  Caption = 'Half-Circular Gauges '
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
    object gcCircularHalfClassic: TdxGaugeControl [0]
      Left = 286
      Top = 10
      Width = 263
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularHalfScale1: TdxGaugeCircularHalfScale
        OptionsView.MaxValue = 200.000000000000000000
        OptionsView.MaxValue = 200.000000000000000000
        StyleName = 'Classic'
        Value = 45.000000000000000000
      end
    end
    object gcCircularHalfCleanWhite: TdxGaugeControl [1]
      Left = 563
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularHalfScale2: TdxGaugeCircularHalfScale
        OptionsView.LabelOrientation = loRadial
        StyleName = 'CleanWhite'
        Value = 75.000000000000000000
        object dxGaugeCircularHalfScale2Range: TdxGaugeCircularScaleRange
          Color = -16744448
          RadiusFactor = 0.949999988079071100
          ValueEnd = 80.000000000000000000
          ValueStart = 20.000000000000000000
          WidthFactor = 0.050000000745058060
        end
        object dxGaugeCircularHalfScale2Range1: TdxGaugeCircularScaleRange
          Color = -256
          RadiusFactor = 0.949999988079071100
          ValueEnd = 20.000000000000000000
          WidthFactor = 0.050000000745058060
        end
        object dxGaugeCircularHalfScale2Range2: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 0.949999988079071100
          ValueEnd = 100.000000000000000000
          ValueStart = 80.000000000000000000
          WidthFactor = 0.050000000745058060
        end
      end
    end
    object gcCircularHalfYellowSubmarine: TdxGaugeControl [2]
      Left = 10
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl4CircularHalfScale1: TdxGaugeCircularHalfScale
        OptionsView.LabelOrientation = loCircular
        StyleName = 'Smart'
        Value = 35.000000000000000000
      end
      object dxGaugeControl4CircularHalfScale2: TdxGaugeCircularHalfScale
        AnchorScaleIndex = 0
        OptionsLayout.CenterPositionFactorY = 0.579394817352294900
        OptionsLayout.HeightFactor = 0.600000023841857900
        OptionsLayout.WidthFactor = 0.600000023841857900
        OptionsView.ShowBackground = False
        OptionsView.LabelOrientation = loCircular
        OptionsView.ShowNeedle = False
        OptionsView.ShowSpindleCap = False
        StyleName = 'Smart'
        Value = 50.000000000000000000
        ZOrder = 1
      end
    end
    object dxLayoutControl2Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularHalfClassic
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl2Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularHalfCleanWhite
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl2Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularHalfYellowSubmarine
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl2SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl2SplitterItem2: TdxLayoutSplitterItem
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
