inherited frmGridCustomRowLayout: TfrmGridCustomRowLayout
  inherited PanelGrid: TdxPanel
    Width = 680
    ExplicitWidth = 680
    inherited Grid: TcxGrid
      Width = 680
      ExplicitWidth = 680
      object MasterTableView: TcxGridDBTableView
        OnMouseLeave = MasterTableViewMouseLeave
        OnMouseMove = MasterTableViewMouseMove
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CriteriaDisplayStyle = fcdsTokens
        FindPanel.DisplayMode = fpdmManual
        FindPanel.Location = fplGroupByBox
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellClick = MasterTableViewCellClick
        OnInitEdit = MasterTableViewInitEdit
        DataController.DataSource = dmMain.dsEmployeesDev
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Min Age =  # years'
            Kind = skMin
            Column = MasterTableViewAge
          end
          item
            Format = 'Max Age = # years'
            Kind = skMax
            Column = MasterTableViewAge
          end
          item
            Format = 'Count = #'
            Kind = skCount
            Column = MasterTableViewPerson
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = MasterTableViewStatus
              end
              item
                Column = MasterTableViewDepartment
              end>
            SummaryItems.Separator = ';'
            SummaryItems = <
              item
                Format = 'Count = #'
                Kind = skCount
                Column = MasterTableViewPerson
              end
              item
                Format = 'Min Age = # years'
                Kind = skMin
                Column = MasterTableViewAge
              end
              item
                Format = 'Max Age = # years'
                Kind = skMax
                Column = MasterTableViewAge
              end>
          end>
        EditForm.CaptionMask = 'Personal Info'
        EditForm.UseDefaultLayout = False
        Filtering.ColumnPopupMode = fpmExcel
        OptionsBehavior.HotTrack = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsSelection.InvertSelect = False
        OptionsView.Footer = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupByHeaderLayout = ghlHorizontal
        RowLayout.Active = True
        RowLayout.CaptionSuffix = ':'
        RowLayout.CellBorders = False
        RowLayout.DefaultStretch = fsHorizontal
        RowLayout.SmartCellNavigation = True
        RowLayout.UseDefaultLayout = False
        Styles.UseOddEvenStyles = bFalse
        OnDetachedEditFormInitialize = MasterTableViewDetachedEditFormInitialize
        object MasterTableViewPicture: TcxGridDBColumn
          DataBinding.FieldName = 'Picture'
          RepositoryItem = dmMain.edrepEmployeeDevPhoto
          Visible = False
          LayoutItem = MasterTableViewLayoutItem1.Owner
          Options.Editing = False
          Options.Focusing = False
          RowLayoutItem = MasterTableViewLayoutItem24.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewWorked: TcxGridDBColumn
          Caption = 'Worked'
          DataBinding.Expression = 
            #1'CONCATENATE([Title],", employed ",INT(YEARFRAC(TODAY(),[Hire Da' +
            'te]))," years")'
          DataBinding.ValueType = 'String'
          Visible = False
          OnCustomDrawCell = MasterTableViewDrawText
          Options.Editing = False
          Options.Focusing = False
          RowLayoutItem = MasterTableViewLayoutItem22.Owner
          Styles.Content = cxStyle2
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewLevel: TcxGridDBColumn
          DataBinding.FieldName = 'Level'
          PropertiesClassName = 'TdxRatingControlProperties'
          Properties.AllowHover = False
          Visible = False
          OnCustomDrawCell = MasterTableViewDrawLevel
          LayoutItem = MasterTableViewLayoutItem3.Owner
          Options.Editing = False
          Options.Focusing = False
          RowLayoutItem = MasterTableViewLayoutItem23.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewMobilePhone: TcxGridDBColumn
          Caption = 'Phone'
          DataBinding.FieldName = 'MobilePhone'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem4.Owner
          RowLayoutItem = MasterTableViewLayoutItem12.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewEmail: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          RepositoryItem = EditRepositoryHyperLink
          Visible = False
          LayoutItem = MasterTableViewLayoutItem5.Owner
          RowLayoutItem = MasterTableViewLayoutItem13.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewSkype: TcxGridDBColumn
          DataBinding.FieldName = 'Skype'
          RepositoryItem = EditRepositoryHyperLink
          Visible = False
          LayoutItem = MasterTableViewLayoutItem6.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewAddress_Line: TcxGridDBColumn
          Caption = 'Address'
          DataBinding.FieldName = 'Address_Line'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem7.Owner
          RowLayoutItem = MasterTableViewLayoutItem17.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewAddress_City: TcxGridDBColumn
          Caption = 'City'
          DataBinding.FieldName = 'Address_City'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem8.Owner
          RowLayoutItem = MasterTableViewLayoutItem18.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewAddress_State: TcxGridDBColumn
          Caption = 'State'
          DataBinding.FieldName = 'Address_State'
          RepositoryItem = dmMain.edrepEmployeeState
          Visible = False
          LayoutItem = MasterTableViewLayoutItem9.Owner
          RowLayoutItem = MasterTableViewLayoutItem19.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewPerson: TcxGridDBColumn
          Caption = 'Person'
          DataBinding.Expression = #1'CONCATENATE([Prefix],". ",[First Name]," ",[Last Name])'
          DataBinding.ValueType = 'String'
          OnCustomDrawCell = MasterTableViewDrawText
          Options.Editing = False
          Options.Focusing = False
          RowLayoutItem = MasterTableViewLayoutItem26.Owner
          Styles.Content = cxStyle1
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bTrue
          Width = 100
        end
        object MasterTableViewAge: TcxGridDBColumn
          Caption = 'Age'
          DataBinding.Expression = #1'INT(YEARFRAC(TODAY(),[Birth Date]))'
          DataBinding.ValueType = 'Integer'
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
          Width = 100
        end
        object MasterTableViewDepartment: TcxGridDBColumn
          DataBinding.FieldName = 'Department'
          RepositoryItem = dmMain.edrepEmployeeDepartment
          Visible = False
          GroupIndex = 0
          LayoutItem = MasterTableViewLayoutItem15.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
          Width = 100
        end
        object MasterTableViewStatus: TcxGridDBColumn
          DataBinding.FieldName = 'Status'
          RepositoryItem = dmMain.edrepEmployeeStatus
          Visible = False
          GroupIndex = 1
          LayoutItem = MasterTableViewLayoutItem16.Owner
          Options.SortByDisplayText = isbtOn
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
          Width = 100
        end
        object MasterTableViewPrefix: TcxGridDBColumn
          Caption = 'Prefix'
          DataBinding.FieldName = 'PrefixByID'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem20.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewFullName: TcxGridDBColumn
          DataBinding.FieldName = 'FullName'
          Visible = False
          Styles.Content = cxStyle1
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewTitle: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem25.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
          Width = 100
        end
        object MasterTableViewHireDate: TcxGridDBColumn
          Caption = 'Hire Date'
          DataBinding.FieldName = 'HireDate'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem27.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewBirthDate: TcxGridDBColumn
          Caption = 'Birth Date'
          DataBinding.FieldName = 'BirthDate'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem28.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewPersonalProfile: TcxGridDBColumn
          Caption = 'Profile'
          DataBinding.FieldName = 'PersonalProfile'
          RepositoryItem = dmMain.EditRepositoryMemo
          Visible = False
          LayoutItem = MasterTableViewLayoutItem29.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewFirstName: TcxGridDBColumn
          Caption = 'First Name'
          DataBinding.FieldName = 'FirstName'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem30.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewLastName: TcxGridDBColumn
          Caption = 'Last Name'
          DataBinding.FieldName = 'LastName'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem31.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewHomePhone: TcxGridDBColumn
          Caption = 'Home Phone'
          DataBinding.FieldName = 'HomePhone'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem21.Owner
          RowLayoutItem = MasterTableViewLayoutItem11.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewAddress_ZipCode: TcxGridDBColumn
          Caption = 'Zip Code'
          DataBinding.FieldName = 'Address_ZipCode'
          Visible = False
          LayoutItem = MasterTableViewLayoutItem10.Owner
          RowLayoutItem = MasterTableViewLayoutItem2.Owner
          VisibleForEditForm = bTrue
          VisibleForRowLayout = bTrue
        end
        object MasterTableViewAddress_Latitude: TcxGridDBColumn
          Caption = 'Latitude'
          DataBinding.FieldName = 'Address_Latitude'
          Visible = False
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewAddress_Longitude: TcxGridDBColumn
          Caption = 'Longitude'
          DataBinding.FieldName = 'Address_Longitude'
          Visible = False
          VisibleForEditForm = bFalse
          VisibleForRowLayout = bFalse
        end
        object MasterTableViewRootGroup: TcxGridInplaceEditFormGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Template Card'
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = -1
        end
        object MasterTableViewLayoutItem1: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewRootGroup
          AlignHorz = ahLeft
          AlignVert = avCenter
          SizeOptions.Height = 221
          SizeOptions.Width = 199
          CaptionOptions.Visible = False
          Index = 0
        end
        object MasterTableViewLayoutItem3: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup8.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 4
        end
        object MasterTableViewLayoutItem4: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 4
        end
        object MasterTableViewLayoutItem5: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 4
        end
        object MasterTableViewLayoutItem6: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 5
        end
        object MasterTableViewLayoutItem7: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 0
        end
        object MasterTableViewLayoutItem8: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          SizeOptions.Width = 180
          Index = 1
        end
        object MasterTableViewLayoutItem9: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Height = 12
          SizeOptions.Width = 180
          Index = 2
        end
        object MasterTableViewLayoutItem15: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup8.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 0
        end
        object MasterTableViewLayoutItem16: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup8.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 1
        end
        object MasterTableViewLayoutItem20: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 2
        end
        object MasterTableViewLayoutItem25: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup8.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 2
        end
        object MasterTableViewLayoutItem27: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup8.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 3
        end
        object MasterTableViewLayoutItem28: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 3
        end
        object MasterTableViewLayoutItem29: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup9.Owner
          AlignHorz = ahClient
          AlignVert = avClient
          SizeOptions.Height = 58
          CaptionOptions.Visible = False
          Index = 1
        end
        object MasterTableViewLayoutItem30: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 0
        end
        object MasterTableViewLayoutItem31: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          SizeOptions.Width = 180
          Index = 1
        end
        object MasterTableViewGroup5: TdxLayoutGroup
          Parent = MasterTableViewGroup9.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Info'
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 0
        end
        object MasterTableViewGroup6: TdxLayoutGroup
          Parent = MasterTableViewGroup5.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Person'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 0
        end
        object MasterTableViewGroup7: TdxLayoutGroup
          Parent = MasterTableViewGroup5.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Address'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 2
        end
        object MasterTableViewGroup8: TdxLayoutGroup
          Parent = MasterTableViewGroup5.Owner
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Work'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 4
        end
        object MasterTableViewGroup9: TdxLayoutGroup
          Parent = MasterTableViewRootGroup
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Main'
          CaptionOptions.Visible = False
          ShowBorder = False
          Index = 1
        end
        object MasterTableViewSeparatorItem2: TdxLayoutSeparatorItem
          Parent = MasterTableViewGroup5.Owner
          CaptionOptions.Text = 'Separator'
          Index = 1
        end
        object MasterTableViewSeparatorItem3: TdxLayoutSeparatorItem
          Parent = MasterTableViewGroup5.Owner
          CaptionOptions.Text = 'Separator'
          Index = 3
        end
        object MasterTableViewLayoutItem10: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup7.Owner
          Index = 3
        end
        object MasterTableViewLayoutItem21: TcxGridInplaceEditFormLayoutItem
          Parent = MasterTableViewGroup6.Owner
          Index = 5
        end
        object TcxGridTableRowLayoutSerializationOwner
          object MasterTableViewRootGroup1: TcxGridTableRowLayoutGroup
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Template Layout'
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object MasterTableViewLayoutItem12: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup2.Owner
            AlignHorz = ahClient
            Index = 0
          end
          object MasterTableViewLayoutItem13: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup2.Owner
            AlignHorz = ahClient
            SizeOptions.Width = 132
            Index = 1
          end
          object MasterTableViewLayoutItem17: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup10.Owner
            AlignHorz = ahClient
            Index = 0
          end
          object MasterTableViewLayoutItem18: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup10.Owner
            AlignHorz = ahClient
            SizeOptions.Width = 129
            Index = 1
          end
          object MasterTableViewLayoutItem19: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup10.Owner
            AlignHorz = ahClient
            Index = 2
          end
          object MasterTableViewLayoutItem24: TcxGridTableRowLayoutItem
            Parent = MasterTableViewRootGroup1
            SizeOptions.Height = 131
            SizeOptions.Width = 136
            CaptionOptions.Visible = False
            Index = 0
          end
          object MasterTableViewSeparatorItem1: TdxLayoutSeparatorItem
            Parent = MasterTableViewRootGroup1
            CaptionOptions.Text = 'Separator'
            Index = 2
          end
          object MasterTableViewLayoutItem26: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup1.Owner
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Height = 28
            SizeOptions.Width = 205
            CaptionOptions.Visible = False
            Index = 0
          end
          object MasterTableViewLayoutItem22: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup1.Owner
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Height = 24
            SizeOptions.Width = 260
            CaptionOptions.Visible = False
            Index = 1
          end
          object MasterTableViewLayoutItem23: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup1.Owner
            AlignHorz = ahLeft
            AlignVert = avTop
            SizeOptions.Width = 160
            Index = 2
          end
          object MasterTableViewLayoutItem2: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup10.Owner
            AlignHorz = ahClient
            Index = 3
          end
          object MasterTableViewLayoutItem11: TcxGridTableRowLayoutItem
            Parent = MasterTableViewGroup10.Owner
            AlignHorz = ahClient
            Index = 4
          end
          object MasterTableViewGroup10: TdxLayoutGroup
            Parent = MasterTableViewRootGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Address'
            CaptionOptions.Visible = False
            ItemIndex = 2
            ShowBorder = False
            Index = 3
          end
          object MasterTableViewGroup1: TdxLayoutGroup
            Parent = MasterTableViewRootGroup1
            AlignHorz = ahClient
            CaptionOptions.Text = 'Info'
            CaptionOptions.Visible = False
            ShowBorder = False
            Index = 1
          end
          object MasterTableViewGroup2: TdxLayoutGroup
            Parent = MasterTableViewGroup1.Owner
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'Contacts'
            CaptionOptions.Visible = False
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = 3
          end
        end
      end
      object DetailTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsTasksDev
        DataController.DetailKeyFieldNames = 'AssignedEmployeeId'
        DataController.KeyFieldNames = 'Id'
        DataController.MasterKeyFieldNames = 'Id'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object DetailTableViewAssignedEmployeeId: TcxGridDBColumn
          Caption = 'Assigned To'
          DataBinding.FieldName = 'AssignedEmployeeId'
          RepositoryItem = dmMain.edrepTaskFullName
          Width = 150
        end
        object DetailTableViewOwnerId: TcxGridDBColumn
          Caption = 'Owned By'
          DataBinding.FieldName = 'OwnerId'
          RepositoryItem = dmMain.edrepTaskFullName
          Width = 150
        end
        object DetailTableViewSubject: TcxGridDBColumn
          DataBinding.FieldName = 'Subject'
          Width = 300
        end
        object DetailTableViewStartDate: TcxGridDBColumn
          Caption = 'Start Date'
          DataBinding.FieldName = 'StartDate'
          Width = 100
        end
        object DetailTableViewDueDate: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'DueDate'
          Width = 100
        end
        object DetailTableViewCompletion: TcxGridDBColumn
          Caption = 'Complete'
          DataBinding.FieldName = 'Completion'
          RepositoryItem = dmMain.edrepTaskProgress
          Width = 150
        end
      end
      object MasterLevel: TcxGridLevel
        GridView = MasterTableView
        Options.DetailTabsPosition = dtpTop
        object DetailLevel: TcxGridLevel
          Caption = 'Tasks'
          GridView = DetailTableView
        end
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 680
    Width = 242
    ExplicitLeft = 680
    ExplicitWidth = 242
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 241
      Width = 241
      inherited lcFrame: TdxLayoutControl
        Width = 239
        ExplicitWidth = 239
        object btnCustomize: TcxButton [0]
          Left = 10
          Top = 60
          Width = 219
          Height = 25
          Caption = 'Customize Row Layout...'
          TabOrder = 1
          OnClick = btnCustomizeClick
        end
        object btnCustomizeEditForm: TcxButton [1]
          Left = 10
          Top = 91
          Width = 219
          Height = 25
          Caption = 'Customize Edit Form...'
          TabOrder = 2
          OnClick = btnCustomizeEditFormClick
        end
        object cbSelectionMode: TcxComboBox [2]
          Left = 91
          Top = 10
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Row'
            'Cell')
          Properties.OnEditValueChanged = cbSelectionModePropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Text = 'Cell'
          Width = 138
        end
        object liCustomizeLayout: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCustomize
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liCustomizeEditFromLayout: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnCustomizeEditForm
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object cbHotTrack: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignHorz = ahLeft
          Action = acHotTrack
          Index = 1
        end
        object liSelectionMode: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'Selection Mode:'
          Control = cbSelectionMode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 56
    Top = 120
    object acInvertSelect: TAction
      AutoCheck = True
      Caption = 'Invert Select'
      OnExecute = acInvertSelectExecute
    end
    object acHotTrack: TAction
      AutoCheck = True
      Caption = 'Hot Track'
      Checked = True
      OnExecute = acHotTrackExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 112
    Top = 72
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object EditRepository: TcxEditRepository
    Left = 60
    Top = 58
    PixelsPerInch = 96
    object EditRepositoryHyperLink: TcxEditRepositoryHyperLinkItem
      Properties.Alignment.Horz = taLeftJustify
    end
  end
  object srStyles: TcxStyleRepository
    Left = 176
    Top = 72
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Segoe UI'
      Font.Style = []
    end
  end
  object ilImages: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 400
    Top = 176
    Bitmap = {
      494C010101000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD575
      10FE231302670100001700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D57510FE2313
      026708040033BA670EEE2D190376000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000231302670804
      0033BB670EEED77610FFD77610FF2D1903760000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000EB563
      0EEAD77610FFD77610FFD77610FFD77610FF2D19037600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A0E
      0259D17310FCD77610FFD77610FFD77610FFD77610FF2D190376000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001A0E0259D17310FCD77610FFD77610FFD77610FFD77610FF2D1903760000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A0E025AD27410FCD77610FFD77610FFD77610FFD77610FF2C18
      0374000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C0F025CD27410FCD77610FFD77610FFCF7210FA160C
      0153030100210000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001C0F025CD27410FCCF7210FA160C01531109
      0149CA6E0FF72D19037500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001C0F025C160C015311090149CB70
      10F8D77610FFBA660EED00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001000017C56C0FF4D776
      10FFC36B0FF30C07003E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A0E0259B061
      0DE70C07003E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 11534736
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2245
          646974223E0D0A09093C7061746820636C6173733D22426C75652220643D224D
          32372E362C382E326C2D332E382D332E38632D302E352D302E352D312E342D30
          2E352D312E392C306C2D322E352C322E356C352E382C352E386C322E352D322E
          354332382E312C392E362C32382E312C382E382C32372E362C382E327A222F3E
          0D0A09093C706F6C79676F6E20636C6173733D22426C75652220706F696E7473
          3D22342C323820392E382C323820342C32322E32202623393B222F3E0D0A0909
          3C7265637420783D22352E382220793D2231332E3422207472616E73666F726D
          3D226D617472697828302E373037202D302E3730373220302E3730373220302E
          373037202D382E303732312031352E34303438292220636C6173733D22426C75
          65222077696474683D2231372E3622206865696768743D22382E32222F3E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
end
