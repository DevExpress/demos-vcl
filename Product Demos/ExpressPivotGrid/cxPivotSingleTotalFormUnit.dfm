inherited frmSingleTotal: TfrmSingleTotal
  Tag = 10
  Caption = 'Single Total (Automatic Totals)'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 225
      OptionsDataField.Area = dfaColumn
      Styles.OnGetFieldHeaderStyle = PivotGridStylesGetFieldHeaderStyle
      TabOrder = 2
      ExplicitHeight = 225
      inherited pgfCountry: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faRow
        Width = 160
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 160
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 3
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
        Area = faColumn
        AreaIndex = 1
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 4
        Hidden = True
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'UnitPrice (Max)'
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Quantity (Sum)'
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = 'Discount (Average)'
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        AreaIndex = 1
        Hidden = True
        Visible = False
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        AreaIndex = 2
        Hidden = True
        Visible = False
        UniqueName = 'Sales Person'
      end
    end
    object cbField: TcxComboBox [1]
      Left = 444
      Top = 59
      Properties.OnChange = cbFieldPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 132
    end
    object cbSummaryType: TcxComboBox [2]
      Left = 444
      Top = 104
      Properties.OnChange = cbSummaryTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 132
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      ItemIndex = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The PivotGridControl automatically calculates grand totals for e' +
        'ach row and column. Totals are also calculated for each value gr' +
        'oup. Note that the type of the automatic totals matches the type' +
        ' of the summaries. In this demo, you can use a number of options' +
        ' to control totals'#39' summary type.'
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Field'
      CaptionOptions.Layout = clTop
      Control = cbField
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Summary Type'
      CaptionOptions.Layout = clTop
      Control = cbSummaryType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
