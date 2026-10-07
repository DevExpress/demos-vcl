inherited frmCustomVertGridMultiRecords: TfrmCustomVertGridMultiRecords
  inherited lcFrame: TdxLayoutControl
    object cxDBVerticalGrid: TcxDBVerticalGrid [0]
      Left = 12
      Top = 12
      Width = 213
      Height = 226
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Images = dmMain.imMain
      LayoutStyle = lsMultiRecordView
      OptionsView.CellTextMaxLineCount = 10
      OptionsView.GridLineColor = clGrayText
      OptionsView.RowHeaderMinWidth = 0
      OptionsView.RowHeaderWidth = 177
      OptionsView.ValueWidth = 170
      OptionsView.RecordsInterval = 5
      OptionsBehavior.AlwaysShowEditor = False
      OptionsBehavior.IncSearch = True
      OptionsBehavior.IncSearchItem = fldTransmissSpeedCount
      Navigator.Buttons.CustomButtons = <>
      ParentFont = False
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      DataController.DataSource = dmMain.dsModels
      Version = 1
      object cxDBVerticalGridID: TcxDBMultiEditorRow
        Properties.Editors = <
          item
            ImageIndex = 20
            DataBinding.FieldName = 'ID'
            Options.Editing = False
          end>
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object fldTrademark: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Trademark'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object fldModel: TcxDBEditorRow
        Properties.Caption = 'Model'
        Properties.DataBinding.FieldName = 'Name'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object fldCategory: TcxDBEditorRow
        Properties.Caption = 'Category'
        Properties.RepositoryItem = dmMain.EditRepositoryCategoryLookup
        Properties.DataBinding.FieldName = 'CategoryID'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object rowPerformance_Attributes: TcxCategoryRow
        Properties.Caption = 'Performance Attributes'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object fldHP: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Horsepower'
        ID = 5
        ParentID = 4
        Index = 0
        Version = 1
      end
      object fldLiter: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Torque'
        ID = 6
        ParentID = 4
        Index = 1
        Version = 1
      end
      object fldCyl: TcxDBEditorRow
        Properties.Caption = 'Cylinders'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'Cylinders'
        ID = 7
        ParentID = 4
        Index = 2
        Version = 1
      end
      object fldTransmissSpeedCount: TcxDBEditorRow
        Properties.Caption = '# of Gears'
        Properties.EditPropertiesClassName = 'TcxSpinEditProperties'
        Properties.DataBinding.FieldName = 'Transmission Speeds'
        ID = 8
        ParentID = 4
        Index = 3
        Version = 1
      end
      object fldTransmissAutomatic: TcxDBEditorRow
        Properties.Caption = 'Automatic Transmission'
        Properties.ImageIndex = 19
        Properties.RepositoryItem = dmMain.EditRepositoryTransmissionTypeCheckBox
        Properties.DataBinding.FieldName = 'Transmission Type'
        ID = 9
        ParentID = 4
        Index = 4
        Version = 1
      end
      object cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow
        Properties.Editors = <
          item
            HeaderAlignmentHorz = taCenter
            DataBinding.FieldName = 'MPG City'
          end
          item
            HeaderAlignmentHorz = taCenter
            DataBinding.FieldName = 'MPG Highway'
          end>
        Properties.SeparatorString = 'and'
        ID = 10
        ParentID = 4
        Index = 5
        Version = 1
      end
      object rowNotes: TcxCategoryRow
        Properties.Caption = 'Notes'
        Properties.ImageIndex = 18
        ID = 11
        ParentID = -1
        Index = 5
        Version = 1
      end
      object fldDescription: TcxDBEditorRow
        Properties.ImageIndex = 16
        Properties.EditPropertiesClassName = 'TcxBlobEditProperties'
        Properties.EditProperties.BlobEditKind = bekMemo
        Properties.DataBinding.FieldName = 'Description'
        ID = 12
        ParentID = 11
        Index = 0
        Version = 1
      end
      object fldHyperlink: TcxDBEditorRow
        Properties.ImageIndex = 17
        Properties.EditPropertiesClassName = 'TcxHyperLinkEditProperties'
        Properties.DataBinding.FieldName = 'Hyperlink'
        ID = 13
        ParentID = 11
        Index = 1
        Version = 1
      end
      object rowOthers: TcxCategoryRow
        Properties.Caption = 'Others'
        Properties.HeaderAlignmentVert = vaBottom
        ID = 14
        ParentID = -1
        Index = 6
        Version = 1
      end
      object fldPrice: TcxDBEditorRow
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.EditProperties.DisplayFormat = '$,0.00;-$,0.00'
        Properties.DataBinding.FieldName = 'Price'
        ID = 15
        ParentID = 14
        Index = 0
        Version = 1
      end
      object fldIcon: TcxDBEditorRow
        Height = 64
        Properties.Caption = 'Icon'
        Properties.RepositoryItem = dmMain.EditRepositoryImage
        Properties.DataBinding.FieldName = 'Image'
        ID = 16
        ParentID = 14
        Index = 1
        Version = 1
      end
      object fldPicture: TcxDBEditorRow
        Properties.RepositoryItem = dmMain.EditRepositoryImageBlob
        Properties.DataBinding.FieldName = 'Photo'
        ID = 17
        ParentID = 14
        Index = 2
        Version = 1
      end
    end
    inherited lgContent: TdxLayoutGroup
      CaptionOptions.Visible = False
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      Control = cxDBVerticalGrid
      ControlOptions.OriginalHeight = 636
      ControlOptions.OriginalWidth = 150
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
