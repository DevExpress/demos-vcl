inherited frmTreeListExplorer: TfrmTreeListExplorer
  Caption = 'File Explorer'
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited tlUnbound: TcxTreeList
      Bands = <
        item
        end>
      OptionsData.Editing = False
      Styles.IncSearch = styleIncSearch
      OnCompare = tlUnboundCompare
      OnExpanded = tlUnboundExpanded
      OnExpanding = tlUnboundExpanding
      OnGetNodeImageIndex = tlUnboundGetNodeImageIndex
      object clnName: TcxTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Caption.ShowEndEllipsis = False
        Caption.Text = 'Name'
        Width = 206
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnExtension: TcxTreeListColumn
        PropertiesClassName = 'TcxTextEditProperties'
        Caption.ShowEndEllipsis = False
        Caption.Text = 'Extension'
        Width = 89
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnSize: TcxTreeListColumn
        Caption.ShowEndEllipsis = False
        Caption.Text = 'Size'
        DataBinding.ValueType = 'LargeInt'
        Width = 40
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
        OnGetDisplayText = clnSizeGetDisplayText
      end
      object clnDateTime: TcxTreeListColumn
        Caption.ShowEndEllipsis = False
        Caption.Text = 'Date Modified'
        DataBinding.ValueType = 'DateTime'
        Width = 106
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object cbSearchColor: TcxColorComboBox [1]
      Left = 559
      Top = 84
      ColorValue = clDefault
      Properties.CustomColors = <
        item
          Color = clBlack
          Description = 'clBlack'
        end
        item
          Color = clMaroon
          Description = 'clMaroon'
        end
        item
          Color = clGreen
          Description = 'clGreen'
        end
        item
          Color = clOlive
          Description = 'clOlive'
        end
        item
          Color = clNavy
          Description = 'clNavy'
        end
        item
          Color = clPurple
          Description = 'clPurple'
        end
        item
          Color = clTeal
          Description = 'clTeal'
        end
        item
          Color = clGray
          Description = 'clGray'
        end
        item
          Color = clSilver
          Description = 'clSilver'
        end
        item
          Color = clRed
          Description = 'clRed'
        end
        item
          Color = clLime
          Description = 'clLime'
        end
        item
          Color = clYellow
          Description = 'clYellow'
        end
        item
          Color = clBlue
          Description = 'clBlue'
        end
        item
          Color = clFuchsia
          Description = 'clFuchsia'
        end
        item
          Color = clAqua
          Description = 'clAqua'
        end
        item
          Color = clWhite
          Description = 'clWhite'
        end
        item
          Color = clScrollBar
          Description = 'clScrollBar'
        end
        item
          Color = clBackground
          Description = 'clBackground'
        end
        item
          Color = clActiveCaption
          Description = 'clActiveCaption'
        end
        item
          Color = clInactiveCaption
          Description = 'clInactiveCaption'
        end
        item
          Color = clMenu
          Description = 'clMenu'
        end
        item
          Color = clWindow
          Description = 'clWindow'
        end
        item
          Color = clWindowFrame
          Description = 'clWindowFrame'
        end
        item
          Color = clMenuText
          Description = 'clMenuText'
        end
        item
          Color = clWindowText
          Description = 'clWindowText'
        end
        item
          Color = clCaptionText
          Description = 'clCaptionText'
        end
        item
          Color = clActiveBorder
          Description = 'clActiveBorder'
        end
        item
          Color = clInactiveBorder
          Description = 'clInactiveBorder'
        end
        item
          Color = clAppWorkSpace
          Description = 'clAppWorkSpace'
        end
        item
          Color = clHighlight
          Description = 'clHighlight'
        end
        item
          Color = clHighlightText
          Description = 'clHighlightText'
        end
        item
          Color = clBtnFace
          Description = 'clBtnFace'
        end
        item
          Color = clBtnShadow
          Description = 'clBtnShadow'
        end
        item
          Color = clGrayText
          Description = 'clGrayText'
        end
        item
          Color = clBtnText
          Description = 'clBtnText'
        end
        item
          Color = clInactiveCaptionText
          Description = 'clInactiveCaptionText'
        end
        item
          Color = clBtnHighlight
          Description = 'clBtnHighlight'
        end
        item
          Color = cl3DDkShadow
          Description = 'cl3DDkShadow'
        end
        item
          Color = cl3DLight
          Description = 'cl3DLight'
        end
        item
          Color = clInfoText
          Description = 'clInfoText'
        end
        item
          Color = clInfoBk
          Description = 'clInfoBk'
        end
        item
          Color = clHotLight
          Description = 'clHotLight'
        end
        item
          Color = clGradientActiveCaption
          Description = 'clGradientActiveCaption'
        end
        item
          Color = clGradientInactiveCaption
          Description = 'clGradientInactiveCaption'
        end
        item
          Color = clMenuHighlight
          Description = 'clMenuHighlight'
        end
        item
          Color = clMenuBar
          Description = 'clMenuBar'
        end>
      Properties.OnEditValueChanged = cbSearchColorPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 1
      Width = 182
    end
    object cbSearchTextColor: TcxColorComboBox [2]
      Left = 559
      Top = 129
      ColorValue = clDefault
      Properties.CustomColors = <
        item
          Color = clBlack
          Description = 'clBlack'
        end
        item
          Color = clMaroon
          Description = 'clMaroon'
        end
        item
          Color = clGreen
          Description = 'clGreen'
        end
        item
          Color = clOlive
          Description = 'clOlive'
        end
        item
          Color = clNavy
          Description = 'clNavy'
        end
        item
          Color = clPurple
          Description = 'clPurple'
        end
        item
          Color = clTeal
          Description = 'clTeal'
        end
        item
          Color = clGray
          Description = 'clGray'
        end
        item
          Color = clSilver
          Description = 'clSilver'
        end
        item
          Color = clRed
          Description = 'clRed'
        end
        item
          Color = clLime
          Description = 'clLime'
        end
        item
          Color = clYellow
          Description = 'clYellow'
        end
        item
          Color = clBlue
          Description = 'clBlue'
        end
        item
          Color = clFuchsia
          Description = 'clFuchsia'
        end
        item
          Color = clAqua
          Description = 'clAqua'
        end
        item
          Color = clWhite
          Description = 'clWhite'
        end
        item
          Color = clScrollBar
          Description = 'clScrollBar'
        end
        item
          Color = clBackground
          Description = 'clBackground'
        end
        item
          Color = clActiveCaption
          Description = 'clActiveCaption'
        end
        item
          Color = clInactiveCaption
          Description = 'clInactiveCaption'
        end
        item
          Color = clMenu
          Description = 'clMenu'
        end
        item
          Color = clWindow
          Description = 'clWindow'
        end
        item
          Color = clWindowFrame
          Description = 'clWindowFrame'
        end
        item
          Color = clMenuText
          Description = 'clMenuText'
        end
        item
          Color = clWindowText
          Description = 'clWindowText'
        end
        item
          Color = clCaptionText
          Description = 'clCaptionText'
        end
        item
          Color = clActiveBorder
          Description = 'clActiveBorder'
        end
        item
          Color = clInactiveBorder
          Description = 'clInactiveBorder'
        end
        item
          Color = clAppWorkSpace
          Description = 'clAppWorkSpace'
        end
        item
          Color = clHighlight
          Description = 'clHighlight'
        end
        item
          Color = clHighlightText
          Description = 'clHighlightText'
        end
        item
          Color = clBtnFace
          Description = 'clBtnFace'
        end
        item
          Color = clBtnShadow
          Description = 'clBtnShadow'
        end
        item
          Color = clGrayText
          Description = 'clGrayText'
        end
        item
          Color = clBtnText
          Description = 'clBtnText'
        end
        item
          Color = clInactiveCaptionText
          Description = 'clInactiveCaptionText'
        end
        item
          Color = clBtnHighlight
          Description = 'clBtnHighlight'
        end
        item
          Color = cl3DDkShadow
          Description = 'cl3DDkShadow'
        end
        item
          Color = cl3DLight
          Description = 'cl3DLight'
        end
        item
          Color = clInfoText
          Description = 'clInfoText'
        end
        item
          Color = clInfoBk
          Description = 'clInfoBk'
        end
        item
          Color = clHotLight
          Description = 'clHotLight'
        end
        item
          Color = clGradientActiveCaption
          Description = 'clGradientActiveCaption'
        end
        item
          Color = clGradientInactiveCaption
          Description = 'clGradientInactiveCaption'
        end
        item
          Color = clMenuHighlight
          Description = 'clMenuHighlight'
        end
        item
          Color = clMenuBar
          Description = 'clMenuBar'
        end>
      Properties.OnEditValueChanged = cbSearchTextColorPropertiesEditValueChanged
      Style.HotTrack = False
      TabOrder = 2
      Width = 182
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Height = 21
      ItemIndex = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Search Color:'
      CaptionOptions.Layout = clTop
      Control = cbSearchColor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Search Text Color:'
      CaptionOptions.Layout = clTop
      Control = cbSearchTextColor
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object chkIncSearch: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = acIncSearch
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited alMain: TActionList
    object acIncSearch: TAction
      AutoCheck = True
      Caption = 'Incremental Search'
      OnExecute = acIncSearchExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 384
    Top = 72
    PixelsPerInch = 96
    object styleIncSearch: TcxStyle
      AssignedValues = [svColor, svTextColor]
      Color = clTeal
      TextColor = clYellow
    end
  end
end
