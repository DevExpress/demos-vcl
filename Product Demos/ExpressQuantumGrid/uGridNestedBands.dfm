inherited frmGridNestedBands: TfrmGridNestedBands
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object BandedTableView: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.SmartRefresh = True
        DataController.DataSource = dmMain.dsDXCustomers
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        Styles.OnGetContentStyle = BandedTableViewStylesGetContentStyle
        Bands = <
          item
            Caption = 'Unbound Data'
            Width = 93
          end
          item
            Caption = 'Bound Data'
            Width = 634
          end
          item
            Caption = 'Customer'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Width = 327
          end
          item
            Caption = 'Favorite product'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Width = 400
          end>
        object BandedTableViewFIRSTNAME: TcxGridDBBandedColumn
          Caption = 'First'
          DataBinding.FieldName = 'FIRSTNAME'
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewLASTNAME: TcxGridDBBandedColumn
          Caption = 'Last'
          DataBinding.FieldName = 'LASTNAME'
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewCOMPANYNAME: TcxGridDBBandedColumn
          Caption = 'Company'
          DataBinding.FieldName = 'COMPANYNAME'
          Visible = False
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewPAYMENTTYPE: TcxGridDBBandedColumn
          Caption = 'Payment Type'
          DataBinding.FieldName = 'PAYMENTTYPE'
          RepositoryItem = dmMain.edrepDXPaymentTypeImageCombo
          Visible = False
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewPRODUCTID: TcxGridDBBandedColumn
          Caption = 'Product'
          DataBinding.FieldName = 'PRODUCTID'
          RepositoryItem = dmMain.edrepDXProductLookup
          Width = 235
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewPURCHASEDATE: TcxGridDBBandedColumn
          Caption = 'Purchase Date'
          DataBinding.FieldName = 'PURCHASEDATE'
          Width = 114
          Position.BandIndex = 3
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewPAYMENTAMOUNT: TcxGridDBBandedColumn
          Caption = 'Payment Amount'
          DataBinding.FieldName = 'PAYMENTAMOUNT'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Visible = False
          Position.BandIndex = 3
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object BandedTableViewCOPIES: TcxGridDBBandedColumn
          Caption = 'Copies'
          DataBinding.FieldName = 'COPIES'
          PropertiesClassName = 'TcxSpinEditProperties'
          Visible = False
          Position.BandIndex = 3
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object BandedTableViewSelected: TcxGridDBBandedColumn
          Caption = 'Selected'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Position.BandIndex = 0
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 336
    Top = 96
    PixelsPerInch = 96
    object styleSelected: TcxStyle
      AssignedValues = [svColor]
      Color = 12646647
    end
  end
end
