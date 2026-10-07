inherited dxChartLineFrame: TdxChartLineFrame
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      BorderStyle = cxcbsNone
      Legend.Visible = False
      Titles = <
        item
          Text = 'Historic, Current, and Future Population Projection'
        end
        item
          Appearance.FontOptions.Size = 10
          Appearance.Margins.Top = 0
          Appearance.Margins.Bottom = 0
          Appearance.TextColor = -6250332
          Alignment = Far
          Position = Bottom
          Text = 'From www.geohive.com'
        end>
      ToolTips.CrosshairOptions.ShowArgumentLabels = False
      ToolTips.CrosshairOptions.StickyLines = Crosshair
      ToolTips.DefaultMode = Crosshair
      ToolTips.SimpleToolTipOptions.ShowForSeries = True
      object cdLine: TdxChartXYDiagram
        Legend.AlignmentHorz = Near
        Axes.AxisX.Gridlines.MinorStyle = Dot
        Axes.AxisX.Gridlines.Visible = True
        Axes.AxisX.Interlaced = True
        Axes.AxisY.Gridlines.MinorStyle = Dot
        Axes.AxisY.Title.Text = 'Population mid-year, in millions'
        object csLineEurope: TdxChartXYSeries
          Caption = 'Europe'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsPopulation
          DataBinding.ArgumentField.FieldName = 'Year'
          DataBinding.ValueField.FieldName = 'Europe'
          ToolTips.PointToolTipFormat = '{S}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          View.Markers.Visible = True
          View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.LineVisible = bFalse
          View.ValueLabels.Visible = True
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csLineAmericas: TdxChartXYSeries
          Caption = 'Americas'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsPopulation
          DataBinding.ArgumentField.FieldName = 'Year'
          DataBinding.ValueField.FieldName = 'Americas'
          ToolTips.PointToolTipFormat = '{S}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          View.Markers.Visible = True
          View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.LineVisible = bFalse
          View.ValueLabels.Visible = True
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
        object csLineAfrica: TdxChartXYSeries
          Caption = 'Africa'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsPopulation
          DataBinding.ArgumentField.FieldName = 'Year'
          DataBinding.ValueField.FieldName = 'Africa'
          ToolTips.PointToolTipFormat = '{S}: {V}'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 2.000000000000000000
          View.Markers.Visible = True
          View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.LineVisible = bFalse
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
