object cxCustomTreeListDemoUnitForm: TcxCustomTreeListDemoUnitForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'cxCustomTreeListDemoUnitForm'
  ClientHeight = 320
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 493
    Height = 320
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxMainCxLookAndFeel1
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgMainGroup: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgTools: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Options'
      SizeOptions.Width = 200
      Index = 2
    end
    object liDescription: TdxLayoutLabeledItem
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelDescription
      CaptionOptions.Glyph.SourceDPI = 96
      CaptionOptions.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E426C75657B66
        696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C7061746820636C61
        73733D22426C75652220643D224D31362C3243382E332C322C322C382E332C32
        2C313673362E332C31342C31342C31347331342D362E332C31342D3134533233
        2E372C322C31362C327A204D31362C3663312E312C302C322C302E392C322C32
        732D302E392C322D322C32732D322D302E392D322D3220202623393B5331342E
        392C362C31362C367A204D32302C3234682D38762D326832762D38682D32762D
        326832683476313068325632347A222F3E0D0A3C2F7376673E0D0A}
      CaptionOptions.Text = 'Label'
      CaptionOptions.WordWrap = True
      Index = 1
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcMainGroup_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 264
    Top = 256
    object dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object alMain: TActionList
    Left = 264
    Top = 200
  end
  object dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 8
    Top = 8
    object dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -11
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
end
