inherited frmLookupComboBox: TfrmLookupComboBox
  inherited lcFrame: TdxLayoutControl
    object LookupComboBox: TcxLookupComboBox [1]
      Left = 45
      Top = 252
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'FullName'
      Properties.ListColumns = <
        item
          Caption = 'Full Name'
          Width = 150
          FieldName = 'FullName'
        end
        item
          Caption = 'Department'
          Width = 100
          FieldName = 'Department_Name'
        end
        item
          Caption = 'Position'
          Width = 150
          FieldName = 'Title'
        end>
      Properties.ListSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 207
    end
    object cmbAlignment: TcxComboBox [2]
      Left = 424
      Top = 99
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
      Width = 160
    end
    object edDropDownRowCount: TcxSpinEdit [3]
      Left = 424
      Top = 142
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
      Width = 160
    end
    object cbDropDownSizeable: TcxCheckBox [4]
      Left = 308
      Top = 169
      Action = acDropDownSizeable
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
    end
    object cmbKeyFieldName: TcxComboBox [5]
      Left = 424
      Top = 306
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Full Name'
        'Department'
        'Position')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Full Name'
      Width = 160
    end
    object cmbGridLines: TcxComboBox [6]
      Left = 371
      Top = 367
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Both'
        'None'
        'Vertical'
        'Horizontal')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Text = 'Both'
      Width = 201
    end
    object cbShowHeader: TcxCheckBox [7]
      Left = 320
      Top = 394
      Action = acShowHeader
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
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
      ItemIndex = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxLookupComboBox1'
      CaptionOptions.Visible = False
      Control = LookupComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 207
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
      CaptionOptions.Text = 'DropDown Rows Count'
      Control = edDropDownRowCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbDropDownSizeable
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
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
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 7
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Result Field'
      Control = cmbKeyFieldName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' List Options '
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 10
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 9
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Grid Lines'
      Control = cmbGridLines
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Visible = False
      Control = cbShowHeader
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 11
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object cbgIncrementalFiltering: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Incremental Filtering'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Visible = True
      ItemIndex = 1
      OnCheckBoxStateChanged = cmbAlignmentPropertiesChange
      Index = 6
    end
    object cbHighlightSearchText: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acHighlightSearchText
      Index = 0
    end
    object cbUseContainsOperator: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acUseContainsOperator
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    object acDropDownSizeable: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'DropDown Sizeable'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acHighlightSearchText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlight Search Text'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acUseContainsOperator: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Contains Operator'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acShowHeader: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Header'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
