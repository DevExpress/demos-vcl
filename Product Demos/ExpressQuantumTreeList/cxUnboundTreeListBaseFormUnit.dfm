inherited cxUnboundTreeListDemoUnitForm: TcxUnboundTreeListDemoUnitForm
  Caption = 'cxUnboundTreeListDemoUnitForm'
  ClientHeight = 455
  ClientWidth = 760
  ExplicitWidth = 760
  ExplicitHeight = 455
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 760
    Height = 455
    ExplicitWidth = 760
    ExplicitHeight = 455
    object tlUnbound: TcxTreeList [0]
      Left = 10
      Top = 10
      Width = 524
      Height = 397
      Bands = <>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.ChangeDelay = 1000
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
    end
    inherited lgTools: TdxLayoutGroup
      Visible = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = tlUnbound
      ControlOptions.OriginalHeight = 444
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
