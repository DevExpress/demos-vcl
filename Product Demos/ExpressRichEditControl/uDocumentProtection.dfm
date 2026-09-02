inherited frmRichEditDocumentProtection: TfrmRichEditDocumentProtection
  inherited plTop: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlSeparator: TPanel
    Top = 132
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 132
  end
  inherited RichEditControl: TdxRichEditControl
    Top = 132
    Height = 100
    OnDocumentProtectionChanged = RichEditControlDocumentProtectionChanged
    ExplicitTop = 132
    ExplicitHeight = 100
  end
  object pnlInfo: TdxPanel [4]
    Left = 0
    Top = 57
    Width = 451
    Height = 75
    Align = alTop
    AutoSize = True
    Color = clInfoBk
    TabOrder = 4
    object lcInfo: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 449
      Height = 73
      Align = alTop
      ParentBackground = True
      TabOrder = 0
      AutoSize = True
      object lcInfoGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avBottom
        CaptionOptions.Visible = False
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelFontBlack
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object liPermission: TdxLayoutLabeledItem
        Parent = lcInfoGroup_Root
        AlignHorz = ahClient
        AlignVert = avCenter
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelFontBlack
        CaptionOptions.Text = 
          'Permission to this document is restricted. Only certain users ar' +
          'e authorized to edit specific portions of this document. The edi' +
          'table regions in this sample document are highlighted in yellow ' +
          'and differ from one user to the other. The default password for ' +
          'this document is '#39'123'#39'.'
        CaptionOptions.WordWrap = True
        Index = 1
      end
      object liAccess: TdxLayoutLabeledItem
        Parent = lcInfoGroup_Root
        AlignHorz = ahLeft
        AlignVert = avTop
        LayoutLookAndFeel = dxLayoutSkinLookAndFeelFontBold
        CaptionOptions.Text = 'Restricted Access:'
        Index = 0
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelFontBold: TdxLayoutSkinLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clInfoText
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = [fsBold]
      ItemOptions.CaptionOptions.TextColor = clInfoText
      ItemOptions.CaptionOptions.TextDisabledColor = clInfoText
      ItemOptions.CaptionOptions.TextHotColor = clInfoText
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeelFontBlack: TdxLayoutSkinLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clInfoText
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Segoe UI'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.TextColor = clInfoText
      ItemOptions.CaptionOptions.TextDisabledColor = clInfoText
      ItemOptions.CaptionOptions.TextHotColor = clInfoText
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
end
