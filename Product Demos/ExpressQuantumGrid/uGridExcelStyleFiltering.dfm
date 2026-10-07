inherited frmGridExcelStyleFiltering: TfrmGridExcelStyleFiltering
  inherited PanelDescription: TdxPanel
    ExplicitTop = 667
  end
  inherited PanelGrid: TdxPanel
    Width = 542
    ExplicitHeight = 667
    inherited Grid: TcxGrid
      Width = 542
      Height = 667
      ExplicitHeight = 667
      object BandedView: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CriteriaDisplayStyle = fcdsTokens
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsCarOrders2
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnExcelPopup.ApplyChanges = efacImmediately
        Filtering.ColumnExcelPopup.DateTimeValuesPageType = dvptTree
        Filtering.ColumnExcelPopup.NumericValuesPageType = nvptRange
        Filtering.ColumnFilteredItemsList = True
        Filtering.ColumnPopupMode = fpmExcel
        Images = dmMain.ilMain
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Order Info'
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            Caption = 'Model'
            HeaderAlignmentHorz = taLeftJustify
          end
          item
            Caption = 'Performance'
            HeaderAlignmentHorz = taLeftJustify
          end>
        ConditionalFormatting = {
          040000000A0000002E0000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500440061007400
          61004200610072003C000000030000000000000003000000FFFFFF7F00000000
          00000000000000010000000000000000000000000000000000000020EA474700
          FFFFFF1F4EBF8F002E0000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500490063006F00
          6E005300650074005200000001000000000700000033004100720072006F0077
          007300040000000000000004000000FFFFFF7F00020000000200000000000200
          0000020000000221000000000100000002000000024300000000000000002E00
          0000540064007800530070007200650061006400530068006500650074004300
          6F006E0064006900740069006F006E0061006C0046006F0072006D0061007400
          740069006E006700520075006C006500490063006F006E005300650074005200
          000001000000000700000033004100720072006F007700730005000000000000
          0005000000FFFFFF7F0002000000020000000000020000000200000002210000
          00000100000002000000024300000000000000002E0000005400640078005300
          700072006500610064005300680065006500740043006F006E00640069007400
          69006F006E0061006C0046006F0072006D0061007400740069006E0067005200
          75006C006500490063006F006E00530065007400600000000100000000070000
          00340052006100740069006E006700080000000000000008000000FFFFFF7F00
          0200000002000000000025000000020000000219000000002600000002000000
          0232000000002700000002000000024B0000000028000000}
        object BandedViewTrademark: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Trademark'
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedViewName: TcxGridDBBandedColumn
          Caption = 'Name'
          DataBinding.FieldName = 'Name'
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedViewModification: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Modification'
          Width = 100
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedViewPrice: TcxGridDBBandedColumn
          Caption = 'Model Price'
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Width = 125
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedViewMPGCity: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MPG City'
          Width = 75
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedViewMPGHighway: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MPG Highway'
          MinWidth = 85
          Width = 85
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedViewCylinders: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Cylinders'
          Width = 75
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedViewSalesDate: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SalesDate'
          MinWidth = 80
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedViewDiscount: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Discount'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.AssignedValues.MinValue = True
          Properties.DisplayFormat = '0.00 %'
          Properties.MaxValue = 100.000000000000000000
          Width = 75
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = BandedView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 542
    Width = 380
    ExplicitLeft = 542
    ExplicitWidth = 380
    ExplicitHeight = 667
    inherited gbSetupTools: TcxGroupBox
      ExplicitHeight = 667
      Width = 379
      inherited lcFrame: TdxLayoutControl
        Width = 377
        ExplicitHeight = 647
        object cbDateValuesPageType: TcxComboBox [0]
          Left = 153
          Top = 55
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Tree View'
            'List')
          Properties.OnEditValueChanged = cbDateValuesPageTypePropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Text = 'Tree View'
          Width = 202
        end
        object cbNumericValuesPageType: TcxComboBox [1]
          Left = 153
          Top = 28
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Range'
            'List')
          Properties.OnEditValueChanged = cbNumericValuesPageTypePropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 0
          Text = 'Range'
          Width = 202
        end
        object cbApplyChanges: TcxComboBox [2]
          Left = 153
          Top = 82
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Immediately'
            'On Tab Or OK Button Click')
          Properties.OnEditValueChanged = cbApplyChangesPropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Text = 'Immediately'
          Width = 202
        end
        object cbCriteriaDisplayStyle: TcxComboBox [3]
          Left = 114
          Top = 144
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Tokens'
            'Text')
          Properties.OnEditValueChanged = cbCriteriaDisplayTypePropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 3
          Text = 'Tokens'
          Width = 253
        end
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.Width = 255
        end
        object liDateValuesPageType: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Date Values Page Type'
          Control = cbDateValuesPageType
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
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
        object liApplyChanges: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Apply Changes'
          Control = cbApplyChanges
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'Filter Popup'
          ItemIndex = 3
          Index = 0
        end
        object cbFilteredItemsList: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup1
          Action = acFilteredItemsList
          Index = 3
        end
        object liCriteriaDisplayStyle: TdxLayoutItem
          Parent = lgSetupTools
          CaptionOptions.Text = 'Criteria Display Style'
          Control = cbCriteriaDisplayStyle
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acFilteredItemsList: TAction
      AutoCheck = True
      Caption = 'Show Filtered Items Only'
      Checked = True
      OnExecute = acFilteredItemsListExecute
    end
    object acItemDeleting: TAction
      AutoCheck = True
      Caption = 'Item Removal'
      Checked = True
      OnExecute = acItemDeletingExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
