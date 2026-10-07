inherited frmSummaryVariation: TfrmSummaryVariation
  Tag = 12
  Caption = 'Summary Variation'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 208
      OptionsView.FilterFields = False
      Styles.OnGetContentStyle = PivotGridStylesGetContentStyle
      TabOrder = 1
      ExplicitHeight = 208
      inherited pgfCountry: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 150
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 5
        Hidden = True
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 6
        Hidden = True
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        Width = 120
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 2
        Hidden = True
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 3
        Hidden = True
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        AreaIndex = 4
        Hidden = True
        Visible = False
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        Width = 150
        UniqueName = 'Sales Person'
      end
      object pgfVariation: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Absolute Variation'
        DataBinding.FieldName = 'Quantity'
        SummaryVariation = svAbsolute
        Visible = True
        Width = 100
        UniqueName = 'Absolute Variation'
      end
    end
    object cbVariationType: TcxComboBox [1]
      Left = 444
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Absolute'
        'Percent'
        'PercentOfColumn'
        'PercentOfRow')
      Properties.OnChange = cbVariationTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Absolute'
      Width = 132
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo shows how summary values correlate to values in other ' +
        'cells, and allows you to perform data analysis. For instance, yo' +
        'u can display the differences between summaries in the current a' +
        'nd previous cells. You can also use the Summary Variation Type c' +
        'ombo box to choose the summary display mode. This option changes' +
        ' values in every second data column.'
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Summary Variation Type'
      CaptionOptions.Layout = clTop
      Control = cbVariationType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
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
