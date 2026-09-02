inherited frmVertGridCustomDraw: TfrmVertGridCustomDraw
  inherited lcFrame: TdxLayoutControl
    object DBVerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 197
      Height = 247
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
      OnDrawBackground = DBVerticalGridDrawBackground
      OnDrawRowHeader = DBVerticalGridDrawRowHeader
      OnDrawValue = DBVerticalGridDrawValue
      DataController.DataSource = dmMain.dsModels
      Version = 1
      object DBVerticalGridID: TcxDBMultiEditorRow
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
      object DBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow
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
    object cbColor: TcxColorComboBox [1]
      Left = 315
      Top = 28
      AutoSize = False
      Properties.CustomColors = <
        item
          Color = clBlack
          Description = 'clBlack'
        end
        item
          Color = clMaroon
          Description = 'clMaroon'
        end
        item
          Color = clGreen
          Description = 'clGreen'
        end
        item
          Color = clOlive
          Description = 'clOlive'
        end
        item
          Color = clNavy
          Description = 'clNavy'
        end
        item
          Color = clPurple
          Description = 'clPurple'
        end
        item
          Color = clTeal
          Description = 'clTeal'
        end
        item
          Color = clGray
          Description = 'clGray'
        end
        item
          Color = clSilver
          Description = 'clSilver'
        end
        item
          Color = clRed
          Description = 'clRed'
        end
        item
          Color = clLime
          Description = 'clLime'
        end
        item
          Color = clYellow
          Description = 'clYellow'
        end
        item
          Color = clBlue
          Description = 'clBlue'
        end
        item
          Color = clFuchsia
          Description = 'clFuchsia'
        end
        item
          Color = clAqua
          Description = 'clAqua'
        end
        item
          Color = clWhite
          Description = 'clWhite'
        end
        item
          Color = clScrollBar
          Description = 'clScrollBar'
        end
        item
          Color = clBackground
          Description = 'clBackground'
        end
        item
          Color = clActiveCaption
          Description = 'clActiveCaption'
        end
        item
          Color = clInactiveCaption
          Description = 'clInactiveCaption'
        end
        item
          Color = clMenu
          Description = 'clMenu'
        end
        item
          Color = clWindow
          Description = 'clWindow'
        end
        item
          Color = clWindowFrame
          Description = 'clWindowFrame'
        end
        item
          Color = clMenuText
          Description = 'clMenuText'
        end
        item
          Color = clWindowText
          Description = 'clWindowText'
        end
        item
          Color = clCaptionText
          Description = 'clCaptionText'
        end
        item
          Color = clActiveBorder
          Description = 'clActiveBorder'
        end
        item
          Color = clInactiveBorder
          Description = 'clInactiveBorder'
        end
        item
          Color = clAppWorkSpace
          Description = 'clAppWorkSpace'
        end
        item
          Color = clHighlight
          Description = 'clHighlight'
        end
        item
          Color = clHighlightText
          Description = 'clHighlightText'
        end
        item
          Color = clBtnFace
          Description = 'clBtnFace'
        end
        item
          Color = clBtnShadow
          Description = 'clBtnShadow'
        end
        item
          Color = clGrayText
          Description = 'clGrayText'
        end
        item
          Color = clBtnText
          Description = 'clBtnText'
        end
        item
          Color = clInactiveCaptionText
          Description = 'clInactiveCaptionText'
        end
        item
          Color = clBtnHighlight
          Description = 'clBtnHighlight'
        end
        item
          Color = cl3DDkShadow
          Description = 'cl3DDkShadow'
        end
        item
          Color = cl3DLight
          Description = 'cl3DLight'
        end
        item
          Color = clInfoText
          Description = 'clInfoText'
        end
        item
          Color = clInfoBk
          Description = 'clInfoBk'
        end
        item
          Color = clHotLight
          Description = 'clHotLight'
        end
        item
          Color = clGradientActiveCaption
          Description = 'clGradientActiveCaption'
        end
        item
          Color = clGradientInactiveCaption
          Description = 'clGradientInactiveCaption'
        end
        item
          Color = clMenuHighlight
          Description = 'clMenuHighlight'
        end
        item
          Color = clMenuBar
          Description = 'clMenuBar'
        end>
      Properties.OnEditValueChanged = cbColorPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 25
      Width = 114
    end
    inherited lgSetupTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Width = 220
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = DBVerticalGrid
      ControlOptions.OriginalHeight = 591
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Text = 'Choose a Color:'
      Control = cbColor
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 167
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Height = -39
      PixelsPerInch = 144
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 392
    Top = 8
    PixelsPerInch = 144
    object eriTelephoneMaskEdit: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\((\d\d\d)?\))? \d(\d\d?)? - \d\d(\d\d)?( - \d\d)?'
    end
  end
end
