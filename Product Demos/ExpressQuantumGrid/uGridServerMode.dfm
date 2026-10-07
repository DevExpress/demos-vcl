inherited frmGridServerMode: TfrmGridServerMode
  inherited PanelGrid: TdxPanel
    Width = 726
    ExplicitWidth = 726
    inherited Grid: TcxGrid
      Width = 726
      RootLevelOptions.DetailTabsPosition = dtpTop
      OnActiveTabChanged = GridActiveTabChanged
      ExplicitWidth = 726
      object cxGrid1ServerModeTableView1: TcxGridServerModeTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.InfoPanel.Width = 100
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            FieldName = 'OID'
            Column = cxGrid1ServerModeTableView1OID
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Count: #,###'
            Kind = skCount
            FieldName = 'From'
            Column = cxGrid1ServerModeTableView1From
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.Indicator = True
        object cxGrid1ServerModeTableView1OID: TcxGridServerModeColumn
          DataBinding.FieldName = 'OID'
          DataBinding.IsNullValueType = True
          Visible = False
          Options.FilteringPopup = False
          Options.Grouping = False
        end
        object cxGrid1ServerModeTableView1Subject: TcxGridServerModeColumn
          DataBinding.FieldName = 'Subject'
          DataBinding.IsNullValueType = True
          Visible = False
          GroupIndex = 0
          Width = 161
        end
        object cxGrid1ServerModeTableView1From: TcxGridServerModeColumn
          DataBinding.FieldName = 'From'
          DataBinding.IsNullValueType = True
          Width = 253
        end
        object cxGrid1ServerModeTableView1Sent: TcxGridServerModeColumn
          DataBinding.FieldName = 'Sent'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          DateTimeGrouping = dtgByMonth
          Options.FilteringPopup = False
          Width = 170
        end
        object cxGrid1ServerModeTableView1HasAttachment: TcxGridServerModeColumn
          Caption = 'Attachment'
          DataBinding.FieldName = 'HasAttachment'
          DataBinding.IsNullValueType = True
          RepositoryItem = dmMain.edrepAttachmentImageCombo
          Width = 94
        end
        object cxGrid1ServerModeTableView1Priority: TcxGridServerModeColumn
          DataBinding.FieldName = 'Priority'
          DataBinding.IsNullValueType = True
          RepositoryItem = dmMain.edrepPriorityImageCombo
          Width = 94
        end
        object cxGrid1ServerModeTableView1Size: TcxGridServerModeColumn
          DataBinding.FieldName = 'Size'
          DataBinding.IsNullValueType = True
          Options.FilteringPopup = False
          Options.Grouping = False
          Width = 149
        end
      end
      object cxGrid1ServerModeBandedTableView1: TcxGridServerModeBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.Refresh.Visible = False
        Navigator.Buttons.SaveBookmark.Visible = False
        Navigator.Buttons.GotoBookmark.Visible = False
        Navigator.InfoPanel.Visible = True
        Navigator.InfoPanel.Width = 100
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            FieldName = 'OID'
            Column = cxGrid1ServerModeBandedTableView1OID
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Count: #,###'
            Kind = skCount
            FieldName = 'From'
            Column = cxGrid1ServerModeBandedTableView1From
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.GroupFooterMultiSummaries = True
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Details'
            Width = 586
          end
          item
            Caption = 'Attributes'
            Width = 193
          end>
        object cxGrid1ServerModeBandedTableView1OID: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'OID'
          DataBinding.IsNullValueType = True
          Visible = False
          Options.FilteringPopup = False
          Options.Grouping = False
          Width = 31
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1Subject: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'Subject'
          DataBinding.IsNullValueType = True
          Visible = False
          GroupIndex = 0
          Width = 362
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1From: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'From'
          DataBinding.IsNullValueType = True
          Width = 232
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1Sent: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'Sent'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.Kind = ckDateTime
          DateTimeGrouping = dtgByMonth
          Options.FilteringPopup = False
          Width = 210
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1Size: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'Size'
          DataBinding.IsNullValueType = True
          Options.FilteringPopup = False
          Options.Grouping = False
          Width = 154
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1HasAttachment: TcxGridServerModeBandedColumn
          Caption = 'Attachment'
          DataBinding.FieldName = 'HasAttachment'
          DataBinding.IsNullValueType = True
          RepositoryItem = dmMain.edrepAttachmentImageCombo
          Width = 84
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGrid1ServerModeBandedTableView1Priority: TcxGridServerModeBandedColumn
          DataBinding.FieldName = 'Priority'
          DataBinding.IsNullValueType = True
          RepositoryItem = dmMain.edrepPriorityImageCombo
          Width = 103
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Table View'
        GridView = cxGrid1ServerModeTableView1
      end
      object cxGrid1Level2: TcxGridLevel
        Caption = 'Banded Table View'
        GridView = cxGrid1ServerModeBandedTableView1
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 726
    Width = 196
    ExplicitLeft = 726
    ExplicitWidth = 196
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 195
      Width = 195
      inherited lcFrame: TdxLayoutControl
        Width = 193
        ExplicitWidth = 193
        object btConfigureConnection: TcxButton [0]
          Left = 10
          Top = 125
          Width = 173
          Height = 25
          Caption = 'Configure Connection'
          TabOrder = 0
          OnClick = btConfigureConnectionClick
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          ItemIndex = 2
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup3: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Visible = False
          Control = btConfigureConnection
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object cbInserting: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = acInserting
          Index = 1
        end
        object cbEditing: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          AlignVert = avTop
          Action = acEditing
          Index = 0
        end
        object cbDeleting: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          Action = acDeleting
          Index = 2
        end
        object cbDeletingConfirmation: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          Action = acDeletingConfirmation
          Index = 0
        end
        object cbCancelOnExit: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup3
          AlignVert = avTop
          Action = acCancelOnExit
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acEditing: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Editing Records'
      Checked = True
      OnExecute = UpdateOptionsDataView
    end
    object acInserting: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Inserting Records'
      Checked = True
      OnExecute = UpdateOptionsDataView
    end
    object acDeleting: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Deleting Records'
      Checked = True
      OnExecute = UpdateOptionsDataView
    end
    object acDeletingConfirmation: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Confirming Record Deletion'
      Checked = True
      OnExecute = UpdateOptionsDataView
    end
    object acCancelOnExit: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Canceling Edit on Exit'
      Checked = True
      OnExecute = UpdateOptionsDataView
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cxGridPopupMenu: TcxGridPopupMenu
    Grid = Grid
    PopupMenus = <>
    Left = 160
    Top = 192
  end
end
