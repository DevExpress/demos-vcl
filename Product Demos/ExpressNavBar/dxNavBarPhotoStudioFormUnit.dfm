inherited dxNavBarControlDemoUnitForm1: TdxNavBarControlDemoUnitForm1
  Caption = 'Photo Studio'
  ClientHeight = 538
  ClientWidth = 853
  OnCreate = FormCreate
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 853
    Height = 538
    object cxGroupBox3: TcxGroupBox [0]
      Left = 10
      Top = 10
      PanelStyle.Active = True
      ParentBackground = False
      ParentColor = False
      Style.Color = 16053234
      TabOrder = 0
      Height = 480
      Width = 667
      object cxImage1: TcxImage
        Left = 3
        Top = 3
        Align = alClient
        Properties.FitMode = ifmProportionalStretch
        Properties.ReadOnly = True
        Properties.ShowFocusRect = False
        Style.BorderStyle = ebsNone
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.HotTrack = False
        TabOrder = 0
        Transparent = True
        Height = 373
        Width = 352
      end
      object dxNavBar1: TdxNavBar
        Left = 355
        Top = 3
        Width = 309
        Height = 373
        Align = alRight
        ActiveGroupIndex = 0
        TabOrder = 1
        View = 20
        OptionsBehavior.Common.AllowChildGroups = True
        OptionsBehavior.Common.AllowExpandAnimation = True
        object dxNavBar1Group1: TdxNavBarGroup
          Caption = 'Properties'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsExpansion.AllowMultipleGroupExpansion = False
          Links = <>
          ParentGroupIndex = -1
          Position = 0
        end
        object dxNavBar1Group2: TdxNavBarGroup
          Caption = 'Image'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsGroupControl.ShowControl = True
          OptionsGroupControl.UseControl = True
          Links = <>
          ParentGroupIndex = -1
          Position = 1
        end
        object ngFilters: TdxNavBarGroup
          Caption = 'Filters'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsGroupControl.ShowControl = True
          OptionsGroupControl.UseControl = True
          Links = <>
          ParentGroupIndex = 0
          Position = 0
        end
        object ngColors: TdxNavBarGroup
          Caption = 'Color'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsGroupControl.ShowControl = True
          OptionsGroupControl.UseControl = True
          OptionsExpansion.Expanded = False
          Links = <>
          ParentGroupIndex = 0
          Position = 1
        end
        object ngBrightnessContrast: TdxNavBarGroup
          Caption = 'Brightness/Contrast'
          SelectedLinkIndex = -1
          TopVisibleLinkIndex = 0
          OptionsGroupControl.ShowControl = True
          OptionsGroupControl.UseControl = True
          OptionsExpansion.Expanded = False
          Links = <>
          ParentGroupIndex = 0
          Position = 2
        end
        object dxNavBar1Group2Control: TdxNavBarGroupControl
          Left = 2
          Top = 73
          Width = 288
          Height = 298
          Caption = 'dxNavBar1Group2Control'
          TabOrder = 3
          UseStyle = True
          GroupIndex = 1
          OriginalHeight = 298
          object cxImage2: TcxImage
            Left = 0
            Top = 0
            Align = alClient
            Properties.FitMode = ifmProportionalStretch
            Properties.ReadOnly = True
            Properties.ShowFocusRect = False
            Style.BorderStyle = ebsNone
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            TabOrder = 0
            Transparent = True
            Height = 226
            Width = 288
          end
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 226
            Width = 288
            Height = 72
            Align = alBottom
            TabOrder = 1
            AutoSize = True
            LayoutLookAndFeel = dxMainCxLookAndFeel1
            DesignSize = (
              288
              72)
            object dxRatingControl1: TdxRatingControl
              Left = 191
              Top = 18
              Anchors = [akTop, akRight]
              Style.HotTrack = False
              Style.TransparentBorder = False
              TabOrder = 0
              Transparent = True
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              Hidden = True
              ShowBorder = False
              UseIndent = False
              Index = -1
            end
            object lblImageFileName: TdxLayoutLabeledItem
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.MaxWidth = 150
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'lblImageFileName'
              CaptionOptions.WordWrap = True
              Index = 0
            end
            object lblImageFileInfo: TdxLayoutLabeledItem
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              CaptionOptions.AlignVert = tavTop
              CaptionOptions.Text = 'lblImageFileInfo'
              CaptionOptions.WordWrap = True
              Enabled = False
              Index = 1
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahRight
              AlignVert = avTop
              CaptionOptions.Visible = False
              Control = dxRatingControl1
              ControlOptions.MinWidth = 100
              ControlOptions.OriginalHeight = 20
              ControlOptions.OriginalWidth = 87
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup1: TdxLayoutGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'New Group'
              CaptionOptions.Visible = False
              ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup2: TdxLayoutGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahRight
              CaptionOptions.Text = 'New Group'
              LayoutDirection = ldHorizontal
              ShowBorder = False
              UseIndent = False
              Index = 1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'New Group'
              CaptionOptions.Visible = False
              LayoutDirection = ldHorizontal
              ShowBorder = False
              Index = 1
            end
            object dxLayoutSeparatorItem1: TdxLayoutSeparatorItem
              Parent = dxLayoutControl1Group_Root
              Padding.Bottom = 8
              Padding.AssignedValues = [lpavBottom]
              CaptionOptions.Text = 'Separator'
              Index = 0
            end
          end
        end
        object gcFilters: TdxNavBarGroupControl
          Left = 2
          Top = -217
          Width = 288
          Height = 198
          Caption = 'gcFilters'
          TabOrder = 0
          GroupIndex = 2
          OriginalHeight = 198
          object dxGalleryControl1: TdxGalleryControl
            Left = 0
            Top = 0
            Width = 288
            Height = 198
            Align = alClient
            BorderStyle = cxcbsNone
            OptionsBehavior.ItemCheckMode = icmSingleCheck
            OptionsView.ColumnCount = 3
            OptionsView.ContentOffset.Left = 0
            OptionsView.ContentOffset.Top = 10
            OptionsView.ContentOffset.Right = 0
            OptionsView.ContentOffset.Bottom = 0
            OptionsView.ContentOffsetItems.All = 4
            OptionsView.Item.Image.ShowFrame = False
            OptionsView.Item.Image.Size.Height = 60
            OptionsView.Item.Image.Size.Width = 80
            OptionsView.Item.Text.AlignVert = vaCenter
            OptionsView.Item.Text.Position = posBottom
            TabOrder = 0
            OnItemClick = dxGalleryControl1ItemClick
            object dxGalleryControl1Group1: TdxGalleryControlGroup
              Caption = 'New Group'
              ShowCaption = False
            end
          end
        end
        object gcColor: TdxNavBarGroupControl
          Left = 2
          Top = 81
          Width = 288
          Height = 88
          Caption = 'gcColor'
          TabOrder = 1
          UseStyle = True
          GroupIndex = 3
          OriginalHeight = 88
          object tbR: TcxTrackBar
            Left = 43
            Top = 7
            Properties.AutoSize = False
            Properties.Max = 255
            Properties.ShowTicks = False
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbRGBPropertiesChange
            TabOrder = 0
            Transparent = True
            Height = 25
            Width = 252
          end
          object tbG: TcxTrackBar
            Left = 43
            Top = 32
            Properties.AutoSize = False
            Properties.Max = 255
            Properties.ShowTicks = False
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbRGBPropertiesChange
            TabOrder = 1
            Transparent = True
            Height = 25
            Width = 252
          end
          object tbB: TcxTrackBar
            Left = 43
            Top = 56
            Properties.AutoSize = False
            Properties.Max = 255
            Properties.ShowTicks = False
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbRGBPropertiesChange
            TabOrder = 2
            Transparent = True
            Height = 25
            Width = 252
          end
          object cxLabel1: TcxLabel
            Left = 23
            Top = 8
            Caption = 'R:'
            Transparent = True
          end
          object cxLabel2: TcxLabel
            Left = 23
            Top = 33
            Caption = 'G:'
            Transparent = True
          end
          object cxLabel3: TcxLabel
            Left = 23
            Top = 58
            Caption = 'B:'
            Transparent = True
          end
        end
        object ngBrightnessContrastControl: TdxNavBarGroupControl
          Left = 2
          Top = 102
          Width = 288
          Height = 63
          TabOrder = 2
          UseStyle = True
          GroupIndex = 4
          OriginalHeight = 63
          object tbBrightness: TcxTrackBar
            Left = 80
            Top = 7
            Properties.AutoSize = False
            Properties.Max = 255
            Properties.ShowTicks = False
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbContrastPropertiesChange
            TabOrder = 0
            Transparent = True
            Height = 25
            Width = 215
          end
          object tbContrast: TcxTrackBar
            Left = 80
            Top = 32
            Properties.AutoSize = False
            Properties.Max = 255
            Properties.ShowTicks = False
            Properties.ThumbStep = cxtsJump
            Properties.OnChange = tbContrastPropertiesChange
            TabOrder = 1
            Transparent = True
            Height = 25
            Width = 215
          end
          object cxLabel4: TcxLabel
            Left = 22
            Top = 31
            Caption = 'Contrast:'
            Transparent = True
          end
          object cxLabel5: TcxLabel
            Left = 23
            Top = 8
            Caption = 'Brightness:'
            Transparent = True
          end
        end
      end
      object dxGalleryControl2: TdxGalleryControl
        Left = 3
        Top = 376
        Width = 661
        Height = 101
        Align = alBottom
        AutoSizeMode = asAutoHeight
        BorderStyle = cxcbsNone
        OptionsBehavior.ItemCheckMode = icmSingleCheck
        OptionsView.ColumnCount = 21
        OptionsView.Item.Image.ShowFrame = False
        OptionsView.Item.Image.Size.Height = 80
        OptionsView.Item.Image.Size.Width = 125
        OptionsView.Item.Text.AlignVert = vaCenter
        TabOrder = 2
        OnItemClick = dxGalleryControl2ItemClick
        object dxGalleryControl2Group1: TdxGalleryControlGroup
          Caption = 'New Group'
          ShowCaption = False
        end
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = cxGroupBox3
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 538
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      ItemOptions.CaptionOptions.TextColor = clGrayText
      ItemOptions.CaptionOptions.TextDisabledColor = clGrayText
      ItemOptions.CaptionOptions.TextHotColor = clGrayText
      PixelsPerInch = 96
    end
  end
end
