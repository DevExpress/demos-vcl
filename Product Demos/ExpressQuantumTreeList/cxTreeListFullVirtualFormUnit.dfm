inherited frmFullVirtual: TfrmFullVirtual
  Caption = 'Virtual Mode'
  ClientHeight = 536
  ClientWidth = 798
  ExplicitWidth = 798
  ExplicitHeight = 536
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 798
    Height = 536
    ExplicitWidth = 798
    ExplicitHeight = 536
    inherited cxVirtualTreeList: TcxVirtualTreeList
      Width = 784
      Height = 430
      OptionsData.SmartLoad = True
      OnGetChildCount = cxVirtualTreeListGetChildCount
      OnGetNodeValue = cxVirtualTreeListGetNodeValue
      OnSetNodeValue = cxVirtualTreeListGetNodeValue
      ExplicitWidth = 784
      ExplicitHeight = 430
    end
    inherited sbMain: TdxStatusBar
      Width = 534
      Height = 25
      ExplicitWidth = 534
      ExplicitHeight = 25
    end
    inherited lgMainGroup: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      LayoutDirection = ldHorizontal
      Index = 1
    end
    inherited lgTools: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Visible = False
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 0
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahLeft
    end
    inherited dxLayoutItem4: TdxLayoutItem
      AlignVert = avClient
      ControlOptions.OriginalWidth = 534
    end
    inherited dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      AlignHorz = ahLeft
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
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
end
