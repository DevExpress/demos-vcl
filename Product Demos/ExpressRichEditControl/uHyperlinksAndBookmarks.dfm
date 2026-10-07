inherited frmRichEditHyperlinksAndBookmarks: TfrmRichEditHyperlinksAndBookmarks
  Width = 553
  ExplicitWidth = 553
  inherited plTop: TPanel
    Width = 553
    Height = 130
    AutoSize = True
    Visible = True
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 553
    ExplicitHeight = 130
    object lcTop: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 553
      Height = 130
      Align = alTop
      ParentBackground = True
      TabOrder = 0
      AutoSize = True
      object ccbBookmarksColor: TcxColorComboBox
        Left = 133
        Top = 59
        ColorValue = clBlue
        Properties.CustomColors = <>
        Properties.OnEditValueChanged = ccbBookmarksColorPropertiesEditValueChanged
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Width = 121
      end
      object lcTopGroup_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        LayoutLookAndFeel = llfTop
        Hidden = True
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object lgBookmarks: TdxLayoutGroup
        Parent = lcTopGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Bookmarks'
        Index = 0
      end
      object lgHyperlinks: TdxLayoutGroup
        Parent = lcTopGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hyperlinks'
        ItemIndex = 1
        Index = 1
      end
      object liBookmarksColor: TdxLayoutItem
        Parent = lgBookmarks
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Bookmarks Color:'
        Control = ccbBookmarksColor
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 121
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lgKeys: TdxLayoutGroup
        Parent = lgHyperlinks
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'New Group'
        CaptionOptions.Visible = False
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = 0
      end
      object llbModifierKeys: TdxLayoutLabeledItem
        Parent = lgKeys
        AlignHorz = ahLeft
        AlignVert = avClient
        CaptionOptions.Text = 'Modifier Keys:'
        Index = 0
      end
      object liShowBookmarks: TdxLayoutCheckBoxItem
        Parent = lgBookmarks
        CaptionOptions.Text = 'Show Bookmarks'
        State = cbsChecked
        OnClick = liShowBookmarksClick
        Index = 0
      end
      object liCtrl: TdxLayoutCheckBoxItem
        Parent = lgKeys
        CaptionOptions.Text = 'Ctrl'
        State = cbsChecked
        OnClick = liModifierKeysClick
        Index = 1
      end
      object liAlt: TdxLayoutCheckBoxItem
        Parent = lgKeys
        CaptionOptions.Text = 'Alt'
        OnClick = liModifierKeysClick
        Index = 2
      end
      object liShift: TdxLayoutCheckBoxItem
        Parent = lgKeys
        CaptionOptions.Text = 'Shift'
        OnClick = liModifierKeysClick
        Index = 3
      end
      object liShowTooltip: TdxLayoutCheckBoxItem
        Parent = lgHyperlinks
        AlignVert = avClient
        CaptionOptions.Text = 'Show Tooltip'
        State = cbsChecked
        OnClick = liShowTooltipClick
        Index = 1
      end
    end
  end
  inherited pnlSeparator: TPanel
    Top = 130
    Width = 553
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 130
    ExplicitWidth = 553
  end
  inherited lcDescription: TdxLayoutControl
    Width = 553
    ExplicitWidth = 553
  end
  inherited RichEditControl: TdxRichEditControl
    Top = 130
    Width = 553
    Height = 102
    ExplicitTop = 130
    ExplicitWidth = 553
    ExplicitHeight = 102
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object llflTop: TdxLayoutLookAndFeelList
    Left = 240
    Top = 152
    object llfTop: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
