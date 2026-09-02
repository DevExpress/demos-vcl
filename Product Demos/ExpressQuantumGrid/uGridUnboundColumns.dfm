inherited frmGridUnboundColumns: TfrmGridUnboundColumns
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
            Caption = 'Unbound Data (This session only)'
            Width = 298
          end
          item
            Caption = 'Bound Data (From a Table)'
            Width = 451
          end>
        object BandedTableViewFIRSTNAME: TcxGridDBBandedColumn
          Caption = 'First'
          DataBinding.FieldName = 'FIRSTNAME'
          Width = 123
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewLASTNAME: TcxGridDBBandedColumn
          Caption = 'Last'
          DataBinding.FieldName = 'LASTNAME'
          Width = 161
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewCOMPANYNAME: TcxGridDBBandedColumn
          Caption = 'Company'
          DataBinding.FieldName = 'COMPANYNAME'
          Visible = False
          Width = 65
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewPAYMENTTYPE: TcxGridDBBandedColumn
          Caption = 'Payment Type'
          DataBinding.FieldName = 'PAYMENTTYPE'
          RepositoryItem = dmMain.edrepDXPaymentTypeImageCombo
          Visible = False
          Width = 38
          Position.BandIndex = 1
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object BandedTableViewPRODUCTID: TcxGridDBBandedColumn
          Caption = 'Product'
          DataBinding.FieldName = 'PRODUCTID'
          RepositoryItem = dmMain.edrepDXProductLookup
          Width = 87
          Position.BandIndex = 1
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object BandedTableViewCUSTOMER: TcxGridDBBandedColumn
          Caption = 'Is Customer?'
          DataBinding.FieldName = 'CUSTOMER'
          Visible = False
          Width = 36
          Position.BandIndex = 1
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object BandedTableViewPURCHASEDATE: TcxGridDBBandedColumn
          Caption = 'Purchase Date'
          DataBinding.FieldName = 'PURCHASEDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 101
          Position.BandIndex = 1
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object BandedTableViewPAYMENTAMOUNT: TcxGridDBBandedColumn
          Caption = 'Payment Amount'
          DataBinding.FieldName = 'PAYMENTAMOUNT'
          Visible = False
          Width = 48
          Position.BandIndex = 1
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object BandedTableViewCOPIES: TcxGridDBBandedColumn
          Caption = 'Copies'
          DataBinding.FieldName = 'COPIES'
          Width = 84
          Position.BandIndex = 1
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object BandedTableViewSelected: TcxGridDBBandedColumn
          Caption = 'Selected'
          DataBinding.ValueType = 'Boolean'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 47
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewSupportRequests: TcxGridDBBandedColumn
          Caption = 'Support Requests'
          DataBinding.ValueType = 'Integer'
          PropertiesClassName = 'TcxSpinEditProperties'
          Width = 48
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewLastSupportRequest: TcxGridDBBandedColumn
          Caption = 'Last Support Request'
          DataBinding.ValueType = 'DateTime'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 47
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewComments: TcxGridDBBandedColumn
          Caption = 'Comments'
          DataBinding.ValueType = 'String'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekMemo
          Width = 94
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object Level: TcxGridLevel
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
