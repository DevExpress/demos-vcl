inherited frmRating: TfrmRating
  inherited lcFrame: TdxLayoutControl
    object dxRatingControl1: TdxRatingControl [0]
      Left = 78
      Top = 127
      Properties.OnChange = dxRatingControl1PropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object edStep: TcxSpinEdit [1]
      Left = 349
      Top = 100
      Properties.ImmediatePost = True
      Properties.Increment = 0.100000000000000000
      Properties.MaxValue = 1.000000000000000000
      Properties.MinValue = 0.100000000000000000
      Properties.ValueType = vtFloat
      Properties.OnEditValueChanged = edStepPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Value = 0.100000000000000000
      Width = 121
    end
    object edItemCount: TcxSpinEdit [2]
      Left = 349
      Top = 73
      Properties.ImmediatePost = True
      Properties.MaxValue = 7.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = edStepPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Value = 5
      Width = 121
    end
    object cmbOrientation: TcxComboBox [3]
      Left = 349
      Top = 127
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Horizontal'
        'Vertical')
      Properties.OnChange = edStepPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Horizontal'
      Width = 121
    end
    object cbReverseDirection: TcxCheckBox [4]
      Left = 256
      Top = 181
      Action = acReverseDirection
      Properties.Alignment = taRightJustify
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 109
    end
    object peChooseImage: TcxPopupEdit [5]
      Left = 349
      Top = 208
      Properties.OnCloseUp = peChooseImagePropertiesCloseUp
      Properties.OnInitPopup = peChooseImagePropertiesInitPopup
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Text = 'Choose image set...'
      Width = 121
    end
    object cmbFillPrecision: TcxComboBox [6]
      Left = 349
      Top = 154
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Full'
        'Half'
        'Exact')
      Properties.OnChange = edStepPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Text = 'Exact'
      Width = 121
    end
    object edValue: TcxSpinEdit [7]
      Left = 349
      Top = 46
      Properties.ImmediatePost = True
      Properties.Increment = 0.100000000000000000
      Properties.MaxValue = 7.000000000000000000
      Properties.MinValue = 0.100000000000000000
      Properties.ValueType = vtFloat
      Properties.OnEditValueChanged = edStepPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 1
      Value = 3.400000000000000000
      Width = 121
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 200
      LayoutDirection = ldHorizontal
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
    end
    inherited dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      AlignHorz = ahRight
      AlignVert = avClient
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'dxRatingControl1'
      CaptionOptions.Visible = False
      Control = dxRatingControl1
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 87
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Step'
      Control = edStep
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Item Count'
      Control = edItemCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Orientation'
      Control = cmbOrientation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = cbReverseDirection
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Custom Images:'
      Control = peChooseImage
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Fill Precision '
      Control = cmbFillPrecision
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Value'
      Control = edValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionList1: TActionList
    object acReverseDirection: TAction
      AutoCheck = True
      Caption = 'Reverse Direction'
      OnExecute = edStepPropertiesChange
    end
  end
end
