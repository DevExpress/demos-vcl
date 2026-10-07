inherited frmLookupExt: TfrmLookupExt
  inherited lcFrame: TdxLayoutControl
    object ExtLookupComboBox: TcxExtLookupComboBox [1]
      Left = 51
      Top = 188
      Properties.DropDownAutoSize = True
      Properties.View = gvLookup
      Properties.KeyFieldNames = 'FullName'
      Properties.ListFieldItem = gvLookupFullName
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 204
    end
    object cmbAlignment: TcxComboBox [2]
      Left = 372
      Top = 98
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
      Width = 216
    end
    object cbDropDownSizeable: TcxCheckBox [3]
      Left = 312
      Top = 141
      Action = acDropDownSizeable
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object cmbKeyFieldName: TcxComboBox [4]
      Left = 372
      Top = 278
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
      TabOrder = 3
      Text = 'Full Name'
      Width = 216
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      SizeOptions.Width = 250
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignVert = avClient
      SizeOptions.Width = 300
      ItemIndex = 6
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxExtLookupComboBox1'
      CaptionOptions.Visible = False
      Control = ExtLookupComboBox
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 204
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
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbDropDownSizeable
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Result Field'
      Control = cmbKeyFieldName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 7
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
      Index = 4
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
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
      Index = 8
    end
    object cbgIncrementalFiltering: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Incremental Filtering'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Visible = True
      ItemIndex = 1
      OnCheckBoxStateChanged = cmbAlignmentPropertiesChange
      Index = 5
    end
    object cbHighlightSearchText: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acHighlightSearchText
      Index = 0
    end
    object UseContainsOperator: TdxLayoutCheckBoxItem
      Parent = cbgIncrementalFiltering
      Action = acUseContainsOperator
      Index = 1
    end
  end
  object grLookup: TcxGrid [1]
    Left = 30
    Top = 46
    Width = 219
    Height = 95
    TabOrder = 1
    Visible = False
    object gvLookup: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dmMain.dsEmployees
      DataController.KeyFieldNames = 'FullName'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.DataRowHeight = 60
      object gvLookupFullName: TcxGridDBColumn
        Caption = 'Full Name'
        DataBinding.FieldName = 'FullName'
        Width = 100
      end
      object gvLookupDepartment_Name: TcxGridDBColumn
        Caption = 'Department'
        DataBinding.FieldName = 'Department_Name'
        Width = 100
      end
      object gvLookupTitle: TcxGridDBColumn
        Caption = 'Position'
        DataBinding.FieldName = 'Title'
        Width = 150
      end
      object gvLookupPicture: TcxGridDBColumn
        Caption = 'Photo'
        DataBinding.FieldName = 'Picture'
        PropertiesClassName = 'TcxImageProperties'
        Properties.FitMode = ifmProportionalStretch
        Properties.GraphicClassName = 'TdxSmartImage'
        Width = 60
      end
    end
    object grLookupLevel1: TcxGridLevel
      GridView = gvLookup
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
  end
end
