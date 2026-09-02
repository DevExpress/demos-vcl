object OptionsForm: TOptionsForm
  Left = 351
  Top = 244
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'OrgChart Options'
  ClientHeight = 343
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 631
    Height = 343
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object cbButtons: TcxCheckBox
      Left = 187
      Top = 82
      Caption = 'Show Buttons'
      Style.HotTrack = False
      TabOrder = 10
      Transparent = True
    end
    object cbCanDrag: TcxCheckBox
      Left = 305
      Top = 82
      Caption = 'Can Drag'
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
    end
    object cbEdit: TcxCheckBox
      Left = 305
      Top = 28
      Caption = 'Rename'
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
    end
    object cbFocus: TcxCheckBox
      Left = 187
      Top = 55
      Caption = 'Show Focus'
      Style.HotTrack = False
      TabOrder = 9
      Transparent = True
    end
    object cbInsDel: TcxCheckBox
      Left = 305
      Top = 55
      Caption = 'Insert, Delete'
      Style.HotTrack = False
      TabOrder = 13
      Transparent = True
    end
    object cbSelect: TcxCheckBox
      Left = 187
      Top = 28
      Caption = 'Show Select'
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
    end
    object cbShowDrag: TcxCheckBox
      Left = 305
      Top = 109
      Caption = 'Show Drag'
      Style.HotTrack = False
      TabOrder = 15
      Transparent = True
    end
    object cbShowImages: TcxCheckBox
      Left = 187
      Top = 109
      Caption = 'Show Images'
      Style.HotTrack = False
      TabOrder = 11
      Transparent = True
    end
    object cbLeft: TcxCheckBox
      Left = 22
      Top = 28
      Caption = 'Left'
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object cbCenter: TcxCheckBox
      Left = 22
      Top = 55
      Caption = 'Center'
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
    end
    object cbRight: TcxCheckBox
      Left = 22
      Top = 82
      Caption = 'Right'
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
    end
    object cbVCenter: TcxCheckBox
      Left = 22
      Top = 109
      Caption = 'Vert Center'
      Style.HotTrack = False
      TabOrder = 3
      Transparent = True
    end
    object cbWrap: TcxCheckBox
      Left = 106
      Top = 28
      Caption = 'Wrap'
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object cbUpper: TcxCheckBox
      Left = 106
      Top = 55
      Caption = 'Upper'
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
    end
    object cbLower: TcxCheckBox
      Left = 106
      Top = 82
      Caption = 'Lower'
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
    end
    object cbGrow: TcxCheckBox
      Left = 106
      Top = 109
      Caption = 'Grow'
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
    end
    object seLineWidth: TcxSpinEdit
      Left = 477
      Top = 104
      Properties.MaxValue = 50.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Style.HotTrack = False
      TabOrder = 18
      Value = 1
      Width = 76
    end
    object seX: TcxSpinEdit
      Left = 477
      Top = 32
      Style.HotTrack = False
      TabOrder = 16
      Width = 76
    end
    object seY: TcxSpinEdit
      Left = 477
      Top = 68
      Style.HotTrack = False
      TabOrder = 17
      Width = 76
    end
    object BitBtn1: TcxButton
      Left = 490
      Top = 148
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 20
    end
    object BitBtn2: TcxButton
      Left = 409
      Top = 148
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 19
      OnClick = BitBtn2Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Text Options'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbLeft'
      CaptionOptions.Visible = False
      Control = cbLeft
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 41
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbCenter'
      CaptionOptions.Visible = False
      Control = cbCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 55
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbRight'
      CaptionOptions.Visible = False
      Control = cbRight
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbVCenter'
      CaptionOptions.Visible = False
      Control = cbVCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbWrap'
      CaptionOptions.Visible = False
      Control = cbWrap
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 48
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbUpper'
      CaptionOptions.Visible = False
      Control = cbUpper
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbLower'
      CaptionOptions.Visible = False
      Control = cbLower
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbGrow'
      CaptionOptions.Visible = False
      Control = cbGrow
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbSelect'
      CaptionOptions.Visible = False
      Control = cbSelect
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbFocus'
      CaptionOptions.Visible = False
      Control = cbFocus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 79
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbButtons'
      CaptionOptions.Visible = False
      Control = cbButtons
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbEdit'
      CaptionOptions.Visible = False
      Control = cbEdit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup7
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbCanDrag'
      CaptionOptions.Visible = False
      Control = cbCanDrag
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 67
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbShowDrag'
      CaptionOptions.Visible = False
      Control = cbShowDrag
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 74
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbInsDel'
      CaptionOptions.Visible = False
      Control = cbInsDel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cbShowImages'
      CaptionOptions.Visible = False
      Control = cbShowImages
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 86
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignVert = avClient
      CaptionOptions.Text = 'Indent X'
      Control = seX
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignVert = avClient
      CaptionOptions.Text = 'Indent Y'
      Control = seY
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignVert = avClient
      CaptionOptions.Text = 'Line width'
      Control = seLineWidth
      ControlOptions.AlignVert = avCenter
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'BitBtn2'
      CaptionOptions.Visible = False
      Control = BitBtn2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'BitBtn1'
      CaptionOptions.Visible = False
      Control = BitBtn1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Sizes'
      ItemIndex = 2
      Index = 3
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'View Options'
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Edit Options'
      ItemIndex = 3
      Index = 2
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
