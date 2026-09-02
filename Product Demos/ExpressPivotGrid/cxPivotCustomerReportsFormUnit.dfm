inherited cxPivotCustomerReports: TcxPivotCustomerReports
  Left = 181
  Top = 357
  Caption = 'Customer Reports'
  ClientHeight = 404
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Height = 404
    ExplicitHeight = 404
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 326
      DataSource = dmPivot.dsCustomerReports
      Groups = <
        item
          IsCaptionAssigned = True
          Caption = 'FieldsGroup 1'
          UniqueName = ''
        end>
      TabOrder = 2
      ExplicitHeight = 326
      object PivotGridProductName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Product Name'
        DataBinding.FieldName = 'ProductName'
        Visible = True
        Width = 180
        UniqueName = 'Product Name'
      end
      object PivotGridCompanyName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Customer'
        DataBinding.FieldName = 'CompanyName'
        ImageIndex = 2
        Visible = True
        Width = 150
        UniqueName = 'Customer'
      end
      object PivotGridProductAmount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Product Amount'
        DataBinding.FieldName = 'ProductAmount'
        Visible = True
        UniqueName = 'Product Amount'
      end
      object pgfOrderYear: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Order Year'
        DataBinding.FieldName = 'OrderDate'
        GroupIndex = 0
        GroupInterval = giDateYear
        SortOrder = soDescending
        Visible = True
        UniqueName = 'Order Year'
      end
      object pgfOrderQuarter: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        IsCaptionAssigned = True
        Caption = 'Order Quarter'
        DataBinding.FieldName = 'OrderDate'
        GroupIndex = 0
        GroupExpanded = False
        GroupInterval = giDateQuarter
        Visible = True
        UniqueName = 'Order Quarter'
      end
    end
    object cbYear: TcxComboBox [1]
      Left = 694
      Top = 141
      Properties.OnChange = FilterChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cbYear'
      Width = 62
    end
    object cbQuarter: TcxComboBox [2]
      Tag = 1
      Left = 694
      Top = 168
      AutoSize = False
      Properties.OnChange = FilterChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cbQuarter'
      Height = 21
      Width = 62
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo includes a set of reports which allows you to analyze ' +
        'the same business data in different layouts. You can use the Rad' +
        'io buttons to switch between the reports. This report the PivotG' +
        'rid control summarizes the orders customers made in a specific p' +
        'eriod and displays the ordered quantities for each quarter and f' +
        'or each product a customer bought.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lgFilter: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgFilter
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Separator'
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Year'
      Control = cbYear
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Quarter'
      Control = cbQuarter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutRadioButtonTopCustom: TdxLayoutRadioButtonItem
      Tag = 3
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Top 10 Customers'
      OnClick = rbCustomersClick
      Index = 3
    end
    object dxLayoutRadioButtonTopProd: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Top 2 Products'
      OnClick = rbCustomersClick
      Index = 2
    end
    object dxLayoutRadioButtonCustomers: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Customers'
      OnClick = rbCustomersClick
      Index = 0
    end
    object dxLayoutRadioButtonItemProductsFiltering: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Products (filtering)'
      OnClick = rbCustomersClick
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
