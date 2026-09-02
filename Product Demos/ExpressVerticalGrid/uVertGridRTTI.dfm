inherited frmVerticalGridRTTI: TfrmVerticalGridRTTI
  inherited lcFrame: TdxLayoutControl
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object Inspector: TcxRTTIInspector [0]
      Left = 10
      Top = 41
      Width = 296
      Height = 216
      OptionsView.RowHeaderWidth = 107
      TabOrder = 1
      Version = 1
    end
    object pnlControls: TPanel [1]
      Left = 322
      Top = 41
      Width = 109
      Height = 216
      BevelOuter = bvNone
      Color = 16053234
      ParentBackground = False
      TabOrder = 2
      OnAlignInsertBefore = pnlControlsAlignInsertBefore
      OnAlignPosition = pnlControlsAlignPosition
      object Edit1: TEdit
        Left = 8
        Top = -3
        Width = 121
        Height = 21
        Align = alCustom
        TabOrder = 0
        Text = 'Edit1'
      end
      object Button1: TButton
        Left = 8
        Top = 198
        Width = 75
        Height = 25
        Align = alCustom
        Caption = 'Button1'
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 8
        Top = 24
        Width = 218
        Height = 129
        Align = alCustom
        Lines.Strings = (
          'Memo1')
        TabOrder = 2
      end
      object dxToggleSwitch1: TdxToggleSwitch
        Left = 8
        Top = 159
        Align = alCustom
        Caption = 'dxToggleSwitch1'
        Checked = False
        Properties.Alignment = taLeftJustify
        TabOrder = 3
        Transparent = True
      end
    end
    object cbSelectedObject: TcxComboBox [2]
      Left = 10
      Top = 10
      AutoSize = False
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnEditValueChanged = cbSelectedObjectPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Height = 25
      Width = 296
    end
    inherited lgContent: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    inherited lgSetupTools: TdxLayoutGroup
      Parent = lcFrameGroup_Root
      AlignHorz = ahLeft
      AlignVert = avTop
      Visible = True
      ShowBorder = False
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = Inspector
      ControlOptions.OriginalHeight = 630
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = pnlControls
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 634
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.Width = 296
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = cbSelectedObject
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 296
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Height = -26
      Offsets.ControlOffsetHorz = 8
      Offsets.ControlOffsetVert = 8
      Offsets.ItemOffset = 9
      Offsets.RootItemsAreaOffsetHorz = 17
      Offsets.RootItemsAreaOffsetVert = 17
      PixelsPerInch = 96
    end
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
