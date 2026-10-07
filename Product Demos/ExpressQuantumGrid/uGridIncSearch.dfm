inherited frmIncSearchGrid: TfrmIncSearchGrid
  inherited PanelGrid: TdxPanel
    inherited Grid: TcxGrid
      object DBTableView: TcxGridDBTableView
        OnKeyDown = DBTableViewKeyDown
        OnMouseUp = DBTableViewMouseUp
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsMovieStars
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ImmediateEditor = False
        OptionsView.CellAutoHeight = True
        object DBTableViewBIRTHNAME: TcxGridDBColumn
          Caption = 'Birth Name'
          DataBinding.FieldName = 'BIRTHNAME'
          Width = 148
        end
        object DBTableViewDATEOFBIRTH: TcxGridDBColumn
          Caption = 'Birth Date'
          DataBinding.FieldName = 'DATEOFBIRTH'
          Width = 113
        end
        object DBTableViewBIOGRAPHY: TcxGridDBColumn
          Caption = 'Biography'
          DataBinding.FieldName = 'BIOGRAPHY'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 850
        end
        object DBTableViewGENDER: TcxGridDBColumn
          Caption = 'Gender'
          DataBinding.FieldName = 'GENDER'
          RepositoryItem = dmMain.edrepGenderImageCombo
          Options.ShowGroupValuesWithImages = True
          Width = 80
        end
      end
      object GridLevel: TcxGridLevel
        GridView = DBTableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Visible = False
    inherited gbSetupTools: TcxGroupBox
      inherited lcFrame: TdxLayoutControl
        inherited lgSetupTools: TdxLayoutGroup
          Visible = False
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerTimer
    Left = 104
    Top = 160
  end
end
