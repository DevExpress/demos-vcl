inherited frmGridBandedView: TfrmGridBandedView
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object DBBandedTableView: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.BandMoving = False
        OptionsData.Inserting = False
        OptionsView.CellAutoHeight = True
        Styles.Group = dmMain.cxStyleBold
        Bands = <
          item
            Caption = 'Main'
            Width = 617
          end
          item
            Caption = 'Performance'
            Width = 240
          end
          item
            Caption = 'Photo'
            Width = 200
          end>
        object DBBandedTableViewTrademarkName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Trademark'
          HeaderAlignmentHorz = taCenter
          Width = 180
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object DBBandedTableViewName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Name'
          HeaderAlignmentHorz = taCenter
          Width = 146
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object DBBandedTableViewModification: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Modification'
          HeaderAlignmentHorz = taCenter
          Width = 142
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object DBBandedTableViewBodyStyle: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BodyStyle'
          Visible = False
          GroupIndex = 0
          HeaderAlignmentHorz = taCenter
          Width = 149
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object DBBandedTableViewDescription: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Description'
          HeaderAlignmentHorz = taCenter
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.LineCount = 3
          Position.RowIndex = 1
        end
        object DBBandedTableViewHorsepower: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Horsepower'
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object DBBandedTableViewTorque: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Torque'
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object DBBandedTableViewMPG_City: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MPG City'
          PropertiesClassName = 'TcxSpinEditProperties'
          OnCustomDrawCell = DBBandedTableViewMPG_CityCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 1
        end
        object DBBandedTableViewMPG_Highway: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MPG Highway'
          PropertiesClassName = 'TcxSpinEditProperties'
          OnCustomDrawCell = DBBandedTableViewMPG_HighwayCustomDrawCell
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 1
        end
        object DBBandedTableViewDoors: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Doors'
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 2
        end
        object DBBandedTableViewCylinders: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Cylinders'
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 2
        end
        object DBBandedTableViewTransmission: TcxGridDBBandedColumn
          Caption = 'Transmission Type'
          DataBinding.FieldName = 'TransmissionTypeName'
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 3
        end
        object DBBandedTableViewTransmissionSpeeds: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Transmission Speeds'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          HeaderAlignmentHorz = taCenter
          Width = 220
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 3
        end
        object DBBandedTableViewPhoto: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Photo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          HeaderAlignmentHorz = taCenter
          Width = 200
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.LineCount = 4
          Position.RowIndex = 0
        end
      end
      object GridLevel: TcxGridLevel
        GridView = DBBandedTableView
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
