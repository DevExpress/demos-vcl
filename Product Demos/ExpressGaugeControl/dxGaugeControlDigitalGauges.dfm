inherited frmDigitalGauges: TfrmDigitalGauges
  Left = 568
  Top = 113
  Caption = 'Digital Gauges '
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
    object gcDigitalDeepFire: TdxGaugeControl [0]
      Left = 10
      Top = 168
      Width = 401
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale5: TdxGaugeDigitalScale
        OptionsView.DigitCount = 6
        StyleName = 'DeepFire'
        Value = '23:12:14'
      end
    end
    object gcDigitalIceColdZone: TdxGaugeControl [1]
      Left = 10
      Top = 10
      Width = 401
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale3: TdxGaugeDigitalScale
        OptionsView.DigitCount = 6
        StyleName = 'IceColdZone'
        Value = '123.4'
      end
    end
    object gcDigitalClassic: TdxGaugeControl [2]
      Left = 10
      Top = 326
      Width = 401
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale1: TdxGaugeDigitalScale
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        StyleName = 'Disco'
        Value = 'All Symbols @->-'
      end
    end
    object gcDigitalFuture: TdxGaugeControl [3]
      Left = 425
      Top = 168
      Width = 400
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale8: TdxGaugeDigitalScale
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Squares
        StyleName = 'Future'
        Value = '+12 C'#39
      end
    end
    object gcDigitalWhite: TdxGaugeControl [4]
      Left = 425
      Top = 10
      Width = 400
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale6: TdxGaugeDigitalScale
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        OptionsView.SegmentColorOff = 0
        StyleName = 'White'
        Value = 'Gauges'
      end
    end
    object gcDigitalScaleText: TdxGaugeControl [5]
      Left = 425
      Top = 326
      Width = 400
      Height = 144
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeDigitalScale7: TdxGaugeDigitalScale
        OptionsView.DigitCount = 8
        OptionsView.SegmentColorOff = 0
        StyleName = 'YellowSubmarine'
        Value = '+12,4 ABC'
      end
    end
    object dxLayoutControl5Group1: TdxLayoutAutoCreatedGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 2
      AutoCreated = True
    end
    object dxLayoutControl5Group2: TdxLayoutAutoCreatedGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 0
      AutoCreated = True
    end
    object dxLayoutControl5SplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl5Item4: TdxLayoutItem
      Parent = dxLayoutControl5Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalDeepFire
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl5Item1: TdxLayoutItem
      Parent = dxLayoutControl5Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalIceColdZone
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl5Item5: TdxLayoutItem
      Parent = dxLayoutControl5Group2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalClassic
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl5Item6: TdxLayoutItem
      Parent = dxLayoutControl5Group1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalFuture
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl5Item3: TdxLayoutItem
      Parent = dxLayoutControl5Group1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalWhite
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl5Item7: TdxLayoutItem
      Parent = dxLayoutControl5Group1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalScaleText
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl5SplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutControl5Group2
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl5SplitterItem3: TdxLayoutSplitterItem
      Parent = dxLayoutControl5Group2
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
    object dxLayoutControl5SplitterItem4: TdxLayoutSplitterItem
      Parent = dxLayoutControl5Group1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl5SplitterItem5: TdxLayoutSplitterItem
      Parent = dxLayoutControl5Group1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 3
    end
  end
end
