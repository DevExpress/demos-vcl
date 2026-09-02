inherited frmLinearGauges: TfrmLinearGauges
  Left = 568
  Top = 113
  Caption = 'Linear Gauges'
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
    object gcLinearYellowSubmarine: TdxGaugeControl [0]
      Left = 10
      Top = 10
      Width = 155
      Height = 460
      BorderStyle = cxcbsNone
      LookAndFeel.NativeStyle = True
      Transparent = True
      object dxGaugeLinearScale2: TdxGaugeLinearScale
        OptionsView.LabelOrientation = toBottomToTop
        StyleName = 'YellowSubmarine'
        Value = 84.000000000000000000
      end
      object dxGaugeControl3LinearScale1: TdxGaugeLinearScale
        AnchorScaleIndex = 0
        OptionsView.ShowBackground = False
        OptionsView.MaxValue = 500.000000000000000000
        OptionsView.AlignElements = taRightJustify
        OptionsView.ShowLevelBar = False
        OptionsView.MaxValue = 500.000000000000000000
        StyleName = 'YellowSubmarine'
        Value = 84.000000000000000000
        ZOrder = 1
      end
    end
    object gcLinearSmart: TdxGaugeControl [1]
      Left = 179
      Top = 10
      Width = 477
      Height = 460
      BorderStyle = cxcbsNone
      LookAndFeel.NativeStyle = True
      Transparent = True
      object dxGaugeLinearScale1: TdxGaugeLinearScale
        OptionsView.AlignElements = taRightJustify
        OptionsView.RotationAngle = ra180
        StyleName = 'Smart'
        Value = 50.000000000000000000
      end
      object dxGaugeControl2LinearScale1: TdxGaugeLinearScale
        AnchorScaleIndex = 0
        OptionsView.ShowBackground = False
        OptionsView.ShowLevelBar = False
        OptionsView.RotationAngle = ra180
        StyleName = 'YellowSubmarine'
        Value = 50.000000000000000000
        ZOrder = 1
        object dxGaugeControl2LinearScale1Range: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.360000014305114800
          Color = -13640900
          ValueEnd = 20.000000000000000000
          WidthFactor = 0.050000000745058060
          CenterPositionFactor = 0.360000014305114800
        end
        object dxGaugeControl2LinearScale1Range1: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.360000014305114800
          Color = -256
          ValueEnd = 80.000000000000000000
          ValueStart = 20.000000000000000000
          WidthFactor = 0.050000000745058060
          CenterPositionFactor = 0.360000014305114800
        end
      end
    end
    object gcLinearIceColdZone: TdxGaugeControl [2]
      Left = 670
      Top = 10
      Width = 155
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl1LinearScale1: TdxGaugeLinearScale
        StyleName = 'DarkNight'
        Value = 35.000000000000000000
        object dxGaugeControl1LinearScale1Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Temperature'
          OptionsLayout.CenterPositionFactorX = 0.720000028610229500
          OptionsLayout.CenterPositionFactorY = 0.699999988079071100
          OptionsView.RotationAngle = 90.000000000000000000
        end
      end
    end
    object dxLayoutControl4SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl4SplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object dxLayoutControl4Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcLinearYellowSubmarine
      ControlOptions.OriginalHeight = 258
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl4Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcLinearSmart
      ControlOptions.OriginalHeight = 258
      ControlOptions.OriginalWidth = 441
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl4Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcLinearIceColdZone
      ControlOptions.OriginalHeight = 446
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
end
