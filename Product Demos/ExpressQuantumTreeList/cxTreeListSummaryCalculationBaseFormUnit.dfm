inherited frmSummaryCalculationBase: TfrmSummaryCalculationBase
  Caption = 'Customizable Summary Base'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlUnbound: TcxTreeList
      inherited clName: TcxTreeListColumn
        Width = 98
      end
      inherited clOrbitNumb: TcxTreeListColumn
        Width = 110
      end
      inherited clDistance: TcxTreeListColumn
        Width = 79
      end
      inherited clPeriod: TcxTreeListColumn
        Width = 68
      end
      inherited clDiscoverer: TcxTreeListColumn
        Width = 68
      end
      inherited clDate: TcxTreeListColumn
        Width = 68
      end
      inherited clRadius: TcxTreeListColumn
        Width = 68
      end
    end
    object rbAll: TcxRadioButton [1]
      Left = 596
      Top = 41
      Caption = 'All Child Nodes'
      Color = 16053234
      ParentColor = False
      TabOrder = 1
      OnClick = rbImmediateClick
      AutoSize = True
      ParentBackground = False
      Transparent = True
    end
    object rbImmediate: TcxRadioButton [2]
      Left = 596
      Top = 66
      Caption = 'Immediate Child Nodes Only'
      Color = 16053234
      ParentColor = False
      TabOrder = 2
      OnClick = rbImmediateClick
      AutoSize = True
      ParentBackground = False
      Transparent = True
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Visible = False
      Control = rbAll
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Visible = False
      Control = rbImmediate
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 162
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
  object Timer: TTimer
    Interval = 50
    OnTimer = TimerTimer
    Left = 416
    Top = 8
  end
end
