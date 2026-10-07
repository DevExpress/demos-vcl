inherited frmGridCalculatedFields: TfrmGridCalculatedFields
  inherited PanelGrid: TdxPanel
    Width = 720
    ExplicitWidth = 720
    inherited Grid: TcxGrid
      Width = 720
      ExplicitWidth = 720
      object tvOrders: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsOrder2
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
          end
          item
            Format = 'Quantity: SUM=#'
            Kind = skSum
            FieldName = 'Quantity'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = tvOrdersProductName
          end
          item
            Kind = skSum
            Column = tvOrdersDiscountAmount
          end
          item
            Kind = skSum
            Column = tvOrdersTotal
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnPopupMode = fpmExcel
        Images = dmMain.ilMain
        OptionsBehavior.CellHints = True
        OptionsCustomize.ColumnExpressionEditing = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        Styles.Group = dmMain.cxStyleBold
        Styles.GroupSummary = dmMain.cxStyleBold
        ConditionalFormatting = {
          030000000A0000002E0000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500490063006F00
          6E005300650074006E00000001000000000700000035004100720072006F0077
          007300040000000000000004000000FFFFFF7F00020000000200000000000200
          0000020000000214000000001900000002000000022800000000010000000200
          0000023C000000001800000002000000025000000000000000002D0000005400
          640078005300700072006500610064005300680065006500740043006F006E00
          64006900740069006F006E0061006C0046006F0072006D006100740074006900
          6E006700520075006C006500430065006C006C00490073008300000006000000
          0000000006000000FFFFFF7F0001FF0000000B00000007000000430061006C00
          6900620072006900000100000000200000002000000000200000000020000000
          002000000000200007000000470045004E004500520041004C00000000000002
          000000000000000001050000003D00310030003000300000000000030000002D
          0000005400640078005300700072006500610064005300680065006500740043
          006F006E0064006900740069006F006E0061006C0046006F0072006D00610074
          00740069006E006700520075006C006500430065006C006C00490073007D0000
          00050000000000000005000000FFFFFF7F0001000000200B0000000700000043
          0061006C006900620072006900000000C5E2A000000000200000000020000000
          0020000000002000000000200007000000470045004E004500520041004C0000
          0000000002000000000000000001020000003D0030000000000002000000}
        object tvOrdersOrderID: TcxGridDBColumn
          Caption = 'Order #'
          DataBinding.FieldName = 'OrderID'
          Visible = False
          GroupIndex = 0
          HeaderImageIndex = 33
        end
        object tvOrdersProductName: TcxGridDBColumn
          Caption = 'Product'
          DataBinding.FieldName = 'ProductName'
          FooterAlignmentHorz = taRightJustify
          HeaderImageIndex = 32
          Options.Editing = False
        end
        object tvOrdersUnitPrice: TcxGridDBColumn
          Caption = 'Unit Price'
          DataBinding.FieldName = 'UnitPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = '$,0.00;$-,0.00'
          Properties.UseLeftAlignmentOnEditing = False
          HeaderImageIndex = 28
        end
        object tvOrdersQuantity: TcxGridDBColumn
          DataBinding.FieldName = 'Quantity'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.UseLeftAlignmentOnEditing = False
          HeaderImageIndex = 34
        end
        object tvOrdersDiscount: TcxGridDBColumn
          DataBinding.FieldName = 'Discount'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00%;-,0.00%'
          Properties.EditFormat = ',0.00;-,0.00'
          Properties.UseLeftAlignmentOnEditing = False
          HeaderImageIndex = 30
        end
        object tvOrdersDiscountAmount: TcxGridDBColumn
          Caption = 'Discount Amount'
          DataBinding.Expression = #1'[Unit Price]*[Quantity]*[Discount]/100'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '$,0.00;$-,0.00'
          Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = ValidateExpressionColumn
          FooterAlignmentHorz = taRightJustify
          HeaderImageIndex = 31
        end
        object tvOrdersTotal: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.Expression = #1'[Unit Price]*[Quantity]-[Discount Amount]'
          DataBinding.ValueType = 'Currency'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.DisplayFormat = '$,0.00;$-,0.00'
          Properties.ValidationOptions = [evoShowErrorIcon, evoAllowLoseFocus]
          OnValidateDrawValue = ValidateExpressionColumn
          FooterAlignmentHorz = taRightJustify
          HeaderImageIndex = 29
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = tvOrders
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 720
    Width = 202
    ExplicitLeft = 720
    ExplicitWidth = 202
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 201
      Width = 201
      inherited lcFrame: TdxLayoutControl
        Width = 199
        ExplicitWidth = 199
        object galColumns: TdxGalleryControl [0]
          Left = 10
          Top = 28
          Width = 179
          Height = 100
          Images = dmMain.ilMain
          OptionsBehavior.ItemCheckMode = icmSingleRadio
          OptionsBehavior.ItemHotTrack = False
          OptionsBehavior.ItemMultiSelectKind = imskListView
          OptionsBehavior.SelectOnRightClick = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.Item.Image.ShowFrame = False
          OptionsView.Item.Text.AlignHorz = taLeftJustify
          OptionsView.Item.Text.AlignVert = vaCenter
          OptionsView.Item.Text.Position = posRight
          OptionsView.Item.Text.WordWrap = False
          TabOrder = 0
          OnDblClick = btnShowExpressionEditorClick
          object dxGalleryControl1Group1: TdxGalleryControlGroup
            Caption = 'Group0'
            ShowCaption = False
            object dxGalleryControl1Group1Item1: TdxGalleryControlItem
              Caption = 'Total'
              Checked = True
              ImageIndex = 29
              ActionIndex = nil
            end
            object dxGalleryControl1Group1Item2: TdxGalleryControlItem
              Caption = 'Discount Amount'
              ImageIndex = 31
              ActionIndex = nil
            end
          end
        end
        object btnShowExpressionEditor: TcxButton [1]
          Left = 10
          Top = 134
          Width = 179
          Height = 36
          Caption = 'Show Expression Editor for selected column'
          TabOrder = 1
          WordWrap = True
          OnClick = btnShowExpressionEditorClick
        end
        inherited lgSetupTools: TdxLayoutGroup
          CaptionOptions.Text = 'Expression Editor'
          SizeOptions.SizableHorz = False
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          CaptionOptions.Visible = False
          Visible = False
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahClient
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          CaptionOptions.Layout = clTop
          Control = btnShowExpressionEditor
          ControlOptions.OriginalHeight = 36
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Column:'
          CaptionOptions.Layout = clTop
          Control = galColumns
          ControlOptions.OriginalHeight = 100
          ControlOptions.OriginalWidth = 150
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acFilteredItemsList: TAction
      AutoCheck = True
      Caption = 'Show Filtered Items Only'
      Checked = True
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
