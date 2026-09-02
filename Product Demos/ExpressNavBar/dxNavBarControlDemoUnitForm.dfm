object TdxNavBarControlDemoUnitForm: TTdxNavBarControlDemoUnitForm
  Left = 0
  Top = 0
  Caption = 'TdxNavBarControlDemoUnitForm'
  ClientHeight = 267
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 0
    ExplicitWidth = 395
    ExplicitHeight = 260
    Height = 219
    Width = 368
  end
  object pnlDescription: TcxGroupBox
    Left = 0
    Top = 219
    Align = alBottom
    PanelStyle.Active = True
    Style.Edges = []
    TabOrder = 5
    Visible = False
    ExplicitTop = 251
    ExplicitWidth = 395
    DesignSize = (
      368
      48)
    Height = 48
    Width = 368
    object cxGroupBox6: TcxGroupBox
      Left = 7
      Top = 7
      Anchors = [akLeft, akTop, akRight, akBottom]
      PanelStyle.Active = True
      TabOrder = 0
      ExplicitWidth = 381
      DesignSize = (
        354
        33)
      Height = 33
      Width = 354
      object pnlHintInternal: TPanel
        Left = 1
        Top = 1
        Width = 352
        Height = 31
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        BevelWidth = 4
        Color = clInfoBk
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 379
        object lblLeft2: TLabel
          Left = 0
          Top = 5
          Width = 5
          Height = 21
          Align = alLeft
          AutoSize = False
        end
        object lblRight2: TLabel
          Left = 347
          Top = 5
          Width = 5
          Height = 21
          Align = alRight
          AutoSize = False
          ExplicitLeft = 364
        end
        object lblTop2: TLabel
          Left = 0
          Top = 0
          Width = 352
          Height = 5
          Align = alTop
          AutoSize = False
          ExplicitWidth = 369
        end
        object lblBottom2: TLabel
          Left = 0
          Top = 26
          Width = 352
          Height = 5
          Align = alBottom
          AutoSize = False
          ExplicitWidth = 369
        end
        object lblDescription: TLabel
          Left = 5
          Top = 5
          Width = 342
          Height = 21
          Align = alClient
          AutoSize = False
          Transparent = True
          WordWrap = True
          ExplicitWidth = 359
        end
      end
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 288
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
  end
end
