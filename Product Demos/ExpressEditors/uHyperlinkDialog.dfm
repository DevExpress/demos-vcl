object fmHyperlinkDialog: TfmHyperlinkDialog
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Insert Hyperlink'
  ClientHeight = 250
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 300
    Height = 250
    TabOrder = 0
    AutoSize = True
    object btnOk: TcxButton
      Left = 186
      Top = 123
      Width = 85
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 3
    end
    object btnCancel: TcxButton
      Left = 277
      Top = 123
      Width = 85
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 4
    end
    object edtTextToDisplay: TcxTextEdit
      Left = 106
      Top = 26
      Properties.ReadOnly = False
      Properties.UseNullString = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 240
    end
    object edtAddress: TcxButtonEdit
      Left = 106
      Top = 80
      Properties.Buttons = <>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 240
    end
    object edtHint: TcxTextEdit
      Left = 106
      Top = 53
      Properties.ReadOnly = False
      Properties.UseNullString = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 240
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
      CaptionOptions.Visible = False
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Offsets.Bottom = 16
      Offsets.Left = 16
      Offsets.Right = 16
      Offsets.Top = 16
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignVert = avTop
      CaptionOptions.Visible = False
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object liTextToDisplay: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Text to display:'
      Control = edtTextToDisplay
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liAddress: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Address:'
      Control = edtAddress
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liOk: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'btnOk'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liCancel: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'btnCancel'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liHint: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Hint:'
      Control = edtHint
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 240
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
