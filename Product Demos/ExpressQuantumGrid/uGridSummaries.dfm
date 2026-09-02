inherited frmGridSummaries: TfrmGridSummaries
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      inherited GridDBTableView: TcxGridDBTableView
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.Indicator = True
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        inherited lgSetupTools: TdxLayoutGroup
          Visible = True
          SizeOptions.Width = 212
        end
        object dxLayoutLabeledItem1: TdxLayoutLabeledItem
          Parent = lgSetupTools
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 200
          CaptionOptions.Text = 
            '(To the left of the First Name column is our new Quick Column Cu' +
            'stomization button - press it to have instant access to both vis' +
            'ible and non-visible columns in your grid View)'
          CaptionOptions.WordWrap = True
          Index = 1
        end
        object cbColumnsQuickCustomizing: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          Action = acColumnsQuickCustomizing
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acColumnsQuickCustomizing: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Quick Column Customization '
      Checked = True
      OnExecute = acColumnsQuickCustomizingExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
