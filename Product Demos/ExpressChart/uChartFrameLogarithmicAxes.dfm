inherited dxChartFrameLogarithmicAxes: TdxChartFrameLogarithmicAxes
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      Titles = <
        item
          Position = Top
          Text = 'Headphones Comparison'
        end>
      ToolTips.CrosshairOptions.ShowValueLabels = True
      ToolTips.CrosshairOptions.StickyLines = None
      ToolTips.CrosshairOptions.ValueLines.Visible = True
      ToolTips.DefaultMode = Crosshair
      object cdLogarithmicScale: TdxChartXYDiagram
        Appearance.Border = bFalse
        Legend.Appearance.Border = bFalse
        Legend.AlignmentHorz = Center
        Legend.AlignmentVert = FarOutside
        Legend.Direction = LeftToRight
        Legend.MaxCaptionWidth = 220.000000000000000000
        Legend.MaxWidthPercent = 90.000000000000000000
        Title.Visible = False
        Axes.AxisX.CrosshairLabels.TextFormat = '{A:0.####} Hz'
        Axes.AxisX.Gridlines.MinorVisible = True
        Axes.AxisX.Gridlines.Visible = True
        Axes.AxisX.Logarithmic = True
        Axes.AxisX.MinorCount = 8
        Axes.AxisX.Range.AutoSideMargins = False
        Axes.AxisX.Title.Text = 'Frequency'
        Axes.AxisX.ValueLabels.TextFormat = '{A} Hz'
        Axes.AxisY.CrosshairLabels.TextFormat = '{V:0.##}%'
        Axes.AxisY.Gridlines.MinorVisible = True
        Axes.AxisY.Logarithmic = True
        Axes.AxisY.MinorCount = 8
        Axes.AxisY.Range.AutoSideMargins = False
        Axes.AxisY.Range.WholeMax = 100.000000000000000000
        Axes.AxisY.Range.WholeMin = 0.010000000000000000
        Axes.AxisY.Title.Text = 'Total Harmonic Distortion'
        Axes.AxisY.ValueLabels.TextFormat = '{V}%'
        ToolTips.PointToolTipFormat = '{S}: {V:0.##}%'
        object csHeadphone1Spl90: TdxChartXYSeries
          Caption = 'Headphones 1 90 dB SPL'
          DataBindingType = 'Unbound'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 3.000000000000000000
          View.ValueLabels.ResolveOverlappingMode = HideOverlapped
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
        end
        object csHeadphone1Spl100: TdxChartXYSeries
          Caption = 'Headphones 1 100 dB SPL'
          DataBindingType = 'Unbound'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 3.000000000000000000
          View.ValueLabels.ResolveOverlappingMode = HideOverlapped
          ShowInLegend = Diagram
          ColorSchemeIndex = 1
        end
        object csHeadphone2Spl90: TdxChartXYSeries
          Caption = 'Headphones 2 90 dB SPL'
          DataBindingType = 'Unbound'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 3.000000000000000000
          View.ValueLabels.ResolveOverlappingMode = HideOverlapped
          ShowInLegend = Diagram
          ColorSchemeIndex = 2
        end
        object csHeadphone2Spl100: TdxChartXYSeries
          Caption = 'Headphones 2 100 dB SPL'
          DataBindingType = 'Unbound'
          ViewType = 'Line'
          View.Appearance.StrokeOptions.Width = 3.000000000000000000
          View.ValueLabels.ResolveOverlappingMode = HideOverlapped
          ShowInLegend = Diagram
          ColorSchemeIndex = 3
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
