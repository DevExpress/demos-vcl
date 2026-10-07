inherited frmPrefilter: TfrmPrefilter
  Caption = 'Prefilter'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited DBPivotGrid: TcxDBPivotGrid
      Height = 225
      OptionsView.ColumnGrandTotalWidth = 736
      OptionsView.RowGrandTotalWidth = 736
      TabOrder = 1
      OnFilterChanged = DBPivotGridFilterChanged
      ExplicitHeight = 225
      inherited pgfCountry: TcxDBPivotGridField
        AreaIndex = 1
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        Area = faColumn
        Width = 150
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 0
        Options.Filtering = True
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        AreaIndex = 4
        Visible = False
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 5
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 6
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        AreaIndex = 2
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        AreaIndex = 3
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        Width = 200
        UniqueName = 'Sales Person'
      end
    end
    object cbFilters: TcxComboBox [1]
      Left = 444
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cbFiltersPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Width = 132
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'The Prefilter allows end-users to build complex filter criteria ' +
        'with an unlimited number of filter conditions combined by logica' +
        'l operators. End-users can open the Prefilter by right-clicking ' +
        'a field header and selecting the Show Prefilter Dialog menu item' +
        '. End-users can also open it by clicking the '#39'Prefilter...'#39' butt' +
        'on displayed in the Prefilter panel.'
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Current Active Prefilter'
      CaptionOptions.Layout = clTop
      Control = cbFilters
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 315
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
