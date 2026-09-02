inherited frmProductEdit: TfrmProductEdit
  Width = 1078
  Height = 679
  ExplicitWidth = 1078
  ExplicitHeight = 679
  inherited dxLayoutControl1: TdxLayoutControl
    Width = 1078
    Height = 559
    ExplicitWidth = 1078
    ExplicitHeight = 559
    object edStartDate: TcxDBDateEdit [0]
      Left = 254
      Top = 17
      HelpType = htKeyword
      DataBinding.DataField = 'ProductionStart'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 164
    end
    object edAvailable: TcxDBCheckBox [1]
      Left = 254
      Top = 60
      DataBinding.DataField = 'Available'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Transparent = True
    end
    object edSupport: TcxDBLookupComboBox [2]
      Left = 254
      Top = 92
      DataBinding.DataField = 'SupportId'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'FullName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsEmployeesHelper
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 164
    end
    object edEngineer: TcxDBLookupComboBox [3]
      Left = 254
      Top = 135
      DataBinding.DataField = 'EngineerId'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'FullName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsEmployeesHelper
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 164
    end
    object edCategory: TcxDBLookupComboBox [4]
      Left = 254
      Top = 178
      DataBinding.DataField = 'Category'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Category'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsCategoriesCatalog
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 164
    end
    object edCurrentInventory: TcxDBSpinEdit [5]
      Left = 254
      Top = 241
      DataBinding.DataField = 'CurrentInventory'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.MaxValue = 1000000.000000000000000000
      Properties.SpinButtons.Position = sbpHorzRight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 164
    end
    object edBackorder: TcxDBSpinEdit [6]
      Left = 254
      Top = 284
      DataBinding.DataField = 'Backorder'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.MaxValue = 1000000.000000000000000000
      Properties.SpinButtons.Position = sbpHorzRight
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 164
    end
    object edCost: TcxDBCurrencyEdit [7]
      Left = 254
      Top = 327
      DataBinding.DataField = 'Cost'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.DisplayFormat = '$,0.00;$-,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 164
    end
    object edSalePrice: TcxDBCurrencyEdit [8]
      Left = 254
      Top = 370
      DataBinding.DataField = 'SalePrice'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.DisplayFormat = '$,0.00;$-,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 164
    end
    object edRetailPrice: TcxDBCurrencyEdit [9]
      Left = 254
      Top = 413
      DataBinding.DataField = 'RetailPrice'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.DisplayFormat = '$,0.00;$-,0.00'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 164
    end
    object edDescription: TcxDBRichEdit [10]
      Left = 57
      Top = 485
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = DM.dsProduct
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Height = 70
      Width = 361
    end
    object pdfProduct: TdxPDFViewer [11]
      Left = 486
      Top = 17
      Width = 575
      Height = 525
      LookAndFeel.NativeStyle = False
      OptionsFindPanel.DisplayMode = fpdmNever
      OptionsNavigationPane.Attachments.Glyph.SourceDPI = 96
      OptionsNavigationPane.Attachments.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032302E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
        2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
        77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
        766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
        643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
        2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
        3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
        2220793D22307078220D0A092076696577426F783D2230203020333220333222
        207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
        302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
        0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
        6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706174
        682069643D224174746163686D656E742220636C6173733D22426C61636B2220
        643D224D31372C3263332E392C302C372C332E312C372C37763133682D325639
        63302D322E382D322E322D352D352D35732D352C322E322D352C357631366330
        2C312E372C312E332C332C332C3373332D312E332C332D335631310D0A096330
        2D302E362D302E342D312D312D31732D312C302E342D312C31763131682D3256
        313163302D312E372C312E332D332C332D3373332C312E332C332C3376313463
        302C322E382D322E322C352D352C35732D352D322E322D352D3556394331302C
        352E312C31332E312C322C31372C327A222F3E0D0A3C2F7376673E0D0A}
      OptionsNavigationPane.Bookmarks.Glyph.SourceDPI = 96
      OptionsNavigationPane.Bookmarks.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032302E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
        2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
        77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
        766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
        643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
        2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
        3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
        2220793D22307078220D0A092076696577426F783D2230203020333220333222
        207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
        302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
        0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
        6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706F6C
        79676F6E2069643D22426F6F6B6D61726B732220636C6173733D22426C61636B
        2220706F696E74733D2232342C33302031362C323220382C333020382C342032
        342C3420222F3E0D0A3C2F7376673E0D0A}
      OptionsNavigationPane.Thumbnails.Glyph.SourceDPI = 96
      OptionsNavigationPane.Thumbnails.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032302E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C21444F435459504520737667205055424C494320222D2F
        2F5733432F2F4454442053564720312E312F2F454E222022687474703A2F2F77
        77772E77332E6F72672F47726170686963732F5356472F312E312F4454442F73
        766731312E647464223E0D0A3C7376672076657273696F6E3D22312E31222069
        643D224C617965725F312220786D6C6E733D22687474703A2F2F7777772E7733
        2E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D2268747470
        3A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D22307078
        2220793D22307078220D0A092076696577426F783D2230203020333220333222
        207374796C653D22656E61626C652D6261636B67726F756E643A6E6577203020
        302033322033323B2220786D6C3A73706163653D227072657365727665223E0D
        0A3C7374796C6520747970653D22746578742F637373223E0D0A092E426C6163
        6B7B66696C6C3A233732373237323B7D0D0A3C2F7374796C653E0D0A3C706174
        682069643D225468756D626E61696C732220636C6173733D22426C61636B2220
        643D224D32382C38682D34563448313276364836763138683136762D36683656
        387A204D32302C32364838563132683476313068385632367A204D32362C3230
        682D34682D32682D36762D38762D3256366838763468345632307A220D0A092F
        3E0D0A3C2F7376673E0D0A}
      OnZoomFactorChanged = pdfProductZoomFactorChanged
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 395
      ScrollOptions.Vertical = smAuto
      ShowBorder = False
      Index = 0
    end
    object liProductionStartDate: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'PRODUCTION START DATE'
      Control = edStartDate
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 218
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liAvailableForSale: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'AVAILABLE FOR SALE'
      Control = edAvailable
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liSupportEngineer: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'SUPPORT ENGINEER'
      Control = edSupport
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liProductEngineer: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'PRODUCT ENGINEER'
      Control = edEngineer
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liCategory: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'CATEGORY'
      Control = edCategory
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object liCurrentInventory: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'CURRENT INVENTORY'
      Control = edCurrentInventory
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liBackOrders: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'BACKORDERS'
      Control = edBackorder
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liCost: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'COST'
      Control = edCost
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 251
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liSalePrice: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'SALE PRICE'
      Control = edSalePrice
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 263
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object liRetailPrice: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'RETAIL PRICE'
      Control = edRetailPrice
      ControlOptions.OriginalHeight = 33
      ControlOptions.OriginalWidth = 263
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object liDescription: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'DESCRIPTION'
      CaptionOptions.Layout = clTop
      Control = edDescription
      ControlOptions.MinHeight = 70
      ControlOptions.OriginalHeight = 173
      ControlOptions.OriginalWidth = 460
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Height = 10
      SizeOptions.Width = 14
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      Control = pdfProduct
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 605
      ControlOptions.OriginalWidth = 448
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited cxGroupBox1: TcxGroupBox
    Top = 559
    ExplicitTop = 559
    ExplicitWidth = 1078
    Width = 1078
    inherited dxLayoutControl2: TdxLayoutControl
      Width = 1072
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1072
      ExplicitHeight = 114
      object btnSave: TcxButton [0]
        Left = 343
        Top = 17
        Width = 85
        Height = 80
        Caption = 'Save'
        ModalResult = 1
        OptionsImage.ImageIndex = 25
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        TabOrder = 0
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnSaveClick
      end
      object btnCancel: TcxButton [1]
        Left = 438
        Top = 17
        Width = 85
        Height = 80
        Caption = 'Cancel'
        ModalResult = 2
        OptionsImage.ImageIndex = 21
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelClick
      end
      object btnZoomIn: TcxButton [2]
        Left = 549
        Top = 17
        Width = 85
        Height = 80
        Caption = 'Zoom In'
        OptionsImage.ImageIndex = 27
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnZoomInClick
      end
      object btnZoomOut: TcxButton [3]
        Left = 644
        Top = 17
        Width = 85
        Height = 80
        Caption = 'Zoom Out'
        OptionsImage.ImageIndex = 28
        OptionsImage.Images = DM.ilButtons
        OptionsImage.Layout = blGlyphTop
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnZoomOutClick
      end
      inherited dxLayoutControl2Group_Root: TdxLayoutGroup
        CaptionOptions.Visible = False
      end
      inherited dxLayoutGroup4: TdxLayoutGroup
        CaptionOptions.Visible = False
      end
      object dxLayoutItem1: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnSave
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object dxLayoutItem18: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnCancel
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object dxLayoutItem19: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnZoomIn
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object dxLayoutItem20: TdxLayoutItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Visible = False
        Control = btnZoomOut
        ControlOptions.OriginalHeight = 80
        ControlOptions.OriginalWidth = 85
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
        Parent = dxLayoutGroup4
        AlignVert = avClient
        CaptionOptions.Text = 'Separator'
        Index = 2
      end
    end
  end
end
