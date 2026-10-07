inherited frmFilteringGrid: TfrmFilteringGrid
  inherited PanelSetupTools: TdxPanel
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        object cbFilterPanelLocation: TcxImageComboBox [0]
          Left = 112
          Top = 10
          EditValue = 1
          Properties.Items = <
            item
              Description = 'Top'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Bottom'
              Value = 1
            end>
          Properties.OnChange = cbFilterPanelLocationPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Width = 164
        end
        inherited lgSetupTools: TdxLayoutGroup
          Visible = True
          ItemIndex = 1
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 200
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Filter Panel Position:'
          Control = cbFilterPanelLocation
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 64
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lgCheckBoxes: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 1
        end
        object cbDropDownColumnMRUList: TdxLayoutCheckBoxItem
          Parent = lgCheckBoxes
          AlignVert = avTop
          Action = acDropDownColumnMRUList
          CaptionOptions.WordWrap = True
          Index = 1
        end
        object cbDropDownTableViewMRUList: TdxLayoutCheckBoxItem
          Parent = lgCheckBoxes
          Action = acDropDownTableViewMRUList
          CaptionOptions.WordWrap = True
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acDropDownColumnMRUList: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Most Recently Used (MRU) Filters in Column Dropdowns'
      Checked = True
      OnExecute = acDropDownColumnMRUListExecute
    end
    object acDropDownTableViewMRUList: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Most Recently Used (MRU) Filters in Filter Panel'
      Checked = True
      OnExecute = acDropDownTableViewMRUListExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
