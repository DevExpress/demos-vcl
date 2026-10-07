inherited frmGalleryControl: TfrmGalleryControl
  Width = 817
  Height = 547
  ExplicitWidth = 817
  ExplicitHeight = 547
  inherited lcFrame: TdxLayoutControl
    Width = 817
    Height = 547
    ExplicitWidth = 817
    ExplicitHeight = 547
    object GalleryControl: TdxGalleryControl [0]
      Left = 51
      Top = 83
      Width = 423
      Height = 353
      OptionsBehavior.ItemCheckMode = icmSingleCheck
      OptionsView.Item.Text.Position = posBottom
      TabOrder = 0
      OnDragOver = GalleryControlDragOver
      OnItemClick = GalleryControlItemClick
    end
    object cbDetailedInfo: TcxCheckBox [1]
      Left = 520
      Top = 69
      Action = acDetailedInfo
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
    end
    object cmbCheckMode: TcxComboBox [2]
      Left = 639
      Top = 130
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'SingleCheck'
        'SingleRadio'
        'Multiple')
      Properties.OnChange = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'None'
      Width = 114
    end
    object cmbMultiSelectKind: TcxComboBox [3]
      Left = 639
      Top = 157
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Gallery'
        'List View')
      Properties.OnChange = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Text = 'Gallery'
      Width = 114
    end
    object cbShowHint: TcxCheckBox [4]
      Left = 532
      Top = 184
      Action = acShowHint
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object cbColumnAutoWidth: TcxCheckBox [5]
      Left = 532
      Top = 280
      Action = acColumnAutoWidth
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object edColumnCount: TcxSpinEdit [6]
      Left = 639
      Top = 307
      Properties.AssignedValues.MinValue = True
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.OnEditValueChanged = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 6
      Width = 114
    end
    object cmbAlignHorz: TcxComboBox [7]
      Left = 647
      Top = 352
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Left Justify'
        'Right Justify'
        'Center')
      Properties.OnChange = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Text = 'Center'
      Width = 94
    end
    object cmbAlignVert: TcxComboBox [8]
      Left = 647
      Top = 379
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Top'
        'Bottom'
        'Center')
      Properties.OnChange = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
      Text = 'Top'
      Width = 94
    end
    object cmbPosition: TcxComboBox [9]
      Left = 647
      Top = 406
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'Left'
        'Right'
        'Top'
        'Bottom')
      Properties.OnChange = acDetailedInfoExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Text = 'Bottom'
      Width = 94
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.Width = 269
      ItemIndex = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      SizeOptions.Height = 353
      CaptionOptions.Text = 'dxGalleryControl1'
      CaptionOptions.Visible = False
      Control = GalleryControl
      ControlOptions.OriginalHeight = 353
      ControlOptions.OriginalWidth = 423
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      CaptionOptions.Visible = False
      Control = cbDetailedInfo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 1
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
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Behavior Options'
      ItemIndex = 3
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Item Check Mode'
      Control = cmbCheckMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Item Multi-select Kind'
      Control = cmbMultiSelectKind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Visible = False
      Control = cbShowHint
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'View Options'
      ItemIndex = 2
      Index = 5
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Visible = False
      Control = cbColumnAutoWidth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Column Count'
      Control = edColumnCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Item Text'
      Index = 2
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Horizontal Alignment'
      Control = cmbAlignHorz
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Vertical Alignment'
      Control = cmbAlignVert
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Position'
      Control = cmbPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object cbiEnableDragAndDrop: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Enable Drag and Drop'
      State = cbsChecked
      OnClick = cbiEnableDragAndDropClick
      Index = 3
    end
  end
  object grbDetailedInfo: TcxGroupBox [1]
    Left = 40
    Top = 56
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Visible = False
    Height = 193
    Width = 441
    object lcDetailedInfo: TdxLayoutControl
      Left = 3
      Top = 3
      Width = 435
      Height = 187
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeel1
      object cxDBImage1: TcxDBImage
        Left = 10
        Top = 10
        DataBinding.DataField = 'Picture'
        DataBinding.DataSource = dmMain.dsEmployees
        Enabled = False
        Properties.GraphicClassName = 'TdxSmartImage'
        Style.HotTrack = False
        TabOrder = 0
        Height = 167
        Width = 137
      end
      object edFirstName: TcxDBTextEdit
        Left = 237
        Top = 10
        DataBinding.DataField = 'FirstName'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 1
        Width = 188
      end
      object edLastName: TcxDBTextEdit
        Left = 237
        Top = 37
        DataBinding.DataField = 'LastName'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 2
        Width = 188
      end
      object edPosition: TcxDBTextEdit
        Left = 237
        Top = 64
        DataBinding.DataField = 'Title'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 3
        Width = 188
      end
      object edMobilePhone: TcxDBButtonEdit
        Left = 237
        Top = 91
        DataBinding.DataField = 'MobilePhone'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 10
            Kind = bkGlyph
          end>
        Properties.Images = dmMain.ilMain
        Properties.MaskKind = emkRegExprEx
        Properties.EditMask = '(\(\d\d\d\))? \d\d\d - \d\d\d\d'
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 4
        Width = 188
      end
      object edEmail: TcxDBButtonEdit
        Left = 237
        Top = 118
        DataBinding.DataField = 'Email'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 11
            Kind = bkGlyph
          end>
        Properties.Images = dmMain.ilMain
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 5
        Width = 188
      end
      object edSkype: TcxDBButtonEdit
        Left = 237
        Top = 145
        DataBinding.DataField = 'Skype'
        DataBinding.DataSource = dmMain.dsEmployees
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 12
            Kind = bkGlyph
          end>
        Properties.Images = dmMain.ilMain
        Properties.ReadOnly = True
        Style.HotTrack = False
        TabOrder = 6
        Width = 188
      end
      object lcDetailedInfoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Visible = False
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = lcDetailedInfoGroup_Root
        AlignHorz = ahLeft
        AlignVert = avClient
        SizeOptions.AssignedValues = [sovSizableHorz]
        SizeOptions.SizableHorz = False
        SizeOptions.Width = 137
        CaptionOptions.Text = 'cxDBImage1'
        CaptionOptions.Visible = False
        Control = cxDBImage1
        ControlOptions.OriginalHeight = 100
        ControlOptions.OriginalWidth = 137
        ControlOptions.ShowBorder = False
        Enabled = False
        Index = 0
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = lcDetailedInfoGroup_Root
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ShowBorder = False
        Index = 2
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'First Name'
        Control = edFirstName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 329
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Last Name'
        Control = edLastName
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 279
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Position'
        Control = edPosition
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 106
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Mobile Phone'
        Control = edMobilePhone
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 422
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Email'
        Control = edEmail
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 422
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Skype'
        Control = edSkype
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 422
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
        Parent = lcDetailedInfoGroup_Root
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 1
      end
    end
  end
  inherited ActionList1: TActionList
    object acDetailedInfo: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Detailed Info by Item Click'
      Checked = True
      OnExecute = acDetailedInfoExecute
    end
    object acShowHint: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enable Item Hints'
      OnExecute = acDetailedInfoExecute
    end
    object acColumnAutoWidth: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Column Auto Width'
      Checked = True
      OnExecute = acDetailedInfoExecute
    end
  end
  object dxCalloutPopup1: TdxCalloutPopup
    PopupControl = grbDetailedInfo
    Alignment = cpaTopCenter
    Left = 104
    Top = 272
  end
end
