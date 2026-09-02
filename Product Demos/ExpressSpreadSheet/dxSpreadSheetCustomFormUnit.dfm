inherited dxSpreadSheetDemoCustomForm: TdxSpreadSheetDemoCustomForm
  inherited lcCustom: TdxLayoutControl
    Top = 36
    Height = 269
    ExplicitTop = 27
    ExplicitHeight = 278
    object pnlSite: TPanel [0]
      Left = 3
      Top = 3
      Width = 445
      Height = 211
      BevelOuter = bvNone
      TabOrder = 0
    end
    inherited lcCustomGroup_Root: TdxLayoutGroup
      LayoutLookAndFeel = frmMain.dxLayoutSkinLookAndFeel1
      ItemIndex = 1
    end
    object lgSpreadSheet: TdxLayoutGroup
      Parent = lcCustomGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
    Height = 19
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 451
  end
  object Splitter: TcxSplitter
    AlignWithMargins = True
    Left = 3
    Top = 25
    Width = 445
    Height = 8
    Margins.Top = 0
    AlignSplitter = salTop
    Control = ssFormulaBar
    ExplicitLeft = 0
    ExplicitTop = 19
    ExplicitWidth = 451
  end
end
