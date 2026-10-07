inherited frmNodeHeight: TfrmNodeHeight
  Caption = 'Customizable Node Height'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlUnbound: TcxTreeList
      DefaultRowHeight = 19
    end
    object seHeight: TcxSpinEdit [1]
      Left = 661
      Top = 41
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 1000.000000000000000000
      Properties.OnChange = cxSpinEdit1PropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Value = 100
      Width = 80
    end
    object seDefaultHeight: TcxSpinEdit [2]
      Left = 661
      Top = 68
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 1000.000000000000000000
      Properties.OnChange = seDefaultHeightPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Value = 30
      Width = 80
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Height = 21
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'First Node'#39's Height:'
      Control = seHeight
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Default Row Height:'
      Control = seDefaultHeight
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxImgTreeList: TcxImageList
    FormatVersion = 1
  end
  object Timer: TTimer
    Interval = 50
    OnTimer = TimerTimer
    Left = 616
    Top = 8
  end
end
