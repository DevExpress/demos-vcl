inherited frmProgressBar: TfrmProgressBar
  inherited lcFrame: TdxLayoutControl
    object ProgressBar: TcxProgressBar [0]
      Left = 41
      Top = 160
      AutoSize = False
      Properties.AnimationSpeed = 2
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Height = 21
      Width = 221
    end
    object cmbShowTextStyle: TcxComboBox [1]
      Left = 412
      Top = 177
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Percent'
        'Position'
        'Text')
      Properties.OnChange = cmbShowTextStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Percent'
      Width = 178
    end
    object edText: TcxTextEdit [2]
      Left = 412
      Top = 204
      Properties.OnChange = edTextPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Text = 'Executing...'
      Width = 178
    end
    object cbMarquee: TcxCheckBox [3]
      Left = 316
      Top = 259
      Action = acMarquee
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 141
    end
    object cbShowText: TcxCheckBox [4]
      Left = 328
      Top = 123
      Action = acShowText
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 262
    end
    object cmbTextOrientation: TcxComboBox [5]
      Left = 412
      Top = 150
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Horizontal'
        'Vertical')
      Properties.OnChange = cmbTextOrientationPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Horizontal'
      Width = 178
    end
    object cbOrientation: TcxCheckBox [6]
      Left = 316
      Top = 62
      Action = acOrientation
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 286
    end
    object edAnimationSpeed: TcxSpinEdit [7]
      Left = 548
      Top = 259
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 20.000000000000000000
      Properties.OnEditValueChanged = edAnimationSpeedPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Value = 2
      Width = 54
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 260
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 310
      ItemIndex = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxProgressBar1'
      CaptionOptions.Visible = False
      Control = ProgressBar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 221
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Show Text Style'
      Control = cmbShowTextStyle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Text'
      Control = edText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Text '
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbMarquee
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 66
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbShowText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Text Orientation'
      Control = cmbTextOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 4
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 6
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'Animation Speed'
      Control = edAnimationSpeed
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 54
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
  end
  inherited ActionList1: TActionList
    object acOrientation: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Vertical Orientation'
      OnExecute = acOrientationExecute
    end
    object acShowText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Text'
      Checked = True
      OnExecute = acShowTextExecute
    end
    object acMarquee: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Marquee'
      OnExecute = acMarqueeExecute
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 50
    OnTimer = Timer1Timer
    Left = 32
    Top = 32
  end
end
