inherited frmGridMergeCells: TfrmGridMergeCells
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object DBTableViewItems: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsItems
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skMin
            Column = DBTableViewItemsCREATEDDATE
          end
          item
            Kind = skMax
            Column = DBTableViewItemsFIXEDDATE
          end
          item
            Kind = skCount
            Column = DBTableViewItemsNAME
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Preview.Column = DBTableViewItemsDESCRIPTION
        object DBTableViewItemsPROJECTID: TcxGridDBColumn
          Caption = 'Project'
          DataBinding.FieldName = 'PROJECTID'
          RepositoryItem = dmMain.edrepProjectLookup
          Options.CellMerging = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 120
        end
        object DBTableViewItemsTYPE: TcxGridDBColumn
          Caption = 'Type'
          DataBinding.FieldName = 'TYPE'
          RepositoryItem = dmMain.edrepTypeImageCombo
          Options.ShowGroupValuesWithImages = True
          Options.CellMerging = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 80
        end
        object DBTableViewItemsNAME: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'NAME'
          Width = 150
        end
        object DBTableViewItemsPRIORITY: TcxGridDBColumn
          Caption = 'Priority'
          DataBinding.FieldName = 'PRIORITY'
          RepositoryItem = dmMain.edrepPriorityImageCombo
          Options.ShowGroupValuesWithImages = True
          Options.CellMerging = True
          Width = 80
        end
        object DBTableViewItemsSTATUS: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'STATUS'
          RepositoryItem = dmMain.edrepStatusImageCombo
          Options.ShowGroupValuesWithImages = True
          Options.CellMerging = True
          Width = 80
        end
        object DBTableViewItemsCREATORID: TcxGridDBColumn
          Caption = 'Creator'
          DataBinding.FieldName = 'CREATORID'
          RepositoryItem = dmMain.edrepUserLookup
          Visible = False
          Width = 120
        end
        object DBTableViewItemsCREATEDDATE: TcxGridDBColumn
          Caption = 'Created Date'
          DataBinding.FieldName = 'CREATEDDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 100
        end
        object DBTableViewItemsOWNERID: TcxGridDBColumn
          Caption = 'Owner'
          DataBinding.FieldName = 'OWNERID'
          RepositoryItem = dmMain.edrepUserLookup
          Options.CellMerging = True
          Width = 120
        end
        object DBTableViewItemsLASTMODIFIEDDATE: TcxGridDBColumn
          Caption = 'Last Modified Date'
          DataBinding.FieldName = 'LASTMODIFIEDDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Visible = False
          Width = 100
        end
        object DBTableViewItemsFIXEDDATE: TcxGridDBColumn
          Caption = 'Fixed Date'
          DataBinding.FieldName = 'FIXEDDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Width = 100
        end
        object DBTableViewItemsDESCRIPTION: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCRIPTION'
        end
      end
      object level: TcxGridLevel
        GridView = DBTableViewItems
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
