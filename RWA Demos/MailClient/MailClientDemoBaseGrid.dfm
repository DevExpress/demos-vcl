inherited MailClientDemoBaseGridFrame: TMailClientDemoBaseGridFrame
  Width = 1100
  Height = 630
  ExplicitWidth = 1100
  ExplicitHeight = 630
  object lcBase: TdxLayoutControl [0]
    Left = 0
    Top = 0
    Width = 1100
    Height = 630
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = lslfMain
    RoundedMode = bTrue
    object lblSubject: TcxLabel
      Left = 649
      Top = 8
      Caption = 'Subject'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.WordWrap = True
      TabOrder = 1
      Transparent = True
      Width = 443
    end
    object cxreMain: TcxRichEdit
      Left = 649
      Top = 99
      Properties.AllowObjects = True
      Properties.AutoURLDetect = True
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Properties.OnURLClick = cxreMainPropertiesURLClick
      Style.Edges = []
      Style.HotTrack = False
      TabOrder = 2
      Height = 523
      Width = 443
    end
    object PanelGrid: TdxPanel
      Left = 197
      Top = 9
      Width = 443
      Height = 612
      Frame.Visible = False
      TabOrder = 0
      object PanelFilter: TdxPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 42
        Align = alTop
        Frame.Borders = []
        TabOrder = 1
        ExplicitWidth = 440
        object PanelButtons: TdxPanel
          Left = 276
          Top = 0
          Width = 167
          Height = 42
          Align = alRight
          Frame.Visible = False
          TabOrder = 0
          ExplicitLeft = 273
          object cxbSearch: TcxButton
            AlignWithMargins = True
            Left = 8
            Top = 8
            Width = 67
            Height = 26
            Margins.Left = 8
            Margins.Top = 8
            Margins.Right = 0
            Margins.Bottom = 8
            Align = alClient
            Caption = 'Search'
            OptionsImage.ImageIndex = 22
            OptionsImage.Images = DM.cxGridsImageList_16
            TabOrder = 0
            OnClick = cxbSearchClick
          end
          object cxbSearchClear: TcxButton
            AlignWithMargins = True
            Left = 83
            Top = 8
            Width = 76
            Height = 26
            Margins.Left = 8
            Margins.Top = 8
            Margins.Right = 8
            Margins.Bottom = 8
            Align = alRight
            Caption = 'Clear'
            OptionsImage.ImageIndex = 23
            OptionsImage.Images = DM.cxGridsImageList_16
            TabOrder = 1
            OnClick = cxbSearchClearClick
          end
        end
        object PanelSearch: TdxPanel
          Left = 0
          Top = 0
          Width = 276
          Height = 42
          Align = alClient
          Frame.Visible = False
          TabOrder = 1
          ExplicitWidth = 273
          object mrueSearch: TcxMRUEdit
            AlignWithMargins = True
            Left = 8
            Top = 8
            Margins.Left = 8
            Margins.Top = 8
            Margins.Right = 0
            Margins.Bottom = 8
            Align = alClient
            Properties.ImmediatePost = True
            Properties.ShowEllipsis = False
            Properties.OnChange = mrueSearchPropertiesChange
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            Style.HotTrack = False
            Style.Shadow = False
            Style.TransparentBorder = False
            TabOrder = 0
            Width = 268
          end
        end
      end
      object grMain: TcxGrid
        Left = 0
        Top = 42
        Width = 443
        Height = 570
        Align = alClient
        BorderStyle = cxcbsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 440
        ExplicitHeight = 562
        object tvMain: TcxGridDBTableView
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.OnDataChanged = tvMainDataControllerDataChanged
          OptionsView.CellEndEllipsis = True
          OptionsView.FocusRect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glHorizontal
          OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
          Styles.UseOddEvenStyles = bFalse
        end
        object grMainLevel1: TcxGridLevel
          GridView = tvMain
        end
      end
    end
    object lcgRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lcgRich: TdxLayoutGroup
      Parent = lcgMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object lciSubject: TdxLayoutItem
      Parent = lcgContentCaption
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = lblSubject
      ControlOptions.OriginalHeight = 37
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lcgContentCaption: TdxLayoutGroup
      Parent = lcgRich
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lciRich: TdxLayoutItem
      Parent = lcgRich
      AlignHorz = ahClient
      AlignVert = avClient
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Visible = False
      Control = cxreMain
      ControlOptions.MinHeight = 100
      ControlOptions.MinWidth = 200
      ControlOptions.OriginalHeight = 280
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lciFrom: TdxLayoutLabeledItem
      Parent = lcgContentCaption
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'From:'
      Index = 1
    end
    object lciDate: TdxLayoutLabeledItem
      Parent = lcgContentCaption
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Date:'
      Index = 2
    end
    object lciGrid: TdxLayoutItem
      Parent = lcgMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = PanelGrid
      ControlOptions.MinHeight = 100
      ControlOptions.MinWidth = 200
      ControlOptions.OriginalHeight = 596
      ControlOptions.OriginalWidth = 300
      ControlOptions.RoundedMode = bTrue
      Index = 0
    end
    object lcgMain: TdxLayoutGroup
      Parent = lcgRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lciNavBar: TdxLayoutItem
      Parent = lcgRoot
      AlignVert = avClient
      SizeOptions.Width = 180
      CaptionOptions.Visible = False
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited bmFrame: TdxBarManager
    Left = 552
    Top = 288
    PixelsPerInch = 96
  end
  inherited alFrame: TActionList
    Left = 616
    Top = 400
    object actLayoutFlip: TAction
      Category = 'Common'
      Caption = 'Flip'
      ImageIndex = 3
      OnExecute = actLayoutFlipExecute
    end
    object actLayoutRotate: TAction
      Category = 'Common'
      Caption = 'Rotate'
      ImageIndex = 2
      OnExecute = actLayoutRotateExecute
    end
  end
  inherited ComponentPrinter: TdxComponentPrinter
    Left = 576
    Top = 576
    PixelsPerInch = 96
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited lslfMain: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object AutoSearchTimer: TTimer
    Enabled = False
    Interval = 500
    OnTimer = AutoSearchTimerTimer
    Left = 376
    Top = 64
  end
end
