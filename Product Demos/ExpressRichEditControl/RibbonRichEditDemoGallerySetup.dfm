object ColorDialogSetupForm: TColorDialogSetupForm
  Left = 408
  Top = 291
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Color Dialog Setup'
  ClientHeight = 107
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  DesignSize = (
    213
    107)
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 213
    Height = 107
    TabOrder = 4
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object btnOK: TcxButton
    Left = 49
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    ExplicitLeft = 48
  end
  object btnCancel: TcxButton
    Left = 129
    Top = 72
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    ExplicitLeft = 128
  end
  object chkRemoveHorizontalItemPadding: TcxCheckBox
    Left = 16
    Top = 16
    Caption = 'Remove &Horizontal Item Padding'
    TabOrder = 2
    Transparent = True
  end
  object chkRemoveVerticalItemPadding: TcxCheckBox
    Left = 16
    Top = 40
    Caption = 'Remove &Vertical Item Padding'
    TabOrder = 3
    Transparent = True
  end
end
