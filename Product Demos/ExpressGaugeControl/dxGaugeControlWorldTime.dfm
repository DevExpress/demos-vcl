inherited frmWorldTime: TfrmWorldTime
  Left = 451
  Top = 134
  Caption = 'World Time'
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
    object gcWashingtonTime: TdxGaugeControl [0]
      Left = 22
      Top = 62
      Width = 280
      Height = 367
      Constraints.MinHeight = 60
      Constraints.MinWidth = 50
      object gsWashingtonTimeBackgroundLayer: TdxGaugeCircularScale
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.ShowNeedle = False
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'White'
        ZOrder = 3
      end
      object gsWashingtonTimeSecondNeedle: TdxGaugeCircularScale
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 7
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.MinorTickCount = 0
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'White'
        ZOrder = 1
      end
      object gsWashingtonTimeHourNeedle: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.620000004768371600
        OptionsLayout.WidthFactor = 0.620000004768371600
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'CleanWhite'
        Value = 1.500000000000000000
      end
      object gsWashingtonTimeMinuteNeedle: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.899999976158142100
        OptionsLayout.WidthFactor = 0.899999976158142100
        OptionsView.ShowBackground = False
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'CleanWhite'
        Value = 20.000000000000000000
        ZOrder = 2
      end
    end
    object gcParisTime: TdxGaugeControl [1]
      Left = 316
      Top = 62
      Width = 281
      Height = 367
      Constraints.MinHeight = 60
      Constraints.MinWidth = 50
      object dxGaugeCircularScale1: TdxGaugeCircularScale
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.ShowNeedle = False
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'White'
        ZOrder = 3
      end
      object dxGaugeCircularScale2: TdxGaugeCircularScale
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 7
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.MinorTickCount = 0
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'White'
        ZOrder = 1
      end
      object dxGaugeCircularScale3: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.620000004768371600
        OptionsLayout.WidthFactor = 0.620000004768371600
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'CleanWhite'
        Value = 1.500000000000000000
      end
      object dxGaugeCircularScale4: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.899999976158142100
        OptionsLayout.WidthFactor = 0.899999976158142100
        OptionsView.ShowBackground = False
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'CleanWhite'
        Value = 20.000000000000000000
        ZOrder = 2
      end
    end
    object gcMoscowTime: TdxGaugeControl [2]
      Left = 611
      Top = 62
      Width = 280
      Height = 367
      Constraints.MinHeight = 60
      Constraints.MinWidth = 50
      object dxGaugeCircularScale5: TdxGaugeCircularScale
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.ShowNeedle = False
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'White'
        ZOrder = 3
      end
      object dxGaugeCircularScale6: TdxGaugeCircularScale
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 7
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.MinorTickCount = 0
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'White'
        ZOrder = 1
      end
      object dxGaugeCircularScale7: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.620000004768371600
        OptionsLayout.WidthFactor = 0.620000004768371600
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 13
        OptionsView.MaxValue = 12.000000000000000000
        OptionsView.ShowFirstTick = False
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 12.000000000000000000
        StyleName = 'CleanWhite'
        Value = 1.500000000000000000
      end
      object dxGaugeCircularScale8: TdxGaugeCircularScale
        OptionsLayout.HeightFactor = 0.899999976158142100
        OptionsLayout.WidthFactor = 0.899999976158142100
        OptionsView.ShowBackground = False
        OptionsView.MaxValue = 60.000000000000000000
        OptionsView.ShowLabels = False
        OptionsView.ShowTicks = False
        OptionsView.AngleEnd = -270
        OptionsView.AngleStart = 90
        OptionsView.MaxValue = 60.000000000000000000
        StyleName = 'CleanWhite'
        Value = 20.000000000000000000
        ZOrder = 2
      end
    end
    object gcLocalTime: TdxGaugeControl [3]
      Left = 22
      Top = 443
      Width = 869
      Height = 131
      Hint = 'Local time'
      Constraints.MinHeight = 30
      ShowHint = True
      object gsDigital: TdxGaugeDigitalScale
        OptionsLayout.CenterPositionFactorY = 0.503921568393707300
        OptionsView.DigitCount = 6
        OptionsView.DisplayMode = sdmSevenSegment
        OptionsView.SegmentColorOff = 0
        StyleName = 'White'
      end
    end
    object cxLabel1: TcxLabel [4]
      Left = 611
      Top = 28
      Caption = 'Moscow'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 751
      AnchorY = 42
    end
    object cxLabel2: TcxLabel [5]
      Left = 316
      Top = 28
      Caption = 'London'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 457
      AnchorY = 42
    end
    object cxLabel3: TcxLabel [6]
      Left = 22
      Top = 28
      Caption = 'Washington'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 162
      AnchorY = 42
    end
    inherited lgMainGroup: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gcWashingtonTime
      ControlOptions.OriginalHeight = 280
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gcParisTime
      ControlOptions.OriginalHeight = 280
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = gcMoscowTime
      ControlOptions.OriginalHeight = 280
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = gcLocalTime
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 913
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1SplitterItem3: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 4
      AutoCreated = True
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      Index = 0
      AutoCreated = True
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
