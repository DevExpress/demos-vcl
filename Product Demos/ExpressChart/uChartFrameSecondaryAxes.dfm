inherited dxChartFrameSecondaryAxes: TdxChartFrameSecondaryAxes
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      Titles = <
        item
          Text = 'Income Analysis'
        end>
      ToolTips.CrosshairOptions.ShowValueLabels = True
      ToolTips.CrosshairOptions.SnapToSeriesMode = NearestToCursor
      ToolTips.CrosshairOptions.StickyLines = Crosshair
      ToolTips.CrosshairOptions.ValueLines.Visible = True
      ToolTips.DefaultMode = Crosshair
      object cdSecondaryAxes: TdxChartXYDiagram
        Appearance.Border = bFalse
        Legend.AlignmentHorz = Near
        Legend.ShowCheckBoxes = False
        Axes.AxisY.Title.Text = 'Sales (units)'
        OnGetAxisValueLabelDrawParameters = cdSecondaryAxesGetAxisValueLabelDrawParameters
        SecondaryAxes.AxesY = <
          item
            Name = 'Price Axis'
            Title.Text = 'Price (USD)'
            Visible = False
          end
          item
            Name = 'Income Axis'
            Title.Text = 'Income (USD)'
          end>
        ToolTips.PointToolTipFormat = '{S}: {V}'
        object csIncome: TdxChartXYSeries
          Caption = 'Income'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales2
          DataBinding.ArgumentField.FieldName = 'Month'
          DataBinding.ValueField.FieldName = 'Income'
          ViewType = 'Area'
          View.AxisYName = 'Income Axis'
          ShowInLegend = Diagram
          ColorSchemeIndex = 2
        end
        object csSales: TdxChartXYSeries
          Caption = 'Sales'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales2
          DataBinding.ArgumentField.FieldName = 'Month'
          DataBinding.ValueField.FieldName = 'Sales'
          ViewType = 'Bar'
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csPrice: TdxChartXYSeries
          Caption = 'Price'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales2
          DataBinding.ArgumentField.FieldName = 'Month'
          DataBinding.ValueField.FieldName = 'Price'
          ViewType = 'Line'
          View.Markers.Visible = True
          View.ValueLabels.Appearance.FillOptions.Color = -1
          View.ValueLabels.LineVisible = bTrue
          View.ValueLabels.TextFormat = '${V}'
          View.ValueLabels.Visible = True
          View.AxisYName = 'Price Axis'
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
      end
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
