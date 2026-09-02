inherited frmCheckComboBox: TfrmCheckComboBox
  inherited lcFrame: TdxLayoutControl
    object CheckComboBox: TcxCheckComboBox [0]
      Left = 34
      Top = 150
      Properties.Items = <
        item
          Description = 'Circle'
        end
        item
          Description = 'Rectangle'
        end
        item
          Description = 'Ellipse'
        end
        item
          Description = 'Triangle'
        end
        item
          Description = 'Square'
        end>
      Properties.OnChange = CheckComboBoxPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 226
    end
    object cmbEditValueFormat: TcxComboBox [1]
      Left = 412
      Top = 148
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Captions'
        'Indices'
        'Integer'
        'StatesString')
      Properties.OnChange = edDelimiterPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Integer'
      Width = 170
    end
    object cmbCharCase: TcxComboBox [2]
      Left = 412
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Upper Case'
        'Lower Case')
      Properties.OnChange = edDelimiterPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Normal'
      Width = 170
    end
    object edDelimiter: TcxMRUEdit [3]
      Left = 412
      Top = 105
      Properties.LookupItems.Strings = (
        ';'
        ','
        '@'
        '-/-')
      Properties.ShowEllipsis = False
      Properties.OnChange = edDelimiterPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = ';'
      Width = 170
    end
    object edEmptySelectionText: TcxTextEdit [4]
      Left = 412
      Top = 191
      Properties.OnChange = edDelimiterPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Text = 'None selected'
      Width = 170
    end
    object cbShowEmptyText: TcxCheckBox [5]
      Left = 306
      Top = 218
      Action = acShowEmptyText
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 276
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 300
      ItemIndex = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Text = 'cxCheckComboBox1'
      CaptionOptions.Visible = False
      Control = CheckComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object liEditValue: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'liEditValue'
      CaptionOptions.WordWrap = True
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelBoldItemCaption
      Index = 1
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      AlignVert = avBottom
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'EditValue Format'
      Control = cmbEditValueFormat
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Char Case'
      Control = cmbCharCase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Delimiter'
      Control = edDelimiter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Selection Text'
      Control = edEmptySelectionText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 9
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 4
    end
    object dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 6
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbShowEmptyText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 63
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  inherited ActionList1: TActionList
    object acShowEmptyText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Empty Text'
      Checked = True
      OnExecute = edDelimiterPropertiesChange
    end
  end
end
