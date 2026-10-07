inherited dxChartCustomFrame: TdxChartCustomFrame
  Padding.Left = 16
  Padding.Top = 16
  Padding.Right = 16
  Padding.Bottom = 16
  inherited lcFrame: TdxLayoutControl
    Left = 16
    Top = 16
    Width = 419
    Height = 273
    ExplicitLeft = 16
    ExplicitTop = 16
    ExplicitWidth = 419
    ExplicitHeight = 273
    object cmbMarkerKind: TcxComboBox [0]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 10
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Circle'
        'Square'
        'Diamond'
        'Triangle'
        'InvertedTriangle'
        'Plus'
        'Cross'
        'Star'
        'Pentagon'
        'Hexagon')
      Properties.OnChange = cmbMarkerKindPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Text = 'Circle'
      Visible = False
      Width = 209
    end
    object cmbAxisXLabelsPosition: TcxComboBox [1]
      Left = 164
      Top = 441
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Outside'
        'Inside')
      Properties.OnChange = cmbAxisXLabelsPositionPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Text = 'Outside'
      Width = 205
    end
    object cmbAxisXAlignment: TcxComboBox [2]
      Left = 164
      Top = 414
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Near'
        'Far'
        'Zero'
        'Center')
      Properties.OnChange = cmbAxisAlignmentPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Text = 'Near'
      Width = 205
    end
    object seHoleRadius: TcxSpinEdit [3]
      Left = 174
      Top = 155
      Properties.ImmediatePost = True
      Properties.Increment = 5.000000000000000000
      Properties.MaxValue = 90.000000000000000000
      Properties.MinValue = 10.000000000000000000
      Properties.OnEditValueChanged = seHoleRadiusPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Value = 10
      Width = 194
    end
    object cmbLegendAlignmentHorz: TcxComboBox [4]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Default'
        'NearOutside'
        'Near'
        'Center'
        'Far'
        'FarOutside')
      Properties.OnChange = cmbLegendAlignmentHorzPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Text = 'Default'
      Visible = False
      Width = 121
    end
    object cmbLegendAlignmentVert: TcxComboBox [5]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Default'
        'NearOutside'
        'Near'
        'Center'
        'Far'
        'FarOutside')
      Properties.OnChange = cmbLegendAlignmentHorzPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Text = 'Default'
      Visible = False
      Width = 121
    end
    object cmbLegendDirection: TcxComboBox [6]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'TopToBottom'
        'BottomToTop'
        'LeftToRight'
        'RightToLeft')
      Properties.OnChange = cmbLegendAlignmentHorzPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Text = 'TopToBottom'
      Visible = False
      Width = 121
    end
    object seLegendItemIndentHorz: TcxSpinEdit [7]
      Left = 10000
      Top = 10000
      Properties.ImmediatePost = True
      Properties.MaxValue = 20.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = cmbLegendAlignmentHorzPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Value = 2
      Visible = False
      Width = 121
    end
    object seLegendItemIndentVert: TcxSpinEdit [8]
      Left = 10000
      Top = 10000
      Properties.ImmediatePost = True
      Properties.MaxValue = 20.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = cmbLegendAlignmentHorzPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Value = 2
      Visible = False
      Width = 121
    end
    object seBarDistance: TcxSpinEdit [9]
      Left = 174
      Top = 182
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = seBarDistancePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Value = 10
      Width = 194
    end
    object seTopNCount: TcxSpinEdit [10]
      Left = 10000
      Top = 10000
      Properties.ImmediatePost = True
      Properties.MaxValue = 20.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = liTopNEnabledClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Value = 1
      Visible = False
      Width = 200
    end
    object cmbExplodedValue: TcxComboBox [11]
      Left = 174
      Top = 209
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'None'
        'All'
        'Min'
        'Max')
      Properties.OnChange = cmbExplodedValuePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Text = 'None'
      Width = 194
    end
    object cmbAxisYAlignment: TcxComboBox [12]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Near'
        'Far'
        'Zero'
        'Center')
      Properties.OnChange = cmbAxisYAlignmentPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Text = 'Near'
      Visible = False
      Width = 153
    end
    object cmbAxisYLabelsPosition: TcxComboBox [13]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'Outside'
        'Inside')
      Properties.OnChange = cmbAxisYLabelsPositionPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Text = 'Outside'
      Visible = False
      Width = 153
    end
    object cmbLabelPosition: TcxComboBox [14]
      Left = 174
      Top = 128
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.OnChange = cmbLabelPositionPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 194
    end
    object seValueLabelsResolveOverlappingIndent: TcxSpinEdit [15]
      Left = 199
      Top = 266
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = -3.000000000000000000
      Properties.OnEditValueChanged = seValueLabelsResolveOverlappingIndentPropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Value = 1
      Width = 169
    end
    object cmbValueLabelsResolveOverlappingMode: TcxComboBox [16]
      Left = 199
      Top = 293
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.Items.Strings = (
        'None'
        'Default')
      Properties.OnChange = cmbValueLabelsResolveOverlappingModePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 169
    end
    object ccDemoChart: TdxChartControl [17]
      Left = 0
      Top = 0
      Width = 61
      Height = 235
      Titles = <>
    end
    object cmbToolTipsMode: TcxComboBox [18]
      Left = 199
      Top = 647
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'No Tooltips'
        'Simple Tooltips'
        'Crosshair')
      Properties.OnChange = cmbToolTipsModePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Width = 169
    end
    object cmbCrosshairSnapToPoint: TcxComboBox [19]
      Left = 199
      Top = 826
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Nearest Argument'
        'Nearest Value'
        'Shortest Distance')
      Properties.OnChange = cmbCrosshairSnapToPointPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Width = 169
    end
    object cmbCrosshairStickyLines: TcxComboBox [20]
      Left = 199
      Top = 899
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'None'
        'By Single Axis'
        'All')
      Properties.OnChange = cmbCrosshairStickyLinesPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Width = 169
    end
    inherited lsSetupSplitter: TdxLayoutSplitterItem
      Parent = lgSetupTools
      AlignHorz = ahLeft
      AlignVert = avClient
      Index = 0
    end
    inherited lgSetupTools: TdxLayoutGroup
      CaptionOptions.Visible = False
      SizeOptions.Width = 0
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lgOptions: TdxLayoutGroup
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Options'
      ItemIndex = 2
      ScrollOptions.Vertical = smAuto
      Index = 1
    end
    object lgGeneral: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'General'
      ItemControlAreaAlignment = catOwn
      ItemIndex = 6
      Index = 0
    end
    object lgMarkers: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'Markers'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemControlAreaAlignment = catOwn
      ItemIndex = 1
      Index = 2
    end
    object liMarkerVisible: TdxLayoutCheckBoxItem
      Parent = lgMarkers
      CaptionOptions.Text = 'Visible'
      State = cbsChecked
      OnClick = liMarkerVisibleClick
      Index = 0
    end
    object liMarkerKind: TdxLayoutItem
      Parent = lgMarkers
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = True
      SizeOptions.Width = 119
      CaptionOptions.Text = 'Kind:'
      Control = cmbMarkerKind
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liAxisXMinorGridlines: TdxLayoutCheckBoxItem
      Parent = lgXAxis
      CaptionOptions.Text = 'Show Minor Gridlines'
      OnClick = liAxisXMinorGridlinesClick
      Index = 6
    end
    object liAxisXInterlaced: TdxLayoutCheckBoxItem
      Parent = lgXAxis
      CaptionOptions.Text = 'Interlaced'
      OnClick = liAxisXInterlacedClick
      Index = 4
    end
    object lgAxes: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object liAxisXLabelsPosition: TdxLayoutItem
      Parent = lgXAxis
      SizeOptions.Width = 185
      CaptionOptions.Text = 'Label Position:'
      Control = cmbAxisXLabelsPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liAxisXAlignment: TdxLayoutItem
      Parent = lgXAxis
      SizeOptions.Width = 135
      CaptionOptions.Text = 'Alignment:'
      Control = cmbAxisXAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liRotated: TdxLayoutCheckBoxItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Rotate Diagram'
      OnClick = liRotatedClick
      Index = 1
    end
    object liValueLabels: TdxLayoutCheckBoxItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Show Value Labels'
      State = cbsChecked
      OnClick = liValueLabelsClick
      Index = 2
    end
    object liAxisXReverse: TdxLayoutCheckBoxItem
      Parent = lgXAxis
      CaptionOptions.Text = 'Inverted'
      OnClick = liAxisXReverseClick
      Index = 3
    end
    object liHoleRadius: TdxLayoutItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Hole Radius, %:'
      Control = seHoleRadius
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 151
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lgLegend: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'Legend'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemControlAreaAlignment = catOwn
      Index = 4
    end
    object liLegendVisible: TdxLayoutCheckBoxItem
      Parent = lgLegend
      CaptionOptions.Text = 'Visible'
      State = cbsChecked
      OnClick = cmbLegendAlignmentHorzPropertiesChange
      Index = 0
    end
    object liLegendAlignmentHorz: TdxLayoutItem
      Parent = lgLegend
      CaptionOptions.Text = 'Horizontal Alignment:'
      Control = cmbLegendAlignmentHorz
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liLegendAlignmentVert: TdxLayoutItem
      Parent = lgLegend
      CaptionOptions.Text = 'Vertical Alignment:'
      Control = cmbLegendAlignmentVert
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liLegendDirection: TdxLayoutItem
      Parent = lgLegend
      CaptionOptions.Text = 'Direction:'
      Control = cmbLegendDirection
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgLegend
      CaptionOptions.Text = 'Horizontal Item Indent:'
      Control = seLegendItemIndentHorz
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object liLegendShowCheckBoxes: TdxLayoutCheckBoxItem
      Parent = lgLegend
      CaptionOptions.Text = 'Show Check Boxes'
      OnClick = cmbLegendAlignmentHorzPropertiesChange
      Index = 6
    end
    object liLegendShowCaptions: TdxLayoutCheckBoxItem
      Parent = lgLegend
      CaptionOptions.Text = 'Show Captions'
      OnClick = cmbLegendAlignmentHorzPropertiesChange
      Index = 7
    end
    object liLegendShowImages: TdxLayoutCheckBoxItem
      Parent = lgLegend
      CaptionOptions.Text = 'Show Images'
      OnClick = cmbLegendAlignmentHorzPropertiesChange
      Index = 8
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgLegend
      CaptionOptions.Text = 'Vertical Item Indent:'
      Control = seLegendItemIndentVert
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object liDiagramBorder: TdxLayoutCheckBoxItem
      Parent = lgGeneral
      SizeOptions.Width = 226
      CaptionOptions.Text = 'Show Diagram Border'
      OnClick = liDiagramBorderClick
      Index = 0
    end
    object liBarDistance: TdxLayoutItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Bar Distance:'
      Control = seBarDistance
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lgTopN: TdxLayoutGroup
      Parent = lgOptions
      AlignVert = avTop
      CaptionOptions.Text = 'Top N Options'
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemControlAreaAlignment = catOwn
      ItemIndex = 1
      Index = 5
    end
    object liTopNEnabled: TdxLayoutCheckBoxItem
      Parent = lgTopN
      CaptionOptions.Text = 'Enabled'
      OnClick = liTopNEnabledClick
      Index = 0
    end
    object liTopNCount: TdxLayoutItem
      Parent = lgTopN
      CaptionOptions.Text = 'Count:'
      Control = seTopNCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liTopNShowOthers: TdxLayoutCheckBoxItem
      Parent = lgTopN
      Visible = False
      CaptionOptions.Text = 'Show Others'
      OnClick = liTopNEnabledClick
      Index = 1
    end
    object liExplodedValue: TdxLayoutItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Exploded Value:'
      Control = cmbExplodedValue
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lgXAxis: TdxLayoutGroup
      Parent = lgAxes
      CaptionOptions.Text = 'X-Axis'
      ItemIndex = 2
      Index = 0
    end
    object lgYAxis: TdxLayoutGroup
      Parent = lgAxes
      CaptionOptions.Text = 'Y-Axis'
      ItemIndex = 2
      Index = 1
    end
    object liAxisXGridlines: TdxLayoutCheckBoxItem
      Parent = lgXAxis
      CaptionOptions.Text = 'Show Gridlines'
      OnClick = liAxisXGridlinesClick
      Index = 5
    end
    object liAxisYReverse: TdxLayoutCheckBoxItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Inverted'
      OnClick = liAxisYReverseClick
      Index = 3
    end
    object liAxisXVisible: TdxLayoutCheckBoxItem
      Parent = lgXAxis
      CaptionOptions.Text = 'Visible'
      OnClick = liAxisXVisibleClick
      Index = 0
    end
    object liAxisYVisible: TdxLayoutCheckBoxItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Visible'
      OnClick = liAxisYVisibleClick
      Index = 0
    end
    object liAxisYAlignment: TdxLayoutItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Alignment:'
      Control = cmbAxisYAlignment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liAxisYLabelsPosition: TdxLayoutItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Label Position:'
      Control = cmbAxisYLabelsPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liAxisYInterlaced: TdxLayoutCheckBoxItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Interlaced'
      OnClick = liAxisYInterlacedClick
      Index = 4
    end
    object liAxisYGridlines: TdxLayoutCheckBoxItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Show Gridlines'
      OnClick = liAxisYGridlinesClick
      Index = 5
    end
    object liAxisYMinorGridlines: TdxLayoutCheckBoxItem
      Parent = lgYAxis
      CaptionOptions.Text = 'Show Minor Gridlines'
      OnClick = liAxisYMinorGridlinesClick
      Index = 6
    end
    object liLabelPosition: TdxLayoutItem
      Parent = lgGeneral
      CaptionOptions.Text = 'Label Position:'
      Control = cmbLabelPosition
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lgValueLabelsResolveOverlapping: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'Label Overlapping'
      ItemIndex = 1
      Index = 1
    end
    object liValueLabelsResolveOverlappingIndent: TdxLayoutItem
      Parent = lgValueLabelsResolveOverlapping
      CaptionOptions.Text = 'Indent:'
      Control = seValueLabelsResolveOverlappingIndent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liValueLabelsResolveOverlappingMode: TdxLayoutItem
      Parent = lgValueLabelsResolveOverlapping
      CaptionOptions.Text = 'Mode:'
      Control = cmbValueLabelsResolveOverlappingMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 124
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liGDI: TdxLayoutRadioButtonItem
      Parent = lgRenderMode
      CaptionOptions.Text = 'GDI'
      GroupIndex = 10
      OnClick = liGDIClick
      Index = 0
    end
    object liGDIPlus: TdxLayoutRadioButtonItem
      Tag = 1
      Parent = lgRenderMode
      CaptionOptions.Text = 'GDI+'
      Checked = True
      GroupIndex = 10
      TabStop = True
      OnClick = liGDIClick
      Index = 1
    end
    object liDirectX: TdxLayoutRadioButtonItem
      Tag = 2
      Parent = lgRenderMode
      CaptionOptions.Text = 'DirectX'
      GroupIndex = 10
      OnClick = liGDIClick
      Index = 2
    end
    object lgRenderMode: TdxLayoutGroup
      Parent = lgOptions
      CaptionOptions.Text = 'Render Mode'
      Index = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'ccDemoChart'
      CaptionOptions.Visible = False
      Control = ccDemoChart
      ControlOptions.OriginalHeight = 40
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgToolTips: TdxLayoutGroup
      Parent = lgOptions
      AlignVert = avTop
      CaptionOptions.Text = 'Tooltips'
      ButtonOptions.ShowExpandButton = True
      Index = 6
    end
    object liToolTipsMode: TdxLayoutItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Tooltip Mode:'
      Control = cmbToolTipsMode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liCrosshairArgumentLines: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Show Argument Lines'
      OnClick = liCrosshairArgumentLinesClick
      Index = 2
    end
    object liCrosshairValueLines: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Show Value Lines'
      OnClick = liCrosshairValueLinesClick
      Index = 3
    end
    object liCrosshairArgumentLabels: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Show Axis X Labels'
      OnClick = liCrosshairArgumentLabelsClick
      Index = 5
    end
    object liCrosshairValueLabels: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Show Axis Y Labels'
      OnClick = liCrosshairValueLabelsClick
      Index = 6
    end
    object liCrosshairSnapToPoint: TdxLayoutItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Target Points by:'
      Control = cmbCrosshairSnapToPoint
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object liCrosshairSnapToMultipleSeries: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Target Multiple Series'
      OnClick = liCrosshairSnapToMultipleSeriesClick
      Index = 9
    end
    object liCrosshairHighlightPoints: TdxLayoutCheckBoxItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Highlight Target Points'
      OnClick = liCrosshairHighlightPointsClick
      Index = 10
    end
    object liCrosshairStickyLines: TdxLayoutItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Snap Crosshair Lines:'
      Control = cmbCrosshairStickyLines
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object lsCrosshairLines: TdxLayoutSeparatorItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Crosshair Lines'
      CaptionOptions.Visible = True
      Index = 1
    end
    object lsCrosshairLabels: TdxLayoutSeparatorItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Crosshair Labels'
      CaptionOptions.Visible = True
      Index = 4
    end
    object lsCrosshairSnapOptions: TdxLayoutSeparatorItem
      Parent = lgToolTips
      CaptionOptions.Text = 'Snap Options'
      CaptionOptions.Visible = True
      Index = 7
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxDefaultLayoutLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxCustomMarginsLayoutLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    object llfTabbedGroup: TdxLayoutCxLookAndFeel
      Offsets.TabSheetContentOffsetHorz = -8
      Offsets.TabSheetContentOffsetVert = -8
      PixelsPerInch = 96
    end
  end
  object lfController: TcxLookAndFeelController
    Kind = lfFlat
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    RenderMode = rmGDIPlus
    Left = 536
    Top = 160
  end
end
