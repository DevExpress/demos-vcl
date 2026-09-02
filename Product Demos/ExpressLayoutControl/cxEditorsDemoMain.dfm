object frmEditorsDemoMain: TfrmEditorsDemoMain
  Tag = 1
  Left = 199
  Top = 148
  Caption = 'ExpressLayoutControl Features Demo'
  ClientHeight = 774
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  OnShow = FormShow
  TextHeight = 17
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 25
    Width = 777
    Height = 749
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    HighlightRoot = False
    OptionsImage.Images = cxImageList1
    OptionsItem.AllowFloatingGroups = True
    OptionsItem.SizableHorz = True
    OptionsItem.SizableVert = True
    ExplicitHeight = 747
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 156
      Top = 36
      DataBinding.DataField = 'PurchaseDate'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 0
      Width = 120
    end
    object cxDBTimeEdit1: TcxDBTimeEdit
      Left = 156
      Top = 201
      DataBinding.DataField = 'Orders_Time'
      DataBinding.DataSource = dsOrders
      TabOrder = 5
      Width = 119
    end
    object cxDBComboBox1: TcxDBComboBox
      Left = 156
      Top = 168
      DataBinding.DataField = 'PaymentType'
      DataBinding.DataSource = dsOrders
      Properties.Items.Strings = (
        'AmEx'
        'Cash'
        'Master'
        'Visa')
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 4
      Width = 120
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 156
      Top = 102
      DataBinding.DataField = 'Quantity'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 2
      Width = 61
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 156
      Top = 135
      DataBinding.DataField = 'PaymentAmount'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 3
      Width = 128
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 156
      Top = 305
      DataBinding.DataField = 'FirstName'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 7
      Width = 138
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 156
      Top = 338
      DataBinding.DataField = 'LastName'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 8
      Width = 138
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 156
      Top = 272
      DataBinding.DataField = 'Prefix'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 6
      Width = 138
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 156
      Top = 385
      DataBinding.DataField = 'Spouse'
      DataBinding.DataSource = dsOrders
      TabOrder = 9
      Width = 138
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 598
      Top = 305
      DataBinding.DataField = 'Title'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 14
      Width = 134
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Caption = 'Customer'
      DataBinding.DataField = 'Customer'
      DataBinding.DataSource = dsOrders
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 32
      Transparent = True
      Visible = False
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 598
      Top = 272
      DataBinding.DataField = 'Company'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 13
      Width = 134
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 598
      Top = 338
      DataBinding.DataField = 'Occupation'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 15
      Width = 134
    end
    object cxDBTextEdit8: TcxDBTextEdit
      Left = 373
      Top = 272
      DataBinding.DataField = 'State'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 10
      Width = 133
    end
    object cxDBTextEdit9: TcxDBTextEdit
      Left = 373
      Top = 305
      DataBinding.DataField = 'City'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 11
      Width = 133
    end
    object cxDBMaskEdit1: TcxDBMaskEdit
      Left = 373
      Top = 338
      DataBinding.DataField = 'ZipCode'
      DataBinding.DataSource = dsOrders
      Properties.EditMask = '00000;1;_'
      Properties.MaxLength = 0
      TabOrder = 12
      Width = 133
    end
    object cxDBTextEdit10: TcxDBTextEdit
      Left = 156
      Top = 432
      DataBinding.DataField = 'Address'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 16
      Width = 576
    end
    object cxDBMaskEdit2: TcxDBMaskEdit
      Left = 156
      Top = 465
      DataBinding.DataField = 'HomePhone'
      DataBinding.DataSource = dsOrders
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d(\d\d?)? - \d\d - \d\d'
      Properties.MaxLength = 0
      TabOrder = 17
      Width = 121
    end
    object cxDBMaskEdit3: TcxDBMaskEdit
      Left = 353
      Top = 465
      DataBinding.DataField = 'FaxPhone'
      DataBinding.DataSource = dsOrders
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Properties.MaxLength = 0
      TabOrder = 18
      Width = 121
    end
    object cxDBHyperLinkEdit1: TcxDBHyperLinkEdit
      Left = 522
      Top = 465
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = dsOrders
      TabOrder = 19
      Width = 121
    end
    object cxDBTextEdit12: TcxDBTextEdit
      Left = 113
      Top = 577
      DataBinding.DataField = 'Trademark'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 20
      Width = 606
    end
    object cxDBTextEdit11: TcxDBTextEdit
      Left = 113
      Top = 610
      DataBinding.DataField = 'Model'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 21
      Width = 606
    end
    object cxDBHyperLinkEdit2: TcxDBHyperLinkEdit
      Left = 113
      Top = 643
      DataBinding.DataField = 'Hyperlink'
      DataBinding.DataSource = dsOrders
      TabOrder = 22
      Width = 606
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 156
      Top = 69
      DataBinding.DataField = 'Price'
      DataBinding.DataSource = dsOrders
      Properties.OnEditValueChanged = ValidateOnEditValueChanged
      Properties.OnValidate = ValidateTextEdit
      TabOrder = 1
      Width = 119
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'HP'
      DataBinding.DataSource = dsOrders
      TabOrder = 23
      Visible = False
      Width = 60
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Liter'
      DataBinding.DataSource = dsOrders
      Properties.Increment = 0.100000000000000000
      Properties.LargeIncrement = 1.000000000000000000
      Properties.SpinButtons.ShowFastButtons = True
      Properties.ValueType = vtFloat
      TabOrder = 24
      Visible = False
      Width = 120
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Cyl'
      DataBinding.DataSource = dsOrders
      Properties.SpinButtons.ShowFastButtons = True
      TabOrder = 25
      Visible = False
      Width = 120
    end
    object cxDBSpinEdit4: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'MPG_City'
      DataBinding.DataSource = dsOrders
      Properties.SpinButtons.ShowFastButtons = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      TabOrder = 36
      Visible = False
      Width = 83
    end
    object cxDBSpinEdit5: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'MPG_Highway'
      DataBinding.DataSource = dsOrders
      Properties.SpinButtons.ShowFastButtons = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.ButtonStyle = bts3D
      TabOrder = 31
      Visible = False
      Width = 121
    end
    object cxDBSpinEdit6: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'TransmissSpeedCount'
      DataBinding.DataSource = dsOrders
      TabOrder = 27
      Visible = False
      Width = 121
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Caption = 'Automatic Transmission'
      DataBinding.DataField = 'TransmissAutomatic'
      DataBinding.DataSource = dsOrders
      TabOrder = 26
      Transparent = True
      Visible = False
    end
    object cxDBImage1: TcxDBImage
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Picture'
      DataBinding.DataSource = dsOrders
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      TabOrder = 28
      Visible = False
      Height = 113
      Width = 140
    end
    object cxDBMemo1: TcxDBMemo
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Cars_Description'
      DataBinding.DataSource = dsOrders
      Properties.ScrollBars = ssVertical
      TabOrder = 29
      Visible = False
      Height = 113
      Width = 463
    end
    object cxDBNavigator1: TcxDBNavigator
      Left = 13
      Top = 726
      Width = 257
      Height = 25
      Buttons.CustomButtons = <>
      DataSource = dsOrders
      TabOrder = 30
    end
    object lcMainGroup_Root1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      AllowQuickCustomize = True
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object lcMainGroup1: TdxLayoutGroup
      Parent = lcMainGroup_Root1
      CaptionOptions.Text = 'Header'
      CaptionOptions.Visible = False
      AllowRemove = False
      LayoutDirection = ldHorizontal
      Locked = True
      Index = 4
    end
    object lcMainGroup2: TdxLayoutGroup
      Parent = lcMainGroup_Root1
      CaptionOptions.Text = 'Order'
      ButtonOptions.DefaultHeight = 15
      ButtonOptions.DefaultWidth = 15
      ButtonOptions.ShowExpandButton = True
      WrapItemsMode = wmAllChildren
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 0
      CaptionOptions.Text = 'Purchase Date:'
      Control = cxDBDateEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem2: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 2
      CaptionOptions.Text = 'Time:'
      Control = cxDBTimeEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lcMainItem3: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 1
      CaptionOptions.Text = 'Payment Type:'
      Control = cxDBComboBox1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lcMainItem4: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 3
      CaptionOptions.Text = 'Quantity:'
      Control = cxDBCalcEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 61
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainItem24: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 5
      CaptionOptions.Text = 'Price:'
      Control = cxDBCurrencyEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem5: TdxLayoutItem
      Parent = lcMainGroup2
      AlignHorz = ahLeft
      CaptionOptions.ImageIndex = 4
      CaptionOptions.Text = 'Payment Amount:'
      Control = cxDBCurrencyEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lcMainGroup_Root1
      CaptionOptions.Text = 'Customer'
      ButtonOptions.DefaultHeight = 15
      ButtonOptions.DefaultWidth = 15
      ButtonOptions.ShowExpandButton = True
      ItemIndex = 1
      Index = 1
      Buttons = <
        item
          Glyph.SourceDPI = 96
          Glyph.Data = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
            462D38223F3E0D0A3C7376672076657273696F6E3D22312E312220786D6C6E73
            3D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D
            6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939
            392F786C696E6B2220783D223070782220793D22307078222076696577426F78
            3D2230203020313620313622207374796C653D22656E61626C652D6261636B67
            726F756E643A6E6577203020302031362031363B2220786D6C3A73706163653D
            227072657365727665223E262331333B262331303B3C7374796C652074797065
            3D22746578742F6373732220786D6C3A73706163653D22707265736572766522
            3E2E426C61636B7B66696C6C3A233732373237323B7D262331333B262331303B
            2623393B2E57686974657B66696C6C3A234646464646463B7D262331333B2623
            31303B2623393B2E5265647B66696C6C3A234431314331433B7D3C2F7374796C
            653E0D0A3C706F6C79676F6E20636C6173733D225265642220706F696E74733D
            2231312C362E352031302C352E3520382C372E3520362C352E3520352C362E35
            20372C382E3520352C31302E3520362C31312E3520382C392E352031302C3131
            2E352031312C31302E3520392C382E35202623393B222F3E0D0A3C2F7376673E
            0D0A}
          OnClick = lcMainGroup1Button0Click
        end>
    end
    object lcMainGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainGroup17: TdxLayoutGroup
      Parent = lcMainGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object lcMainItem8: TdxLayoutItem
      Parent = lcMainGroup17
      CaptionOptions.ImageIndex = 6
      CaptionOptions.Text = 'Prefix:'
      Control = cxDBTextEdit3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 47
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem6: TdxLayoutItem
      Parent = lcMainGroup17
      CaptionOptions.Text = 'First Name:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem7: TdxLayoutItem
      Parent = lcMainGroup17
      CaptionOptions.Text = 'Last Name:'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lcMainGroup17
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 3
    end
    object lcMainItem9: TdxLayoutItem
      Parent = lcMainGroup17
      CaptionOptions.ImageIndex = 7
      CaptionOptions.Text = 'Spouse:'
      Control = cxDBTextEdit4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lcMainGroup18
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      AllowCloseOnClick = True
      Index = 1
    end
    object lcMainGroup10: TdxLayoutGroup
      Parent = lcMainGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object lcMainItem14: TdxLayoutItem
      Parent = lcMainGroup10
      CaptionOptions.ImageIndex = 11
      CaptionOptions.Text = 'State:'
      Control = cxDBTextEdit8
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem15: TdxLayoutItem
      Parent = lcMainGroup10
      CaptionOptions.ImageIndex = 12
      CaptionOptions.Text = 'City:'
      Control = cxDBTextEdit9
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem16: TdxLayoutItem
      Parent = lcMainGroup10
      CaptionOptions.ImageIndex = 13
      CaptionOptions.Text = 'Zip Code:'
      Control = cxDBMaskEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainSplitterItem2: TdxLayoutSplitterItem
      Parent = lcMainGroup18
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Splitter'
      AllowCloseOnClick = True
      Index = 3
    end
    object lcMainGroup16: TdxLayoutGroup
      Parent = lcMainGroup18
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object lcMainItem12: TdxLayoutItem
      Parent = lcMainGroup16
      CaptionOptions.ImageIndex = 9
      CaptionOptions.Text = 'Company:'
      Control = cxDBTextEdit6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem10: TdxLayoutItem
      Parent = lcMainGroup16
      CaptionOptions.ImageIndex = 8
      CaptionOptions.Text = 'Title:'
      Control = cxDBTextEdit5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem13: TdxLayoutItem
      Parent = lcMainGroup16
      CaptionOptions.ImageIndex = 10
      CaptionOptions.Text = 'Occupation:'
      Control = cxDBTextEdit7
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutGroup1
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object lcMainItem17: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.ImageIndex = 14
      CaptionOptions.Text = 'Address:'
      Control = cxDBTextEdit10
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 395
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lcMainItem18: TdxLayoutItem
      Parent = lcMainGroup13
      CaptionOptions.ImageIndex = 15
      CaptionOptions.Text = 'Home Phone:'
      Control = cxDBMaskEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem19: TdxLayoutItem
      Parent = lcMainGroup13
      CaptionOptions.ImageIndex = 16
      CaptionOptions.Text = 'Fax Phone:'
      Control = cxDBMaskEdit3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem20: TdxLayoutItem
      Parent = lcMainGroup13
      CaptionOptions.ImageIndex = 17
      CaptionOptions.Text = 'Email:'
      Control = cxDBHyperLinkEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainGroup3: TdxLayoutGroup
      Parent = lcMainGroup_Root1
      CaptionOptions.Text = 'Car Info'
      ButtonOptions.ShowExpandButton = True
      LayoutDirection = ldTabbed
      Index = 2
    end
    object lcMainGroup4: TdxLayoutGroup
      Parent = lcMainGroup3
      CaptionOptions.Text = 'Model'
      ItemIndex = 2
      Index = 0
    end
    object lcMainItem21: TdxLayoutItem
      Parent = lcMainGroup4
      CaptionOptions.Text = 'Trademark:'
      Control = cxDBTextEdit12
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 610
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem22: TdxLayoutItem
      Parent = lcMainGroup4
      CaptionOptions.Text = 'Model:'
      Control = cxDBTextEdit11
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 570
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem23: TdxLayoutItem
      Parent = lcMainGroup4
      CaptionOptions.Text = 'Hyperlink:'
      Control = cxDBHyperLinkEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainGroup5: TdxLayoutGroup
      Parent = lcMainGroup3
      CaptionOptions.Text = 'Engine'
      Index = 1
    end
    object lcMainGroup14: TdxLayoutGroup
      Parent = lcMainGroup5
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lcMainItem25: TdxLayoutItem
      Parent = lcMainGroup14
      CaptionOptions.Text = 'HP:'
      Control = cxDBSpinEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem26: TdxLayoutItem
      Parent = lcMainGroup14
      CaptionOptions.Text = 'Liter:'
      Control = cxDBSpinEdit2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem27: TdxLayoutItem
      Parent = lcMainGroup14
      CaptionOptions.Text = 'Cyl:'
      Control = cxDBSpinEdit3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 120
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lcMainGroup15: TdxLayoutGroup
      Parent = lcMainGroup5
      CaptionOptions.Text = 'Hidden Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lcMainItem31: TdxLayoutItem
      Parent = lcMainGroup15
      CaptionOptions.Text = 'Transmiss Automatic'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 161
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem30: TdxLayoutItem
      Parent = lcMainGroup15
      CaptionOptions.Text = 'Speed Count:'
      Control = cxDBSpinEdit6
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainGroup6: TdxLayoutGroup
      Parent = lcMainGroup3
      CaptionOptions.Text = 'Description'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lcMainItem32: TdxLayoutItem
      Parent = lcMainGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Picture:'
      Control = cxDBImage1
      ControlOptions.OriginalHeight = 113
      ControlOptions.OriginalWidth = 140
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem33: TdxLayoutItem
      Parent = lcMainGroup6
      AlignHorz = ahClient
      CaptionOptions.Text = 'Description:'
      Control = cxDBMemo1
      ControlOptions.OriginalHeight = 113
      ControlOptions.OriginalWidth = 403
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lcMainItem34: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Navigator:'
      CaptionOptions.Visible = False
      Control = cxDBNavigator1
      ControlOptions.MinWidth = 255
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 257
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcMainItem11: TdxLayoutItem
      CaptionOptions.Text = 'Customer'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainItem28: TdxLayoutItem
      CaptionOptions.Text = 'MPG_City:'
      Control = cxDBSpinEdit4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 83
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object lcMainItem29: TdxLayoutItem
      CaptionOptions.Text = 'MPG_Highway'
      Control = cxDBSpinEdit5
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lcMainGroup_Root1
      CaptionOptions.Text = 'New Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lliDescription: TdxLayoutLabeledItem
      Parent = lcMainGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        'This demo is based on the [url=https://www.devexpress.com/produc' +
        'ts/vcl/layout/]%ProductName%[/url] - a layout manager that helps' +
        ' you build a comprehensive layout on a form and maintain a consi' +
        'stent layout structure.'#13#10'Click Help | About this demo to learn a' +
        'bout all available options and functionality.'
      CaptionOptions.WordWrap = True
      OnHyperlinkClick = lliDescriptionHyperlinkClick
      Index = 0
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 304
    Top = 552
    Bitmap = {
      494C010106000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000011412128ACF070738840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000B092B01871B7A02E2229A02FE1B7C
      02E30A2C01890000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000011412128CD11B1BD1FF1B1BD1FF0707388500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000B166201CB229C02FF229C02FF09270180229C
      02FF229C02FF166501CE0000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      011412128CD11B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF07073885000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000092A0185229C02FF229C02FF0001001C000000140105
      00321D8502EC229C02FF0A2C0188000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000001141212
      8CD11B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF070738850000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001B7702DF229C02FF229C02FF1C8002E71E8A02F00000
      0011115101B8229C02FF1B7C02E3000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000011412128CD11B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0707
      3885000000000000000000000000000000000000000000000000000000000000
      00000000000000000000219602FA229C02FF229C02FF0D3D01A1000100180412
      0059209202F7229C02FF229A02FE000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000121288CD1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF0707388500000000000000000000000000000000000000000000000B0531
      4787108BC8E214AFFDFE209F23FF229C02FF219602FA00000005135501BD2196
      02FA229C02FF229C02FF1B7A02E2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006062E791B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF070738850000000000000000000000000000000B0D70A1CB14B1
      FFFF14B1FFFF14B1FFFF1BA67DFF229C02FF229C02FF041100560000000B0003
      0028229C02FF229C02FF0A2B0187000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000006062F7A1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF070738840000000000000000052F458514B1FFFF14AF
      FDFE042637770000000F00010116166103CA229C02FF219502F9092A0186229C
      02FF229C02FF166201CB0000000B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      2F7A1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000F87C3DF14B1FFFF0952
      76AE0000000D0F7FB7D814B1FFFF1298D3ED1BA67DFF209F23FF219602FA1B77
      02DF092A01850000000B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006062F7A1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000000014A9F5FA14B1FFFF0000
      00000000000000000000052C408014B1FFFF14B1FFFF14AFFDFE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006062F7A1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0101
      0937010108341B1BD1FF1B1BD1FF00000000000000000F86C1DE14B1FFFF0B61
      8CBD0000000B0C6C9BC714AFFDFE129DE1F014B1FFFF108BC8E2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006062F7A1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0101
      0B3C010109371B1BD1FF1B1BD1FF0000000000000000052E438314B1FFFF14B1
      FFFF05324989000101160000000D07405D9A14B1FFFF05314787000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006062F7A1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000000000A0C6D9DC814B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF0D70A1CB0000000B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006062E791B1BCFFE1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1919BDF20000000000000000000000000000000A052E
      43830F86C1DE14AAF5FA0F87C3DF052F45850000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000666666F2717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF676767F4000000000000000000000000000000000000
      000000000000000000000000000000000000656565F1717171FF717171FF7171
      71FF717171FF717171FF717171FF676767F300000000000000000808408E1B1B
      CCFC1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1919BFF400000000000000000000000000000000000000000000
      00002222228E6D6D6DFA252525920000000000000000000000002222228E6D6D
      6DFA25252592000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000717171FF00000000000000001B1BC9FB1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000696969F6717171FF6D6D6DFA000000000000000000000000696969F67171
      71FF6D6D6DFA000000000000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000656565F1717171FF717171FF7171
      71FF717171FF717171FF717171FF00000000717171FF0000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF141493D60202144F0000000E0000001002021654141499DB1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      00002121218A696969F62222228E0000000000000000000000002121218A6969
      69F62222228E000000000000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000717171FF00000000000000000000
      000000000000000000000000000000000000717171FF0000000014B1FFFF0000
      00000000000014B1FFFF00000000717171FF00000000000000001B1BD1FF1B1B
      D1FF131390D40000000F00000000000000000000000000000000000001131414
      9ADB1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000717171FF00000000000000000000
      000000000000000000000000000000000000717171FF0000000014B1FFFF0000
      00000000000014B1FFFF00000000717171FF00000000000000001B1BD1FF1B1B
      D1FF0202114A0000000000000000000000000000000000000000000000000202
      16541B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF0000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001B1BD1FF1B1BD1FF000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000717171FF00000000D77610FFD776
      10FFD77610FFD77610FFD77610FF00000000717171FF0000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000717171FF00000000000000001B1BD1FF1B1B
      CFFE000000070000000000000000717171FF717171FF717171FF717171FF0000
      00101B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001B1BD1FF1B1BD1FF000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000717171FF00000000000000000000
      000000000000000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000717171FF00000000000000001B1BD1FF1B1B
      CFFE000000070000000000000000717171FF0000000000000000000000000000
      000E1B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF00000000129EE3F114B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF12A1E7F3000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000717171FF00000000D77610FFD776
      10FFD77610FFD77610FFD77610FF00000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF656565F100000000000000001B1BD1FF1B1B
      D1FF020211490000000000000000717171FF0000000000000000000000000202
      144F1B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF131390D40000000E00000000717171FF00000000000000000000000F1414
      93D61B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000717171FF000000001C1C1C7F1C1C
      1C7F000000001C1C1C7F1C1C1C7F000000001C1C1C7F1C1C1C7F000000001C1C
      1C7F1C1C1C7F00000000717171FF00000000717171FF00000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000573006A20000000C0000
      0000717171FF00000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF131390D40202114900000007000000070202114A131391D51B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000007171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000717171FF00000000000000000000
      00000000000000000000000000000000000000000000D77610FF603507AB0000
      0000717171FF00000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCFFE1B1BCFFE1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF000000000000000000000000717171FF717171FF7171
      71FF0000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF00000000717171FF00000000D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF00000000532D069E0000000A0000
      0000717171FF00000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF00000000000000000000000000000000000000000000
      00000000000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF000000000000000000000000646464F0717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF666666F200000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000000000000000000000000000000000001B1BC9FA0000
      021C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000129BE0EF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF129EE3F10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF656565F1000000000000000000000000000000000000000008083C8A1B1B
      C9FA1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1919BDF200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 36176176
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D224E65774170706F696E746D656E745F325F223E0D0A09093C7061746820
          636C6173733D22426C61636B2220643D224D302C3576323463302C302E362C30
          2E342C312C312C3168323863302E362C302C312D302E342C312D31563563302D
          302E362D302E342D312D312D31483143302E342C342C302C342E342C302C357A
          204D32382C3238483256386832365632387A222F3E0D0A09093C726563742078
          3D2231362220793D2231362220636C6173733D22526564222077696474683D22
          3422206865696768743D2234222F3E0D0A09093C6720636C6173733D22737430
          223E0D0A0909093C7061746820636C6173733D22426C61636B2220643D224D38
          2C32364834762D3468345632367A204D31342C3232682D34763468345632327A
          204D32302C3232682D34763468345632327A204D32362C3232682D3476346834
          5632327A204D32302C3130682D34763468345631307A204D32362C3130682D34
          7634683420202623393B2623393B2623393B5631307A204D32362C3136682D34
          763468345631367A204D31342C3136682D34763468345631367A204D382C3136
          4834763468345631367A204D31342C3130682D34763468345631307A204D382C
          31304834763468345631307A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A
          234646423131353B7D3C2F7374796C653E0D0A3C7265637420783D2234222079
          3D22362220636C6173733D22426C7565222077696474683D2231322220686569
          6768743D2232222F3E0D0A3C7265637420783D22342220793D2231302220636C
          6173733D22426C7565222077696474683D22313222206865696768743D223222
          2F3E0D0A3C7265637420783D22342220793D2231342220636C6173733D22426C
          7565222077696474683D22313022206865696768743D2232222F3E0D0A3C7265
          637420783D22342220793D2231382220636C6173733D22426C75652220776964
          74683D22313022206865696768743D2232222F3E0D0A3C7061746820636C6173
          733D22426C61636B2220643D224D322C3234563468323276386832563363302D
          302E35352D302E34352D312D312D31483143302E34352C322C302C322E34352C
          302C3376323263302C302E35352C302E34352C312C312C31683133762D324832
          7A222F3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D3331
          2C3134483137632D302E35352C302D312C302E34352D312C3176313463302C30
          2E35352C302E34352C312C312C3168313463302E35352C302C312D302E34352C
          312D315631354333322C31342E34352C33312E35352C31342C33312C31347A20
          4D33302C323820202623393B4831385631366831325632387A222F3E0D0A3C70
          61746820636C6173733D2259656C6C6F772220643D224D32302C313876386838
          762D384832307A204D32362C3234682D34762D3468345632347A222F3E0D0A3C
          706F6C79676F6E20636C6173733D22426C75652220706F696E74733D2231382C
          382031382C31302031382C31302031382C31322032322C392031382C36203138
          2C3820222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2244
          6174655F5F7832365F5F54696D652220786D6C6E733D22687474703A2F2F7777
          772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22
          687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D
          223070782220793D22307078222076696577426F783D22302030203332203332
          22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
          20302033322033323B2220786D6C3A73706163653D227072657365727665223E
          262331333B262331303B3C7374796C6520747970653D22746578742F63737322
          20786D6C3A73706163653D227072657365727665223E2E5265647B66696C6C3A
          234431314331433B7D262331333B262331303B2623393B2E426C61636B7B6669
          6C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C6173
          733D225265642220643D224D372C34683231563363302D302E362D302E342D31
          2D312D31483743352E332C322C342C332E332C342C3576323263302C312E372C
          312E332C332C332C3368323063302E362C302C312D302E342C312D3156364837
          43362E342C362C362C352E362C362C3520202623393B53362E342C342C372C34
          7A204D31342E342C31302E3163352E362D312E312C31302E352C332E382C392E
          342C392E34632D302E362C332E312D332E312C352E372D362E332C362E33632D
          352E362C312E312D31302E352D332E382D392E342D392E3443382E372C31332E
          332C31312E332C31302E372C31342E342C31302E3120202623393B7A222F3E0D
          0A3C706F6C79676F6E20636C6173733D22426C61636B2220706F696E74733D22
          31362C31382031362C31322031342C31322031342C32302032322C3230203232
          2C313820222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
          696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
          23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
          2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
          6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
          393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
          6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
          393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C672069643D224F72646572223E0D0A09
          093C7061746820636C6173733D22426C61636B2220643D224D32332C32346331
          2E372C302C332C312E332C332C33732D312E332C332D332C33732D332D312E33
          2D332D335332312E332C32342C32332C32347A204D382C323056313056384832
          76326834763132683232762D3248387A204D31312C323420202623393B262339
          3B63312E372C302C332C312E332C332C33732D312E332C332D332C33732D332D
          312E332D332D3353392E332C32342C31312C32347A222F3E0D0A09093C706174
          6820636C6173733D2259656C6C6F772220643D224D31312C313868313463302E
          362C302C312D302E352C312D31563563302D302E352D302E342D312D312D3148
          3131632D302E362C302D312C302E352D312C317631324331302C31372E352C31
          302E342C31382C31312C31387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D
          0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
          31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
          2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
          3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
          696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
          696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
          23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
          2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
          6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
          393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
          31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
          6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
          393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C672069643D2253616C6532223E0D0A09
          093C7061746820636C6173733D225265642220643D224D31372E372C322E334C
          322E332C31372E37632D302E342C302E342D302E342C312C302C312E346C3130
          2E362C31302E3663302E342C302E342C312C302E342C312E342C306C31352E34
          2D31352E3463302E322D302E322C302E332D302E342C302E332D302E37563320
          202623393B2623393B63302D302E362D302E342D312D312D314831382E344331
          382E312C322C31372E392C322E312C31372E372C322E337A204D32342C313063
          2D312E312C302D322D302E392D322D3263302D312E312C302E392D322C322D32
          73322C302E392C322C324332362C392E312C32352E312C31302C32342C31307A
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C
          3A233131373744373B7D262331333B262331303B2623393B2E57686974657B66
          696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
          6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D262331333B262331303B2623393B
          2E7374337B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C672F
          3E0D0A3C672069643D2243757272656E6379223E0D0A09093C7061746820636C
          6173733D2259656C6C6F772220643D224D31312C32632D352C302D392C342D39
          2C3973342C392C392C3973392D342C392D395331362C322C31312C327A204D31
          352C382E35632D302E372D302E342D312E352D302E362D322E332D302E36632D
          312C302D312E372C302E332D322E332C302E3920202623393B2623393B433130
          2C392E312C392E372C392E352C392E362C3130483133763248392E3663302E31
          2C302E352C302E342C302E392C302E372C312E3363302E362C302E362C312E33
          2C302E382C322E332C302E3863302E392C302C312E372D302E322C322E352D30
          2E36763220202623393B2623393B632D302E372C302E332D312E372C302E352D
          322E392C302E35632D312E362C302D322E382D302E342D332E372D312E334337
          2E362C31342C372E322C31332E312C372E312C31324836762D3268312E316330
          2E322D312C302E372D312E392C312E342D322E3663312D312C322E332D312E34
          2C332E392D312E3420202623393B2623393B63312C302C312E382C302E312C32
          2E352C302E3476322E314831357A222F3E0D0A09093C7061746820636C617373
          3D22477265656E2220643D224D32312C3132632D352C302D392C342D392C3973
          342C392C392C3973392D342C392D395332362C31322C32312C31327A204D3234
          2E332C32342E35632D302E322C302E342D302E352C302E372D302E382C302E39
          20202623393B2623393B632D302E342C302E322D302E382C302E342D312E322C
          302E35632D302E312C302D302E322C302D302E332C30563237682D32762D3163
          2D302E322C302D302E352D302E312D302E372D302E31632D302E352D302E312D
          302E392D302E322D312E332D302E34762D322E3220202623393B2623393B6330
          2E342C302E332C302E392C302E362C312E332C302E3763302E352C302E322C30
          2E392C302E322C312E342C302E3263302E332C302C302E352C302C302E372D30
          2E3163302E322C302C302E342D302E312C302E352D302E3273302E322D302E32
          2C302E332D302E3320202623393B2623393B63302E312D302E312C302E312D30
          2E322C302E312D302E3463302D302E322D302E312D302E342D302E322D302E35
          732D302E332D302E332D302E342D302E34632D302E322D302E312D302E342D30
          2E322D302E372D302E34632D302E332D302E312D302E352D302E322D302E382D
          302E3420202623393B2623393B632D302E382D302E332D312E332D302E372D31
          2E372D312E32632D302E342D302E352D302E362D312D302E362D312E3663302D
          302E352C302E312D302E392C302E332D312E3363302E322D302E342C302E352D
          302E372C302E382D302E3963302E332D302E322C302E362D302E332C302E392D
          302E345631356832763120202623393B2623393B63302E342C302C302E382C30
          2C312E312C302E3163302E342C302E312C302E352C302E312C302E392C302E32
          7632632D302E322D302E312D302E312D302E312D302E332D302E32632D302E32
          2D302E312D302E342D302E322D302E362D302E32632D302E322D302E312D302E
          342D302E312D302E362D302E3120202623393B2623393B732D302E342C302D30
          2E362C30732D302E352C302D302E372C302E31632D302E322C302D302E342C30
          2E312D302E352C302E32732D302E322C302E322D302E332C302E33632D302E31
          2C302E312D302E312C302E332D302E312C302E3463302C302E322C302C302E33
          2C302E312C302E3420202623393B2623393B73302E322C302E322C302E342C30
          2E3463302E322C302E312C302E332C302E322C302E362C302E3363302E322C30
          2E312C302E352C302E322C302E382C302E3363302E342C302E322C302E372C30
          2E332C312C302E3573302E362C302E342C302E382C302E3663302E322C302E32
          2C302E342C302E352C302E352C302E3820202623393B2623393B73302E322C30
          2E362C302E322C314332342E362C32332E372C32342E352C32342E312C32342E
          332C32342E357A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object llcfMain: TdxLayoutLookAndFeelList
    Left = 120
    Top = 544
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxMemData1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 232
    Top = 552
    object dxMemData1PurchaseDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'PurchaseDate'
    end
    object dxMemData1Orders_Time: TDateTimeField
      DisplayLabel = 'Time'
      DisplayWidth = 18
      FieldName = 'Orders_Time'
    end
    object dxMemData1PaymentType: TStringField
      DisplayWidth = 7
      FieldName = 'PaymentType'
      Size = 7
    end
    object dxMemData1PaymentAmount: TFloatField
      DisplayWidth = 10
      FieldName = 'PaymentAmount'
    end
    object dxMemData1Quantity: TIntegerField
      DisplayWidth = 10
      FieldName = 'Quantity'
    end
    object dxMemData1FirstName: TStringField
      DisplayWidth = 25
      FieldName = 'FirstName'
      Size = 25
    end
    object dxMemData1LastName: TStringField
      DisplayWidth = 25
      FieldName = 'LastName'
      Size = 25
    end
    object dxMemData1Company: TStringField
      DisplayWidth = 50
      FieldName = 'Company'
      Size = 50
    end
    object dxMemData1Prefix: TStringField
      DisplayWidth = 15
      FieldName = 'Prefix'
      Size = 15
    end
    object dxMemData1Title: TStringField
      DisplayWidth = 15
      FieldName = 'Title'
      Size = 15
    end
    object dxMemData1Address: TStringField
      DisplayWidth = 50
      FieldName = 'Address'
      Size = 50
    end
    object dxMemData1City: TStringField
      DisplayWidth = 20
      FieldName = 'City'
    end
    object dxMemData1State: TStringField
      DisplayWidth = 2
      FieldName = 'State'
      Size = 2
    end
    object dxMemData1ZipCode: TStringField
      DisplayWidth = 10
      FieldName = 'ZipCode'
      Size = 10
    end
    object dxMemData1Source: TStringField
      DisplayWidth = 10
      FieldName = 'Source'
      Size = 10
    end
    object dxMemData1Customer: TStringField
      DisplayWidth = 1
      FieldName = 'Customer'
      Size = 1
    end
    object dxMemData1HomePhone: TStringField
      DisplayWidth = 15
      FieldName = 'HomePhone'
      Size = 15
    end
    object dxMemData1FaxPhone: TStringField
      DisplayWidth = 15
      FieldName = 'FaxPhone'
      Size = 15
    end
    object dxMemData1Spouse: TStringField
      DisplayWidth = 50
      FieldName = 'Spouse'
      Size = 50
    end
    object dxMemData1Occupation: TStringField
      DisplayWidth = 25
      FieldName = 'Occupation'
      Size = 25
    end
    object dxMemData1Email: TStringField
      DisplayWidth = 255
      FieldName = 'Email'
      Size = 255
    end
    object dxMemData1Trademark: TStringField
      DisplayWidth = 50
      FieldName = 'Trademark'
      Size = 50
    end
    object dxMemData1Model: TStringField
      DisplayWidth = 50
      FieldName = 'Model'
      Size = 50
    end
    object dxMemData1HP: TSmallintField
      DisplayWidth = 10
      FieldName = 'HP'
    end
    object dxMemData1Liter: TFloatField
      DisplayWidth = 10
      FieldName = 'Liter'
    end
    object dxMemData1Cyl: TSmallintField
      DisplayWidth = 10
      FieldName = 'Cyl'
    end
    object dxMemData1TransmissSpeedCount: TSmallintField
      DisplayWidth = 10
      FieldName = 'TransmissSpeedCount'
    end
    object dxMemData1TransmissAutomatic: TStringField
      DisplayWidth = 3
      FieldName = 'TransmissAutomatic'
      Size = 3
    end
    object dxMemData1MPG_City: TSmallintField
      DisplayWidth = 10
      FieldName = 'MPG_City'
    end
    object dxMemData1MPG_Highway: TSmallintField
      DisplayWidth = 10
      FieldName = 'MPG_Highway'
    end
    object dxMemData1Category: TStringField
      DisplayWidth = 7
      FieldName = 'Category'
      Size = 7
    end
    object dxMemData1Cars_Description: TMemoField
      DisplayWidth = 10
      FieldName = 'Cars_Description'
      BlobType = ftMemo
      Size = 10
    end
    object dxMemData1Hyperlink: TStringField
      DisplayWidth = 50
      FieldName = 'Hyperlink'
      Size = 50
    end
    object dxMemData1Picture: TBlobField
      DisplayWidth = 10
      FieldName = 'Picture'
      Size = 10
    end
    object dxMemData1Price: TFloatField
      DisplayWidth = 10
      FieldName = 'Price'
    end
    object dxMemData1Customers_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Customers_ID'
    end
    object dxMemData1Orders_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Orders_ID'
    end
    object dxMemData1Cars_ID: TIntegerField
      DisplayWidth = 10
      FieldName = 'Cars_ID'
    end
  end
  object dsOrders: TDataSource
    DataSet = dxMemData1
    Left = 184
    Top = 544
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    RenderMode = rmGDIPlus
    Left = 616
    Top = 528
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'File'
      'Options'
      'Style'
      'Help'
      'Menus')
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True)
    ImageOptions.Images = imgImages
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 360
    Top = 8
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      25
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Main Menu'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'File1'
        end
        item
          Visible = True
          ItemName = 'Options1'
        end
        item
          Visible = True
          ItemName = 'miStyle'
        end
        item
          Visible = True
          ItemName = 'Help1'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object bbPrint: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 2
      OnClick = bbPrintClick
    end
    object dxBarSeparator1: TdxBarSeparator
      Caption = 'New Separator'
      Category = 0
      Hint = 'New Separator'
      Visible = ivAlways
      ShowCaption = False
    end
    object bbPrintPreview: TdxBarButton
      Tag = 2
      Caption = 'Print Preview'
      Category = 0
      Hint = 'Print Preview'
      Visible = ivAlways
      ImageIndex = 0
      OnClick = bbPrintClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object bbPageSetup: TdxBarButton
      Tag = 1
      Caption = 'Page Setup'
      Category = 0
      Hint = 'Page Setup'
      Visible = ivAlways
      ImageIndex = 1
      OnClick = bbPrintClick
    end
    object bbElementSizing: TdxBarButton
      Caption = 'Element Sizing'
      Category = 0
      Hint = 'Element Sizing'
      Visible = ivAlways
      ButtonStyle = bsChecked
      Down = True
      OnClick = bbElementSizingClick
    end
    object Exit1: TdxBarButton
      Caption = 'E&xit'
      Category = 1
      Visible = ivAlways
      OnClick = Exit1Click
    end
    object Customization1: TdxBarButton
      Caption = '&Customization'
      Category = 2
      Visible = ivAlways
      ImageIndex = 3
      ShortCut = 113
      OnClick = Customization1Click
    end
    object btnAbout: TdxBarButton
      Caption = 'D&emo description'
      Category = 4
      Visible = ivAlways
      ShortCut = 112
      OnClick = btnAboutClick
    end
    object File1: TdxBarSubItem
      Caption = '&File'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbPageSetup'
        end
        item
          Visible = True
          ItemName = 'bbPrintPreview'
        end
        item
          Visible = True
          ItemName = 'bbPrint'
        end
        item
          Visible = True
          ItemName = 'dxBarSeparator1'
        end
        item
          Visible = True
          ItemName = 'Exit1'
        end>
    end
    object Options1: TdxBarSubItem
      Caption = '&Options'
      Category = 5
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Customization1'
        end
        item
          Visible = True
          ItemName = 'bbElementSizing'
        end>
    end
    object miStyle: TdxBarSubItem
      Caption = '&View'
      Category = 5
      Visible = ivAlways
      ItemLinks = <>
    end
    object Help1: TdxBarSubItem
      Caption = '&Help'
      Category = 5
      Visible = ivAlways
      ItemLinks = <>
    end
  end
  object cpMain: TdxComponentPrinter
    CurrentLink = cpMainLink1
    Version = 0
    Left = 280
    Top = 7
    PixelsPerInch = 96
    object cpMainLink1: TdxLayoutControlReportLink
      Component = lcMain
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 200
      PrinterPage.GrayShading = True
      PrinterPage.Header = 100
      PrinterPage.Margins.Bottom = 500
      PrinterPage.Margins.Left = 500
      PrinterPage.Margins.Right = 500
      PrinterPage.Margins.Top = 500
      PrinterPage.PageSize.X = 8500
      PrinterPage.PageSize.Y = 11000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 1
      OptionsPagination.Controls = False
      PixelsPerInch = 96
      BuiltInReportLink = True
      HiddenComponents = {}
      ExcludedComponents = {}
      AggregatedReportLinks = {}
    end
  end
  object imgImages: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 330
    Top = 9
    Bitmap = {
      494C010104000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C1803752414026A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C1803752414026A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF676767F30606
      063E371E0482D77610FF2B180373000000000000000000000000666666F27171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF676767F30606
      063E371E0482D77610FF2B180373000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001000015D77610FFD77610FF01000017000000000000
      0000000000000000000000000000000000000000000000000000717171FF0000
      000000000000000000000000000000000000000000000000000000000000371E
      0482D77610FF341D037E00000000000000000000000000000000717171FF0000
      000000000000000000000000000000000000000000000000000000000000371E
      0482D77610FF341D037E00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000000000000000000000000000140B
      014F03020021000000000E080143D77610FFD77610FF0D070140000000000603
      002E180D02560000000000000000000000000000000000000000717171FF0000
      000000000000000000000000000747270593C16A0FF2C16A0FF2774209BED776
      10FF341D037E0606063E00000000000000000000000000000000717171FF0000
      000000000000000000000000000747270593C16A0FF2C16A0FF2774209BED776
      10FF341D037E0606063E00000000000000000000000000000000000000000000
      0000717171FF00000000717171FF717171FF717171FF717171FF000000007171
      71FF000000000000000000000000000000000000000000000000160C0153D274
      10FCBF690FF02F1A037884480AC8D77610FFD77610FF8C4D0BCE3D210488C96E
      0FF7D37410FD150C015100000000000000000000000000000000717171FF0000
      0000000000000000000045260591663808B00100001501000014633608AD7540
      09BC00000000676767F300000000000000000000000000000000717171FF0000
      0000000000000000000045260591D77610FFD17310FCD07210FBD77610FF7540
      09BC00000000676767F3000000000000000000000000454545C8717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF484848CC0000000000000000000000000603002BC76E
      0FF6D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFBD680EEF0301002000000000000000000000000000000000717171FF0000
      00000000000000000000BC670EEF01010018000000000000000001000014C16A
      0FF200000000717171FF00000000000000000000000000000000717171FF0000
      00000000000000000000BC670EEFA35A0DDE0302002204020023D07210FBC16A
      0FF200000000717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF00000000717171FF717171FF717171FF717171FF000000007171
      71FF717171FF717171FF717171FF00000000000000000000000000000000391F
      0484D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF2F1A03780000000000000000000000000000000000000000717171FF0000
      00000000000000000000BB670EEE0201001A000000000000000001000016C16A
      0FF200000000717171FF00000000000000000000000000000000717171FF0000
      000000000000000000008B4C0BCD0301001F0000000004020023D17310FCC16A
      0FF200000000717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000007171
      71FF717171FF717171FF717171FF0000000000000000010000160D07003F884B
      0BCBD77610FFD77610FF663808B00100001501000014633608ADD77610FFD776
      10FF864A0ACA1009014602010019000000000000000000000000717171FF0000
      000000000000000000004325058F6A3A08B30201001901010018663808B04727
      059300000000717171FF00000000000000000000000000000000717171FF0000
      000000000000000000000000000A0000000003010021A65B0DE0D77610FF4727
      059300000000717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF01010018000000000000000001000014D77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000717171FF0000
      00000000000000000000000000064325058FBB670EEEBB670EEE452605910000
      000700000000717171FF00000000000000000000000000000000717171FF0000
      00000000000000000000000000000000000B8E4E0BCFBB670EEE452605910000
      000700000000717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000D77610FFD77610FFD776
      10FFD77610FFD77610FF0201001A000000000000000001000016D77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF0000000000000000010000150E0801438B4C
      0BCDD77610FFD77610FF6A3A08B30201001901010018663808B0D77610FFD776
      10FF894B0BCC0B06003B01000013000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000000000000000000000717171FF717171FF0000
      000D000000000000000000000000000000000000000000000000000000000000
      00000000000B717171FF717171FF00000000000000000000000000000000361E
      0481D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF3D2204890000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000666666F27171
      71FF717171FF555555DE00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000666666F27171
      71FF717171FF555555DE000000000000000000000000424242C3717171FF0000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000717171FF454545C800000000000000000000000004020027C36C
      0FF3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFCB7010F80704003000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF555555DE0101011F00000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF555555DE0101011F00000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000180D0257D474
      10FDC76D0FF5391F048486490AC9D77610FFD77610FF83480AC72B180373BA66
      0EEDD27410FC170C015400000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF5555
      55DE0101011F0000000000000000000000000000000000000000717171FF0000
      0000000000000000000000000000000000000000000000000000717171FF5555
      55DE0101011F0000000000000000000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000007171
      71FF00000000000000000000000000000000000000000000000000000000180D
      025705020028000000000B06003BD77610FFD77610FF10080146000000000201
      001D140A014E0000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF555555DE0101
      011F000000000000000000000000000000000000000000000000646464F07171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF555555DE0101
      011F000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000001000012D77610FFD77610FF01010018000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
    DesignInfo = 590154
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32312E342C32384831386C302C306C302C3048365634683134
          763563302C302E362C302E342C312C312C3168357631332E346C322C3256396C
          2D372D37483543342E342C322C342C322E342C342C3376323663302C302E362C
          302E342C312C312C316831382E3420202623393B4C32312E342C32387A222F3E
          0D0A3C7061746820636C6173733D22426C75652220643D224D32392C32396C2D
          352E392D352E3963302E362D302E392C302E392D322C302E392D332E3163302D
          332E332D322E372D362D362D36732D362C322E372D362C3673322E372C362C36
          2C3663312E312C302C322E322D302E332C332E312D302E394C32372C33312020
          2623393B63302E362C302E362C312E342C302E362C322C304332392E362C3330
          2E342C32392E362C32392E362C32392C32397A204D31342C323063302D322E32
          2C312E382D342C342D3473342C312E382C342C3463302C322E322D312E382C34
          2D342C345331342C32322E322C31342C32307A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
          3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D31382C32384C31382C32384C31382C3238222F3E0D0A3C7061
          746820636C6173733D22426C61636B2220643D224D32312E342C32384831386C
          302C306C302C3048365634683134763563302C302E362C302E342C312C312C31
          68357631332E346C322C3256396C2D372D37483543342E342C322C342C322E34
          2C342C3376323663302C302E362C302E342C312C312C316831382E3420202623
          393B4C32312E342C32387A222F3E0D0A3C7061746820636C6173733D22426C75
          652220643D224D32392C32396C2D352E392D352E3963302E362D302E392C302E
          392D322C302E392D332E3163302D332E332D322E372D362D362D36632D302E39
          2C302D312E372C302E322D322E352C302E356C342C3463302E382C302E382C30
          2E382C322E322C302C3320202623393B732D322E322C302E382D332C306C2D34
          2D344331322E322C31382E332C31322C31392E312C31322C323063302C332E33
          2C322E372C362C362C3663312E312C302C322E322D302E332C332E312D302E39
          4C32372C333163302E362C302E362C312E342C302E362C322C3020202623393B
          4332392E362C33302E342C32392E362C32392E362C32392C32397A222F3E0D0A
          3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C7061746820636C
          6173733D22426C61636B2220643D224D31302C34683132763668325632483876
          38683256347A204D32382C38682D32763363302C302E362D302E342C312D312C
          314837632D302E362C302D312D302E342D312D3156384834632D312E312C302D
          322C302E392D322C3276313220202623393B63302C312E312C302E392C322C32
          2C3268347636683136762D36683463312E312C302C322D302E392C322D325631
          304333302C382E392C32392E312C382C32382C387A204D32322C323276327634
          483130762D34762D32762D346831325632327A204D32302C3234682D38763268
          385632347A204D32302C3230682D38763220202623393B68385632307A222F3E
          0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D
          2253657474696E6773223E0D0A09093C7061746820636C6173733D22426C7565
          2220643D224D33302C3138762D346C2D342E342D302E37632D302E322D302E38
          2D302E352D312E352D302E392D322E316C322E362D332E366C2D322E382D322E
          386C2D332E362C322E36632D302E372D302E342D312E342D302E372D322E312D
          302E394C31382C32682D3420202623393B2623393B6C2D302E372C342E34632D
          302E382C302E322D312E352C302E352D322E312C302E394C372E352C342E374C
          342E372C372E356C322E362C332E36632D302E342C302E372D302E372C312E34
          2D302E392C322E314C322C313476346C342E342C302E3763302E322C302E382C
          302E352C312E352C302E392C322E3120202623393B2623393B6C2D322E362C33
          2E366C322E382C322E386C332E362D322E3663302E372C302E342C312E342C30
          2E372C322E312C302E394C31342C333068346C302E372D342E3463302E382D30
          2E322C312E352D302E352C322E312D302E396C332E362C322E366C322E382D32
          2E386C2D322E362D332E3620202623393B2623393B63302E342D302E372C302E
          372D312E342C302E392D322E314C33302C31387A204D31362C3230632D322E32
          2C302D342D312E382D342D3473312E382D342C342D3473342C312E382C342C34
          5331382E322C32302C31362C32307A222F3E0D0A093C2F673E0D0A3C2F737667
          3E0D0A}
      end>
  end
end
