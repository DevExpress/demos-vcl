inherited frmBlobEdit: TfrmBlobEdit
  inherited lcFrame: TdxLayoutControl
    object BlobEdit: TcxBlobEdit [0]
      Left = 49
      Top = 160
      Properties.BlobEditKind = bekMemo
      Properties.PictureAutoSize = False
      Properties.PictureGraphicClassName = 'TdxSmartImage'
      Properties.PopupWidth = 230
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 195
    end
    object rbMemoMode: TcxRadioButton [1]
      Left = 306
      Top = 62
      Width = 226
      Height = 17
      Caption = 'Memo Mode'
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = rbMemoModeClick
      AutoSize = True
      Transparent = True
    end
    object rbPictureMode: TcxRadioButton [2]
      Left = 306
      Top = 263
      Width = 226
      Height = 17
      Caption = 'Picture Mode'
      TabOrder = 8
      OnClick = rbMemoModeClick
      AutoSize = True
      Transparent = True
    end
    object cmbCharCase: TcxComboBox [3]
      Left = 383
      Top = 85
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Upper Case'
        'Lower Case')
      Properties.OnChange = cmbCharCasePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Normal'
      Width = 149
    end
    object cmbScrollBars: TcxComboBox [4]
      Left = 383
      Top = 112
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Horizontal'
        'Vertical'
        'Both')
      Properties.OnChange = cmbCharCasePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Vertical'
      Width = 149
    end
    object cbWordWrap: TcxCheckBox [5]
      Left = 322
      Top = 193
      Action = acWordWrap
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 210
    end
    object cbAcceptReturn: TcxCheckBox [6]
      Left = 322
      Top = 139
      Action = acAcceptReturn
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 210
    end
    object cbAcceptTab: TcxCheckBox [7]
      Left = 322
      Top = 166
      Action = acAcceptTab
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Width = 210
    end
    object edMaxLength: TcxSpinEdit [8]
      Left = 383
      Top = 220
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 10000.000000000000000000
      Properties.OnEditValueChanged = cmbCharCasePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 7
      Width = 149
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxBlobEdit1'
      CaptionOptions.Visible = False
      Control = BlobEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxRadioButton1'
      CaptionOptions.Visible = False
      Control = rbMemoMode
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = rbPictureMode
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lgMemoProperties: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 5
      ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Text = 'Char Case'
      Control = cmbCharCase
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Text = 'Scrollbars'
      Control = cmbScrollBars
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Visible = False
      Control = cbWordWrap
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Visible = False
      Control = cbAcceptReturn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Visible = False
      Control = cbAcceptTab
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lgMemoProperties
      CaptionOptions.Text = 'Max Length'
      Control = edMaxLength
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited ActionList1: TActionList
    object acAcceptReturn: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Accept Return'
      Checked = True
      OnExecute = cmbCharCasePropertiesChange
    end
    object acAcceptTab: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Accept Tab'
      OnExecute = cmbCharCasePropertiesChange
    end
    object acWordWrap: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Word Wrap'
      Checked = True
      OnExecute = cmbCharCasePropertiesChange
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 288
    Top = 32
    PixelsPerInch = 96
    object edrepMemo: TcxEditRepositoryMemoItem
    end
    object edrepImage: TcxEditRepositoryImageItem
    end
  end
end
