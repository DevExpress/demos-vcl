inherited frmCheckGroupBox: TfrmCheckGroupBox
  Width = 591
  Height = 396
  ExplicitWidth = 591
  ExplicitHeight = 396
  inherited lcFrame: TdxLayoutControl
    Width = 591
    Height = 396
    ExplicitWidth = 591
    ExplicitHeight = 396
    object CheckGroupBox: TdxCheckGroupBox [0]
      Left = 70
      Top = 87
      Caption = 'Checked Group'
      Properties.OnChange = CheckGroupBoxPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Height = 195
      Width = 219
      object grbMain: TcxGroupBox
        Left = 31
        Top = 66
        PanelStyle.Active = True
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebsNone
        TabOrder = 0
        Height = 59
        Width = 155
        object cxLabel1: TcxLabel
          Left = 3
          Top = 3
          Align = alClient
          Caption = 'You can place any content here'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Properties.WordWrap = True
          Transparent = True
          Width = 149
          AnchorX = 78
          AnchorY = 30
        end
      end
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 411
      Top = 67
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Top Left'
        'Top Center'
        'Top Right'
        'Bottom Left'
        'Bottom Center'
        'Bottom Right'
        'Left Top'
        'Left Center'
        'Left Bottom'
        'Right Top'
        'Right Center'
        'Right Bottom'
        'Center Center')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Top Left'
      Width = 133
    end
    object cbEnabled: TcxCheckBox [2]
      Left = 359
      Top = 94
      Action = acEnabled
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object cbgPanelStyleActive: TdxCheckGroupBox [3]
      Left = 359
      Top = 237
      Caption = 'Panel Style Active'
      CheckBox.Checked = False
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 5
      Transparent = True
      Height = 66
      Width = 185
      object edPanelStyleCaptionIndent: TcxSpinEdit
        Left = 89
        Top = 23
        Properties.AssignedValues.MinValue = True
        Properties.ImmediatePost = True
        Properties.MaxValue = 50.000000000000000000
        Properties.OnEditValueChanged = cmbAlignmentPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        TabOrder = 0
        Value = 2
        Width = 83
      end
      object cxLabel2: TcxLabel
        Left = 10
        Top = 25
        Caption = 'Caption Indent'
        Transparent = True
      end
    end
    object cbCheckBoxChecked: TcxCheckBox [4]
      Left = 371
      Top = 155
      Action = acCheckBoxChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
    end
    object cbCheckBoxVisible: TcxCheckBox [5]
      Left = 371
      Top = 182
      Action = acCheckBoxVisible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableVert = True
      SizeOptions.Height = 283
      SizeOptions.Width = 290
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 193
      ItemIndex = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = CheckGroupBox
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 195
      ControlOptions.OriginalWidth = 219
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
      Control = cbEnabled
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 82
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object lgPanelStyle: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cbgPanelStyleActive
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 66
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 5
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Check Box '
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbCheckBoxChecked
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 65
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbCheckBoxVisible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    object acEnabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acCheckBoxChecked: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Checked'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acCheckBoxVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
