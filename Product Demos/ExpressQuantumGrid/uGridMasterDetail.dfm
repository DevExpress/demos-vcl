inherited frmGridMasterDetail: TfrmGridMasterDetail
  Width = 749
  Height = 496
  ExplicitWidth = 749
  ExplicitHeight = 496
  inherited PanelDescription: TdxPanel
    Top = 432
    Width = 749
    ExplicitTop = 435
    ExplicitWidth = 749
    inherited lcBottomFrame: TdxLayoutControl
      Width = 749
      ExplicitWidth = 749
    end
  end
  inherited PanelGrid: TdxPanel
    Width = 460
    Height = 432
    ExplicitWidth = 460
    ExplicitHeight = 435
    inherited Grid: TcxGrid
      Width = 460
      Height = 435
      Images = dmMain.ilMain
      ExplicitWidth = 460
      ExplicitHeight = 435
      object tvCategories: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsFoodsCategories
        DataController.KeyFieldNames = 'CategoryID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        DataController.OnDetailExpanded = tvCategoriesDataControllerDetailExpanded
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object tvCategoriesCategoryID: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryID'
          Visible = False
        end
        object tvCategoriesPicture: TcxGridDBColumn
          DataBinding.FieldName = 'Picture'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxSmartImage'
          Width = 243
        end
        object tvCategoriesCategoryName: TcxGridDBColumn
          Caption = ' Category Name'
          DataBinding.FieldName = 'CategoryName'
          PropertiesClassName = 'TcxTextEditProperties'
          HeaderImageIndex = 21
          Width = 155
        end
        object tvCategoriesDescription: TcxGridDBColumn
          DataBinding.FieldName = 'Description'
          PropertiesClassName = 'TcxTextEditProperties'
          Width = 300
        end
        object tvCategoriesIcon_17: TcxGridDBColumn
          DataBinding.FieldName = 'Icon_17'
          Visible = False
        end
        object tvCategoriesIcon_25: TcxGridDBColumn
          DataBinding.FieldName = 'Icon_25'
          Visible = False
        end
      end
      object tvFoods: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsFoods
        DataController.DetailKeyFieldNames = 'CategoryID'
        DataController.KeyFieldNames = 'ProductID'
        DataController.MasterKeyFieldNames = 'CategoryID'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object tvFoodsProductID: TcxGridDBColumn
          DataBinding.FieldName = 'ProductID'
          Visible = False
        end
        object tvFoodsProductName: TcxGridDBColumn
          Caption = 'Product Name'
          DataBinding.FieldName = 'ProductName'
          Width = 300
        end
        object tvFoodsSupplierID: TcxGridDBColumn
          DataBinding.FieldName = 'SupplierID'
          Visible = False
        end
        object tvFoodsCategoryID: TcxGridDBColumn
          DataBinding.FieldName = 'CategoryID'
          Visible = False
        end
        object tvFoodsQuantityPerUnit: TcxGridDBColumn
          Caption = 'Quantity Per Unit'
          DataBinding.FieldName = 'QuantityPerUnit'
          Width = 150
        end
        object tvFoodsUnitPrice: TcxGridDBColumn
          Caption = 'Unit Price'
          DataBinding.FieldName = 'UnitPrice'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          HeaderImageIndex = 28
          Width = 100
        end
        object tvFoodsUnitsInStock: TcxGridDBColumn
          Caption = 'Units In Stock'
          DataBinding.FieldName = 'UnitsInStock'
          Width = 100
        end
        object tvFoodsUnitsOnOrder: TcxGridDBColumn
          Caption = 'Units On Order'
          DataBinding.FieldName = 'UnitsOnOrder'
          Width = 100
        end
        object tvFoodsReorderLevel: TcxGridDBColumn
          Caption = 'Reorder Level'
          DataBinding.FieldName = 'ReorderLevel'
          PropertiesClassName = 'TcxProgressBarProperties'
          Properties.BarStyle = cxbsGradient
          Width = 200
        end
        object tvFoodsDiscontinued: TcxGridDBColumn
          DataBinding.FieldName = 'Discontinued'
          Visible = False
          GroupIndex = 0
        end
        object tvFoodsEAN13: TcxGridDBColumn
          DataBinding.FieldName = 'EAN13'
          Visible = False
        end
      end
      object glCategories: TcxGridLevel
        GridView = tvCategories
        object glFoods: TcxGridLevel
          GridView = tvFoods
        end
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 460
    Height = 432
    ExplicitLeft = 460
    ExplicitHeight = 432
    inherited gbSetupTools: TcxGroupBox
      ExplicitHeight = 432
      Height = 432
      inherited lcFrame: TdxLayoutControl
        Height = 412
        ExplicitTop = -6
        ExplicitHeight = 431
        object bExpandAll: TcxButton [0]
          Left = 10
          Top = 33
          Width = 266
          Height = 25
          Caption = 'Expand All Details'
          TabOrder = 0
          OnClick = bExpandAllClick
        end
        object seRowHeight: TcxSpinEdit [1]
          Left = 74
          Top = 87
          Enabled = False
          Properties.Increment = 10.000000000000000000
          Properties.MaxValue = 1000.000000000000000000
          Properties.OnChange = seRowHeightPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Value = 100
          Width = 202
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ItemIndex = 1
          ShowBorder = False
          Index = 0
        end
        object liExpandAll: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Visible = False
          Control = bExpandAll
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 152
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avTop
          CaptionOptions.Text = 'New Group'
          ShowBorder = False
          Index = 1
        end
        object liRowHeight: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Row Height:'
          Control = seRowHeight
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 202
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object cbCanDetail: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup1
          AlignVert = avTop
          Action = acCanDetail
          Index = 0
        end
        object cbRowAutoHeight: TdxLayoutCheckBoxItem
          Parent = dxLayoutGroup2
          Action = acRowAutoHeight
          Index = 0
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 656
    object acCanDetail: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Master-Detail Layout'
      Checked = True
      OnExecute = acCanDetailExecute
    end
    object acRowAutoHeight: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Row Auto Height'
      Checked = True
      OnExecute = acRowAutoHeightExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 136
    Top = 232
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
