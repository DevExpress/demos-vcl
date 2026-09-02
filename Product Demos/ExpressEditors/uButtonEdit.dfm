inherited frmButtonEdit: TfrmButtonEdit
  Width = 724
  Height = 377
  inherited lcFrame: TdxLayoutControl
    Width = 724
    Height = 377
    object ButtonEdit: TcxButtonEdit [0]
      Left = 58
      Top = 173
      Properties.Buttons = <
        item
          Kind = bkEllipsis
        end
        item
        end
        item
          Action = actButton3Click
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
            617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
            2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
            77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
            22307078222076696577426F783D2230203020333220333222207374796C653D
            22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
            3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
            303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
            63653D227072657365727665223E2E426C61636B7B66696C6C3A233733373337
            343B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
            43423031423B7D262331333B262331303B2623393B2E477265656E7B66696C6C
            3A233132394334393B7D262331333B262331303B2623393B2E426C75657B6669
            6C6C3A233338374342373B7D262331333B262331303B2623393B2E5265647B66
            696C6C3A234430323132373B7D262331333B262331303B2623393B2E57686974
            657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
            74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
            74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
            7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
            2E7374337B646973706C61793A6E6F6E653B66696C6C3A233733373337343B7D
            3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D22477265656E22
            20706F696E74733D2232372C342031312C323020352C313420322C3137203131
            2C32362033302C3720222F3E0D0A3C2F7376673E0D0A}
          Kind = bkGlyph
        end
        item
          Caption = '$'
          Kind = bkText
          LeftAlignment = True
        end>
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d(\d\d?)? - \d\d - \d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 0
      Text = '(131)651-12-32'
      Width = 218
    end
    object cmbViewStyle: TcxComboBox [1]
      Left = 376
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'HideCursor'
        'ButtonsOnly'
        'ButtonsAutoWidth')
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Normal'
      Width = 273
    end
    object edButton1Caption: TcxTextEdit [2]
      Left = 378
      Top = 139
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 257
    end
    object cmbButton1Kind: TcxComboBox [3]
      Left = 378
      Top = 166
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ellipsis'
        'Down'
        'Glyph'
        'Text')
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Ellipsis'
      Width = 257
    end
    object cbButton1LeftAlignment: TcxCheckBox [4]
      Left = 336
      Top = 220
      Action = acButton1LeftAlignment
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cbButton1Enabled: TcxCheckBox [5]
      Left = 336
      Top = 193
      Action = acButton1Enabled
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object cbButton1Visible: TcxCheckBox [6]
      Left = 336
      Top = 247
      Action = acButton1Visible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object edButton1Width: TcxSpinEdit [7]
      Left = 378
      Top = 274
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 257
    end
    object edButton2Caption: TcxTextEdit [8]
      Left = 10000
      Top = 10000
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Width = 207
    end
    object cmbButton2Kind: TcxComboBox [9]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ellipsis'
        'Down'
        'Glyph'
        'Text')
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Text = 'Down'
      Visible = False
      Width = 207
    end
    object cbButton2Enabled: TcxCheckBox [10]
      Left = 10000
      Top = 10000
      Action = acButton2Enabled
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Transparent = True
      Visible = False
    end
    object cbButton2LeftAlignment: TcxCheckBox [11]
      Left = 10000
      Top = 10000
      Action = acButton2LeftAlignment
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 11
      Transparent = True
      Visible = False
    end
    object cbButton2Visible: TcxCheckBox [12]
      Left = 10000
      Top = 10000
      Action = acButton2Visible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
      Visible = False
    end
    object edButton2Width: TcxSpinEdit [13]
      Left = 10000
      Top = 10000
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Visible = False
      Width = 207
    end
    object edButton3Caption: TcxTextEdit [14]
      Left = 10000
      Top = 10000
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Visible = False
      Width = 207
    end
    object edButton4Caption: TcxTextEdit [15]
      Left = 10000
      Top = 10000
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Text = '$'
      Visible = False
      Width = 207
    end
    object cmbButton3Kind: TcxComboBox [16]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ellipsis'
        'Down'
        'Glyph'
        'Text')
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Text = 'Glyph'
      Visible = False
      Width = 207
    end
    object cmbButton4Kind: TcxComboBox [17]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Ellipsis'
        'Down'
        'Glyph'
        'Text')
      Properties.OnChange = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Text = 'Text'
      Visible = False
      Width = 207
    end
    object cbButton3Enabled: TcxCheckBox [18]
      Left = 10000
      Top = 10000
      Action = acButton3Enabled
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 16
      Transparent = True
      Visible = False
    end
    object cbButton4Enabled: TcxCheckBox [19]
      Left = 10000
      Top = 10000
      Action = acButton4Enabled
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
      Visible = False
    end
    object cbButton3LeftAlignment: TcxCheckBox [20]
      Left = 10000
      Top = 10000
      Action = acButton3LeftAlignment
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 17
      Transparent = True
      Visible = False
    end
    object cbButton4LeftAlignment: TcxCheckBox [21]
      Left = 10000
      Top = 10000
      Action = acButton4LeftAlignment
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 23
      Transparent = True
      Visible = False
    end
    object cbButton3Visible: TcxCheckBox [22]
      Left = 10000
      Top = 10000
      Action = acButton3Visible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 18
      Transparent = True
      Visible = False
    end
    object cbButton4Visible: TcxCheckBox [23]
      Left = 10000
      Top = 10000
      Action = acButton4Visible
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
      Visible = False
    end
    object edButton3Width: TcxSpinEdit [24]
      Left = 10000
      Top = 10000
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 19
      Visible = False
      Width = 207
    end
    object edButton4Width: TcxSpinEdit [25]
      Left = 10000
      Top = 10000
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 100.000000000000000000
      Properties.OnEditValueChanged = cmbViewStylePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 25
      Visible = False
      Width = 207
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 242
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 351
      ItemIndex = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxButtonEdit1'
      CaptionOptions.Visible = False
      Control = ButtonEdit
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'View Style'
      Control = cmbViewStyle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Button #1'
      ItemIndex = 5
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Button #2'
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Button #3'
      ItemIndex = 5
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Button #4'
      ItemIndex = 5
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Caption'
      Control = edButton1Caption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Kind'
      Control = cmbButton1Kind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cbButton1LeftAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cbButton1Enabled
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = cbButton1Visible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Width'
      Control = edButton1Width
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
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
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Caption'
      Control = edButton2Caption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Kind'
      Control = cmbButton2Kind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      Control = cbButton2Enabled
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      Control = cbButton2LeftAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      Control = cbButton2Visible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Width'
      Control = edButton2Width
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Caption'
      Control = edButton3Caption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Caption'
      Control = edButton4Caption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Kind'
      Control = cmbButton3Kind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Kind'
      Control = cmbButton4Kind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Visible = False
      Control = cbButton3Enabled
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      Control = cbButton4Enabled
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 62
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Visible = False
      Control = cbButton3LeftAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      Control = cbButton4LeftAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Visible = False
      Control = cbButton3Visible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Visible = False
      Control = cbButton4Visible
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Width'
      Control = edButton3Width
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Width'
      Control = edButton4Width
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited ActionList1: TActionList
    object actButton3Click: TAction
      Caption = 'actButton3Click'
      OnExecute = actButton3ClickExecute
    end
    object acButton1Enabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton1LeftAlignment: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Left-Aligned'
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton1Visible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton2Enabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton2LeftAlignment: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Left-Aligned'
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton2Visible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton3Enabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton3LeftAlignment: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Left-Aligned'
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton3Visible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton4Enabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton4LeftAlignment: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Left-Aligned'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
    object acButton4Visible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Visible'
      Checked = True
      OnExecute = cmbViewStylePropertiesChange
    end
  end
end
