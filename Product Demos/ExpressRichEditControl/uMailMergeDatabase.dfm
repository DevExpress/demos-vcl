inherited frmRichEditMailMergeDataBase: TfrmRichEditMailMergeDataBase
  inherited RichEditControl: TdxRichEditControl
    Left = 225
    Width = 226
    Options.Fields.HighlightMode = Always
    Options.MailMerge.DataSource = dsMails
    Options.MailMerge.ViewMergedData = True
    OnMailMergeGetTargetDocument = RichEditControlMailMergeGetTargetDocument
    ExplicitLeft = 225
    ExplicitWidth = 226
  end
  object Grid: TcxGrid
    Left = 0
    Top = 57
    Width = 225
    Height = 175
    Align = alLeft
    TabOrder = 4
    object tvEmployees: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Visible = True
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Visible = True
      Navigator.Buttons.NextPage.Visible = True
      Navigator.Buttons.Last.Visible = True
      Navigator.Buttons.Insert.Visible = True
      Navigator.Buttons.Append.Visible = False
      Navigator.Buttons.Delete.Visible = True
      Navigator.Buttons.Edit.Visible = True
      Navigator.Buttons.Post.Visible = True
      Navigator.Buttons.Cancel.Visible = True
      Navigator.Buttons.Refresh.Visible = True
      Navigator.Buttons.SaveBookmark.Visible = True
      Navigator.Buttons.GotoBookmark.Visible = True
      Navigator.Buttons.Filter.Visible = True
      DataController.DataSource = dsMails
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowHeight = 24
      OptionsView.Header = False
      OptionsView.Indicator = True
      object tvEmployeesLastName: TcxGridDBColumn
        Caption = 'Employee'
        DataBinding.FieldName = 'LastName'
        Visible = False
        GroupIndex = 0
      end
      object tvEmployeesContactName: TcxGridDBColumn
        DataBinding.FieldName = 'ContactName'
      end
    end
    object GridLevel: TcxGridLevel
      GridView = tvEmployees
    end
  end
  object dsMails: TDataSource
    DataSet = cdsMail
    Left = 56
    Top = 104
  end
  object cdsMail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 99
    Top = 104
  end
  object cdsEmployeesPhotos: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 56
    Top = 64
  end
end
