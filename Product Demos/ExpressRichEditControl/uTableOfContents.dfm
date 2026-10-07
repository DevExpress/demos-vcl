inherited frmRichEditTableOfContents: TfrmRichEditTableOfContents
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 57
    Width = 451
    Height = 175
    Align = alClient
    TabOrder = 3
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    object recTemplate: TdxRichEditControl
      Left = 20
      Top = 44
      Width = 300
      Height = 200
      Color = clBtnFace
      Options.Fields.HighlightMode = Always
      Options.MailMerge.DataSource = dsEmployees
      Options.MailMerge.ViewMergedData = True
      TabOrder = 0
      Visible = False
    end
    object recTOC: TdxRichEditControl
      Left = 24
      Top = 44
      Width = 403
      Height = 107
      Color = clBtnFace
      Options.Fields.HighlightMode = Always
      TabOrder = 2
    end
    object DBNavigator: TcxDBNavigator
      Left = 10000
      Top = 10000
      Width = 217
      Height = 25
      Buttons.CustomButtons = <>
      Buttons.First.Visible = True
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = True
      Buttons.NextPage.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Visible = False
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dsEmployees
      InfoPanel.DisplayMask = 'Record [RecordIndex] of [RecordCount]'
      InfoPanel.Visible = True
      TabOrder = 1
      Visible = False
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = lcMainGroup_RootTabChanged
      Index = -1
    end
    object liTemplate: TdxLayoutItem
      Parent = lgTemplate
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Template'
      CaptionOptions.Visible = False
      Control = recTemplate
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liTOC: TdxLayoutItem
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Table of Contents'
      CaptionOptions.Visible = False
      Control = recTOC
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgTemplate: TdxLayoutGroup
      Parent = lcMainGroup_Root
      CaptionOptions.Text = 'Template'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgTemplate
      AlignHorz = ahLeft
      Control = DBNavigator
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 217
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsEmployees: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 112
  end
  object dsEmployees: TDataSource
    DataSet = cdsEmployees
    Left = 56
    Top = 112
  end
end
