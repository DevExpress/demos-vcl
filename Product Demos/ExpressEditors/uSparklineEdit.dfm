inherited frmSparklineEdit: TfrmSparklineEdit
  inherited lcFrame: TdxLayoutControl
    object SparklineEdit: TdxSparklineEdit [0]
      Left = 44
      Top = 184
      Properties.Series = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Height = 100
      Width = 255
    end
    object cbAntialiasing: TcxCheckBox [1]
      Left = 356
      Top = 62
      Action = acAntialiasing
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 233
    end
    object edColor1: TdxColorEdit [2]
      Left = 430
      Top = 166
      ColorValue = clRed
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 145
    end
    object edLineWidth1: TcxSpinEdit [3]
      Left = 430
      Top = 193
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 4
      Value = 2
      Width = 145
    end
    object edMarkerSize1: TcxSpinEdit [4]
      Left = 430
      Top = 220
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 5
      Value = 4
      Width = 145
    end
    object cmbSeriesType1: TcxComboBox [5]
      Left = 430
      Top = 139
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Line'
        'Point'
        'Area'
        'Bar')
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Text = 'Line'
      Width = 145
    end
    object edEndPointColor1: TdxColorEdit [6]
      Left = 495
      Top = 290
      ColorValue = clAqua
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 80
    end
    object cbEndPoint1: TcxCheckBox [7]
      Left = 370
      Top = 290
      Action = acEndPoint1
      Caption = 'Highlight End Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Width = 113
    end
    object cbStartPoint1: TcxCheckBox [8]
      Left = 370
      Top = 263
      Action = acStartPoint1
      Caption = 'Highlight Start Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Transparent = True
      Width = 119
    end
    object cbMinPoint1: TcxCheckBox [9]
      Left = 370
      Top = 317
      Action = acMinPoint1
      Caption = 'Highlight Min Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Transparent = True
      Width = 111
    end
    object cbMaxPoint1: TcxCheckBox [10]
      Left = 370
      Top = 344
      Action = acMaxPoint1
      Caption = 'Highlight Max Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Transparent = True
      Width = 115
    end
    object cbShowMarkers1: TcxCheckBox [11]
      Left = 370
      Top = 371
      Action = acShowMarkers1
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 14
      Transparent = True
      Width = 91
    end
    object edStartPointColor1: TdxColorEdit [12]
      Left = 495
      Top = 263
      ColorValue = clBlue
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 7
      Width = 80
    end
    object edMinPointColor1: TdxColorEdit [13]
      Left = 495
      Top = 317
      ColorValue = 139
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Width = 80
    end
    object edMaxPointColor1: TdxColorEdit [14]
      Left = 495
      Top = 344
      ColorValue = clPurple
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 13
      Width = 80
    end
    object edMarkerPointColor1: TdxColorEdit [15]
      Left = 495
      Top = 371
      ColorValue = clBlack
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 80
    end
    object edColor2: TdxColorEdit [16]
      Left = 10000
      Top = 10000
      ColorValue = clGreen
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 145
    end
    object edLineWidth2: TcxSpinEdit [17]
      Left = 10000
      Top = 10000
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 18
      Value = 2
      Visible = False
      Width = 145
    end
    object edMarkerSize2: TcxSpinEdit [18]
      Left = 10000
      Top = 10000
      Properties.Alignment.Horz = taLeftJustify
      Properties.ImmediatePost = True
      Properties.MaxValue = 10.000000000000000000
      Properties.MinValue = 1.000000000000000000
      Properties.OnEditValueChanged = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 19
      Value = 4
      Visible = False
      Width = 145
    end
    object cmbSeriesType2: TcxComboBox [19]
      Left = 10000
      Top = 10000
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Line'
        'Point'
        'Area'
        'Bar')
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Text = 'Line'
      Visible = False
      Width = 145
    end
    object cbStartPoint2: TcxCheckBox [20]
      Left = 10000
      Top = 10000
      Action = acStartPoint2
      Caption = 'Highlight Start Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 20
      Transparent = True
      Visible = False
      Width = 119
    end
    object cbEndPoint2: TcxCheckBox [21]
      Left = 10000
      Top = 10000
      Action = acEndPoint2
      Caption = 'Highlight End Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 22
      Transparent = True
      Visible = False
      Width = 113
    end
    object cbMinPoint2: TcxCheckBox [22]
      Left = 10000
      Top = 10000
      Action = acMinPoint2
      Caption = 'Highlight Min Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 24
      Transparent = True
      Visible = False
      Width = 111
    end
    object cbMaxPoint2: TcxCheckBox [23]
      Left = 10000
      Top = 10000
      Action = acMaxPoint2
      Caption = 'Highlight Max Point'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 26
      Transparent = True
      Visible = False
      Width = 115
    end
    object cbShowMarkers2: TcxCheckBox [24]
      Left = 10000
      Top = 10000
      Action = acShowMarkers2
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 28
      Transparent = True
      Visible = False
      Width = 91
    end
    object edStartPointColor2: TdxColorEdit [25]
      Left = 10000
      Top = 10000
      ColorValue = clBlue
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 21
      Width = 80
    end
    object edEndPointColor2: TdxColorEdit [26]
      Left = 10000
      Top = 10000
      ColorValue = clAqua
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 23
      Width = 80
    end
    object edMinPointColor2: TdxColorEdit [27]
      Left = 10000
      Top = 10000
      ColorValue = clRed
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 25
      Width = 80
    end
    object edMaxPointColor2: TdxColorEdit [28]
      Left = 10000
      Top = 10000
      ColorValue = clPurple
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 27
      Width = 80
    end
    object edMarkerPointColor2: TdxColorEdit [29]
      Left = 10000
      Top = 10000
      ColorValue = clBlack
      Properties.OnChange = acAntialiasingExecute
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 29
      Width = 80
    end
    inherited dxLayoutGroup1: TdxLayoutGroup
      CaptionOptions.Visible = False
      ItemIndex = 2
    end
    inherited dxLayoutGroup2: TdxLayoutGroup
      AlignHorz = ahClient
      SizeOptions.Width = 300
    end
    inherited dxLayoutGroup3: TdxLayoutGroup
      AlignHorz = ahRight
      SizeOptions.Width = 250
      ItemIndex = 3
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'dxSparklineEdit1'
      CaptionOptions.Visible = False
      Control = SparklineEdit
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Visible = False
      Control = cbAntialiasing
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Color'
      Control = edColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Line Width'
      Control = edLineWidth1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Marker Size'
      Control = edMarkerSize1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 0
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 4
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Type'
      Control = cmbSeriesType1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liEndPointColor1: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edEndPointColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbEndPoint1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 4
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Series 1'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Series 2'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbStartPoint1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 119
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbMinPoint1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 111
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbMaxPoint1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 115
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahLeft
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbShowMarkers1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liStartPointColor1: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edStartPointColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMinPointColor1: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMinPointColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMaxPointColor1: TdxLayoutItem
      Parent = dxLayoutGroup11
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMaxPointColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMarkerPointColor1: TdxLayoutItem
      Parent = dxLayoutGroup12
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMarkerPointColor1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Color'
      Control = edColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Line Width'
      Control = edLineWidth2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Marker Size'
      Control = edMarkerSize2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Type'
      Control = cmbSeriesType2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 4
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbStartPoint2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbEndPoint2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 127
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbMinPoint2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 125
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbMaxPoint2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 129
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avCenter
      CaptionOptions.Visible = False
      Control = cbShowMarkers2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liStartPointColor2: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edStartPointColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liEndPointColor2: TdxLayoutItem
      Parent = dxLayoutGroup13
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edEndPointColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMinPointColor2: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMinPointColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMaxPointColor2: TdxLayoutItem
      Parent = dxLayoutGroup15
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMaxPointColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liMarkerPointColor2: TdxLayoutItem
      Parent = dxLayoutGroup16
      AlignHorz = ahRight
      AlignVert = avCenter
      Control = edMarkerPointColor2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited ActionList1: TActionList
    object acAntialiasing: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Antialiasing'
      Checked = True
      OnExecute = acAntialiasingExecute
    end
    object acStartPoint1: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Start Point'
      OnExecute = acAntialiasingExecute
    end
    object acEndPoint1: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting End Point'
      OnExecute = acAntialiasingExecute
    end
    object acMinPoint1: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Min Point'
      OnExecute = acAntialiasingExecute
    end
    object acMaxPoint1: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Max Point'
      OnExecute = acAntialiasingExecute
    end
    object acShowMarkers1: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Markers'
      OnExecute = acShowMarkers1Execute
    end
    object acStartPoint2: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Start Point'
      OnExecute = acAntialiasingExecute
    end
    object acEndPoint2: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting End Point'
      OnExecute = acAntialiasingExecute
    end
    object acMinPoint2: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Min Point'
      OnExecute = acAntialiasingExecute
    end
    object acMaxPoint2: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Highlighting Max Point'
      OnExecute = acAntialiasingExecute
    end
    object acShowMarkers2: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Markers'
      OnExecute = acShowMarkers2Execute
    end
  end
end
