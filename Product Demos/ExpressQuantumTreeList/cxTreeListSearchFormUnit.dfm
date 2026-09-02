inherited frmSearch: TfrmSearch
  Caption = 'Search'
  ClientWidth = 668
  OnCreate = FormCreate
  ExplicitWidth = 668
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 668
    ExplicitWidth = 668
    inherited tlUnbound: TcxTreeList
      Width = 432
      OptionsView.Indicator = True
      ExplicitWidth = 432
      inherited clName: TcxTreeListColumn
        Width = 84
      end
      inherited clOrbitNumb: TcxTreeListColumn
        Width = 77
      end
      inherited clDistance: TcxTreeListColumn
        Width = 68
      end
      inherited clPeriod: TcxTreeListColumn
        Width = 47
      end
      inherited clDiscoverer: TcxTreeListColumn
        Width = 48
      end
      inherited clDate: TcxTreeListColumn
        Width = 47
      end
      inherited clRadius: TcxTreeListColumn
        Width = 47
      end
    end
    object cbPresent: TcxComboBox [1]
      Left = 467
      Top = 59
      Properties.Items.Strings = (
        'Mars'
        '%a_u%'
        'Titan')
      Properties.OnChange = cbPresetPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Width = 182
    end
    object edtText: TcxTextEdit [2]
      Left = 467
      Top = 104
      Style.HotTrack = False
      TabOrder = 2
      OnKeyPress = edtTextKeyPress
      Width = 182
    end
    object cbMode: TcxComboBox [3]
      Left = 467
      Top = 149
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Normal'
        'Like'
        'Exact')
      Style.HotTrack = False
      TabOrder = 3
      Text = 'Normal'
      Width = 182
    end
    object btnFind: TcxButton [4]
      Left = 467
      Top = 301
      Width = 182
      Height = 25
      Caption = 'Find'
      TabOrder = 4
      OnClick = btnFindClick
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      AlignVert = avTop
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgTools
      AlignVert = avTop
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgTools
      AlignVert = avTop
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Presents:'
      CaptionOptions.Layout = clTop
      Control = cbPresent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Search Text:'
      CaptionOptions.Layout = clTop
      Control = edtText
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignVert = avTop
      CaptionOptions.Text = 'Search Mode:'
      CaptionOptions.Layout = clTop
      Control = cbMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnFind
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object chkCaseSensitive: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignVert = avTop
      Action = acCaseSensitive
      Index = 1
    end
    object chkStartFromCurrent: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignVert = avTop
      Action = acStartFromCurrent
      Index = 2
    end
    object chkForward: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      Action = acForward
      Index = 0
    end
    object chkIgnoreStart: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      AlignVert = avTop
      Action = acIgnoreStart
      Index = 1
    end
    object chkExpandedOnly: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignVert = avTop
      Action = acExpandedOnly
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acExpandedOnly: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Expanded Only'
      OnExecute = acExpandedOnlyExecute
    end
    object acCaseSensitive: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Case Sensitive'
      OnExecute = acExpandedOnlyExecute
    end
    object acStartFromCurrent: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Start From the Focused Node'
      OnExecute = acExpandedOnlyExecute
    end
    object acForward: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Forward'
      OnExecute = acExpandedOnlyExecute
    end
    object acIgnoreStart: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Ignore the Focused Node'
      OnExecute = acExpandedOnlyExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
