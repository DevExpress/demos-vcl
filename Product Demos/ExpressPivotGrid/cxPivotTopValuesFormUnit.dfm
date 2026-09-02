inherited frmTopValues: TfrmTopValues
  Tag = 15
  Caption = 'Top Values'
  OnShow = FormShow
  ExplicitHeight = 320
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 344
      Height = 208
      Styles.OnGetColumnHeaderStyle = GetGroupHeaderStyle
      Styles.OnGetRowHeaderStyle = GetGroupHeaderStyle
      TabOrder = 2
      ExplicitWidth = 344
      ExplicitHeight = 208
      inherited pgfCountry: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Visible = False
        Width = 200
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        SortBySummaryInfo.Field = pgfExtendedPrice
        TopValueCount = 4
        TopValueShowOthers = True
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
        AreaIndex = 6
        Hidden = True
        Visible = False
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 7
        Hidden = True
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 8
        Hidden = True
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 2
        Hidden = True
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        AreaIndex = 3
        Hidden = True
        Visible = False
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 4
        Hidden = True
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Order Amount'
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        SortBySummaryInfo.Field = pgfExtendedPrice
        TopValueCount = 4
        TopValueShowOthers = True
        Width = 150
        UniqueName = 'Sales Person'
      end
    end
    object speTopCount: TcxSpinEdit [1]
      Left = 455
      Top = 41
      Properties.ImmediatePost = True
      Properties.MaxValue = 200.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = UpdateSettings
      Style.HotTrack = False
      TabOrder = 0
      Value = 1
      Width = 121
    end
    object cbFieldList: TcxComboBox [2]
      Left = 455
      Top = 68
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cbFieldListPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 121
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This example demonstrates the PivotGrid control'#39's Top X Values f' +
        'eature. You can specify the number of the higest or lowest value' +
        's you want to use to calculate summaries for any column field or' +
        ' row field. In this example, the PivotGrid control displays the ' +
        'specified number of values for the selected field. Note that the' +
        ' values in this field are sorted against the values in the '#39#39'Ord' +
        'er Amount'#39#39' field.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Show top'
      Control = speTopCount
      ControlOptions.MinWidth = 121
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'values for field'
      Control = cbFieldList
      ControlOptions.MinWidth = 121
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object cbTopValuesShowOthers: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acTopValuesShowOthers
      Index = 1
    end
  end
  inherited alMain: TActionList
    object acTopValuesShowOthers: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Top Values Show Others'
      Checked = True
      OnExecute = UpdateSettings
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
