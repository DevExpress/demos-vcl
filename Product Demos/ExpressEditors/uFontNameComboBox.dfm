inherited frmFontNameComboBox: TfrmFontNameComboBox
  inherited lcFrame: TdxLayoutControl
    object FontNameComboBox: TcxFontNameComboBox [1]
      Left = 77
      Top = 261
      Properties.ShowFontTypeIcon = [ftiShowInList]
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 203
    end
    object cmbPreviewAlignment: TcxComboBox [2]
      Left = 420
      Top = 92
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
      Text = 'Center'
      Width = 182
    end
    object edPreviewText: TcxTextEdit [3]
      Left = 420
      Top = 119
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Sample'
      Width = 182
    end
    object cmbPreviewType: TcxComboBox [4]
      Left = 420
      Top = 146
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Font Name'
        'Custom'
        'Full Alphabet')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Font Name'
      Width = 182
    end
    object cbShowButtons: TcxCheckBox [5]
      Left = 350
      Top = 173
      Action = acShowButtons
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object cbVisible: TcxCheckBox [6]
      Left = 350
      Top = 200
      Action = acVisible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cbShowInList: TcxCheckBox [7]
      Left = 350
      Top = 394
      Action = acShowInList
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
    end
    object cbShowInCombo: TcxCheckBox [8]
      Left = 350
      Top = 367
      Action = acShowInCombo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object cbUseOwnFont: TcxCheckBox [9]
      Left = 338
      Top = 449
      Action = acUseOwnFont
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 300
      ItemIndex = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxFontNameComboBox1'
      CaptionOptions.Visible = False
      Control = FontNameComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 203
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'Alignment'
      Control = cmbPreviewAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Font Preview '
      ButtonOptions.Buttons = <>
      ItemIndex = 4
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object liPreviewText: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Preview Text'
      Control = edPreviewText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Preview Type'
      Control = cmbPreviewType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbShowButtons
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbVisible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Show Font Type Icon '
      ButtonOptions.Buttons = <>
      Index = 5
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cbShowInList
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cbShowInCombo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbUseOwnFont
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 8
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object cbgIncrementalFiltering: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Incremental Filtering'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Checked = False
      ButtonOptions.CheckBox.Visible = True
      ItemIndex = 1
      OnCheckBoxStateChanged = cmbAlignmentPropertiesChange
      Index = 3
    end
    object cbHighlightSearchText: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acHighlightSearchText
      Enabled = False
      Index = 0
    end
    object cbUseContainsOperator: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acUseContainsOperator
      Enabled = False
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    object acShowButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Buttons'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acHighlightSearchText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlight Search Text'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acUseContainsOperator: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Contains Operator'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowInCombo: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show in Combo'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowInList: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show in List'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acUseOwnFont: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Own Font'
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
