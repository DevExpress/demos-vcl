inherited frmExcelStyleFiltering: TfrmExcelStyleFiltering
  Width = 699
  Height = 431
  inherited lcFrame: TdxLayoutControl
    Width = 699
    Height = 431
    ExplicitWidth = 699
    ExplicitHeight = 431
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 415
      Height = 356
      FilterBox.CriteriaDisplayStyle = fcdsTokens
      FilterBox.Visible = fvNonEmpty
      Filtering.RowExcelPopup.ApplyChanges = efacImmediately
      Filtering.RowExcelPopup.DateTimeValuesPageType = dvptTree
      Filtering.RowExcelPopup.FilteredItemsList = True
      Filtering.RowExcelPopup.NumericValuesPageType = nvptRange
      Filtering.RowPopupMode = fpmExcel
      LayoutStyle = lsMultiRecordView
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clGray
      OptionsView.RowHeaderWidth = 124
      OptionsView.RowHeight = 20
      OptionsView.ValueWidth = 170
      OptionsView.RecordsInterval = 2
      OptionsBehavior.RowFiltering = bTrue
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      DataController.DataSource = dmMain.dsCarOrders
      Version = 1
      ConditionalFormatting = {
        040000000A0000002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500440061007400
        61004200610072003C000000060000000000000006000000FFFFFF7F00000000
        00000000000000010000000000000000000000000000000000000020EA474700
        FFFFFF1F4EBF8F002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500490063006F00
        6E005300650074005200000001000000000700000033004100720072006F0077
        007300090000000000000009000000FFFFFF7F00020000000200000000000200
        0000020000000221000000000100000002000000024300000000000000002E00
        0000540064007800530070007200650061006400530068006500650074004300
        6F006E0064006900740069006F006E0061006C0046006F0072006D0061007400
        740069006E006700520075006C006500490063006F006E005300650074005200
        000001000000000700000033004100720072006F00770073000A000000000000
        000A000000FFFFFF7F0002000000020000000000020000000200000002210000
        00000100000002000000024300000000000000002E0000005400640078005300
        700072006500610064005300680065006500740043006F006E00640069007400
        69006F006E0061006C0046006F0072006D0061007400740069006E0067005200
        75006C006500490063006F006E00530065007400600000000100000000070000
        00340052006100740069006E006700070000000000000007000000FFFFFF7F00
        0200000002000000000025000000020000000219000000002600000002000000
        0232000000002700000002000000024B0000000028000000}
      object VerticalGridRecId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'RecId'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridID: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'ID'
        Visible = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridCategoryRowModel: TcxCategoryRow
        Properties.Caption = 'Model'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridTrademark: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Trademark'
        ID = 3
        ParentID = 2
        Index = 0
        Version = 1
      end
      object VerticalGridName: TcxDBEditorRow
        Properties.Caption = 'Name'
        Properties.DataBinding.FieldName = 'Name'
        ID = 4
        ParentID = 2
        Index = 1
        Version = 1
      end
      object VerticalGridModification: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Modification'
        ID = 5
        ParentID = 2
        Index = 2
        Version = 1
      end
      object VerticalGridBodyStyle: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'BodyStyle'
        ID = 6
        ParentID = 2
        Index = 3
        Version = 1
      end
      object VerticalGridCategoryRowOrderInfo: TcxCategoryRow
        Properties.Caption = 'Order Info'
        ID = 7
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridPrice: TcxDBEditorRow
        Properties.Caption = 'Model Price'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DataBinding.FieldName = 'Price'
        ID = 8
        ParentID = 7
        Index = 0
        Version = 1
      end
      object VerticalGridDiscount: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.EditProperties.AssignedValues.MinValue = True
        Properties.EditProperties.DisplayFormat = '0.00 %'
        Properties.EditProperties.MaxValue = 100.000000000000000000
        Properties.DataBinding.FieldName = 'Discount'
        ID = 9
        ParentID = 7
        Index = 1
        Version = 1
      end
      object VerticalGridSalesDate: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'SalesDate'
        ID = 10
        ParentID = 7
        Index = 2
        Version = 1
      end
      object VerticalGridCategoryRowPerformance: TcxCategoryRow
        Properties.Caption = 'Performance'
        ID = 11
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VerticalGridMPGCity: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'MPG City'
        ID = 12
        ParentID = 11
        Index = 0
        Version = 1
      end
      object VerticalGridMPGHighway: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'MPG Highway'
        ID = 13
        ParentID = 11
        Index = 1
        Version = 1
      end
      object VerticalGridCylinders: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Cylinders'
        ID = 14
        ParentID = 11
        Index = 2
        Version = 1
      end
      object VerticalGridBodyStyleID: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'BodyStyleID'
        Visible = False
        ID = 15
        ParentID = -1
        Index = 5
        Version = 1
      end
    end
    object cbNumericValuesPageType: TcxComboBox [1]
      Left = 582
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
      TabOrder = 1
      Text = 'Range'
      Width = 95
    end
    object cbDateValuesPageType: TcxComboBox [2]
      Left = 582
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
      TabOrder = 2
      Text = 'Tree View'
      Width = 95
    end
    object cbApplyChanges: TcxComboBox [3]
      Left = 582
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
      TabOrder = 3
      Text = 'Immediately'
      Height = 21
      Width = 95
    end
    object cbFilteredItemsList: TcxCheckBox [4]
      Left = 451
      Top = 109
      Caption = 'Show Filtered Items Only'
      Properties.OnEditValueChanged = cbFilteredItemsListPropertiesEditValueChanged
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
    end
    object cbCriteriaDisplayStyle: TcxComboBox [5]
      Left = 290
      Top = 166
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tokens'
        'Text')
      Properties.OnEditValueChanged = cbCriteriaDisplayStylePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Text = 'Tokens'
      Width = 122
    end
    inherited lgSetupTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Width = 250
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBVerticalGrid1'
      CaptionOptions.Visible = False
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 276
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
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
    object liFilteredItemsList: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Visible = False
      Control = cbFilteredItemsList
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'Filter Popup'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
