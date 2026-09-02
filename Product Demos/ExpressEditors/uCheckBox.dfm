inherited frmCheckBox: TfrmCheckBox
  inherited lcFrame: TdxLayoutControl
    object cbSample: TcxCheckBox [0]
      Left = 96
      Top = 174
      Caption = 'Check Box'
      ParentShowHint = False
      Properties.Alignment = taLeftJustify
      Properties.AllowGrayed = True
      Properties.GlyphCount = 3
      Properties.ReadOnly = False
      Properties.OnChange = cbSamplePropertiesChange
      ShowHint = True
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object cmbState: TcxComboBox [1]
      Left = 318
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Unchecked'
        'Checked'
        'Grayed')
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Checked'
      Width = 139
    end
    object rgAlignment: TcxRadioGroup [2]
      Left = 276
      Top = 159
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
      ItemIndex = 0
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 4
      Height = 105
      Width = 181
    end
    object cbUseGlyph: TcxCheckBox [3]
      Left = 276
      Top = 286
      Action = acUseGlyph
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cbAllowGrayed: TcxCheckBox [4]
      Left = 276
      Top = 89
      Action = acAllowGrayed
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object edCaption: TcxTextEdit [5]
      Left = 318
      Top = 132
      Properties.OnChange = cmbStatePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Check Box'
      Width = 139
    end
    inherited lgContent: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 220
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      AlignVert = avClient
      ItemIndex = 3
    end
    inherited dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      AlignHorz = ahRight
      AlignVert = avClient
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbSample
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 72
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'State'
      Control = cmbState
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = rgAlignment
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 105
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cbUseGlyph
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbAllowGrayed
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Caption'
      Control = edCaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 139
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 0
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 8
    end
  end
  inherited ActionList1: TActionList
    object acAllowGrayed: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Allow Grayed'
      Checked = True
      OnExecute = cmbStatePropertiesChange
    end
    object acUseGlyph: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Glyph'
      OnExecute = cmbStatePropertiesChange
    end
  end
  object dxScreenTipRepository1: TdxScreenTipRepository
    Left = 200
    Top = 320
    PixelsPerInch = 96
    object dxScreenTipRepository1ScreenTip1: TdxScreenTip
      Header.PlainText = False
      Header.Text = 
        '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204 Sego' +
        'e UI;}}'#13#10'{\colortbl ;\red76\green76\blue76;}'#13#10'\viewkind4\uc1\par' +
        'd\cf1\lang1049\b\f0\fs18 Mouse Operation\par'#13#10'\b0 Click caption ' +
        'or check box\par'#13#10'}'#13#10
      Footer.PlainText = False
      Footer.Text = 
        '{\rtf1\ansi\ansicpg1251\deff0{\fonttbl{\f0\fnil\fcharset204 Sego' +
        'e UI;}}'#13#10'{\colortbl ;\red76\green76\blue76;\red50\green50\blue50' +
        ';\red255\green255\blue255;}'#13#10'\viewkind4\uc1\pard\cf1\lang1049\b\' +
        'f0\fs18 Keyboard\par'#13#10'\cf2\highlight3\b0 Press SPACE while the e' +
        'ditor is focused\cf1\highlight0\par'#13#10'}'#13#10
    end
  end
  object cxHintStyleController1: TcxHintStyleController
    HintStyleClassName = 'TdxScreenTipStyle'
    HintStyle.ScreenTipLinks = <
      item
        ScreenTip = dxScreenTipRepository1ScreenTip1
        Control = cbSample
      end>
    HintStyle.ScreenTipActionLinks = <>
    Left = 328
    Top = 320
  end
end
