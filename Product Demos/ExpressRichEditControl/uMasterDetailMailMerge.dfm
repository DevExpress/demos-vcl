inherited frmRichEditMasterDetailMailMerge: TfrmRichEditMasterDetailMailMerge
  object LayoutControl: TdxLayoutControl [3]
    Left = 0
    Top = 57
    Width = 451
    Height = 175
    Align = alClient
    TabOrder = 3
    LayoutLookAndFeel = LayoutCxLookAndFeel
    object recTemplate: TdxRichEditControl
      Left = 24
      Top = 44
      Width = 403
      Height = 107
      Color = clBtnFace
      Options.Fields.HighlightMode = Always
      Options.MailMerge.DataSource = dsTemplate
      TabOrder = 0
      OnModifiedChanged = ModifiedChanged
      OnMailMergeStarted = TemplateMailMergeStarted
    end
    object recMaster: TdxRichEditControl
      Left = 10000
      Top = 10000
      Width = 300
      Height = 200
      Color = clBtnFace
      Options.Fields.HighlightMode = Always
      Options.MailMerge.DataSource = dsMaster
      TabOrder = 1
      Visible = False
      OnModifiedChanged = ModifiedChanged
    end
    object recDetail: TdxRichEditControl
      Left = 10000
      Top = 10000
      Width = 300
      Height = 200
      Color = clBtnFace
      Options.Fields.HighlightMode = Always
      Options.MailMerge.DataSource = dsDetail
      TabOrder = 2
      Visible = False
      OnModifiedChanged = ModifiedChanged
    end
    object recResultingDocument: TdxRichEditControl
      Left = 10000
      Top = 10000
      Width = 402
      Height = 103
      Color = clBtnFace
      Options.Fields.HighlightMode = Never
      TabOrder = 3
      Visible = False
      OnCalculateDocumentVariable = ResultingDocumentCalculateDocumentVariable
    end
    object LayoutControlGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = LayoutCxLookAndFeel
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      OnTabChanged = LayoutControlGroup_RootTabChanged
      Index = -1
    end
    object liTemplate: TdxLayoutItem
      Parent = lgTemplate
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'RichEditControl'
      CaptionOptions.Visible = False
      Control = recTemplate
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 608
      ControlOptions.OriginalWidth = 901
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgTemplate: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Template'
      Index = 0
    end
    object lgResultingDocument: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Resulting document'
      Index = 3
    end
    object lgDetail: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Detail'
      Index = 2
    end
    object lgMaster: TdxLayoutGroup
      Parent = LayoutControlGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Master'
      Index = 1
    end
    object liMaster: TdxLayoutItem
      Parent = lgMaster
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxRichEditControl1'
      CaptionOptions.Visible = False
      Control = recMaster
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDetail: TdxLayoutItem
      Parent = lgDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxRichEditControl1'
      CaptionOptions.Visible = False
      Control = recDetail
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liResultingDocument: TdxLayoutItem
      Parent = lgResultingDocument
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'dxRichEditControl1'
      CaptionOptions.Visible = False
      Control = recResultingDocument
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object LayoutLookAndFeels: TdxLayoutLookAndFeelList
    Left = 72
    Top = 144
    object LayoutCxLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object cdsCategories: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 200
  end
  object cdsDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 200
  end
  object cdsMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 232
    Top = 200
  end
  object cdsTemplate: TClientDataSet
    PersistDataPacket.Data = {
      270000009619E0BD01000000180000000100000000000300000027000466616B
      6504000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 160
    Top = 200
    object cdsTemplateFake: TIntegerField
      FieldName = 'fake'
    end
  end
  object dsDetail: TDataSource
    DataSet = cdsDetail
    Left = 296
    Top = 144
  end
  object dsMaster: TDataSource
    DataSet = cdsMaster
    Left = 232
    Top = 144
  end
  object dsTemplate: TDataSource
    DataSet = cdsTemplate
    Left = 160
    Top = 144
  end
  object Printer: TdxComponentPrinter
    CurrentLink = cplMasterLink
    Version = 0
    Left = 368
    Top = 144
    PixelsPerInch = 96
    object cplMasterLink: TdxRichEditControlReportLink
      Component = recMaster
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object cplDetailLink: TdxRichEditControlReportLink
      Component = recDetail
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object cplResultLink: TdxRichEditControlReportLink
      Component = recResultingDocument
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
    object cplTemplateLink: TdxRichEditControlReportLink
      Component = recTemplate
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
end
