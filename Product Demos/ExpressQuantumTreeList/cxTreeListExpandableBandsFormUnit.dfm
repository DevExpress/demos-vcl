inherited frmExpandableBands: TfrmExpandableBands
  Caption = 'Expandable Bands'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlUnbound: TcxTreeList
      inherited clName: TcxTreeListColumn
        Width = 92
      end
      inherited clOrbitNumb: TcxTreeListColumn
        Width = 103
      end
      inherited clDistance: TcxTreeListColumn
        Width = 70
      end
      inherited clPeriod: TcxTreeListColumn
        Width = 75
      end
      inherited clDiscoverer: TcxTreeListColumn
        Width = 72
      end
      inherited clDate: TcxTreeListColumn
        Width = 73
      end
      inherited clRadius: TcxTreeListColumn
        Width = 74
      end
    end
    object cbExpandColumn: TcxComboBox [1]
      Left = 596
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      TabOrder = 1
      OnClick = cbExpandColumnClick
      Width = 182
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      SizeOptions.Height = 21
      CaptionOptions.Text = 'Expandable Band'
      CaptionOptions.Layout = clTop
      Control = cbExpandColumn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 0
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
end
