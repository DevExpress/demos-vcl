inherited frmTotalsLocation: TfrmTotalsLocation
  Tag = 13
  Caption = 'Totals Location'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 1'
          UniqueName = ''
        end>
      TabOrder = 2
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
        AreaIndex = 1
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
        GroupIndex = 0
        Width = 115
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        GroupIndex = 0
        GroupExpanded = False
        Width = 125
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 2
        GroupIndex = 0
        GroupExpanded = False
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
        AreaIndex = 0
        Width = 150
        UniqueName = 'Sales Person'
      end
    end
    object cbColumnTotalsLocation: TcxComboBox [1]
      Left = 444
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Far'
        'Near')
      Properties.OnChange = cbTotalsLocationPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Far'
      Width = 132
    end
    object cbRowTotalsLocation: TcxComboBox [2]
      Left = 444
      Top = 104
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Far'
        'Near'
        'Tree')
      Properties.OnChange = cbTotalsLocationPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Far'
      Width = 132
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo shows you how to specify the location of group and gra' +
        'nd totals. These totals can be displayed before or after the cor' +
        'responding data cells.'
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Column Totals Location'
      CaptionOptions.WordWrap = True
      CaptionOptions.Layout = clTop
      Control = cbColumnTotalsLocation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Row Totals Location'
      CaptionOptions.WordWrap = True
      CaptionOptions.Layout = clTop
      Control = cbRowTotalsLocation
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
