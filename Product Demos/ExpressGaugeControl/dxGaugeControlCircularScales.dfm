inherited frmGaugeControlCircularScale: TfrmGaugeControlCircularScale
  Caption = 'Circular Scale Features'
  ClientHeight = 728
  ClientWidth = 970
  OnCreate = FormCreate
  ExplicitWidth = 970
  ExplicitHeight = 728
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 970
    Height = 728
    ExplicitWidth = 970
    ExplicitHeight = 728
    object cxPageControl1: TcxPageControl [0]
      Left = 10
      Top = 10
      Width = 950
      Height = 670
      TabOrder = 0
      Properties.ActivePage = cxTabSheet1
      Properties.CustomButtons.Buttons = <>
      ClientRectBottom = 666
      ClientRectLeft = 4
      ClientRectRight = 946
      ClientRectTop = 24
      object cxTabSheet1: TcxTabSheet
        Caption = 'Scale Features'
        ImageIndex = 0
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 942
          Height = 642
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          object tbScaleValue: TcxTrackBar
            Left = 68
            Top = 426
            Properties.Max = 100
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = cxTrackBar1PropertiesChange
            Style.HotTrack = False
            TabOrder = 1
            Height = 65
            Width = 433
          end
          object tbScaleMinValue: TcxTrackBar
            Left = 68
            Top = 497
            Properties.Max = 24
            Properties.Min = -10
            Properties.ShowPositionHint = True
            Properties.OnChange = tbScaleMinValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 2
            Height = 64
            Width = 433
          end
          object tbScaleMaxValue: TcxTrackBar
            Left = 68
            Top = 567
            Position = 25
            Properties.Max = 25
            Properties.Min = -10
            Properties.ShowPositionHint = True
            Properties.OnChange = tbScaleMaxValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 3
            Height = 65
            Width = 433
          end
          object dxGaugeControl1: TdxGaugeControl
            Left = 10
            Top = 10
            Width = 491
            Height = 410
            Transparent = True
            object dxGaugeControl1CircularScale1: TdxGaugeCircularScale
              OptionsView.Font.Charset = DEFAULT_CHARSET
              OptionsView.Font.Color = clBlack
              OptionsView.Font.Height = -12
              OptionsView.Font.Name = 'Tahoma'
              OptionsView.Font.Style = []
              OptionsView.MajorTickCount = 6
              OptionsView.MaxValue = 25.000000000000000000
              OptionsView.MaxValue = 25.000000000000000000
              StyleName = 'CleanWhite'
            end
          end
          object tbScaleMajorTickCount: TcxTrackBar
            Left = 618
            Top = 192
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScaleMajorTickCountPropertiesChange
            Style.HotTrack = False
            TabOrder = 6
            Height = 61
            Width = 302
          end
          object tbScaleMinorTickCount: TcxTrackBar
            Left = 618
            Top = 259
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScaleMinorTickCountPropertiesChange
            Style.HotTrack = False
            TabOrder = 7
            Height = 61
            Width = 302
          end
          object cbScaleLabelOrientation: TcxComboBox
            Left = 618
            Top = 326
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'LeftToRight'
              'Circular'
              'CircularInward'
              'CircularOutward'
              'Radial')
            Properties.OnChange = cbScaleLabelOrientationPropertiesChange
            Style.HotTrack = False
            TabOrder = 8
            Text = 'LeftToRight'
            Width = 218
          end
          object cbScaleLabelsVisible: TcxCheckBox
            Left = 527
            Top = 383
            Action = acScaleLabelsVisible
            Properties.Alignment = taLeftJustify
            Style.HotTrack = False
            TabOrder = 9
            Transparent = True
          end
          object cbScaleShowTicks: TcxCheckBox
            Left = 527
            Top = 410
            Action = acScaleShowTicks
            Properties.Alignment = taLeftJustify
            Style.HotTrack = False
            TabOrder = 10
            Transparent = True
          end
          object cbScaleShowLastTick: TcxCheckBox
            Left = 527
            Top = 437
            Action = acScaleShowLastTick
            Properties.Alignment = taLeftJustify
            Style.HotTrack = False
            TabOrder = 11
            Transparent = True
          end
          object cbScaleShowFirstTick: TcxCheckBox
            Left = 527
            Top = 464
            Action = acScaleShowFirstTick
            Properties.Alignment = taLeftJustify
            Style.HotTrack = False
            TabOrder = 12
            Transparent = True
          end
          object tbScaleStartAngle: TcxTrackBar
            Left = 618
            Top = 28
            Position = 240
            Properties.Max = 360
            Properties.Min = -360
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScaleStartAnglePropertiesChange
            Style.HotTrack = False
            TabOrder = 4
            Height = 61
            Width = 302
          end
          object tbScaleEndAngle: TcxTrackBar
            Left = 618
            Top = 95
            Position = -60
            Properties.Max = 360
            Properties.Min = -360
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScaleEndAnglePropertiesChange
            Style.HotTrack = False
            TabOrder = 5
            Height = 61
            Width = 302
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutControl1Item5: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Value:'
            Control = tbScaleValue
            ControlOptions.OriginalHeight = 60
            ControlOptions.OriginalWidth = 334
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Min Value:'
            Control = tbScaleMinValue
            ControlOptions.OriginalHeight = 60
            ControlOptions.OriginalWidth = 334
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Max Value:'
            Control = tbScaleMaxValue
            ControlOptions.OriginalHeight = 60
            ControlOptions.OriginalWidth = 334
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Item1: TdxLayoutItem
            Parent = dxLayoutControl1Group4
            AlignHorz = ahClient
            AlignVert = avClient
            Control = dxGaugeControl1
            ControlOptions.OriginalHeight = 380
            ControlOptions.OriginalWidth = 392
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Group2: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemIndex = 2
            ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl1SplitterItem1: TdxLayoutSplitterItem
            Parent = dxLayoutControl1Group_Root
            CaptionOptions.Text = 'Splitter'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
            Index = 1
          end
          object dxLayoutControl1Group1: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Tickmarks'
            ButtonOptions.Buttons = <>
            Index = 1
          end
          object dxLayoutControl1Item10: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Major Tick Count:'
            Control = tbScaleMajorTickCount
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 218
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Minor Tick Count:'
            Control = tbScaleMinorTickCount
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 218
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item9: TdxLayoutItem
            Parent = dxLayoutControl1Group1
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Label Orientation:'
            Control = cbScaleLabelOrientation
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 218
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Group5: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Visibility'
            ButtonOptions.Buttons = <>
            Index = 2
          end
          object dxLayoutControl1Item2: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            AlignHorz = ahClient
            AlignVert = avTop
            Control = cbScaleLabelsVisible
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cbScaleShowTicks
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cbScaleShowLastTick
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            Parent = dxLayoutControl1Group5
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Visible = False
            Control = cbScaleShowFirstTick
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl1Group3: TdxLayoutGroup
            Parent = dxLayoutControl1Group2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Scale Geometry'
            ButtonOptions.Buttons = <>
            Index = 0
          end
          object dxLayoutControl1Item8: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            CaptionOptions.Text = 'Start Angle:'
            Control = tbScaleStartAngle
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 218
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutControl1Item4: TdxLayoutItem
            Parent = dxLayoutControl1Group3
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'End Angle:'
            Control = tbScaleEndAngle
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 218
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Range Features'
        ImageIndex = 1
        object dxLayoutControl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 942
          Height = 642
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          object dxGaugeControl2: TdxGaugeControl
            Left = 10
            Top = 10
            Width = 514
            Height = 555
            Transparent = True
            object dxGaugeCircularScale1: TdxGaugeCircularScale
              OptionsView.Font.Charset = DEFAULT_CHARSET
              OptionsView.Font.Color = clBlack
              OptionsView.Font.Height = -12
              OptionsView.Font.Name = 'Tahoma'
              OptionsView.Font.Style = []
              OptionsView.MajorTickCount = 6
              OptionsView.MaxValue = 10.000000000000000000
              OptionsView.MaxValue = 10.000000000000000000
              StyleName = 'CleanWhite'
              object dxGaugeCircularScale1Range1: TdxGaugeCircularScaleRange
                Color = 1266712831
                ValueEnd = 4.000000000000000000
                WidthFactor = 0.150000005960464500
              end
            end
          end
          object tbRangeWidthFactor: TcxTrackBar
            Left = 656
            Top = 10
            Position = 15
            Properties.Max = 100
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbRangeWidthFactorPropertiesChange
            Style.HotTrack = False
            TabOrder = 2
            Height = 61
            Width = 276
          end
          object tbRangeRadiusFactor: TcxTrackBar
            Left = 656
            Top = 77
            Position = 50
            Properties.Max = 100
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbRangeRadiusFactorPropertiesChange
            Style.HotTrack = False
            TabOrder = 3
            Height = 61
            Width = 276
          end
          object tbEndValue: TcxTrackBar
            Left = 656
            Top = 211
            Position = 40
            Properties.Max = 100
            Properties.ShowPositionHint = True
            Properties.OnChange = tbEndValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 5
            Height = 61
            Width = 276
          end
          object tbStartValue: TcxTrackBar
            Left = 656
            Top = 144
            Properties.Max = 100
            Properties.ShowPositionHint = True
            Properties.OnChange = tbStartValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 4
            Height = 61
            Width = 276
          end
          object cbLinkedWith: TcxComboBox
            Left = 656
            Top = 278
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'None'
              'Value Start'
              'Value End')
            Properties.OnChange = cbLinkedWithPropertiesChange
            Style.HotTrack = False
            TabOrder = 6
            Text = 'None'
            Width = 195
          end
          object tbScale2Value: TcxTrackBar
            Left = 45
            Top = 571
            Properties.Max = 100
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScale2ValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 1
            Height = 61
            Width = 479
          end
          object cbShowNeedle: TcxCheckBox
            Left = 10000
            Top = 10000
            Caption = 'Show Needle'
            Properties.OnChange = cbShowNeedlePropertiesChange
            State = cbsChecked
            Style.HotTrack = False
            TabOrder = 10
            Transparent = True
            Visible = False
          end
          object dxLayoutGroup1: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            AlignHorz = ahClient
            AlignVert = avClient
            Control = dxGaugeControl2
            ControlOptions.OriginalHeight = 511
            ControlOptions.OriginalWidth = 408
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object dxLayoutSplitterItem1: TdxLayoutSplitterItem
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Splitter'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
            Index = 1
          end
          object dxLayoutItem5: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Width Factor:'
            Control = tbRangeWidthFactor
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 195
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem6: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Radius Factor:'
            Control = tbRangeRadiusFactor
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 195
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Item3: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'End Value:'
            Control = tbEndValue
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 195
            ControlOptions.ShowBorder = False
            Index = 3
          end
          object dxLayoutControl2Item4: TdxLayoutItem
            Parent = dxLayoutGroup2
            CaptionOptions.Text = 'Start Value:'
            Control = tbStartValue
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 195
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutControl2Item2: TdxLayoutItem
            Parent = dxLayoutGroup2
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Linked with scale value:'
            Control = cbLinkedWith
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 195
            ControlOptions.ShowBorder = False
            Index = 4
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutControl2Group1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Value:'
            Control = tbScale2Value
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 373
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl2Group1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
          object dxLayoutControl2Item1: TdxLayoutItem
            AlignVert = avClient
            CaptionOptions.Text = 'New Item'
            CaptionOptions.Visible = False
            Visible = False
            Control = cbShowNeedle
            ControlOptions.OriginalHeight = 21
            ControlOptions.OriginalWidth = 121
            ControlOptions.ShowBorder = False
            Index = -1
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Label Features'
        ImageIndex = 2
        object dxLayoutControl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 942
          Height = 642
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          object dxGaugeControl3: TdxGaugeControl
            Left = 10
            Top = 10
            Width = 513
            Height = 555
            Transparent = True
            object dxGaugeCircularScale2: TdxGaugeCircularScale
              OptionsView.Font.Charset = DEFAULT_CHARSET
              OptionsView.Font.Color = clBlack
              OptionsView.Font.Height = -12
              OptionsView.Font.Name = 'Tahoma'
              OptionsView.Font.Style = []
              OptionsView.MajorTickCount = 6
              OptionsView.MaxValue = 10.000000000000000000
              OptionsView.MaxValue = 10.000000000000000000
              StyleName = 'CleanWhite'
              object dxGaugeCircularScale3Caption1: TdxGaugeQuantitativeScaleCaption
                Text = 'Value:'
                OptionsLayout.CenterPositionFactorY = 0.750000000000000000
              end
            end
          end
          object tbLabelCenterPositionFactorX: TcxTrackBar
            Left = 662
            Top = 10
            Position = 15
            Properties.Max = 100
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbLabelCenterPositionFactorXPropertiesChange
            Style.HotTrack = False
            TabOrder = 2
            Height = 61
            Width = 270
          end
          object tbLabelCenterPositionFactorY: TcxTrackBar
            Left = 662
            Top = 77
            Position = 75
            Properties.Max = 100
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbLabelCenterPositionFactorYPropertiesChange
            Style.HotTrack = False
            TabOrder = 3
            Height = 61
            Width = 270
          end
          object tbRotationAngle: TcxTrackBar
            Left = 662
            Top = 144
            Properties.Max = 360
            Properties.ShowPositionHint = True
            Properties.OnChange = tbRotationAnglePropertiesChange
            Style.HotTrack = False
            TabOrder = 4
            Height = 61
            Width = 270
          end
          object tbScale3Value: TcxTrackBar
            Left = 45
            Top = 571
            Properties.Max = 100
            Properties.ShowPositionHint = True
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbScale3ValuePropertiesChange
            Style.HotTrack = False
            TabOrder = 1
            Height = 61
            Width = 478
          end
          object dxLayoutGroup3: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Visible = False
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            Index = -1
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutControl3Group1
            AlignHorz = ahClient
            AlignVert = avClient
            Control = dxGaugeControl3
            ControlOptions.OriginalHeight = 511
            ControlOptions.OriginalWidth = 407
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup3
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            Index = 2
          end
          object dxLayoutSplitterItem2: TdxLayoutSplitterItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Splitter'
            SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
            SizeOptions.SizableHorz = False
            SizeOptions.SizableVert = False
            Index = 1
          end
          object dxLayoutItem7: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Center Position Factor X:'
            Control = tbLabelCenterPositionFactorX
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 189
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem8: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Center Position Factor Y:'
            Control = tbLabelCenterPositionFactorY
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 189
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem12: TdxLayoutItem
            Parent = dxLayoutGroup4
            CaptionOptions.Text = 'Rotation Angle:'
            Control = tbRotationAngle
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 189
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutControl3Group1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Value:'
            Control = tbScale3Value
            ControlOptions.OriginalHeight = 61
            ControlOptions.OriginalWidth = 372
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutControl3Group1: TdxLayoutAutoCreatedGroup
            Parent = dxLayoutGroup3
            AlignHorz = ahClient
            Index = 0
            AutoCreated = True
          end
        end
      end
    end
    inherited lgMainGroup: TdxLayoutGroup
      ShowBorder = False
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxPageControl1
      ControlOptions.OriginalHeight = 728
      ControlOptions.OriginalWidth = 970
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 88
    Top = 56
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object ActionList1: TActionList
    Left = 560
    Top = 536
    object acScaleLabelsVisible: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Labels'
      Checked = True
      OnExecute = acScaleLabelsVisibleExecute
    end
    object acScaleShowTicks: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Ticks'
      Checked = True
      OnExecute = acScaleLabelsVisibleExecute
    end
    object acScaleShowLastTick: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Last Tick'
      Checked = True
      OnExecute = acScaleLabelsVisibleExecute
    end
    object acScaleShowFirstTick: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show First Tick'
      Checked = True
      OnExecute = acScaleLabelsVisibleExecute
    end
  end
end
