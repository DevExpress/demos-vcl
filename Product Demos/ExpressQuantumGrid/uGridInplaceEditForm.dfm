inherited frmGridInplaceEditForm: TfrmGridInplaceEditForm
  inherited PanelDescription: TdxPanel
    Top = 667
    Height = 64
    ExplicitHeight = 64
  end
  inherited PanelGrid: TdxPanel
    Width = 662
    Height = 667
    ExplicitWidth = 662
    ExplicitHeight = 667
    inherited Grid: TcxGrid
      Width = 662
      Height = 667
      Images = dmMain.ilMain
      LevelTabs.Slants.Positions = []
      ExplicitWidth = 662
      ExplicitHeight = 667
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
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        EditForm.CaptionMask = '[Trademark] [Model]'
        EditForm.DefaultStretch = fsHorizontal
        EditForm.ItemHotTrack = True
        EditForm.UseDefaultLayout = False
        Images = dmMain.ilMain
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.EditMode = emInplaceEditForm
        OptionsView.ColumnAutoWidth = True
        OptionsView.Indicator = True
        OnDetachedEditFormInitialize = TableViewDetachedEditFormInitialize
        object TableViewTrademark: TcxGridDBColumn
          Caption = 'Trademark'
          DataBinding.FieldName = 'TrademarkID'
          RepositoryItem = dmMain.EditRepositoryTrademarkLookup
          LayoutItem = TableViewLayoutItem2.Owner
          Options.SortByDisplayText = isbtOn
          VisibleForEditForm = bTrue
          Width = 242
        end
        object TableViewModel: TcxGridDBColumn
          Caption = 'Model'
          DataBinding.FieldName = 'Name'
          LayoutItem = TableViewLayoutItem3.Owner
          VisibleForEditForm = bTrue
          Width = 235
        end
        object TableViewHP: TcxGridDBColumn
          DataBinding.FieldName = 'Horsepower'
          Visible = False
          LayoutItem = TableViewLayoutItem4.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewTorque: TcxGridDBColumn
          DataBinding.FieldName = 'Torque'
          Visible = False
          LayoutItem = TableViewLayoutItem5.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewTransmissSpeedCount: TcxGridDBColumn
          DataBinding.FieldName = 'Transmission Speeds'
          Visible = False
          LayoutItem = TableViewLayoutItem7.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewTransmissAutomatic: TcxGridDBColumn
          Caption = 'Automatic Transmission'
          DataBinding.FieldName = 'Transmission Type'
          RepositoryItem = dmMain.EditRepositoryTransmissionTypeCheckBox
          Visible = False
          LayoutItem = TableViewLayoutItem8.Owner
          MinWidth = 300
          VisibleForEditForm = bTrue
          Width = 300
        end
        object TableViewMPG_City: TcxGridDBColumn
          DataBinding.FieldName = 'MPG City'
          PropertiesClassName = 'TcxSpinEditProperties'
          Visible = False
          LayoutItem = TableViewLayoutItem9.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewMPG_Highway: TcxGridDBColumn
          DataBinding.FieldName = 'MPG Highway'
          PropertiesClassName = 'TcxSpinEditProperties'
          Visible = False
          LayoutItem = TableViewLayoutItem10.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewDescription: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
          Visible = False
          LayoutItem = TableViewLayoutItem12.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewHyperlink: TcxGridDBColumn
          DataBinding.FieldName = 'Hyperlink'
          PropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.ReadOnly = True
          Properties.SingleClick = True
          Visible = False
          LayoutItem = TableViewLayoutItem13.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewPicture: TcxGridDBColumn
          DataBinding.FieldName = 'Image'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
          Visible = False
          LayoutItem = TableViewLayoutItem14.Owner
          VisibleForEditForm = bTrue
        end
        object TableViewCategory: TcxGridDBColumn
          Caption = 'Category'
          DataBinding.FieldName = 'CategoryID'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'SALOON'
            'SPORTS'
            'TRUCK')
          RepositoryItem = dmMain.EditRepositoryCategoryLookup
          LayoutItem = TableViewLayoutItem11.Owner
          VisibleForEditForm = bTrue
          Width = 87
        end
        object TableViewPrice: TcxGridDBColumn
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderImageIndex = 28
          LayoutItem = TableViewLayoutItem15.Owner
          VisibleForEditForm = bTrue
          Width = 157
        end
        object TableViewGroup_Root: TcxGridInplaceEditFormGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Template Layout'
          CaptionOptions.Visible = False
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object TableViewLayoutItem2: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup2.Owner
          AlignHorz = ahClient
          Index = 0
        end
        object TableViewLayoutItem3: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup2.Owner
          AlignHorz = ahClient
          Index = 1
        end
        object TableViewLayoutItem4: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup8.Owner
          SizeOptions.Width = 124
          Index = 0
        end
        object TableViewLayoutItem5: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup9.Owner
          SizeOptions.Width = 153
          Index = 0
        end
        object TableViewLayoutItem7: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup9.Owner
          Index = 2
        end
        object TableViewLayoutItem8: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup8.Owner
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = True
          SizeOptions.Width = 300
          Index = 2
        end
        object TableViewLayoutItem9: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup8.Owner
          SizeOptions.Width = 170
          Index = 1
        end
        object TableViewLayoutItem10: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup9.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 175
          Index = 1
        end
        object TableViewLayoutItem11: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup2.Owner
          AlignHorz = ahClient
          Index = 2
        end
        object TableViewLayoutItem12: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup4.Owner
          AlignVert = avClient
          CaptionOptions.ImageIndex = 35
          CaptionOptions.Visible = False
          Index = 0
        end
        object TableViewLayoutItem13: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup5.Owner
          AlignHorz = ahClient
          AlignVert = avBottom
          SizeOptions.Width = 232
          CaptionOptions.ImageIndex = 36
          CaptionOptions.VisibleElements = [cveImage]
          Index = 1
        end
        object TableViewLayoutItem14: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup_Root
          AlignHorz = ahLeft
          AlignVert = avCenter
          SizeOptions.Height = 168
          SizeOptions.Width = 171
          CaptionOptions.Visible = False
          Index = 0
        end
        object TableViewLayoutItem15: TcxGridInplaceEditFormLayoutItem
          Parent = TableViewGroup5.Owner
          AlignHorz = ahClient
          AlignVert = avBottom
          SizeOptions.Width = 269
          CaptionOptions.ImageIndex = 28
          Index = 0
        end
        object TableViewSeparatorItem1: TdxLayoutSeparatorItem
          Parent = TableViewGroup2.Owner
          AlignHorz = ahClient
          AlignVert = avBottom
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
          CaptionOptions.Text = 'Separator'
          Index = 3
        end
        object TableViewGroup1: TdxLayoutGroup
          Parent = TableViewGroup_Root
          AlignHorz = ahClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = 1
        end
        object TableViewGroup2: TdxLayoutGroup
          Parent = TableViewGroup1.Owner
          CaptionOptions.Text = ' Main '
          Index = 0
        end
        object TableViewGroup3: TdxLayoutGroup
          Parent = TableViewGroup1.Owner
          AlignHorz = ahClient
          CaptionOptions.Text = 'Performance'
          Index = 1
        end
        object TableViewGroup4: TdxLayoutGroup
          Parent = TableViewGroup1.Owner
          CaptionOptions.Text = 'Description'
          Index = 2
        end
        object TableViewGroup5: TdxLayoutAutoCreatedGroup
          Parent = TableViewGroup2.Owner
          AlignVert = avBottom
          LayoutDirection = ldHorizontal
          Index = 4
        end
        object TableViewGroup7: TdxLayoutAutoCreatedGroup
          Parent = TableViewGroup3.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object TableViewGroup8: TdxLayoutAutoCreatedGroup
          Parent = TableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 0
        end
        object TableViewGroup9: TdxLayoutAutoCreatedGroup
          Parent = TableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avClient
          Index = 1
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 662
    Width = 260
    Height = 667
    ExplicitLeft = 662
    ExplicitWidth = 260
    ExplicitHeight = 667
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 259
      ExplicitHeight = 667
      Height = 667
      Width = 259
      inherited lcFrame: TdxLayoutControl
        Width = 257
        Height = 647
        ExplicitWidth = 257
        ExplicitHeight = 647
        object btnCustomizeEditForm: TcxButton [0]
          Left = 10
          Top = 114
          Width = 237
          Height = 25
          Action = actCustomizeEditForm
          TabOrder = 0
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = ' Edit Mode '
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Width = 358
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          CaptionOptions.Visible = False
          Control = btnCustomizeEditForm
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 162
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup6: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup7: TdxLayoutGroup
          Parent = dxLayoutGroup1
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 1
        end
        object rbInplace: TdxLayoutRadioButtonItem
          Parent = dxLayoutGroup6
          AlignVert = avClient
          SizeOptions.Height = 20
          SizeOptions.Width = 180
          Action = actInplace
          Index = 0
        end
        object rbInplaceEditForm: TdxLayoutRadioButtonItem
          Parent = dxLayoutGroup7
          AlignVert = avClient
          SizeOptions.Height = 20
          SizeOptions.Width = 180
          Action = actInplaceEditForm
          TabStop = True
          Index = 0
        end
        object rbInplaceEditFormHideCurrentRow: TdxLayoutRadioButtonItem
          Parent = dxLayoutGroup7
          AlignVert = avClient
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = False
          SizeOptions.Height = 20
          SizeOptions.Width = 180
          Action = actInplaceEditFormHCR
          Index = 1
        end
        object rbDetachedEditForm: TdxLayoutRadioButtonItem
          Parent = dxLayoutGroup6
          AlignVert = avClient
          SizeOptions.Height = 20
          SizeOptions.Width = 180
          Action = actDetachedEditForm
          Index = 1
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object alAction: TActionList
    Left = 64
    Top = 160
    object actCustomizeEditForm: TAction
      Caption = 'Customize Edit Form...'
      Hint = 'Customize Edit Form...'
      OnExecute = actCustomizeEditFormExecute
    end
    object actInplace: TAction
      AutoCheck = True
      Caption = 'In-place'
      GroupIndex = 1
      Hint = 'In-place'
      OnExecute = actEditModeChange
    end
    object actInplaceEditForm: TAction
      AutoCheck = True
      Caption = 'In-place Edit Form'
      Checked = True
      GroupIndex = 1
      Hint = 'In-place Edit Form'
      OnExecute = actEditModeChange
    end
    object actInplaceEditFormHCR: TAction
      AutoCheck = True
      Caption = 'In-place Edit Form (Hide Current Row)'
      GroupIndex = 1
      Hint = 'In-place Edit Form (Hide Current Row)'
      OnExecute = actEditModeChange
    end
    object actDetachedEditForm: TAction
      AutoCheck = True
      Caption = 'Modal Edit Form'
      GroupIndex = 1
      Hint = 'Modal Edit Form'
      OnExecute = actEditModeChange
    end
  end
end
