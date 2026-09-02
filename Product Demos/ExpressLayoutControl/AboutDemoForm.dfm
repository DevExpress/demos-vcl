object FormAboutDemo: TFormAboutDemo
  Left = 266
  Top = 113
  BorderStyle = bsSizeToolWin
  BorderWidth = 8
  Caption = 'About this demo'
  ClientHeight = 476
  ClientWidth = 419
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 419
    Height = 476
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
    ExplicitWidth = 411
    ExplicitHeight = 464
    object redDescription: TcxRichEdit
      Left = 0
      Top = 0
      Align = alClient
      Properties.PlainText = True
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = True
      TabOrder = 0
      Height = 476
      Width = 419
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'redDescription'
      CaptionOptions.Visible = False
      Control = redDescription
      ControlOptions.OriginalHeight = 491
      ControlOptions.OriginalWidth = 419
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      Offsets.ControlOffsetHorz = 0
      Offsets.ControlOffsetVert = 0
      Offsets.ItemOffset = 0
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
  end
end
