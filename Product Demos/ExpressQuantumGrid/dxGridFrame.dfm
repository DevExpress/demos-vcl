inherited dxGridFrame: TdxGridFrame
  inherited PanelGrid: TdxPanel
    object Grid: TcxGrid
      Left = 0
      Top = 0
      Width = 633
      Height = 670
      Align = alClient
      BorderStyle = cxcbsNone
      TabOrder = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Height = -17
      Offsets.ControlOffsetHorz = 1
      Offsets.ControlOffsetVert = 1
      Offsets.ItemOffset = 2
      Offsets.RootItemsAreaOffsetHorz = 3
      Offsets.RootItemsAreaOffsetVert = 3
      PixelsPerInch = 96
    end
  end
end
