inherited frmSpinEdit: TfrmSpinEdit
  inherited lcFrame: TdxLayoutControl
    object SpinEdit: TcxSpinEdit [0]
      Left = 46
      Top = 187
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.MaxValue = True
      Properties.AssignedValues.MinValue = True
      Properties.ValueType = vtInt
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Width = 181
    end
    object cbIsFloatValue: TcxCheckBox [1]
      Left = 285
      Top = 186
      Action = acIsFloatValue
      Caption = 'Float Value'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 226
    end
    object cmbButtonsPosition: TcxComboBox [2]
      Left = 339
      Top = 274
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
      TabOrder = 7
      Text = 'Vertical'
      Width = 160
    end
    object cmbMinMax: TcxComboBox [3]
      Left = 369
      Top = 105
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 142
    end
    object cmbIncrement: TcxComboBox [4]
      Left = 369
      Top = 132
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 142
    end
    object cmbAlignment: TcxComboBox [5]
      Left = 369
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
      Width = 142
    end
    object cmbLargeIncrement: TcxComboBox [6]
      Left = 369
      Top = 159
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        '10'
        '100')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = '100'
      Width = 142
    end
    object cbShowFastButtons: TcxCheckBox [7]
      Left = 297
      Top = 301
      Action = acShowFastButtons
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Width = 202
    end
    object cbButtonsVisibility: TcxCheckBox [8]
      Left = 297
      Top = 247
      Action = acButtonsVisibility
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 202
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 229
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 250
      ItemIndex = 8
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxSpinEdit1'
      CaptionOptions.Visible = False
      Control = SpinEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbIsFloatValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Position'
      Control = cmbButtonsPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Min / Max'
      Control = cmbMinMax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Increment'
      Control = cmbIncrement
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
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
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 9
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Alignment'
      Control = cmbAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Large Increment'
      Control = cmbLargeIncrement
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Spin Buttons '
      ButtonOptions.Buttons = <>
      Index = 8
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbShowFastButtons
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cbButtonsVisibility
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 7
    end
  end
  inherited ActionList1: TActionList
    object acIsFloatValue: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Float value'
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
