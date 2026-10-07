inherited frmRangeTrackBar: TfrmRangeTrackBar
  inherited lcFrame: TdxLayoutControl
    object RangeTrackBar: TdxRangeTrackBar [0]
      Left = 47
      Top = 169
      Properties.Frequency = 10
      Properties.LineSize = 10
      Properties.Max = 100
      Properties.PageSize = 20
      Properties.OnChange = RangeTrackBarPropertiesChange
      Range.Max = 80
      Range.Min = 20
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
      Height = 45
      Width = 220
    end
    object cbOrientation: TcxCheckBox [1]
      Left = 326
      Top = 46
      Action = acOrientation
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 205
    end
    object cbReverseDirection: TcxCheckBox [2]
      Left = 326
      Top = 73
      Action = acReverseDirection
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 205
    end
    object cbShowTicks: TcxCheckBox [3]
      Left = 326
      Top = 100
      Action = acShowTicks
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 205
    end
    object cbShowTrack: TcxCheckBox [4]
      Left = 326
      Top = 127
      Action = acShowTrack
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 205
    end
    object edFrequency: TcxSpinEdit [5]
      Left = 410
      Top = 208
      Properties.ImmediatePost = True
      Properties.Increment = 10.000000000000000000
      Properties.MaxValue = 50.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Value = 10
      Width = 121
    end
    object cmbTextOrientation: TcxComboBox [6]
      Left = 410
      Top = 235
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Horizontal'
        'Vertical')
      Properties.OnChange = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Text = 'Horizontal'
      Width = 121
    end
    object cmbTickMarks: TcxComboBox [7]
      Left = 410
      Top = 262
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Both'
        'Top'
        'Bottom')
      Properties.OnChange = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Text = 'Bottom'
      Width = 121
    end
    object cmbTickType: TcxComboBox [8]
      Left = 410
      Top = 289
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ticks'
        'Numbers'
        'Value Number'
        'Ticks and Numbers')
      Properties.OnChange = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 10
      Text = 'Value Number'
      Width = 121
    end
    object edTickSize: TcxSpinEdit [9]
      Left = 410
      Top = 316
      Properties.ImmediatePost = True
      Properties.MaxValue = 20.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Value = 3
      Width = 121
    end
    object edRangeMax: TcxSpinEdit [10]
      Left = 410
      Top = 181
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.Increment = 10.000000000000000000
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Value = 80
      Width = 121
    end
    object edRangeMin: TcxSpinEdit [11]
      Left = 410
      Top = 154
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.Increment = 10.000000000000000000
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Value = 20
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 270
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      ItemIndex = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'dxRangeTrackBar1'
      CaptionOptions.Visible = False
      Control = RangeTrackBar
      ControlOptions.OriginalHeight = 220
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbReverseDirection
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowTicks
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowTrack
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Frequency'
      Control = edFrequency
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Text Orientation'
      Control = cmbTextOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Marks'
      Control = cmbTickMarks
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Type'
      Control = cmbTickType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Tick Size'
      Control = edTickSize
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Range Max'
      Control = edRangeMax
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Range Min'
      Control = edRangeMin
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited ActionList1: TActionList
    object acOrientation: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Vertical Orientation'
      OnExecute = acOrientationExecute
    end
    object acReverseDirection: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Reverse Direction'
      OnExecute = acReverseDirectionExecute
    end
    object acShowTicks: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Ticks'
      Checked = True
      OnExecute = acReverseDirectionExecute
    end
    object acShowTrack: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Track'
      Checked = True
      OnExecute = acReverseDirectionExecute
    end
  end
end
