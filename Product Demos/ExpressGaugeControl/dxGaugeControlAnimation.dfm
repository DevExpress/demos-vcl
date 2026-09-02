inherited frmAnimation: TfrmAnimation
  Left = 568
  Top = 113
  Caption = 'Animation'
  ClientHeight = 626
  ClientWidth = 835
  Position = poScreenCenter
  OnCreate = FormCreate
  ExplicitWidth = 835
  ExplicitHeight = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 835
    Height = 626
    ExplicitWidth = 835
    ExplicitHeight = 626
    object dxGaugeControl2: TdxGaugeControl [0]
      Left = 10
      Top = 10
      Width = 616
      Height = 568
      Transparent = True
      object dxGaugeControl2CircularScale1: TdxGaugeCircularScale
        OptionsAnimate.TransitionEffect = ateLinear
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.299301922321319600
        OptionsLayout.CenterPositionFactorY = 0.509324014186859100
        OptionsLayout.HeightFactor = 0.776224017143249500
        OptionsLayout.WidthFactor = 0.591622829437255800
        StyleName = 'Classic'
        object dxGaugeControl2CircularScale1Range1: TdxGaugeCircularScaleRange
          Color = -6370968
          RadiusFactor = 0.851999998092651400
          ValueEnd = 32.000000000000000000
          WidthFactor = 0.013000000268220900
        end
        object dxGaugeControl2CircularScale1Range2: TdxGaugeCircularScaleRange
          Color = -9600
          RadiusFactor = 0.851999998092651400
          ValueEnd = 67.000000000000000000
          ValueStart = 32.000000000000000000
          WidthFactor = 0.013000000268220900
        end
        object dxGaugeControl2CircularScale1Range3: TdxGaugeCircularScaleRange
          Color = -1466979
          RadiusFactor = 0.851999998092651400
          ValueEnd = 100.000000000000000000
          ValueStart = 67.000000000000000000
          WidthFactor = 0.013000000268220900
        end
      end
      object dxGaugeControl2LinearScale1: TdxGaugeLinearScale
        OptionsAnimate.TransitionEffect = ateLinear
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.793077111244201600
        OptionsLayout.CenterPositionFactorY = 0.502850353717804000
        OptionsLayout.HeightFactor = 0.864802062511444100
        OptionsLayout.WidthFactor = 0.364747077226638800
        StyleName = 'Classic'
        ZOrder = 1
        object dxGaugeControl2LinearScale1Range1: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.432000011205673200
          Color = -6370968
          ValueEnd = 32.000000000000000000
          WidthFactor = 0.021999999880790710
          CenterPositionFactor = 0.432000011205673200
        end
        object dxGaugeControl2LinearScale1Range2: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.432000011205673200
          Color = -9600
          ValueEnd = 67.000000000000000000
          ValueStart = 32.000000000000000000
          WidthFactor = 0.021999999880790710
          CenterPositionFactor = 0.432000011205673200
        end
        object dxGaugeControl2LinearScale1Range4: TdxGaugeLinearScaleRange
          CenterPositionFactor = 0.432000011205673200
          Color = -1466979
          ValueEnd = 100.000000000000000000
          ValueStart = 67.000000000000000000
          WidthFactor = 0.021999999880790710
          CenterPositionFactor = 0.432000011205673200
        end
      end
    end
    object rgTransitionEffect: TcxRadioGroup [1]
      Left = 640
      Top = 37
      Caption = 'Transition Effect'
      Properties.Items = <>
      Properties.OnChange = rgTransitionEffectPropertiesChange
      TabOrder = 2
      Height = 300
      Width = 185
    end
    object cbTransitionEffectMode: TcxComboBox [2]
      Left = 757
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'In'
        'Out'
        'InOut')
      Properties.OnChange = cbTransitionEffectModePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'In'
      Width = 68
    end
    inherited lgMainGroup: TdxLayoutGroup
      ShowBorder = False
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dxGaugeControl2
      ControlOptions.OriginalHeight = 554
      ControlOptions.OriginalWidth = 616
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgMainGroup
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rgTransitionEffect
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Transition Effect Mode:'
      Control = cbTransitionEffectMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 43
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object Timer1: TTimer
    Interval = 1050
    OnTimer = Timer1Timer
    Left = 264
    Top = 480
  end
end
