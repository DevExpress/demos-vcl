inherited frmExcelStyleFiltering: TfrmExcelStyleFiltering
  Caption = 'Excel Style Filtering'
  ClientHeight = 552
  ClientWidth = 914
  ExplicitWidth = 914
  ExplicitHeight = 552
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 914
    Height = 552
    ExplicitWidth = 914
    ExplicitHeight = 552
    inherited tlDB: TcxDBTreeList
      Width = 628
      Height = 494
      Bands = <
        item
          Caption.Text = 'Model'
        end
        item
          Caption.Text = 'Order Info'
        end
        item
          Caption.Text = 'Performance'
        end>
      DataController.DataSource = dmTreeList.dsCarOrders
      DataController.ParentField = 'ParentID'
      DataController.KeyField = 'ID'
      FilterBox.CriteriaDisplayStyle = fcdsTokens
      FilterBox.Visible = fvNonEmpty
      Filtering.ColumnExcelPopup.ApplyChanges = efacImmediately
      Filtering.ColumnExcelPopup.DateTimeValuesPageType = dvptTree
      Filtering.ColumnExcelPopup.FilteredItemsList = True
      Filtering.ColumnExcelPopup.NumericValuesPageType = nvptRange
      Filtering.ColumnPopupMode = fpmExcel
      OptionsCustomizing.ColumnFiltering = bTrue
      OptionsView.Bands = True
      OptionsView.CategorizedColumn = tlDBName
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      OptionsView.PaintStyle = tlpsCategorized
      TabOrder = 4
      ExplicitWidth = 628
      ExplicitHeight = 494
      ConditionalFormatting = {
        040000000A0000002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500440061007400
        61004200610072003C000000050000000000000005000000FFFFFF7F00000000
        00000000000000010000000000000000000000000000000000000020EA474700
        FFFFFF1F4EBF8F002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500490063006F00
        6E005300650074005200000001000000000700000033004100720072006F0077
        007300060000000000000006000000FFFFFF7F00020000000200000000000200
        0000020000000221000000000100000002000000024300000000000000002E00
        0000540064007800530070007200650061006400530068006500650074004300
        6F006E0064006900740069006F006E0061006C0046006F0072006D0061007400
        740069006E006700520075006C006500490063006F006E005300650074005200
        000001000000000700000033004100720072006F007700730007000000000000
        0007000000FFFFFF7F0002000000020000000000020000000200000002210000
        00000100000002000000024300000000000000002E0000005400640078005300
        700072006500610064005300680065006500740043006F006E00640069007400
        69006F006E0061006C0046006F0072006D0061007400740069006E0067005200
        75006C006500490063006F006E00530065007400600000000100000000070000
        00340052006100740069006E0067000C000000000000000C000000FFFFFF7F00
        0200000002000000000025000000020000000219000000002600000002000000
        0232000000002700000002000000024B0000000028000000}
      object tlDBRecId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'RecId'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ID'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBParentID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ParentID'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBName: TcxDBTreeListColumn
        Caption.Text = 'Name'
        DataBinding.FieldName = 'Name'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBModification: TcxDBTreeListColumn
        DataBinding.FieldName = 'Modification'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPrice: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Caption.Text = 'Model Price'
        DataBinding.FieldName = 'Price'
        Width = 150
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBMPGCity: TcxDBTreeListColumn
        DataBinding.FieldName = 'MPG City'
        Width = 75
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBMPGHighway: TcxDBTreeListColumn
        DataBinding.FieldName = 'MPG Highway'
        Width = 75
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBBodyStyleID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'BodyStyleID'
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBCylinders: TcxDBTreeListColumn
        DataBinding.FieldName = 'Cylinders'
        Width = 75
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBSalesDate: TcxDBTreeListColumn
        DataBinding.FieldName = 'SalesDate'
        Width = 75
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBBodyStyle: TcxDBTreeListColumn
        DataBinding.FieldName = 'BodyStyle'
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBDiscount: TcxDBTreeListColumn
        PropertiesClassName = 'TcxSpinEditProperties'
        Properties.AssignedValues.MinValue = True
        Properties.DisplayFormat = '0.00 %'
        Properties.MaxValue = 100.000000000000000000
        DataBinding.FieldName = 'Discount'
        Width = 75
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cbNumericValuesPageType: TcxComboBox [1]
      Left = 793
      Top = 53
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Range'
        'List')
      Properties.OnEditValueChanged = cbNumericValuesPageTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 0
      Text = 'Range'
      Width = 83
    end
    object cbDateValuesPageType: TcxComboBox [2]
      Left = 793
      Top = 107
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tree View'
        'List')
      Properties.OnEditValueChanged = cbDateValuesPageTypePropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Text = 'Tree View'
      Width = 83
    end
    object cbApplyChanges: TcxComboBox [3]
      Left = 793
      Top = 80
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Immediately'
        'On Tab Or OK Button Click')
      Properties.OnEditValueChanged = cbApplyChangesPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Text = 'Immediately'
      Width = 83
    end
    object cbCriteriaDisplayStyle: TcxComboBox [4]
      Left = 757
      Top = 171
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tokens'
        'Text')
      Properties.OnEditValueChanged = cbCriteriaDisplayTypePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Text = 'Tokens'
      Width = 128
    end
    inherited lgTools: TdxLayoutGroup
      SizeOptions.Width = 250
      ItemIndex = 1
    end
    object liNumericValuesPageType: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Numeric Values Page Type'
      Control = cbNumericValuesPageType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDateValuesPageType: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Date Values Page Type'
      Control = cbDateValuesPageType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liApplyChanges: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Apply Changes'
      Control = cbApplyChanges
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'Filter Popup'
      CaptionOptions.Visible = False
      Index = 0
    end
    object liCriteriaDisplayStyle: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Criteria Display Style'
      Control = cbCriteriaDisplayStyle
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object cbFilteredItemsList: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      Action = acFilteredItemsList
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acFilteredItemsList: TAction
      AutoCheck = True
      Caption = 'Show Filtered Items Only'
      Checked = True
      OnExecute = acFilteredItemsListExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object acItemDeleting: TAction
    AutoCheck = True
    Caption = 'Item Removal'
    Checked = True
    OnExecute = acItemDeletingExecute
  end
end
