inherited frmComboBox: TfrmComboBox
  inherited lcFrame: TdxLayoutControl
    object ComboBox: TcxComboBox [0]
      Left = -99
      Top = 278
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Text = 'ComboBox'
      Width = 197
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 244
      Top = 62
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
      Width = 191
    end
    object rbGlyphNone: TcxRadioButton [2]
      Left = 171
      Top = 123
      Width = 112
      Height = 20
      Caption = 'None'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = cmbAlignmentPropertiesChange
      Transparent = True
    end
    object rbGlyphCustom: TcxRadioButton [3]
      Left = 289
      Top = 123
      Width = 59
      Height = 20
      Caption = 'Custom'
      TabOrder = 3
      OnClick = cmbAlignmentPropertiesChange
      Transparent = True
    end
    object imCustomGlyph: TcxImage [4]
      Left = 354
      Top = 123
      Picture.Data = {
        0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
        2220656E636F64696E673D225554462D38223F3E0D0A3C737667207665727369
        6F6E3D22312E31222069643D224C617965725F312220786D6C6E733D22687474
        703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A78
        6C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C69
        6E6B2220783D223070782220793D22307078222076696577426F783D22302030
        20333220333222207374796C653D22656E61626C652D6261636B67726F756E64
        3A6E6577203020302033322033323B2220786D6C3A73706163653D2270726573
        65727665223E262331333B262331303B3C7374796C6520747970653D22746578
        742F6373732220786D6C3A73706163653D227072657365727665223E2E426C61
        636B7B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
        426C75657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C6720
        69643D224C617965725F32223E0D0A09093C7061746820636C6173733D22426C
        61636B2220643D224D31332C31374C322C32386C322C326C31312D31316C312D
        316C2D322D324C31332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D
        0A090909093C7061746820636C6173733D22426C75652220643D224D32302C34
        632D342E342C302D382C332E362D382C3873332E362C382C382C3873382D332E
        362C382D385332342E342C342C32302C347A204D32302C3138632D332E332C30
        2D362D322E372D362D3673322E372D362C362D3673362C322E372C362C362020
        2623393B2623393B2623393B2623393B5332332E332C31382C32302C31387A22
        2F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      Properties.FitMode = ifmStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.PopupMenuLayout.MenuItems = [pmiLoad]
      Properties.OnAssignPicture = imCustomGlyphPropertiesAssignPicture
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Height = 20
      Width = 20
    end
    object cmbCharCase: TcxComboBox [5]
      Left = 244
      Top = 177
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
      TabOrder = 5
      Text = 'Normal'
      Width = 191
    end
    object cmbDropDownListStyle: TcxComboBox [6]
      Left = 229
      Top = 238
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'EditFixedList'
        'EditList'
        'FixedList')
      Properties.OnChange = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 6
      Text = 'EditList'
      Width = 194
    end
    object edDropDownRowCount: TcxSpinEdit [7]
      Left = 229
      Top = 265
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.MaxValue = 25.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Value = 8
      Width = 194
    end
    object cbDropDownSizeable: TcxCheckBox [8]
      Left = 171
      Top = 292
      Action = acDropDownSizeable
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object mmItems: TcxMemo [9]
      Left = 159
      Top = 365
      Lines.Strings = (
        'January'
        'February'
        'March'
        'April'
        'May'
        'June'
        'July'
        'August'
        'September'
        'October'
        'November'
        'December')
      Properties.ScrollBars = ssVertical
      Properties.OnChange = mmItemsPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Height = 97
      Width = 276
    end
    object cbSorted: TcxCheckBox [10]
      Left = 159
      Top = 495
      Action = acSorted
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Transparent = True
    end
    object cmbPopupAlignment: TcxComboBox [11]
      Left = 244
      Top = 468
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
      TabOrder = 10
      Text = 'Left Justify'
      Width = 191
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 300
      ItemIndex = 10
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxComboBox1'
      CaptionOptions.Visible = False
      Control = ComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 197
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
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Button Glyph '
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = rbGlyphNone
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = rbGlyphCustom
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      Control = imCustomGlyph
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 20
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
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Char Case'
      Control = cmbCharCase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Drop Down '
      ItemIndex = 2
      Index = 7
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'List Style'
      Control = cmbDropDownListStyle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDropDownRowCount: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Row Count'
      Control = edDropDownRowCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cbDropDownSizeable
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Items'
      CaptionOptions.Layout = clTop
      Control = mmItems
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbSorted
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 11
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
      Index = 4
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 8
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 12
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Popup Alignment'
      Control = cmbPopupAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 10
    end
  end
  inherited ActionList1: TActionList
    object acDropDownSizeable: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Sizeable'
      OnExecute = cmbAlignmentPropertiesChange
    end
    object acSorted: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Sorted'
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
