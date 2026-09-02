inherited fmPivotGridChartConnection: TfmPivotGridChartConnection
  Left = 232
  Top = 213
  Caption = 'Charts Integration'
  ClientHeight = 529
  ClientWidth = 971
  OnCreate = FormCreate
  ExplicitWidth = 971
  ExplicitHeight = 529
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 971
    Height = 529
    ExplicitWidth = 971
    ExplicitHeight = 529
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 787
      Height = 173
      DataSource = dmPivot.dsSalesReports
      TabOrder = 2
      ExplicitWidth = 787
      ExplicitHeight = 173
      object pgfProductName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Product Name'
        DataBinding.FieldName = 'ProductName'
        Visible = True
        UniqueName = 'Product Name'
      end
      object pgfOrderDate: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Order Year'
        DataBinding.FieldName = 'OrderDate'
        GroupInterval = giDateYear
        Visible = True
        UniqueName = 'Order Year'
      end
      object pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        DataBinding.FieldName = 'Quantity'
        Visible = True
        UniqueName = 'Quantity'
      end
    end
    object cbSourceData: TcxComboBox [1]
      Left = 823
      Top = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'All Cells'
        'Only Selected Cells')
      Properties.OnChange = cbSourceDataPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'All Cells'
      Width = 126
    end
    object cbSourceForCategories: TcxComboBox [2]
      Left = 823
      Top = 91
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Column'
        'Row')
      Properties.OnChange = cbSourceForCategoriesPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Row'
      Width = 126
    end
    object cxGroupBox2: TcxGroupBox [3]
      Left = 10
      Top = 197
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = clBtnFace
      Style.Edges = []
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 281
      Width = 787
      object lblURL: TLabel
        Left = 2
        Top = 268
        Width = 783
        Height = 11
        Cursor = crHandPoint
        Align = alBottom
        Caption = 'http://www.devexpress.com/Products/VCL/ExQuantumGrid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = True
        OnClick = lblURLClick
        ExplicitWidth = 246
      end
      object Label1: TcxLabel
        Left = 2
        Top = 238
        Align = alBottom
        Caption = 
          'Note: This chart was created using the ExpressQuantumGrid. It is' +
          ' not included as part of the ExpressPivotGrid Suite, and must be' +
          ' purchased separately. You can learn more at:'
        Properties.WordWrap = True
        TabOrder = 1
        Transparent = True
        ExplicitWidth = 781
        Width = 783
      end
      object Grid: TcxGrid
        Left = 2
        Top = 2
        Width = 783
        Height = 236
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 781
        object ChartView: TcxGridChartView
          DiagramColumn.Active = True
          ToolBox.CustomizeButton = True
          ToolBox.DiagramSelector = True
        end
        object GridLevel: TcxGridLevel
          GridView = ChartView
        end
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 2
      LayoutDirection = ldVertical
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'You can select data in the PivotGrid by highlighting cells. The ' +
        'data in these cells is automatically used to create a chart in E' +
        'xpressQuantumGrid. The ChartView uses row values as series and c' +
        'olumn values as arguments. You can display an entire row'#39's or co' +
        'lumn'#39's data by selecting its total cell.'
    end
    inherited lgContent: TdxLayoutGroup
      ItemIndex = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Source Data'
      CaptionOptions.Layout = clTop
      Control = cbSourceData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Source for Categories:'
      CaptionOptions.Layout = clTop
      Control = cbSourceForCategories
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgMainGroup
      AlignVert = avBottom
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = cxGroupBox2
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 281
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      AlignVert = avBottom
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
  object ChartConnection: TcxPivotGridChartConnection
    GridChartView = ChartView
    PivotGrid = DBPivotGrid
    Left = 808
    Top = 48
  end
end
