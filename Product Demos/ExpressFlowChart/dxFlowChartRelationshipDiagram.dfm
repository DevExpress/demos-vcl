inherited frmFlowChartRelationshipDiagram: TfrmFlowChartRelationshipDiagram
  Caption = 'dxFlowChartRelationshipDiagram'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    object dxFlowChart1: TdxFlowChart [0]
      Left = 11
      Top = 11
      Width = 749
      Height = 512
      BorderStyle = bsNone
      Images = ilEmployees
      OnSelection = dxFlowChart1Selection
      Options = [fcoCanSelect]
      OnClick = dxFlowChart1Click
      Items = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C466C6F7743686172742056657273696F6E3D2231222041
        75746F526F7574653D2230223E3C4F626A656374733E3C4F626A656374205465
        78743D224B6E6F772065616368206F7468657222204C6566743D22372220546F
        703D223137222057696474683D2231343022204865696768743D223334222054
        657874416C69676E6D656E743D2243656E74657243656E7465722220426B436F
        6C6F723D222346464646464622205368617065436F6C6F723D22234646464646
        4622205368617065547970653D2252656374616E676C65223E3C466F6E74204E
        616D653D225365676F6520554922204865696768743D222D31362220436F6C6F
        723D2223303030303030222050697463683D223022205374796C653D22302220
        436861727365743D2230222F3E3C2F4F626A6563743E3C4F626A656374205465
        78743D22467269656E6473207769746822204C6566743D22372220546F703D22
        3531222057696474683D2231343022204865696768743D223334222054657874
        416C69676E6D656E743D2243656E74657243656E7465722220426B436F6C6F72
        3D222346464646464622205368617065436F6C6F723D22234646464646462220
        5368617065547970653D2252656374616E676C65223E3C466F6E74204E616D65
        3D225365676F6520554922204865696768743D222D31362220436F6C6F723D22
        23303030303030222050697463683D223022205374796C653D22302220436861
        727365743D2230222F3E3C2F4F626A6563743E3C2F4F626A656374733E3C436F
        6E6E656374696F6E733E3C436F6E6E656374696F6E205374796C653D22537472
        61696768742220436F6C6F723D2223354239424435222050656E57696474683D
        22322220536F757263653D22302220536F75726365506F696E743D2231312220
        44657374696E6174696F6E3D2230222044657374696E6174696F6E506F696E74
        3D2239223E3C4172726F77536F7572636520436F6C6F723D2223303130323033
        2220547970653D223022204865696768743D2230222057696474683D2230222F
        3E3C4172726F7744657374696E6174696F6E20436F6C6F723D22233031303230
        332220547970653D223022204865696768743D2238222057696474683D223822
        2F3E3C2F436F6E6E656374696F6E3E3C436F6E6E656374696F6E205374796C65
        3D2253747261696768742220436F6C6F723D2223393244303530222050656E57
        696474683D22322220536F757263653D22312220536F75726365506F696E743D
        223131222044657374696E6174696F6E3D2231222044657374696E6174696F6E
        506F696E743D2239223E3C4172726F77536F7572636520436F6C6F723D222330
        31303230332220547970653D223022204865696768743D223022205769647468
        3D2230222F3E3C4172726F7744657374696E6174696F6E20436F6C6F723D2223
        3031303230332220547970653D223022204865696768743D2238222057696474
        683D2238222F3E3C2F436F6E6E656374696F6E3E3C2F436F6E6E656374696F6E
        733E3C2F466C6F7743686172743E}
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited lgMainGroup: TdxLayoutGroup
      Hidden = True
      ShowBorder = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dxFlowChart1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 320
      Index = 0
    end
  end
  object dxLayoutControl1: TdxLayoutControl [1]
    Left = 80
    Top = 136
    Width = 481
    Height = 289
    TabOrder = 1
    Visible = False
    AutoSize = True
    LayoutLookAndFeel = dxMainCxLookAndFeel1
    object cxImage1: TcxImage
      Left = 10
      Top = 30
      Properties.FitMode = ifmProportionalStretch
      Properties.ReadOnly = True
      Properties.ShowFocusRect = False
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
      Height = 179
      Width = 143
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object lliSelectPerson: TdxLayoutLabeledItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      CaptionOptions.Text = 'Select a person to see relationships'
      Index = 0
    end
    object liiEmployeePicture: TdxLayoutImageItem
      Parent = lgEmployee
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Index = 0
    end
    object lliFullName: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'FullName'
      Index = 0
    end
    object lliBirthday: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Birthday'
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = lgEmployee
      AlignHorz = ahLeft
      AlignVert = avClient
      Index = 1
      AutoCreated = True
    end
    object lliMobilePhone: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'MobilePhone'
      Index = 2
    end
    object lliAddress: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Address'
      Index = 3
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Separator'
      Index = 4
    end
    object lliKnowns: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Knowns'
      Index = 6
    end
    object lliFriends: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'Friends'
      Index = 5
    end
    object lgEmployee: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      Control = cxImage1
      ControlOptions.OriginalHeight = 179
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  object ilEmployees: TcxImageList
    SourceDPI = 96
    Height = 400
    Width = 400
    FormatVersion = 1
    DesignInfo = 12059040
  end
  object dxCalloutPopup1: TdxCalloutPopup
    PopupControl = dxLayoutControl1
    Alignment = cpaRightCenter
    Left = 488
    Top = 352
  end
end
