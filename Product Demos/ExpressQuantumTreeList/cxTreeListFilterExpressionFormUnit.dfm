inherited frmFilterExpression: TfrmFilterExpression
  Caption = 'Calculated Filter Items'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlDB: TcxDBTreeList
      Bands = <
        item
          Caption.Text = 'Car Info'
          Width = 150
        end
        item
          Caption.Text = 'Order Info'
          Width = 150
        end
        item
          Caption.Text = 'Delivery Info'
          Width = 200
        end>
      DataController.DataSource = dmTreeList.dsCarOrdersAndDelivery
      DataController.ParentField = 'ParentID'
      DataController.KeyField = 'ID'
      FilterBox.Visible = fvNonEmpty
      Navigator.Visible = True
      OptionsCustomizing.ColumnFiltering = bTrue
      OptionsView.Bands = True
      OptionsView.CategorizedColumn = tlDBModel
      OptionsView.ColumnAutoWidth = True
      OptionsView.Indicator = True
      OptionsView.PaintStyle = tlpsCategorized
      Styles.OnGetContentStyle = tlDBStylesGetContentStyle
      OnEditing = tlDBEditing
      ConditionalFormatting = {
        060000000A000000310000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500450078007000
        720065007300730069006F006E00D1000000080000000000000008000000FFFF
        FF7F0001000000200B00000007000000430061006C0069006200720069000000
        00FF666600000000200000000020000000002000000000200000000020000700
        0000470045004E004500520041004C000000000000020000000000000000012E
        0000003D0041004E00440028004E004F00540028005B0043006F006D0070006C
        0065007400650064005D0029002C005B00440065006C00690076006500720079
        00200044006100740065005D003C0054004F0044004100590028002900290000
        0000003100000054006400780053007000720065006100640053006800650065
        00740043006F006E0064006900740069006F006E0061006C0046006F0072006D
        0061007400740069006E006700520075006C0065004500780070007200650073
        00730069006F006E00D1000000080000000000000008000000FFFFFF7F000100
        0000200B00000007000000430061006C0069006200720069000000006EA69200
        0000002000000000200000000020000000002000000000200007000000470045
        004E004500520041004C000000000000020000000000000000012E0000003D00
        41004E00440028004E004F00540028005B0043006F006D0070006C0065007400
        650064005D0029002C005B00440065006C006900760065007200790020004400
        6100740065005D003E0054004F00440041005900280029002900000000003100
        0000540064007800530070007200650061006400530068006500650074004300
        6F006E0064006900740069006F006E0061006C0046006F0072006D0061007400
        740069006E006700520075006C00650045007800700072006500730073006900
        6F006E00D1000000080000000000000008000000FFFFFF7F0001000000200B00
        000007000000430061006C006900620072006900000000B6D0E4000000002000
        000000200000000020000000002000000000200007000000470045004E004500
        520041004C000000000000020000000000000000012E0000003D0041004E0044
        0028004E004F00540028005B0043006F006D0070006C0065007400650064005D
        0029002C005B00440065006C0069007600650072007900200044006100740065
        005D003E0054004F004400410059002800290029000000000031000000540064
        0078005300700072006500610064005300680065006500740043006F006E0064
        006900740069006F006E0061006C0046006F0072006D0061007400740069006E
        006700520075006C006500450078007000720065007300730069006F006E009F
        000000060000000000000006000000FFFFFF7F0001008000000B000000070000
        00430061006C0069006200720069000001000000002000000020000000002000
        00000020000000002000000000200007000000470045004E004500520041004C
        00000000000002000000000000000001150000003D005B005000720069006300
        65005D003E005B004C006900730074002000500072006900630065005D000000
        0000310000005400640078005300700072006500610064005300680065006500
        740043006F006E0064006900740069006F006E0061006C0046006F0072006D00
        61007400740069006E006700520075006C006500450078007000720065007300
        730069006F006E009F000000060000000000000006000000FFFFFF7F00018000
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
      object tlDBModel: TcxDBTreeListColumn
        DataBinding.FieldName = 'Name'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBBodyStyleID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'BodyStyleID'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBBodyStyle: TcxDBTreeListColumn
        DataBinding.FieldName = 'BodyStyle'
        Width = 50
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPrice: TcxDBTreeListColumn
        Caption.Text = 'List Price'
        DataBinding.FieldName = 'Price'
        Width = 50
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBSalesDate: TcxDBTreeListColumn
        Caption.Text = 'Sales Date'
        DataBinding.FieldName = 'SalesDate'
        Width = 50
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBSalesPrice: TcxDBTreeListColumn
        Caption.Text = 'Price'
        DataBinding.FieldName = 'SalesPrice'
        Width = 50
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 1
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBDeliveryDate: TcxDBTreeListColumn
        Caption.Text = 'Delivery Date'
        DataBinding.FieldName = 'DeliveryDate'
        Width = 50
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBDeliveryComplete: TcxDBTreeListColumn
        Caption.Text = 'Completed'
        DataBinding.FieldName = 'DeliveryComplete'
        Width = 50
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBDeliveryFrom: TcxDBTreeListColumn
        Caption.Text = 'From'
        DataBinding.FieldName = 'DeliveryFrom'
        Width = 50
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBDeliveryTo: TcxDBTreeListColumn
        Caption.Text = 'To'
        DataBinding.FieldName = 'DeliveryTo'
        Width = 50
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    object cxCheckBox1: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actExpressionEditing
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object actExpressionEditing: TAction
      AutoCheck = True
      Caption = 'Editable Expressions'
      OnExecute = actExpressionEditingExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 56
    Top = 96
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 416
    Top = 112
    PixelsPerInch = 96
    object stGroup: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
