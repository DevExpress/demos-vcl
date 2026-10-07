inherited frmShellBreadcrumbEdit: TfrmShellBreadcrumbEdit
  inherited lcFrame: TdxLayoutControl
    inherited lcControlContent: TdxLayoutControl
      object ShellBreadcrumbEdit: TdxShellBreadcrumbEdit [0]
        Left = 12
        Top = -50
        Width = 576
        Height = 24
        Properties.Buttons = <>
        Properties.PathEditor.RecentPaths = <>
        TabOrder = 0
      end
      object cbUseShellComboBox: TcxCheckBox [1]
        Left = 10000
        Top = 10000
        Action = acUseShellComboBox
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Transparent = True
        Visible = False
      end
      object cbUseShellListView: TcxCheckBox [2]
        Left = 228
        Top = 70
        Action = acUseShellListView
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Transparent = True
      end
      object cbUseShellTreeView: TcxCheckBox [3]
        Left = 10000
        Top = 10000
        Action = acUseShellTreeView
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Transparent = True
        Visible = False
      end
      object ShellComboBox: TcxShellComboBox [4]
        Left = 10000
        Top = 10000
        Properties.OnChange = ShellComboBoxPropertiesChange
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        Style.ButtonStyle = bts3D
        Style.PopupBorderStyle = epbsFrame3D
        TabOrder = 5
        Visible = False
        Width = 346
      end
      object cbpeAutoComplete: TcxCheckBox [5]
        Left = 24
        Top = 54
        Action = acAutoComplete
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Transparent = True
      end
      object cbpeEnabled: TcxCheckBox [6]
        Left = 24
        Top = 81
        Action = acEnabled
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Transparent = True
      end
      object cbpeReadOnly: TcxCheckBox [7]
        Left = 24
        Top = 108
        Action = acReadOnly
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Transparent = True
      end
      object ShellListView: TdxShellListView [8]
        Left = 228
        Top = 97
        Width = 346
        Height = 252
        TabOrder = 7
        OnChange = ShellListViewChange
      end
      object ShellTreeView: TdxShellTreeView [9]
        Left = 10000
        Top = 10000
        Width = 346
        Height = 252
        OptionsBehavior.AutoExpand = True
        OptionsSelection.HideSelection = False
        OptionsSelection.RightClickSelect = True
        TabOrder = 9
        Visible = False
        OnSelectionChanged = ShellTreeViewSelectionChanged
      end
      inherited dxLayoutGroup1: TdxLayoutGroup
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 453
        SizeOptions.Width = 600
        ItemIndex = 2
        LayoutDirection = ldVertical
      end
      inherited dxLayoutGroup2: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 74
      end
      inherited dxLayoutGroup3: TdxLayoutGroup
        AlignVert = avClient
        ItemIndex = 2
        LayoutDirection = ldHorizontal
      end
      inherited dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
        AlignHorz = ahClient
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignVert = avCenter
        CaptionOptions.Text = 'dxShellBreadcrumbEdit1'
        CaptionOptions.Visible = False
        Control = ShellBreadcrumbEdit
        ControlOptions.OriginalHeight = 24
        ControlOptions.OriginalWidth = 200
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lgPathEditor: TdxLayoutGroup
        Parent = dxLayoutGroup3
        CaptionOptions.Text = ' Path Editor '
        SizeOptions.AssignedValues = [sovSizableHorz]
        SizeOptions.SizableHorz = False
        SizeOptions.Width = 180
        ItemIndex = 2
        Index = 0
      end
      object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
        Parent = dxLayoutGroup3
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 1
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = dxLayoutGroup3
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.Text = 'New Group'
        ItemIndex = 1
        LayoutDirection = ldTabbed
        ShowBorder = False
        Index = 2
      end
      object lgShellComboBox: TdxLayoutGroup
        Parent = dxLayoutGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'Shell Combo Box'
        Visible = False
        ItemIndex = 1
        Index = 0
      end
      object lgShellListView: TdxLayoutGroup
        Parent = dxLayoutGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'Shell List View'
        ItemIndex = 1
        Index = 1
      end
      object lgShellTreeView: TdxLayoutGroup
        Parent = dxLayoutGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'Shell Tree View'
        ItemIndex = 1
        Index = 2
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = lgShellComboBox
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cbUseShellComboBox
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 118
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = lgShellListView
        CaptionOptions.Visible = False
        Control = cbUseShellListView
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 105
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = lgShellTreeView
        AlignVert = avTop
        CaptionOptions.Visible = False
        Control = cbUseShellTreeView
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 111
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object liShellComboBox: TdxLayoutItem
        Parent = lgShellComboBox
        AlignHorz = ahClient
        AlignVert = avCenter
        CaptionOptions.Text = 'cxShellComboBox1'
        CaptionOptions.Visible = False
        Control = ShellComboBox
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liShellListView: TdxLayoutItem
        Parent = lgShellListView
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = ShellListView
        ControlOptions.OriginalHeight = 150
        ControlOptions.OriginalWidth = 250
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object liShellTreeView: TdxLayoutItem
        Parent = lgShellTreeView
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = ShellTreeView
        ControlOptions.OriginalHeight = 100
        ControlOptions.OriginalWidth = 120
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = lgPathEditor
        CaptionOptions.Visible = False
        Control = cbpeAutoComplete
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 95
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = lgPathEditor
        CaptionOptions.Visible = False
        Control = cbpeEnabled
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = lgPathEditor
        CaptionOptions.Visible = False
        Control = cbpeReadOnly
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 74
        ControlOptions.ShowBorder = False
        Index = 2
      end
    end
  end
  inherited ActionList1: TActionList
    object acAutoComplete: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Autocomplete'
      Checked = True
      OnExecute = acAutoCompleteExecute
    end
    object acEnabled: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Enabled'
      Checked = True
      OnExecute = acAutoCompleteExecute
    end
    object acReadOnly: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Read-Only'
      OnExecute = acAutoCompleteExecute
    end
    object acUseShellComboBox: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Shell Combo Box'
      Checked = True
      OnExecute = acUseShellComboBoxExecute
    end
    object acUseShellListView: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Shell List View'
      Checked = True
      OnExecute = acUseShellListViewExecute
    end
    object acUseShellTreeView: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Shell Tree View'
      Checked = True
      OnExecute = acUseShellTreeViewExecute
    end
  end
end
