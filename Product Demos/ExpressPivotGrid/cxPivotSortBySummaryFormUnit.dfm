inherited frmSortBySummary: TfrmSortBySummary
  Tag = 14
  Caption = 'Sort by Summary'
  ClientHeight = 577
  ClientWidth = 1056
  OnCreate = FormCreate
  ExplicitWidth = 1056
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1056
    Height = 577
    ExplicitWidth = 1056
    ExplicitHeight = 577
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 850
      Height = 499
      Styles.OnGetFieldHeaderStyle = PivotGridStylesGetFieldHeaderStyle
      TabOrder = 3
      ExplicitWidth = 850
      ExplicitHeight = 499
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
        Hidden = True
        Visible = False
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
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 5
        Hidden = True
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 133
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        Hidden = True
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        IsCaptionAssigned = True
        Caption = 'Discount (Avg)'
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
        AreaIndex = 1
        SortBySummaryInfo.Field = pgfExtendedPrice
        SortOrder = soDescending
        Width = 150
        UniqueName = 'Sales Person'
      end
    end
    object cbFieldList: TcxComboBox [1]
      Left = 885
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cbFieldListPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 152
    end
    object cbSortBy: TcxComboBox [2]
      Left = 885
      Top = 104
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cbSortByPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 152
    end
    object cmbSortOrder: TcxComboBox [3]
      Left = 885
      Top = 149
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Default'
        'Ascending'
        'Descending')
      Properties.OnChange = cxComboBox1PropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Default'
      Width = 152
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        ' This demo illustrates the Sorting By Summary feature. This feat' +
        'ure allows you to sort the values of a particular column field o' +
        'r row field by the summary values calculated against a specific ' +
        'data field. In this example, the '#39#39'Sales Person'#39#39' field'#39's values' +
        ' are sorted by summary values calculated against another data fi' +
        'eld. You can select this data field via the combo box at the top' +
        ' of the PivotGrid control. Clicking the '#39'Sales Person'#39' field rev' +
        'erses the sort order.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Sort the'
      CaptionOptions.Layout = clTop
      Control = cbFieldList
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'field by'
      CaptionOptions.Layout = clTop
      Control = cbSortBy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Sort by Summary Default Order'
      CaptionOptions.Layout = clTop
      Control = cmbSortOrder
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
