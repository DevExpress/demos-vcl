inherited frmDragAndDrop: TfrmDragAndDrop
  Caption = 'Drag And Drop'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlDB: TcxDBTreeList
      OptionsData.Editing = False
      OnDragOver = tlDBDragOver
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
  inherited ImageList: TcxImageList
    FormatVersion = 1
  end
end
