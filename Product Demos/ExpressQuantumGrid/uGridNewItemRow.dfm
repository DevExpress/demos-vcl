inherited frmNewItemRowGrid: TfrmNewItemRowGrid
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      inherited GridDBTableView: TcxGridDBTableView
        NewItemRow.InfoText = 'Click here to add a new row (customizable text)'
        NewItemRow.Visible = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Visible = False
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
