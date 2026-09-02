object fmDemoLauncher: TfmDemoLauncher
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Render Mode'
  ClientHeight = 355
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 290
    Height = 355
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dmData.dxLayoutSkinLookAndFeel1
    object btnDirectX: TcxButton
      Left = 46
      Top = 75
      Width = 198
      Height = 32
      Caption = 'DirectX'
      OptionsImage.ImageIndex = 0
      TabOrder = 0
      OnClick = btnDirectXClick
    end
    object btnGDI: TcxButton
      Tag = 1
      Left = 46
      Top = 151
      Width = 198
      Height = 32
      Caption = 'GDI'
      TabOrder = 2
      OnClick = btnDirectXClick
    end
    object btnGDIPlus: TcxButton
      Left = 46
      Top = 113
      Width = 198
      Height = 32
      Caption = 'GDI+'
      TabOrder = 1
      OnClick = btnDirectXClick
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avParentManaged
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 5
      Padding.Left = 28
      Padding.Right = 28
      Padding.AssignedValues = [lpavLeft, lpavRight]
      ShowBorder = False
      Index = -1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = lcMainGroup_Root
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'Select the render mode you want to use for the demo.'
      CaptionOptions.WordWrap = True
      Index = 3
    end
    object liDirectX: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btnDirectX
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liGDI: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnGDI
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lcMainGroup_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lcMainGroup_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 8
      Offsets.Right = 8
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      Padding.AssignedValues = [lpavLeft, lpavRight]
      ShowBorder = False
      Index = 5
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = lgWarning
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 
        'The DirectX render mode requires the Windows 7 Platform Update (' +
        'with DirectX 11), Windows 8, or newer.'
      CaptionOptions.WordWrap = True
      Index = 1
    end
    object iiWarning: TdxLayoutImageItem
      Parent = lgWarning
      AlignVert = avTop
      Image.SourceDPI = 96
      Image.SourceHeight = 16
      Image.SourceWidth = 16
      Image.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E59656C6C6F77
        7B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C706174682063
        6C6173733D2259656C6C6F772220643D224D32392E372C32362E324C31372C34
        2E38632D302E362D312D312E352D312D322E312C304C332C32362E32632D302E
        362C312D302E322C312E382C312C312E386832342E374332392E382C32382C33
        302E332C32372E322C32392E372C32362E327A20202623393B204D31362C3236
        632D312E312C302D322D302E392D322D3273302E392D322C322D3273322C302E
        392C322C325331372E312C32362C31362C32367A204D31382C3230682D34762D
        3763302D302E362C302E342D312C312D31683263302E362C302C312C302E342C
        312C315632307A222F3E0D0A3C2F7376673E0D0A}
      Index = 0
    end
    object lgWarning: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liDescription: TdxLayoutLabeledItem
      Parent = lcMainGroup_Root
      AlignVert = avBottom
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 
        'Try this demo in DirectX, GDI+, and GDI modes to compare the spe' +
        'ed and smoothness of drag operations, scrolling, and animations.'
      CaptionOptions.WordWrap = True
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btnGDIPlus
      ControlOptions.OriginalHeight = 32
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
