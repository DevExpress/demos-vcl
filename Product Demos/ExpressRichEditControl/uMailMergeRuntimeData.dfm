inherited frmRichEditMailMergeRuntimeData: TfrmRichEditMailMergeRuntimeData
  inherited RichEditControl: TdxRichEditControl
    Height = 140
    Options.Fields.HighlightMode = Always
    Options.MailMerge.DataSource = dsEmployees
    OnMailMergeGetTargetDocument = RichEditControlMailMergeGetTargetDocument
    ExplicitHeight = 140
  end
  object NavigatorPanel: TPanel
    Left = 0
    Top = 197
    Width = 451
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clBtnShadow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DDkShadow
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object DBNavigator: TcxDBNavigator
      Left = 4
      Top = 7
      Width = 209
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
      TabOrder = 0
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
