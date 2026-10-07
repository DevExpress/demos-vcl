inherited frmRichEditFrame: TfrmRichEditFrame
  inherited plTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlSeparator: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  object RichEditControl: TdxRichEditControl [3]
    Left = 0
    Top = 57
    Width = 451
    Height = 175
    Align = alClient
    Options.DocumentSaveOptions.DefaultFormat = OpenXml
    TabOrder = 3
    OnSelectionChanged = RichEditControlSelectionChanged
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
