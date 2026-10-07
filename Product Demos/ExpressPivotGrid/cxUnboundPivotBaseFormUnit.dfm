inherited cxUnboundPivotGridDemoUnitForm: TcxUnboundPivotGridDemoUnitForm
  Caption = ''
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    object UnboundPivot: TcxPivotGrid [0]
      Left = 20
      Top = 10
      Width = 587
      Height = 346
      Groups = <>
      PopupMenus.FieldHeaderMenu.Items = [fpmiHide, fpmiOrder, fpmiFieldList, fpmiSummaryType]
      TabOrder = 0
    end
    inherited lgMainGroup: TdxLayoutGroup
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      Visible = False
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = UnboundPivot
      ControlOptions.OriginalHeight = 404
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
