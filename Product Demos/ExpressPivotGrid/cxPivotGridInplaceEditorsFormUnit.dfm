inherited frmInplaceEditors: TfrmInplaceEditors
  Caption = 'Inplace Editors'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      inherited pgfCountry: TcxDBPivotGridField
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Visible = False
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 5
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        AreaIndex = 6
        Visible = False
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 7
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 8
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 2
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        AreaIndex = 3
        Visible = False
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 4
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 220
        UniqueName = 'Sales Person'
      end
      object pgfPercentsOfColumn: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Percentage'
        DataBinding.FieldName = 'Extended Price'
        PropertiesClassName = 'TcxProgressBarProperties'
        SummaryVariation = svPercentOfColumn
        Visible = True
        UniqueName = 'Percentage'
      end
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The Pivot Grid can use different editors to display data in its ' +
        'cells. This example demonstrates summary cells in the Progress B' +
        'ar editor.'
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
