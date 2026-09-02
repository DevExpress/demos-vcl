inherited frmTreeViewControl: TfrmTreeViewControl
  ExplicitWidth = 1165
  ExplicitHeight = 684
  inherited lcFrame: TdxLayoutControl
    ExplicitWidth = 1165
    ExplicitHeight = 684
    object dxNewTreeView: TdxTreeViewControl [0]
      Left = 22
      Top = 28
      Width = 200
      Height = 98
      TabOrder = 0
    end
    object seFirstLevelNodeCount: TcxSpinEdit [1]
      Left = 761
      Top = 28
      Properties.DisplayFormat = '#,###'
      Properties.Increment = 100.000000000000000000
      Properties.MinValue = 100.000000000000000000
      Properties.UseDisplayFormatWhenEditing = True
      Properties.OnChange = seDepthPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Value = 800
      Width = 121
    end
    object btnTreeViewAdd: TcxButton [2]
      Left = 543
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 6
      OnClick = btnTreeViewAddClick
    end
    object btnTreeViewClear: TcxButton [3]
      Left = 543
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 7
      OnClick = btnTreeViewClearClick
    end
    object mLog: TcxMemo [4]
      Left = 22
      Top = 184
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Height = 154
      Width = 596
    end
    object seDepth: TcxSpinEdit [5]
      Left = 761
      Top = 55
      Properties.DisplayFormat = '#,###'
      Properties.EditFormat = '#,###'
      Properties.MinValue = 1.000000000000000000
      Properties.OnChange = seDepthPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 12
      Value = 6
      Width = 121
    end
    object btnTreeViewFullExpand: TcxButton [6]
      Left = 543
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Full Expand'
      TabOrder = 8
      OnClick = btnTreeViewFullExpandClick
    end
    object btnTreeViewFullCollapse: TcxButton [7]
      Left = 543
      Top = 121
      Width = 75
      Height = 25
      Caption = 'Full Collapse'
      TabOrder = 9
      OnClick = btnTreeViewFullCollapseClick
    end
    object seChildrenCount: TcxSpinEdit [8]
      Left = 761
      Top = 82
      Properties.DisplayFormat = '#,###'
      Properties.EditFormat = '#,###'
      Properties.MinValue = 1.000000000000000000
      Properties.OnChange = seDepthPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Value = 2
      Width = 121
    end
    object btndxTreeViewClear: TcxButton [9]
      Left = 228
      Top = 59
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 2
      OnClick = btndxTreeViewClearClick
    end
    object btndxTreeViewAdd: TcxButton [10]
      Left = 228
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Add'
      TabOrder = 1
      OnClick = btndxTreeViewAddClick
    end
    object btndxTreeViewFullExpand: TcxButton [11]
      Left = 228
      Top = 90
      Width = 75
      Height = 25
      Caption = 'Full Expand'
      TabOrder = 3
      OnClick = btndxTreeViewFullExpandClick
    end
    object btndxTreeViewFullCollapse: TcxButton [12]
      Left = 228
      Top = 121
      Width = 75
      Height = 25
      Caption = 'Full Collapse'
      TabOrder = 4
      OnClick = btndxTreeViewFullCollapseClick
    end
    object TreeView: TTreeView [13]
      Left = 335
      Top = 30
      Width = 200
      Height = 94
      BevelInner = bvNone
      BevelOuter = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      Indent = 19
      TabOrder = 5
    end
    inherited lgContent: TdxLayoutGroup
      AlignHorz = ahCenter
      Hidden = True
      ShowBorder = False
    end
    object lidxNewTreeView: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'TdxTreeViewControl'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = dxNewTreeView
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liseAddCount: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Top-Level Nodes:'
      Control = seFirstLevelNodeCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liTreeViewAdd: TdxLayoutItem
      Parent = dxLayoutGroup3
      Control = btnTreeViewAdd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liTreeViewClear: TdxLayoutItem
      Parent = dxLayoutGroup3
      Control = btnTreeViewClear
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 50
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgTreeViews: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'TreeView Controls'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgLog: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'Log'
      SizeOptions.AssignedValues = [sovSizableVert]
      SizeOptions.SizableVert = False
      SizeOptions.Height = 186
      ButtonOptions.ShowExpandButton = True
      Index = 1
      Buttons = <
        item
          Glyph.SourceDPI = 96
          Glyph.SourceHeight = 16
          Glyph.SourceWidth = 16
          Glyph.Data = {
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
            7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2254
            72617368223E0D0A09093C7061746820636C6173733D22426C61636B2220643D
            224D382C323763302C302E352C302E352C312C312C3168313463302E352C302C
            312D302E352C312D3156313248385632377A222F3E0D0A09093C706174682063
            6C6173733D22426C61636B2220643D224D32352C36682D37563563302D302E35
            2D302E352D312D312D31682D32632D302E352C302D312C302E352D312C317631
            483743362E352C362C362C362E352C362C37763368323056374332362C362E35
            2C32352E352C362C32352C367A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
            0A}
          Hint = 'Clear Log'
          OnClick = lgLogButton0Click
        end>
    end
    object limLog: TdxLayoutItem
      Parent = lgLog
      AlignHorz = ahClient
      AlignVert = avClient
      Control = mLog
      ControlOptions.OriginalHeight = 89
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Max Levels:'
      Control = seDepth
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liNodesCount: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Nodes to Add:'
      Index = 3
    end
    object lgdxTreeViewControl: TdxLayoutGroup
      Parent = lgTreeViews
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'TdxTreeViewControl'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lgTreeView: TdxLayoutGroup
      Parent = lgTreeViews
      AlignHorz = ahClient
      CaptionOptions.Text = 'TTreeView'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgTreeView
      CaptionOptions.Text = 'Actions:'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object liTreeViewExpand: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnTreeViewFullExpand
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liTreeViewCollapse: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = btnTreeViewFullCollapse
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liChildrenCount: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Children in Each Node:'
      Control = seChildrenCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Tree Settings'
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgdxTreeViewControl
      CaptionOptions.Text = 'Actions:'
      Hidden = True
      ItemIndex = 3
      ShowBorder = False
      Index = 1
    end
    object lidxTreeViewClear: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btndxTreeViewClear
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lidxTreeViewAdd: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btndxTreeViewAdd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lidxTreeViewExpand: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btndxTreeViewFullExpand
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lidxTreeViewCollapse: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = btndxTreeViewFullCollapse
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liTreeView: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = TreeView
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 200
      Index = 0
    end
    object lidxTreeViewNodeCount: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Node Count: 0'
      Index = 1
    end
    object liTreeViewNodeCount: TdxLayoutLabeledItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Node Count: 0'
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = lgdxTreeViewControl
      AlignHorz = ahClient
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = lgTreeView
      AlignHorz = ahClient
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lgContent
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 256
    Top = 288
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
