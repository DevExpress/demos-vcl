inherited frmRadioGroup: TfrmRadioGroup
  inherited lcFrame: TdxLayoutControl
    object RadioGroup: TcxRadioGroup [0]
      Left = 34
      Top = 70
      Caption = 'RadioGroup'
      Properties.Items = <
        item
          Caption = 'Circle'
        end
        item
          Caption = 'Rectangle'
        end
        item
          Caption = 'Ellipse'
        end
        item
          Caption = 'Triangle'
        end
        item
          Caption = 'Square'
        end>
      Properties.OnChange = RadioGroupPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 0
      Height = 131
      Width = 263
    end
    object edColumnCount: TcxSpinEdit [1]
      Left = 415
      Top = 89
      Properties.ImmediatePost = True
      Properties.MaxValue = 3.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = edColumnCountPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Value = 1
      Width = 150
    end
    object edSelectedIndex: TcxSpinEdit [2]
      Left = 432
      Top = 150
      Properties.ImmediatePost = True
      Properties.MaxValue = 4.000000000000000000
      Properties.MinValue = -1.000000000000000000
      Properties.OnEditValueChanged = edSelectedIndexPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Width = 121
    end
    object edSelectedValue: TcxComboBox [3]
      Left = 432
      Top = 177
      Properties.Items.Strings = (
        'Circle'
        'Rectangle'
        'Ellipse'
        'Triangle'
        'Square'
        'Nothing')
      Properties.OnChange = edSelectedValuePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Width = 121
    end
    object edCaption: TcxTextEdit [4]
      Left = 415
      Top = 62
      Properties.OnChange = edCaptionPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Group Caption'
      Width = 150
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
      ItemIndex = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = RadioGroup
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 131
      ControlOptions.OriginalWidth = 263
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Column Count'
      Control = edColumnCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = ' Selected Item Management '
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 4
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Selected Index'
      Control = edSelectedIndex
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Set Edit Value'
      Control = edSelectedValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
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
      Index = 5
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Caption'
      Control = edCaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
