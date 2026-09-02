inherited frmSummaryDataSet: TfrmSummaryDataSet
  Left = 274
  Top = 149
  Caption = 'Summary Dataset'
  ClientHeight = 635
  ClientWidth = 826
  ExplicitWidth = 826
  ExplicitHeight = 635
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 826
    Height = 635
    ExplicitWidth = 826
    ExplicitHeight = 635
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 640
      Height = 320
      Align = alTop
      ExplicitWidth = 640
      ExplicitHeight = 320
      inherited pgfCountry: TcxDBPivotGridField
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faRow
        Width = 180
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
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 6
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 1
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 1
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        AreaIndex = 2
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 3
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        AreaIndex = 4
        UniqueName = 'Sales Person'
      end
    end
    object Grid: TcxGrid [1]
      Left = 10
      Top = 346
      Width = 640
      Height = 221
      TabOrder = 1
      RootLevelOptions.DetailTabsPosition = dtpTop
      OnActiveTabChanged = GridActiveTabChanged
      object SummaryChartView: TcxGridDBChartView
        DataController.DataSource = PivotGridSummaryDataSource
        DiagramPie.Active = True
      end
      object SummaryTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = PivotGridSummaryDataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object DrillDownTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = PivotGridDrillDownDataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object SummaryTableLevel: TcxGridLevel
        Caption = 'SummaryTable'
        GridView = SummaryTableView
      end
      object SummaryChartLevel: TcxGridLevel
        Tag = 1
        Caption = 'SummaryChart'
        GridView = SummaryChartView
      end
      object DrillDownTableLevel: TcxGridLevel
        Tag = 2
        Caption = 'DrillDownTable'
        GridView = DrillDownTableView
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
      LayoutDirection = ldVertical
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The Pivot Grid can be linked to a special in-memory read-only da' +
        'taset component. This component is populated based on the Pivot ' +
        'Grid'#39's summary data. You can bind this dataset to any data-aware' +
        ' control via a TDataSource component.'#13#10'The example demonstrates ' +
        'a data set component bound to different ExpressQuantumGrid views' +
        '.'
    end
    inherited dxLayoutItem1: TdxLayoutItem
      AlignVert = avTop
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = Grid
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignVert = avTop
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object PivotGridDrillDownDataSet: TcxPivotGridDrillDownDataSet
    PivotGrid = DBPivotGrid
    SynchronizeData = True
    OnDataChanged = PivotGridSummaryDataSetDataChanged
    Left = 568
    Top = 336
  end
  object PivotGridDrillDownDataSource: TDataSource
    DataSet = PivotGridDrillDownDataSet
    Left = 624
    Top = 352
  end
  object PivotGridSummaryDataSource: TDataSource
    DataSet = PivotGridSummaryDataSet
    Left = 624
    Top = 416
  end
  object PivotGridSummaryDataSet: TcxPivotGridSummaryDataSet
    PivotGrid = DBPivotGrid
    SynchronizeData = True
    OnDataChanged = PivotGridSummaryDataSetDataChanged
    Left = 576
    Top = 400
  end
end
