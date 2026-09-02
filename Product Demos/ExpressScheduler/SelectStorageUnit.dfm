object SelectStorage: TSelectStorage
  Left = 524
  Top = 233
  BorderStyle = bsDialog
  Caption = 'Select storage'
  ClientHeight = 118
  ClientWidth = 198
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    ExplicitHeight = 114
    DesignSize = (
      198
      118)
    Height = 118
    Width = 198
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Save to'
      TabOrder = 0
      Transparent = True
      Height = 69
      Width = 182
      object rbDBStorage: TcxRadioButton
        AlignWithMargins = True
        Left = 6
        Top = 18
        Width = 170
        Height = 17
        Align = alTop
        Caption = 'DB Storage'
        Checked = True
        TabOrder = 0
        TabStop = True
        Transparent = True
        ExplicitLeft = 8
        ExplicitTop = 16
        ExplicitWidth = 113
      end
      object rbUnboundStorage: TcxRadioButton
        AlignWithMargins = True
        Left = 6
        Top = 41
        Width = 170
        Height = 17
        Align = alTop
        Caption = 'Unbound Storage'
        TabOrder = 1
        Transparent = True
        ExplicitLeft = 8
        ExplicitWidth = 113
      end
    end
    object btnOK: TcxButton
      Left = 105
      Top = 86
      Width = 85
      Height = 23
      Anchors = [akTop, akRight]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 1
    end
  end
end
