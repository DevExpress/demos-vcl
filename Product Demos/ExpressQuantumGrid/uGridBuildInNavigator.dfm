inherited frmGridBuildInNavigator: TfrmGridBuildInNavigator
  inherited PanelGrid: TdxPanel
    Top = 48
    Width = 922
    Height = 619
    ExplicitTop = 49
    ExplicitWidth = 922
    ExplicitHeight = 618
    inherited Grid: TcxGrid
      Width = 922
      Height = 619
      ExplicitWidth = 922
      ExplicitHeight = 618
      inherited GridDBTableView: TcxGridDBTableView
        Navigator.InfoPanel.Visible = True
        Navigator.Visible = True
        OptionsBehavior.NavigatorHints = True
        OptionsView.NavigatorOffset = 100
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 0
    Top = 48
    Width = 922
    Height = 0
    Align = alTop
    Frame.Borders = [bBottom]
    ExplicitLeft = 0
    ExplicitWidth = 922
    ExplicitHeight = 0
    inherited gbSetupTools: TcxGroupBox
      Top = -49
      Align = alBottom
      PanelStyle.Active = True
      ExplicitWidth = 922
      ExplicitHeight = 48
      Height = 48
      Width = 922
      inherited lcFrame: TdxLayoutControl
        Top = 1
        Width = 920
        Height = 42
        Align = alTop
        AutoSize = True
        ExplicitTop = 1
        ExplicitWidth = 920
        ExplicitHeight = 42
        inherited lcFrameGroup_Root: TdxLayoutGroup
          AlignVert = avTop
          LayoutDirection = ldHorizontal
        end
        inherited lgSetupTools: TdxLayoutGroup
          AlignHorz = ahRight
        end
      end
    end
  end
  object PanelNavigator: TdxPanel [3]
    Left = 0
    Top = 0
    Width = 922
    Height = 48
    Align = alTop
    AutoSize = True
    TabOrder = 3
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 920
      Height = 46
      Align = alTop
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      TabOrder = 0
      AutoSize = True
      ExplicitTop = 8
      object cxNavigator2: TcxNavigator
        Left = 131
        Top = 10
        Width = 270
        Height = 25
        Control = Grid
        Buttons.ConfirmDelete = False
        Buttons.CustomButtons = <>
        InfoPanel.Font.Charset = DEFAULT_CHARSET
        InfoPanel.Font.Color = clDefault
        InfoPanel.Font.Height = -11
        InfoPanel.Font.Name = 'MS Sans Serif'
        InfoPanel.Font.Style = []
        InfoPanel.ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object dxLayoutGroup1: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object dxLayoutGroup2: TdxLayoutGroup
        Parent = dxLayoutGroup1
        AlignHorz = ahRight
        AlignVert = avClient
        CaptionOptions.Text = 'Options'
        CaptionOptions.Visible = False
        Visible = False
        SizeOptions.AssignedValues = [sovSizableHorz]
        SizeOptions.SizableHorz = True
        SizeOptions.Width = 204
        ShowBorder = False
        Index = 0
      end
      object dxLayoutItem2: TdxLayoutItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        AlignVert = avTop
        CaptionOptions.Text = 'External Data Navigator'
        Control = cxNavigator2
        ControlOptions.OriginalHeight = 25
        ControlOptions.OriginalWidth = 270
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    Left = 544
    Top = 80
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
