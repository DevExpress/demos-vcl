inherited frmCompactLayout: TfrmCompactLayout
  Tag = 13
  Caption = 'Compact Layout'
  ClientHeight = 579
  ClientWidth = 1027
  OnShow = FormShow
  ExplicitWidth = 1027
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1027
    Height = 579
    ExplicitWidth = 1027
    ExplicitHeight = 579
    inherited DBPivotGrid: TcxDBPivotGrid
      Left = 326
      Width = 525
      Height = 518
      Customization.AvailableFieldsSorted = True
      Customization.Site = cxPivotGridDemoUnitForm.Owner
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 1'
          UniqueName = ''
        end>
      OptionsView.ColumnFields = False
      OptionsView.DataFields = False
      OptionsView.FilterFields = False
      OptionsView.RowFields = False
      OptionsView.RowTotalsLocation = rtlTree
      OptionsView.TotalsForSingleValues = True
      TabOrder = 1
      OnCustomization = DBPivotGridCustomization
      ExplicitLeft = 326
      ExplicitWidth = 525
      ExplicitHeight = 518
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
        Area = faRow
        AreaIndex = 2
        GroupIndex = 0
        Width = 115
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 3
        GroupIndex = 0
        GroupExpanded = False
        Width = 125
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 4
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
    object grbCustomization: TcxGroupBox [1]
      Left = 10
      Top = 10
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 16053234
      TabOrder = 0
      Transparent = True
      Height = 518
      Width = 300
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The PivotGridControl shows all rows hierarchically by default. T' +
        'his demo illustrates the Compact and Full Layout. In the Compact' +
        ' Layout, child nodes are displayed below parent nodes. The Full ' +
        'Layout displays child nodes next to parent nodes.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutItem1: TdxLayoutItem
      Index = 2
    end
    object lsplCutomizationForm: TdxLayoutSplitterItem
      Parent = lgMainGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object liCustomization: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      Visible = False
      SizeOptions.Width = 300
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = grbCustomization
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = lgTools
      CaptionOptions.Text = 'Pivot Layout:'
      Index = 0
    end
    object rbCompactLayout: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = lgTools
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Compact'
      Checked = True
      TabStop = True
      OnClick = rbLayoutClick
      Index = 1
    end
    object rbFullLayout: TdxLayoutRadioButtonItem
      Parent = lgTools
      SizeOptions.Height = 17
      SizeOptions.Width = 126
      CaptionOptions.Text = 'Full'
      OnClick = rbLayoutClick
      Index = 2
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
