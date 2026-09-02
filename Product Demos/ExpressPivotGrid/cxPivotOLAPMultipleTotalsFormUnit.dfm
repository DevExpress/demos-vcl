inherited frmOLAPMultipleTotals: TfrmOLAPMultipleTotals
  Caption = 'OLAP Multiple Totals'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited cmbProvider: TcxComboBox
      Properties.OnChange = nil
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
