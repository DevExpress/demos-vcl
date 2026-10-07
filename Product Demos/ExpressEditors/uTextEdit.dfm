inherited frmTextEdit: TfrmTextEdit
  ExplicitWidth = 712
  ExplicitHeight = 541
  inherited lcFrame: TdxLayoutControl
    ExplicitWidth = 712
    ExplicitHeight = 541
    object TextEdit: TcxTextEdit [0]
      Left = 50
      Top = 236
      Properties.Nullstring = 'Sample Text'
      Properties.UseNullString = True
      Properties.OnChange = TextEditPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Sample Text'
      Width = 191
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 374
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left'
        'Right'
        'Center')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Left'
      Width = 123
    end
    object mmLookupItems: TcxMemo [2]
      Left = 271
      Top = 150
      Lines.Strings = (
        'First lookup item'
        'Second lookup item'
        'Third lookup item'
        'First season'
        'Second season'
        'Third season'
        'Fourth season')
      Properties.ScrollBars = ssVertical
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Height = 115
      Width = 226
    end
    object cmbEchoMode: TcxComboBox [3]
      Left = 435
      Top = 332
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Password')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Text = 'Normal'
      Width = 50
    end
    object cbUseNullString: TcxCheckBox [4]
      Left = 271
      Top = 410
      Action = acUseNullString
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object edNullstring: TcxTextEdit [5]
      Left = 364
      Top = 410
      AutoSize = False
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Text = 'My Nullstring'
      Height = 21
      Width = 133
    end
    object rbDefaultPasswordChar: TcxRadioButton [6]
      Left = 283
      Top = 307
      Caption = 'Default'
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = cmbAlignmentPropertiesChange
      AutoSize = True
      Transparent = True
    end
    object rbCustomPasswordChar: TcxRadioButton [7]
      Left = 362
      Top = 307
      Caption = 'Custom...'
      TabOrder = 5
      OnClick = cmbAlignmentPropertiesChange
      AutoSize = True
      Transparent = True
    end
    object cmbCharCase: TcxComboBox [8]
      Left = 374
      Top = 89
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
      TabOrder = 2
      Text = 'Normal'
      Width = 123
    end
    object edCustomPasswordChar: TcxMaskEdit [9]
      Left = 434
      Top = 305
      AutoSize = False
      Properties.MaskKind = emkRegExpr
      Properties.EditMask = '.'
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Text = '#'
      Height = 21
      Width = 30
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      Index = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      SizeOptions.Width = 250
      ItemIndex = 6
    end
    inherited dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxTextEdit1'
      CaptionOptions.Visible = False
      Control = TextEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 191
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Horizontal Alignment'
      Control = cmbAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Lookup Items'
      CaptionOptions.Layout = clTop
      Control = mmLookupItems
      ControlOptions.OriginalHeight = 115
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Echo Mode'
      Control = cmbEchoMode
      ControlOptions.AutoControlAreaAlignment = False
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 7
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbUseNullString
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liNullstring: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nullstring'
      CaptionOptions.Visible = False
      Control = edNullstring
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 9
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avCenter
      Padding.Right = 20
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Control = rbDefaultPasswordChar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'Custom'
      CaptionOptions.Visible = False
      Control = rbCustomPasswordChar
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Password Char'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = ' Password Char '
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 6
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Char Case'
      Control = cmbCharCase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object liCustomPasswordChar: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Control = edCustomPasswordChar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object licbShowPasswordRevealButton: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Show Password Reveal Button'
      CaptionOptions.Layout = clLeft
      State = cbsChecked
      OnClick = licbShowPasswordRevealButtonClick
      Index = 2
    end
  end
  inherited ActionList1: TActionList
    object acUseNullString: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Nullstring'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
