inherited frmDBNavigator: TfrmDBNavigator
  inherited lcFrame: TdxLayoutControl
    inherited lcControlContent: TdxLayoutControl
      object DBNavigator: TcxDBNavigator [0]
        Left = 25
        Top = 178
        Width = 270
        Height = 25
        Buttons.OnButtonClick = DBNavigatorButtonsButtonClick
        Buttons.CustomButtons = <>
        DataSource = dmMain.dsEmployees
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object cbInfoPanelVisible: TcxCheckBox [1]
        Left = 344
        Top = 49
        Action = acInfoPanelVisible
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 1
        Transparent = True
      end
      object cbShowEditingButtons: TcxCheckBox [2]
        Left = 356
        Top = 164
        Action = acShowEditingButtons
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 4
        Transparent = True
      end
      object cbShowInsertAndDeleteButtons: TcxCheckBox [3]
        Left = 356
        Top = 137
        Action = acShowInsertAndDeleteButtons
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 3
        Transparent = True
      end
      object cbShowAppendButton: TcxCheckBox [4]
        Left = 356
        Top = 110
        Action = acShowAppendButton
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 2
        Transparent = True
      end
      object cbShowPageButtons: TcxCheckBox [5]
        Left = 356
        Top = 218
        Action = acShowPageButtons
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 6
        Transparent = True
      end
      object mmLog: TcxMemo [6]
        Left = 550
        Top = 33
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        TabOrder = 11
        Height = 284
        Width = 185
      end
      object btnClearLog: TcxButton [7]
        Left = 550
        Top = 323
        Width = 185
        Height = 25
        Caption = 'Clear'
        TabOrder = 10
        OnClick = btnClearLogClick
      end
      object cbShowFirstAndLastButtons: TcxCheckBox [8]
        Left = 356
        Top = 191
        Action = acShowFirstAndLastButtons
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 5
        Transparent = True
      end
      object cbShowFilterButton: TcxCheckBox [9]
        Left = 356
        Top = 299
        Action = acShowFilterButton
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 9
        Transparent = True
      end
      object cbShowBookmarkButton: TcxCheckBox [10]
        Left = 356
        Top = 272
        Action = acShowBookmarkButton
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 8
        Transparent = True
      end
      object cbShowRefreshButton: TcxCheckBox [11]
        Left = 356
        Top = 245
        Action = acShowRefreshButton
        Style.BorderColor = clWindowFrame
        Style.BorderStyle = ebs3D
        Style.HotTrack = False
        TabOrder = 7
        Transparent = True
      end
      inherited dxLayoutGroup1: TdxLayoutGroup
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 191
        ItemIndex = 2
      end
      inherited dxLayoutGroup2: TdxLayoutGroup
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 310
        SizeOptions.Width = 300
      end
      inherited dxLayoutGroup3: TdxLayoutGroup
        SizeOptions.Width = 200
        ItemIndex = 2
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup2
        AlignHorz = ahCenter
        AlignVert = avCenter
        CaptionOptions.Text = 'cxDBNavigator1'
        CaptionOptions.Visible = False
        Control = DBNavigator
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 270
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup3
        CaptionOptions.Visible = False
        Control = cbInfoPanelVisible
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 82
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutGroup3
        AlignVert = avTop
        CaptionOptions.Text = ' Button Visibility '
        ItemIndex = 7
        Index = 3
      end
      object dxLayoutItem3: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cbShowEditingButtons
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 125
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
        Parent = dxLayoutGroup3
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 0
      end
      object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
        Parent = dxLayoutGroup3
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 4
      end
      object dxLayoutItem4: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cbShowInsertAndDeleteButtons
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 125
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem5: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cbShowAppendButton
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 165
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem6: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignHorz = ahClient
        CaptionOptions.Visible = False
        Control = cbShowPageButtons
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutGroup5: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = ' Button Event Log '
        ItemIndex = 1
        Index = 3
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avClient
        CaptionOptions.Text = 'cxMemo1'
        CaptionOptions.Visible = False
        Control = mmLog
        ControlOptions.OriginalHeight = 124
        ControlOptions.OriginalWidth = 185
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup5
        AlignVert = avBottom
        CaptionOptions.Text = 'cxButton1'
        CaptionOptions.Visible = False
        Control = btnClearLog
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 75
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem9: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Visible = False
        Control = cbShowFirstAndLastButtons
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem10: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Visible = False
        Control = cbShowFilterButton
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 7
      end
      object dxLayoutItem11: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Visible = False
        Control = cbShowBookmarkButton
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object dxLayoutItem12: TdxLayoutItem
        Parent = dxLayoutGroup4
        CaptionOptions.Visible = False
        Control = cbShowRefreshButton
        ControlOptions.OriginalHeight = 21
        ControlOptions.OriginalWidth = 117
        ControlOptions.ShowBorder = False
        Index = 5
      end
      object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
        Parent = dxLayoutGroup3
        SizeOptions.Height = 10
        SizeOptions.Width = 10
        CaptionOptions.Text = 'Empty Space Item'
        Index = 2
      end
    end
  end
  inherited ActionList1: TActionList
    object acInfoPanelVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show InfoPanel'
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowAppendButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Append Button'
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowInsertAndDeleteButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Insert/Delete Buttons'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowEditingButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Editing Buttons'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowFirstAndLastButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show First/Last Buttons'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowPageButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Page Buttons'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowRefreshButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Refresh Button'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowBookmarkButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Bookmark Buttons'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
    object acShowFilterButton: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Filter Button'
      Checked = True
      OnExecute = cbInfoPanelVisiblePropertiesChange
    end
  end
end
