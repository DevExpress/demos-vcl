inherited frmGridFilterExpression: TfrmGridFilterExpression
  inherited PanelDescription: TdxPanel
    ExplicitTop = 667
  end
  inherited PanelGrid: TdxPanel
    Width = 732
    ExplicitWidth = 760
    ExplicitHeight = 667
    inherited Grid: TcxGrid
      Width = 732
      Height = 667
      ExplicitWidth = 760
      ExplicitHeight = 667
      object BandedTableView: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsCarOrdersAndTransfer
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        Bands = <
          item
            Caption = 'Car Info'
            Width = 150
          end
          item
            Caption = 'Order Info'
            Width = 120
          end
          item
            Caption = 'Delivery Info'
            Width = 160
          end>
        ConditionalFormatting = {
          060000000A000000310000005400640078005300700072006500610064005300
          680065006500740043006F006E0064006900740069006F006E0061006C004600
          6F0072006D0061007400740069006E006700520075006C006500450078007000
          720065007300730069006F006E00D10000000B000000000000000B000000FFFF
          FF7F0001000000200B00000007000000430061006C0069006200720069000000
          00FF666600000000200000000020000000002000000000200000000020000700
          0000470045004E004500520041004C000000000000020000000000000000012E
          0000003D0041004E00440028004E004F00540028005B0043006F006D0070006C
          0065007400650064005D0029002C005B00440065006C00690076006500720079
          00200044006100740065005D003C0054004F0044004100590028002900290000
          0000003100000054006400780053007000720065006100640053006800650065
          00740043006F006E0064006900740069006F006E0061006C0046006F0072006D
          0061007400740069006E006700520075006C0065004500780070007200650073
          00730069006F006E00D10000000B000000000000000B000000FFFFFF7F000100
          0000200B00000007000000430061006C0069006200720069000000006EA69200
          0000002000000000200000000020000000002000000000200007000000470045
          004E004500520041004C000000000000020000000000000000012E0000003D00
          41004E00440028004E004F00540028005B0043006F006D0070006C0065007400
          650064005D0029002C005B00440065006C006900760065007200790020004400
          6100740065005D003E0054004F00440041005900280029002900000000003100
          0000540064007800530070007200650061006400530068006500650074004300
          6F006E0064006900740069006F006E0061006C0046006F0072006D0061007400
          740069006E006700520075006C00650045007800700072006500730073006900
          6F006E00D10000000B000000000000000B000000FFFFFF7F0001000000200B00
          000007000000430061006C006900620072006900000000B6D0E4000000002000
          000000200000000020000000002000000000200007000000470045004E004500
          520041004C000000000000020000000000000000012E0000003D0041004E0044
          0028004E004F00540028005B0043006F006D0070006C0065007400650064005D
          0029002C005B00440065006C0069007600650072007900200044006100740065
          005D003D0054004F004400410059002800290029000000000031000000540064
          0078005300700072006500610064005300680065006500740043006F006E0064
          006900740069006F006E0061006C0046006F0072006D0061007400740069006E
          006700520075006C006500450078007000720065007300730069006F006E009F
          000000070000000000000007000000FFFFFF7F0001008000000B000000070000
          00430061006C0069006200720069000001000000002000000020000000002000
          00000020000000002000000000200007000000470045004E004500520041004C
          00000000000002000000000000000001150000003D005B005000720069006300
          65005D003E005B004C006900730074002000500072006900630065005D000000
          0000310000005400640078005300700072006500610064005300680065006500
          740043006F006E0064006900740069006F006E0061006C0046006F0072006D00
          61007400740069006E006700520075006C006500450078007000720065007300
          730069006F006E009F000000070000000000000007000000FFFFFF7F00018000
          00000B00000007000000430061006C0069006200720069000001000000002000
          0000200000000020000000002000000000200000000020000700000047004500
          4E004500520041004C00000000000002000000000000000001150000003D005B
          00500072006900630065005D003C005B004C0069007300740020005000720069
          00630065005D00000000002E0000005400640078005300700072006500610064
          005300680065006500740043006F006E0064006900740069006F006E0061006C
          0046006F0072006D0061007400740069006E006700520075006C006500440061
          00740061004200610072003C000000040000000000000004000000FFFFFF7F00
          0000000000000000000001000000000000000000000000010000000000002000
          000020FFFFFF1F008BEF00}
        object BandedTableViewRecId: TcxGridDBBandedColumn
          DataBinding.FieldName = 'RecId'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewTrademark: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Trademark'
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Name'
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewBodyStyle: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BodyStyle'
          Width = 50
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object BandedTableViewPrice: TcxGridDBBandedColumn
          Caption = 'List Price'
          DataBinding.FieldName = 'Price'
          Width = 40
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewBodyStyleID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BodyStyleID'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object BandedTableViewSalesDate: TcxGridDBBandedColumn
          Caption = 'Sales Date'
          DataBinding.FieldName = 'SalesDate'
          Width = 40
          Position.BandIndex = 1
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewSalesPrice: TcxGridDBBandedColumn
          Caption = 'Price'
          DataBinding.FieldName = 'SalesPrice'
          Width = 40
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewDeliveriFrom: TcxGridDBBandedColumn
          Caption = 'From'
          DataBinding.FieldName = 'DeliveryFrom'
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object BandedTableViewDeliveryTo: TcxGridDBBandedColumn
          Caption = 'To'
          DataBinding.FieldName = 'DeliveryTo'
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object BandedTableViewDeliveryDate: TcxGridDBBandedColumn
          Caption = 'Delivery Date'
          DataBinding.FieldName = 'DeliveryDate'
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object BandedTableViewDeliveryComplete: TcxGridDBBandedColumn
          Caption = 'Completed'
          DataBinding.FieldName = 'DeliveryComplete'
          Width = 40
          Position.BandIndex = 2
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
      end
      object GridLevel1: TcxGridLevel
        GridView = BandedTableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 732
    Width = 190
    ExplicitLeft = 732
    ExplicitWidth = 190
    ExplicitHeight = 667
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 161
      ExplicitHeight = 667
      Width = 189
      inherited lcFrame: TdxLayoutControl
        Width = 187
        ExplicitWidth = 159
        ExplicitHeight = 647
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.SizableHorz = False
        end
        object cxCheckBox1: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          Action = actExpressionEditing
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object actExpressionEditing: TAction
      AutoCheck = True
      Caption = 'Editable Expressions'
      OnExecute = actExpressionEditingExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
