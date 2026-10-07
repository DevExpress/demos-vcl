inherited frmLabelOrientation: TfrmLabelOrientation
  Caption = 'Digital Scale Display Modes'
  ClientHeight = 696
  ClientWidth = 812
  Position = poDesigned
  ExplicitWidth = 812
  ExplicitHeight = 696
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 812
    Height = 696
    ExplicitWidth = 812
    ExplicitHeight = 696
    object dxGaugeControl1: TdxGaugeControl [0]
      Left = 194
      Top = 489
      Width = 596
      Height = 147
      Transparent = True
      object dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.244966432452201900
        OptionsLayout.HeightFactor = 0.469999998807907100
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        Value = 'All Symbols ... (&?)'
      end
      object dxGaugeControl1DigitalScale2: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.748322129249572700
        OptionsLayout.HeightFactor = 0.469999998807907100
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Squares
        Value = 'All Symbols ... (&?)'
        ZOrder = 1
      end
    end
    object dxGaugeControl2: TdxGaugeControl [1]
      Left = 194
      Top = 335
      Width = 596
      Height = 148
      Transparent = True
      object dxGaugeControl2DigitalScale1: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.259999990463256800
        OptionsLayout.HeightFactor = 0.473333358764648400
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix5x8Dots
        Value = '+123 ABC abc @->-'
      end
      object dxGaugeControl2DigitalScale2: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.759999990463256800
        OptionsLayout.HeightFactor = 0.469999998807907100
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix5x8Squares
        Value = '+123 ABC abc @->-'
        ZOrder = 1
      end
    end
    object dxGaugeControl3: TdxGaugeControl [2]
      Left = 194
      Top = 28
      Width = 596
      Height = 148
      Transparent = True
      object dxGaugeControl3DigitalScale1: TdxGaugeDigitalScale
        OptionsLayout.HeightFactor = 0.760000228881835900
        OptionsView.DisplayMode = sdmSevenSegment
        Value = '1'#39'234.5'
      end
    end
    object dxGaugeControl4: TdxGaugeControl [3]
      Left = 194
      Top = 182
      Width = 596
      Height = 147
      Transparent = True
      object dxGaugeControl4DigitalScale1: TdxGaugeDigitalScale
        OptionsLayout.HeightFactor = 0.731543183326721200
        OptionsView.DigitCount = 8
        Value = '+12.3'#39' ABC'
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '4) All Font symbols'
      Control = dxGaugeControl1
      ControlOptions.OriginalHeight = 151
      ControlOptions.OriginalWidth = 620
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '3) Digits, some symbols and letters'
      Control = dxGaugeControl2
      ControlOptions.OriginalHeight = 152
      ControlOptions.OriginalWidth = 620
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '1) Digits'
      Control = dxGaugeControl3
      ControlOptions.OriginalHeight = 152
      ControlOptions.OriginalWidth = 620
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = '2) Digits, Signs and Capital Letters'
      Control = dxGaugeControl4
      ControlOptions.OriginalHeight = 151
      ControlOptions.OriginalWidth = 620
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 744
    Top = 0
  end
end
