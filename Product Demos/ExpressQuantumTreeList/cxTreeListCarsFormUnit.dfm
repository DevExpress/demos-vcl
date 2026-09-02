inherited frmCars: TfrmCars
  Caption = 'frmCars'
  ClientWidth = 617
  ExplicitWidth = 617
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 617
    ExplicitWidth = 617
    inherited tlDB: TcxDBTreeList
      Width = 381
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
          Position.ColIndex = 1
        end
        item
          Caption.Text = 'Fuel Economy (mpg)'
          Position.BandIndex = 1
          Position.ColIndex = 2
        end
        item
          Caption.Text = 'Details'
        end>
      DataController.DataSource = dmTreeList.dsCars
      DataController.ParentField = 'ParentID'
      DataController.KeyField = 'ID'
      OptionsView.BandLineHeight = 30
      OptionsView.Bands = True
      OptionsView.CategorizedColumn = clnModel
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = tlglHorz
      OptionsView.PaintStyle = tlpsCategorized
      Styles.OnGetContentStyle = tlDBStylesGetContentStyle
      ExplicitWidth = 381
      object clnModel: TcxDBTreeListColumn
        DataBinding.FieldName = 'Model'
        Width = 150
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnPrice: TcxDBTreeListColumn
        PropertiesClassName = 'TcxCurrencyEditProperties'
        DataBinding.FieldName = 'Price'
        Width = 68
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnHP: TcxDBTreeListColumn
        Caption.Text = 'Horsepower'
        DataBinding.FieldName = 'HP'
        Width = 70
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnCylinders: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '4'
          '6'
          '8')
        DataBinding.FieldName = 'Cylinders'
        Width = 40
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 2
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnSpeed: TcxDBTreeListColumn
        PropertiesClassName = 'TcxComboBoxProperties'
        Properties.Items.Strings = (
          '4'
          '5')
        Caption.Text = 'Speed'
        DataBinding.FieldName = 'Transmission Speeds'
        Width = 43
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 3
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnAutomatic: TcxDBTreeListColumn
        Caption.Text = 'Automatic'
        DataBinding.FieldName = 'TransmissAutomatic'
        Width = 50
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 3
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnCity: TcxDBTreeListColumn
        PropertiesClassName = 'TcxSpinEditProperties'
        Caption.Text = 'City'
        DataBinding.FieldName = 'MPG City'
        Width = 20
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 4
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnHighway: TcxDBTreeListColumn
        PropertiesClassName = 'TcxSpinEditProperties'
        Caption.Text = 'Highway'
        DataBinding.FieldName = 'MPG Highway'
        Width = 50
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 4
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnDescription: TcxDBTreeListColumn
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekMemo
        DataBinding.FieldName = 'Description'
        Width = 40
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 5
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object clnPicture: TcxDBTreeListColumn
        PropertiesClassName = 'TcxBlobEditProperties'
        Properties.BlobEditKind = bekPict
        Properties.PictureGraphicClassName = 'TdxSmartImage'
        DataBinding.FieldName = 'Picture'
        Width = 26
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 5
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    inherited lgTools: TdxLayoutGroup
      Visible = False
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
  object cxStyleRepository1: TcxStyleRepository
    Left = 384
    Top = 96
    PixelsPerInch = 96
    object stNavy: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clNavy
    end
    object stMaroon: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clMaroon
    end
  end
end
