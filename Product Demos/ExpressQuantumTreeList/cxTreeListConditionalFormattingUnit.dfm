inherited frmConditionalFormatting: TfrmConditionalFormatting
  Caption = 'Conditional Formatting'
  ClientHeight = 426
  ExplicitHeight = 426
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Height = 426
    ExplicitHeight = 426
    inherited tlDB: TcxDBTreeList
      Height = 368
      Bands = <
        item
          Caption.Text = 'Main Info'
        end
        item
          Caption.Text = 'Specifications'
        end
        item
          Caption.Text = 'Engine'
          Position.BandIndex = 1
          Position.ColIndex = 0
        end
        item
          Caption.Text = 'Gearbox'
          Position.BandIndex = 1
          Position.ColIndex = 2
        end
        item
          Caption.Text = 'Fuel Economy (mpg)'
          Position.BandIndex = 1
          Position.ColIndex = 1
        end
        item
          Caption.Text = 'Details'
        end>
      TabOrder = 1
      ExplicitHeight = 368
      ConditionalFormatting = {
        070000000A0000002E0000005400640078005300700072006500610064005300
        680065006500740043006F006E0064006900740069006F006E0061006C004600
        6F0072006D0061007400740069006E006700520075006C006500490063006F00
        6E00530065007400540000000001000000080000003300530079006D0062006F
        006C007300050000000000000005000000FFFFFF7F0002000000020000000000
        1200000002000000022100000000130000000200000002430000000014000000
        2E00000054006400780053007000720065006100640053006800650065007400
        43006F006E0064006900740069006F006E0061006C0046006F0072006D006100
        7400740069006E006700520075006C0065004400610074006100420061007200
        3C000000010000000000000001000000FFFFFF7F000000000000000000000001
        000000000200000000000000010000000000002000000020008BEF00008BEF00
        3400000054006400780053007000720065006100640053006800650065007400
        43006F006E0064006900740069006F006E0061006C0046006F0072006D006100
        7400740069006E006700520075006C006500540077006F0043006F006C006F00
        72005300630061006C00650023000000060000000000000006000000FFFFFF7F
        000000000000FFFF00000000000000FF3E3E0034000000540064007800530070
        0072006500610064005300680065006500740043006F006E0064006900740069
        006F006E0061006C0046006F0072006D0061007400740069006E006700520075
        006C006500540077006F0043006F006C006F0072005300630061006C00650023
        000000070000000000000007000000FFFFFF7F000000000000FFFF0000000000
        0000FF3E3E003600000054006400780053007000720065006100640053006800
        65006500740043006F006E0064006900740069006F006E0061006C0046006F00
        72006D0061007400740069006E006700520075006C00650054006F0070004200
        6F00740074006F006D00560061006C0075006500730073000000010000000000
        000001000000FFFFFF7F0001800000000B00000007000000430061006C006900
        6200720069000001000000002000000020000000002000000000200000000020
        00000000200007000000470045004E004500520041004C000000000000020000
        0000000000000100000300000036000000540064007800530070007200650061
        0064005300680065006500740043006F006E0064006900740069006F006E0061
        006C0046006F0072006D0061007400740069006E006700520075006C00650054
        006F00700042006F00740074006F006D00560061006C00750065007300730000
        00010000000000000001000000FFFFFF7F0001008000000B0000000700000043
        0061006C00690062007200690000010000000020000000200000000020000000
        0020000000002000000000200007000000470045004E004500520041004C0000
        00000000020000000000000000010100030000002E0000005400640078005300
        700072006500610064005300680065006500740043006F006E00640069007400
        69006F006E0061006C0046006F0072006D0061007400740069006E0067005200
        75006C006500490063006F006E005300650074006C0000000100000000060000
        00350042006F00780065007300040000000000000004000000FFFFFF7F000200
        0000020000000000330000000200000002140000000032000000020000000228
        000000003100000002000000023C000000003000000002000000025000000000
        2F000000}
      inherited clnModel: TcxDBTreeListColumn
        Width = 155
      end
      inherited clnPrice: TcxDBTreeListColumn
        Width = 70
      end
      inherited clnHP: TcxDBTreeListColumn
        Width = 71
      end
      inherited clnCylinders: TcxDBTreeListColumn
        Width = 41
      end
      inherited clnSpeed: TcxDBTreeListColumn
        Width = 45
      end
      inherited clnAutomatic: TcxDBTreeListColumn
        Width = 51
      end
      inherited clnCity: TcxDBTreeListColumn
        Width = 42
      end
      inherited clnHighway: TcxDBTreeListColumn
        Width = 51
      end
      inherited clnDescription: TcxDBTreeListColumn
        Width = 41
      end
      inherited clnPicture: TcxDBTreeListColumn
        Width = 28
      end
    end
    object btnManageRules: TcxButton [1]
      Left = 416
      Top = 41
      Width = 182
      Height = 25
      Caption = 'Manage Rules...'
      TabOrder = 0
      OnClick = btnManageRulesClick
    end
    inherited lgMainGroup: TdxLayoutGroup
      LayoutDirection = ldVertical
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      Index = 1
    end
    inherited liDescription: TdxLayoutLabeledItem
      Visible = False
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnManageRules
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
  end
end
