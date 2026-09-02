inherited frmRuntimeSummaryChange: TfrmRuntimeSummaryChange
  Tag = 36
  Caption = 'Runtime Summary Change'
  ClientHeight = 414
  ClientWidth = 864
  OnShow = FormShow
  ExplicitWidth = 864
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 864
    Height = 414
    ExplicitWidth = 864
    ExplicitHeight = 414
    inherited DBPivotGrid: TcxDBPivotGrid
      Width = 678
      Height = 319
      OptionsView.FilterFields = False
      PopupMenus.OnPopup = DBPivotGridPopupMenusPopup
      Styles.OnGetColumnHeaderStyle = GetGroupHeaderStyle
      Styles.OnGetRowHeaderStyle = GetGroupHeaderStyle
      OnLayoutChanged = DBPivotGridLayoutChanged
      OnClick = DBPivotGridClick
      ExplicitWidth = 678
      ExplicitHeight = 319
      inherited pgfCountry: TcxDBPivotGridField
        AllowedAreas = [faColumn, faRow, faFilter]
        Hidden = True
        Visible = False
        UniqueName = 'Country'
      end
      inherited pgfName: TcxDBPivotGridField
        AllowedAreas = [faColumn, faRow, faFilter]
        Visible = False
        Width = 200
        UniqueName = 'Product Name'
      end
      inherited pgfCategoryName: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        AllowedAreas = [faRow]
        Options.Moving = False
        Width = 660
        UniqueName = 'Category Name'
      end
      inherited pgfOrderDate: TcxDBPivotGridField
        AreaIndex = 2
        AllowedAreas = [faColumn, faRow, faFilter]
        Hidden = True
        Visible = False
        UniqueName = 'Order Date'
      end
      inherited pgfOrderYear: TcxDBPivotGridField
        AreaIndex = 3
        AllowedAreas = [faColumn, faRow, faFilter]
        Hidden = True
        Visible = False
        UniqueName = 'Order Year'
      end
      inherited pgfOrderQuarter: TcxDBPivotGridField
        AreaIndex = 4
        AllowedAreas = [faColumn, faRow, faFilter]
        Hidden = True
        Visible = False
        UniqueName = 'Order Quarter'
      end
      inherited pgfOrderMonth: TcxDBPivotGridField
        AreaIndex = 5
        AllowedAreas = [faColumn, faRow, faFilter]
        Hidden = True
        Visible = False
        UniqueName = 'Order Month'
      end
      inherited pgfUnitPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 2
        AllowedAreas = [faData]
        Hidden = True
        Visible = False
        UniqueName = 'UnitPrice'
      end
      inherited pgfQuantity: TcxDBPivotGridField
        Area = faData
        AreaIndex = 6
        AllowedAreas = [faData]
        Hidden = True
        Visible = False
        UniqueName = 'Quantity'
      end
      inherited pgfDiscount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 7
        AllowedAreas = [faData]
        Hidden = True
        Visible = False
        UniqueName = 'Discount'
      end
      inherited pgfExtendedPrice: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        AllowedAreas = [faData]
        IsCaptionAssigned = True
        Caption = 'Order Amount'
        UniqueName = 'Extended Price'
      end
      inherited pgfSalesPerson: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        AllowedAreas = [faColumn, faRow]
        Width = 150
        UniqueName = 'Sales Person'
      end
      object pgfOACount: TcxDBPivotGridField
        Area = faData
        AreaIndex = 3
        AllowedAreas = [faData]
        IsCaptionAssigned = True
        Caption = 'Order Amount (Count)'
        DataBinding.FieldName = 'Extended Price'
        SummaryType = stCount
        Visible = True
        UniqueName = 'Order Amount (Count)'
      end
      object pgfOAMin: TcxDBPivotGridField
        Area = faData
        AreaIndex = 4
        AllowedAreas = [faData]
        IsCaptionAssigned = True
        Caption = 'Order Amount (Min)'
        DataBinding.FieldName = 'Extended Price'
        SummaryType = stMin
        Visible = True
        UniqueName = 'Order Amount (Min)'
      end
      object pgfOAMax: TcxDBPivotGridField
        Area = faData
        AreaIndex = 5
        AllowedAreas = [faData]
        IsCaptionAssigned = True
        Caption = 'Order Amount (Max)'
        DataBinding.FieldName = 'Extended Price'
        SummaryType = stMax
        Visible = True
        UniqueName = 'Order Amount (Max)'
      end
      object pgfOASum: TcxDBPivotGridField
        Area = faData
        AreaIndex = 1
        AllowedAreas = [faData]
        IsCaptionAssigned = True
        Caption = 'Order Amount (Sum)'
        DataBinding.FieldName = 'Extended Price'
        ImageIndex = 3
        Visible = True
        UniqueName = 'Order Amount (Sum)'
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      Parent = dxLayoutGroup2
      Index = 0
    end
    inherited lgTools: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      CaptionOptions.Text = 'Data Field Options'
      Visible = True
      SizeOptions.AssignedValues = [sovSizableHorz]
      Index = 2
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'For data fields, you can enable the runtime summary change featu' +
        're, where an end-user can click a data field header to select a ' +
        'summary type for a field. This allows you to present information' +
        ' more compactly, limiting the number of visible data fields, whi' +
        'le still having the ability to calculate a specific summary type' +
        '. In this demo, the summary change feature in enabled when the c' +
        'ompact layout is enabled. Select the One Data Field option, and ' +
        'click the data field'#39's header to display the available summary t' +
        'ypes.'
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutAutoCreatedGroup1
      Visible = True
      Index = 1
    end
    inherited lagFeedback: TdxLayoutAutoCreatedGroup
      Index = 1
    end
    inherited lgContent: TdxLayoutGroup
      Index = 2
    end
    object rbMultipleDataFields: TdxLayoutRadioButtonItem
      Parent = lgTools
      CaptionOptions.Text = 'Multiple Data Fields'
      TabStop = True
      OnClick = rbClick
      Index = 0
    end
    object rbOneDataField: TdxLayoutRadioButtonItem
      Parent = lgTools
      AlignVert = avTop
      CaptionOptions.Text = 'One Data Field'
      Checked = True
      TabStop = True
      OnClick = rbClick
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 0
    end
    object lbRadioButton: TdxLayoutLabeledItem
      Parent = lgTools
      Visible = False
      CaptionOptions.Text = 'Click the field'#39's header to change the summary type'
      CaptionOptions.WordWrap = True
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lcMainGroup_Root
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
  end
  inherited alMain: TActionList
    object acTopValuesShowOthers: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Top Values Show Others'
      Checked = True
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
