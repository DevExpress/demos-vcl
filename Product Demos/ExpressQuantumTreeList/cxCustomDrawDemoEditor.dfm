object CustomDrawDemoEditorForm: TCustomDrawDemoEditorForm
  Left = 344
  Top = 235
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Custom Draw Settings'
  ClientHeight = 261
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 489
    Height = 261
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    DesignSize = (
      489
      261)
    object tlCustomDrawItems: TcxTreeList
      Left = 10
      Top = 10
      Width = 129
      Height = 238
      Anchors = [akLeft, akTop, akBottom]
      Bands = <
        item
          Caption.Text = 'Band + 1'
        end>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.DragExpand = False
      OptionsBehavior.MultiSort = False
      OptionsBehavior.ShowHourGlass = False
      OptionsBehavior.Sorting = False
      OptionsCustomizing.BandCustomizing = False
      OptionsCustomizing.BandHorzSizing = False
      OptionsCustomizing.BandMoving = False
      OptionsCustomizing.BandVertSizing = False
      OptionsCustomizing.ColumnCustomizing = False
      OptionsCustomizing.ColumnHorzSizing = False
      OptionsCustomizing.ColumnMoving = False
      OptionsCustomizing.ColumnVertSizing = False
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.InvertSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.Buttons = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.ShowRoot = False
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      OnSelectionChanged = tlCustomDrawItemsSelectionChanged
      object tlCustomDrawItemscxTreeListColumn1: TcxTreeListColumn
        Caption.Text = 'Draw Item'
        Options.Sorting = False
        Width = 127
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object rbBackGroundImage: TcxRadioButton
      Left = 154
      Top = 41
      Caption = '&Background Image'
      Checked = True
      Color = 15451300
      ParentColor = False
      TabOrder = 1
      TabStop = True
      OnClick = rbRadioButtonClick
      AutoSize = True
      Transparent = True
    end
    object rbGradient: TcxRadioButton
      Tag = 1
      Left = 154
      Top = 66
      Caption = '&Gradient'
      Color = 16053234
      ParentColor = False
      TabOrder = 2
      OnClick = rbRadioButtonClick
      AutoSize = True
      ParentBackground = False
      Transparent = True
    end
    object rfaultDrawing: TcxRadioButton
      Tag = 2
      Left = 154
      Top = 91
      Caption = '&Default Drawing'
      Color = 16053234
      ParentColor = False
      TabOrder = 3
      OnClick = rbRadioButtonClick
      AutoSize = True
      ParentBackground = False
      Transparent = True
    end
    object rpendsOnTheData: TcxRadioButton
      Tag = 3
      Left = 154
      Top = 116
      Caption = 'D&epends On the Data'
      Color = 16053234
      ParentColor = False
      TabOrder = 4
      OnClick = rbRadioButtonClick
      AutoSize = True
      ParentBackground = False
      Transparent = True
    end
    object cbGradient: TcxComboBox
      Left = 341
      Top = 66
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cbGradientPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 120
    end
    object mruBkImage: TcxMRUEdit
      Left = 341
      Top = 41
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      Properties.OnButtonClick = mruBkImagePropertiesButtonClick
      Properties.OnEditValueChanged = mruBkImagePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 120
    end
    object chbOwnerDrawText: TcxCheckBox
      Left = 154
      Top = 155
      Caption = 'Owner &draw text'
      Properties.OnChange = chbOwnerDrawTextPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Transparent = True
    end
    object btnClose: TcxButton
      Left = 395
      Top = 223
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = 'Close'
      Default = True
      ModalResult = 2
      TabOrder = 9
      OnClick = btnCloseClick
    end
    object sbFont: TcxButton
      Left = 329
      Top = 153
      Width = 24
      Height = 23
      OptionsImage.Glyph.SourceDPI = 144
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
        3744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A23
        3033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B6669
        6C6C3A234646423131353B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706174
        6820636C6173733D22426C61636B2220643D224D31382E352C32372E35762D33
        63302D302E332C302E322D302E352C302E352D302E356C312E382C306C2D302E
        392D322E38682D372E364C31312E332C323448313363302E332C302C302E352C
        302E322C302E352C302E35763320202623393B63302C302E332D302E322C302E
        352D302E352C302E3548342E3543342E322C32382C342C32372E382C342C3237
        2E35762D3343342C32342E322C342E322C32342C342E352C32346C312E372C30
        6C372E312D323068352E356C372E312C32306C312E372C3063302E332C302C30
        2E352C302E322C302E352C302E35763320202623393B63302C302E332D302E32
        2C302E352D302E352C302E354831394331382E372C32382C31382E352C32372E
        382C31382E352C32372E357A204D31382E342C31372E314C31362C392E324831
        366C2D322E342C372E394831382E347A222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 8
      OnClick = sbFontClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = tlCustomDrawItems
      ControlOptions.OriginalHeight = 238
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Event Handler Settings'
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rfaultDrawing
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rbGradient
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rbBackGroundImage
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = rpendsOnTheData
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      Control = mruBkImage
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      Control = cbGradient
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = chbOwnerDrawText
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 103
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnClose
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Index = 1
    end
    object liFont: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Choose Font'
      Control = sbFont
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 64
    Top = 120
  end
  object OpenDialog: TdxOpenFileDialog
    Filter = 'BMP Windows Bitmap|*.bmp'
    Left = 8
    Top = 80
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 48
    Top = 64
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
