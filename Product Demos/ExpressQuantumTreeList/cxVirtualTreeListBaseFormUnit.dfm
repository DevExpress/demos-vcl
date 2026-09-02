inherited cxVirtualTreeListDemoUnitForm: TcxVirtualTreeListDemoUnitForm
  Caption = 'Provider Mode'
  ClientHeight = 510
  ClientWidth = 1030
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1030
  ExplicitHeight = 510
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1030
    Height = 510
    ExplicitWidth = 1030
    ExplicitHeight = 510
    object cxVirtualTreeList: TcxVirtualTreeList [0]
      Left = 10
      Top = 41
      Width = 1000
      Height = 421
      Bands = <
        item
        end>
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.ChangeDelay = 1000
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 3
      OnExpanding = cxVirtualTreeListExpanding
      object clnID: TcxTreeListColumn
        PropertiesClassName = 'TcxSpinEditProperties'
        Caption.Text = 'Id'
        DataBinding.ValueType = 'Integer'
        Width = 182
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnName: TcxTreeListColumn
        Caption.Text = 'Text'
        Width = 162
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnDate: TcxTreeListColumn
        Caption.Text = 'Date'
        DataBinding.ValueType = 'DateTime'
        Width = 171
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object chkSmartLoadMode: TcxCheckBox [1]
      Left = 10
      Top = 10
      Action = acSmartLoadMode
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
    end
    object btFullExpand: TcxButton [2]
      Left = 136
      Top = 10
      Width = 102
      Height = 25
      Caption = 'Full Expand'
      TabOrder = 1
      OnClick = btFullExpandClick
    end
    object sbMain: TdxStatusBar [3]
      Left = 260
      Top = 10
      Width = 668
      Height = 20
      Panels = <
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Width = 120
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Width = 120
        end
        item
          PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
          Width = 120
        end>
      PaintStyle = stpsUseLookAndFeel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    inherited lgMainGroup: TdxLayoutGroup
      LayoutDirection = ldVertical
    end
    inherited lgTools: TdxLayoutGroup
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxVirtualTreeList
      ControlOptions.OriginalHeight = 245
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = chkSmartLoadMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btFullExpand
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      SizeOptions.Height = 21
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTools
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = sbMain
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 668
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acSmartLoadMode: TAction
      AutoCheck = True
      Caption = 'Smart Load Mode'
      OnExecute = acSmartLoadModeExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
