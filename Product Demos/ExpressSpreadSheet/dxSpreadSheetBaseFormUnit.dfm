inherited dxSpreadSheetDemoUnitForm: TdxSpreadSheetDemoUnitForm
  inherited lcCustom: TdxLayoutControl
    inherited pnlSite: TPanel
      Height = 199
      ExplicitHeight = 199
      object SpreadSheet: TdxSpreadSheet
        Left = 0
        Top = 0
        Width = 445
        Height = 199
        Align = alClient
        ExplicitHeight = 206
        Data = {
          8002000044585353763242461000000042465320000000000000000001000101
          010100000100000001004246532000000000424653200100000001000000200B
          00000007000000430061006C0069006200720069000000000000002000000020
          0000000020000000000020000000000020000000000020000007000000470045
          004E004500520041004C00000000000002000000000000000001424653200100
          0000424653201700000054006400780053007000720065006100640053006800
          6500650074005400610062006C00650056006900650077000600000053006800
          650065007400310001FFFFFFFFFFFFFFFF640000000200000002000000020000
          0055000000140000000200000002000000000200000002000000000000010000
          0000000101000042465320550000000000000042465320000000004246532014
          0000000000000042465320000000000000000000000000010000000000000000
          0000000000000000000000424653200000000002020000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000064000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000200020200020000000000000000000000000000000000020000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0000000000000000424653200000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000}
      end
    end
    object ztbBook: TdxZoomTrackBar [1]
      Left = 155
      Top = 205
      Properties.OnChange = ztbBookPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Height = 26
      Width = 259
    end
    inherited lgSpreadSheet: TdxLayoutGroup
      ItemIndex = 1
    end
    object liZoom: TdxLayoutItem
      Parent = lgSpreadSheet
      AlignHorz = ahRight
      CaptionOptions.Text = '100%'
      CaptionOptions.Layout = clRight
      Control = ztbBook
      ControlOptions.OriginalHeight = 26
      ControlOptions.OriginalWidth = 259
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object ActionList1: TActionList
    Left = 208
    Top = 136
    object FormatRichEditBold1: TRichEditBold
      Category = 'Format'
      AutoCheck = True
      Caption = '&Bold'
      Hint = 'Bold'
      ImageIndex = 31
      ShortCut = 16450
    end
    object FormatRichEditItalic1: TRichEditItalic
      Category = 'Format'
      AutoCheck = True
      Caption = '&Italic'
      Hint = 'Italic'
      ImageIndex = 29
      ShortCut = 16457
    end
    object FormatRichEditUnderline1: TRichEditUnderline
      Category = 'Format'
      AutoCheck = True
      Caption = '&Underline'
      Hint = 'Underline'
      ImageIndex = 28
      ShortCut = 16469
    end
    object FormatRichEditStrikeOut1: TRichEditStrikeOut
      Category = 'Format'
      AutoCheck = True
      Caption = '&Strikeout'
      Hint = 'Strikeout'
      ImageIndex = 44
    end
  end
end
