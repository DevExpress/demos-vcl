inherited frmGridFixedBands: TfrmGridFixedBands
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object BandedTableView: TcxGridBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '### ### ###'
            Kind = skSum
            Column = clTotals
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.BandMoving = False
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        Bands = <
          item
            Caption = 'Manufacturer'
            FixedKind = fkLeft
          end
          item
            Caption = 'Year'
            Width = 1615
          end
          item
            Caption = 'Totals'
            FixedKind = fkRight
          end>
        object clCarModel: TcxGridBandedColumn
          Caption = 'Make'
          Options.Editing = False
          Width = 150
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object clTotals: TcxGridBandedColumn
          Caption = 'Units Sold'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          FooterAlignmentHorz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Options.Filtering = False
          Width = 120
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object GridLevel: TcxGridLevel
        GridView = BandedTableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Visible = False
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        inherited lgSetupTools: TdxLayoutGroup
          Visible = False
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
