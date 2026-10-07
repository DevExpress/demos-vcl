inherited frmThreeFourthCircularGauges: TfrmThreeFourthCircularGauges
  Left = 568
  Top = 113
  Caption = 'Three-Fourth Circular Gauges'
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
    object gcCircularThreeFourthAfrica: TdxGaugeControl [0]
      Left = 10
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl5CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale
        Value = 35.000000000000000000
      end
    end
    object gcCircularThreeFourthDisco: TdxGaugeControl [1]
      Left = 563
      Top = 10
      Width = 262
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl7CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale
        StyleName = 'Disco'
        Value = 75.000000000000000000
      end
    end
    object gcCircularThreeFourthFuture: TdxGaugeControl [2]
      Left = 286
      Top = 10
      Width = 263
      Height = 460
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl6CircularThreeFourthScale1: TdxGaugeCircularThreeFourthScale
        OptionsView.MaxValue = 200.000000000000000000
        OptionsView.MaxValue = 200.000000000000000000
        StyleName = 'Future'
        Value = 100.000000000000000000
      end
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
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularThreeFourthAfrica
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularThreeFourthDisco
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcCircularThreeFourthFuture
      ControlOptions.OriginalHeight = 250
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
