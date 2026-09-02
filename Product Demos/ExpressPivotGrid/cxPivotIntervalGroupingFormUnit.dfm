inherited frmIntervalGrouping: TfrmIntervalGrouping
  Left = 231
  Top = 256
  Caption = 'Interval Grouping'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 355
      Height = 208
      OptionsView.FilterFields = False
      OptionsView.FilterSeparator = False
      Styles.OnGetFieldHeaderStyle = PivotGridStylesGetFieldHeaderStyle
      TabOrder = 1
      ExplicitWidth = 355
      ExplicitHeight = 208
      inherited pgfCountry: TcxDBPivotGridField
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faRow
        Width = 150
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        AreaIndex = 1
        Visible = False
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        Caption = 'Order Date (Month)'
        Options.Filtering = True
        GroupInterval = giDateMonth
        SummaryType = stMax
        Width = 160
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
        AreaIndex = 5
        Visible = False
        UniqueName = 'Sales Person'
      end
      object pgfProductAlphabetical: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Product Alphabetical'
        DataBinding.FieldName = 'ProductName'
        GroupInterval = giAlphabetical
        SummaryType = stAverage
        Visible = True
        UniqueName = 'Product Alphabetical'
      end
    end
    object cbGroupType: TcxComboBox [1]
      Left = 390
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Date'
        'DateDay'
        'DateDayOfWeek'
        'DateDayOfYear'
        'DateWeekOfMonth'
        'DateWeekOfYear'
        'DateMonth'
        'DateQuarter'
        'DateYear')
      Properties.OnChange = cbGroupTypePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 186
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This example demonstrates the PivotGrid control'#39's data grouping ' +
        'feature. The OrderDate field is bound to a data source field whi' +
        'ch contains date/time values. The OrderDate field combines the d' +
        'ate information in years, months or quarterly intervals dependin' +
        'g on what you select. The data grouping feature is also applied ' +
        'to the Product field and this combines records into a single cat' +
        'egory if they start with the same letter.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Group Interval for the OrderDate Field'
      CaptionOptions.Layout = clTop
      Control = cbGroupType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object cbxShowProductAlphabetically: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acShowProductAlphabetically
      Index = 1
    end
  end
  inherited alMain: TActionList
    object acShowProductAlphabetically: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Product Alphabetically'
      Checked = True
      OnExecute = acShowProductAlphabeticallyExecute
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
