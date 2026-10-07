object MailClientDemoBaseFrame: TMailClientDemoBaseFrame
  Left = 0
  Top = 0
  Width = 958
  Height = 628
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object bmFrame: TdxBarManager
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
    ImageOptions.Images = DM.ilToolbarsSmallSVG
    ImageOptions.LargeImages = DM.ilToolBarsLargeSVG
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 784
    Top = 16
    PixelsPerInch = 96
  end
  object alFrame: TActionList
    Images = DM.ilToolbarsLarge
    Left = 840
    Top = 16
  end
  object ComponentPrinter: TdxComponentPrinter
    Version = 0
    OnBeforePreview = ComponentPrinterBeforePreview
    Left = 784
    Top = 64
    PixelsPerInch = 96
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 88
    Top = 88
    object lslfMain: TdxLayoutSkinLookAndFeel
      UseSkinOffsets = bTrue
      PixelsPerInch = 96
    end
  end
end
