inherited dxSpreadSheetReportBaseForm: TdxSpreadSheetReportBaseForm
  inherited lcCustom: TdxLayoutControl
    inherited pnlSite: TPanel
      Width = 140
      ExplicitWidth = 140
      object ReportDesigner: TdxSpreadSheetReportDesigner
        Left = 0
        Top = 0
        Width = 140
        Height = 211
        DataBinding.DataGroups = <>
        DataBinding.SortedFields = <>
        Align = alClient
        OnNewDocument = ReportDesignerNewDocument
        ExplicitWidth = 445
        Data = {
          B002000044585353763242460C00000042465320000000000000000001000101
          010100000000000001004246532000000000424653200200000001000000200B
          00000007000000430061006C0069006200720069000000000000002000000020
          00000000200000000020000000002000000000200007000000470045004E0045
          00520041004C0000000000000200000000000000000101000000200B00000007
          000000430061006C006900620072006900000000000000200000002000000000
          200000000020000000002000000000200007000000470045004E004500520041
          004C000000000000020000000000000000014246532001000000424653201D00
          0000540064007800530070007200650061006400530068006500650074005200
          650070006F00720074005400610062006C006500560069006500770006000000
          53006800650065007400310001FFFFFFFFFFFFFFFF6400000002000000020000
          0002000000550000001400000002000000020000000002000000000000010000
          0000000101000042465320550000000000000042465320000000004246532014
          0000000000000042465320000000000000000000000000010000000000000000
          0000000000000000000000424653200000000002020000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000064000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000200020200020000000000000000000000000000000000020000000000
          0000000000000000000000000000000000000000000000000000000000000202
          0000000000000000424653200000000000000000}
      end
    end
    object pnlFieldChooserSite: TPanel [1]
      Left = 153
      Top = 3
      Width = 295
      Height = 211
      BevelOuter = bvNone
      Color = 16053234
      ParentBackground = False
      TabOrder = 1
    end
    inherited lgSpreadSheet: TdxLayoutGroup
      LayoutDirection = ldHorizontal
    end
    object liFieldChooserSite: TdxLayoutItem
      Parent = lgSpreadSheet
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Panel1'
      CaptionOptions.Visible = False
      Control = pnlFieldChooserSite
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 41
      ControlOptions.OriginalWidth = 295
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lsFieldChooser: TdxLayoutSplitterItem
      Parent = lgSpreadSheet
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Splitter'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 1
    end
  end
  inherited ssFormulaBar: TdxSpreadSheetFormulaBar
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 445
  end
  inherited Splitter: TcxSplitter
    ExplicitLeft = 3
    ExplicitTop = 25
    ExplicitWidth = 445
  end
end
