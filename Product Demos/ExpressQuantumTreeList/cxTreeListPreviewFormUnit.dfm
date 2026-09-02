inherited frmPreview: TfrmPreview
  Caption = 'Preview'
  ClientWidth = 601
  OnCreate = FormCreate
  ExplicitWidth = 601
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 601
    ExplicitWidth = 601
    inherited tlDB: TcxDBTreeList
      Width = 365
      TabOrder = 2
      ExplicitWidth = 365
    end
    object cbPlace: TcxComboBox [1]
      Left = 400
      Top = 84
      AutoSize = False
      Properties.Items.Strings = (
        'Bottom'
        'Top')
      Properties.OnChange = cbPlacePropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'cbPlace'
      Height = 21
      Width = 182
    end
    object cbColumn: TcxComboBox [2]
      Left = 400
      Top = 129
      AutoSize = False
      Properties.OnChange = cbColumnPropertiesChange
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cbColumn'
      Height = 21
      Width = 182
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited lgTools: TdxLayoutGroup
      SizeOptions.Height = 21
      ItemIndex = 2
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lgMainGroup
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Place:'
      CaptionOptions.Layout = clTop
      Control = cbPlace
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'Column:'
      CaptionOptions.Layout = clTop
      Control = cbColumn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object chkVisible1: TdxLayoutCheckBoxItem
      Parent = lgTools
      AlignVert = avTop
      Action = acVisible
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acVisible: TAction
      AutoCheck = True
      Caption = 'Visible'
      OnExecute = acVisibleExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited ImageList: TcxImageList
    FormatVersion = 1
  end
end
