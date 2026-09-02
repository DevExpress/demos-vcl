inherited cxPivotOrderReports: TcxPivotOrderReports
  Tag = 2
  Left = 383
  Top = 420
  Caption = 'Order Reports'
  ClientHeight = 427
  ClientWidth = 797
  ExplicitWidth = 797
  ExplicitHeight = 427
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 797
    Height = 427
    ExplicitWidth = 797
    ExplicitHeight = 427
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 611
      Height = 332
      DataSource = dmPivot.dsOrderReports
      TabOrder = 1
      ExplicitWidth = 611
      ExplicitHeight = 332
      object PivotGridOrderID: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Order'
        DataBinding.FieldName = 'OrderID'
        Visible = True
        Width = 150
        UniqueName = 'Order'
      end
      object PivotGridProductID: TcxDBPivotGridField
        AreaIndex = 0
        DataBinding.FieldName = 'ProductID'
        Options.Filtering = False
        UniqueName = 'ProductID'
      end
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
      object PivotGridUnitPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Unit Price'
        DataBinding.FieldName = 'UnitPrice'
        Options.Filtering = False
        SummaryType = stAverage
        Visible = True
        Width = 100
        UniqueName = 'Unit Price'
      end
      object PivotGridQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        DataBinding.FieldName = 'Quantity'
        DisplayFormat = '0'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Quantity'
      end
      object PivotGridDiscount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        DataBinding.FieldName = 'Discount'
        DisplayFormat = '0.00 %'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Discount'
      end
      object PivotGridExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 3
        DataBinding.FieldName = 'Extended Price'
        Options.Filtering = False
        Visible = True
        Width = 100
        UniqueName = 'Extended Price'
      end
    end
    object cbFilter: TcxComboBox [1]
      Left = 693
      Top = 145
      Properties.OnChange = cbFilterPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cbOrderID'
      Width = 59
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo includes a set of reports which allows you to analyze ' +
        'the same business data in different forms. You can use the Radio' +
        ' buttons to switch between the reports. These reports show all t' +
        'he orders and their details are listed as sub-categories. The Pi' +
        'vot Grid control calculates multiple summaries for each order: A' +
        'verage Unit Price, Total Quantity, Average Discount and Total Pr' +
        'ice.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Order ID'
      Control = cbFilter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Separator'
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object lgFilter: TdxLayoutGroup
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lgFilter
      AlignHorz = ahLeft
      Index = 0
    end
    object rbOrder: TdxLayoutRadioButtonItem
      Parent = dxLayoutGroup1
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 55
      CaptionOptions.Text = 'Order'
      Checked = True
      TabStop = True
      OnClick = rbLayoutTypeClick
      Index = 0
    end
    object rbOrderFilter: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = dxLayoutGroup1
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 98
      CaptionOptions.Text = 'Order (filtering)'
      OnClick = rbLayoutTypeClick
      Index = 1
    end
    object rbQuantity: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = dxLayoutGroup1
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 66
      CaptionOptions.Text = 'Quantity'
      OnClick = rbLayoutTypeClick
      Index = 2
    end
    object rbAverage: TdxLayoutRadioButtonItem
      Tag = 3
      Parent = dxLayoutGroup1
      AlignVert = avClient
      SizeOptions.Height = 17
      SizeOptions.Width = 113
      CaptionOptions.Text = 'Average Unit Price'
      OnClick = rbLayoutTypeClick
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
