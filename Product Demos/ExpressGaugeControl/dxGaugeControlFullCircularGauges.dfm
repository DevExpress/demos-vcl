inherited frmFullCircularGauges: TfrmFullCircularGauges
  Left = 568
  Top = 113
  Caption = 'Full Circular Gauges '
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
    object gcCircularDeepFire: TdxGaugeControl [0]
      Left = 10
      Top = 10
      Width = 263
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale3: TdxGaugeCircularScale
        OptionsView.MajorTickCount = 12
        OptionsView.MaxValue = 220.000000000000000000
        OptionsView.MinorTickCount = 5
        OptionsView.MaxValue = 220.000000000000000000
        StyleName = 'DeepFire'
        Value = 45.000000000000000000
        ZOrder = 1
        object dxGaugeCircularScale3Caption1: TdxGaugeQuantitativeScaleCaption
        end
        object dxGaugeCircularScale3Caption2: TdxGaugeQuantitativeScaleCaption
          Text = 'km/h'
          OptionsLayout.CenterPositionFactorX = 0.375000000000000000
          OptionsLayout.CenterPositionFactorY = 0.870000004768371600
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = 4227327
          OptionsView.Font.Height = -9
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
      end
      object dxGaugeControl6dxGaugeCircularScale1: TdxGaugeCircularScale
        AnchorScaleIndex = 0
        OptionsLayout.HeightFactor = 0.600000023841857900
        OptionsLayout.WidthFactor = 0.600000023841857900
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 9
        OptionsView.MaxValue = 8.000000000000000000
        OptionsView.MinorTickCount = 2
        OptionsView.AngleEnd = 45
        OptionsView.ShowSpindleCap = False
        OptionsView.MaxValue = 8.000000000000000000
        StyleName = 'DeepFire'
        Value = 3.500000000000000000
        object dxGaugeControl6dxGaugeCircularScale1Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'RPMx1000'
          OptionsLayout.CenterPositionFactorY = 0.699999988079071100
        end
      end
    end
    object gcCircularCleanWhite: TdxGaugeControl [1]
      Left = 563
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale1: TdxGaugeCircularScale
        OptionsView.MinorTickCount = 5
        OptionsView.LabelOrientation = loCircular
        StyleName = 'CleanWhite'
        Value = 76.000000000000000000
      end
    end
    object gcCircularWhite: TdxGaugeControl [2]
      Left = 287
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeCircularScale4: TdxGaugeCircularScale
        OptionsView.MinorTickCount = 5
        OptionsView.LabelOrientation = loCircularOutward
        StyleName = 'White'
        Value = 25.000000000000000000
        object dxGaugeCircularScale4Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'bar'
          OptionsLayout.CenterPositionFactorY = 0.829999983310699500
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -16
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeCircularScale4Caption2: TdxGaugeQuantitativeScaleCaption
          Text = 'EN 837-1'
          OptionsLayout.CenterPositionFactorY = 0.400000005960464400
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clGrayText
          OptionsView.Font.Height = -8
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeCircularScale4Range: TdxGaugeCircularScaleRange
          Color = -16744448
          RadiusFactor = 0.550000011920929000
          ValueEnd = 40.000000000000000000
        end
        object dxGaugeCircularScale4Range1: TdxGaugeCircularScaleRange
          Color = -256
          RadiusFactor = 0.550000011920929000
          ValueEnd = 80.000000000000000000
          ValueStart = 40.000000000000000000
        end
        object dxGaugeCircularScale4Range2: TdxGaugeCircularScaleRange
          Color = -65536
          RadiusFactor = 0.550000011920929000
          ValueEnd = 100.000000000000000000
          ValueStart = 80.000000000000000000
        end
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 3
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularDeepFire
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularCleanWhite
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 249
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularWhite
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem
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
