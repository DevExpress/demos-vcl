inherited dxChartFrameMultiple: TdxChartFrameMultiple
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      BorderStyle = cxcbsNone
      Legend.Visible = False
      Titles = <
        item
          Text = 'Website Performance Indicators - Last Month'
        end>
      ToolTips.DefaultMode = Simple
      ToolTips.SimpleToolTipOptions.ShowForSeries = True
      object cdVisitors: TdxChartXYDiagram
        Legend.Appearance.Border = bTrue
        Title.Text = 'Visitors'
        Axes.AxisX.Gridlines.Visible = True
        Axes.AxisX.ValueLabels.TextFormat = '{V:ddddd}'
        Axes.AxisX.Visible = False
        Axes.AxisY.Visible = False
        ZoomOptions.AxisXZoomingEnabled = False
        ZoomOptions.AxisYZoomingEnabled = False
        object csStackedBarNewVisitors: TdxChartXYSeries
          Caption = 'New Visitors'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'NewVisitors'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'StackedBar'
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csStackedBarReturnVisitors: TdxChartXYSeries
          Caption = 'Return Visitors'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'ReturnVisitors'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'StackedBar'
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
      end
      object cdUserTraffic: TdxChartXYDiagram
        Legend.Appearance.Border = bTrue
        Legend.AlignmentHorz = Far
        Title.Text = 'User Traffic / Average Response Time'
        Axes.AxisX.Gridlines.Visible = True
        Axes.AxisX.ValueLabels.TextFormat = '{V:ddddd}'
        Axes.AxisX.Visible = False
        Axes.AxisY.Visible = False
        ZoomOptions.AxisXZoomingEnabled = False
        ZoomOptions.AxisYZoomingEnabled = False
        object csLineUniqueUsers: TdxChartXYSeries
          Caption = 'Unique Users'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'TrafficTime'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csLineResponseTime: TdxChartXYSeries
          Caption = 'Response Time'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'ResponseTime'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
      end
      object cdHTTPErrorStatusCodesNewVisitors: TdxChartXYDiagram
        Legend.Appearance.Border = bTrue
        Title.Text = 'HTTP Error Status Codes / New Visitors'
        Axes.AxisX.Gridlines.Visible = True
        Axes.AxisX.ValueLabels.TextFormat = '{V:ddddd}'
        Axes.AxisY.Visible = False
        ZoomOptions.AxisXZoomingEnabled = False
        ZoomOptions.AxisYZoomingEnabled = False
        object csBarNewVisitors: TdxChartXYSeries
          Caption = 'New Visitors'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'NewVisitors'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'Bar'
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csLineClientErrors: TdxChartXYSeries
          Caption = 'Client Errors'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'ClientErrors'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
        object csAreaServerErrors: TdxChartXYSeries
          Caption = 'Server Errors'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsWebSite
          DataBinding.ArgumentField.FieldName = 'ReportDate'
          DataBinding.ValueField.FieldName = 'ServerErrors'
          ToolTips.PointToolTipFormat = '{S} on {A:ddddd}: {V}'
          ViewType = 'Area'
          ShowInLegend = Diagram
          ColorSchemeIndex = 2
        end
      end
    end
    inherited lgRenderMode: TdxLayoutGroup
      SizeOptions.Width = 260
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxDefaultLayoutLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited llfTabbedGroup: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxCustomMarginsLayoutLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
