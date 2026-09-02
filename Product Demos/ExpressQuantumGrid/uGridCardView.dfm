inherited frmCardViewGrid: TfrmCardViewGrid
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object DBCardView: TcxGridDBCardView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsModels
        DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.CardExpanding = True
        OptionsCustomize.RowHiding = True
        OptionsCustomize.RowMoving = True
        OptionsView.CardIndent = 15
        OptionsView.CardWidth = 350
        OptionsView.CategoryRowCaptionInRowAlternateCaption = True
        OptionsView.ShowRowFilterButtons = sfbAlways
        object cvRowCaption: TcxGridDBCardViewRow
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taCenter
          OnGetDisplayText = cvRowCaptionGetDisplayText
          CaptionAlignmentHorz = taCenter
          Kind = rkCaption
          Options.ShowCaption = False
          Position.BeginsLayer = True
          Styles.Content = dmMain.cxStyleBold
        end
        object DBCardViewTrademarkID: TcxGridDBCardViewRow
          Caption = 'Logo'
          DataBinding.FieldName = 'TrademarkID'
          RepositoryItem = dmMain.edrepTrademarkLogo
          Options.ShowCaption = False
          Position.BeginsLayer = True
        end
        object DBCardViewName: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Name'
          Options.FilteringPopupIncrementalFiltering = True
          Position.BeginsLayer = True
        end
        object DBCardViewModification: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Modification'
          Position.BeginsLayer = True
        end
        object DBCardViewCategory: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Category'
          Position.BeginsLayer = True
        end
        object DBCardViewBodyStyle: TcxGridDBCardViewRow
          DataBinding.FieldName = 'BodyStyle'
          Position.BeginsLayer = False
        end
        object DBCardViewPhoto: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Photo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          Position.BeginsLayer = True
          Position.LineCount = 3
        end
        object DBCardViewDescription: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Description'
          PropertiesClassName = 'TcxBlobEditProperties'
          Position.BeginsLayer = True
        end
        object DBCardViewPrice: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Price'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.DisplayFormat = '$ ,0;$ -,0'
          Position.BeginsLayer = True
        end
        object DBCardViewInStock: TcxGridDBCardViewRow
          DataBinding.FieldName = 'InStock'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Position.BeginsLayer = False
        end
        object DBCardViewHyperlink: TcxGridDBCardViewRow
          Caption = 'Home site'
          DataBinding.FieldName = 'Hyperlink'
          PropertiesClassName = 'TcxHyperLinkEditProperties'
          Properties.SingleClick = True
          Position.BeginsLayer = True
        end
      end
      object GridLevel: TcxGridLevel
        GridView = DBCardView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        inherited lgSetupTools: TdxLayoutGroup
          SizeOptions.Width = 0
          ItemIndex = 2
        end
        object cbCardExpanding: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 230
          Action = acIndividualCardExpansion
          Index = 0
        end
        object cbFiltering: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 230
          Action = acRowLevelFiltering
          Index = 1
        end
        object cbRowMoving: TdxLayoutCheckBoxItem
          Parent = lgSetupTools
          AlignHorz = ahLeft
          AlignVert = avTop
          SizeOptions.Width = 230
          Action = acMoveIndividualRows
          Index = 2
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acIndividualCardExpansion: TAction
      AutoCheck = True
      Caption = 'Individual Card Expansion'
      Checked = True
      OnExecute = acIndividualCardExpansionExecute
    end
    object acRowLevelFiltering: TAction
      AutoCheck = True
      Caption = 'Row Level Filtering'
      Checked = True
      OnExecute = acRowLevelFilteringExecute
    end
    object acMoveIndividualRows: TAction
      AutoCheck = True
      Caption = 'Move Individual Rows'
      Checked = True
      OnExecute = acMoveIndividualRowsExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
