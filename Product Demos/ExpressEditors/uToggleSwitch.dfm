inherited frmToggleSwitch: TfrmToggleSwitch
  inherited lcFrame: TdxLayoutControl
    object ToggleSwitch: TdxToggleSwitch [0]
      Left = -105
      Top = 57
      Caption = 'Toggle Switch'
      Checked = True
      Properties.Alignment = taCenter
      Properties.StateIndicator.Kind = sikText
      Properties.OnChange = ToggleSwitchPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
      Width = 200
    end
    object cmbState: TcxComboBox [1]
      Left = 196
      Top = -101
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Off'
        'On'
        'Grayed')
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'On'
      Width = 204
    end
    object rgAlignment: TcxRadioGroup [2]
      Left = 154
      Top = -31
      Caption = ' Alignment '
      Properties.Items = <
        item
          Caption = 'Left Justify'
        end
        item
          Caption = 'Right Justify'
        end
        item
          Caption = 'Center'
        end>
      Properties.OnChange = cmbStatePropertiesChange
      ItemIndex = 2
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 3
      Height = 105
      Width = 246
    end
    object edCaption: TcxTextEdit [3]
      Left = 196
      Top = -58
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Toggle Switch'
      Width = 204
    end
    object cmbIndicatorKind: TcxComboBox [4]
      Left = 217
      Top = 114
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Text'
        'Glyph')
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Text'
      Width = 171
    end
    object imOffGlyph: TcxImage [5]
      Left = 217
      Top = 141
      Picture.Data = {
        0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
        2220656E636F64696E673D225554462D38223F3E0D0A3C737667207665727369
        6F6E3D22312E31222069643D225F7833335F5F53796D626F6C735F436972636C
        65642220783D223070782220793D22307078222076696577426F783D22302030
        2031362031362220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F737667223E0D0A093C7374796C6520747970653D22746578742F
        637373223E2E5265647B66696C6C3A234431314331433B7D3C2F7374796C653E
        0D0A093C7061746820636C6173733D225265642220643D224D20382E30323320
        302E393939204320342E31323320302E39393920312E30323320342E30393920
        312E30323320372E393939204320312E3032332031312E38393920342E313233
        2031342E39393920382E3032332031342E39393920432031312E393233203134
        2E3939392031352E3032332031312E3839392031352E30323320372E39393920
        432031352E30323320342E3039392031312E39323320302E39393920382E3032
        3320302E393939205A204D2031312E34323320392E393939204C2031302E3032
        332031312E333939204C20382E30323320392E333939204C20362E3032332031
        312E333939204C20342E36323320392E393939204C20362E36323320372E3939
        39204C20342E36323320352E393939204C20362E30323320342E353939204C20
        382E30323320362E353939204C2031302E30323320342E353939204C2031312E
        34323320352E393939204C20392E34323320372E393939204C2031312E343233
        20392E393939205A222F3E0D0A3C2F7376673E0D0A}
      Properties.FitMode = ifmNormal
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.PopupMenuLayout.MenuItems = [pmiLoad]
      Properties.ShowFocusRect = False
      Properties.OnAssignPicture = imOffGlyphPropertiesAssignPicture
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Height = 30
      Width = 30
    end
    object imOnGlyph: TcxImage [6]
      Left = 338
      Top = 141
      Picture.Data = {
        0D546478536D617274496D6167653C3F786D6C2076657273696F6E3D22312E30
        2220656E636F64696E673D225554462D38223F3E0D0A3C737667207665727369
        6F6E3D22312E31222069643D225F7833335F5F53796D626F6C735F436972636C
        65642220783D223070782220793D22307078222076696577426F783D22302030
        2031362031362220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F737667223E0D0A093C7374796C6520747970653D22746578742F
        637373223E2E477265656E7B66696C6C3A233033394332333B7D3C2F7374796C
        653E0D0A093C7061746820636C6173733D22477265656E2220643D224D20372E
        39363920312E303139204320342E30363920312E30313920302E39363920342E
        31313920302E39363920382E303139204320302E3936392031312E3931392034
        2E3036392031352E30313920372E3936392031352E30313920432031312E3836
        392031352E3031392031342E3936392031312E3931392031342E39363920382E
        30313920432031342E39363920342E3131392031312E38363920312E30313920
        372E39363920312E303139205A204D20362E3936392031312E303139204C2034
        2E30363920382E313139204C20352E34363920362E373139204C20362E393639
        20382E323139204C2031302E35363920342E363139204C2031312E3936392036
        2E303139204C20362E3936392031312E303139205A222F3E0D0A3C2F7376673E
        0D0A}
      Properties.FitMode = ifmNormal
      Properties.GraphicClassName = 'TdxSmartImage'
      Properties.PopupMenuLayout.MenuItems = [pmiLoad]
      Properties.OnAssignPicture = imOffGlyphPropertiesAssignPicture
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
      Height = 30
      Width = 30
    end
    object edOffText: TcxTextEdit [7]
      Left = 217
      Top = 177
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Text = 'edOffText'
      Width = 50
    end
    object edOnText: TcxTextEdit [8]
      Left = 338
      Top = 177
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Text = 'edOnText'
      Width = 50
    end
    object cmbIndicatorPosition: TcxComboBox [9]
      Left = 217
      Top = 204
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Outside'
        'Inside')
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Text = 'Outside'
      Width = 171
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      ItemIndex = 5
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 200
      CaptionOptions.Text = 'dxToggleSwitch1'
      CaptionOptions.Visible = False
      Control = ToggleSwitch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'State'
      Control = cmbState
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = rgAlignment
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Caption'
      Control = edCaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = ' State Indicator '
      ItemIndex = 1
      Index = 5
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Kind'
      Control = cmbIndicatorKind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Off Glyph'
      Control = imOffGlyph
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'On Glyph'
      Control = imOnGlyph
      ControlOptions.OriginalHeight = 30
      ControlOptions.OriginalWidth = 30
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Off Text'
      Control = edOffText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      CaptionOptions.Text = 'On Text'
      Control = edOnText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Position'
      Control = cmbIndicatorPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup5
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
  end
end
