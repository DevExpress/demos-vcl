inherited frmGaugeControlDataBinding: TfrmGaugeControlDataBinding
  Caption = 'Data Binding'
  ClientHeight = 658
  ClientWidth = 1046
  OnCreate = FormCreate
  ExplicitWidth = 1046
  ExplicitHeight = 658
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1046
    Height = 658
    ExplicitWidth = 1046
    ExplicitHeight = 658
    object dxGaugeControl1: TdxGaugeControl [0]
      Left = 272
      Top = 22
      Width = 755
      Height = 175
      Hint = 'Product Name'
      ShowHint = True
      Transparent = True
      object dxGaugeControl1DBDigitalScale1: TdxGaugeDBDigitalScale
        DataBinding.DataSource = DataSource1
        DataBinding.DataField = 'ProductName'
        OptionsView.ShowBackground = False
        OptionsView.DigitCount = 0
        OptionsView.DisplayMode = sdmMatrix8x14Dots
        OptionsView.SegmentColorOff = -263173
        StyleName = 'White'
      end
    end
    object cxGrid1: TcxGrid [1]
      Left = 19
      Top = 22
      Width = 237
      Height = 576
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataSource1
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        object cxGrid1DBTableView1ProductName: TcxGridDBColumn
          Caption = 'Product Name'
          DataBinding.FieldName = 'ProductName'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 95
        end
        object cxGrid1DBTableView1UnitPrice: TcxGridDBColumn
          Caption = 'Unit Price'
          DataBinding.FieldName = 'UnitPrice'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 27
        end
        object cxGrid1DBTableView1UnitsInStock: TcxGridDBColumn
          Caption = 'Units In Stock'
          DataBinding.FieldName = 'UnitsInStock'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 46
        end
        object cxGrid1DBTableView1UnitsOnOrder: TcxGridDBColumn
          Caption = 'Units On Order'
          DataBinding.FieldName = 'UnitsOnOrder'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 50
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxGaugeControl4: TdxGaugeControl [2]
      Left = 272
      Top = 213
      Width = 755
      Height = 385
      BorderStyle = cxcbsNone
      Transparent = True
      object dxGaugeControl1ContainerScale1: TdxGaugeContainerScale
        OptionsLayout.HeightFactor = 0.839940309524536100
        OptionsLayout.WidthFactor = 0.856643557548522900
      end
      object dxGaugeControl1CircularHalfScale1: TdxGaugeDBCircularHalfScale
        AnchorScaleIndex = 0
        DataBinding.DataSource = DataSource1
        DataBinding.DataField = 'UnitPrice'
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.251650869846344000
        OptionsLayout.HeightFactor = 0.696314513683319100
        OptionsLayout.WidthFactor = 0.497708618640899700
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 5
        StyleName = 'White'
        OnAnimate = dxGaugeControl1CircularHalfScale1Animate
        ZOrder = 1
        object dxGaugeControl1CircularHalfScale1Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Unit Price'
          OptionsLayout.CenterPositionFactorY = 1.100000023841858000
        end
        object dxGaugeControl1CircularHalfScale1Caption2: TdxGaugeQuantitativeScaleCaption
          OptionsLayout.CenterPositionFactorY = 0.649999976158142100
        end
        object dxGaugeControl1CircularHalfScale1Range1: TdxGaugeCircularScaleRange
          Color = -41635
          RadiusFactor = 0.920000016689300500
          ValueEnd = 10.000000000000000000
          WidthFactor = 0.119999997317791000
        end
        object dxGaugeControl1CircularHalfScale1Range2: TdxGaugeCircularScaleRange
          Color = -156
          RadiusFactor = 0.920000016689300500
          ValueEnd = 50.000000000000000000
          ValueStart = 10.000000000000000000
          WidthFactor = 0.119999997317791000
        end
        object dxGaugeControl1CircularHalfScale1Range3: TdxGaugeCircularScaleRange
          Color = -11347442
          RadiusFactor = 0.920000016689300500
          ValueEnd = 100.000000000000000000
          ValueStart = 50.000000000000000000
          WidthFactor = 0.119999997317791000
        end
      end
      object dxGaugeControl1CircularHalfScale2: TdxGaugeDBCircularHalfScale
        AnchorScaleIndex = 0
        DataBinding.DataSource = DataSource1
        DataBinding.DataField = 'UnitsInStock'
        OptionsAnimate.Enabled = True
        OptionsLayout.CenterPositionFactorX = 0.752634227275848400
        OptionsLayout.HeightFactor = 0.696314513683319100
        OptionsLayout.WidthFactor = 0.497708588838577300
        OptionsView.ShowBackground = False
        OptionsView.MajorTickCount = 7
        OptionsView.MaxValue = 120.000000000000000000
        OptionsView.MaxValue = 120.000000000000000000
        StyleName = 'White'
        OnAnimate = dxGaugeControl1CircularHalfScale2Animate
        ZOrder = 2
        object dxGaugeControl1CircularHalfScale2Caption1: TdxGaugeQuantitativeScaleCaption
          Text = 'Units In Stock'
          OptionsLayout.CenterPositionFactorY = 1.100000023841858000
          OptionsView.Font.Charset = DEFAULT_CHARSET
          OptionsView.Font.Color = clBlack
          OptionsView.Font.Height = -15
          OptionsView.Font.Name = 'Tahoma'
          OptionsView.Font.Style = []
          OptionsView.UseOwnFont = True
        end
        object dxGaugeControl1CircularHalfScale2Caption2: TdxGaugeQuantitativeScaleCaption
          OptionsLayout.CenterPositionFactorY = 0.649999976158142100
        end
        object dxGaugeControl1CircularHalfScale2Range1: TdxGaugeCircularScaleRange
          Color = -41635
          RadiusFactor = 0.920000016689300500
          ValueEnd = 30.000000000000000000
          WidthFactor = 0.119999997317791000
        end
        object dxGaugeControl1CircularHalfScale2Range2: TdxGaugeCircularScaleRange
          Color = -156
          RadiusFactor = 0.920000016689300500
          ValueEnd = 70.000000000000000000
          ValueStart = 30.000000000000000000
          WidthFactor = 0.119999997317791000
        end
        object dxGaugeControl1CircularHalfScale2Range3: TdxGaugeCircularScaleRange
          Color = -11347442
          RadiusFactor = 0.920000016689300500
          ValueEnd = 120.000000000000000000
          ValueStart = 70.000000000000000000
          WidthFactor = 0.119999997317791000
        end
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ItemIndex = 2
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      AllowRemove = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      AllowRemove = False
      Control = dxGaugeControl1
      ControlOptions.OriginalHeight = 175
      ControlOptions.OriginalWidth = 762
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 586
      ControlOptions.OriginalWidth = 242
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1SplitterItem2: TdxLayoutSplitterItem
      Parent = lgMainGroup
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avClient
      Control = dxGaugeControl4
      ControlOptions.OriginalHeight = 397
      ControlOptions.OriginalWidth = 770
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 520
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Data\' +
      'nwind.mdb;Mode=Share Deny None;Persist Security Info=False;Jet O' +
      'LEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Dat' +
      'abase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Loc' +
      'king Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global' +
      ' Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLED' +
      'B:Create System Database=False;Jet OLEDB:Encrypt Database=False;' +
      'Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact W' +
      'ithout Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 112
    Top = 336
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 496
    Top = 304
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Products'
    Left = 184
    Top = 240
  end
end
