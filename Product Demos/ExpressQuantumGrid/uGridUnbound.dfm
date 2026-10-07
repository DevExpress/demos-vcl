inherited frmGridUnbound: TfrmGridUnbound
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object TableView: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clnID
          end
          item
            Kind = skSum
            Column = clnCurrency
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.MultiSelect = True
        OptionsSelection.HideFocusRectOnExit = False
        OptionsView.ColumnAutoWidth = True
        object clnID: TcxGridColumn
          Caption = 'ID'
          PropertiesClassName = 'TcxSpinEditProperties'
          Options.Filtering = False
          Width = 68
        end
        object clnName: TcxGridColumn
          Caption = 'Text (Randomly Generated)'
          Width = 216
        end
        object clnDate: TcxGridColumn
          Caption = 'Date (Randomly Generated)'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 200
        end
        object clnCurrency: TcxGridColumn
          Caption = 'Currency (Randomly Generated)'
          Width = 199
        end
      end
      object RootLevel: TcxGridLevel
        GridView = TableView
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
