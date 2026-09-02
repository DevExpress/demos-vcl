object frmProgress: TfrmProgress
  Left = 414
  Top = 343
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 66
  ClientWidth = 459
  Color = clBtnFace
  TransparentColorValue = clNone
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pbProgress: TcxProgressBar
    Left = 14
    Top = 33
    Style.BorderStyle = ebsNone
    Style.LookAndFeel.NativeStyle = True
    Style.TransparentBorder = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 0
    Width = 429
  end
  object Label1: TcxLabel
    Left = 16
    Top = 10
    Caption = 'Inserting events...'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
end
