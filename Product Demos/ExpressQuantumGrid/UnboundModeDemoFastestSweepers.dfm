object UnboundModeDemoFastestSweepersForm: TUnboundModeDemoFastestSweepersForm
  Left = 328
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fastest Mine Sweepers'
  ClientHeight = 156
  ClientWidth = 249
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbBeginner: TcxLabel
    Left = 25
    Top = 22
    Caption = 'Beginner'
  end
  object lbIntermediate: TcxLabel
    Left = 25
    Top = 46
    Caption = 'Intermediate'
  end
  object lbExpert: TcxLabel
    Left = 25
    Top = 70
    Caption = 'Expert'
  end
  object lbExpertTime: TcxLabel
    Left = 105
    Top = 70
    Caption = 'Label1'
  end
  object lbIntermediateTime: TcxLabel
    Left = 105
    Top = 46
    Caption = 'Label1'
  end
  object lbBeginnerTime: TcxLabel
    Left = 105
    Top = 22
    Caption = 'Label1'
  end
  object ibExpertName: TcxLabel
    Left = 177
    Top = 70
    Caption = 'Label1'
  end
  object lbIntermediateName: TcxLabel
    Left = 177
    Top = 46
    Caption = 'Label1'
  end
  object lbBeginnerName: TcxLabel
    Left = 177
    Top = 22
    Caption = 'Label1'
  end
  object bntOK: TcxButton
    Left = 144
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
    LookAndFeel.NativeStyle = True
  end
  object btnResetScores: TcxButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reset Scores'
    TabOrder = 1
    OnClick = btnResetScoresClick
    LookAndFeel.NativeStyle = True
  end
end
