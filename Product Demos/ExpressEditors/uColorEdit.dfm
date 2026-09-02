inherited frmColorEdit: TfrmColorEdit
  inherited lcFrame: TdxLayoutControl
    object ColorEdit: TdxColorEdit [0]
      Left = 34
      Top = 138
      Properties.OnChange = ColorEditPropertiesChange
      Properties.OnGetCustomColorSet = ColorEditPropertiesGetCustomColorSet
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 226
    end
    object cmbColorPalette: TcxComboBox [1]
      Left = 373
      Top = 77
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Office'
        'Extended'
        'Standard')
      Properties.OnChange = cmbColorBoxAlignPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Office'
      Width = 159
    end
    object cmbColorSet: TcxComboBox [2]
      Left = 373
      Top = 120
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Default'
        'Theme1'
        'Theme2'
        'Theme3'
        'Theme4'
        'Theme5'
        'Custom')
      Properties.OnChange = cmbColorBoxAlignPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Default'
      Width = 159
    end
    object cbShowItemBorders: TcxCheckBox [3]
      Left = 306
      Top = 163
      Action = acShowItemBorders
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 226
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'dxColorEdit1'
      CaptionOptions.Visible = False
      Control = ColorEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liColorValue: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Selected Color Value: '
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelBoldItemCaption
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Color Palette'
      Control = cmbColorPalette
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Color Set'
      Control = cmbColorSet
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Visible = False
      Control = cbShowItemBorders
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
  end
  inherited ActionList1: TActionList
    object acShowItemBorders: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Palette Item Borders'
      OnExecute = cmbColorBoxAlignPropertiesChange
    end
  end
end
