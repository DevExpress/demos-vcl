object dxGaugeControlDemoUnitForm: TdxGaugeControlDemoUnitForm
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'dxGaugeControlDemoUnitForm'
  ClientHeight = 572
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 771
    Height = 572
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxMainCxLookAndFeel1
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lgMainGroup: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liDescription: TdxLayoutLabeledItem
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeelDescription
      Visible = False
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
      Index = 0
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    Top = 16
    PixelsPerInch = 96
  end
  object dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 80
    Top = 16
    object dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
