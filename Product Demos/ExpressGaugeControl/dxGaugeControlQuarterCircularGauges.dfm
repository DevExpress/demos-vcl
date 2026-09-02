inherited frmQuarterCircularGauges: TfrmQuarterCircularGauges
  Left = 568
  Top = 113
  Caption = 'Quarter-Circular Gauges '
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
    object gcCircularQuarterYellowSubmarine: TdxGaugeControl [0]
      Left = 10
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl7CircularQuarterLeftScale1: TdxGaugeCircularQuarterLeftScale
        OptionsView.LabelOrientation = loCircularOutward
        StyleName = 'YellowSubmarine'
        Value = 20.000000000000000000
      end
    end
    object gcCircularQuarterDeepFire: TdxGaugeControl [1]
      Left = 286
      Top = 10
      Width = 263
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl8CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale
        OptionsView.MaxValue = 200.000000000000000000
        OptionsView.MaxValue = 200.000000000000000000
        StyleName = 'DeepFire'
        Value = 54.000000000000000000
        object dxGaugeControl8CircularQuarterRightScale1Range: TdxGaugeCircularScaleRange
          Color = -16744448
          ValueEnd = 40.000000000000000000
        end
        object dxGaugeControl8CircularQuarterRightScale1Range1: TdxGaugeCircularScaleRange
          Color = -65536
          ValueEnd = 100.000000000000000000
          ValueStart = 75.000000000000000000
        end
        object dxGaugeControl8CircularQuarterRightScale1Range2: TdxGaugeCircularScaleRange
          Color = -256
          ValueEnd = 75.000000000000000000
          ValueStart = 40.000000000000000000
        end
      end
    end
    object gcCircularQuarterSmart: TdxGaugeControl [2]
      Left = 563
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl9CircularQuarterRightScale1: TdxGaugeCircularQuarterRightScale
        StyleName = 'DarkNight'
        Value = 30.000000000000000000
      end
    end
    object dxLayoutControl3SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl3SplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object dxLayoutControl3Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularQuarterYellowSubmarine
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl3Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularQuarterSmart
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl3Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularQuarterDeepFire
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
