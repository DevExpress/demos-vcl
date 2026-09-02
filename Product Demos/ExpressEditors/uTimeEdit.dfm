inherited frmTimeEdit: TfrmTimeEdit
  inherited lcFrame: TdxLayoutControl
    object TimeEdit: TcxTimeEdit [0]
      Left = 46
      Top = 166
      EditValue = 0.454537037037037d
      Properties.ShowDate = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 181
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 349
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
      Width = 162
    end
    object cmbButtonsPosition: TcxComboBox [2]
      Left = 339
      Top = 231
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Horizontal (Left and Right)'
        'Horizontal (Right)'
        'Vertical')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Text = 'Vertical'
      Width = 160
    end
    object cbShowFastButtons: TcxCheckBox [3]
      Left = 297
      Top = 258
      Action = acShowFastButtons
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
      Width = 202
    end
    object cbButtonsVisibility: TcxCheckBox [4]
      Left = 297
      Top = 204
      Action = acButtonsVisibility
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 202
    end
    object cbShowDate: TcxCheckBox [5]
      Left = 285
      Top = 89
      Action = acShowDate
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 226
    end
    object cmbTimeFormat: TcxComboBox [6]
      Left = 349
      Top = 116
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Hours, Minutes, Seconds'
        'Hours, Minutes'
        'Hours Only')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Hours, Minutes, Seconds'
      Width = 162
    end
    object cbUse24HourFormat: TcxCheckBox [7]
      Left = 285
      Top = 143
      Action = acUse24HourFormat
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 226
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 229
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 250
      ItemIndex = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxTimeEdit1'
      CaptionOptions.Visible = False
      Control = TimeEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
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
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Position'
      Control = cmbButtonsPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Spin Buttons '
      ButtonOptions.Buttons = <>
      Index = 6
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbShowFastButtons
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 114
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbButtonsVisibility
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
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
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 7
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Time Format'
      Control = cmbTimeFormat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbUse24HourFormat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited ActionList1: TActionList
    object acShowDate: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Date'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acUse24HourFormat: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use 24-Hour Format'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowFastButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Add Fast Buttons'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acButtonsVisibility: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Spin Buttons'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
