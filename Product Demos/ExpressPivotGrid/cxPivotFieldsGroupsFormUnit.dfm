inherited frmGroups: TfrmGroups
  Caption = 'Groups'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 208
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldGroup 1'
          UniqueName = ''
        end
        item
          IsCaptionAssigned = True
          Caption = 'FieldGroup 2'
          UniqueName = ''
        end
        item
          IsCaptionAssigned = True
          Caption = 'FieldGroup 3'
          UniqueName = ''
        end>
      OptionsView.FilterFields = False
      OptionsView.FilterSeparator = False
      Styles.OnGetFieldHeaderStyle = PivotGridStylesGetFieldHeaderStyle
      TabOrder = 2
      ExplicitHeight = 208
      inherited pgfCountry: TcxDBPivotGridField
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faRow
        GroupIndex = 0
        GroupExpanded = False
        Width = 150
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        GroupIndex = 0
        Width = 150
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 2
        Hidden = True
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        Caption = 'Year'
        GroupIndex = 1
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        Caption = 'Quarter'
        GroupIndex = 1
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 2
        Caption = 'Month'
        GroupIndex = 1
        GroupExpanded = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 4
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        GroupIndex = 2
        GroupExpanded = False
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 3
        AllowedAreas = [faFilter]
        GroupExpanded = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        GroupIndex = 2
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        AreaIndex = 1
        UniqueName = 'Sales Person'
      end
    end
    object cxbtnSetVisible: TcxButton [1]
      Left = 444
      Top = 41
      Width = 132
      Height = 25
      Caption = 'Expand All Groups'
      TabOrder = 0
      OnClick = cxbtnSetVisibleClick
    end
    object cxButton1: TcxButton [2]
      Left = 444
      Top = 72
      Width = 132
      Height = 25
      Caption = 'Collapse All Groups'
      TabOrder = 1
      OnClick = cxButton1Click
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The PivotGridControl allows you to join related fields into grou' +
        'ps. When end-users drag a field that'#39's included into a group the' +
        ' entire group is moved as the result. End-users cannot break the' +
        ' established groups. They can expand and collapse groups at any ' +
        'levels to show or hide the data related to particular fields. In' +
        ' this demo, fields in the Row, Column and Data areas are joined ' +
        'into groups. Try to drag them, expand and collapse individual fi' +
        'elds.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Visible = False
      Control = cxbtnSetVisible
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = -1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
