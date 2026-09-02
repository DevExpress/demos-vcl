inherited frmMain: TfrmMain
  Caption = 'frmMain'
  ClientHeight = 594
  ClientWidth = 961
  ExplicitWidth = 977
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 961
    ExplicitWidth = 961
    inherited dxRibbon1Tab1: TdxRibbonTab
      Groups = <
        item
          ToolbarName = 'barNavigation'
        end
        item
          Caption = 'File'
          ToolbarName = 'barFile'
        end
        item
          Caption = 'Options'
          ToolbarName = 'barOptions'
        end
        item
          ToolbarName = 'barPrintAndExport'
        end
        item
          Caption = 'View'
          ToolbarName = 'barView'
        end
        item
          Caption = 'DevExpress'
          ToolbarName = 'barInfo'
        end>
      Index = 0
    end
    inherited dxRibbon1Tab2: TdxRibbonTab
      Index = 1
    end
  end
  inherited pnlAllArea: TdxPanel
    ExplicitTop = 163
    ExplicitWidth = 961
    ExplicitHeight = 431
    Height = 431
    Width = 961
    inherited plClient: TdxPanel
      Left = 245
      ExplicitLeft = 245
      ExplicitWidth = 716
      ExplicitHeight = 431
      Height = 431
      Width = 716
      inherited dxRibbonBackstageView1: TdxRibbonBackstageView
        inherited bvtExport: TdxRibbonBackstageViewTabSheet
          inherited gbExportItems: TcxGroupBox
            inherited gbExportPane: TcxGroupBox
              inherited dxBevel1: TdxBevel
                ExplicitLeft = 303
                ExplicitWidth = 2
              end
            end
          end
        end
      end
      object pnGanttControlSite: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.Edges = []
        TabOrder = 0
        ExplicitHeight = 464
        Height = 431
        Width = 716
      end
    end
    inherited NavBarSite: TPanel
      ExplicitWidth = 241
      ExplicitHeight = 464
      Height = 431
      Width = 241
      inherited NavBar: TdxNavBar
        Width = 241
        Height = 431
        OnCustomDraw.GroupCaption = NavBarOnCustomDrawGroupCaption
        OnCustomDraw.Link = NavBarOnCustomDrawLink
        ExplicitWidth = 241
        ExplicitHeight = 464
        object nbgNew: TdxNavBarGroup [0]
          Caption = 'NEW && HIGHLIGHTED'
          LargeImageIndex = 0
          SelectedLinkIndex = -1
          SmallImageIndex = 37
          TopVisibleLinkIndex = 0
          CustomStyles.Header = nbsGroupStyle
          CustomStyles.HeaderActive = nbsGroupStyle
          CustomStyles.HeaderActiveHotTracked = nbsGroupStyle
          CustomStyles.HeaderActivePressed = nbsGroupStyle
          CustomStyles.HeaderHotTracked = nbsGroupStyle
          CustomStyles.HeaderPressed = nbsGroupStyle
          Links = <
            item
              Item = nbiSoftwareDevelopment
            end
            item
              Item = nbiLargeData
            end
            item
              Item = nbiImportSchedulerData
            end
            item
              Item = nbiExtendedAttributes
            end
            item
              Item = nbiBaselines
            end>
        end
        inherited nbgSearch: TdxNavBarGroup
          Links = <>
        end
        object nbiSoftwareDevelopment: TdxNavBarItem [2]
          Caption = 'Software Development'
          CustomStyles.Item = nbsItemStyle
          CustomStyles.ItemDisabled = nbsItemStyle
          CustomStyles.ItemHotTracked = nbsItemStyle
          CustomStyles.ItemPressed = nbsItemStyle
        end
        object nbiLargeData: TdxNavBarItem [3]
          Tag = 1
          Caption = 'Large Data Source'
          CustomStyles.Item = nbsItemStyle
          CustomStyles.ItemDisabled = nbsItemStyle
          CustomStyles.ItemHotTracked = nbsItemStyle
          CustomStyles.ItemPressed = nbsItemStyle
        end
        object nbiImportSchedulerData: TdxNavBarItem [4]
          Tag = 2
          Caption = 'Scheduler Data Import'
          CustomStyles.Item = nbsItemStyle
          CustomStyles.ItemDisabled = nbsItemStyle
          CustomStyles.ItemHotTracked = nbsItemStyle
          CustomStyles.ItemPressed = nbsItemStyle
        end
        object nbiExtendedAttributes: TdxNavBarItem [5]
          Tag = 3
          Caption = 'Extended Attributes'
          CustomStyles.Item = nbsItemStyle
          CustomStyles.ItemDisabled = nbsItemStyle
          CustomStyles.ItemHotTracked = nbsItemStyle
          CustomStyles.ItemPressed = nbsItemStyle
        end
        object nbiBaselines: TdxNavBarItem [6]
          Tag = 4
          Caption = 'Baselines'
          CustomStyles.Item = nbsItemStyle
          CustomStyles.ItemDisabled = nbsItemStyle
          CustomStyles.ItemHotTracked = nbsItemStyle
          CustomStyles.ItemPressed = nbsItemStyle
        end
        inherited nbcSearch: TdxNavBarGroupControl
          Top = 182
          Width = 237
          Height = 50
          ExplicitTop = 182
          ExplicitWidth = 237
          ExplicitHeight = 50
          GroupIndex = 1
          OriginalHeight = 50
          inherited dxLayoutControl1: TdxLayoutControl
            Width = 237
            Height = 50
            ExplicitWidth = 237
            ExplicitHeight = 50
            inherited edtNavBarFilterText: TcxTextEdit
              ExplicitWidth = 191
              Width = 191
            end
            inherited bClearNavBarFilter: TcxButton
              Left = 207
              ExplicitLeft = 207
            end
          end
        end
      end
    end
  end
  inherited dxBarManager: TdxBarManager
    PixelsPerInch = 96
    inherited barPrintAndExport: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
      DockedLeft = 232
      FloatClientWidth = 88
      FloatClientHeight = 285
      Row = 1
      Visible = False
    end
    inherited barQuickAccess: TdxBar
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
          ItemName = 'biTouchMode'
        end
        item
          Visible = True
          ItemName = 'bsiScrollbarMode'
        end
        item
          Visible = True
          ItemName = 'bliFormCorners'
        end
        item
          Visible = True
          ItemName = 'biUndo'
        end
        item
          Visible = True
          ItemName = 'biRedo'
        end>
    end
    inherited barInfo: TdxBar
      DockedLeft = 843
    end
    inherited barOptions: TdxBar
      DockedLeft = 358
      FloatClientWidth = 124
      FloatClientHeight = 159
      ItemLinks = <
        item
          Visible = True
          ItemName = 'biDeleteConfirmation'
        end
        item
          Visible = True
          ItemName = 'biDirectX'
        end
        item
          Visible = True
          ItemName = 'biShowInspector'
        end>
    end
    inherited barAppearance: TdxBar
      DockedDockControl = nil
      DockedDockingStyle = dsNone
    end
    inherited barView: TdxBar
      DockedLeft = 590
      FloatClientWidth = 120
      FloatClientHeight = 134
    end
    inherited barNavigation: TdxBar
      FloatClientWidth = 81
      FloatClientHeight = 50
    end
    object barFile: TdxBar [7]
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 143
      DockedTop = 0
      FloatLeft = 989
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'biNew'
        end
        item
          Visible = True
          ItemName = 'biOpen'
        end
        item
          Visible = True
          ItemName = 'biSaveAs'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    inherited biExportTo: TdxBarSubItem
      Visible = ivAlways
    end
    inherited biPrintPreview: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
    inherited biPrint: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
    end
    inherited biExportToHTML: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 103
    end
    inherited biExportToXML: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 99
    end
    inherited biExportToExcel97: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 97
    end
    inherited biExportToExcel: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 98
    end
    inherited biExportToPDF: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 94
    end
    inherited biExportToText: TdxBarLargeButton
      Visible = ivAlways
      ImageIndex = 96
    end
    inherited biShowInspector: TdxBarLargeButton
      ImageIndex = 105
    end
    inherited biPageSetup: TdxBarLargeButton
      Enabled = False
      Visible = ivNever
      ImageIndex = 1
    end
    object bsiOptionsView: TdxBarSubItem [21]
      Caption = 'View &Options '
      Category = 0
      Visible = ivAlways
      ImageIndex = 107
      LargeImageIndex = 43
      ItemLinks = <>
    end
    inherited biFullWindowMode: TdxBarLargeButton
      ImageIndex = 45
    end
    object biDeleteConfirmation: TdxBarLargeButton [35]
      Action = actDeleteConfirmation
      Category = 0
      ButtonStyle = bsChecked
      LargeImageIndex = 51
      SyncImageIndex = False
      ImageIndex = 113
    end
    object biDirectX: TdxBarLargeButton [36]
      Action = actDirectX
      Category = 0
      ButtonStyle = bsChecked
      LargeImageIndex = 52
      SyncImageIndex = False
      ImageIndex = 114
    end
    object biOpen: TdxBarLargeButton [37]
      Action = actOpen
      Category = 0
      LargeImageIndex = 49
      SyncImageIndex = False
      ImageIndex = 111
    end
    object biSaveAs: TdxBarLargeButton [38]
      Action = actSaveAs
      Category = 0
      LargeImageIndex = 50
      SyncImageIndex = False
      ImageIndex = 112
    end
    object biNew: TdxBarLargeButton [39]
      Action = actNew
      Category = 0
      LargeImageIndex = 48
      SyncImageIndex = False
      ImageIndex = 110
    end
    object biUndo: TdxBarButton [40]
      Action = actUndo
      Category = 0
      ImageIndex = 115
    end
    object biRedo: TdxBarButton [41]
      Action = actRedo
      Category = 0
      ImageIndex = 116
    end
    object dxBarLargeButton1: TdxBarLargeButton [43]
      Action = aExportToSVG
      Category = 0
      LargeImageIndex = 46
      SyncImageIndex = False
      ImageIndex = -1
    end
  end
  inherited dxComponentPrinter: TdxComponentPrinter
    PixelsPerInch = 96
  end
  inherited RibbonApplicationMenu: TdxBarApplicationMenu
    ItemLinks = <
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
      end
      item
        Visible = True
        ItemName = 'biPrintPreview'
      end
      item
        Visible = True
        ItemName = 'biPageSetup'
      end
      item
        Visible = True
        ItemName = 'biPrint'
      end>
    PixelsPerInch = 96
  end
  inherited dxPSEngineController1: TdxPSEngineController
    Active = True
  end
  inherited ilBarSmall: TcxImageList
    FormatVersion = 1
    DesignInfo = 13631728
  end
  inherited ilBarLarge: TcxImageList
    FormatVersion = 1
  end
  inherited ActionList1: TActionList
    object actDeleteConfirmation: TAction
      Category = 'Properties'
      AutoCheck = True
      Caption = 'Delete Confirmation'
      OnExecute = actDeleteConfirmationExecute
    end
    object actDirectX: TAction
      Category = 'Properties'
      AutoCheck = True
      Caption = 'DirectX'
      OnExecute = actDirectXExecute
    end
    object actSaveAs: TAction
      Category = 'File'
      Caption = 'Save As...'
      OnExecute = actSaveAsExecute
    end
    object actOpen: TAction
      Category = 'File'
      Caption = 'Open'
      OnExecute = actOpenExecute
    end
    object actNew: TAction
      Category = 'File'
      Caption = 'New'
      OnExecute = actNewExecute
    end
    object actUndo: TAction
      Caption = 'Undo'
      OnExecute = actUndoExecute
      OnUpdate = actUndoUpdate
    end
    object actRedo: TAction
      Caption = 'Redo'
      OnExecute = actRedoExecute
      OnUpdate = actRedoUpdate
    end
    object aExportToSVG: TAction
      Category = 'File'
      Caption = '&Export to SVG'
      Hint = 'Expot to SVG'
      ImageIndex = 101
      OnExecute = aExportToSVGExecute
    end
  end
  inherited SaveDialog: TdxSaveFileDialog
    DefaultExt = 'xml'
    Filter = 'XML Files|*.xml'
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxLayoutSkinLookAndFeelBoldItemCaption: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited OpenDialog: TdxOpenFileDialog
    DefaultExt = 'xml'
    Filter = 'XML Files|*.xml'
  end
  object sfdExportToSvg: TdxSaveFileDialog
    DefaultExt = 'svg'
    Filter = 'SVG Files|*.svg'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 674
    Top = 257
  end
end
