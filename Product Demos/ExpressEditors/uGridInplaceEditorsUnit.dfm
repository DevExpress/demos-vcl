inherited frmGridInplaceEditors: TfrmGridInplaceEditors
  inherited lcFrame: TdxLayoutControl
    object Grid: TcxGrid [0]
      Left = 22
      Top = 28
      Width = 547
      Height = 200
      TabOrder = 0
      object GridTableView: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnGetCellHeight = GridTableViewGetCellHeight
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object clmName: TcxGridColumn
          Caption = 'Editor Name'
          Options.Editing = False
          Options.Filtering = False
          Options.Focusing = False
          Options.Grouping = False
          Options.Moving = False
          Options.Sorting = False
          Width = 188
        end
        object clmValue: TcxGridColumn
          Caption = 'Sample'
          OnGetProperties = clmValueGetProperties
          Options.Filtering = False
          Options.IncSearch = False
          Options.Grouping = False
          Options.Sorting = False
          Width = 329
        end
      end
      object GridLevel: TcxGridLevel
        GridView = GridTableView
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahCenter
      AlignVert = avClient
      Control = Grid
      ControlOptions.OriginalHeight = 223
      ControlOptions.OriginalWidth = 547
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionList1: TActionList
    Left = 464
    Top = 32
  end
  object EditRepository: TcxEditRepository
    Left = 376
    Top = 128
    PixelsPerInch = 96
    object EditRepositoryBarCodeItem: TcxEditRepositoryBarCodeItem
      Properties.BarCodeSymbologyClassName = 'TdxBarCodeQRCodeSymbology'
      Properties.ShowText = False
    end
    object EditRepositoryBlobItem: TcxEditRepositoryBlobItem
    end
    object EditRepositoryButtonItem: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EditRepositoryButtonItemPropertiesButtonClick
    end
    object EditRepositoryCalcItem: TcxEditRepositoryCalcItem
    end
    object EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem
    end
    object EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem
      Properties.Items.Strings = (
        'Blue'
        'Green'
        'Brown'
        'Yellow'
        'Red'
        'Black')
    end
    object EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem
    end
    object EditRepositoryDateItem: TcxEditRepositoryDateItem
    end
    object EditRepositoryExtLookupComboBoxItem: TcxEditRepositoryExtLookupComboBoxItem
      Properties.DropDownSizeable = True
      Properties.View = GridViewRepositoryDBTableView
      Properties.KeyFieldNames = 'ID'
      Properties.ListFieldItem = GridDBTableViewLASTNAME
    end
    object EditRepositoryFontNameComboBoxItem: TcxEditRepositoryFontNameComboBox
    end
    object EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem
      Properties.SingleClick = True
    end
    object EditRepositoryImageItem: TcxEditRepositoryImageItem
      Properties.FitMode = ifmNormal
      Properties.GraphicClassName = 'TdxSmartImage'
    end
    object EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = dmMain.ilMain
      Properties.Items = <
        item
          Description = 'Cash'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Visa'
          ImageIndex = 1
          Value = 2
        end
        item
          Description = 'MasterCard'
          ImageIndex = 2
          Value = 3
        end
        item
          Description = 'American Express'
          ImageIndex = 3
          Value = 4
        end>
    end
    object EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dmMain.dsDXProducts
    end
    object EditRepositoryMaskItem: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d\d\d - \d\d\d\d'
    end
    object EditRepositoryMemoItem: TcxEditRepositoryMemoItem
    end
    object EditRepositoryMRUItem: TcxEditRepositoryMRUItem
      Properties.LookupItems.Strings = (
        'Blue'
        'Green'
        'Brown'
        'Yellow'
        'Red'
        'Black')
      Properties.OnButtonClick = EditRepositoryMRUItemPropertiesButtonClick
    end
    object EditRepositoryPopupItem: TcxEditRepositoryPopupItem
      Properties.OnInitPopup = EditRepositoryPopupItemPropertiesInitPopup
    end
    object EditRepositoryProgressBarItem: TcxEditRepositoryProgressBar
    end
    object EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Cash'
          Value = 0
        end
        item
          Caption = 'Visa'
          Value = 2
        end
        item
          Caption = 'MasterCard'
          Value = 1
        end>
    end
    object EditRepositoryRatingControlItem: TcxEditRepositoryRatingControl
      Properties.FillPrecision = rcfpExact
      Properties.ItemCount = 7
      Properties.Step = 0.100000000000000000
    end
    object EditRepositoryRichItem: TcxEditRepositoryRichItem
    end
    object EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem
    end
    object EditRepositorySpinItem: TcxEditRepositorySpinItem
    end
    object EditRepositoryTextItem: TcxEditRepositoryTextItem
    end
    object EditRepositoryTimeItem: TcxEditRepositoryTimeItem
    end
    object EditRepositoryTrackBarItem: TcxEditRepositoryTrackBar
    end
    object EditRepositoryFormattedLabel: TcxEditRepositoryFormattedLabel
      Properties.WordWrap = True
    end
  end
  object GridViewRepository: TcxGridViewRepository
    Left = 376
    Top = 16
    object GridViewRepositoryDBTableView: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = dmMain.dsDXCustomers
      DataController.KeyFieldNames = 'ID'
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skCount
        end
        item
          Kind = skSum
        end
        item
          Kind = skCount
          Position = spFooter
        end
        item
          Kind = skMax
          Position = spFooter
        end
        item
          Kind = skSum
          Position = spFooter
        end
        item
          Format = '###'
          Kind = skSum
          Position = spFooter
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
        end
        item
          Kind = skMax
        end
        item
          Kind = skCount
          Column = GridDBTableViewFIRSTNAME
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.IncSearch = True
      OptionsData.DeletingConfirmation = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      object GridDBTableViewFIRSTNAME: TcxGridDBColumn
        Caption = 'First Name'
        DataBinding.FieldName = 'FIRSTNAME'
        Width = 110
      end
      object GridDBTableViewLASTNAME: TcxGridDBColumn
        Caption = 'Last Name'
        DataBinding.FieldName = 'LASTNAME'
        SortIndex = 0
        SortOrder = soAscending
        Width = 110
      end
      object GridDBTableViewPAYMENTTYPE: TcxGridDBColumn
        Caption = 'Payment Type'
        DataBinding.FieldName = 'PAYMENTTYPE'
        RepositoryItem = EditRepositoryImageComboBoxItem
        SortIndex = 1
        SortOrder = soAscending
        Width = 140
      end
      object GridViewRepositoryDBTableViewPURCHASEDATE: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'PURCHASEDATE'
      end
    end
  end
end
