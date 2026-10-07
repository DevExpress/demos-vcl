inherited frmSalesPerson: TfrmSalesPerson
  Left = 225
  Top = 301
  Caption = 'Sales Person'
  ClientWidth = 595
  ExplicitWidth = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 595
    ExplicitWidth = 595
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 409
      DataSource = dmPivot.dsSalesPerson
      Styles.OnGetColumnHeaderStyle = PivotGridStylesGetColumnHeaderStyle
      Styles.OnGetRowHeaderStyle = PivotGridStylesGetColumnHeaderStyle
      ExplicitWidth = 409
      object pgfCountry: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'Country'
        Visible = True
        Width = 100
        UniqueName = 'Country'
      end
      object pgfName: TcxDBPivotGridField
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Product Name'
        DataBinding.FieldName = 'ProductName'
        Visible = True
        Width = 100
        UniqueName = 'Product Name'
      end
      object pgfCategoryName: TcxDBPivotGridField
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = 'Category Name'
        DataBinding.FieldName = 'CategoryName'
        Visible = True
        Width = 100
        OnGetGroupImageIndex = pgfCategoryNameGetGroupImageIndex
        UniqueName = 'Category Name'
      end
      object pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 8
        IsCaptionAssigned = True
        Caption = 'Order Date'
        DataBinding.FieldName = 'OrderDate'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Order Date'
      end
      object pgfOrderYear: TcxDBPivotGridField
        AreaIndex = 9
        IsCaptionAssigned = True
        Caption = 'Order Year'
        DataBinding.FieldName = 'OrderDate'
        GroupInterval = giDateYear
        Visible = True
        Width = 100
        UniqueName = 'Order Year'
      end
      object pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 10
        IsCaptionAssigned = True
        Caption = 'Order Quarter'
        DataBinding.FieldName = 'OrderDate'
        GroupInterval = giDateQuarter
        Visible = True
        Width = 100
        UniqueName = 'Order Quarter'
      end
      object pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 11
        IsCaptionAssigned = True
        Caption = 'Order Month'
        DataBinding.FieldName = 'OrderDate'
        GroupInterval = giDateMonth
        Visible = True
        Width = 100
        UniqueName = 'Order Month'
      end
      object pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 3
        DataBinding.FieldName = 'UnitPrice'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'UnitPrice'
      end
      object pgfQuantity: TcxDBPivotGridField
        AreaIndex = 4
        DataBinding.FieldName = 'Quantity'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Quantity'
      end
      object pgfDiscount: TcxDBPivotGridField
        AreaIndex = 5
        DataBinding.FieldName = 'Discount'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Discount'
      end
      object pgfExtendedPrice: TcxDBPivotGridField
        AreaIndex = 6
        DataBinding.FieldName = 'Extended Price'
        Options.Filtering = False
        ImageIndex = 3
        Visible = True
        Width = 100
        UniqueName = 'Extended Price'
      end
      object pgfSalesPerson: TcxDBPivotGridField
        AreaIndex = 7
        DataBinding.FieldName = 'Sales Person'
        ImageIndex = 0
        Visible = True
        Width = 100
        UniqueName = 'Sales Person'
      end
    end
    inherited lgTools: TdxLayoutGroup
      Visible = False
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
