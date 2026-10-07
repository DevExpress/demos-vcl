object fmMailClientDemoDevMode: TfmMailClientDemoDevMode
  Left = 0
  Top = 0
  Caption = 'fmMailClientDemoDevMode'
  ClientHeight = 855
  ClientWidth = 1454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pgMain: TcxPageControl
    Left = 0
    Top = 0
    Width = 1454
    Height = 855
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tsNewMails
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 855
    ClientRectRight = 1454
    ClientRectTop = 26
    object tsMailBoxes: TcxTabSheet
      Caption = 'MailBoxes'
      ImageIndex = 0
      object pnMailBoxes: TdxPanel
        Left = 0
        Top = 757
        Width = 1454
        Height = 72
        Align = alBottom
        TabOrder = 0
        object btSaveMailBoxes: TcxButton
          Left = 24
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Save MailBoxes'
          TabOrder = 0
          OnClick = btSaveMailBoxesClick
        end
        object btMailBoxDelete: TcxButton
          Left = 176
          Top = 24
          Width = 113
          Height = 25
          Caption = 'MailBox Delete'
          TabOrder = 1
          OnClick = btMailBoxDeleteClick
        end
        object btMailBoxAdd: TcxButton
          Left = 312
          Top = 24
          Width = 113
          Height = 25
          Caption = 'MailBox Add'
          TabOrder = 2
          OnClick = btMailBoxAddClick
        end
      end
      object grMailBoxes: TcxGrid
        Left = 0
        Top = 0
        Width = 1454
        Height = 757
        Align = alClient
        TabOrder = 1
        object grMailBoxesDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DM.dsMailBoxes
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.Indicator = True
          object grMailBoxesDBTableView1RecId: TcxGridDBColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
          end
          object grMailBoxesDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object grMailBoxesDBTableView1ParentID: TcxGridDBColumn
            DataBinding.FieldName = 'ParentID'
          end
          object grMailBoxesDBTableView1BoxNumber: TcxGridDBColumn
            DataBinding.FieldName = 'BoxNumber'
          end
          object grMailBoxesDBTableView1BoxKind: TcxGridDBColumn
            DataBinding.FieldName = 'BoxKind'
          end
          object grMailBoxesDBTableView1ImageIndex: TcxGridDBColumn
            DataBinding.FieldName = 'ImageIndex'
          end
          object grMailBoxesDBTableView1UnreadCount: TcxGridDBColumn
            DataBinding.FieldName = 'UnreadCount'
          end
          object grMailBoxesDBTableView1Name: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
          end
          object grMailBoxesDBTableView1NameArabic: TcxGridDBColumn
            DataBinding.FieldName = 'NameArabic'
          end
          object grMailBoxesDBTableView1NameHebrew: TcxGridDBColumn
            DataBinding.FieldName = 'NameHebrew'
          end
        end
        object grMailBoxesLevel1: TcxGridLevel
          GridView = grMailBoxesDBTableView1
        end
      end
    end
    object tsAttachments: TcxTabSheet
      Caption = 'Attachments'
      ImageIndex = 1
      object pnAttachments: TdxPanel
        Left = 0
        Top = 757
        Width = 1454
        Height = 72
        Align = alBottom
        TabOrder = 0
        object btSaveAttachments: TcxButton
          Left = 24
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Save Attachments'
          TabOrder = 0
          OnClick = btSaveAttachmentsClick
        end
        object btAttachmentDelete: TcxButton
          Left = 176
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Attachment Delete'
          TabOrder = 1
          OnClick = btAttachmentDeleteClick
        end
        object btAttachmentAdd: TcxButton
          Left = 312
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Attachment Add'
          TabOrder = 2
          OnClick = btAttachmentAddClick
        end
      end
      object grAttachments: TcxGrid
        Left = 0
        Top = 0
        Width = 1454
        Height = 757
        Align = alClient
        TabOrder = 1
        object grAttachmentsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DM.dsAttachments
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.Indicator = True
          object grAttachmentsDBTableView1RecId: TcxGridDBColumn
            DataBinding.FieldName = 'RecId'
            Visible = False
          end
          object grAttachmentsDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object grAttachmentsDBTableView1FileName: TcxGridDBColumn
            DataBinding.FieldName = 'FileName'
            Width = 200
          end
          object grAttachmentsDBTableView1Attachment: TcxGridDBColumn
            DataBinding.FieldName = 'Attachment'
          end
        end
        object grAttachmentsLevel1: TcxGridLevel
          GridView = grAttachmentsDBTableView1
        end
      end
    end
    object tsContacts: TcxTabSheet
      Caption = 'Contacts'
      ImageIndex = 2
      object pnContacts: TdxPanel
        Left = 0
        Top = 757
        Width = 1454
        Height = 72
        Align = alBottom
        TabOrder = 0
        object btSaveContacts: TcxButton
          Left = 24
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Save Contacts'
          TabOrder = 0
          OnClick = btSaveContactsClick
        end
        object btContactDelete: TcxButton
          Left = 176
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Contact Delete'
          TabOrder = 1
          OnClick = btContactDeleteClick
        end
        object btContactAdd: TcxButton
          Left = 312
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Contact Add'
          TabOrder = 2
          OnClick = btContactAddClick
        end
        object btContactEdit: TcxButton
          Left = 448
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Contact Edit'
          TabOrder = 3
          OnClick = btContactEditClick
        end
      end
      object grContacts: TcxGrid
        Left = 0
        Top = 0
        Width = 1454
        Height = 757
        Align = alClient
        TabOrder = 1
        object grContactsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Visible = True
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DM.dsPersons
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Inserting = False
          OptionsView.Indicator = True
          object grContactsDBTableView1CustomerID: TcxGridDBColumn
            DataBinding.FieldName = 'CustomerID'
          end
          object grContactsDBTableView1MiddleName: TcxGridDBColumn
            DataBinding.FieldName = 'MiddleName'
            Width = 200
          end
          object grContactsDBTableView1Email: TcxGridDBColumn
            DataBinding.FieldName = 'Email'
            Width = 200
          end
          object grContactsDBTableView1Phone: TcxGridDBColumn
            DataBinding.FieldName = 'Phone'
            Width = 100
          end
          object grContactsDBTableView1Comments: TcxGridDBColumn
            DataBinding.FieldName = 'Comments'
          end
          object grContactsDBTableView1Photo: TcxGridDBColumn
            DataBinding.FieldName = 'Photo'
          end
          object grContactsDBTableView1DiscountLevel: TcxGridDBColumn
            DataBinding.FieldName = 'DiscountLevel'
          end
          object grContactsDBTableView1FirstName: TcxGridDBColumn
            DataBinding.FieldName = 'FirstName'
            Width = 200
          end
          object grContactsDBTableView1LastName: TcxGridDBColumn
            DataBinding.FieldName = 'LastName'
            Width = 200
          end
          object grContactsDBTableView1Gender: TcxGridDBColumn
            DataBinding.FieldName = 'Gender'
          end
          object grContactsDBTableView1BirthDate: TcxGridDBColumn
            DataBinding.FieldName = 'BirthDate'
          end
          object grContactsDBTableView1AddressLine: TcxGridDBColumn
            DataBinding.FieldName = 'AddressLine'
            Width = 200
          end
          object grContactsDBTableView1City: TcxGridDBColumn
            DataBinding.FieldName = 'City'
            Width = 100
          end
          object grContactsDBTableView1ZipCode: TcxGridDBColumn
            DataBinding.FieldName = 'ZipCode'
          end
          object grContactsDBTableView1State: TcxGridDBColumn
            DataBinding.FieldName = 'State'
          end
          object grContactsDBTableView1Notes: TcxGridDBColumn
            DataBinding.FieldName = 'Notes'
          end
          object grContactsDBTableView1Title: TcxGridDBColumn
            DataBinding.FieldName = 'Title'
          end
          object grContactsDBTableView1IsEmployee: TcxGridDBColumn
            DataBinding.FieldName = 'IsEmployee'
          end
          object grContactsDBTableView1Name: TcxGridDBColumn
            DataBinding.FieldName = 'Name'
            Width = 200
          end
        end
        object grContactsLevel1: TcxGridLevel
          GridView = grContactsDBTableView1
        end
      end
    end
    object tsMails: TcxTabSheet
      Caption = 'Mails'
      ImageIndex = 3
      object pnMails: TdxPanel
        Left = 0
        Top = 757
        Width = 1454
        Height = 72
        Align = alBottom
        TabOrder = 0
        object btSaveMails: TcxButton
          Left = 24
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Save Mails'
          TabOrder = 0
          OnClick = btSaveMailsClick
        end
        object btMailDelete: TcxButton
          Left = 176
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Mail Delete'
          TabOrder = 1
          OnClick = btMailDeleteClick
        end
        object btMailAdd: TcxButton
          Left = 312
          Top = 24
          Width = 113
          Height = 25
          Caption = 'Mail Add'
          TabOrder = 2
          OnClick = btMailAddClick
        end
        object btMailContentLoadFromFile: TcxButton
          Left = 440
          Top = 24
          Width = 233
          Height = 25
          Caption = 'Mail content load from file'
          TabOrder = 3
          OnClick = btMailContentLoadFromFileClick
        end
      end
      object tlMails: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 353
        Height = 757
        BorderStyle = cxcbsNone
        Align = alLeft
        Bands = <
          item
          end>
        DataController.DataSource = DM.dsMailBoxes
        DataController.ImageIndexField = 'ImageIndex'
        DataController.ParentField = 'ParentID'
        DataController.KeyField = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Images = fmMailClientDemoMain.ilTreeList
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.ChangeDelay = 1000
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.HideFocusRect = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.FocusRect = False
        OptionsView.Headers = False
        ParentFont = False
        RootValue = -1
        ScrollbarAnnotations.CustomAnnotations = <>
        Styles.UseOddEvenStyles = bFalse
        TabOrder = 1
        object tlMailNameColumn: TcxDBTreeListColumn
          DataBinding.FieldName = 'Name'
          Width = 100
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tlMailUnreadCountColumn: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'UnreadCount'
          Width = 100
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tlMailBoxKindColumn: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'BoxKind'
          Width = 100
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object tlMailBoxNumberColumn: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'BoxNumber'
          Width = 100
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 353
        Top = 0
        Width = 8
        Height = 757
      end
      object cxSplitter2: TcxSplitter
        Left = 920
        Top = 0
        Width = 8
        Height = 757
        AlignSplitter = salRight
      end
      object grMails: TcxGrid
        Left = 361
        Top = 0
        Width = 559
        Height = 757
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object grMailsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DM.dsMails
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object grMailsDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object grMailsDBTableView1BoxID: TcxGridDBColumn
            DataBinding.FieldName = 'BoxID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 20
            Properties.DropDownWidth = 180
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ID'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListSource = DM.dsMailBoxes
          end
          object grMailsDBTableView1From: TcxGridDBColumn
            DataBinding.FieldName = 'From'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 24
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 520
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'Email'
            Properties.ListColumns = <
              item
                FieldName = 'Email'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = DM.dsPersons
            Width = 200
          end
          object grMailsDBTableView1To: TcxGridDBColumn
            DataBinding.FieldName = 'To'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 24
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 520
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'Email'
            Properties.ListColumns = <
              item
                FieldName = 'Email'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = DM.dsPersons
            Width = 200
          end
          object grMailsDBTableView1Priority: TcxGridDBColumn
            DataBinding.FieldName = 'Priority'
          end
          object grMailsDBTableView1IsUnread: TcxGridDBColumn
            DataBinding.FieldName = 'IsUnread'
          end
          object grMailsDBTableView1AttachmentID: TcxGridDBColumn
            DataBinding.FieldName = 'AttachmentID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 20
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 200
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ID'
              end
              item
                FieldName = 'FileName'
              end>
            Properties.ListSource = DM.dsAttachments
          end
          object grMailsDBTableView1Subject: TcxGridDBColumn
            DataBinding.FieldName = 'Subject'
            Width = 200
          end
          object grMailsDBTableView1Date: TcxGridDBColumn
            DataBinding.FieldName = 'Date'
          end
        end
        object grMailsLevel1: TcxGridLevel
          GridView = grMailsDBTableView1
        end
      end
      object reMails: TcxDBRichEdit
        Left = 928
        Top = 0
        Align = alRight
        DataBinding.DataField = 'Content'
        DataBinding.DataSource = DM.dsMails
        Properties.AllowObjects = True
        Properties.ScrollBars = ssVertical
        TabOrder = 5
        Height = 757
        Width = 526
      end
    end
    object tsNewMails: TcxTabSheet
      Caption = 'New Mails'
      ImageIndex = 3
      object pnNewMails: TdxPanel
        Left = 0
        Top = 757
        Width = 1454
        Height = 72
        Align = alBottom
        TabOrder = 0
        object btSaveNewMails: TcxButton
          Left = 24
          Top = 24
          Width = 129
          Height = 25
          Caption = 'Save New Mails'
          TabOrder = 0
          OnClick = btSaveNewMailsClick
        end
        object btNewMailDelete: TcxButton
          Left = 176
          Top = 24
          Width = 113
          Height = 25
          Caption = 'New Mail Delete'
          TabOrder = 1
          OnClick = btNewMailDeleteClick
        end
        object btNewMailAdd: TcxButton
          Left = 312
          Top = 24
          Width = 113
          Height = 25
          Caption = 'New Mail Add'
          TabOrder = 2
          OnClick = btNewMailAddClick
        end
        object btNewMailContentLoadFromFile: TcxButton
          Left = 440
          Top = 24
          Width = 233
          Height = 25
          Caption = 'New Mail content load from file'
          TabOrder = 3
        end
      end
      object tlNewMails: TcxDBTreeList
        Left = 0
        Top = 0
        Width = 353
        Height = 757
        BorderStyle = cxcbsNone
        Align = alLeft
        Bands = <
          item
          end>
        DataController.DataSource = DM.dsMailBoxes
        DataController.ImageIndexField = 'ImageIndex'
        DataController.ParentField = 'ParentID'
        DataController.KeyField = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        Images = fmMailClientDemoMain.ilTreeList
        Navigator.Buttons.CustomButtons = <>
        OptionsBehavior.ChangeDelay = 1000
        OptionsBehavior.CopyCaptionsToClipboard = False
        OptionsData.CancelOnExit = False
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.HideFocusRect = False
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.FocusRect = False
        OptionsView.Headers = False
        ParentFont = False
        RootValue = -1
        ScrollbarAnnotations.CustomAnnotations = <>
        Styles.UseOddEvenStyles = bFalse
        TabOrder = 1
        OnFocusedNodeChanged = tlNewMailsFocusedNodeChanged
        object cxDBTreeListColumn1: TcxDBTreeListColumn
          DataBinding.FieldName = 'Name'
          Width = 100
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn2: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'UnreadCount'
          Width = 100
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn3: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'BoxKind'
          Width = 100
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeListColumn4: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'BoxNumber'
          Width = 100
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
      object cxSplitter3: TcxSplitter
        Left = 353
        Top = 0
        Width = 8
        Height = 757
      end
      object cxSplitter4: TcxSplitter
        Left = 920
        Top = 0
        Width = 8
        Height = 757
        AlignSplitter = salRight
      end
      object reNewMails: TcxDBRichEdit
        Left = 928
        Top = 0
        Align = alRight
        DataBinding.DataField = 'Content'
        DataBinding.DataSource = DM.dsNewMails
        Properties.AllowObjects = True
        Properties.ScrollBars = ssVertical
        TabOrder = 4
        Height = 757
        Width = 526
      end
      object grNewMails: TcxGrid
        Left = 361
        Top = 0
        Width = 559
        Height = 757
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object grNewMailsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          ScrollbarAnnotations.CustomAnnotations = <>
          DataController.DataSource = DM.dsNewMails
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object grNewMailsDBTableView1ID: TcxGridDBColumn
            DataBinding.FieldName = 'ID'
          end
          object grNewMailsDBTableView1BoxID: TcxGridDBColumn
            DataBinding.FieldName = 'BoxID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 20
            Properties.DropDownWidth = 180
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ID'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListSource = DM.dsMailBoxes
          end
          object grNewMailsDBTableView1From: TcxGridDBColumn
            DataBinding.FieldName = 'From'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 24
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 520
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'Email'
            Properties.ListColumns = <
              item
                FieldName = 'Email'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = DM.dsPersons
            Width = 200
          end
          object grNewMailsDBTableView1To: TcxGridDBColumn
            DataBinding.FieldName = 'To'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 24
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 520
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'Email'
            Properties.ListColumns = <
              item
                FieldName = 'Email'
              end
              item
                FieldName = 'Name'
              end>
            Properties.ListOptions.CaseInsensitive = True
            Properties.ListSource = DM.dsPersons
            Width = 200
          end
          object grNewMailsDBTableView1Priority: TcxGridDBColumn
            DataBinding.FieldName = 'Priority'
          end
          object grNewMailsDBTableView1IsUnread: TcxGridDBColumn
            DataBinding.FieldName = 'IsUnread'
          end
          object grNewMailsDBTableView1AttachmentID: TcxGridDBColumn
            DataBinding.FieldName = 'AttachmentID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownRows = 20
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 200
            Properties.GridMode = True
            Properties.ImmediatePost = True
            Properties.KeyFieldNames = 'ID'
            Properties.ListColumns = <
              item
                FieldName = 'ID'
              end
              item
                FieldName = 'FileName'
              end>
            Properties.ListSource = DM.dsAttachments
          end
          object grNewMailsDBTableView1Subject: TcxGridDBColumn
            DataBinding.FieldName = 'Subject'
            Width = 200
          end
        end
        object grNewMailsLevel1: TcxGridLevel
          GridView = grNewMailsDBTableView1
        end
      end
    end
  end
  object dxOpenFileDialog1: TdxOpenFileDialog
    Left = 480
    Top = 360
  end
end
