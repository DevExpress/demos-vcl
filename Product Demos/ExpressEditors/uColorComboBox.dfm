inherited frmColorComboBox: TfrmColorComboBox
  inherited lcFrame: TdxLayoutControl
    object ColorComboBox: TcxColorComboBox [1]
      Left = 48
      Top = 233
      ColorValue = clBlack
      Properties.CustomColors = <>
      Properties.OnChange = ColorComboBoxPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 226
    end
    object cmbAlignment: TcxComboBox [2]
      Left = 409
      Top = 85
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left Justify'
        'Right Justify'
        'Center')
      Properties.OnChange = cbAllowSelectColorPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Left Justify'
      Width = 137
    end
    object cbAllowSelectColor: TcxCheckBox [3]
      Left = 320
      Top = 128
      Action = acAllowSelectColor
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object cmbColorBoxAlign: TcxComboBox [4]
      Left = 409
      Top = 171
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left'
        'Right')
      Properties.OnChange = cbAllowSelectColorPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Left'
      Width = 137
    end
    object edColorBoxWidth: TcxSpinEdit [5]
      Left = 409
      Top = 198
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 1000.000000000000000000
      Properties.OnEditValueChanged = cbAllowSelectColorPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Value = 30
      Width = 137
    end
    object cbColorDialogShowFull: TcxCheckBox [6]
      Left = 320
      Top = 241
      Action = acColorDialogShowFull
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cmbColorDialogType: TcxComboBox [7]
      Left = 409
      Top = 268
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Default'
        'Advanced')
      Properties.OnChange = cbAllowSelectColorPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Text = 'Default'
      Width = 137
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
      ItemIndex = 12
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxColorComboBox1'
      CaptionOptions.Visible = False
      Control = ColorComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object liColorValue: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelBoldItemCaption
      CaptionOptions.Text = 'ColorValue: '
      Index = 1
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
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cbAllowSelectColor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Colorbox Align'
      Control = cmbColorBoxAlign
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Colorbox Width'
      Control = edColorBoxWidth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cbColorDialogShowFull
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Color Dialog Type'
      Control = cmbColorDialogType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 10
    end
    object dxLayoutEmptySpaceItem10: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 7
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 12
    end
    object cbgIncrementalFiltering: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Incremental Filtering'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Checked = False
      ButtonOptions.CheckBox.Visible = True
      ItemIndex = 1
      OnCheckBoxStateChanged = cbAllowSelectColorPropertiesChange
      Index = 11
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
    object acAllowSelectColor: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Allow Select Color'
      OnExecute = cbAllowSelectColorPropertiesChange
    end
    object acColorDialogShowFull: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Color Dialog Show Full'
      OnExecute = cbAllowSelectColorPropertiesChange
    end
    object acHighlightSearchText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlight Search Text'
      Checked = True
      OnExecute = cbAllowSelectColorPropertiesChange
    end
    object acUseContainsOperator: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Contains Operator'
      Checked = True
      OnExecute = cbAllowSelectColorPropertiesChange
    end
  end
end
