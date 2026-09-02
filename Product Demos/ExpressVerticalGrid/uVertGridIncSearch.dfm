inherited frmVerticalGridIncSearch: TfrmVerticalGridIncSearch
  inherited lcFrame: TdxLayoutControl
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 217
      Height = 230
      LayoutStyle = lsMultiRecordView
      OptionsView.RowHeaderWidth = 162
      OptionsView.ValueWidth = 221
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = VerticalGridBIRTHNAME
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      OnKeyDown = VerticalGridKeyDown
      OnMouseUp = VerticalGridMouseUp
      DataController.DataSource = dmMain.dsMovieStars
      Version = 1
      object VerticalGridBIRTHNAME: TcxDBEditorRow
        Properties.Caption = 'Birth Name'
        Properties.DataBinding.FieldName = 'BIRTHNAME'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridDATEOFBIRTH: TcxDBEditorRow
        Properties.Caption = 'Birth Date'
        Properties.DataBinding.FieldName = 'DATEOFBIRTH'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridNICKNAME: TcxDBEditorRow
        Properties.Caption = 'Nick Name'
        Properties.DataBinding.FieldName = 'NICKNAME'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridGENDER: TcxDBEditorRow
        Properties.Caption = 'Gender'
        Properties.RepositoryItem = dmMain.edrepGenderImageCombo
        Properties.DataBinding.FieldName = 'GENDER'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridCategoryRow1: TcxCategoryRow
        Expanded = False
        Properties.Caption = 'Additional Info'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VerticalGridBIOGRAPHY: TcxDBEditorRow
        Height = 300
        Properties.Caption = 'Biography'
        Properties.EditPropertiesClassName = 'TcxMemoProperties'
        Properties.DataBinding.FieldName = 'BIOGRAPHY'
        ID = 5
        ParentID = 4
        Index = 0
        Version = 1
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 665
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
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
    Left = 64
    Top = 136
  end
end
