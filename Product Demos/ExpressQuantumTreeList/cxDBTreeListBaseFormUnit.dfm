inherited cxDBTreeListDemoUnitForm: TcxDBTreeListDemoUnitForm
  Caption = 'cxDBTreeListDemoUnitForm'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    object tlDB: TcxDBTreeList [0]
      Left = 10
      Top = 10
      Width = 257
      Height = 262
      Bands = <>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.ChangeDelay = 1000
      RootValue = -1
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
    end
    inherited lgMainGroup: TdxLayoutGroup
      Index = 1
    end
    inherited lgTools: TdxLayoutGroup
      Index = 0
    end
    inherited liDescription: TdxLayoutLabeledItem
      Index = 0
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 2
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = tlDB
      ControlOptions.OriginalHeight = 309
      ControlOptions.OriginalWidth = 250
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
