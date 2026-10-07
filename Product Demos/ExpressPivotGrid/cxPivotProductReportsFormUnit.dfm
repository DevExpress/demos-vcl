inherited cxPivotProductReports: TcxPivotProductReports
  Tag = 1
  Left = 236
  Top = 478
  Caption = 'Product Reports'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 225
      DataSource = dmPivot.dsProductReports
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 1'
          UniqueName = ''
        end>
      ExplicitHeight = 225
      object PivotGridCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Category Name'
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
          end>
        DataBinding.FieldName = 'CategoryName'
        TotalsVisibility = tvCustom
        Visible = True
        Width = 150
        UniqueName = 'Category Name'
      end
      object PivotGridProductName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Product Name'
        DataBinding.FieldName = 'ProductName'
        Visible = True
        Width = 180
        UniqueName = 'Product Name'
      end
      object PivotGridProductSales: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Product Sales'
        DataBinding.FieldName = 'ProductSales'
        ImageIndex = 3
        Visible = True
        Width = 150
        UniqueName = 'Product Sales'
      end
      object PivotGridShippedDate: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'ShippedDate'
        Hidden = True
        UniqueName = 'ShippedDate'
      end
      object pgfShippedYear: TcxDBPivotGridField
        AreaIndex = 3
        IsCaptionAssigned = True
        Caption = 'Shipped Year'
        DataBinding.FieldName = 'ShippedDate'
        GroupIndex = 0
        GroupInterval = giDateYear
        Visible = True
        UniqueName = 'Shipped Year'
      end
      object pgfShippedQuarter: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Shipped Quarter'
        DataBinding.FieldName = 'ShippedDate'
        GroupInterval = giDateQuarter
        Visible = True
        UniqueName = 'Shipped Quarter'
      end
      object pgfShippedMonth: TcxDBPivotGridField
        AreaIndex = 4
        IsCaptionAssigned = True
        Caption = 'Shipped Month'
        DataBinding.FieldName = 'ShippedDate'
        GroupIndex = 0
        GroupExpanded = False
        GroupInterval = giDateMonth
        Visible = True
        UniqueName = 'Shipped Month'
      end
      object pgMinimumSale: TcxDBPivotGridField
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Minimum Sale'
        DataBinding.FieldName = 'ProductSales'
        SummaryType = stMin
        UniqueName = 'Minimum Sale'
      end
      object pgAverageSale: TcxDBPivotGridField
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = 'Average Sale'
        DataBinding.FieldName = 'ProductSales'
        SummaryType = stAverage
        UniqueName = 'Average Sale'
      end
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo includes a set of reports which allows you to analyze ' +
        'the same business data in different layouts. Use the Radio butto' +
        'ns to switch between the reports. The "Top 3 Products" report sh' +
        'ows the three most popular products in each category. Clicking t' +
        'he '#39#39'Product Name'#39#39' field header reverses the sort order and the' +
        ' report displays the three least popular products in each catego' +
        'ry.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 102
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object rbCategorySales: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Height = 17
      SizeOptions.Width = 103
      CaptionOptions.Text = 'Category Sales'
      OnClick = rbDemoSubTypeClick
      Index = 0
    end
    object rbProductSales: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Height = 17
      SizeOptions.Width = 103
      CaptionOptions.Text = 'Product Sales'
      OnClick = rbDemoSubTypeClick
      Index = 1
    end
    object rbIntervalGrouping: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup2
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Interval Grouping'
      OnClick = rbDemoSubTypeClick
      Index = 0
    end
    object rbMultiplySubtotals: TdxLayoutRadioButtonItem
      Tag = 3
      Parent = dxLayoutGroup2
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Multiple Subtotals'
      OnClick = rbDemoSubTypeClick
      Index = 1
    end
    object rbAverage: TdxLayoutRadioButtonItem
      Tag = 4
      Parent = dxLayoutGroup3
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Average Sales'
      OnClick = rbDemoSubTypeClick
      Index = 0
    end
    object rbTop3Products: TdxLayoutRadioButtonItem
      Tag = 5
      Parent = dxLayoutGroup3
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Top 3 Products'
      OnClick = rbDemoSubTypeClick
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
