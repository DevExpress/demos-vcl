inherited frmMCListBox: TfrmMCListBox
  inherited lcFrame: TdxLayoutControl
    object MCListBox: TcxMCListBox [0]
      Left = 34
      Top = 64
      Width = 389
      Height = 276
      HeaderSections = <
        item
          Text = 'First Name'
          Width = 75
        end
        item
          Text = 'Last Name'
          Width = 75
        end
        item
          Text = 'Department'
          Width = 100
        end
        item
          Text = 'Position'
          Width = 110
        end>
      TabOrder = 0
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 585
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left Justify'
        'Right Justify'
        'Center')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Left Justify'
      Width = 95
    end
    object cbMultiSelect: TcxCheckBox [2]
      Left = 469
      Top = 116
      Action = acMultiSelect
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 211
    end
    object cbMultiLines: TcxCheckBox [3]
      Left = 469
      Top = 89
      Action = acMultiLines
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 211
    end
    object cbShowColumnLines: TcxCheckBox [4]
      Left = 469
      Top = 143
      Action = acShowColumnLines
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 115
    end
    object edColumnLinesColor: TdxColorEdit [5]
      Left = 590
      Top = 143
      ColorValue = clBtnFace
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 90
    end
    object cmbSortColumn1: TcxComboBox [6]
      Left = 585
      Top = 240
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Ascending'
        'Descending')
      Properties.OnChange = cmbSortColumn1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Text = 'None'
      Width = 95
    end
    object cmbSortColumn2: TcxComboBox [7]
      Left = 585
      Top = 267
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Ascending'
        'Descending')
      Properties.OnChange = cmbSortColumn1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Text = 'None'
      Width = 95
    end
    object cmbSortColumn3: TcxComboBox [8]
      Left = 585
      Top = 294
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Ascending'
        'Descending')
      Properties.OnChange = cmbSortColumn1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Text = 'None'
      Width = 95
    end
    object cmbSortColumn4: TcxComboBox [9]
      Left = 585
      Top = 321
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Ascending'
        'Descending')
      Properties.OnChange = cmbSortColumn1PropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Text = 'None'
      Width = 95
    end
    object cbShowEndEllipsis: TcxCheckBox [10]
      Left = 469
      Top = 170
      Action = acShowEndEllipsis
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 211
    end
    object cbShowHeader: TcxCheckBox [11]
      Left = 469
      Top = 197
      Action = acShowHeader
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
      Width = 211
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 670
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.Width = 413
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 250
      ItemIndex = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avCenter
      CaptionOptions.Text = 'cxMCListBox1'
      CaptionOptions.Visible = False
      Control = MCListBox
      ControlOptions.OriginalHeight = 276
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Alignment'
      Control = cmbAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbMultiSelect
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbMultiLines
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 122
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbShowColumnLines
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      Control = edColumnLinesColor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 12
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'First Name Sort Order'
      Control = cmbSortColumn1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Last Name Sort Order'
      Control = cmbSortColumn2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Department Sort Order'
      Control = cmbSortColumn3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Position Sort Order'
      Control = cmbSortColumn4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowEndEllipsis
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowHeader
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 6
    end
  end
  inherited ActionList1: TActionList
    object acMultiLines: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Multiple Lines'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acMultiSelect: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Multi-Select'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowColumnLines: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Column Lines'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowEndEllipsis: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show End Ellipsis'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowHeader: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Header'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
