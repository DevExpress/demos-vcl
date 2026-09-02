inherited frmTasks: TfrmTasks
  inherited dxLayoutControl1: TdxLayoutControl
    object tcTasksState: TdxTileControl [0]
      Left = 59
      Top = 17
      Width = 309
      Height = 413
      Align = alNone
      Images = ilTasks
      OptionsBehavior.ItemCheckMode = tcicmNone
      OptionsBehavior.ItemHotTrackHighlightColor = 1069596864
      OptionsBehavior.ItemHotTrackMode = tcihtmHighlight
      OptionsBehavior.ItemMoving = False
      OptionsBehavior.ItemOuterFrameColor = clSilver
      OptionsBehavior.ItemPressAnimation = False
      OptionsBehavior.ScrollMode = smScrollButtons
      OptionsView.CenterContentHorz = True
      OptionsView.FixedIndentHorz = True
      OptionsView.FixedIndentVert = True
      OptionsView.GroupBlockMaxColumnCount = 1
      OptionsView.GroupLayout = glVertical
      OptionsView.GroupMaxRowCount = 1000
      OptionsView.IndentHorz = 50
      OptionsView.IndentVert = 5
      OptionsView.ItemHeight = 85
      OptionsView.ItemWidth = 200
      TabOrder = 0
      Title.Font.Charset = DEFAULT_CHARSET
      Title.Font.Color = clGray
      Title.Font.Height = -16
      Title.Font.Name = 'Segoe UI'
      Title.Font.Style = []
      Title.Text = ' TASKS'
      OnItemFocusChange = tcTasksStateItemFocusChange
      object tcTasksStateGroup: TdxTileControlGroup
        Index = 0
      end
      object tiAllTasks: TdxTileControlItem
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 0
        GroupIndex = 0
        IndexInGroup = 0
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'All Tasks'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiInProgress: TdxTileControlItem
        Tag = 2
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 1
        GroupIndex = 0
        IndexInGroup = 3
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'In Progress'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiNotStarted: TdxTileControlItem
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 2
        GroupIndex = 0
        IndexInGroup = 1
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Not Started'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiNeedAssist: TdxTileControlItem
        Tag = 3
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 7
        GroupIndex = 0
        IndexInGroup = 4
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Need Assistance'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiDeferred: TdxTileControlItem
        Tag = 4
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 3
        GroupIndex = 0
        IndexInGroup = 5
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Deferred'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiCompleted: TdxTileControlItem
        Tag = 1
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 4
        GroupIndex = 0
        IndexInGroup = 2
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Completed'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiHighPriority: TdxTileControlItem
        Tag = 6
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 5
        GroupIndex = 0
        IndexInGroup = 6
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'High Priority'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
      object tiUrgent: TdxTileControlItem
        Tag = 7
        Glyph.Align = oaTopLeft
        Glyph.ImageIndex = 6
        GroupIndex = 0
        IndexInGroup = 7
        Style.GradientBeginColor = clWhite
        Text1.AssignedValues = []
        Text2.Align = oaTopRight
        Text2.AssignedValues = [avFont]
        Text2.Font.Charset = DEFAULT_CHARSET
        Text2.Font.Color = clSilver
        Text2.Font.Height = -40
        Text2.Font.Name = 'Segoe UI'
        Text2.Font.Style = []
        Text2.IndentVert = 0
        Text2.Value = '0'
        Text3.AssignedValues = [avTextColor, avFont]
        Text3.Font.Charset = DEFAULT_CHARSET
        Text3.Font.Color = clDefault
        Text3.Font.Height = -16
        Text3.Font.Name = 'Segoe UI'
        Text3.Font.Style = []
        Text3.Value = 'Urgent'
        Text3.TextColor = clGray
        Text4.AssignedValues = []
      end
    end
    object cxGridTasks: TcxGrid [1]
      Left = 378
      Top = 17
      Width = 490
      Height = 413
      TabOrder = 1
      LookAndFeel.NativeStyle = False
      object gvTasks: TcxGridDBTableView
        OnKeyDown = gvTasksKeyDown
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmAlways
        FindPanel.Position = fppBottom
        DataController.DataSource = DM.dsTasks
        DataController.KeyFieldNames = 'Id'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            OnGetText = gvTasksTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            FieldName = 'Id'
            Column = colTasks_Complete
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 40
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        Styles.Content = DM.cxStyle1
        Styles.Footer = DM.cxStyle1
        Styles.Header = DM.cxStyle2
        Styles.Selection = DM.cxStyle3
        object colTask_AssignedTo: TcxGridDBColumn
          Caption = 'Assigned To'
          DataBinding.FieldName = 'AssignedEmployeeId'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Id'
          Properties.ListColumns = <
            item
              FieldName = 'FullName'
            end>
          Properties.ListSource = DM.dsEmployeesHelper
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 47
        end
        object colTask_OwnedBy: TcxGridDBColumn
          Caption = 'Owned By'
          DataBinding.FieldName = 'OwnerId'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Id'
          Properties.ListColumns = <
            item
              FieldName = 'FullName'
            end>
          Properties.ListSource = DM.dsEmployeesHelper
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 123
        end
        object colTasks_Subject: TcxGridDBColumn
          DataBinding.FieldName = 'Subject'
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Width = 145
        end
        object colTasks_Priority: TcxGridDBColumn
          DataBinding.FieldName = 'Priority'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.DropDownRows = 4
          Properties.Images = DM.ilPriority
          Properties.Items = <
            item
              Description = 'Low'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Normal'
              ImageIndex = 1
              Value = 1
            end
            item
              Description = 'High'
              ImageIndex = 2
              Value = 2
            end
            item
              Description = 'Urgent'
              ImageIndex = 3
              Value = 3
            end>
          Properties.ShowDescriptions = False
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 37
        end
        object colTasks_Due_Date: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'DueDate'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          SortIndex = 0
          SortOrder = soDescending
          Width = 41
        end
        object colTasks_Complete: TcxGridDBColumn
          Caption = '% Complete'
          DataBinding.FieldName = 'Completion'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.BeginColor = 10258176
          Properties.EndColor = clNavy
          Properties.OverloadBeginColor = clWhite
          Properties.OverloadEndColor = clWhite
          Properties.PeakValue = 100.000000000000000000
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
      end
      object gvEmployees: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DM.dsTaskEmployees
        DataController.DetailKeyFieldNames = 'EmployeeTask_Id'
        DataController.KeyFieldNames = 'EmployeeTask_Id;Employee_Id'
        DataController.MasterKeyFieldNames = 'Id'
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoSortByDisplayText]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnGrouping = False
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 40
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        Styles.Content = DM.cxStyle1
        Styles.Header = DM.cxStyle2
        Styles.Selection = DM.cxStyle3
        object gvEmployeesFullName: TcxGridDBColumn
          Caption = 'Full Name'
          DataBinding.FieldName = 'FullName'
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 150
        end
        object gvEmployeesDepartment: TcxGridDBColumn
          DataBinding.FieldName = 'Department'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'Department_ID'
          Properties.ListColumns = <
            item
              FieldName = 'Department_Name'
            end>
          Properties.ListSource = DM.dtsDepartmentCatalog
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 150
        end
        object gvEmployeesTitle: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 150
        end
        object gvEmployeesStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taCenter
          Properties.KeyFieldNames = 'Status_ID'
          Properties.ListColumns = <
            item
              FieldName = 'Status_Name'
            end>
          Properties.ListSource = DM.dsStatusCatalog
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 100
        end
        object gvEmployeesPersonalProfile: TcxGridDBColumn
          Caption = 'Personal Profile'
          DataBinding.FieldName = 'PersonalProfile'
          OnGetFilterValues = colTasks_SubjectGetFilterValues
          HeaderAlignmentHorz = taCenter
          Options.ShowEditButtons = isebNever
          Width = 500
        end
      end
      object lvTasks: TcxGridLevel
        GridView = gvTasks
        Options.DetailTabsPosition = dtpTop
        Styles.Tab = DM.cxStyle1
        Styles.TabsBackground = DM.cxStyle5
        object lvEmployees: TcxGridLevel
          Caption = 'Assigned Employees'
          GridView = gvEmployees
        end
      end
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      LayoutDirection = ldHorizontal
      Index = 0
    end
    inherited lgBackButton: TdxLayoutGroup
      Parent = dxLayoutGroup2
      Visible = False
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'dxTileControl1'
      CaptionOptions.Visible = False
      Control = tcTasksState
      ControlOptions.OriginalHeight = 488
      ControlOptions.OriginalWidth = 309
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxGridTasks
      ControlOptions.OriginalHeight = 470
      ControlOptions.OriginalWidth = 594
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    inherited dxLayoutControl2: TdxLayoutControl
      object btnEdit: TcxButton [0]
        Left = 295
        Top = 17
        Width = 85
        Height = 82
        Caption = 'Edit'
        OptionsImage.Glyph.SourceHeight = 32
        OptionsImage.Glyph.SourceWidth = 32
        OptionsImage.ImageIndex = 22
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.Flat = True
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnEditClick
      end
      object btnDelete: TcxButton [1]
        Left = 390
        Top = 17
        Width = 85
        Height = 82
        Caption = 'Delete'
        OptionsImage.ImageIndex = 20
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.Flat = True
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnDeleteClick
      end
      object btnPrint: TcxButton [2]
        Left = 501
        Top = 17
        Width = 85
        Height = 80
        Caption = 'Print'
        OptionsImage.ImageIndex = 18
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        SpeedButtonOptions.Flat = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnPrintClick
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnEdit
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem7: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnDelete
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
        Parent = dxLayoutGroup4
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
      object dxLayoutItem8: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnPrint
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 3
      end
    end
  end
  object ilTasks: TcxImageList
    SourceDPI = 96
    Height = 48
    Width = 48
    FormatVersion = 1
    Left = 264
    Top = 64
    Bitmap = {
      494C010108001800040030003000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C000000090000000010020000000000000B0
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000110606
      0652111111871D1D1DAF272727C92A2A2AD32A2A2AD3272727CB1E1E1EB21212
      128A070707560000001500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002E2E2EDC3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF363636EE000000100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202023311111185242424C2353535EC3E3E3EFF3E3E3EFF3A3A
      3AF52A2A2AD31717179D06060653000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F7F333333E6333333E7333333E7333333E7333333E7333333E7333333E73333
      33E7333333E7333333E7333333E7333333E7333333E7333333E7333333E73333
      33E7333333E7333333E7333333E7333333E7333333E7333333E7333333E73333
      33E7333333E7333333E7333333E7151515950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000406060655212121BA3C3C3CFB3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3D3D3DFC232323C00808085D0000000700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      0549272727CA3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF353535EB0E0E0E7B0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003B3B
      3BF83E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFE0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000020808085E2F2F2FDE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E40A0A0A68000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000141D1D1DAE3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2F2F2FDF0303033F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      25C53E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF1F1F1FB60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010125242424C33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF282828CD0101
      012D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010129303030E03E3E3EFF3E3E
      3EFF3E3E3EFF353535EA1313138F040404460000001700000002000000020000
      0016040404451313138C333333E73E3E3EFF3E3E3EFF3E3E3EFF3C3C3CFB0A0A
      0A67000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      054A3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0303033B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0655383838F33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A
      3AF7090909620000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010128333333E83E3E3EFF3E3E3EFF3939
      39F40D0D0D760000000900000000000000000000000000000000000000000000
      00000000000000000000000000080C0C0C71383838F23E3E3EFF3E3E3EFF3E3E
      3EFE0A0A0A680000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001272727CB3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF222222BD000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C703E3E
      3EFD3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0F0F0F7F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000102E2E2EDB3E3E3EFF3E3E3EFF2D2D2DDA0101
      0128000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101242C2C2CD53E3E3EFF3E3E
      3EFF3D3D3DFC0404044300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606503E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF04040442000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C6F3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0F0F0F7F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000191919A13E3E3EFF3E3E3EFF2E2E2EDB000000170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000142C2C2CD53E3E
      3EFF3E3E3EFF313131E30000000E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001292929D13E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0E0E0E79000000050C0C0C723E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF242424C500000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606513E3E3EFD3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF090909620000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030303393E3E3EFE3E3E3EFF3A3A3AF50101012A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101243838
      38F23E3E3EFF3E3E3EFF11111185000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606553E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000D00000000000000053E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0505054A00000000000000000000000000000000000000000000
      000000000000000000000000000001010122383838F13E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF373737EF111111851111118511111185111111853C3C3CFA3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A3AF70101012D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E1E1EB33E3E3EFF3E3E3EFF0E0E0E7900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000C0C
      0C713E3E3EFF3E3E3EFF373737F10000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000022B2B2BD53E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF101010800000000D0E0E0E793E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF272727CC0000000100000000000000000000000000000000000000000000
      0000000000000000000000000001222222BE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF2F2F2FDE00000000000000000000000000000000393939F43E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF282828CD00000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B3D3D3DFD3E3E3EFF353535EC0000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0008333333E73E3E3EFF3E3E3EFF090909600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808085B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF060606510000000000000000000000000000000000000000000000000000
      00000000000000000000070707573E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF2F2F2FDE00000000000000000000000000000000393939F43E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A68000000000000
      00000000000000000000000000000000000006060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF11111184000000000000
      00000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7C06060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A680000
      0000090909663E3E3EFF3E3E3EFF151515940000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001313138C3E3E3EFF3E3E3EFF1C1C1CAC06060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0505054C00000000000000032D2D2DDA3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2A2A
      2AD2000000020000000000000000000000000000000000000000000000000000
      000000000000000000032C2C2CD83E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF2F2F2FDE00000000000000000000000000000000393939F43E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E4000000060000
      000000000000000000000000000000000000323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF111111840000
      0000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0F0F0F7C00000000323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF030303390000
      00001818189E3E3E3EFF3E3E3EFF0505054D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404453E3E3EFF3E3E3EFF313131E4323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF2A2A2AD30000000300000000090909603E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323BF000000001717179D3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0707
      0759000000000000000000000000000000000000000000000000000000000000
      0000000000000505054C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF333333E80505054E0505054E0505054E0505054E3A3A3AF73E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0808085D0000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1111
      118400000000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0F0F0F7C00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000190000
      0000242424C43E3E3EFF3E3E3EFF0000001F0000000000000000000000000000
      00000000000000000000000000000000000006060650353535EB353535ED0707
      0756000000000000000000000000000000000000000000000000000000000000
      0000000000173E3E3EFF3E3E3EFF3E3E3EFE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0909096300000000000000052F2F2FDE3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1818189E000000000F0F0F7D3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2C2C2CD80000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000001D1D1DAF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323C00000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF1111118400000000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0F0F0F7C0000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000080000
      00002C2C2CD93E3E3EFF3E3E3EFF000000090000000000000000000000000000
      000000000000000000000000000000000000323232E53E3E3EFF3E3E3EFF3535
      35ED000000000000000000000000000000000000000000000000000000000000
      0000000000023E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF313131E40000000A00000000090909663E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7D000000000808085C3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF090909600000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000A3A3A3AF73E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3C3C3CFB262626C8262626C8262626C8262626C83B3B3BF93E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3D3D3DFC0000
      0015000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF1111118400000000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F
      0F7C000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000080000
      00002E2E2EDC3E3E3EFF3E3E3EFF0000000A0000000000000000000000000000
      000000000000000000000000000000000000313131E23E3E3EFF3E3E3EFF3535
      35EA000000000000000000000000000000000000000000000000000000000000
      0000000000023E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0E0E0E7A0000000000000006313131E23E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0808085D000000000303033B3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2F2F2FDE000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404453E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3A3A3AF600000003000000000000000000000000252525C43E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0707
      0756000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF1111118400000000000000000F0F0F7C3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7C0000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000180000
      0000272727CA3E3E3EFF3E3E3EFF010101200000000000000000000000000000
      000000000000000000000000000000000000040404473E3E3EFF3E3E3EFF0505
      054C000000000000000000000000000000000000000000000000000000000000
      0000000000183E3E3EFF3E3E3EFF3C3C3CFB3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF373737F000000015000000000B0B0B6C3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0303033C000000000000001A3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A67000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E793E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF04040445000000000000000000000000090909623E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1212
      128A000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF1111118400000000000000000F0F0F7C3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7C000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF030303380000
      00001A1A1AA63E3E3EFF3E3E3EFF0606064F0000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404473E3E3EFF3E3E3EFF2C2C2CD63E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF141414910000000000000008333333E63E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000001B00000000000000013A3A
      3AF63E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E400000007000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000191919A13E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF252525C5000000030000000000000000000000011C1C1CAB3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1E1E
      1EB1000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1111118400000000000000000F0F
      0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7C00000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A680000
      00000C0C0C703E3E3EFF3E3E3EFF151515970000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00001313138F3E3E3EFF3E3E3EFF1616169A3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3C3C3CF901010123000000000C0C0C713E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0101012B000000000000001A3838
      38F33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0B0B0B6F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121BB3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF11111187000000000000000000000000000000051515
      15973E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2727
      27CA000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF11111184000000000000
      00000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F0F7C0000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1B1B1BA90000
      0000010101253E3E3EFF3E3E3EFF363636EE0000000C00000000000000000000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0009353535EA3E3E3EFF3E3E3EFF0505054C3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1A1A1AA8000000000000000B3333
      33E93E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF333333E90000000A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424C33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0D0D0D770000000000000000000000000000
      0000090909623A3A3AF73E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2A2A
      2AD3000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0F0F0F7C000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF383838F30000
      000C00000000232323C13E3E3EFF3E3E3EFF0F0F0F7E00000000000000000000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D763E3E3EFF3E3E3EFF313131E3000000043E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFE02020235000000000D0D
      0D773E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0D0D0D760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000242424C23E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1212128B00000001000000000000
      000000000000050505493D3D3DFC3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2A2A
      2AD3000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0F0F0F7C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A
      0A6700000000040404473E3E3EFF3E3E3EFF3A3A3AF70202022E000000000000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      0000000000000000000000000000000000000000000000000000010101293939
      39F43E3E3EFF3E3E3EFF0B0B0B6C000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323BF000000000000
      000C363636ED3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF363636ED0000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000212121B93E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF15151597000000010000
      00000000000000000000141414913E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2727
      27CA000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      00000000000000000000000000000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0F0F0F7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2F2F
      2FDE00000007000000001E1E1EB23E3E3EFF3E3E3EFF2F2F2FDF0000001A0000
      000000000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      00000000000000000000000000000000000000000000000000172D2D2DDA3E3E
      3EFF3E3E3EFF292929D000000005000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      00000F0F0F7C3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0F0F0F7E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001818189F3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF151515960000
      00000000000000000000000000173B3B3BF83E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1E1E
      1EAF000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000F0F0F7C3E3E3EFF3E3E3EFF0F0F
      0F7C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0E0E0E7A0000000000000018333333E63E3E3EFF3E3E3EFF2F2F2FDF0101
      012E00000000000000000000000000000000000000003E3E3EFF3E3E3EFF0000
      000000000000000000000000000000000000010101292D2D2DDA3E3E3EFF3E3E
      3EFF383838F30101012C00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000010373737EF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF383838F100000010000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D0D0D763E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0303
      033B000000000000000000000000202020B73E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1111
      1187000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000000000000000000000000000000000000F0F0F7C0F0F0F7C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3B3B3BF8020202300000000002020233383838F13E3E3EFF3E3E3EFF3A3A
      3AF70F0F0F7E0000000C00000000000000000000000000000000000000000000
      000000000000000000000000000B0E0E0E793A3A3AF53E3E3EFF3E3E3EFF3B3B
      3BF8050505490000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000101010833E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF1111118500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404413E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0909
      09630000000000000000000000000F0F0F7F3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0606
      0652000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF303030E0000000190000000002020235333333E73E3E3EFF3E3E
      3EFF3E3E3EFF363636EE151515970505054E0000001F0000000A000000090000
      001E0505054D15151594353535EC3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0909
      0960000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      00000000000000000012383838F33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF393939F50000001400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000008383838F33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2E2E2EDC0A0A0A690A0A0A690A0A
      0A69101010823E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0505
      054C000000000000000000000000101010833E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3C3C3CFB0000
      0011000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF2B2B2BD40000001B000000000000001B212121B93E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3939
      39F50A0A0A670000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      00000000000000000000111111873E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF1313138D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1BAA3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF333333E600000001000000000000
      0000000000012A2A2AD13E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E40000
      000C000000000000000000000000212121B83E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF212121BA0000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E20303033700000000000000010606
      0652292929CF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3C3C3CFB1E1E1EB004040445373737EF3E3E3EFF3E3E
      3EFF3B3B3BF80000000800000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000017393939F53E3E3EFF3E3E3EFF3E3E3EFF3A3A
      3AF7000000190000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000040404453E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF04040440000000000000
      00000000000001010128282828CD3E3E3EFF3E3E3EFE252525C50101012A0000
      00000000000000000000010101243D3D3DFC3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF060606550000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3C3C3CFA11111187000000000000
      0000000000000202023611111186393939F53E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0C0C0C72000000170000000000000000242424C53E3E3EFF3E3E
      3EFF353535ED0000000500000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      00000000000000000000000000001313138E3E3E3EFF3E3E3EFF3E3E3EFF1515
      1594000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002A2A2AD13E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF292929CF0000000B0000
      0000000000000000000000000000000000100000000F00000000000000000000
      000000000000000000011F1F1FB63E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2F2F2FDE000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2FDF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF01010120000000000000000000000000020202332A2A2AD32D2D
      2DDA040404470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000193A3A3AF73E3E3EFF3C3C3CFA0000
      001E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000505054D3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1F1F1FB60000
      000B000000000000000000000000000000000000000000000000000000000000
      000000000000101010813E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0808085E000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000303033E313131E33E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF383838F30A0A0A6A000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000F0F0F7C3D3D3DFC111111850000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001E1E1EB43E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2929
      29D0030303380000000000000000000000000000000000000000000000000000
      0016191919A23E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF242424C400000002000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000272727CC3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3C3C3CFA0000000E0000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000001B353535EC3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF262626C811111184090909610808085D0C0C0C731C1C1CAC3A3A
      3AF63E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF383838F30101012500000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000272727CA3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3B3B3BF90000000D0000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404453C3C3CFB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFD060606550000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      000000000000030303382E2E2EDB3E3E3EFE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF353535EC09090963000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000090909613D3D3DFD3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF0C0C0C70000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000090909613C3C
      3CFB3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFD0C0C0C6F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      0445353535EC3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3838
      38F1060606510000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000001B1F1F1FB43E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323BF0101
      0122000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000505054D2A2A2AD13E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2C2C2CD807070757000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040404451B1B1BAA383838F33E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3A3A3AF71D1D1DAF0505054C0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080404
      04410D0D0D761818189F212121BA242424C2242424C2212121BB191919A10E0E
      0E79040404450000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000242424C13E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF262626C80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000030404044514141493282828CD393939F400000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0F0F0F7C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000242424C13E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF262626C80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040909
      09662F2F2FDE3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0F0F0F7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101012A292929CE3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0F0F
      0F7C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054B383838F33E3E3EFF3E3E
      3EFF3E3E3EFF313131E3111111840303033B0000000D00000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A3AF70404
      0442000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000505054B3C3C3CFA3E3E3EFF3E3E3EFF3838
      38F10B0B0B6D0000000500000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3B3B
      3BF8050505490000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF06060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000606
      0650353535EB3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3535
      35ED07070756000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF353535ED070707560000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000101012A383838F33E3E3EFF3E3E3EFF2C2C2CD60101
      0123000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF3E3E3EFF1313138F2E2E2EDC3E3E3EFF3E3E
      3EFF383838F30101012B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003232
      32E53E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF353535ED000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF353535ED0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003272727CC3E3E3EFF3E3E3EFF2C2C2CD7000000140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF0F0F0F7C000000000000001A2E2E2EDC3E3E
      3EFF3E3E3EFF292929CF00000004000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000090909643E3E3EFF3E3E3EFF393939F401010127000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF0F0F0F7C0000000000000000000000000101012B3A3A
      3AF63E3E3EFF3E3E3EFF0A0A0A6A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000022E2E2EDB3E3E3EFF3E3E3EFF0D0D0D7600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F7C00000000000000000000000000000000000000000E0E
      0E7A3E3E3EFF3E3E3EFF313131E1000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303033F3E3E3EFF3E3E3EFF353535EB0000000A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B353535EB3E3E3EFF3E3E3EFF050505480000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF232323C001010124151515953E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF06060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF06060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A680000
      00001212128A3E3E3EFF3E3E3EFF141414930000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000141414913E3E3EFF3E3E3EFF1414149306060650353535EB3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF232323C00000000B0000000000000001141414933E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF030303390000
      0000242424C23E3E3EFF3E3E3EFF0505054C0000000000000000000000000000
      00000000000000000000000000000000000006060650353535EB353535ED0707
      0756000000000000000000000000000000000000000000000000000000000000
      0000050505483E3E3EFF3E3E3EFF272727CA323232E53E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2323
      23C00000000B00000000000000000000000000000001141414933E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000190000
      0000333333E63E3E3EFF3E3E3EFF0000001F0000000000000000000000000000
      000000000000000000000000000000000000323232E53E3E3EFF3E3E3EFF3535
      35ED000000000000000000000000000000000000000000000000000000000000
      0000000000183E3E3EFF3E3E3EFF363636EE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323C00000
      000B000000000000000000000004000000000000000000000001141414933E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000080000
      00003A3A3AF73E3E3EFF3E3E3EFF000000090000000000000000000000000000
      00000000000000000000000000050E0E0E7A3E3E3EFE3E3E3EFF3E3E3EFF3E3E
      3EFF161616990000000F00000000000000000000000000000000000000000000
      0000000000023E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF00000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000150000
      000000000000010101222C2C2CD8040404450000000000000000000000011414
      14933E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000080000
      00003A3A3AF63E3E3EFF3E3E3EFF0000000A0000000000000000000000000000
      00000000000002020234292929D03E3E3EFF3E3E3EFF353535EA333333E63C3C
      3CFA3E3E3EFF313131E40505054E000000000000000000000000000000000000
      0000000000023E3E3EFF3E3E3EFF3E3E3EFE3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0C0C0C730000
      000001010122313131E13E3E3EFF3A3A3AF60404044500000000000000000000
      0001141414933E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000180000
      0000313131E43E3E3EFF3E3E3EFF010101200000000000000000000000000000
      0000070707563D3D3DFC3E3E3EFF303030E00505054900000000000000000202
      022F272727CB3E3E3EFF3E3E3EFF1A1A1AA70000001600000000000000000000
      0000000000183E3E3EFF3E3E3EFF353535EC3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFE1E1E
      1EB1333333E63E3E3EFF3E3E3EFF3E3E3EFF3A3A3AF604040445000000000000
      000000000001141414933E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF030303380000
      0000232323BF3E3E3EFF3E3E3EFF0606064F0000000000000000000000000000
      00000808085E3D3D3DFC141414920000000D0000000000000000000000000000
      0000000000040D0D0D763A3A3AF63E3E3EFF353535EB0707075A000000000000
      0000040404473E3E3EFF3E3E3EFF262626C73E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF00000000000000003E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A3AF6040404450000
      00000000000000000001151515953E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000212121B93E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323C03E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A0A680000
      0000111111863E3E3EFF3E3E3EFF151515970000000000000000000000000000
      0000000000000000000500000000000000000000000000000000000000000000
      0000000000000000000001010125242424C03E3E3EFF3E3E3EFF010101220000
      00001313138F3E3E3EFF3E3E3EFF1313138E3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000000000000000212121B93E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF232323C03E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A3AF60404
      04450000000000000000010101243E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000001D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1B1B1BA90000
      0000030303393E3E3EFF3E3E3EFF363636EE0000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001090909641212128B000000030000
      0009353535EA3E3E3EFF3E3E3EFF040404413E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0000001D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3A3A
      3AF6040404470000000D232323C03E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1F1F1FB50000001C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF383838F30000
      000C000000012B2B2BD53E3E3EFF3E3E3EFF0F0F0F7E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D763E3E3EFF3E3E3EFF2E2E2EDB000000023E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF1F1F1FB50000001C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFE3A3A3AF63E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF0A0A
      0A67000000000707075A3E3E3EFF3E3E3EFF3A3A3AF70202022E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101293939
      39F43E3E3EFF3E3E3EFF09090963000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF2F2F
      2FDE0000000700000002242424C33E3E3EFF3E3E3EFF2F2F2FDF0000001A0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000172D2D2DDA3E3E
      3EFF3E3E3EFF272727CA00000003000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0E0E0E7A0000000001010122363636EE3E3E3EFF3E3E3EFF2F2F2FDF0101
      012E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101292D2D2DDA3E3E3EFF3E3E
      3EFF383838F10101012700000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF0202
      023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF02020233000000000000
      00000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3B3B3BF80202023000000000040404413A3A3AF63E3E3EFF3E3E3EFF3A3A
      3AF70F0F0F7E0000000C00000000000000000000000000000000000000000000
      000000000000000000000000000B0E0E0E793A3A3AF53E3E3EFF3E3E3EFF3B3B
      3BF8040404470000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF0000
      0000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF00000000383838F23A3A
      3AF6000000003E3E3EFF3E3E3EFF353535EB3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF303030E0000000190000000004040441363636EE3E3E3EFF3E3E
      3EFF3E3E3EFF363636EE151515970505054E0000001F0000000A000000090000
      001E0505054D15151594353535EC3E3E3EFF3E3E3EFF3E3E3EFF373737F10404
      0446000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF0000
      00003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF000000003E3E3EFF3E3E
      3EFF000000003E3E3EFF323232E5060606503E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF2B2B2BD40000001B0000000001010122242424C33E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF262626C8010101260000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003E3E3EFF3E3E3EFF00000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF00000000000000000000000000000000000000003E3E3EFF3E3E
      3EFF000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF313131E20303033700000000000000020707
      075A2C2C2CD53E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF2C2C2CD80808085F00000002000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000363636EE383838F200000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000363636EE3838
      38F2000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3C3C3CFA11111187000000000000
      0000000000010303033911111186232323C0313131E43A3A3AF63A3A3AF63232
      32E5242424C1121212880303033C000000010000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF0202023300000000000000000101012B3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003131
      31E33E3E3EFF3E3E3EFF3E3E3EFF00000000383838F23A3A3AF6000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E
      3EFF353535EB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      054A313131E33E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3232
      32E5060606500000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003E3E3EFF3E3E3EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000363636EE383838F2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000363636EE383838F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF0202023300000000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF020202330000
      0000000000000101012B3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000313131E33E3E3EFF3E3E3EFF3E3E
      3EFF00000000383838F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003838
      38F23A3A3AF6000000003E3E3EFF3E3E3EFF3E3E3EFF353535EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505054A313131E33E3E3EFF3E3E
      3EFF000000003E3E3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF3E3E3EFF3E3E
      3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF3E3E3EFF000000003E3E
      3EFF3E3E3EFF000000003E3E3EFF3E3E3EFF323232E506060650000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003E3E3EFF3E3E3EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EFF3E3E3EFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000363636EE383838F2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003636
      36EE383838F20000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000900000000100010000000000800D00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
    DesignInfo = 4194568
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          416C6C205461736B732E7376672220696E6B73636170653A76657273696F6E3D
          22312E322E312028396336643431653431302C20323032322D30372D31342922
          20786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E6B73
          636170652E6F72672F6E616D657370616365732F696E6B73636170652220786D
          6C6E733A736F6469706F64693D22687474703A2F2F736F6469706F64692E736F
          75726365666F7267652E6E65742F4454442F736F6469706F64692D302E647464
          2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F
          7376672220786D6C6E733A7376673D22687474703A2F2F7777772E77332E6F72
          672F323030302F737667223E262331303B3C646566732069643D226465667332
          303431222F3E0D0A3C736F6469706F64693A6E616D6564766965772069643D22
          6E616D65647669657732303339222070616765636F6C6F723D22236666666666
          662220626F72646572636F6C6F723D22233030303030302220626F726465726F
          7061636974793D22302E32352220696E6B73636170653A73686F777061676573
          6861646F773D22322220696E6B73636170653A706167656F7061636974793D22
          302E302220696E6B73636170653A70616765636865636B6572626F6172643D22
          302220696E6B73636170653A6465736B636F6C6F723D22236431643164312220
          73686F77677269643D2266616C73652220696E6B73636170653A7A6F6F6D3D22
          31362E3935383333332220696E6B73636170653A63783D2232342220696E6B73
          636170653A63793D2232342220696E6B73636170653A77696E646F772D776964
          74683D22313932302220696E6B73636170653A77696E646F772D686569676874
          3D22313031372220696E6B73636170653A77696E646F772D783D222D38222069
          6E6B73636170653A77696E646F772D793D222D382220696E6B73636170653A77
          696E646F772D6D6178696D697A65643D22312220696E6B73636170653A637572
          72656E742D6C617965723D224C617965725F31222F3E0D0A3C672069643D2267
          3230333622207374796C653D2266696C6C3A233366336633663B66696C6C2D6F
          7061636974793A31223E0D0A09093C7061746820643D224D302C333663302C31
          2E312C302E392C322C322C32683856323448305633367A222069643D22706174
          683230313622207374796C653D2266696C6C3A233366336633663B66696C6C2D
          6F7061636974793A31222F3E0D0A09093C7061746820643D224D372C31396330
          2C302E362D302E342C312D312C314834632D302E362C302D312D302E342D312D
          31762D324832632D312E312C302D322C302E392D322C327634683130762D3648
          375631397A222069643D22706174683230313822207374796C653D2266696C6C
          3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A09093C70
          61746820643D224D342E352C3139683143352E382C31392C362C31382E382C36
          2C31382E35762D3343362C31352E322C352E382C31352C352E352C3135682D31
          43342E322C31352C342C31352E322C342C31352E35763343342C31382E382C34
          2E322C31392C342E352C31397A222069643D2270617468323032302220737479
          6C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A3122
          2F3E0D0A09093C7061746820643D224D33382C3338683863312E312C302C322D
          302E392C322D325632344833385633387A222069643D22706174683230323222
          207374796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974
          793A31222F3E0D0A09093C7061746820643D224D34362C3137682D3176326330
          2C302E362D302E342C312D312C31682D32632D302E362C302D312D302E342D31
          2D31762D32682D337636683130762D344334382C31372E392C34372E312C3137
          2C34362C31377A222069643D22706174683230323422207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A0909
          3C7061746820643D224D34322E352C3139683163302E332C302C302E352D302E
          322C302E352D302E35762D3363302D302E332D302E322D302E352D302E352D30
          2E35682D31632D302E332C302D302E352C302E322D302E352C302E3576334334
          322C31382E382C34322E322C31392C34322E352C31397A222069643D22706174
          683230323622207374796C653D2266696C6C3A233366336633663B66696C6C2D
          6F7061636974793A31222F3E0D0A09093C7061746820643D224D31362E352C31
          34683163302E332C302C302E352D302E322C302E352D302E35762D3363302D30
          2E332D302E322D302E352D302E352D302E35682D31632D302E332C302D302E35
          2C302E322D302E352C302E3576334331362C31332E382C31362E322C31342C31
          362E352C31347A222069643D22706174683230323822207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A0909
          3C7061746820643D224D33302E352C3134683163302E332C302C302E352D302E
          322C302E352D302E35762D3363302D302E332D302E322D302E352D302E352D30
          2E35682D31632D302E332C302D302E352C302E322D302E352C302E3576334333
          302C31332E382C33302E322C31342C33302E352C31347A222069643D22706174
          683230333022207374796C653D2266696C6C3A233366336633663B66696C6C2D
          6F7061636974793A31222F3E0D0A09093C7061746820643D224D31312C333663
          302C312E312C302E392C322C322C3268323263312E312C302C322D302E392C32
          2D325632304831315633367A204D31382E332C32372E366C302E372D302E3763
          302E342D302E342C312D302E342C312E342C306C322E322C322E326C352E392D
          352E3920202063302E342D302E342C312D302E342C312E342C306C302E372C30
          2E3763302E342C302E342C302E342C312C302C312E346C2D372E332C372E3363
          2D302E322C302E322D302E352C302E332D302E372C302E33632D302E332C302D
          302E352D302E312D302E372D302E336C2D332E362D332E362020204331372E39
          2C32382E372C31372E392C32382C31382E332C32372E367A222069643D227061
          74683230333222207374796C653D2266696C6C3A233366336633663B66696C6C
          2D6F7061636974793A31222F3E0D0A09093C7061746820643D224D33352C3132
          682D32763263302C302E362D302E342C312D312C31682D32632D302E362C302D
          312D302E342D312D31762D32483139763263302C302E362D302E342C312D312C
          31682D32632D302E362C302D312D302E342D312D31762D32682D32632D312E31
          2C302D322C302E392D322C327635202020683236762D354333372C31322E392C
          33362E312C31322C33352C31327A222069643D22706174683230333422207374
          796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A31
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          496E2050726F67726573732E7376672220696E6B73636170653A76657273696F
          6E3D22312E322E312028396336643431653431302C20323032322D30372D3134
          292220786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E
          6B73636170652E6F72672F6E616D657370616365732F696E6B73636170652220
          786D6C6E733A736F6469706F64693D22687474703A2F2F736F6469706F64692E
          736F75726365666F7267652E6E65742F4454442F736F6469706F64692D302E64
          74642220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030
          302F7376672220786D6C6E733A7376673D22687474703A2F2F7777772E77332E
          6F72672F323030302F737667223E262331303B3C646566732069643D22646566
          733131353737222F3E0D0A3C736F6469706F64693A6E616D6564766965772069
          643D226E616D6564766965773131353735222070616765636F6C6F723D222366
          66666666662220626F72646572636F6C6F723D22233030303030302220626F72
          6465726F7061636974793D22302E32352220696E6B73636170653A73686F7770
          616765736861646F773D22322220696E6B73636170653A706167656F70616369
          74793D22302E302220696E6B73636170653A70616765636865636B6572626F61
          72643D22302220696E6B73636170653A6465736B636F6C6F723D222364316431
          6431222073686F77677269643D2266616C73652220696E6B73636170653A7A6F
          6F6D3D2231362E3935383333332220696E6B73636170653A63783D2232342220
          696E6B73636170653A63793D2232342220696E6B73636170653A77696E646F77
          2D77696474683D22313932302220696E6B73636170653A77696E646F772D6865
          696768743D22313031372220696E6B73636170653A77696E646F772D783D222D
          382220696E6B73636170653A77696E646F772D793D222D382220696E6B736361
          70653A77696E646F772D6D6178696D697A65643D22312220696E6B7363617065
          3A63757272656E742D6C617965723D224C617965725F31222F3E0D0A3C672069
          643D2267313135363422207374796C653D2266696C6C3A233366336633663B66
          696C6C2D6F7061636974793A31223E0D0A09093C7061746820643D224D31382C
          32336838762D32762D32762D31762D33483076313663302C312E312C302E392C
          322C322C3268336833683168316836762D384331362C32332E392C31362E392C
          32332C31382C32337A222069643D2270617468313135353622207374796C653D
          2266696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D
          0A09093C7061746820643D224D32362C3963302D312E312D302E392D322D322D
          32682D32763263302C302E362D302E342C312D312C31682D32632D302E362C30
          2D312D302E342D312D3156374838763263302C302E362D302E342C312D312C31
          4835632D302E362C302D312D302E342D312D315637483220202043302E392C37
          2C302C372E392C302C39763568323656397A222069643D227061746831313535
          3822207374796C653D2266696C6C3A233366336633663B66696C6C2D6F706163
          6974793A31222F3E0D0A09093C7061746820643D224D352E352C39683143362E
          382C392C372C382E382C372C382E35762D3343372C352E322C362E382C352C36
          2E352C35682D3143352E322C352C352C352E322C352C352E35763343352C382E
          382C352E322C392C352E352C397A222069643D22706174683131353630222073
          74796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A
          31222F3E0D0A09093C7061746820643D224D31392E352C3968314332302E382C
          392C32312C382E382C32312C382E35762D334332312C352E322C32302E382C35
          2C32302E352C35682D314331392E322C352C31392C352E322C31392C352E3576
          334331392C382E382C31392E322C392C31392E352C397A222069643D22706174
          68313135363222207374796C653D2266696C6C3A233366336633663B66696C6C
          2D6F7061636974793A31222F3E0D0A093C2F673E0D0A3C672069643D22673131
          35373222207374796C653D2266696C6C3A233366336633663B66696C6C2D6F70
          61636974793A31223E0D0A09093C7061746820643D224D34372C323548313963
          2D302E352C302D312C302E352D312C3176313663302C302E352C302E352C312C
          312C3168323863302E352C302C312D302E352C312D315632364334382C32352E
          352C34372E352C32352C34372C32357A204D34362C3431483230563237683236
          5634317A222069643D2270617468313135363622207374796C653D2266696C6C
          3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A09093C72
          65637420783D2232322220793D223239222077696474683D2236222068656967
          68743D223130222069643D2272656374313135363822207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A0909
          3C7265637420783D2233302220793D223239222077696474683D223622206865
          696768743D223130222069643D2272656374313135373022207374796C653D22
          66696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          44656665727265642E7376672220696E6B73636170653A76657273696F6E3D22
          312E322E312028396336643431653431302C20323032322D30372D3134292220
          786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E6B7363
          6170652E6F72672F6E616D657370616365732F696E6B73636170652220786D6C
          6E733A736F6469706F64693D22687474703A2F2F736F6469706F64692E736F75
          726365666F7267652E6E65742F4454442F736F6469706F64692D302E64746422
          20786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F73
          76672220786D6C6E733A7376673D22687474703A2F2F7777772E77332E6F7267
          2F323030302F737667223E262331303B3C646566732069643D22646566733833
          3834222F3E0D0A3C736F6469706F64693A6E616D6564766965772069643D226E
          616D65647669657738333832222070616765636F6C6F723D2223666666666666
          2220626F72646572636F6C6F723D22233030303030302220626F726465726F70
          61636974793D22302E32352220696E6B73636170653A73686F77706167657368
          61646F773D22322220696E6B73636170653A706167656F7061636974793D2230
          2E302220696E6B73636170653A70616765636865636B6572626F6172643D2230
          2220696E6B73636170653A6465736B636F6C6F723D2223643164316431222073
          686F77677269643D2266616C73652220696E6B73636170653A7A6F6F6D3D2231
          362E3935383333332220696E6B73636170653A63783D2232342220696E6B7363
          6170653A63793D2232342220696E6B73636170653A77696E646F772D77696474
          683D22313932302220696E6B73636170653A77696E646F772D6865696768743D
          22313031372220696E6B73636170653A77696E646F772D783D222D382220696E
          6B73636170653A77696E646F772D793D222D382220696E6B73636170653A7769
          6E646F772D6D6178696D697A65643D22312220696E6B73636170653A63757272
          656E742D6C617965723D224C617965725F31222F3E0D0A3C672069643D226738
          33373122207374796C653D2266696C6C3A233366336633663B66696C6C2D6F70
          61636974793A31223E0D0A09093C7061746820643D224D32362C3963302D312E
          312D302E392D322D322D32682D32763263302C302E362D302E342C312D312C31
          682D32632D302E362C302D312D302E342D312D3156374838763263302C302E36
          2D302E342C312D312C314835632D302E362C302D312D302E342D312D31563748
          3220202043302E392C372C302C372E392C302C39763568323656397A22206964
          3D22706174683833363322207374796C653D2266696C6C3A233366336633663B
          66696C6C2D6F7061636974793A31222F3E0D0A09093C7061746820643D224D35
          2E352C39683143362E382C392C372C382E382C372C382E35762D3343372C352E
          322C362E382C352C362E352C35682D3143352E322C352C352C352E322C352C35
          2E35763343352C382E382C352E322C392C352E352C397A222069643D22706174
          683833363522207374796C653D2266696C6C3A233366336633663B66696C6C2D
          6F7061636974793A31222F3E0D0A09093C7061746820643D224D31392E352C39
          68314332302E382C392C32312C382E382C32312C382E35762D334332312C352E
          322C32302E382C352C32302E352C35682D314331392E322C352C31392C352E32
          2C31392C352E3576334331392C382E382C31392E322C392C31392E352C397A22
          2069643D22706174683833363722207374796C653D2266696C6C3A2333663366
          33663B66696C6C2D6F7061636974793A31222F3E0D0A09093C7061746820643D
          224D32362C31352E32563135682D31483132483076313663302C312E312C302E
          392C322C322C3268336833683168316832683568312E35632D302E332D312E33
          2D302E352D322E362D302E352D344331382C32332E312C32312E322C31372E39
          2C32362C31352E327A222069643D22706174683833363922207374796C653D22
          66696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A
          093C2F673E0D0A3C7061746820643D224D34382C323963302D372E372D362E33
          2D31342D31342D3134732D31342C362E332D31342C313463302C372E342C352E
          372C31332E342C31332C3134762D33632D352E362D302E352D31302D352E322D
          31302D313163302D362E312C342E392D31312C31312D31317331312C342E392C
          31312C3131202063302C332E352D312E372C362E372D342E332C382E374C3337
          2C3334763968396C2D332E322D332E324334362C33372E332C34382C33332E34
          2C34382C32397A222069643D22706174683833373322207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A3C63
          6972636C652063783D223334222063793D2233302220723D2232222069643D22
          636972636C653833373522207374796C653D2266696C6C3A233366336633663B
          66696C6C2D6F7061636974793A31222F3E0D0A3C7061746820643D224D33342E
          352C33302E324C33342E352C33302E32632D302E332C302E352D302E392C302E
          362D312E342C302E336C2D342E322D322E37632D302E352D302E332D302E362D
          302E392D302E332D312E346C302C3063302E332D302E352C302E392D302E362C
          312E342D302E336C342E322C322E3720204333342E362C32392E312C33342E38
          2C32392E372C33342E352C33302E327A222069643D2270617468383337372220
          7374796C653D2266696C6C3A233366336633663B66696C6C2D6F706163697479
          3A31222F3E0D0A3C7061746820643D224D33342E362C32392E364C33342E362C
          32392E3663302E332C302E352C302E392C302E362C312E342C302E336C352E37
          2D332E3763302E352D302E332C302E362D302E392C302E332D312E347630632D
          302E332D302E352D302E392D302E362D312E342D302E336C2D352E372C332E37
          20204333342E342C32382E362C33342E332C32392E322C33342E362C32392E36
          7A222069643D22706174683833373922207374796C653D2266696C6C3A233366
          336633663B66696C6C2D6F7061636974793A31222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          436F6D706C657465642E7376672220696E6B73636170653A76657273696F6E3D
          22312E322E312028396336643431653431302C20323032322D30372D31342922
          20786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E6B73
          636170652E6F72672F6E616D657370616365732F696E6B73636170652220786D
          6C6E733A736F6469706F64693D22687474703A2F2F736F6469706F64692E736F
          75726365666F7267652E6E65742F4454442F736F6469706F64692D302E647464
          2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F
          7376672220786D6C6E733A7376673D22687474703A2F2F7777772E77332E6F72
          672F323030302F737667223E262331303B3C646566732069643D226465667334
          333839222F3E0D0A3C736F6469706F64693A6E616D6564766965772069643D22
          6E616D65647669657734333837222070616765636F6C6F723D22236666666666
          662220626F72646572636F6C6F723D22233030303030302220626F726465726F
          7061636974793D22302E32352220696E6B73636170653A73686F777061676573
          6861646F773D22322220696E6B73636170653A706167656F7061636974793D22
          302E302220696E6B73636170653A70616765636865636B6572626F6172643D22
          302220696E6B73636170653A6465736B636F6C6F723D22236431643164312220
          73686F77677269643D2266616C73652220696E6B73636170653A7A6F6F6D3D22
          31362E3935383333332220696E6B73636170653A63783D2232342220696E6B73
          636170653A63793D2232342220696E6B73636170653A77696E646F772D776964
          74683D22313932302220696E6B73636170653A77696E646F772D686569676874
          3D22313031372220696E6B73636170653A77696E646F772D783D222D38222069
          6E6B73636170653A77696E646F772D793D222D382220696E6B73636170653A77
          696E646F772D6D6178696D697A65643D22312220696E6B73636170653A637572
          72656E742D6C617965723D224C617965725F31222F3E0D0A3C672069643D2267
          3433383422207374796C653D2266696C6C3A233366336633663B66696C6C2D6F
          7061636974793A31223E0D0A09093C7061746820643D224D32362C3233762D32
          762D32762D31762D33483076313663302C312E312C302E392C322C322C326833
          6833683168316836762D3863302D312E312C302E392D322C322D324832367A22
          2069643D22706174683433363822207374796C653D2266696C6C3A2333663366
          33663B66696C6C2D6F7061636974793A31222F3E0D0A09093C7061746820643D
          224D32362C3963302D312E312D302E392D322D322D32682D32763263302C302E
          362D302E342C312D312C31682D32632D302E362C302D312D302E342D312D3156
          374838763263302C302E362D302E342C312D312C314835632D302E362C302D31
          2D302E342D312D315637483220202043302E392C372C302C372E392C302C3976
          3568323656397A222069643D22706174683433373022207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A0909
          3C7061746820643D224D352E352C39683143362E382C392C372C382E382C372C
          382E35762D3343372C352E322C362E382C352C362E352C35682D3143352E322C
          352C352C352E322C352C352E35763343352C382E382C352E322C392C352E352C
          397A222069643D22706174683433373222207374796C653D2266696C6C3A2333
          66336633663B66696C6C2D6F7061636974793A31222F3E0D0A09093C70617468
          20643D224D31392E352C3968314332302E382C392C32312C382E382C32312C38
          2E35762D334332312C352E322C32302E382C352C32302E352C35682D31433139
          2E322C352C31392C352E322C31392C352E3576334331392C382E382C31392E32
          2C392C31392E352C397A222069643D22706174683433373422207374796C653D
          2266696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D
          0A09093C7061746820643D224D34372C3235483139632D302E352C302D312C30
          2E352D312C3176313663302C302E352C302E352C312C312C3168323863302E35
          2C302C312D302E352C312D315632364334382C32352E352C34372E352C32352C
          34372C32357A204D34362C34314832305632376832365634317A222069643D22
          706174683433373622207374796C653D2266696C6C3A233366336633663B6669
          6C6C2D6F7061636974793A31222F3E0D0A09093C7265637420783D2232322220
          793D223239222077696474683D223622206865696768743D223130222069643D
          22726563743433373822207374796C653D2266696C6C3A233366336633663B66
          696C6C2D6F7061636974793A31222F3E0D0A09093C7265637420783D22333022
          20793D223239222077696474683D223622206865696768743D22313022206964
          3D22726563743433383022207374796C653D2266696C6C3A233366336633663B
          66696C6C2D6F7061636974793A31222F3E0D0A09093C7265637420783D223338
          2220793D223239222077696474683D223622206865696768743D223130222069
          643D22726563743433383222207374796C653D2266696C6C3A23336633663366
          3B66696C6C2D6F7061636974793A31222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          48696768205072696F726974792E7376672220696E6B73636170653A76657273
          696F6E3D22312E322E312028396336643431653431302C20323032322D30372D
          3134292220786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E
          696E6B73636170652E6F72672F6E616D657370616365732F696E6B7363617065
          2220786D6C6E733A736F6469706F64693D22687474703A2F2F736F6469706F64
          692E736F75726365666F7267652E6E65742F4454442F736F6469706F64692D30
          2E6474642220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32
          3030302F7376672220786D6C6E733A7376673D22687474703A2F2F7777772E77
          332E6F72672F323030302F737667223E262331303B3C646566732069643D2264
          6566733130373839222F3E0D0A3C736F6469706F64693A6E616D656476696577
          2069643D226E616D6564766965773130373837222070616765636F6C6F723D22
          236666666666662220626F72646572636F6C6F723D2223303030303030222062
          6F726465726F7061636974793D22302E32352220696E6B73636170653A73686F
          7770616765736861646F773D22322220696E6B73636170653A706167656F7061
          636974793D22302E302220696E6B73636170653A70616765636865636B657262
          6F6172643D22302220696E6B73636170653A6465736B636F6C6F723D22236431
          64316431222073686F77677269643D2266616C73652220696E6B73636170653A
          7A6F6F6D3D2231362E3935383333332220696E6B73636170653A63783D223234
          2220696E6B73636170653A63793D2232342220696E6B73636170653A77696E64
          6F772D77696474683D22313932302220696E6B73636170653A77696E646F772D
          6865696768743D22313031372220696E6B73636170653A77696E646F772D783D
          222D382220696E6B73636170653A77696E646F772D793D222D382220696E6B73
          636170653A77696E646F772D6D6178696D697A65643D22312220696E6B736361
          70653A63757272656E742D6C617965723D224C617965725F31222F3E0D0A3C70
          61746820643D224D34382C33334C33342C31394C32302C3333683876392E3263
          302C302E342C302E332C302E382C302E382C302E3868392E3563302E342C302C
          302E382D302E332C302E382D302E385633334834387A222069643D2270617468
          313037373422207374796C653D2266696C6C3A233366336633663B66696C6C2D
          6F7061636974793A31222F3E0D0A3C672069643D226731303738342220737479
          6C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A3122
          3E0D0A09093C7061746820643D224D302C333163302C312E312C302E392C322C
          322C32683368336831683168376C392D39762D33762D31762D31762D31762D33
          48305633317A222069643D2270617468313037373622207374796C653D226669
          6C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A0909
          3C7061746820643D224D32342C37682D32763263302C302E362D302E342C312D
          312C31682D32632D302E362C302D312D302E342D312D3156374838763263302C
          302E362D302E342C312D312C314835632D302E362C302D312D302E342D312D31
          5637483243302E392C372C302C372E392C302C39763568323656392020204332
          362C372E392C32352E312C372C32342C377A222069643D227061746831303737
          3822207374796C653D2266696C6C3A233366336633663B66696C6C2D6F706163
          6974793A31222F3E0D0A09093C7061746820643D224D352E352C39683143362E
          382C392C372C382E382C372C382E35762D3343372C352E322C362E382C352C36
          2E352C35682D3143352E322C352C352C352E322C352C352E35763343352C382E
          382C352E322C392C352E352C397A222069643D22706174683130373830222073
          74796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A
          31222F3E0D0A09093C7061746820643D224D31392E352C3968314332302E382C
          392C32312C382E382C32312C382E35762D334332312C352E322C32302E382C35
          2C32302E352C35682D314331392E322C352C31392C352E322C31392C352E3576
          334331392C382E382C31392E322C392C31392E352C397A222069643D22706174
          68313037383222207374796C653D2266696C6C3A233366336633663B66696C6C
          2D6F7061636974793A31222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          4E6F7420537461727465642E7376672220696E6B73636170653A76657273696F
          6E3D22312E322E312028396336643431653431302C20323032322D30372D3134
          292220786D6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E
          6B73636170652E6F72672F6E616D657370616365732F696E6B73636170652220
          786D6C6E733A736F6469706F64693D22687474703A2F2F736F6469706F64692E
          736F75726365666F7267652E6E65742F4454442F736F6469706F64692D302E64
          74642220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030
          302F7376672220786D6C6E733A7376673D22687474703A2F2F7777772E77332E
          6F72672F323030302F737667223E262331303B3C646566732069643D22646566
          733133383532222F3E0D0A3C736F6469706F64693A6E616D6564766965772069
          643D226E616D6564766965773133383530222070616765636F6C6F723D222366
          66666666662220626F72646572636F6C6F723D22233030303030302220626F72
          6465726F7061636974793D22302E32352220696E6B73636170653A73686F7770
          616765736861646F773D22322220696E6B73636170653A706167656F70616369
          74793D22302E302220696E6B73636170653A70616765636865636B6572626F61
          72643D22302220696E6B73636170653A6465736B636F6C6F723D222364316431
          6431222073686F77677269643D2266616C73652220696E6B73636170653A7A6F
          6F6D3D2231362E3935383333332220696E6B73636170653A63783D2232342220
          696E6B73636170653A63793D2232342220696E6B73636170653A77696E646F77
          2D77696474683D22313932302220696E6B73636170653A77696E646F772D6865
          696768743D22313031372220696E6B73636170653A77696E646F772D783D222D
          382220696E6B73636170653A77696E646F772D793D222D382220696E6B736361
          70653A77696E646F772D6D6178696D697A65643D22312220696E6B7363617065
          3A63757272656E742D6C617965723D224C617965725F31222F3E0D0A3C706174
          6820643D224D33352C32372E33563230682D3276372E33632D302E362C302E33
          2D312C312D312C312E3763302C312E312C302E392C322C322C3273322D302E39
          2C322D324333362C32382E332C33352E362C32372E362C33352C32372E337A22
          2069643D2270617468313338333522207374796C653D2266696C6C3A23336633
          6633663B66696C6C2D6F7061636974793A31222F3E0D0A3C672069643D226731
          3338343522207374796C653D2266696C6C3A233366336633663B66696C6C2D6F
          7061636974793A31223E0D0A09093C7061746820643D224D32362C3963302D31
          2E312D302E392D322D322D32682D32763263302C302E362D302E342C312D312C
          31682D32632D302E362C302D312D302E342D312D3156374838763263302C302E
          362D302E342C312D312C314835632D302E362C302D312D302E342D312D315637
          483220202043302E392C372C302C372E392C302C39763568323656397A222069
          643D2270617468313338333722207374796C653D2266696C6C3A233366336633
          663B66696C6C2D6F7061636974793A31222F3E0D0A09093C7061746820643D22
          4D352E352C39683143362E382C392C372C382E382C372C382E35762D3343372C
          352E322C362E382C352C362E352C35682D3143352E322C352C352C352E322C35
          2C352E35763343352C382E382C352E322C392C352E352C397A222069643D2270
          617468313338333922207374796C653D2266696C6C3A233366336633663B6669
          6C6C2D6F7061636974793A31222F3E0D0A09093C7061746820643D224D31392E
          352C3968314332302E382C392C32312C382E382C32312C382E35762D33433231
          2C352E322C32302E382C352C32302E352C35682D314331392E322C352C31392C
          352E322C31392C352E3576334331392C382E382C31392E322C392C31392E352C
          397A222069643D2270617468313338343122207374796C653D2266696C6C3A23
          3366336633663B66696C6C2D6F7061636974793A31222F3E0D0A09093C706174
          6820643D224D32362C31352E32563135682D31483132483076313663302C312E
          312C302E392C322C322C3268336833683168316832683568312E35632D302E33
          2D312E332D302E352D322E362D302E352D344331382C32332E312C32312E322C
          31372E392C32362C31352E327A222069643D2270617468313338343322207374
          796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A31
          222F3E0D0A093C2F673E0D0A3C7061746820643D224D34332E312C31382E346C
          302E332D302E3463312E312D302E322C312E392D312E332C312E362D322E3463
          2D302E322D302E372D302E382D312E332D312E352D312E35632D312E332D302E
          332D322E342C302E372D322E342C3263302C302E312C302C302E322C302C302E
          336C2D302E332C302E352020632D312E322D302E362D322E342D312E312D332E
          372D312E34563134683063312E312C302C322D302E392C322D32763063302D31
          2E312D302E392D322D322D32682D36632D312E312C302D322C302E392D322C32
          763063302C312E312C302E392C322C322C32683076312E332020632D362E372C
          312E352D31312E372C372E382D31302E392C31352E3163302E372C362E382C36
          2E342C31322E322C31332E322C31322E3663382C302E342C31342E372D362C31
          342E372D31344334382C32342E372C34362E312C32302E392C34332E312C3138
          2E347A204D33342C34302020632D362E312C302D31312D342E392D31312D3131
          73342E392D31312C31312D31317331312C342E392C31312C31315334302E312C
          34302C33342C34307A222069643D2270617468313338343722207374796C653D
          2266696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D
          0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302034382034382220656E61626C652D6261636B67726F756E643D226E
          6577203020302034382034382220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          557267656E742E7376672220696E6B73636170653A76657273696F6E3D22312E
          322E312028396336643431653431302C20323032322D30372D3134292220786D
          6C6E733A696E6B73636170653D22687474703A2F2F7777772E696E6B73636170
          652E6F72672F6E616D657370616365732F696E6B73636170652220786D6C6E73
          3A736F6469706F64693D22687474703A2F2F736F6469706F64692E736F757263
          65666F7267652E6E65742F4454442F736F6469706F64692D302E647464222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A7376673D22687474703A2F2F7777772E77332E6F72672F32
          3030302F737667223E262331303B3C646566732069643D226465667332313537
          35222F3E0D0A3C736F6469706F64693A6E616D6564766965772069643D226E61
          6D6564766965773231353733222070616765636F6C6F723D2223666666666666
          2220626F72646572636F6C6F723D22233030303030302220626F726465726F70
          61636974793D22302E32352220696E6B73636170653A73686F77706167657368
          61646F773D22322220696E6B73636170653A706167656F7061636974793D2230
          2E302220696E6B73636170653A70616765636865636B6572626F6172643D2230
          2220696E6B73636170653A6465736B636F6C6F723D2223643164316431222073
          686F77677269643D2266616C73652220696E6B73636170653A7A6F6F6D3D2231
          362E3935383333332220696E6B73636170653A63783D2232342220696E6B7363
          6170653A63793D2232342220696E6B73636170653A77696E646F772D77696474
          683D22313932302220696E6B73636170653A77696E646F772D6865696768743D
          22313031372220696E6B73636170653A77696E646F772D783D222D382220696E
          6B73636170653A77696E646F772D793D222D382220696E6B73636170653A7769
          6E646F772D6D6178696D697A65643D22312220696E6B73636170653A63757272
          656E742D6C617965723D224C617965725F31222F3E0D0A3C672069643D226732
          3135363022207374796C653D2266696C6C3A233366336633663B66696C6C2D6F
          7061636974793A31223E0D0A09093C7061746820643D224D34372E392C34302E
          394C33342E372C31332E37632D302E352D312D312E392D312D322E342C306C2D
          31332E322C3237632D302E342C302E392C302E322C322E322C312E322C322E32
          6832362E334334372E372C34332C34382E332C34312E382C34372E392C34302E
          397A204D33332E352C3337202020632D302E382C302D312E352D302E372D312E
          352D312E3573302E372D312E352C312E352D312E3573312E352C302E372C312E
          352C312E355333342E332C33372C33332E352C33377A204D33342E332C333268
          2D312E354C33322C32352E3863302D302E342C302E332D302E382C302E382D30
          2E3868312E3520202063302E342C302C302E382C302E342C302E382C302E384C
          33342E332C33327A222069643D2270617468323135353822207374796C653D22
          66696C6C3A233366336633663B66696C6C2D6F7061636974793A31222F3E0D0A
          093C2F673E0D0A3C672069643D2267323135373022207374796C653D2266696C
          6C3A233366336633663B66696C6C2D6F7061636974793A31223E0D0A09093C70
          61746820643D224D32342C37682D32763263302C302E362D302E342C312D312C
          31682D32632D302E362C302D312D302E342D312D3156374838763263302C302E
          362D302E342C312D312C314835632D302E362C302D312D302E342D312D315637
          483243302E392C372C302C372E392C302C39763568323656392020204332362C
          372E392C32352E312C372C32342C377A222069643D2270617468323135363222
          207374796C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974
          793A31222F3E0D0A09093C7061746820643D224D352E352C39683143362E382C
          392C372C382E382C372C382E35762D3343372C352E322C362E382C352C362E35
          2C35682D3143352E322C352C352C352E322C352C352E35763343352C382E382C
          352E322C392C352E352C397A222069643D227061746832313536342220737479
          6C653D2266696C6C3A233366336633663B66696C6C2D6F7061636974793A3122
          2F3E0D0A09093C7061746820643D224D31392E352C3968314332302E382C392C
          32312C382E382C32312C382E35762D334332312C352E322C32302E382C352C32
          302E352C35682D314331392E322C352C31392C352E322C31392C352E35763343
          31392C382E382C31392E322C392C31392E352C397A222069643D227061746832
          3135363622207374796C653D2266696C6C3A233366336633663B66696C6C2D6F
          7061636974793A31222F3E0D0A09093C7061746820643D224D31322C31354839
          483076313663302C312E312C302E392C322C322C326833683368316831683268
          3568336C362D3131762D362E38563135682D314831327A222069643D22706174
          68323135363822207374796C653D2266696C6C3A233366336633663B66696C6C
          2D6F7061636974793A31222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220783D223070782220793D22307078222076696577426F783D
          223020302032332032332220656E61626C652D6261636B67726F756E643D226E
          6577203020302032332032332220786D6C3A73706163653D2270726573657276
          652220736F6469706F64693A646F636E616D653D2248796272696444656D6F5F
          4E65656420417373697374616E63652E7376672220696E6B73636170653A7665
          7273696F6E3D22312E322E312028396336643431653431302C20323032322D30
          372D3134292220786D6C6E733A696E6B73636170653D22687474703A2F2F7777
          772E696E6B73636170652E6F72672F6E616D657370616365732F696E6B736361
          70652220786D6C6E733A736F6469706F64693D22687474703A2F2F736F646970
          6F64692E736F75726365666F7267652E6E65742F4454442F736F6469706F6469
          2D302E6474642220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A7376673D22687474703A2F2F777777
          2E77332E6F72672F323030302F737667223E262331303B3C646566732069643D
          22646566733234353534222F3E0D0A3C736F6469706F64693A6E616D65647669
          65772069643D226E616D6564766965773234353532222070616765636F6C6F72
          3D22236666666666662220626F72646572636F6C6F723D222330303030303022
          20626F726465726F7061636974793D22302E32352220696E6B73636170653A73
          686F7770616765736861646F773D22322220696E6B73636170653A706167656F
          7061636974793D22302E302220696E6B73636170653A70616765636865636B65
          72626F6172643D22302220696E6B73636170653A6465736B636F6C6F723D2223
          643164316431222073686F77677269643D2266616C73652220696E6B73636170
          653A7A6F6F6D3D2233352E3339313330342220696E6B73636170653A63783D22
          31312E352220696E6B73636170653A63793D2231312E352220696E6B73636170
          653A77696E646F772D77696474683D22313932302220696E6B73636170653A77
          696E646F772D6865696768743D22313031372220696E6B73636170653A77696E
          646F772D783D222D382220696E6B73636170653A77696E646F772D793D222D38
          2220696E6B73636170653A77696E646F772D6D6178696D697A65643D22312220
          696E6B73636170653A63757272656E742D6C617965723D224C617965725F3122
          2F3E0D0A3C672069643D2267323435343922207374796C653D2266696C6C3A23
          3366336633663B66696C6C2D6F7061636974793A31223E0D0A09093C70617468
          20643D224D31312E352C3243362E332C322C322C362E332C322C31312E355336
          2E332C32312C31312E352C323173392E352D342E332C392E352D392E35533136
          2E372C322C31312E352C327A204D31322C3137682D32762D3268325631377A20
          4D31342E362C31302E372020204331342C31322C31322E322C31322E322C3132
          2C3134682D3263302D312E342C312E342D322E342C312E392D322E3963302E35
          2D302E352C302E392D302E392C312D3163302E322D302E332C302E322D302E35
          2C302E322D302E3963302D302E342D302E312D302E382D302E342D312E312020
          20632D302E332D302E332D302E372D302E352D312E322D302E35632D312E332C
          302D312E342C302E392D312E362C312E33483863302E312D312E312C302E352D
          312E352C312D3263302E362D302E362C312E352D312C322E352D3163312E312C
          302C312E392C302E332C322E362C3120202063302E362C302E372C312C312E34
          2C312C322E334331352C392E382C31342E392C31302E322C31342E362C31302E
          377A222069643D2270617468323435343722207374796C653D2266696C6C3A23
          3366336633663B66696C6C2D6F7061636974793A31222F3E0D0A093C2F673E0D
          0A3C2F7376673E0D0A}
      end>
  end
end
