inherited frmNodeVisibility: TfrmNodeVisibility
  Caption = 'Node Visibility'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlDB: TcxDBTreeList
      Width = 347
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
          Caption.Text = 'Transmission'
        end
        item
          Caption.Text = 'Fuel Economy (mpg)'
        end
        item
          Caption.Text = 'Details'
        end>
      ExplicitWidth = 347
      inherited clnModel: TcxDBTreeListColumn
        Width = 128
      end
      inherited clnPrice: TcxDBTreeListColumn
        Width = 58
      end
      inherited clnHP: TcxDBTreeListColumn
        Width = 61
      end
      inherited clnCylinders: TcxDBTreeListColumn
        Width = 34
      end
      inherited clnSpeed: TcxDBTreeListColumn
        Width = 37
      end
      inherited clnAutomatic: TcxDBTreeListColumn
        Width = 43
      end
      inherited clnHighway: TcxDBTreeListColumn
        Width = 40
      end
      inherited clnDescription: TcxDBTreeListColumn
        Width = 34
      end
      inherited clnPicture: TcxDBTreeListColumn
        Width = 22
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      Index = 1
    end
    object chkManual: TdxLayoutCheckBoxItem
      Parent = lgTools
      SizeOptions.Height = 21
      SizeOptions.Width = 176
      Action = acManual
      Index = 0
    end
    object chkAutomatic: TdxLayoutCheckBoxItem
      Parent = lgTools
      SizeOptions.Height = 21
      SizeOptions.Width = 176
      Action = acAutomatic
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acManual: TAction
      AutoCheck = True
      Caption = 'Show Cars With Manual Transmissions'
      Checked = True
      OnExecute = acManualExecute
    end
    object acAutomatic: TAction
      AutoCheck = True
      Caption = 'Show Cars With Automatic Transmissions'
      Checked = True
      OnExecute = acManualExecute
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
