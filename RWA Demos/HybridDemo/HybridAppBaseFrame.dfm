object frmBase: TfrmBase
  Left = 0
  Top = 0
  Width = 885
  Height = 567
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 885
    Height = 447
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = DM.dxLayoutCxLookAndFeel1
    OnClick = dxLayoutControl1Click
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object lgBackButton: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object liiBackButton: TdxLayoutImageItem
      Parent = lgBackButton
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D223020302033302033302220656E61626C65
        2D6261636B67726F756E643D226E6577203020302033302033302220786D6C3A
        73706163653D227072657365727665223E262331333B262331303B3C673E0D0A
        09093C7061746820643D224D31352C3043362E372C302C302C362E372C302C31
        3573362E372C31352C31352C31357331352D362E372C31352D31355332332E33
        2C302C31352C307A204D31352C323843372E382C32382C322C32322E322C322C
        313553372E382C322C31352C327331332C352E382C31332C313320202623393B
        2623393B5332322E322C32382C31352C32387A222F3E0D0A093C2F673E0D0A3C
        706F6C79676F6E20706F696E74733D2232332C31342031312C31342031382C37
        2031352C3720372C31352031352C32332031382C32332031312C31362032332C
        313620222F3E0D0A3C2F7376673E0D0A}
      Index = 0
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 447
    Align = alBottom
    PanelStyle.Active = True
    ParentFont = False
    Style.StyleController = DM.cxEditStyleController1
    TabOrder = 1
    Height = 120
    Width = 885
    object dxLayoutControl2: TdxLayoutControl
      Left = 2
      Top = 2
      Width = 881
      Height = 116
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = DM.dxLayoutCxLookAndFeelMetropolisDark
      object dxLayoutControl2Group_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avClient
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutControl2Group_Root
        AlignHorz = ahCenter
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ButtonOptions.Buttons = <>
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
    end
  end
end
