inherited dxChartFrameDoughnut: TdxChartFrameDoughnut
  inherited lcFrame: TdxLayoutControl
    inherited ccDemoChart: TdxChartControl
      BorderStyle = cxcbsNone
      Legend.Visible = False
      Titles = <
        item
          Text = 'Top Internet Languages'
        end
        item
          Appearance.FontOptions.Size = 10
          Appearance.Margins.Top = 0
          Appearance.Margins.Bottom = 0
          Appearance.TextColor = -6250332
          Alignment = Far
          Position = Bottom
          Text = 'From www.nationmaster.com'
          Visible = False
        end>
      ToolTips.DefaultMode = Simple
      object cdDoughnut: TdxChartSimpleDiagram
        Legend.AlignmentHorz = FarOutside
        object csDoughnut: TdxChartSimpleSeries
          Caption = 'Area'
          DataBindingType = 'DB'
          DataBinding.DataSource = dmMain.dsInternetLanguages
          DataBinding.ArgumentField.FieldName = 'Language'
          DataBinding.ValueField.FieldName = 'Percent'
          ToolTips.PointToolTipFormat = '{A}: {V:0.0}%'
          ViewType = 'Doughnut'
          View.SweepDirection = Counterclockwise
          View.TotalLabel.Visible = False
          View.ValueLabels.Appearance.Border = bFalse
          View.ValueLabels.TextFormat = '{A}: {V:0.0}%'
          View.ValueLabels.Visible = True
          View.ValueLabels.Position = TwoColumns
          SortBy = Value
          SortOrder = soDescending
          ShowInLegend = Diagram
          ColorSchemeIndex = 0
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
