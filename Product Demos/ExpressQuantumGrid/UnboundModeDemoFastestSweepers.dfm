object UnboundModeDemoFastestSweepersForm: TUnboundModeDemoFastestSweepersForm
  Left = 328
  Top = 282
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fastest Mine Sweepers'
  ClientHeight = 155
  ClientWidth = 245
  Color = 15451300
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 13
  object lbBeginner: TcxLabel
    Left = 25
    Top = 22
    Caption = 'Beginner'
    TabOrder = 2
  end
  object lbIntermediate: TcxLabel
    Left = 25
    Top = 46
    Caption = 'Intermediate'
    TabOrder = 3
  end
  object lbExpert: TcxLabel
    Left = 25
    Top = 70
    Caption = 'Expert'
    TabOrder = 4
  end
  object lbExpertTime: TcxLabel
    Left = 105
    Top = 70
    Caption = 'Label1'
    TabOrder = 5
  end
  object lbIntermediateTime: TcxLabel
    Left = 105
    Top = 46
    Caption = 'Label1'
    TabOrder = 6
  end
  object lbBeginnerTime: TcxLabel
    Left = 105
    Top = 22
    Caption = 'Label1'
    TabOrder = 7
  end
  object ibExpertName: TcxLabel
    Left = 177
    Top = 70
    Caption = 'Label1'
    TabOrder = 8
  end
  object lbIntermediateName: TcxLabel
    Left = 177
    Top = 46
    Caption = 'Label1'
    TabOrder = 9
  end
  object lbBeginnerName: TcxLabel
    Left = 177
    Top = 22
    Caption = 'Label1'
    TabOrder = 10
  end
  object bntOK: TcxButton
    Left = 144
    Top = 104
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 0
  end
  object btnResetScores: TcxButton
    Left = 24
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Reset Scores'
    TabOrder = 1
    OnClick = btnResetScoresClick
  end
end
