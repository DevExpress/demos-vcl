inherited frmMultiEditorsGrid: TfrmMultiEditorsGrid
  inherited PanelDescription: TdxPanel
    ExplicitTop = 667
  end
  inherited PanelGrid: TdxPanel
    Width = 728
    ExplicitWidth = 728
    ExplicitHeight = 667
    inherited Grid: TcxGrid
      Width = 728
      Height = 667
      ExplicitWidth = 728
      ExplicitHeight = 667
      object TableView: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.ColumnAutoWidth = True
        object clnName: TcxGridColumn
          Caption = 'Name'
          GroupIndex = 0
          Options.Editing = False
          Options.Focusing = False
          SortIndex = 0
          SortOrder = soAscending
        end
        object clnSkill: TcxGridColumn
          Caption = 'Skill'
          Options.Editing = False
          Options.Focusing = False
        end
        object clnGrade: TcxGridColumn
          Caption = 'Grade'
          OnGetProperties = clnGradeGetProperties
          Options.Filtering = False
          Options.Sorting = False
        end
      end
      object Level: TcxGridLevel
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
      ExplicitWidth = 193
      Width = 193
      inherited lcFrame: TdxLayoutControl
        Width = 191
        ExplicitWidth = 191
        ExplicitHeight = 647
        inherited lgSetupTools: TdxLayoutGroup
          AlignHorz = ahClient
        end
        object cbGroupsExpanded: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignVert = avTop
          Action = acGroupsExpanded
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acGroupsExpanded: TAction
      AutoCheck = True
      Caption = 'Groups Always Expand'
      Checked = True
      OnExecute = acGroupsExpandedExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object EditRepository: TcxEditRepository
    Left = 232
    Top = 96
    PixelsPerInch = 96
    object ImageComboLanguages: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Assembler'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Delphi'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'Visual Basic'
          ImageIndex = 2
          Value = 2
        end
        item
          Description = 'C++'
          ImageIndex = 3
          Value = 3
        end
        item
          Description = 'Java'
          ImageIndex = 4
          Value = 4
        end>
    end
    object ImageComboCommunication: TcxEditRepositoryImageComboBoxItem
      Properties.Items = <
        item
          Description = 'Bad'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Average'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'Good'
          ImageIndex = 2
          Value = 2
        end
        item
          Description = 'Excellent'
          ImageIndex = 3
          Value = 3
        end>
    end
    object SpinItemYears: TcxEditRepositorySpinItem
      Properties.MaxValue = 30.000000000000000000
      Properties.MinValue = 1.000000000000000000
    end
    object DateItemStartWorkFrom: TcxEditRepositoryDateItem
    end
  end
end
