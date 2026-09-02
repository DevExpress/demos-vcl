inherited frmDragDropGrid: TfrmDragDropGrid
  Width = 899
  Height = 454
  ExplicitWidth = 899
  ExplicitHeight = 454
  inherited PanelDescription: TdxPanel
    Top = 390
    Width = 899
    ExplicitTop = 393
    ExplicitWidth = 899
    inherited lcBottomFrame: TdxLayoutControl
      Width = 899
      ExplicitWidth = 899
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 856
    Height = 390
    ExplicitWidth = 856
    ExplicitHeight = 393
    inherited Grid: TcxGrid
      Left = 609
      Width = 247
      Height = 393
      DragMode = dmAutomatic
      OnEnter = GridEnter
      ExplicitLeft = 609
      ExplicitWidth = 247
      ExplicitHeight = 393
      inherited GridDBTableView: TcxGridDBTableView
        DragMode = dmAutomatic
        OnDragOver = GridDBTableViewDragOver
        OnEndDrag = GridDBTableViewEndDrag
        OnStartDrag = GridDBTableViewStartDrag
        FilterBox.Visible = fvNever
        OptionsCustomize.ColumnFiltering = False
        OptionsSelection.MultiSelect = True
        object GridDBTableViewName: TcxGridDBColumn [0]
          Caption = 'Customer'
          DataBinding.Expression = #1'CONCATENATE([First Name]," ",[Last Name])'
          DataBinding.ValueType = 'String'
          Width = 100
        end
        inherited GridDBTableViewFIRSTNAME: TcxGridDBColumn
          Visible = False
          Width = 34
        end
        inherited GridDBTableViewLASTNAME: TcxGridDBColumn
          Visible = False
          Width = 44
        end
        inherited GridDBTableViewCOMPANYNAME: TcxGridDBColumn
          Visible = False
          Width = 46
        end
        inherited GridDBTableViewPRODUCTID: TcxGridDBColumn
          Width = 100
        end
        inherited GridDBTableViewCUSTOMER: TcxGridDBColumn
          Visible = False
          Width = 39
        end
        inherited GridDBTableViewPURCHASEDATE: TcxGridDBColumn
          Width = 120
        end
        inherited GridDBTableViewCOPIES: TcxGridDBColumn
          Visible = False
          Width = 31
        end
      end
    end
    object dxPanel1: TdxPanel
      Left = 0
      Top = 0
      Width = 609
      Height = 393
      Align = alLeft
      Frame.Borders = [bRight]
      Frame.Drag.Enabled = True
      TabOrder = 1
      object Grid1: TcxGrid
        Left = 0
        Top = 0
        Width = 608
        Height = 393
        Align = alClient
        BorderStyle = cxcbsNone
        DragMode = dmAutomatic
        TabOrder = 0
        OnEnter = Grid1Enter
        object GridDBTableView1: TcxGridDBTableView
          DragMode = dmAutomatic
          OnDragOver = GridDBTableViewDragOver
          OnEndDrag = GridDBTableViewEndDrag
          OnStartDrag = GridDBTableView1StartDrag
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = dmMain.dsDXCustomers
          DataController.KeyFieldNames = 'ID'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Kind = skCount
              Column = cxGridDBColumn3
            end
            item
              Kind = skSum
              Column = cxGridDBColumn8
            end
            item
              Kind = skCount
              Position = spFooter
              Column = cxGridDBColumn6
            end
            item
              Kind = skMax
              Position = spFooter
              Column = cxGridDBColumn7
            end
            item
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn8
            end
            item
              Format = '###'
              Kind = skSum
              Position = spFooter
              Column = cxGridDBColumn9
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              Column = cxGridDBColumn8
            end
            item
              Kind = skMax
              Column = cxGridDBColumn7
            end
            item
              Kind = skCount
              Column = cxGridDBColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsSelection.MultiSelect = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          object cxGridDBColumn10: TcxGridDBColumn
            Caption = 'Customer'
            DataBinding.Expression = #1'CONCATENATE([First Name]," ",[Last Name])'
            DataBinding.ValueType = 'String'
            Width = 100
          end
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'First Name'
            DataBinding.FieldName = 'FIRSTNAME'
            Visible = False
            Width = 34
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Last Name'
            DataBinding.FieldName = 'LASTNAME'
            Visible = False
            Width = 44
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Company Name'
            DataBinding.FieldName = 'COMPANYNAME'
            Visible = False
            Width = 46
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Payment Type'
            DataBinding.FieldName = 'PAYMENTTYPE'
            RepositoryItem = dmMain.edrepDXPaymentTypeImageCombo
            GroupIndex = 0
            Options.ShowGroupValuesWithImages = True
            SortIndex = 0
            SortOrder = soAscending
            Width = 100
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Product'
            DataBinding.FieldName = 'PRODUCTID'
            RepositoryItem = dmMain.edrepDXProductLookup
            Width = 100
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Referral'
            DataBinding.FieldName = 'CUSTOMER'
            Visible = False
            Width = 39
          end
          object cxGridDBColumn7: TcxGridDBColumn
            Caption = 'Purchase Date'
            DataBinding.FieldName = 'PURCHASEDATE'
            Width = 120
          end
          object cxGridDBColumn8: TcxGridDBColumn
            Caption = 'Payment Amount'
            DataBinding.FieldName = 'PAYMENTAMOUNT'
            PropertiesClassName = 'TcxSpinEditProperties'
            Width = 100
          end
          object cxGridDBColumn9: TcxGridDBColumn
            Caption = 'Copies'
            DataBinding.FieldName = 'COPIES'
            PropertiesClassName = 'TcxSpinEditProperties'
            Properties.MaxValue = 100.000000000000000000
            Properties.MinValue = 1.000000000000000000
            Visible = False
            Width = 31
          end
        end
        object GridLevel1: TcxGridLevel
          GridView = GridDBTableView1
        end
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 856
    Width = 43
    Height = 390
    Visible = False
    ExplicitLeft = 856
    ExplicitWidth = 43
    ExplicitHeight = 390
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 42
      ExplicitHeight = 390
      Height = 390
      Width = 42
      inherited lcFrame: TdxLayoutControl
        Width = 40
        Height = 370
        ExplicitWidth = 40
        ExplicitHeight = 373
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
