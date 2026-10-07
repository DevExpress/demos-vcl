inherited dxChartFrameArea: TdxChartFrameArea
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      BorderStyle = cxcbsNone
      Legend.AlignmentHorz = Center
      Legend.AlignmentVert = NearOutside
      Legend.Direction = LeftToRight
      Legend.ShowCheckBoxes = False
      Legend.Visible = False
      Titles = <
        item
          Text = 'Supplier Cost Analysis'
        end>
      ToolTips.CrosshairOptions.ShowValueLabels = True
      ToolTips.CrosshairOptions.StickyLines = Crosshair
      ToolTips.CrosshairOptions.ValueLines.Visible = True
      ToolTips.SimpleToolTipOptions.ShowForSeries = True
      object cdArea: TdxChartXYDiagram
        Legend.AlignmentHorz = Center
        Legend.AlignmentVert = NearOutside
        Legend.Direction = LeftToRight
        Legend.ShowCheckBoxes = False
        Axes.AxisX.CrosshairLabels.TextFormat = '{A:yyyy}'
        Axes.AxisX.ValueLabels.TextFormat = '{V:mmmm yyyy}'
        Axes.AxisY.Interlaced = True
        Axes.AxisY.Title.Text = 'US dollars, in thousands'
        ToolTips.PointToolTipFormat = '{S}: ${V}k'
        ToolTips.Mode = Crosshair
        object csAreaDevAVNorth: TdxChartXYSeries
          Caption = 'DevAV North'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsOutsideVendorCosts
          DataBinding.ArgumentField.FieldName = 'Year'
          DataBinding.ValueField.FieldName = 'DevAVNorth'
          ViewType = 'Area'
          View.Markers.Visible = True
            View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.TextFormat = '{V:"$"#,##0_);("$"#,##0)}'
          ShowInLegend = Diagram
        end
        object csAreaDevAVSouth: TdxChartXYSeries
          Caption = 'DevAV South'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsOutsideVendorCosts
          DataBinding.ArgumentField.FieldName = 'Year'
          DataBinding.ValueField.FieldName = 'DevAVSouth'
          ViewType = 'Area'
          View.Markers.Visible = True
            View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.TextFormat = '{V:"$"#,##0_);("$"#,##0)}'
          ShowInLegend = Diagram
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
