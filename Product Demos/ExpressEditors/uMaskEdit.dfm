inherited frmMaskEdit: TfrmMaskEdit
  inherited lcFrame: TdxLayoutControl
    object MaskEdit: TcxMaskEdit [0]
      Left = 34
      Top = 224
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'MaskEdit'
      Width = 188
    end
    object cmbMaskKind: TcxComboBox [1]
      Left = 320
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Standard'
        'Regular Expression'
        'Extended Regular Expression')
      Properties.OnChange = cmbMaskKindPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Standard'
      Width = 390
    end
    object edMask: TcxTextEdit [2]
      Left = 268
      Top = 120
      Properties.OnChange = edMaskPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 442
    end
    object grStandart: TcxGrid [3]
      Left = 268
      Top = 147
      Width = 203
      Height = 226
      TabOrder = 3
      object grStandartDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grStandartDBTableView1CellDblClick
        DataController.DataSource = dsStandart
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object grStandartDBTableView1Description: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
          Width = 78
        end
        object grStandartDBTableView1SourceText: TcxGridDBColumn
          Caption = 'Source Text'
          DataBinding.FieldName = 'SourceText'
          Width = 79
        end
        object grStandartDBTableView1ExpectedMaskedText: TcxGridDBColumn
          Caption = 'Expected Masked Text'
          DataBinding.FieldName = 'ExpectedMaskedText'
          Width = 134
        end
      end
      object grStandartLevel1: TcxGridLevel
        GridView = grStandartDBTableView1
      end
    end
    object btnSetStandartSample: TcxButton [4]
      Left = 268
      Top = 379
      Width = 203
      Height = 25
      Caption = 'Assign Source Text to the Sample Editor'
      TabOrder = 4
      OnClick = btnSetStandartSampleClick
    end
    object grRegularExpr: TcxGrid [5]
      Left = 477
      Top = 165
      Width = 175
      Height = 200
      TabOrder = 5
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellDblClick = grStandartDBTableView1CellDblClick
        DataController.DataSource = dsRegularExpr
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        object cxGridDBTableView1Description: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
    object cxDBMemo1: TcxDBMemo [6]
      Left = 658
      Top = 165
      DataBinding.DataField = 'Samples'
      DataBinding.DataSource = dsRegularExpr
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 200
      Width = 52
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      SizeOptions.Width = 700
      ItemIndex = 2
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignVert = avClient
      ItemIndex = 4
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'cxMaskEdit1'
      CaptionOptions.Visible = False
      Control = MaskEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 188
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Mask Kind'
      Control = cmbMaskKind
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
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lgStandart: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 366
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lgRegularExpr: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 419
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Input mask:'
      CaptionOptions.Layout = clTop
      Control = edMask
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgStandart
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = grStandart
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgStandart
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSetStandartSample
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = lgStandart
      CaptionOptions.Text = 'Type your text in the Sample editor'
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lgRegularExpr
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = lgRegularExpr
      AlignHorz = ahClient
      CaptionOptions.Text = 
        'Type your text in the Sample editor and see the difference when ' +
        'using the automatic completion in Extended Regular Expression mo' +
        'de.'
      CaptionOptions.WordWrap = True
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelBoldItemCaption
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Description'
      CaptionOptions.Layout = clTop
      Control = grRegularExpr
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 175
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Samples'
      CaptionOptions.Layout = clTop
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lsiSpaceRegular: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      Visible = False
      SizeOptions.Height = 7
      SizeOptions.Width = 10
      Index = 0
    end
  end
  object mdStandart: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterScroll = mdStandartAfterScroll
    Left = 48
    Top = 56
    object mdStandartMask: TStringField
      FieldName = 'Mask'
      Size = 50
    end
    object mdStandartDescription: TStringField
      FieldName = 'Description'
    end
    object mdStandartSourceText: TStringField
      FieldName = 'SourceText'
      Size = 50
    end
    object mdStandartExpectedMaskedText: TStringField
      FieldName = 'ExpectedMaskedText'
      Size = 30
    end
  end
  object dsStandart: TDataSource
    DataSet = mdStandart
    Left = 48
    Top = 112
  end
  object mdRegularExpr: TdxMemData
    Indexes = <>
    SortOptions = []
    AfterScroll = mdStandartAfterScroll
    Left = 144
    Top = 56
    object mdRegularExprMask: TStringField
      FieldName = 'Mask'
      Size = 100
    end
    object mdRegularExprDescription: TStringField
      FieldName = 'Description'
      Size = 40
    end
    object mdRegularExprSamples: TMemoField
      FieldName = 'Samples'
      BlobType = ftMemo
    end
  end
  object dsRegularExpr: TDataSource
    DataSet = mdRegularExpr
    Left = 144
    Top = 112
  end
end
