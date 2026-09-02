inherited frmPlanets: TfrmPlanets
  Caption = 'frmPlanets'
  ClientHeight = 494
  ClientWidth = 797
  ExplicitWidth = 797
  ExplicitHeight = 494
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 797
    Height = 494
    ExplicitWidth = 797
    ExplicitHeight = 494
    inherited tlUnbound: TcxTreeList
      Width = 561
      Height = 436
      Bands = <
        item
        end>
      OptionsView.ColumnAutoWidth = True
      ExplicitWidth = 561
      ExplicitHeight = 436
      object clName: TcxTreeListColumn
        Caption.Text = 'Name'
        Width = 183
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clOrbitNumb: TcxTreeListColumn
        Caption.Text = '#'
        Width = 53
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clOrbits: TcxTreeListColumn
        Visible = False
        Caption.Text = 'Orbits'
        Options.Hidden = True
        Options.Customizing = False
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clDistance: TcxTreeListColumn
        Caption.Text = 'Distance(000km)'
        Width = 110
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clPeriod: TcxTreeListColumn
        Caption.Text = 'Period(days)'
        Width = 113
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clDiscoverer: TcxTreeListColumn
        Caption.Text = 'Discoverer'
        Width = 112
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clDate: TcxTreeListColumn
        Caption.Text = 'Date'
        Width = 112
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clRadius: TcxTreeListColumn
        Caption.Text = 'Radius(km)'
        Width = 112
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clImageIndex: TcxTreeListColumn
        Visible = False
        Caption.Text = 'ImageIndex'
        Options.Hidden = True
        Options.Customizing = False
        Width = 100
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
