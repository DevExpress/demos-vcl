inherited frmGridFilterRow: TfrmGridFilterRow
  inherited PanelGrid: TdxPanel
    Width = 728
    inherited Grid: TcxGrid
      Width = 728
      object TableView: TcxGridDBTableView
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
        FindPanel.DisplayMode = fpdmManual
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        FilterRow.OperatorCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object TableViewName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Width = 23
        end
        object TableViewTrademark: TcxGridDBColumn
          DataBinding.FieldName = 'Trademark'
          Width = 20
        end
        object TableViewModification: TcxGridDBColumn
          DataBinding.FieldName = 'Modification'
          Width = 23
        end
        object TableViewDoors: TcxGridDBColumn
          DataBinding.FieldName = 'Doors'
          Width = 20
        end
        object TableViewCylinders: TcxGridDBColumn
          DataBinding.FieldName = 'Cylinders'
          Width = 20
        end
        object TableViewHorsepower: TcxGridDBColumn
          DataBinding.FieldName = 'Horsepower'
          Width = 20
        end
        object TableViewBodyStyle: TcxGridDBColumn
          DataBinding.FieldName = 'BodyStyle'
          Width = 20
        end
        object TableViewPrice: TcxGridDBColumn
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 23
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 728
    Width = 194
    ExplicitLeft = 728
    ExplicitWidth = 194
    inherited gbSetupTools: TcxGroupBox
      Width = 193
      inherited lcFrame: TdxLayoutControl
        Width = 191
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.SizableHorz = False
        end
        object lgSetupThroughCheckBoxes: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object cbAllowOperatorCustomization: TdxLayoutCheckBoxItem
          Parent = lgSetupThroughCheckBoxes
          AlignVert = avTop
          Action = acAllowOperatorCustomization
          CaptionOptions.WordWrap = True
          Index = 1
        end
        object cbShowFilterRow: TdxLayoutCheckBoxItem
          Parent = lgSetupThroughCheckBoxes
          Action = acShowFilterRow
          CaptionOptions.WordWrap = True
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acShowFilterRow: TAction
      AutoCheck = True
      Caption = 'Show Filter Row'
      Checked = True
      OnExecute = acShowFilterRowExecute
    end
    object acAllowOperatorCustomization: TAction
      AutoCheck = True
      Caption = 'Allow Operator Customization'
      Checked = True
      OnExecute = acAllowOperatorCustomizationExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
