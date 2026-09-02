inherited dxDBFrame: TdxDBFrame
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dsMainSource: TDataSource
    OnDataChange = dsMainSourceDataChange
    Left = 80
    Top = 80
  end
end
