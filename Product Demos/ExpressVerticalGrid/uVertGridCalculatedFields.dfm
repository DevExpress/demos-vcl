inherited frmCalculatedFields: TfrmCalculatedFields
  inherited lcFrame: TdxLayoutControl
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 217
      Height = 230
      FilterBox.Visible = fvNonEmpty
      Filtering.RowExcelPopup.ApplyChanges = efacImmediately
      Filtering.RowExcelPopup.DateTimeValuesPageType = dvptTree
      Filtering.RowExcelPopup.FilteredItemsList = True
      Filtering.RowExcelPopup.NumericValuesPageType = nvptRange
      Filtering.RowPopupMode = fpmExcel
      Images = dmMain.imMain
      LayoutStyle = lsMultiRecordView
      LookAndFeel.ScrollbarMode = sbmClassic
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
      DataController.DataSource = dmMain.dsOrder2
      Version = 1
      ConditionalFormatting = {
        030000000A0000002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500490063006F00
        6E005300650074006E00000001000000000700000035004100720072006F0077
        007300050000000000000005000000FFFFFF7F00020000000200000000000200
        0000020000000214000000001900000002000000022800000000010000000200
        0000023C000000001800000002000000025000000000000000002D0000005400
        640078005300700072006500610064005300680065006500740043006F006E00
        64006900740069006F006E0061006C0046006F0072006D006100740074006900
        6E006700520075006C006500430065006C006C00490073008300000007000000
        0000000007000000FFFFFF7F0001FF0000000B00000007000000430061006C00
        6900620072006900000100000000200000002000000000200000000020000000
        002000000000200007000000470045004E004500520041004C00000000000002
        000000000000000001050000003D00310030003000300000000000030000002D
        0000005400640078005300700072006500610064005300680065006500740043
        006F006E0064006900740069006F006E0061006C0046006F0072006D00610074
        00740069006E006700520075006C006500430065006C006C00490073007D0000
        00060000000000000006000000FFFFFF7F0001000000200B0000000700000043
        0061006C006900620072006900000000C5E2A000000000200000000020000000
        0020000000002000000000200007000000470045004E004500520041004C0000
        0000000002000000000000000001020000003D0030000000000002000000}
      object vgrCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Order Info'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgrOrderID: TcxDBEditorRow
        Properties.Caption = 'Order #'
        Properties.DataBinding.FieldName = 'OrderID'
        Properties.Options.Editing = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgrOrderDate: TcxDBEditorRow
        Properties.Caption = 'Date'
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.Alignment.Horz = taRightJustify
        Properties.DataBinding.FieldName = 'OrderDate'
        Properties.Options.Editing = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgrCategoryRow2: TcxCategoryRow
        Properties.Caption = 'Detail Info'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgrProductName: TcxDBEditorRow
        Properties.Caption = 'Product'
        Properties.DataBinding.FieldName = 'ProductName'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgrUnitPrice: TcxDBEditorRow
        Properties.Caption = 'Unit Price'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.Alignment.Horz = taRightJustify
        Properties.EditProperties.UseLeftAlignmentOnEditing = False
        Properties.DataBinding.FieldName = 'UnitPrice'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object vgrQuantity: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.EditProperties.UseLeftAlignmentOnEditing = False
        Properties.DataBinding.FieldName = 'Quantity'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object vgrDiscount: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.DisplayFormat = ',0.00%;($,0.00%)'
        Properties.EditProperties.UseLeftAlignmentOnEditing = False
        Properties.DataBinding.FieldName = 'Discount'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object vgrCategoryRow3: TcxCategoryRow
        Properties.Caption = 'Total Info'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object vgrDiscountAmount: TcxDBEditorRow
        Properties.Caption = 'Discount Amount'
        Properties.ImageIndex = 24
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.Alignment.Horz = taRightJustify
        Properties.EditProperties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Properties.DataBinding.Expression = '[Unit Price] * [Quantity] * [Discount] / 100'
        Properties.DataBinding.ValueType = 'Currency'
        Properties.OnValidateDrawValue = ValidateExpressionCell
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object vgrTotal: TcxDBEditorRow
        Properties.Caption = 'Total'
        Properties.ImageIndex = 22
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.Alignment.Horz = taRightJustify
        Properties.EditProperties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
        Properties.DataBinding.Expression = '[Unit Price] * [Quantity] - [Discount Amount]'
        Properties.DataBinding.ValueType = 'Currency'
        Properties.OnValidateDrawValue = ValidateExpressionCell
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
    end
    object galColumns: TdxGalleryControl [1]
      Left = 253
      Top = 46
      Width = 176
      Height = 100
      Images = dmMain.imMain
      OptionsBehavior.ItemMultiSelectKind = imskListView
      OptionsBehavior.ItemCheckMode = icmSingleRadio
      OptionsBehavior.SelectOnRightClick = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Item.Image.ShowFrame = False
      OptionsView.Item.Text.AlignHorz = taLeftJustify
      OptionsView.Item.Text.AlignVert = vaCenter
      OptionsView.Item.Text.Position = posRight
      OptionsView.Item.Text.WordWrap = False
      TabOrder = 1
      OnDblClick = btnShowExpressionEditorClick
      object dxGalleryControl1Group1: TdxGalleryControlGroup
        Caption = 'Group0'
        ShowCaption = False
        object dxGalleryControl1Group1Item1: TdxGalleryControlItem
          Caption = 'Total'
          Checked = True
          ImageIndex = 22
          ActionIndex = nil
        end
        object dxGalleryControl1Group1Item2: TdxGalleryControlItem
          Caption = 'Discount Amount'
          ImageIndex = 24
          ActionIndex = nil
        end
      end
    end
    object btnShowExpressionEditor: TcxButton [2]
      Left = 253
      Top = 152
      Width = 176
      Height = 36
      Caption = 'Show Expression Editor for selected row'
      TabOrder = 2
      WordWrap = True
      OnClick = btnShowExpressionEditorClick
    end
    inherited lgContent: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    inherited lgSetupTools: TdxLayoutGroup
      AlignVert = avClient
      CaptionOptions.Text = 'Expression Editor'
      Visible = True
      ItemIndex = 1
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Row:'
      CaptionOptions.Layout = clTop
      Control = galColumns
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnShowExpressionEditor
      ControlOptions.OriginalHeight = 36
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Top = 24
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
