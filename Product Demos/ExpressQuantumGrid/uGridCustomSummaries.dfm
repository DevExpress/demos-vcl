inherited frmCustomGridSummaries: TfrmCustomGridSummaries
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object GridDBTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsDXCustomers
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Column = GridDBTableViewCOMPANYNAME
          end
          item
            Kind = skSum
            Column = GridDBTableViewPAYMENTAMOUNT
          end
          item
            Kind = skCount
            Position = spFooter
            Column = GridDBTableViewCUSTOMER
          end
          item
            Kind = skMax
            Position = spFooter
            Column = GridDBTableViewPURCHASEDATE
          end
          item
            Kind = skSum
            Position = spFooter
            Column = GridDBTableViewPAYMENTAMOUNT
          end
          item
            Format = '###'
            Kind = skSum
            Position = spFooter
            Column = GridDBTableViewCOPIES
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            Column = GridDBTableViewPAYMENTAMOUNT
          end
          item
            Kind = skMax
            Column = GridDBTableViewPURCHASEDATE
          end
          item
            Kind = skCount
            Column = GridDBTableViewFIRSTNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        object GridDBTableViewFIRSTNAME: TcxGridDBColumn
          Caption = 'First Name'
          DataBinding.FieldName = 'FIRSTNAME'
          Width = 120
        end
        object GridDBTableViewLASTNAME: TcxGridDBColumn
          Caption = 'Last Name'
          DataBinding.FieldName = 'LASTNAME'
          Width = 120
        end
        object GridDBTableViewCOMPANYNAME: TcxGridDBColumn
          Caption = 'Company Name'
          DataBinding.FieldName = 'COMPANYNAME'
          Width = 150
        end
        object GridDBTableViewPAYMENTTYPE: TcxGridDBColumn
          Caption = 'Payment Type'
          DataBinding.FieldName = 'PAYMENTTYPE'
          RepositoryItem = dmMain.edrepDXPaymentTypeImageCombo
          GroupIndex = 0
          Options.ShowGroupValuesWithImages = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
        object GridDBTableViewPRODUCTID: TcxGridDBColumn
          Caption = 'Product'
          DataBinding.FieldName = 'PRODUCTID'
          RepositoryItem = dmMain.edrepDXProductLookup
          Width = 120
        end
        object GridDBTableViewCUSTOMER: TcxGridDBColumn
          Caption = 'Referral'
          DataBinding.FieldName = 'CUSTOMER'
          Width = 100
        end
        object GridDBTableViewPURCHASEDATE: TcxGridDBColumn
          Caption = 'Purchase Date'
          DataBinding.FieldName = 'PURCHASEDATE'
          Width = 100
        end
        object GridDBTableViewPAYMENTAMOUNT: TcxGridDBColumn
          Caption = 'Payment Amount'
          DataBinding.FieldName = 'PAYMENTAMOUNT'
          PropertiesClassName = 'TcxSpinEditProperties'
          Width = 100
        end
        object GridDBTableViewCOPIES: TcxGridDBColumn
          Caption = 'Copies'
          DataBinding.FieldName = 'COPIES'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.MaxValue = 100.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Width = 80
        end
      end
      object GridLevel: TcxGridLevel
        GridView = GridDBTableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
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
