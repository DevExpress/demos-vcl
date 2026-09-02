object dxCustomDemoFrame: TdxCustomDemoFrame
  Left = 0
  Top = 0
  Width = 451
  Height = 305
  Align = alClient
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object lcFrame: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 451
    Height = 305
    Align = alClient
    TabOrder = 0
    object lcFrameGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgContent: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lsSetupSplitter: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object lgSetupTools: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Options'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 200
      Index = 2
    end
    object liDescription: TdxLayoutLabeledItem
      Parent = lcFrameGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
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
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
        233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
        6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
        7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2249
        6E666F223E0D0A09093C7061746820636C6173733D22426C75652220643D224D
        31362C3243382E332C322C322C382E332C322C313673362E332C31342C31342C
        31347331342D362E332C31342D31345332332E372C322C31362C327A204D3136
        2C3663312E312C302C322C302E392C322C3263302C312E312D302E392C322D32
        2C3220202623393B2623393B732D322D302E392D322D324331342C362E392C31
        342E392C362C31362C367A204D32302C3234682D38762D326832762D38682D32
        762D326832683476313068325632347A222F3E0D0A093C2F673E0D0A3C2F7376
        673E0D0A}
      CaptionOptions.Text = 'Label'
      CaptionOptions.WordWrap = True
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcFrameGroup_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
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
