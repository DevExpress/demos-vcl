object frmGroupingOptions: TfrmGroupingOptions
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Expand Button Positions'
  ClientHeight = 162
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 300
    Height = 162
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object btnOk: TcxButton
      Left = 134
      Top = 82
      Width = 75
      Height = 25
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
    end
    object btnCancel: TcxButton
      Left = 215
      Top = 82
      Width = 75
      Height = 25
      Cancel = True
      Caption = '&Cancel'
      ModalResult = 2
      TabOrder = 3
    end
    object cbbColumns: TcxComboBox
      Left = 59
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Group Start'
        'Group Finish')
      Style.HotTrack = False
      TabOrder = 0
      Width = 231
    end
    object cbbRows: TcxComboBox
      Left = 59
      Top = 41
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Group Start'
        'Group Finish')
      Style.HotTrack = False
      TabOrder = 1
      Width = 231
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahParentManaged
      AlignVert = avTop
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object liBtnOk: TdxLayoutItem
      Parent = lgDialogButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liBtnCancel: TdxLayoutItem
      Parent = lgDialogButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgDialogButtons: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahRight
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Offsets.Top = 10
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object liColumns: TdxLayoutItem
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'Columns:'
      Control = cbbColumns
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liRows: TdxLayoutItem
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'Rows:'
      Control = cbbRows
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object LayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 8
    Top = 80
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
