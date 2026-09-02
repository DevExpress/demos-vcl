inherited fmWideCircularGauges: TfmWideCircularGauges
  Left = 608
  Top = 201
  Caption = 'Wide Circular Gauges'
  ClientHeight = 517
  ClientWidth = 1072
  KeyPreview = True
  Position = poScreenCenter
  ExplicitWidth = 1072
  ExplicitHeight = 517
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1072
    Height = 517
    ExplicitWidth = 1072
    ExplicitHeight = 517
    object gcDigitalDeepFire: TdxGaugeControl [0]
      Left = 10
      Top = 247
      Width = 519
      Height = 222
      BorderStyle = cxcbsNone
      Transparent = True
      object gcDigitalDeepFireCircularWideScale1: TdxGaugeCircularWideScale
        StyleName = 'White'
        Value = 25.000000000000000000
        object gcDigitalDeepFireCircularWideScale1Range1: TdxGaugeCircularWideScaleRange
          Color = -16744448
          RadiusFactor = 0.899999976158142100
          ValueEnd = 40.000000000000000000
        end
        object gcDigitalDeepFireCircularWideScale1Range2: TdxGaugeCircularWideScaleRange
          Color = -256
          RadiusFactor = 0.899999976158142100
          ValueEnd = 80.000000000000000000
          ValueStart = 40.000000000000000000
        end
        object gcDigitalDeepFireCircularWideScale1Range3: TdxGaugeCircularWideScaleRange
          Color = -65536
          RadiusFactor = 0.899999976158142100
          ValueEnd = 100.000000000000000000
          ValueStart = 80.000000000000000000
        end
      end
    end
    object gcDigitalIceColdZone: TdxGaugeControl [1]
      Left = 10
      Top = 10
      Width = 519
      Height = 223
      BorderStyle = cxcbsNone
      Transparent = True
      object gcDigitalIceColdZoneCircularWideScale1: TdxGaugeCircularWideScale
        Value = 40.000000000000000000
      end
    end
    object gcDigitalWhite: TdxGaugeControl [2]
      Left = 543
      Top = 10
      Width = 519
      Height = 223
      BorderStyle = cxcbsNone
      Transparent = True
      object gcDigitalWhiteCircularWideScale1: TdxGaugeCircularWideScale
        StyleName = 'Retro'
        Value = 60.000000000000000000
      end
    end
    object gcDigitalScaleText: TdxGaugeControl [3]
      Left = 543
      Top = 247
      Width = 519
      Height = 222
      BorderStyle = cxcbsNone
      Transparent = True
      object gcDigitalScaleTextCircularWideScale1: TdxGaugeCircularWideScale
        StyleName = 'SilverBlur'
        Value = 30.000000000000000000
      end
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
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
    object dxLayoutItem1: TdxLayoutItem
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
    object dxLayoutControl5Item3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
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
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = gcDigitalScaleText
      ControlOptions.OriginalHeight = 120
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutControl5Group2
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl5SplitterItem5: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
  end
end
