inherited frmDateEdit: TfrmDateEdit
  inherited lcFrame: TdxLayoutControl
    object DateEdit: TcxDateEdit [0]
      Left = 48
      Top = 156
      EditValue = 0d
      Properties.AssignedValues.EditFormat = True
      Properties.InputKind = ikRegExpr
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 197
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 358
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
      Width = 174
    end
    object cbShowTodayButton: TcxCheckBox [2]
      Left = 306
      Top = 170
      Action = acShowTodayButton
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 226
    end
    object cbShowNowButton: TcxCheckBox [3]
      Left = 306
      Top = 143
      Action = acShowNowButton
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 226
    end
    object cbShowClearButton: TcxCheckBox [4]
      Left = 306
      Top = 116
      Action = acShowClearButton
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 226
    end
    object cmbKind: TcxComboBox [5]
      Left = 358
      Top = 89
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Date'
        'Date and Time')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Date'
      Width = 174
    end
    object cmbView: TcxComboBox [6]
      Left = 358
      Top = 224
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Default'
        'Classic'
        'Modern'
        'TouchUI')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Text = 'Default'
      Width = 174
    end
    object cbShowWeekNumbers: TcxCheckBox [7]
      Left = 306
      Top = 251
      Action = acShowWeekNumbers
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Width = 226
    end
    object cbShowTime: TcxCheckBox [8]
      Left = 306
      Top = 197
      Action = acShowTime
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 226
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxDateEdit1'
      CaptionOptions.Visible = False
      Control = DateEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 197
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
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowTodayButton
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 118
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liShowNowButton: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowNowButton
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowClearButton
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Kind'
      Control = cmbKind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'View'
      Control = cmbView
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowWeekNumbers
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liShowTime: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowTime
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 9
    end
  end
  inherited ActionList1: TActionList
    object acShowClearButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Clear Button'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowNowButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Now Button'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowTodayButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Today Button'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowTime: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Time'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowWeekNumbers: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Week Numbers'
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
