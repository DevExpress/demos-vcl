inherited frmShapefileSupport: TfrmShapefileSupport
  Caption = 'Shapefile Support'
  ClientHeight = 566
  ClientWidth = 860
  OnCreate = FormCreate
  ExplicitWidth = 860
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon [0]
    Left = 0
    Top = 0
    Width = 860
    Height = 126
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Demo'
      Groups = <
        item
          Caption = 'Shapefile Support'
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  inherited lcMain: TdxLayoutControl
    Top = 126
    Width = 860
    Height = 440
    TabOrder = 1
    ExplicitTop = 126
    ExplicitWidth = 860
    ExplicitHeight = 440
    inherited pnlMap: TPanel
      Width = 840
      Height = 361
      ExplicitWidth = 840
      ExplicitHeight = 361
      inherited dxMapControl1: TdxMapControl
        Width = 840
        Height = 361
        ZoomLevel = 2.000000000000000000
        ExplicitWidth = 840
        ExplicitHeight = 354
        object dxMapControl1ItemFileLayer1: TdxMapItemFileLayer
          ProjectionClassName = 'TdxMapControlSphericalMercatorProjection'
          Active = True
          FileName = '.\Countries.shp'
          FileType = miftShape
          ItemHint = '{NAME}'
          ItemStyleHot.AssignedValues = [mcsvBorderColor]
          ItemStyleHot.BorderColor = -16777216
          ItemStyleSelected.AssignedValues = [mcsvBorderWidth, mcsvBorderColor]
          ItemStyleSelected.BorderColor = -16777216
          ItemStyleSelected.BorderWidth = 2
          ItemTitleOptions.Text = '{NAME}'
          OnGetItemHint = dxMapControl1ItemFileLayer1GetItemHint
        end
      end
    end
    inherited dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'dxMapControl1'
    end
  end
  inherited dxBarManager1: TdxBarManager
    Left = 496
    Top = 192
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Shapefile Support Demo Options'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 74
      FloatClientHeight = 126
      IsMainMenu = True
      ItemLinks = <
        item
          ButtonGroup = bgpStart
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          ButtonGroup = bgpMember
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object Political1: TdxBarButton
      Action = actPolitical
      Category = 0
      ButtonStyle = bsChecked
    end
    object Population1: TdxBarButton
      Action = actPopulation
      Category = 0
      ButtonStyle = bsChecked
    end
    object GDP1: TdxBarButton
      Action = actGdp
      Category = 0
      ButtonStyle = bsChecked
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Action = actGdp
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
      Down = True
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Action = actPolitical
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Action = actPopulation
      Category = 0
      ButtonStyle = bsChecked
      GroupIndex = 1
    end
  end
  object ActionList1: TActionList [3]
    Left = 592
    Top = 160
    object actPopulation: TAction
      Tag = 2
      AutoCheck = True
      Caption = 'Population'
      OnExecute = actPopulationExecute
    end
    object actGdp: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'GDP'
      OnExecute = actPopulationExecute
    end
    object actPolitical: TAction
      AutoCheck = True
      Caption = 'Political'
      OnExecute = actPopulationExecute
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxBigCaptionCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
    inherited dxMediumCaptionCxLookAndFeel: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
