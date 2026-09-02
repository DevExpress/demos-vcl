inherited frmAdvancedFilteringGrid: TfrmAdvancedFilteringGrid
  inherited PanelGrid: TdxPanel
    Top = 227
    Width = 922
    Height = 440
    ExplicitTop = 227
    ExplicitWidth = 922
    ExplicitHeight = 443
    inherited Grid: TcxGrid
      Width = 922
      Height = 443
      ExplicitWidth = 922
      ExplicitHeight = 443
      inherited GridDBTableView: TcxGridDBTableView
        FilterBox.CriteriaDisplayStyle = fcdsTokens
        FilterBox.Visible = fvAlways
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 0
    Width = 922
    Height = 227
    Align = alTop
    Frame.Borders = [bBottom]
    ExplicitLeft = 0
    ExplicitWidth = 922
    ExplicitHeight = 227
    inherited gbSetupTools: TcxGroupBox
      Caption = ''
      PanelStyle.Active = True
      ExplicitWidth = 922
      ExplicitHeight = 226
      Height = 226
      Width = 922
      inherited lcFrame: TdxLayoutControl
        Top = 1
        Width = 920
        Height = 224
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 224
        object FilterControl: TcxFilterControl [0]
          Left = 10
          Top = 10
          Width = 900
          Height = 173
          LinkComponent = GridDBTableView
          TabOrder = 0
        end
        object btnApply: TcxButton [1]
          Left = 10
          Top = 189
          Width = 70
          Height = 25
          Caption = '&Apply'
          TabOrder = 1
          OnClick = btnApplyClick
        end
        object btnReset: TcxButton [2]
          Left = 86
          Top = 189
          Width = 70
          Height = 25
          Caption = '&Reset'
          TabOrder = 2
          OnClick = btnResetClick
        end
        object btOpen: TcxButton [3]
          Left = 178
          Top = 189
          Width = 75
          Height = 25
          Hint = 'Open|Opens an existing filter'
          Caption = '&Open...'
          TabOrder = 3
          OnClick = btOpenClick
        end
        object btSave: TcxButton [4]
          Left = 259
          Top = 189
          Width = 70
          Height = 25
          Hint = 'Save As|Saves the active filter with a new name'
          Caption = 'Save &As...'
          TabOrder = 4
          OnClick = btSaveClick
        end
        object cbCriteriaDisplayStyle: TcxComboBox [5]
          Left = 789
          Top = 191
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Tokens'
            'Text')
          Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Text = 'Tokens'
          Width = 121
        end
        inherited lgSetupTools: TdxLayoutGroup
          AlignHorz = ahClient
          Visible = True
          SizeOptions.Width = 309
          ItemIndex = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avClient
          Control = FilterControl
          ControlOptions.OriginalHeight = 170
          ControlOptions.OriginalWidth = 300
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'New Group'
          ItemIndex = 5
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = btnApply
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 70
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Visible = False
          Control = btnReset
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 70
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = btOpen
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Visible = False
          Control = btSave
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 70
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahRight
          AlignVert = avCenter
          CaptionOptions.Text = 'Criteria Display Style'
          Control = cbCriteriaDisplayStyle
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Height = -70
      Offsets.ControlOffsetHorz = 10
      Offsets.ControlOffsetVert = 10
      Offsets.ItemOffset = 14
      Offsets.RootItemsAreaOffsetHorz = 24
      Offsets.RootItemsAreaOffsetVert = 24
      PixelsPerInch = 96
    end
  end
  object SaveDialog: TdxSaveFileDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 360
    Top = 112
  end
  object OpenDialog: TdxOpenFileDialog
    Left = 288
    Top = 112
  end
end
