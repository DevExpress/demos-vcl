inherited frmQuickVisibilityCustomization: TfrmQuickVisibilityCustomization
  Caption = 'Quick Visibility Customization'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 384
    Top = 232
  end
  object dxSkinController1: TdxSkinController
    Kind = lfOffice11
    ScrollbarMode = sbmClassic
    SkinName = 'UserSkin'
    RenderMode = rmGDIPlus
    OnSkinForm = dxSkinController1SkinForm
    Left = 352
    Top = 144
  end
end
