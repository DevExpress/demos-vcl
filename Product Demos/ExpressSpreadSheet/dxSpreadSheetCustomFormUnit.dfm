inherited dxSpreadSheetDemoCustomForm: TdxSpreadSheetDemoCustomForm
  inherited lcCustom: TdxLayoutControl
    Top = 40
    Height = 265
    ExplicitTop = 36
    ExplicitHeight = 269
    object pnlSite: TPanel [0]
      Left = 10
      Top = 10
      Width = 431
      Height = 207
      BevelOuter = bvNone
      TabOrder = 0
    end
    inherited lcCustomGroup_Root: TdxLayoutGroup
      ItemIndex = 1
    end
    object lgSpreadSheet: TdxLayoutGroup
      Parent = lcCustomGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object liSpreadSheet: TdxLayoutItem
      Parent = lgSpreadSheet
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'SpreadSheet'
      CaptionOptions.Visible = False
      Control = pnlSite
      ControlOptions.OriginalHeight = 269
      ControlOptions.OriginalWidth = 445
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object ssFormulaBar: TdxSpreadSheetFormulaBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 445
    Height = 23
    Align = alTop
    TabOrder = 1
  end
  object Splitter: TcxSplitter
    AlignWithMargins = True
    Left = 3
    Top = 29
    Width = 445
    Height = 8
    Margins.Top = 0
    AlignSplitter = salTop
    Control = ssFormulaBar
  end
end
