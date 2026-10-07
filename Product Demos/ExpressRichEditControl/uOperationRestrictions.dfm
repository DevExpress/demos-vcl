inherited frmRichEditOperationRestrictions: TfrmRichEditOperationRestrictions
  Width = 986
  Height = 629
  ExplicitWidth = 986
  ExplicitHeight = 629
  inherited plTop: TPanel
    Width = 986
    Height = 115
    AutoSize = True
    Constraints.MinHeight = 115
    Visible = True
    ExplicitWidth = 986
    ExplicitHeight = 115
    object dxLayoutControl1: TdxLayoutControl
      Left = 0
      Top = 0
      Width = 986
      Height = 114
      Align = alTop
      TabOrder = 0
      AutoSize = True
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object seMinZoomFactor: TcxSpinEdit
        Left = 456
        Top = 59
        Constraints.MaxHeight = 24
        Properties.Increment = 0.100000000000000000
        Properties.MaxValue = 1000.000000000000000000
        Properties.MinValue = 0.100000000000000000
        Properties.ValueType = vtFloat
        Properties.OnEditValueChanged = seMinZoomFactorPropertiesEditValueChanged
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 0
        Value = 0.100000000000000000
        Width = 62
      end
      object seMaxZoomFactor: TcxSpinEdit
        Left = 456
        Top = 88
        Constraints.MaxHeight = 24
        Properties.Increment = 0.100000000000000000
        Properties.MaxValue = 1000.000000000000000000
        Properties.MinValue = 0.100000000000000000
        Properties.ValueType = vtFloat
        Properties.OnEditValueChanged = seMaxZoomFactorPropertiesEditValueChanged
        Style.HotTrack = False
        Style.TransparentBorder = False
        TabOrder = 1
        Value = 5.000000000000000000
        Width = 62
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahLeft
        AlignVert = avTop
        Hidden = True
        ItemIndex = 3
        LayoutDirection = ldHorizontal
        ShowBorder = False
        Index = -1
      end
      object lgClipboard: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Clipboard'
        ItemIndex = 2
        Index = 0
      end
      object lgCommon: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'Common'
        ItemIndex = 1
        LayoutDirection = ldHorizontal
        Index = 1
      end
      object lgZoom: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        AlignVert = avTop
        CaptionOptions.Text = 'Zoom'
        ItemIndex = 2
        Index = 2
      end
      object dxLayoutGroup4: TdxLayoutGroup
        Parent = dxLayoutControl1Group_Root
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 3
      end
      object cbCut: TdxLayoutCheckBoxItem
        Parent = lgClipboard
        CaptionOptions.Text = 'Cut'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbCopy: TdxLayoutCheckBoxItem
        Parent = lgClipboard
        CaptionOptions.Text = 'Copy'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbPaste: TdxLayoutCheckBoxItem
        Parent = lgClipboard
        CaptionOptions.Text = 'Paste'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 2
      end
      object cbDrag: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahClient
        CaptionOptions.Text = 'Drag'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbDrop: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Drop'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbSave: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup3
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Save'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 2
      end
      object cbSaveAs: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahClient
        AlignVert = avTop
        CaptionOptions.Text = 'Save As'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object cbPrinting: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Printing'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 1
      end
      object cbCreateNew: TdxLayoutCheckBoxItem
        Parent = dxLayoutAutoCreatedGroup2
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Create New'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 2
      end
      object cbOpen: TdxLayoutCheckBoxItem
        Parent = lgCommon
        CaptionOptions.Text = 'Open'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 2
      end
      object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
        Parent = lgCommon
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 1
      end
      object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
        Parent = lgCommon
        AlignHorz = ahLeft
        AlignVert = avClient
        Index = 0
      end
      object cbZoom: TdxLayoutCheckBoxItem
        Parent = lgZoom
        CaptionOptions.Text = 'Zoom'
        State = cbsChecked
        OnClick = OptionsChanged
        Index = 0
      end
      object lbMinZoomFactor: TdxLayoutItem
        Parent = lgZoom
        CaptionOptions.Text = 'Min Zoom Factor:'
        Control = seMinZoomFactor
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 1
      end
      object lbMaxZoomFactor: TdxLayoutItem
        Parent = lgZoom
        CaptionOptions.Text = 'Max Zoom Factor:'
        Control = seMaxZoomFactor
        ControlOptions.OriginalHeight = 22
        ControlOptions.OriginalWidth = 62
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object cbReadOnly: TdxLayoutCheckBoxItem
        Parent = dxLayoutGroup1
        CaptionOptions.Text = 'Read Only'
        OnClick = ReadOnlyChanged
        Index = 0
      end
      object cbShowPopupMenu: TdxLayoutCheckBoxItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Show Popup Menu'
        State = cbsChecked
        OnClick = ShowPopupMenuChanged
        Index = 1
      end
      object cbHideDisabledBarItems: TdxLayoutCheckBoxItem
        Parent = dxLayoutGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Hide Disabled Bar Items'
        OnClick = OptionsChanged
        Index = 2
      end
      object dxLayoutGroup1: TdxLayoutGroup
        Parent = dxLayoutGroup4
        AlignVert = avBottom
        CaptionOptions.Text = 'New Group'
        ShowBorder = False
        Index = 0
      end
    end
  end
  inherited pnlSeparator: TPanel
    Top = 141
    Width = 986
    ExplicitTop = 141
    ExplicitWidth = 986
  end
  inherited lcDescription: TdxLayoutControl
    Top = 556
    Width = 986
    ExplicitTop = 556
    ExplicitWidth = 986
  end
  inherited RichEditControl: TdxRichEditControl
    Top = 141
    Width = 986
    Height = 415
    ExplicitTop = 141
    ExplicitWidth = 986
    ExplicitHeight = 415
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 208
    Top = 320
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmMain.ilBarSmall
    ImageOptions.LargeImages = dmMain.ilBarLarge
    ImageOptions.StretchGlyphs = False
    MenuAnimations = maFade
    NotDocking = [dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 48
    Top = 312
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      26
      0)
    object barPrint: TdxBar
      Caption = 'Print'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 111
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'biPrint'
        end
        item
          Visible = True
          ItemName = 'biPrintPreview'
        end
        item
          Visible = True
          ItemName = 'biPageSetup'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbHomeClipboard: TdxBar
      Caption = 'Clipboard'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 198
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        000000000000000000000000000000000000B97B49FFB77946FFB67744FFB475
        42FFB37340FFB1713EFFB1703DFFAF6D3AFFAE6D39FF000000050000000C0000
        001100000014000000170000001A0000001DBD814EFFFFF4E9FFFEF3E8FFFEF3
        E6FFFEF2E6FFFEF1E5FFFEF1E3FFFDF0E1FFB1713DFF03263F7B054B7BE50554
        8BFF045189FF054F87FF044E85FF044D84FFC18655FFFFF5EBFFCB8D5EFFC88B
        5BFFC58858FFC38555FFC08352FFFDF0E2FFB57642FF065080E3198DBDFF17B8
        E6FF15B2E2FF13AEDEFF12AADBFF1297C4FFC58C5CFFFFF7EDFFFFF6ECFFFFF6
        ECFFFFF5EBFFFFF5EAFFFEF2E5FFFCEEE0FFB87A48FF065F96FF37CAEFFF1DBD
        E9FF1AB8E6FF16B4E2FF14B0DFFF139FCDFFCB9262FFFFF7EFFFE0A477FFDDA2
        74FFDA9F71FFD89C6EFFD5996BFFFAEADBFFBD7F4DFF07649BFF48D1F3FF23C2
        EDFF1FBEEAFF1DBAE7FF1AB7E5FF18A9D5FFCF9869FFFFF9F1FFFFF8F1FFFFF8
        F0FFFEF5ECFFFCF0E5FFFAECDEFFF7E6D6FFC08553FF08699FFF59D8F6FF29C9
        F1FF27C4EEFF23C1ECFF22BFEAFF1EB4DFFFD39E70FFFFFAF4FFFFF9F2FFFEF5
        EEFFFCF1E7FFFAEDDFFFF6E5D4FFF4DFCBFFC58B5AFF096FA5FF72E0F9FF3AD0
        F5FF34CDF2FF2EC9F0FF29C5EEFF26BDE6FFD7A477FFFFFAF5FFFEF7EFFFFCF2
        EAFFFAEDE2FFF7E9DAFFCE9667FFCB9363FFC99160FF0A75ABFF8DE8FCFF4ED9
        F9FF48D6F7FF41D2F5FF39CFF3FF30C9EEFFDBAA7EFFFEF8F1FFFCF3EBFFFAEE
        E4FFF7E9DBFFF5E4D4FFD19C6EFFFFF9F3FFD5D0CAD50B7BB1FFA6EEFDFF63E0
        FCFF5EDDFBFF55DAF9FF4CD7F8FF43CFF2FFDFB085FFDEAE81FFDCAC7FFFDAA9
        7DFFD9A77AFFD7A476FFD6A274FFD5D1CCD5171716170C83B6FFBBF3FEFF7BE7
        FEFF74E5FDFF69DCF5FF59C2DDFF4FB3D0FF48B6D3FF40BDDDFF38C4E6FF34CB
        EEFF085C92FF000000150000000000000000000000000E8ABDFFCFF7FFFF91EC
        FFFF77C8DBFF61A7BCFF5BA3B8FF58AAC2FF53B4CEFF4CBCD9FF43C5E4FF3BCD
        EFFF096196FF000000110000000000000000000000001091C3FFDFFAFFFFC085
        4AFFBD8045FFBB7C3FFFB8783AFFB57535FFB37132FFB16F2FFFAF6C2DFF43D1
        F1FF09669CFF0000000E0000000000000000000000001199CBFFEAFBFFFFE9C0
        8FFFE6B986FFE2B37DFFDFAD74FFDCA76CFFD9A166FFD69D5FFFB9793CFF4DDF
        FEFF086CA1FF0000000B000000000000000000000000118DB8E083CDE7FFEEFC
        FFFFEAFAFDFFF0D5AFFFEFCB9DFFECC494FFE5C193FFA8EFFDFF94EDFEFF45AF
        D5FF096593E300000007000000000000000000000000094A5F701190BBE013A1
        D1FF129BCDFF7BBBC8FFFCE5C1FFF0DBB8FF7DA3A3FF0E85B9FF0D81B5FF0B6E
        9BE106364C7500000003000000000000000000000000}
      ItemLinks = <
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCut'
        end
        item
          ViewLevels = [ivlLargeControlOnly, ivlSmallIconWithText, ivlSmallIcon, ivlControlOnly]
          Visible = True
          ItemName = 'bbCopy'
        end
        item
          Visible = True
          ItemName = 'bbPaste'
        end>
      KeyTip = 'FO'
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbFileCommon: TdxBar
      Caption = 'Common'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbNew'
        end
        item
          Visible = True
          ItemName = 'bbOpen'
        end
        item
          Visible = True
          ItemName = 'bbSave'
        end
        item
          Visible = True
          ItemName = 'bbSaveAs'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object bmbViewZoom: TdxBar
      Caption = 'Zoom'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 285
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bbZoomOut'
        end
        item
          Visible = True
          ItemName = 'bbZoomIn'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object biPrintPreview: TdxBarButton
      Action = actPrintPreview
      Category = 0
    end
    object biPrint: TdxBarButton
      Action = actPrint
      Category = 0
    end
    object biPageSetup: TdxBarButton
      Action = actPageSetup
      Category = 0
      ImageIndex = 1
    end
    object bbNew: TdxBarButton
      Action = acNewDocument
      Category = 0
      Description = 'Creates a blank document'
      KeyTip = 'FN'
    end
    object bbOpen: TdxBarButton
      Action = acOpenDocument
      Category = 0
      Description = 'Opens existing RTF file'
      KeyTip = 'FO'
    end
    object bbSave: TdxBarButton
      Action = acSave
      Category = 0
      Description = 'Updates the file with your most recent changes'
      KeyTip = 'SA'
    end
    object bbPaste: TdxBarButton
      Action = acPaste
      Category = 0
      KeyTip = 'V'
    end
    object bbCut: TdxBarButton
      Action = acCut
      Category = 0
      KeyTip = 'X'
    end
    object bbCopy: TdxBarButton
      Action = acCopy
      Category = 0
      KeyTip = 'C'
    end
    object bbSaveAs: TdxBarButton
      Action = acSaveAs
      Category = 0
    end
    object bbZoomOut: TdxBarButton
      Action = acZoomOut
      Category = 0
    end
    object bbZoomIn: TdxBarButton
      Action = acZoomIn
      Category = 0
    end
    object biHintContainer: TdxBarControlContainerItem
      Align = iaClient
      Caption = 'Hint'
      Category = 6
      Hint = 'Hint'
      Visible = ivInCustomizing
    end
  end
  object ActionList: TActionList
    Images = dmMain.ilBarSmall
    Left = 88
    Top = 304
    object actPrint: TAction
      Category = 'Print'
      Caption = '&Print'
      Hint = 'Print'
      ImageIndex = 4
      OnExecute = actPrintExecute
    end
    object actPrintPreview: TAction
      Category = 'Print'
      Caption = 'Print Pre&view'
      Hint = 'Print Preview'
      ImageIndex = 114
      OnExecute = actPrintPreviewExecute
    end
    object actPageSetup: TAction
      Category = 'Print'
      Caption = 'Page Set&up'
      Hint = 'Page Setup'
      ImageIndex = 115
      OnExecute = actPageSetupExecute
    end
    object acCut: TdxRichEditControlCutSelection
      Category = 'Home'
      ImageIndex = 7
      ShortCut = 16472
    end
    object acCopy: TdxRichEditControlCopySelection
      Category = 'Home'
      ImageIndex = 8
      ShortCut = 16451
    end
    object acPaste: TdxRichEditControlPasteSelection
      Category = 'Home'
      ImageIndex = 6
      ShortCut = 16470
    end
    object acNewDocument: TdxRichEditControlNewDocument
      Category = 'File'
      ImageIndex = 0
    end
    object acOpenDocument: TdxRichEditControlLoadDocument
      Category = 'File'
      ImageIndex = 1
    end
    object acSave: TdxRichEditControlSaveDocument
      Category = 'File'
      ImageIndex = 2
      ShortCut = 16467
    end
    object acSaveAs: TdxRichEditControlSaveDocumentAs
      Category = 'File'
      ImageIndex = 3
      ShortCut = 123
    end
    object acZoomIn: TdxRichEditControlZoomIn
      Category = 'View'
      ImageIndex = 56
    end
    object acZoomOut: TdxRichEditControlZoomOut
      Category = 'View'
      ImageIndex = 57
    end
  end
  object Printer: TdxComponentPrinter
    CurrentLink = RichEditLink
    PrintTitle = 'QuantumGrid3 Features'
    Version = 0
    Left = 124
    Top = 311
    PixelsPerInch = 96
    object RichEditLink: TdxRichEditControlReportLink
      Component = RichEditControl
      PrinterPage.DMPaper = 1
      PrinterPage.Footer = 5080
      PrinterPage.Header = 5080
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      PixelsPerInch = 96
      BuiltInReportLink = True
    end
  end
  object PSEngine: TdxPSEngineController
    Active = True
    Left = 162
    Top = 311
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 296
    Top = 328
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
