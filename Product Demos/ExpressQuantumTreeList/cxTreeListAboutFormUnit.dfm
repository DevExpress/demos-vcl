inherited frmAbout: TfrmAbout
  Caption = 'ExpressQuantumTreeList'
  ClientWidth = 793
  ExplicitWidth = 793
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 793
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 793
    ExplicitHeight = 320
    object reAbout: TcxRichEdit [0]
      Left = 10
      Top = 29
      Properties.HideSelection = False
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.Color = clWindow
      Style.HotTrack = False
      TabOrder = 0
      Height = 243
      Width = 773
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Control = reAbout
      ControlOptions.OriginalHeight = 303
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
