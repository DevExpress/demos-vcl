inherited frmCalloutPopup: TfrmCalloutPopup
  inherited lcFrame: TdxLayoutControl
    object cxButton1: TcxButton [0]
      Tag = 3
      Left = 151
      Top = 28
      Width = 80
      Height = 35
      Caption = 'Top left'
      TabOrder = 0
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [1]
      Tag = 4
      Left = 251
      Top = 28
      Width = 80
      Height = 35
      Caption = 'Top center'
      TabOrder = 1
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton3: TcxButton [2]
      Tag = 5
      Left = 351
      Top = 28
      Width = 80
      Height = 35
      Caption = 'Top right'
      TabOrder = 2
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton4: TcxButton [3]
      Tag = 2
      Left = 122
      Top = 69
      Width = 80
      Height = 35
      Caption = 'Left top'
      TabOrder = 3
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton5: TcxButton [4]
      Tag = 12
      Left = 251
      Top = 69
      Width = 80
      Height = 35
      Caption = 'Top'
      TabOrder = 4
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton6: TcxButton [5]
      Tag = 6
      Left = 380
      Top = 69
      Width = 80
      Height = 35
      Caption = 'Right top'
      TabOrder = 5
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton7: TcxButton [6]
      Tag = 1
      Left = 122
      Top = 110
      Width = 80
      Height = 35
      Caption = 'Left center'
      TabOrder = 6
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton8: TcxButton [7]
      Tag = 14
      Left = 208
      Top = 110
      Width = 80
      Height = 35
      Caption = 'Left'
      TabOrder = 7
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton10: TcxButton [8]
      Tag = 15
      Left = 294
      Top = 110
      Width = 80
      Height = 35
      Caption = 'Right'
      TabOrder = 8
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton11: TcxButton [9]
      Tag = 7
      Left = 380
      Top = 110
      Width = 80
      Height = 35
      Caption = 'Right center'
      TabOrder = 9
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton9: TcxButton [10]
      Left = 122
      Top = 152
      Width = 80
      Height = 35
      Caption = 'Left bottom'
      TabOrder = 10
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton12: TcxButton [11]
      Tag = 13
      Left = 251
      Top = 152
      Width = 80
      Height = 35
      Caption = 'Bottom'
      TabOrder = 11
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton13: TcxButton [12]
      Tag = 8
      Left = 380
      Top = 152
      Width = 80
      Height = 35
      Caption = 'Right bottom'
      TabOrder = 12
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton14: TcxButton [13]
      Tag = 11
      Left = 151
      Top = 193
      Width = 80
      Height = 35
      Caption = 'Bottom left'
      TabOrder = 13
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton15: TcxButton [14]
      Tag = 10
      Left = 251
      Top = 193
      Width = 80
      Height = 35
      Caption = 'Bottom center'
      TabOrder = 14
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    object cxButton16: TcxButton [15]
      Tag = 9
      Left = 351
      Top = 193
      Width = 80
      Height = 35
      Caption = 'Bottom right'
      TabOrder = 15
      OnCustomDraw = cxButton5CustomDraw
      OnClick = cxButton1Click
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      Parent = nil
      Index = -1
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      Parent = nil
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = True
      SizeOptions.SizableVert = True
      SizeOptions.Height = 105
      SizeOptions.Width = 261
      Index = -1
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      Parent = nil
      Index = -1
    end
    inherited dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = nil
      Index = -1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton5
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton6
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton7
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton8
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton10
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup18
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton11
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton9
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton12
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton13
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton14
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton15
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton16
      ControlOptions.OriginalHeight = 35
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgContent
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Offsets.Left = 100
      Offsets.Right = 100
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ShowBorder = False
      Index = 2
    end
  end
  object cxGroupBox2: TcxGroupBox [1]
    Left = 183
    Top = 302
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    Visible = False
    Height = 164
    Width = 458
    object dxLayoutControl1: TdxLayoutControl
      Left = 63
      Top = 27
      Width = 189
      Height = 94
      ParentBackground = True
      TabOrder = 0
      Transparent = True
      LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
      object cxButton17: TcxButton
        Left = 159
        Top = 10
        Width = 20
        Height = 20
        Caption = 'cxButton17'
        OptionsImage.Glyph.SourceDPI = 96
        OptionsImage.Glyph.SourceHeight = 16
        OptionsImage.Glyph.SourceWidth = 16
        OptionsImage.Glyph.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D223020302033322033322220656E61626C65
          2D6261636B67726F756E643D226E6577203020302033322033322220786D6C3A
          73706163653D227072657365727665223E262331333B262331303B3C70617468
          20643D224D31392E312C31366C362E362D362E3663302E342D302E342C302E34
          2D312C302D312E344C32342C362E33632D302E342D302E342D312D302E342D31
          2E342C304C31362C31322E394C392E342C362E3343392C352E392C382E342C35
          2E392C382C362E334C362E332C3820202623393B632D302E342C302E342D302E
          342C312C302C312E346C362E362C362E366C2D362E362C362E36632D302E342C
          302E342D302E342C312C302C312E344C382C32352E3763302E342C302E342C31
          2C302E342C312E342C306C362E362D362E366C362E362C362E3663302E342C30
          2E342C312C302E342C312E342C3020202623393B6C312E372D312E3763302E34
          2D302E342C302E342D312C302D312E344C31392E312C31367A222F3E0D0A3C2F
          7376673E0D0A}
        PaintStyle = bpsGlyph
        SpeedButtonOptions.CanBeFocused = False
        TabOrder = 0
        OnClick = cxButton17Click
      end
      object dxLayoutControl1Group_Root: TdxLayoutGroup
        AlignHorz = ahParentManaged
        AlignVert = avParentManaged
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object dxLayoutLabeledItem1: TdxLayoutLabeledItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahCenter
        AlignVert = avCenter
        CaptionOptions.Text = 'You can place any content here'
        Index = 0
      end
      object dxLayoutItem17: TdxLayoutItem
        Parent = dxLayoutControl1Group_Root
        AlignHorz = ahRight
        CaptionOptions.Text = 'New Item'
        CaptionOptions.Visible = False
        Control = cxButton17
        ControlOptions.OriginalHeight = 20
        ControlOptions.OriginalWidth = 20
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited ActionList1: TActionList
    object acRounded: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Use Rounded Corners'
    end
  end
  inherited amAdorners: TdxUIAdornerManager
    Left = 312
  end
  object CalloutPopup: TdxCalloutPopup
    PopupControl = dxLayoutControl1
    Left = 488
    Top = 24
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 64
    Top = 40
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
