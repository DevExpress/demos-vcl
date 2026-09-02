inherited frmMenus: TfrmMenus
  Caption = 'Built-in Context Menus'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlDB: TcxDBTreeList
      Bands = <
        item
          Caption.Text = 'Main Info'
        end
        item
          Caption.Text = 'Specifications'
          Visible = False
        end
        item
          Caption.Text = 'Engine'
        end
        item
          Caption.Text = 'Gearbox'
        end
        item
          Caption.Text = 'Fuel Economy (mpg)'
        end
        item
          Caption.Text = 'Details'
        end>
      OptionsView.Footer = True
      OptionsView.GroupFooters = tlgfAlwaysVisible
      inherited clnPrice: TcxDBTreeListColumn
        Summary.FooterSummaryItems = <
          item
            Kind = skSum
          end>
        Summary.GroupFooterSummaryItems = <
          item
            Kind = skSum
          end>
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = lgTools
      CaptionOptions.Text = 'Use Built-in Menus:'
      Index = 0
    end
    object chkHeader: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acHeader
      Index = 1
    end
    object chkGroupFooter: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acGroupFooter
      Index = 2
    end
    object chkFooter: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acFooter
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acHeader: TAction
      AutoCheck = True
      Caption = 'Column Header Context Menu'
      OnExecute = acHeaderExecute
    end
    object acGroupFooter: TAction
      AutoCheck = True
      Caption = 'Group Footer Context Menu'
      OnExecute = acGroupFooterExecute
    end
    object acFooter: TAction
      AutoCheck = True
      Caption = 'Footer Context Menu'
      OnExecute = acFooterExecute
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
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 456
    Top = 128
  end
end
