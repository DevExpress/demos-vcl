inherited frmHyperLink: TfrmHyperLink
  inherited lcFrame: TdxLayoutControl
    object HyperLink: TcxHyperLinkEdit [0]
      Left = 34
      Top = 119
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'www.devexpress.com/Products/VCL/'
      Width = 334
    end
    object cmbAlignment: TcxComboBox [1]
      Left = 466
      Top = 88
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
      Width = 121
    end
    object cbSingleClick: TcxCheckBox [2]
      Left = 414
      Top = 151
      Action = acSingleClick
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 173
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 2
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      ItemIndex = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxHyperLinkEdit1'
      CaptionOptions.Visible = False
      Control = HyperLink
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 334
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
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
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
      Index = 5
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Start Key: Ctrl + Enter'
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelBoldItemCaption
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbSingleClick
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  inherited ActionList1: TActionList
    object acSingleClick: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Single Click'
      Checked = True
      OnExecute = cmbAlignmentPropertiesChange
    end
  end
end
