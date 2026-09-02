inherited frmGridPreview: TfrmGridPreview
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object DBTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        Preview.Column = DBTableViewBIOGRAPHY
        Preview.MaxLineCount = 10
        Preview.Visible = True
        object DBTableViewFIRSTNAME: TcxGridDBColumn
          Caption = 'First Name'
          DataBinding.FieldName = 'FIRSTNAME'
          DataBinding.IsNullValueType = True
          Width = 63
        end
        object DBTableViewSECONDNAME: TcxGridDBColumn
          Caption = 'Second Name'
          DataBinding.FieldName = 'SECONDNAME'
          DataBinding.IsNullValueType = True
          Width = 63
        end
        object DBTableViewBIRTHNAME: TcxGridDBColumn
          Caption = 'Birth Name'
          DataBinding.FieldName = 'BIRTHNAME'
          DataBinding.IsNullValueType = True
          Width = 62
        end
        object DBTableViewBIOGRAPHY: TcxGridDBColumn
          Caption = 'Biography'
          DataBinding.FieldName = 'BIOGRAPHY'
          DataBinding.IsNullValueType = True
        end
        object DBTableViewGENDER: TcxGridDBColumn
          Caption = 'Gender'
          DataBinding.FieldName = 'GENDER'
          DataBinding.IsNullValueType = True
          RepositoryItem = dmMain.edrepGenderImageCombo
          Options.ShowGroupValuesWithImages = True
          Width = 62
        end
        object DBTableViewBirthDate: TcxGridDBColumn
          Caption = 'Birth Date'
          DataBinding.FieldName = 'DATEOFBIRTH'
          DataBinding.IsNullValueType = True
          Width = 64
        end
      end
      object GridLevel: TcxGridLevel
        GridView = DBTableView
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
