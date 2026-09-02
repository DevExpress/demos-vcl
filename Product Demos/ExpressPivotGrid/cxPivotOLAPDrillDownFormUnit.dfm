inherited frmOLAPDrillDown: TfrmOLAPDrillDown
  Caption = 'OLAP Drill Down'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited UnboundPivot: TcxPivotGrid
      OptionsView.FilterFields = False
    end
    inherited cmbProvider: TcxComboBox
      Properties.OnChange = nil
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'In this demo, double click a summary cell to view the records fr' +
        'om the control'#39's underlying data source associated with this cel' +
        'l. The GridView displays the obtained data in a popup window.'
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
