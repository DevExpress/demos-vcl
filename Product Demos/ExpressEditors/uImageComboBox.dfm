inherited frmImageComboBox: TfrmImageComboBox
  inherited lcFrame: TdxLayoutControl
    object ImageComboBox: TcxImageComboBox [0]
      Left = 56
      Top = 119
      EditValue = 0
      Properties.Images = dmMain.ilMain
      Properties.Items = <
        item
          Description = 'Dr'
          ImageIndex = 4
          Value = 0
        end
        item
          Description = 'Mr'
          ImageIndex = 5
          Value = 1
        end
        item
          Description = 'Ms'
          ImageIndex = 6
          Value = 2
        end
        item
          Description = 'Miss'
          ImageIndex = 7
          Value = 3
        end
        item
          Description = 'Mrs'
          ImageIndex = 8
          Value = 4
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 152
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 363
      Top = 79
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
      Width = 139
    end
    object cmbImageAlign: TcxComboBox [2]
      Left = 363
      Top = 133
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left'
        'Right')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Left'
      Width = 139
    end
    object edDropDownRowCount: TcxSpinEdit [3]
      Left = 363
      Top = 106
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 25.000000000000000000
      Properties.OnEditValueChanged = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Value = 8
      Width = 139
    end
    object cbShowDescription: TcxCheckBox [4]
      Left = 276
      Top = 160
      Action = acShowDescription
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 226
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 220
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxImageComboBox1'
      CaptionOptions.Visible = False
      Control = ImageComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 152
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Text = 'Alignment'
      Control = cmbAlignment
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
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Image Align'
      Control = cmbImageAlign
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Drop Down Rows'
      Control = edDropDownRowCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowDescription
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 109
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 5
    end
  end
  inherited ActionList1: TActionList
    object acShowDescription: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Description'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
