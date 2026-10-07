inherited frmGroupSummary: TfrmGroupSummary
  Caption = 'Group Summaries'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlUnbound: TcxTreeList
      PopupMenus.ColumnHeaderMenu.UseBuiltInMenu = True
      PopupMenus.GroupFooterMenu.UseBuiltInMenu = True
      inherited clName: TcxTreeListColumn
        Width = 95
      end
      inherited clOrbitNumb: TcxTreeListColumn
        Width = 98
      end
      inherited clDistance: TcxTreeListColumn
        Width = 82
      end
      inherited clPeriod: TcxTreeListColumn
        Width = 72
      end
      inherited clDiscoverer: TcxTreeListColumn
        Width = 69
      end
      inherited clDate: TcxTreeListColumn
        Width = 72
      end
      inherited clRadius: TcxTreeListColumn
        Width = 71
      end
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      ItemIndex = 1
    end
    object rbAlways: TdxLayoutRadioButtonItem
      Parent = lgTools
      AlignVert = avTop
      SizeOptions.Height = 17
      SizeOptions.Width = 176
      CaptionOptions.Text = 'Always Visible'
      OnClick = rbAlwaysClick
      Index = 0
    end
    object rbVisibleWhenExpanded: TdxLayoutRadioButtonItem
      Parent = lgTools
      AlignVert = avTop
      SizeOptions.Height = 17
      SizeOptions.Width = 176
      CaptionOptions.Text = 'Visible When Expanded'
      OnClick = rbAlwaysClick
      Index = 1
    end
    object rbInvisible: TdxLayoutRadioButtonItem
      Parent = lgTools
      AlignVert = avTop
      SizeOptions.Height = 17
      SizeOptions.Width = 176
      CaptionOptions.Text = 'Invisible'
      OnClick = rbAlwaysClick
      Index = 2
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
    Left = 352
    Top = 8
  end
end
