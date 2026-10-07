inherited frmGaugeStyles: TfrmGaugeStyles
  Left = 608
  Top = 201
  Caption = 'Gauge Styles'
  ClientHeight = 517
  ClientWidth = 1072
  KeyPreview = True
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 1072
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1072
    Height = 517
    ExplicitWidth = 1072
    ExplicitHeight = 463
    object tcStyles: TcxTabControl [0]
      Left = 22
      Top = 28
      Width = 1028
      Height = 369
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.MultiLine = True
      OnChange = tcStylesChange
      ClientRectBottom = 365
      ClientRectLeft = 4
      ClientRectRight = 1024
      ClientRectTop = 4
      object dxGaugeControl1: TdxGaugeControl
        Left = 4
        Top = 4
        Width = 1020
        Height = 361
        Align = alClient
        BorderStyle = cxcbsNone
        Constraints.MinHeight = 60
        Constraints.MinWidth = 60
        Transparent = True
        ExplicitWidth = 281
        ExplicitHeight = 455
        object dxGaugeControl1CircularScale1: TdxGaugeCircularScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.677102565765380900
          OptionsLayout.CenterPositionFactorY = 0.280000001192092900
          OptionsLayout.HeightFactor = 0.528765141963958700
          OptionsLayout.WidthFactor = 0.235376864671707200
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWhite
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 7
        end
        object dxGaugeControl1DigitalScale1: TdxGaugeDigitalScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.509999990463256800
          OptionsLayout.CenterPositionFactorY = 0.876287817955017100
          OptionsLayout.HeightFactor = 0.180000007152557400
          OptionsLayout.WidthFactor = 0.314534157514572200
          OptionsView.DigitCount = 0
          OptionsView.DisplayMode = sdmMatrix5x8Dots
          ZOrder = 1
        end
        object dxGaugeControl1LinearScale1: TdxGaugeLinearScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.886385500431060700
          OptionsLayout.CenterPositionFactorY = 0.260797262191772400
          OptionsLayout.HeightFactor = 0.500000000000000000
          OptionsLayout.WidthFactor = 0.176537871360778800
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWhite
          OptionsView.Font.Height = -11
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 4
        end
        object dxGaugeControl1CircularHalfScale1: TdxGaugeCircularHalfScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.139029338955879200
          OptionsLayout.CenterPositionFactorY = 0.824705898761749200
          OptionsLayout.HeightFactor = 0.300000011920929000
          OptionsLayout.WidthFactor = 0.266139864921569800
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWhite
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 11
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 2
        end
        object dxGaugeControl1CircularQuarterLeftScale1: TdxGaugeCircularQuarterLeftScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.129999995231628400
          OptionsLayout.CenterPositionFactorY = 0.231764703989028900
          OptionsLayout.HeightFactor = 0.400000005960464400
          OptionsLayout.WidthFactor = 0.235307604074478100
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWhite
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 6
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 5
        end
        object dxGaugeControl1CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.876021802425384600
          OptionsLayout.CenterPositionFactorY = 0.789411783218383700
          OptionsLayout.HeightFactor = 0.400000005960464400
          OptionsLayout.WidthFactor = 0.239882439374923700
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clWhite
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.MajorTickCount = 6
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 3
        end
        object dxGaugeControl1ContainerScale1: TdxGaugeContainerScale
          OptionsLayout.HeightFactor = 0.880534529685974100
        end
        object dxGaugeControl1CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.379582941532135000
          OptionsLayout.CenterPositionFactorY = 0.280000001192092900
          OptionsLayout.HeightFactor = 0.518576979637146000
          OptionsLayout.WidthFactor = 0.259587198495864900
          OptionsView.MaxValue = 500.000000000000000000
          OptionsView.MaxValue = 500.000000000000000000
          ZOrder = 6
        end
        object dxGaugeControl1DigitalScaleDate: TdxGaugeDigitalScale
          AnchorScaleIndex = 6
          OptionsLayout.CenterPositionFactorX = 0.509999990463256800
          OptionsLayout.CenterPositionFactorY = 0.656498014926910500
          OptionsLayout.HeightFactor = 0.180000007152557400
          OptionsLayout.WidthFactor = 0.449999988079071000
          OptionsView.DigitCount = 0
          OptionsView.DigitSpacingFactor = 0.100000001490116100
          OptionsView.DisplayMode = sdmMatrix8x14Dots
          ZOrder = 8
        end
      end
    end
    object cxTrackBar1: TcxTrackBar [1]
      Left = 22
      Top = 403
      Align = alClient
      Properties.Frequency = 10
      Properties.Max = 500
      Properties.OnChange = cxTrackBar1PropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Height = 54
      Width = 1028
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldVertical
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = tcStyles
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 463
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avBottom
      Control = cxTrackBar1
      ControlOptions.OriginalHeight = 54
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 24
    Top = 40
  end
end
