inherited frmHamburgerMenu: TfrmHamburgerMenu
  Caption = 'Hamburger Menu'
  ClientHeight = 697
  ClientWidth = 1097
  OnCreate = FormCreate
  OnResize = FormResize
  ExplicitWidth = 1097
  ExplicitHeight = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1097
    Height = 697
    ExplicitWidth = 1097
    ExplicitHeight = 697
    object cxGrid1: TcxGrid [0]
      Left = 264
      Top = 116
      Width = 575
      Height = 532
      BorderStyle = cxcbsNone
      TabOrder = 1
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = DataModule2.dsEmployees
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 100
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        Styles.UseOddEvenStyles = bFalse
        object cxGrid1DBTableView1Picture: TcxGridDBColumn
          DataBinding.FieldName = 'Picture'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
          BestFitMaxWidth = 30
          MinWidth = 95
          Options.HorzSizing = False
          Width = 95
        end
        object cxGrid1DBTableView1FullName: TcxGridDBColumn
          DataBinding.FieldName = 'FullName'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          MinWidth = 120
          Width = 120
        end
        object cxGrid1DBTableView1Email: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          Width = 120
        end
        object cxGrid1DBTableView1Phones: TcxGridDBColumn
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taVCenter
          OnGetDataText = cxGrid1DBTableView1PhonesGetDataText
          MinWidth = 160
          Width = 160
        end
        object cxGrid1DBTableView1MobilePhone: TcxGridDBColumn
          DataBinding.FieldName = 'MobilePhone'
          Visible = False
        end
        object cxGrid1DBTableView1HomePhone: TcxGridDBColumn
          DataBinding.FieldName = 'HomePhone'
          Visible = False
        end
        object ContactsTitleColumn: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          Visible = False
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDBImage1: TcxDBImage [1]
      Left = 854
      Top = 147
      DataBinding.DataField = 'Picture'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      TabOrder = 2
      Height = 110
      Width = 196
    end
    object dblEmployeeName: TcxDBLabel [2]
      Left = 904
      Top = 263
      AutoSize = True
      DataBinding.DataField = 'FullName'
      DataBinding.DataSource = DataModule2.dsEmployees
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Transparent = True
      AnchorX = 952
    end
    object dblEmployeePosition: TcxDBLabel [3]
      Left = 914
      Top = 289
      AutoSize = True
      DataBinding.DataField = 'Title'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      Transparent = True
      AnchorX = 952
    end
    object dblEmployeeHireDate: TcxDBLabel [4]
      Left = 907
      Top = 355
      DataBinding.DataField = 'HireDate'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 143
      AnchorY = 366
    end
    object dblEmployeeBirthday: TcxDBLabel [5]
      Left = 907
      Top = 382
      DataBinding.DataField = 'BirthDate'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 143
      AnchorY = 393
    end
    object dblEmployeeCity: TcxDBLabel [6]
      Left = 907
      Top = 593
      DataBinding.DataField = 'Address_City'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 143
      AnchorY = 604
    end
    object dblEmployeeHome: TcxDBLabel [7]
      Left = 907
      Top = 452
      DataBinding.DataField = 'HomePhone'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 121
      AnchorY = 463
    end
    object dblEmployeeMobile: TcxDBLabel [8]
      Left = 907
      Top = 479
      DataBinding.DataField = 'MobilePhone'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Transparent = True
      Height = 21
      Width = 121
      AnchorY = 490
    end
    object dxNavBar1: TdxNavBar [9]
      Left = 0
      Top = 105
      Width = 247
      Height = 554
      Color = 16053234
      ActiveGroupIndex = 0
      TabOrder = 0
      TabStop = True
      Cursors.DragCursor = crDefault
      Cursors.DragCopyCursor = crDefault
      Cursors.HotTrackedLinkCursor = crDefault
      View = 21
      OptionsBehavior.Common.AllowChildGroups = True
      OptionsBehavior.Common.AllowExpandAnimation = True
      OptionsBehavior.Common.AllowSelectLinks = True
      OptionsBehavior.Common.DragDropFlags = []
      OptionsBehavior.Common.EachGroupHasSelectedLink = True
      OptionsImage.SmallImages = ilMedium
      OnCustomDraw.LinkSelection = dxNavBar1OnCustomDrawLinkSelection
      OnGetOverlaySize = dxNavBar1GetOverlaySize
      object nbgContact: TdxNavBarGroup
        Caption = 'Contact'
        SelectedLinkIndex = -1
        SmallImageIndex = 1
        TopVisibleLinkIndex = 0
        OnClick = nbgContactClick
        OnSelectedLinkChanged = nbgContactSelectedLinkChanged
        Links = <
          item
            Item = nbiNewContact
            Position = 0
          end>
        ParentGroupIndex = -1
        Position = 0
      end
      object nbgSheduler: TdxNavBarGroup
        Caption = 'Sheduler'
        SelectedLinkIndex = -1
        SmallImageIndex = 2
        TopVisibleLinkIndex = 0
        OnClick = nbgShedulerClick
        OnSelectedLinkChanged = nbgShedulerSelectedLinkChanged
        Links = <
          item
            Item = nbiSchedulerNewEvent
            Position = 0
          end>
        ParentGroupIndex = -1
        Position = 1
      end
      object nbgMail: TdxNavBarGroup
        Caption = 'Mail'
        SelectedLinkIndex = -1
        SmallImageIndex = 6
        TopVisibleLinkIndex = 0
        OnClick = nbgMailClick
        OnSelectedLinkChanged = nbgMailSelectedLinkChanged
        Links = <
          item
            Item = nbiMailNew
            Position = 0
          end>
        ParentGroupIndex = -1
        Position = 2
      end
      object nbgSettings: TdxNavBarGroup
        Align = vaBottom
        Caption = 'Settings'
        SelectedLinkIndex = -1
        ShowCaption = False
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = dxNavBar1Item4
            Position = 0
          end>
        ParentGroupIndex = -1
        Position = 3
      end
      object Contacts: TdxNavBarGroup
        Caption = 'Contacts'
        SelectedLinkIndex = -1
        SmallImageIndex = 3
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <>
        ParentGroupIndex = 0
        Position = 1
      end
      object nbgFilterContacts: TdxNavBarGroup
        Caption = 'Filter Contact list'
        SelectedLinkIndex = -1
        SmallImageIndex = 0
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = nbiFilterContactsAll
            Position = 0
          end
          item
            Item = nbiFilterContactsSales
            Position = 1
          end
          item
            Item = nbiFilterContactsSupport
            Position = 4
          end
          item
            Item = nbiFilterContactsShipping
            Position = 3
          end
          item
            Item = nbiFilterContactsEngineering
            Position = 2
          end
          item
            Item = nbiFilterContactsHumanResources
            Position = 5
          end
          item
            Item = nbiFilterContactsManagement
            Position = 6
          end
          item
            Item = nbiFilterContactsIT
            Position = 7
          end>
        ParentGroupIndex = 0
        Position = 2
      end
      object nbgDevExpressAccount: TdxNavBarGroup
        Caption = 'Devexpress'
        SelectedLinkIndex = -1
        SmallImageIndex = 4
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = nbiSchedulerCalendar
            Position = 1
          end
          item
            Item = nbiSchedulerBithDate
            Position = 0
          end>
        ParentGroupIndex = 1
        Position = 1
      end
      object nbgMicrosoftAccount: TdxNavBarGroup
        Caption = 'Microsoft account'
        SelectedLinkIndex = -1
        SmallImageIndex = 7
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = nbiSchedulerMSCalendar
            Position = 0
          end>
        ParentGroupIndex = 1
        Position = 2
      end
      object nbgAccount: TdxNavBarGroup
        Caption = 'Account'
        SelectedLinkIndex = -1
        SmallImageIndex = 1
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = nbiMailAccount1
            Position = 0
          end
          item
            Item = nbiMailAccount2
            Position = 1
          end
          item
            Item = nbiMailAccount3
            Position = 2
          end>
        ParentGroupIndex = 2
        Position = 1
      end
      object nbgFilterMailList: TdxNavBarGroup
        Caption = 'Filter Mail list'
        SelectedLinkIndex = -1
        SmallImageIndex = 5
        TopVisibleLinkIndex = 0
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = nbiFileterMailAll
            Position = 0
          end
          item
            Item = nbiFileterMailRead
            Position = 1
          end
          item
            Item = nbiFileterMailToday
            Position = 2
          end
          item
            Item = nbiFileterMailYesterday
            Position = 3
          end
          item
            Item = nbiFileterMailImportance
            Position = 4
          end>
        ParentGroupIndex = 2
        Position = 2
      end
      object dxNavBar1Group1: TdxNavBarGroup
        Caption = 'dxNavBar1Group1'
        SelectedLinkIndex = -1
        ShowCaption = False
        TopVisibleLinkIndex = 0
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
        ParentGroupIndex = 4
        Position = 0
      end
      object nbInplaceManageAccounts: TdxNavBarItem
        Caption = 'Manage accounts'
      end
      object nbInplacePersonalization: TdxNavBarItem
        Caption = 'Personalization'
      end
      object nbInplaceAutomaticReplies: TdxNavBarItem
        Caption = 'Automatic replies'
      end
      object nbInplaceFocusedInbox: TdxNavBarItem
        Caption = 'Focused inbox'
      end
      object nbInplaceMessageList: TdxNavBarItem
        Caption = 'Message list'
      end
      object nbInplaceReadingPane: TdxNavBarItem
        Caption = 'Reading pane'
      end
      object nbInplaceSingature: TdxNavBarItem
        Caption = 'Singature'
      end
      object nbInplaceNotifications: TdxNavBarItem
        Caption = 'Notifications'
      end
      object nbInplaceAbout: TdxNavBarItem
        Caption = 'About'
      end
      object nbiNewContact: TdxNavBarItem
        Caption = 'New Contact'
        SmallImageIndex = 8
      end
      object nbiFilterContactsAll: TdxNavBarItem
        Caption = 'All'
        OnClick = nbiFilterContactsAllClick
      end
      object nbiFilterContactsSales: TdxNavBarItem
        Caption = 'Sales'
        OnClick = nbiFilterContactsSalesClick
      end
      object nbiFilterContactsSupport: TdxNavBarItem
        Caption = 'Support'
        OnClick = nbiFilterContactsSupportClick
      end
      object nbiFilterContactsShipping: TdxNavBarItem
        Caption = 'Shipping'
        OnClick = nbiFilterContactsShippingClick
      end
      object nbiFilterContactsEngineering: TdxNavBarItem
        Caption = 'Engineering'
        OnClick = nbiFilterContactsEngineeringClick
      end
      object nbiFilterContactsHumanResources: TdxNavBarItem
        Caption = 'Human Resources'
        OnClick = nbiFilterContactsHumanResourcesClick
      end
      object nbiFilterContactsManagement: TdxNavBarItem
        Caption = 'Management'
        OnClick = nbiFilterContactsManagementClick
      end
      object nbiFilterContactsIT: TdxNavBarItem
        Caption = 'IT'
        OnClick = nbiFilterContactsITClick
      end
      object nbiSchedulerNewEvent: TdxNavBarItem
        Caption = 'New Event'
        SmallImageIndex = 8
        OnClick = nbiSchedulerNewEventClick
      end
      object nbiSchedulerCalendar: TdxNavBarItem
        Caption = 'Calendar'
      end
      object nbiSchedulerBithDate: TdxNavBarItem
        Caption = 'Birth Date'
      end
      object nbiSchedulerMSCalendar: TdxNavBarItem
        Caption = 'Calendar'
      end
      object nbiMailNew: TdxNavBarItem
        Caption = 'New mail'
        SmallImageIndex = 8
      end
      object nbiMailAccount1: TdxNavBarItem
        Caption = 'john@devav.com'
      end
      object nbiMailAccount2: TdxNavBarItem
        Caption = 'connect@devav.com'
      end
      object nbiMailAccount3: TdxNavBarItem
        Caption = 'support@devav.com'
      end
      object nbiFileterMailAll: TdxNavBarItem
        Caption = 'All'
        OnClick = nbiFileterMailAllClick
      end
      object nbiFileterMailRead: TdxNavBarItem
        Caption = 'Read'
        OnClick = nbiFileterMailReadClick
      end
      object nbiFileterMailToday: TdxNavBarItem
        Caption = 'Today'
        OnClick = nbiFileterMailTodayClick
      end
      object nbiFileterMailYesterday: TdxNavBarItem
        Caption = 'Yesterday'
        OnClick = nbiFileterMailYesterdayClick
      end
      object nbiFileterMailImportance: TdxNavBarItem
        Caption = 'Importance'
        OnClick = nbiFileterMailImportanceClick
      end
      object dxNavBar1Item1: TdxNavBarItem
        Caption = 'Skype'
      end
      object dxNavBar1Item2: TdxNavBarItem
        Caption = 'Microsoft'
      end
      object dxNavBar1Item3: TdxNavBarItem
        Caption = 'DevExpress'
      end
      object dxNavBar1Item4: TdxNavBarItem
        Caption = 'Settings'
        SmallImageIndex = 10
        OnClick = dxNavBar1Item4Click
      end
      object dxNavBar1Group1Control: TdxNavBarGroupControl
        Left = 1
        Top = 107
        Width = 245
        Height = 119
        TabOrder = 0
        UseStyle = True
        GroupIndex = 10
        OriginalHeight = 119
        object lcContacs: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 245
          Height = 119
          Align = alClient
          ParentBackground = True
          TabOrder = 0
          Transparent = True
          LayoutLookAndFeel = dxLayoutCxLookAndFeel1
          object lcContacsGroup_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = dxLayoutCxLookAndFeel2
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutCheckBoxItem1: TdxLayoutCheckBoxItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            LayoutLookAndFeel = dxLayoutCxLookAndFeel2
            CaptionOptions.Text = 'Skype'
            CaptionOptions.Layout = clLeft
            Index = 0
          end
          object dxLayoutCheckBoxItem2: TdxLayoutCheckBoxItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            LayoutLookAndFeel = dxLayoutCxLookAndFeel2
            CaptionOptions.Text = 'Microsoft'
            CaptionOptions.Layout = clLeft
            Index = 1
          end
          object dxLayoutCheckBoxItem3: TdxLayoutCheckBoxItem
            Parent = dxLayoutAutoCreatedGroup2
            AlignHorz = ahClient
            LayoutLookAndFeel = dxLayoutCxLookAndFeel2
            CaptionOptions.Text = 'DevExpress'
            CaptionOptions.Layout = clLeft
            Index = 2
          end
          object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
            Parent = lcContacsGroup_Root
            SizeOptions.Height = 10
            SizeOptions.Width = 30
            CaptionOptions.Text = 'Empty Space Item'
            Index = 0
          end
          object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
            Parent = lcContacsGroup_Root
            AlignHorz = ahClient
            Index = 1
          end
        end
      end
    end
    object grMain: TcxGrid [10]
      Left = 10000
      Top = 10000
      Width = 416
      Height = 532
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      Visible = False
      object tvMain: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        ScrollbarAnnotations.CustomAnnotations = <>
        OnFocusedRecordChanged = tvMainFocusedRecordChanged
        DataController.DataSource = DataModule2.dsMails
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.KeyFieldNames = 'ID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = dbcPriority
              end
              item
                Column = dbcSubject
              end
              item
                Column = dbcIsUnread
              end
              item
                Column = dbcFrom
              end
              item
                Column = dbcAttachment
              end
              item
                Column = dbcDateOnly
              end>
            SummaryItems = <
              item
                Format = '# messages'
                Kind = skCount
              end>
          end>
        DataController.OnGroupingChanged = tvMainDataControllerGroupingChanged
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfMonths]
        DateTimeHandling.IgnoreTimeForFiltering = True
        DateTimeHandling.Grouping = dtgByDate
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glHorizontal
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        Preview.MaxLineCount = 1
        object dbcFrom: TcxGridDBColumn
          DataBinding.FieldName = 'From'
          Visible = False
          Width = 160
        end
        object dbcSubject: TcxGridDBColumn
          DataBinding.FieldName = 'Subject'
          Options.FilteringPopupIncrementalFiltering = True
          Width = 241
        end
        object dbcID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object dbcBoxID: TcxGridDBColumn
          DataBinding.FieldName = 'BoxID'
          Visible = False
          Width = 32
        end
        object dbcPriority: TcxGridDBColumn
          DataBinding.FieldName = 'Priority'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.DropDownRows = 3
          Properties.Items = <>
          RepositoryItem = DataModule2.edrepMainImagesPriority
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            610000000467414D410000B18F0BFC6105000000097048597300000EC200000E
            C20115284A800000001A74455874536F667477617265005061696E742E4E4554
            2076332E352E313030F472A10000006A49444154384FDDD2410A80201046616B
            51F7F2FE771A1BF0171B5F98B46BF151BC41412B99D9CC06ADC1F8C2AEF738B8
            C9395F0F9E0946E78B25CE7A18DD0F367075F1D9B708A3D40D3EFF07ED9B138C
            323BBFC3E87481B34D304A588C773184551857607C708CCD52018DEBE4D3A23B
            6B880000000049454E44AE426082}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 25
          Options.HorzSizing = False
          Options.ShowCaption = False
          Options.SortByDisplayText = isbtOff
          Width = 25
        end
        object dbcAttachment: TcxGridDBColumn
          Caption = 'Attachment'
          DataBinding.FieldName = 'IsAttachment'
          Visible = False
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
            00097048597300000EC300000EC301C76FA8640000016349444154384F63A015
            608AEDDAE0923061CFE9A449FBFFC703E9A8F60D2E207188346EC008C4CC40CC
            1AD7BBEB4570E3724F209B2DB876B9676CF78E1740360B10E3052CD1DD3BFF03
            69AEA8AE1D209A032406A223DAB782F86C408C17B085B76E0129E40D6BD904A2
            79429A3782E9E0C60D209A1D88F102F6A0867520857C01756BC1B47FCD1A10CD
            EF5BBD1A44835C8417B0FB54AE046BF0AE5801A2053CCB9681698FD2254419C0
            619E3819ACC12C61128816348D9B08A64D622780684E20C60B38A10A058D63FA
            41B49851349816328CEA03D15C408C17701A4482150AE88674EED58BE8F9AF13
            DCB117C817D409EB26CE009DB0AE37F2E6B19A203610833470499885686906B5
            BF81F2F1025655DFFA091AFECDFBA44CC3D5807C1E10ADEAD3B04FC9BB760A90
            4F301D30092A19F32B7BD54C57F66B7AA5E2D7F25FD9B7E9958247F5747E797D
            01903C44197E005204B2891B8879A034280111A599DE8081010001266D57824D
            ED440000000049454E44AE426082}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 25
          Options.HorzSizing = False
          Options.ShowCaption = False
          Options.SortByDisplayText = isbtOff
          Width = 25
        end
        object dbcIsUnread: TcxGridDBColumn
          DataBinding.FieldName = 'IsUnread'
          PropertiesClassName = 'TcxTextEditProperties'
          Visible = False
          HeaderGlyph.SourceDPI = 96
          HeaderGlyph.Data = {
            89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
            61000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
            00097048597300000EC300000EC301C76FA8640000001A74455874536F667477
            617265005061696E742E4E45542076332E352E313030F472A10000006F494441
            54384FBDD0410E80200C0440EA41FFD5FFFFA9D204C8961615341E26C0D2ACC4
            2422AF84E10C1730B344FAB9CA05D1F055890B4605B8227350A3028477665045
            05E8F7822DA3EC2867EAEEA96E9A9517EC189401FD6ACB505460ACBCC0F8A4E0
            4E99D51FEC0B6685E173924E1113CC74E80797C90000000049454E44AE426082}
          HeaderGlyphAlignmentHorz = taCenter
          MinWidth = 35
          Options.HorzSizing = False
          Options.ShowCaption = False
          Options.SortByDisplayText = isbtOff
          Width = 35
        end
        object dbcContentFileName: TcxGridDBColumn
          DataBinding.FieldName = 'FileName'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object dbcAttachmentID: TcxGridDBColumn
          DataBinding.FieldName = 'AttachmentID'
          Visible = False
        end
        object dbcIsAttachment: TcxGridDBColumn
          DataBinding.FieldName = 'IsAttachment'
          Visible = False
        end
        object dbcContent: TcxGridDBColumn
          DataBinding.FieldName = 'Content'
          PropertiesClassName = 'TcxRichEditProperties'
          Properties.ReadOnly = True
          Properties.VisibleLineCount = 1
          Visible = False
        end
        object dbcDateOnly: TcxGridDBColumn
          DataBinding.FieldName = 'DateOnly'
          PropertiesClassName = 'TcxDateEditProperties'
          OnGetFilterValues = dbcDateOnlyGetFilterValues
          DateTimeGrouping = dtgRelativeToToday
          GroupIndex = 0
          SortIndex = 0
          SortOrder = soDescending
          Width = 76
        end
        object dbcDate: TcxGridDBColumn
          DataBinding.FieldName = 'Date'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.ShowTime = False
          DateTimeGrouping = dtgRelativeToToday
          Width = 88
        end
      end
      object grMainLevel1: TcxGridLevel
        GridView = tvMain
      end
    end
    object cxreMain: TcxRichEdit [11]
      Left = 10000
      Top = 10000
      Properties.AllowObjects = True
      Properties.AutoURLDetect = True
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Visible = False
      Height = 435
      Width = 400
    end
    object lblSubject: TcxLabel [12]
      Left = 10000
      Top = 10000
      Caption = 'Subject'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      Transparent = True
      Visible = False
      Width = 400
    end
    object Scheduler: TcxScheduler [13]
      Left = 10000
      Top = 10000
      Width = 822
      Height = 532
      DateNavigator.Visible = False
      ViewAgenda.ShowLocations = False
      ViewWeeks.Active = True
      ControlBox.Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      OptionsView.GroupingKind = gkNone
      OptionsView.ShowEventsWithoutResource = True
      OptionsView.ViewPosition = vpRight
      Storage = DataModule2.SchedulerUnboundStorage
      TabOrder = 13
      Visible = False
      Selection = 119
      Splitters = {
        010000007E000000900000008300000090000000010000009500000071020000}
      StoredClientBounds = {01000000010000003503000013020000}
    end
    object flEMail: TdxFormattedLabel [14]
      Left = 907
      Top = 506
      Caption = 'flEMail'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    object flSkype: TdxFormattedLabel [15]
      Left = 907
      Top = 528
      Caption = 'Skype'
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
    end
    object cxDBLabel1: TcxDBLabel [16]
      Left = 907
      Top = 620
      DataBinding.DataField = 'Address_ZipCode'
      DataBinding.DataSource = DataModule2.dsEmployees
      Properties.Alignment.Vert = taVCenter
      Style.HotTrack = False
      Style.TransparentBorder = False
      Transparent = True
      Height = 21
      Width = 143
      AnchorY = 631
    end
    inherited lcMainGroup_Root: TdxLayoutGroup
      ItemIndex = 3
    end
    inherited lgMainGroup: TdxLayoutGroup
      Parent = lgContentCenter
      LayoutLookAndFeel = dxMainCxLookAndFeel1
      LayoutDirection = ldTabbed
      Padding.AssignedValues = [lpavLeft]
      TabbedOptions.HideTabs = True
      Index = 1
    end
    inherited lgTools: TdxLayoutGroup
      Index = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      Index = 3
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.MinWidth = 400
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 590
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgContact: TdxLayoutGroup
      Parent = lgMainGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lgScheduler: TdxLayoutGroup
      Parent = lgMainGroup
      CaptionOptions.Text = 'New Group'
      Index = 1
    end
    object lgEmployee: TdxLayoutGroup
      Parent = lgEmployeeInfo
      CaptionOptions.Text = 'Employee'
      Index = 0
    end
    object liImage: TdxLayoutItem
      Parent = lgEmployee
      CaptionOptions.Visible = False
      Control = cxDBImage1
      ControlOptions.OriginalHeight = 110
      ControlOptions.OriginalWidth = 195
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liName: TdxLayoutItem
      Parent = lgEmployee
      AlignHorz = ahCenter
      CaptionOptions.Visible = False
      Control = dblEmployeeName
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 96
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liPosition: TdxLayoutItem
      Parent = lgEmployee
      AlignHorz = ahCenter
      CaptionOptions.Visible = False
      Control = dblEmployeePosition
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 76
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lgEmployeeInfo: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      Hidden = True
      ItemIndex = 2
      ScrollOptions.Vertical = smIndependent
      ShowBorder = False
      Index = 1
    end
    object lgEmployeeDetails: TdxLayoutGroup
      Parent = lgEmployeeInfo
      CaptionOptions.Text = 'Info'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgEmployeeDetails
      CaptionOptions.Text = 'Hire Date'
      Control = dblEmployeeHireDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgEmployeeDetails
      CaptionOptions.Text = 'Birth Date'
      Control = dblEmployeeBirthday
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgEmployeeContact: TdxLayoutGroup
      Parent = lgEmployeeInfo
      CaptionOptions.Text = 'Contact'
      ItemIndex = 3
      Index = 2
    end
    object liEmployeeCity: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'City'
      Control = dblEmployeeCity
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liEmployeeHome: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahClient
      CaptionOptions.Text = 'Home'
      Control = dblEmployeeHome
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liEmployeeMobile: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      CaptionOptions.Text = 'Mobile'
      Control = dblEmployeeMobile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liLeftMenu: TdxLayoutItem
      Parent = lgContentCenter
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = dxNavBar1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 247
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgContentCenter: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgContact
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lgMail: TdxLayoutGroup
      Parent = lgMainGroup
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grMain
      ControlOptions.MinWidth = 400
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 700
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxreMain
      ControlOptions.OriginalHeight = 451
      ControlOptions.OriginalWidth = 400
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ScrollOptions.Vertical = smIndependent
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      Control = lblSubject
      ControlOptions.OriginalHeight = 29
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Index = 4
    end
    object liFrom: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'From:'
      Index = 2
    end
    object liDate: TdxLayoutLabeledItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Date:'
      Index = 3
    end
    object liSpace: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lgMail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgScheduler
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = Scheduler
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 596
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgTopMenu: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dxLayoutStandardLookAndFeel1
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object liTopMenu: TdxLayoutItem
      Parent = lgTopMenu
      AlignHorz = ahLeft
      CaptionOptions.Text = 'TopMenu'
      Index = 0
    end
    object dxLayoutImageItem1: TdxLayoutImageItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000C744558745469746C6500536B7970653B362A4F420000010C494441
        54785EA593C166C450188543E9AA64D555E82A8450BA1A4A28A5DB5995CABCC1
        50BAEA2ADB798359CD030CA164356FD0C718BA0A430921848ED69D7339E1F8D5
        6498C517F7E63FF9AE7BFF9B20CF734F044A509392EF826338E7023F4840039C
        E10F380A3FC0EDBF0216DD09FC80025C58416B823D78972DDCF0C35FD6976382
        5706A60CC79C1792C95450194142C196F36FF008169259AB201D0E8CBC501082
        3917E8CC22B50A3C7B29B622D1367F4A666F05B514BF2869C0064C98894D8B53
        15ACA5780D9E64BE65E6CA6CA352412685074A9FC10ADC733E33824E059E150B
        0D5B19CA61BE817E4C700916726146902D18EE78BD77FA4F181A3DC4312211EE
        388E8636FAC7591C00FEC9C5C402868BAE0000000049454E44AE426082}
      Index = 1
    end
    object dxLayoutImageItem2: TdxLayoutImageItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000010744558745469746C65004D61696C3B506F73743BAC0E6BE3000000
        6549444154785ECDD3B10DC0200C05D10C1029F37999ACF52B76620307451496
        AEF8113429AEB0B05FC791995BED0311D146B9507B81395C237D0434F7B30272
        08F72AE011BE132062700244381B00C85D310F1039EBB1075807EC00E6012D02
        DAFE0BFF001E28F84C79EE2AA9450000000049454E44AE426082}
      Index = 1
    end
    object dxLayoutImageItem3: TdxLayoutImageItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avCenter
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000018744558745469746C65004D6F62696C6550686F6E653B50686F6E65
        3B0D362CBB0000004049444154785EED91310A00200C03FBCDBCB4936F8B8B83
        1924A8E8A2C3D1251C2909920200366280E4CF080C6557C0E51726045FE0B839
        A3DE871AA411649FAF20BC46CAB36BF8350000000049454E44AE426082}
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = lgEmployeeContact
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutImageItem4: TdxLayoutImageItem
      Parent = dxLayoutAutoCreatedGroup5
      AlignVert = avCenter
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000016744558745469746C650050686F6E653B486F6D6550686F6E653B82
        59023B0000009E49444154785EA5D2310A02311085E1C09E41F030B67B885C26
        10B05D107209C1CA5358B8E0313C405A61F6051C188657EC68F12755BE623229
        E73C2A48BE77DA9B8824FB582B51404825027C181201DE04A81160658F23C062
        80E72FBF70324047C72830A19741AE516034BB399C1D40974D01EDE2901B3A20
        BA6C0C98D0DD211D3D90908A021E6948F6A4006B768365550250A8A1D56D6CD5
        198CE3AF36B38B9D92388E6F960000000049454E44AE426082}
      Index = 1
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = lgEmployeeContact
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgEmployeeInfo
      AlignVert = avClient
      CaptionOptions.Text = 'Address'
      ItemIndex = 1
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = 'E- Mail'
      Control = flEMail
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = lgEmployeeContact
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Skype'
      Control = flSkype
      ControlOptions.OriginalHeight = 13
      ControlOptions.OriginalWidth = 89
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lgEmployeeContact
      AlignHorz = ahClient
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'ZIP'
      Control = cxDBLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 143
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object cxGroupBox2: TcxGroupBox [1]
    Left = 440
    Top = 155
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    Style.TransparentBorder = False
    TabOrder = 1
    Visible = False
    Height = 398
    Width = 281
    object dxNavBarSettings: TdxNavBar
      Left = 0
      Top = 0
      Width = 281
      Height = 398
      Align = alClient
      ActiveGroupIndex = 0
      TabOrder = 0
      View = 20
      OptionsView.HamburgerMenu.NavigationPaneMode = npmNone
      OptionsView.HamburgerMenu.ShowHeader = False
      object dxNavBarSettingsGroup1: TdxNavBarGroup
        Caption = 'Settings'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsExpansion.Expandable = False
        OptionsExpansion.ShowExpandButton = False
        Links = <
          item
            Item = dxNavBarSettingsItem9
          end
          item
            Item = dxNavBarSettingsItem8
          end
          item
            Item = dxNavBarSettingsItem7
          end
          item
            Item = dxNavBarSettingsItem6
          end
          item
            Item = dxNavBarSettingsItem5
          end
          item
            Item = dxNavBarSettingsItem4
          end
          item
            Item = dxNavBarSettingsItem3
          end
          item
            Item = dxNavBarSettingsItem2
          end
          item
            Item = dxNavBarSettingsItem1
          end>
      end
      object dxNavBarSettingsItem1: TdxNavBarItem
        Caption = 'Manage accounts'
      end
      object dxNavBarSettingsItem2: TdxNavBarItem
        Caption = 'Personalization'
      end
      object dxNavBarSettingsItem3: TdxNavBarItem
        Caption = 'Automatic replies'
      end
      object dxNavBarSettingsItem4: TdxNavBarItem
        Caption = 'Focused inbox'
      end
      object dxNavBarSettingsItem5: TdxNavBarItem
        Caption = 'Message list'
      end
      object dxNavBarSettingsItem6: TdxNavBarItem
        Caption = 'Reading pane'
      end
      object dxNavBarSettingsItem7: TdxNavBarItem
        Caption = 'Singature'
      end
      object dxNavBarSettingsItem8: TdxNavBarItem
        Caption = 'Notifications'
      end
      object dxNavBarSettingsItem9: TdxNavBarItem
        Caption = 'About'
      end
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 472
    Top = 520
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      Offsets.RootItemsAreaOffsetHorz = 0
      Offsets.RootItemsAreaOffsetVert = 0
      PixelsPerInch = 96
    end
  end
  object ilMedium: TcxImageList
    SourceDPI = 96
    Height = 24
    Width = 24
    FormatVersion = 1
    Left = 280
    Top = 576
    Bitmap = {
      494C01010B001800040018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A4D484848CC1515156E000000000000
      00000000000000000000131313684A4A4ACE0B0B0B5200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000B2E2E2EA2595959E219191979676767F32323238F1212
      1266121212662121218A6D6D6DFB1C1C1C804E4E4ED4303030A7000000110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F5D606060EB0000000E000000000303032F363636B12929
      299928282899393939B60707074300000000000000064B4B4BD1131313690000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000626262EE00000013000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B6A6A6AF70000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020224717171FE010101190000000000000000000000000000
      00000000000000000000000000000000000000000005656565F10303032F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA1515156E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111166373737B20000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000585858E10B0B0B520000000000000000000000000000
      00000000000000000000000000000000000003030330616161EC000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000020202235B5B5BE51515156E0000001300000000000000000000
      000000000000000000000000000000000012131313695C5C5CE6020202280000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000007070742525252DA000000080000000000000000000000130E0E
      0E5B0E0E0E5D00000015000000000000000000000001404040C00E0E0E5B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020223323232AA636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF646464F0343434AD02020227000000000000
      0000000000000000000000000000000000000000000000000000000000001717
      1773474747CA696969F60F0F0F5F0000000000000000040404345F5F5FEA3434
      34AD323232AB606060EB0505053A0000000000000000070707436A6A6AF75C5C
      5CE5252525920000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006F6F
      6FFC1414146C01010118000000000000000000000000444444C6101010600000
      0000000000000D0D0D584A4A4ACE000000000000000000000000000000101111
      1165717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020228363636B26A6A
      6AF76B6B6BF8393939B50303032C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000696969F60000000B0000
      00000000000000000003707070FE000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202275C5C5CE6121212660000
      000B0000000A101010615C5C5CE60303032C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FE0606063D000000010000000000000000000000004E4E4ED4080808450000
      0000000000000606063D545454DC000000000000000000000000000000020606
      063F717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343434AD13131369000000000000
      0000000000000000000010101061393939B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A9C6A6A6AF7575757DF0505053600000000000000000A0A0A4D606060EB1D1D
      1D821C1C1C7F5E5E5EE90B0B0B530000000000000000070707405A5A5AE36767
      67F32E2E2EA30000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000646464F000000012000000000000
      000000000000000000000000000A6B6B6BF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000917171775393939B60000000100000000000000000303032F1F1F
      1F862020208804040432000000000000000000000001404040BF1414146C0000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262EE00000013000000000000
      000000000000000000000000000B6A6A6AF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000025A5A5AE40A0A0A4D0000000000000000000000000000
      000000000000000000000000000000000000080808455F5F5FEA000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA1515156E000000000000
      0000000000000000000011111166373737B20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101196F6F6FFD020202250000000000000000000000000000
      0000000000000000000000000000000000000101011C717171FE010101200000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202235B5B5BE51515156E0000
      001300000012131313695C5C5CE6020202280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E5C606060EC0000000200000000000000171F1F1F871414
      146D1414146C1F1F1F870101011A0000000000000001595959E3111111650000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020223323232AA6363
      63EE646464F0343434AD02020227000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000016424242C4434343C40A0A0A4E585858E13A3A3AB72525
      259225252593383838B45C5C5CE50B0B0B4F3F3F3FBF494949CD0101011D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000010E0E0E5C5C5C5CE62929299A000000030000
      0000000000000000000224242491696969F61B1B1B7D00000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40C1717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4A4A4ACF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006565
      65F1717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000014070707401414146B272727964141
      41C2616161EC0000000000000000000000000000000000000000000000001919
      197A717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000101010121000000001111
      1166242424913E3E3EBD5E5E5EE8717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      00053E3E3EBD717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000101
      011908080845161616712A2A2A9C464646C8666666F3717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000012505050D7717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000101011D555555DD717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000000000000101011B4D4D4DD2717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000002
      04230000000000000000000000000000000E363636B2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001967
      C4E50104072E00000000000000000000000000000001161616726A6A6AF77171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000000000000000000B2D2D
      2DA12F2F2FA50000000D00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1C73DBF2030C185100000000000000000000000000000000020202273D3D
      3DBC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000000000000303032C484848CB0F0F
      0F5E0E0E0E5A484848CC0303032F000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F80F2FE0B2C54960000000C0000000000000000000000000000
      00000909094A474747CA717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000010101062464646C9020202290000
      00000000000002020227454545C8111111660000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1864BDE1030E1B5600000001000000000000
      0000000000000000000007070741313131A86A6A6AF7717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000B2D2D2DA12A2A2A9D0000000A000000000000
      0000000000000000000000000009292929992F2F2FA50000000D000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF13519ACB030C174F0000
      0002000000000000000000000000000000000000000E0D0D0D592D2D2DA15757
      57DF717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000303032C484848CB0F0F0F5E0000000000000000000000000000
      0000000000000000000000000000000000000E0E0E5A484848CC0303032F0000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1860
      B6DC071D377A0001031F00000000000000000000000000000000000000000000
      0000000000160000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000050505367171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000007171
      71FF10101062464646C902020229000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020227454545C81111
      1166717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F80F2FE14539DCD082243850209124700000111000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000000000003A3A3AB82B2B
      2B9E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF2A2A2A9D0000000A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000092929
      2999717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F80F2FE1863BDE01043
      80B9082343860000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF5A5A5AE40101
      0119000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000000000
      00110606063D1313136926262694404040C0606060EC717171FF000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010118000000000F0F
      0F5D20202089383838B4575757DF717171FE717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000001043
      80B91F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81F4FF1F81
      F4FF12488AC00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D05050537101010622222228E3C3C
      3CBA5A5A5AE40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000484848CC717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004848
      48CC717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF4E4E4ED40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000626262EE00000013000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000B6A6A6AF70000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF0000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000006262
      62EE000000130000000000000000000000000000000000000000000000000000
      0010696969F60000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF00000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000323232AA1515156E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000011111166373737B20000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000003232
      32AA1515156E0000000000000000000000000000000000000000000000001515
      1570717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF00000000606060EC0101011D0000
      00000000000000000000000000000000000000000015676767F4000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000020202235B5B5BE51515156E0000001300000000000000000000
      000000000000000000000000000000000012131313695C5C5CE6020202280000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000202
      02235B5B5BE51515156E00000013000000000000000000000013151515706B6B
      6BF90303032B0000000000000000000000000000000000000000000000000000
      000B6A6A6AF70000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000024242491393939B50101
      011C0000000000000000000000000101011A353535AF29292999000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020223323232AA636363EE717171FF717171FF7171
      71FF717171FF717171FF717171FF646464F0343434AD02020227000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000717171FF717171FF00000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000002020223323232AA636363EE717171FF717171FF626262EE303030A73F3F
      3FBE1414146B0000000000000000000000000000000000000000000000001111
      1166373737B20000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000007242424916161
      61EC717171FF717171FF717171FF626262ED2727279600000009000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02235B5B5BE51616167200000014000000000000000000000012131313695C5C
      5CE6020202280000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020228363636B26A6A
      6AF76B6B6BF8393939B50303032C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000929292999676767F4696969F52B2B2B9E0000000B0000
      000001010122323232A9626262EE717171FF717171FF646464F0343434AD0202
      0227000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000202
      0225454545C86F6F6FFD484848CB020202290000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202275C5C5CE6121212660000
      000B0000000A101010615C5C5CE60303032C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000717171FF717171FF000000007171
      71FF717171FF00000000717171FF717171FF00000000717171FF717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000027272796353535AF0000001400000012323232A92B2B2B9E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000004242
      42C3191919790000000516161672484848CB0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000343434AD13131369000000000000
      0000000000000000000010101061393939B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      000000000000626262EE0101011A000000000000000000000013696969F50000
      0000000000000000000929292999676767F4696969F52B2B2B9E0000000B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000006868
      68F60000000D00000000000000056F6F6FFD0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000646464F000000012000000000000
      000000000000000000000000000A6B6B6BF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      000000000000606060EC0101011D000000000000000000000015676767F40000
      00000000000027272796353535AF0000001400000012323232A92B2B2B9E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000004040
      40C01C1C1C800000000D19191979454545C80000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000626262EE00000013000000000000
      000000000000000000000000000B6A6A6AF70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000024242491393939B50101011C0101011A353535AF292929990000
      000000000000626262EE0101011A000000000000000000000013696969F50000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000101
      0121404040C0696969F5424242C3020202250000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000323232AA1515156E000000000000
      0000000000000000000011111166373737B20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000724242491616161EC626262ED27272796000000090000
      000000000000606060EC0101011D000000000000000000000015676767F40000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202235B5B5BE51515156E0000
      001300000012131313695C5C5CE6020202280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000024242491393939B50101011C0101011A353535AF292929990000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020223323232AA6363
      63EE646464F0343434AD02020227000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004343
      43C4717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF484848CC0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000724242491616161EC626262ED27272796000000090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000434343C4717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000480000000100010000000000600300000000000000000000
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
      000000000000}
    DesignInfo = 37749016
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31392C33483543342E342C332C342C332E342C342C3476313663302C30
          2E362C302E342C312C312C316831683168313263302E362C302C312D302E342C
          312D3156344332302C332E342C31392E362C332C31392C337A204D352C323056
          34683276313648357A2020204D31392C3230483856346831315632307A222066
          696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C
          7061746820643D224D31332E352C374331322E312C372C31312C382E312C3131
          2C392E3573312E312C322E352C322E352C322E355331362C31302E392C31362C
          392E355331342E392C372C31332E352C377A204D31332E352C31312020632D30
          2E382C302D312E352D302E372D312E352D312E355331322E372C382C31332E35
          2C385331352C382E372C31352C392E355331342E332C31312C31332E352C3131
          7A222066696C6C3D22233732373237322220636C6173733D22426C61636B222F
          3E0D0A3C7061746820643D224D31352C3133682D33632D312E372C302D332C31
          2E332D332C3376316839762D314331382C31342E332C31362E372C31332C3135
          2C31337A204D31302C313663302D312E312C302E392D322C322D32683363312E
          312C302C322C302E392C322C324831307A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302C35682D335633682D3176324838563348377632483443332E342C
          352C332C352E342C332C3676313463302C302E362C302E342C312C312C316831
          3663302E362C302C312D302E342C312D3156364332312C352E342C32302E362C
          352C32302C357A2020204D32302C323048345631306831365632307A204D3230
          2C39483456366833683168313256397A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7265637420783D22352220793D
          223134222077696474683D223222206865696768743D2232222072783D223022
          2072793D2230222066696C6C3D22233732373237322220636C6173733D22426C
          61636B222F3E0D0A3C7265637420783D22382220793D22313122207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22382220793D223134222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22313122
          20793D223131222077696474683D223222206865696768743D2232222072783D
          2230222072793D2230222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C7265637420783D2231372220793D223131222077
          696474683D223222206865696768743D2232222072783D2230222072793D2230
          222066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E
          0D0A3C7265637420783D2231342220793D223131222077696474683D22322220
          6865696768743D2232222072783D2230222072793D2230222066696C6C3D2223
          3732373237322220636C6173733D22426C61636B222F3E0D0A3C726563742078
          3D2231312220793D223134222077696474683D223222206865696768743D2232
          222072783D2230222072793D2230222066696C6C3D2223373237323732222063
          6C6173733D22426C61636B222F3E0D0A3C7265637420783D2231372220793D22
          3134222077696474683D223222206865696768743D2232222072783D22302220
          72793D2230222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C7265637420783D2231342220793D22313422207769647468
          3D223222206865696768743D2232222072783D2230222072793D223022206669
          6C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C72
          65637420783D22352220793D223137222077696474683D223222206865696768
          743D2232222072783D2230222072793D2230222066696C6C3D22233732373237
          322220636C6173733D22426C61636B222F3E0D0A3C7265637420783D22382220
          793D223137222077696474683D223222206865696768743D2232222072783D22
          30222072793D2230222066696C6C3D22233732373237322220636C6173733D22
          426C61636B222F3E0D0A3C7265637420783D2231312220793D22313722207769
          6474683D223222206865696768743D2232222072783D2230222072793D223022
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7265637420783D2231342220793D223137222077696474683D2232222068
          65696768743D2232222072783D2230222072793D2230222066696C6C3D222337
          32373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D382C37632D312E372C302D332C312E332D332C3373312E332C332C332C
          3373332D312E332C332D3353392E372C372C382C377A204D382C3132632D312E
          312C302D322D302E392D322D3273302E392D322C322D3273322C302E392C322C
          32202053392E312C31322C382C31327A222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C7061746820643D224D32312C31
          3663302D322E322D312E382D342D342D34682D32632D312E372C302D332E322C
          312E312D332E382C322E374331302E362C31342E332C392E382C31342C392C31
          344837632D322E322C302D342C312E382D342C347631683130762D3120206330
          2D302E332D302E312D302E372D302E312D314832315631367A204D31322C3138
          483463302D312E372C312E332D332C332D33683263302E382C302C312E352C30
          2E332C322C302E3863302E342C302E332C302E362C302E372C302E382C312E32
          4331312E392C31372E332C31322C31372E362C31322C31387A2020204D31322E
          342C3136632D302E312D302E322D302E322D302E342D302E342D302E3663302E
          332D312E332C312E352D322E342C332D322E34683263312E372C302C332C312E
          332C332C334831322E347A222066696C6C3D22233732373237322220636C6173
          733D22426C61636B222F3E0D0A3C7061746820643D224D31362C35632D312E37
          2C302D332C312E332D332C3373312E332C332C332C3373332D312E332C332D33
          5331372E372C352C31362C357A204D31362C3130632D312E312C302D322D302E
          392D322D3273302E392D322C322D3273322C302E392C322C3220205331372E31
          2C31302C31362C31307A222066696C6C3D22233732373237322220636C617373
          3D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D342E332C31372E34632D302E352C302E352D302E382C312E312D312E31
          2C312E3643332E312C31392E312C332C31392E342C332C31392E365632306330
          2C302E352C302E352C312C312C3168313663302E362C302C312D302E352C312D
          3156372E3820204331322E342C392E332C372C31342C342E332C31372E347A22
          2066696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D
          0A3C7061746820643D224D32302C33483443332E352C332C332C332E352C332C
          3476392E3563332E322D332E332C382E382D362E392C31372E332D372E396330
          2E322C302C302E372D302E312C302E372D302E3856344332312C332E352C3230
          2E352C332C32302C337A222066696C6C3D22234634383132302220636C617373
          3D22737430222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C37682D382E316C2D302E382D312E344331302E392C352E32
          2C31302E362C352C31302E322C354835483443332E342C352C332C352E342C33
          2C3676313263302C302E362C302E342C312C312C3168313663302E362C302C31
          2D302E342C312D31563820204332312C372E342C32302E362C372C32302C377A
          204D32302C31384834762D376831365631387A204D32302C3130483456366831
          68356C302E372C312E334C31312C3868395631307A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C70617468
          20643D224D32302C35483443332E342C352C332C352E342C332C367631326330
          2C302E362C302E342C312C312C3168313663302E362C302C312D302E342C312D
          3156364332312C352E342C32302E362C352C32302C357A204D32302C31384834
          56376C382C366C382D3656313820207A204D31322C31324C342C366831364C31
          322C31327A222066696C6C3D22233732373237322220636C6173733D22426C61
          636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706F6C79676F
          6E20706F696E74733D2232312C31312032312C332031312C342E372031312C31
          3120222066696C6C3D22233732373237322220636C6173733D22426C61636B22
          2F3E0D0A3C706F6C79676F6E20706F696E74733D22332C313220332C31372031
          302C31382E322031302C313220222066696C6C3D22233732373237322220636C
          6173733D22426C61636B222F3E0D0A3C706F6C79676F6E20706F696E74733D22
          31312C31382E332032312C32302032312C31322031312C313220222066696C6C
          3D22233732373237322220636C6173733D22426C61636B222F3E0D0A3C706F6C
          79676F6E20706F696E74733D2231302C342E3820332C3620332C31312031302C
          313120222066696C6C3D22233732373237322220636C6173733D22426C61636B
          222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B20203C706F6C79
          676F6E20706F696E74733D2231392C31312031332C31312031332C352031322C
          352031322C313120362C313120362C31322031322C31322031322C3138203133
          2C31382031332C31322031392C313220222066696C6C3D222337323732373222
          20636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D31322C3543392E382C352C382C362E382C382C3973312E382C342C342C
          3473342D312E382C342D345331342E322C352C31322C357A204D31322C313263
          2D312E372C302D332D312E332D332D3373312E332D332C332D3373332C312E33
          2C332C3320205331332E372C31322C31322C31327A222066696C6C3D22233732
          373237322220636C6173733D22426C61636B222F3E0D0A3C7061746820643D22
          4D352C31387631683134762D3163302D322E322D312E382D342D342D34483943
          362E382C31342C352C31352E382C352C31387A204D31382C313848366C302C30
          63302D312E372C312E332D332C332D3368364331362E372C31352C31382C3136
          2E332C31382C313820204C31382C31387A222066696C6C3D2223373237323732
          2220636C6173733D22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C73766720783D223070782220793D223070782220766965
          77426F783D22302030203234203234222076657273696F6E3D22312E31222078
          6D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667
          2220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F7267
          2F313939392F786C696E6B2220786D6C3A73706163653D227072657365727665
          222069643D224C617965725F31223E262331333B262331303B3C706174682064
          3D224D32302E332C31302E326C2D312E382D302E34632D302E322D302E352D30
          2E352D312D302E372D312E346C302E362D312E3863302E312D302E342D302E31
          2D302E392D302E342D312E316C2D322E312D312E342020632D302E342D302E32
          2D302E382D302E322D312E322C302E316C2D312E342C312E33632D302E342D30
          2E312D302E392D302E312D312E332D302E31732D302E392C302D312E332C302E
          314C392E332C342E3243392C332E392C382E352C332E392C382E322C342E324C
          362C352E35202043352E372C352E382C352E352C362E322C352E362C362E366C
          302E362C312E3843362C382E382C352E372C392E332C352E352C392E376C2D31
          2E382C302E3543332E332C31302E332C332C31302E372C332C31312E3176322E
          3663302C302E342C302E332C302E382C302E372C302E394C352E352C31352020
          63302E322C302E352C302E352C312C302E372C312E346C2D302E362C312E3863
          2D302E312C302E342C302E312C302E392C302E342C312E316C322E312C312E34
          63302E342C302E322C302E382C302E322C312E322D302E316C312E342D312E33
          63302E342C302E312C302E392C302E312C312E332C302E31202073302E392C30
          2C312E332D302E316C312E342C312E3363302E332C302E332C302E382C302E33
          2C312E322C302E316C322E312D312E3463302E342D302E322C302E352D302E37
          2C302E342D312E316C2D302E362D312E3863302E332D302E342C302E352D302E
          392C302E372D312E336C312E382D302E34202063302E342D302E312C302E372D
          302E352C302E372D302E39762D322E374332312C31302E372C32302E372C3130
          2E332C32302E332C31302E327A204D32302C31332E346C2D312E312C302E346C
          2D312E312C302E34632D302E312C302E342D302E332C302E372D302E342C3120
          2063302C302E312D302E312C302E312D302E312C302E32632D302E322C302E33
          2D302E342C302E362D302E362C302E396C302E332C312E316C302E332C312E32
          6C2D312E372C312E316C2D302E392D302E386C2D302E392D302E37632D302E36
          2C302E312D312C302E322D312E342C302E322020632D302E312C302D302E322C
          302D302E342C30732D302E322C302D302E342C30632D302E342C302D302E392D
          302E312D312E332D302E326C2D302E392C302E376C2D302E392C302E386C2D31
          2E372D312E316C302E332D312E326C302E332D312E3143372E322C31362C372C
          31352E372C362E382C31352E34202063302D302E312D302E312D302E312D302E
          312D302E32632D302E322D302E332D302E332D302E372D302E342D316C2D312E
          312D302E344C342C31332E34762D324C352E312C31316C312E312D302E346330
          2E312D302E342C302E332D302E372C302E342D3163302D302E312C302E312D30
          2E312C302E312D302E32202043372C392E312C372E322C382E382C372E342C38
          2E354C372E312C372E344C362E382C362E326C312E372D312E316C302E392C30
          2E386C302E392C302E3763302E352D302E312C302E392D302E322C312E332D30
          2E3263302E322C302C302E332C302C302E342C3073302E322C302C302E342C30
          202063302E342C302C302E392C302E312C312E332C302E326C302E392D302E37
          6C302E392D302E386C312E372C312E316C2D302E332C312E326C2D302E332C31
          2E3163302E322C302E332C302E342C302E362C302E362C302E3963302C302E31
          2C302E312C302E312C302E312C302E32202063302E322C302E332C302E332C30
          2E372C302E342C316C312E312C302E346C312E322C302E345631332E347A2220
          66696C6C3D22233732373237322220636C6173733D22426C61636B222F3E0D0A
          3C7061746820643D224D31322C392E34632D312E372C302D332C312E332D332C
          3373312E332C332C332C3373332D312E332C332D335331332E372C392E342C31
          322C392E347A204D31322C31342E34632D312E312C302D322D302E392D322D32
          73302E392D322C322D32202073322C302E392C322C325331332E312C31342E34
          2C31322C31342E347A222066696C6C3D22233732373237322220636C6173733D
          22426C61636B222F3E0D0A3C2F7376673E0D0A}
      end>
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 416
    Top = 344
    object dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.TextColor = clWhite
      ItemOptions.CaptionOptions.TextDisabledColor = clWhite
      ItemOptions.CaptionOptions.TextHotColor = clWhite
      ItemOptions.Padding.AssignedValues = [lpavBottom, lpavTop]
      ItemOptions.Padding.Bottom = 2
      ItemOptions.Padding.Top = 2
      PixelsPerInch = 96
    end
    object dxLayoutStandardLookAndFeel1: TdxLayoutStandardLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    Left = 424
    Top = 288
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.TextColor = clWhite
      ItemOptions.CaptionOptions.TextDisabledColor = clWhite
      ItemOptions.CaptionOptions.TextHotColor = clWhite
      PixelsPerInch = 96
    end
  end
  object dxCalloutPopup1: TdxCalloutPopup
    FlyoutPanel.Active = True
    FlyoutPanel.Align = fpaRight
    PopupControl = cxGroupBox2
    Alignment = cpaLeftTop
    Left = 624
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.mdEmployees
    OnDataChange = DataSource1DataChange
    Left = 784
    Top = 656
  end
end
