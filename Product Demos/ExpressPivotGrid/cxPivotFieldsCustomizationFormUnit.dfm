inherited frmFieldsCustomization: TfrmFieldsCustomization
  Caption = 'Fields Customization'
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 397
      TabOrder = 1
      OnCustomization = PivotGridCustomization
      ExplicitWidth = 397
      inherited pgfCountry: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        AreaIndex = 0
        Visible = False
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        Width = 155
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 4
        Hidden = True
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        AreaIndex = 5
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 155
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 6
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
        AreaIndex = 2
        Visible = False
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 3
        Hidden = True
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        UniqueName = 'Sales Person'
      end
    end
    object cxbtnSetVisible: TcxButton [1]
      Left = 432
      Top = 41
      Width = 144
      Height = 25
      Caption = 'Show Customization Form'
      TabOrder = 0
      OnClick = cxbtnSetVisibleClick
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 162
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This example shows the Fields Customization Form. It allows an e' +
        'nd-user to temporarily hide specific fields.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Visible = False
      Control = cxbtnSetVisible
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 170
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
