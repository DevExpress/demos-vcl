inherited frmGridCellSelection: TfrmGridCellSelection
  inherited PanelGrid: TdxPanel
    Top = 57
    Width = 922
    Height = 613
    ExplicitTop = 57
    ExplicitWidth = 922
    ExplicitHeight = 613
    inherited Grid: TcxGrid
      Width = 922
      Height = 613
      ExplicitWidth = 922
      ExplicitHeight = 613
      object TableView: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnSelectionChanged = TableViewSelectionChanged
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsCustomize.ColumnSorting = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 40
        Styles.OnGetHeaderStyle = TableViewStylesGetHeaderStyle
        OnColumnHeaderClick = TableViewColumnHeaderClick
        OnCustomDrawIndicatorCell = TableViewCustomDrawIndicatorCell
      end
      object Level: TcxGridLevel
        GridView = TableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 0
    Width = 922
    Height = 57
    Align = alTop
    Frame.Borders = [bBottom]
    ExplicitLeft = 0
    ExplicitWidth = 922
    ExplicitHeight = 57
    inherited gbSetupTools: TcxGroupBox
      PanelStyle.Active = True
      ExplicitWidth = 922
      ExplicitHeight = 56
      Height = 56
      Width = 922
      inherited lcFrame: TdxLayoutControl
        Top = 1
        Width = 920
        Height = 54
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 54
        inherited lgSetupTools: TdxLayoutGroup
          Visible = False
          Index = 1
        end
        object lgLabels: TdxLayoutGroup
          Parent = lcFrameGroup_Root
          CaptionOptions.Text = 'New Group'
          ItemIndex = 4
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgLabels
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 0
        end
        object dxLayoutLabeledItem1: TdxLayoutLabeledItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Selected Rows:'
          Index = 0
        end
        object dxLayoutLabeledItem2: TdxLayoutLabeledItem
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Selected Columns:'
          Index = 1
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgLabels
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 1
        end
        object liSelectedRows: TdxLayoutLabeledItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'liSelectedRows'
          Index = 0
        end
        object liSelectedColumns: TdxLayoutLabeledItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'liSelectedColumns'
          Index = 1
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = lgLabels
          AlignHorz = ahLeft
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Height = 10
          SizeOptions.Width = 25
          CaptionOptions.Text = 'Empty Space Item'
          Index = 2
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = lgLabels
          AlignHorz = ahLeft
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 3
        end
        object dxLayoutLabeledItem5: TdxLayoutLabeledItem
          Parent = dxLayoutGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = 'Selected Cells:'
          Index = 0
        end
        object dxLayoutLabeledItem6: TdxLayoutLabeledItem
          Parent = dxLayoutGroup3
          CaptionOptions.Text = 'Selected Summary:'
          Index = 1
        end
        object dxLayoutGroup4: TdxLayoutGroup
          Parent = lgLabels
          AlignHorz = ahLeft
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 4
        end
        object liSelectedCells: TdxLayoutLabeledItem
          Parent = dxLayoutGroup4
          AlignHorz = ahLeft
          CaptionOptions.Text = 'liSelectedCells'
          Index = 1
        end
        object liSelectedSummary: TdxLayoutLabeledItem
          Parent = dxLayoutGroup4
          AlignVert = avBottom
          CaptionOptions.Text = 'liSelectedSummary'
          Index = 0
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 336
    Top = 88
    PixelsPerInch = 96
    object styleSelected: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      TextColor = clRed
    end
    object styleNormal: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
end