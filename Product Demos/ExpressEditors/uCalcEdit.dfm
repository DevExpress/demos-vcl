inherited frmCalcEdit: TfrmCalcEdit
  inherited lcFrame: TdxLayoutControl
    object CalcEdit: TcxCalcEdit [0]
      Left = -81
      Top = 133
      EditValue = 0.000000000000000000
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
	  Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 189
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 225
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
      Text = 'Right Justify'
      Width = 175
    end
    object rbGlyphCustom: TcxRadioButton [2]
      Left = 303
      Top = 123
      Width = 59
      Height = 20
      Caption = 'Custom'
      TabOrder = 3
      OnClick = cmbAlignmentPropertiesChange
      Transparent = True
    end
    object rbGlyphNone: TcxRadioButton [3]
      Left = 185
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
    object imCustomGlyph: TcxImage [4]
      Left = 368
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
        742F6373732220786D6C3A73706163653D227072657365727665223E2E426C75
        657B66696C6C3A233131373744373B7D262331333B262331303B2623393B2E47
        7265656E7B66696C6C3A233033394332333B7D262331333B262331303B262339
        3B2E59656C6C6F777B66696C6C3A234646423131353B7D262331333B26233130
        3B2623393B2E426C61636B7B66696C6C3A233732373237323B7D262331333B26
        2331303B2623393B2E57686974657B66696C6C3A234646464646463B7D262331
        333B262331303B2623393B2E5265647B66696C6C3A234431314331433B7D2623
        31333B262331303B2623393B2E7374307B6F7061636974793A302E37353B7D3C
        2F7374796C653E0D0A3C672069643D2243616C63756C61746F72223E0D0A0909
        3C7061746820636C6173733D22426C61636B2220643D224D32392C3048313676
        313468313456314333302C302E352C32392E352C302C32392C307A204D32382C
        38483138563668313056387A222F3E0D0A09093C7061746820636C6173733D22
        426C61636B2220643D224D302C323963302C302E352C302E352C312C312C3168
        313356313648305632397A204D322E382C32302E326C312E342D312E344C372C
        32312E366C322E382D322E386C312E342C312E344C382E342C32336C322E382C
        322E386C2D312E342C312E3420202623393B2623393B4C372C32342E346C2D32
        2E382C322E386C2D312E342D312E344C352E362C32334C322E382C32302E327A
        222F3E0D0A09093C7061746820636C6173733D22426C61636B2220643D224D30
        2C317631336831345630483143302E352C302C302C302E352C302C317A204D32
        2C366834563268327634683476324838763448365638483256367A222F3E0D0A
        09093C7061746820636C6173733D2259656C6C6F772220643D224D31362C3136
        76313468313363302E352C302C312D302E352C312D315631364831367A204D32
        382C3236483138762D326831305632367A204D32382C3232483138762D326831
        305632327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
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
    object edPrecision: TcxSpinEdit [5]
      Left = 225
      Top = 177
      Properties.Alignment.Horz = taLeftJustify
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 25.000000000000000000
      Properties.OnEditValueChanged = cmbAlignmentPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Value = 6
      Width = 175
    end
    object cbScientificFormat: TcxCheckBox [6]
      Left = 173
      Top = 204
      Action = acScientificFormat
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
      SizeOptions.Width = 250
      ItemIndex = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCalcEdit1'
      CaptionOptions.Visible = False
      Control = CalcEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 189
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
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' Button Glyph '
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = rbGlyphCustom
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 59
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = rbGlyphNone
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 0
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
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Precision'
      Control = edPrecision
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbScientificFormat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
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
      Index = 7
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
  end
  inherited ActionList1: TActionList
    object acScientificFormat: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Scientific Format'
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
