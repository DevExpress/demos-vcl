inherited frmMultipleTotals: TfrmMultipleTotals
  Tag = 11
  Caption = 'Multiple Totals'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 1'
          UniqueName = ''
        end
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 2'
          UniqueName = ''
        end>
      inherited pgfCountry: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faRow
        Width = 150
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        CustomTotals = <
          item
            SummaryType = stAverage
          end
          item
          end
          item
            SummaryType = stMax
          end
          item
            SummaryType = stMin
          end
          item
            SummaryType = stCount
          end>
        TotalsVisibility = tvCustom
        Width = 150
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 4
        Hidden = True
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        GroupIndex = 0
        Width = 120
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        GroupIndex = 0
        GroupExpanded = False
        Width = 120
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 5
        Hidden = True
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 1
        Hidden = True
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        GroupIndex = 1
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 2
        Hidden = True
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        GroupIndex = 1
        GroupExpanded = False
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        AreaIndex = 3
        Hidden = True
        Visible = False
        UniqueName = 'Sales Person'
      end
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'You can manually specify the number and type of group totals to ' +
        'be displayed in each field. This demo shows how to display the A' +
        'verage, Sum, Maximum, Minimum and Count summaries for each Categ' +
        'ory group.'
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
