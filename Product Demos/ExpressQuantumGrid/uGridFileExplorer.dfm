inherited frmGridFileExplorer: TfrmGridFileExplorer
  inherited PanelGrid: TdxPanel
    Top = 43
    Width = 922
    Height = 624
    ExplicitTop = 43
    ExplicitWidth = 922
    ExplicitHeight = 627
    inherited Grid: TcxGrid
      Width = 922
      Height = 627
      ExplicitWidth = 922
      ExplicitHeight = 627
      object TableView: TcxGridTableView
        OnDblClick = TableViewDblClick
        OnKeyDown = TableViewKeyDown
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = clnName
          end>
        DataController.Summary.SummaryGroups = <>
        DataController.OnSortingChanged = TableViewDataControllerSortingChanged
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ImmediateEditor = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        object clnIcon: TcxGridColumn
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Images = ilIcons
          Properties.Items = <>
          Properties.ShowDescriptions = False
          MinWidth = 50
          Options.Filtering = False
          Options.HorzSizing = False
          Width = 50
        end
        object clnName: TcxGridColumn
          Caption = 'Name'
          Width = 250
        end
        object clnExt: TcxGridColumn
          Caption = 'Ext'
        end
        object clnSize: TcxGridColumn
          Caption = 'Size'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Options.Focusing = False
          Options.Grouping = False
          Width = 100
        end
        object clnDate: TcxGridColumn
          Caption = 'Date Modified'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = 'mm/dd/yyyy hh:nn'
          Options.Focusing = False
          Width = 120
        end
        object clnAttrib: TcxGridColumn
          Visible = False
          MinWidth = 50
          Options.Filtering = False
          Options.Focusing = False
          Options.ShowEditButtons = isebAlways
          Options.Grouping = False
          Options.Moving = False
          Width = 50
        end
        object clnFileType: TcxGridColumn
          Visible = False
        end
      end
      object Level: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 0
    Width = 922
    Height = 43
    Align = alTop
    Frame.Borders = [bBottom]
    ExplicitLeft = 0
    ExplicitWidth = 922
    ExplicitHeight = 43
    inherited gbSetupTools: TcxGroupBox
      PanelStyle.Active = True
      ExplicitWidth = 922
      ExplicitHeight = 42
      Height = 42
      Width = 922
      inherited lcFrame: TdxLayoutControl
        Top = 1
        Width = 920
        Height = 40
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 40
        object cbDrives: TcxComboBox [0]
          Left = 75
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          OnClick = cbDrivesClick
          Width = 54
        end
        inherited lgSetupTools: TdxLayoutGroup
          AlignHorz = ahClient
          Visible = False
          Index = 1
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lcFrameGroup_Root
          CaptionOptions.Text = 'New Group'
          ItemIndex = 2
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Select drive:'
          Control = cbDrives
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 54
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liCurrentPath: TdxLayoutLabeledItem
          Parent = dxLayoutGroup1
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'liCurrentPath'
          Index = 2
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avClient
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          CaptionOptions.Text = 'Empty Space Item'
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
  object ilIcons: TImageList
    ShareImages = True
    Left = 136
    Top = 112
  end
end
