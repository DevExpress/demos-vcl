inherited frmZoomTrackBar: TfrmZoomTrackBar
  inherited lcFrame: TdxLayoutControl
    object ZoomTrackBar: TdxZoomTrackBar [0]
      Left = 47
      Top = 169
      Properties.FirstRange.Frequency = 2
      Properties.FirstRange.LineSize = 1
      Properties.FirstRange.PageSize = 2
      Properties.SecondRange.Frequency = 1
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
      Height = 44
      Width = 270
    end
    object cbOrientation: TcxCheckBox [1]
      Left = 376
      Top = 46
      Action = acOrientation
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 249
    end
    object cbReverseDirection: TcxCheckBox [2]
      Left = 376
      Top = 73
      Action = acReverseDirection
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 249
    end
    object cbShowChangeButtons: TcxCheckBox [3]
      Left = 376
      Top = 100
      Action = acShowChangeButtons
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
      Width = 249
    end
    object cbShowTicks: TcxCheckBox [4]
      Left = 376
      Top = 127
      Action = acShowTicks
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 249
    end
    object cbShowTrack: TcxCheckBox [5]
      Left = 376
      Top = 154
      Action = acShowTrack
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 249
    end
    object cmbTextOrientation: TcxComboBox [6]
      Left = 504
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
      Left = 504
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
      Left = 504
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
      Left = 504
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
    object edFrequency1: TcxSpinEdit [10]
      Left = 504
      Top = 181
      Properties.ImmediatePost = True
      Properties.Increment = 5.000000000000000000
      Properties.MaxValue = 100.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Value = 25
      Width = 121
    end
    object edFrequency2: TcxSpinEdit [11]
      Left = 504
      Top = 208
      Properties.ImmediatePost = True
      Properties.Increment = 5.000000000000000000
      Properties.MaxValue = 400.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acReverseDirectionExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Value = 25
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 320
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      ItemIndex = 10
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'dxZoomTrackBar1'
      CaptionOptions.Visible = False
      Control = ZoomTrackBar
      ControlOptions.OriginalHeight = 270
      ControlOptions.OriginalWidth = 270
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
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cbShowChangeButtons
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 101
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = cbShowTicks
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowTrack
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Text Orientation'
      Control = cmbTextOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Marks'
      Control = cmbTickMarks
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Type'
      Control = cmbTickType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Tick Size'
      Control = edTickSize
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'First Range Frequency'
      Control = edFrequency1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Second Range Frequency'
      Control = edFrequency2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
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
    object acShowChangeButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Change Buttons'
      Checked = True
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
