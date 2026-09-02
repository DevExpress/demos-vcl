inherited frmMemoEdit: TfrmMemoEdit
  inherited lcFrame: TdxLayoutControl
    object MemoEdit: TcxMemo [0]
      Left = 48
      Top = 84
      Properties.Alignment = taLeftJustify
      Properties.ScrollBars = ssHorizontal
      Properties.WordWrap = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 139
      Width = 220
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 390
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
      Width = 215
    end
    object cmbCharCase: TcxComboBox [2]
      Left = 390
      Top = 116
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Upper Case'
        'Lower Case')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Normal'
      Width = 215
    end
    object cbWordWrap: TcxCheckBox [3]
      Left = 329
      Top = 143
      Action = acWordWrap
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 276
    end
    object cbAcceptReturn: TcxCheckBox [4]
      Left = 329
      Top = 170
      Action = acAcceptReturn
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 276
    end
    object cbAcceptTab: TcxCheckBox [5]
      Left = 329
      Top = 197
      Action = acAcceptTab
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 276
    end
    object edMaxLength: TcxSpinEdit [6]
      Left = 390
      Top = 224
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 10000.000000000000000000
      Properties.OnEditValueChanged = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 215
    end
    object cmbScrollBars: TcxComboBox [7]
      Left = 390
      Top = 89
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Horizontal'
        'Vertical'
        'Both')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Vertical'
      Width = 215
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 273
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 300
      ItemIndex = 8
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxMemo1'
      CaptionOptions.Visible = False
      Control = MemoEdit
      ControlOptions.OriginalHeight = 139
      ControlOptions.OriginalWidth = 220
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
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Char Case'
      Control = cmbCharCase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbWordWrap
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cbAcceptReturn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = cbAcceptTab
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Max Length'
      Control = edMaxLength
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 8
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Scrollbars'
      Control = cmbScrollBars
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited ActionList1: TActionList
    object acWordWrap: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Word Wrap'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acAcceptReturn: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Accept Return'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acAcceptTab: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Accept Tab'
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
