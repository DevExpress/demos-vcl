inherited dxChartFrameBar: TdxChartFrameBar
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      BorderStyle = cxcbsNone
      Legend.Visible = False
      Titles = <
        item
          Text = 'DevAV Sales by Region'
        end>
      ToolTips.DefaultMode = Simple
      ToolTips.SimpleToolTipOptions.ShowForPoints = False
      ToolTips.SimpleToolTipOptions.ShowForSeries = True
      object cdBar: TdxChartXYDiagram
        Legend.Appearance.Border = bTrue
        Axes.AxisY.Interlaced = True
        Axes.AxisY.Title.Text = 'US dollars, in millions'
        ToolTips.PointToolTipFormat = '{S}: {V}'
        object csBar2018: TdxChartXYSeries
          Caption = '2018'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales
          DataBinding.ArgumentField.FieldName = 'Region'
          DataBinding.ValueField.FieldName = '2018'
          ViewType = 'Bar'
          View.ValueLabels.Visible = True
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csBar2019: TdxChartXYSeries
          Caption = '2019'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales
          DataBinding.ArgumentField.FieldName = 'Region'
          DataBinding.ValueField.FieldName = '2019'
          ViewType = 'Bar'
          View.ValueLabels.Visible = True
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
        object csBar2020: TdxChartXYSeries
          Caption = '2020'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsSales
          DataBinding.ArgumentField.FieldName = 'Region'
          DataBinding.ValueField.FieldName = '2020'
          ViewType = 'Bar'
          View.ValueLabels.Visible = True
          ShowInLegend = Diagram
          ColorSchemeIndex = 2
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
    inherited dxCustomMarginsLayoutLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited llfTabbedGroup: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
