object frmRichEditControlBase: TfrmRichEditControlBase
  Left = 0
  Top = 0
  Caption = 'Rich Edit Control'
  ClientHeight = 156
  ClientWidth = 271
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 271
    Height = 27
    BarManager = bmBarManager
    ColorSchemeAccent = rcsaBlue
    ColorSchemeName = 'Blue'
    SupportNonClientDrawing = True
    Contexts = <
      item
        Caption = 'Application Options'
        Color = clMaroon
        Visible = True
      end>
    TabOrder = 0
    TabStop = False
  end
  object rsbStatusBar: TdxRibbonStatusBar
    Left = 0
    Top = 133
    Width = 271
    Height = 23
    Panels = <>
    Ribbon = Ribbon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object bmBarManager: TdxBarManager
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
    ImageOptions.Images = dmMain.ilBarSmall
    ImageOptions.LargeImages = dmMain.ilBarLarge
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 200
    Top = 48
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object acActions: TActionList
    Images = dmMain.ilBarSmall
    Left = 112
    Top = 48
    object acQATAboveRibbon: TAction
      Category = 'Appearance'
      Caption = 'Ab&ove the Ribbon'
      GroupIndex = 1
    end
    object acQATBelowRibbon: TAction
      Tag = 1
      Category = 'Appearance'
      Caption = 'B&elow the Ribbon'
      GroupIndex = 1
    end
  end
  object stBarScreenTips: TdxScreenTipRepository
    Left = 32
    Top = 48
    object stRibbonForm: TdxScreenTip
      Header.Text = 'Ribbon Form'
      Description.Text = 'Toggle to display the editor either as a ribbon or normal form.'
    end
    object stAppButton: TdxScreenTip
      Header.Text = 'Application Button'
      Description.Text = 'Toggle to show/hide Application Button.'
    end
    object stQAT: TdxScreenTip
      Header.Text = 'Quick Access Toolbar Visibility'
      Description.Text = 'Toggle to show/hide Quick Access Toolbar.'
    end
    object stQATBelow: TdxScreenTip
      Header.Text = 'Below the Ribbon'
      Description.Text = 'Show Quick Access Toolbar below the Ribbon.'
    end
    object stQATAbove: TdxScreenTip
      Header.Text = 'Above the Ribbon'
      Description.Text = 'Show Quick Access Toolbar above the Ribbon.'
    end
  end
end
