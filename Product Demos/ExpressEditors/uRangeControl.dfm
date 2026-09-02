inherited frmRangeControl: TfrmRangeControl
  inherited lcFrame: TdxLayoutControl
    object cbAnimation: TcxCheckBox [0]
      Left = 34
      Top = 46
      Action = acAnimation
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Transparent = True
      Width = 71
    end
    object cbShowRuler: TcxCheckBox [1]
      Left = 127
      Top = 46
      Action = acShowRuler
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Transparent = True
      Width = 78
    end
    object cbShowZoomAndScrollBar: TcxCheckBox [2]
      Left = 227
      Top = 46
      Action = acShowZoomAndScrollBar
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Transparent = True
      Width = 144
    end
    object rcNumericClient: TdxRangeControl [3]
      Left = 48
      Top = 123
      Width = 538
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      ClientPropertiesClassName = 'TdxRangeControlNumericClientProperties'
      ClientProperties.MaxValue = 10
      ClientProperties.MinValue = 0
      ClientProperties.ScaleInterval = 1
      SelectedRangeMaxValue = 0
      SelectedRangeMinValue = 0
      TabOrder = 3
      VisibleRangeMaxScaleFactor = 10.000000000000000000
      VisibleRangeMaxValue = 10.000000000000000000
      VisibleRangeMinValue = 0.000000000000000000
      OnDrawContent = rcNumericClientDrawContent
    end
    object tbNumericClient: TcxTrackBar [4]
      Left = 679
      Top = 166
      Position = 1
      Properties.AutoSize = False
      Properties.Max = 4
      Properties.Min = 1
      Properties.ThumbStep = cxtsJump
      Properties.OnChange = tbNumericClientPropertiesChange
      Style.HotTrack = False
      TabOrder = 5
      Transparent = True
      Height = 31
      Width = 196
    end
    object rcDateTimeClient: TdxRangeControl [5]
      Left = 10000
      Top = 10000
      Width = 538
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      ClientPropertiesClassName = 'TdxRangeControlDateTimeClientProperties'
      ClientProperties.MaxValue = 42706d
      ClientProperties.MinValue = 42702d
      ClientProperties.ScaleInterval = 1
      ClientProperties.Scales.Day.Active = True
      SelectedRangeMaxValue = 42702d
      SelectedRangeMinValue = 42702d
      TabOrder = 6
      Visible = False
      VisibleRangeMaxScaleFactor = 10.000000000000000000
      VisibleRangeMaxValue = 42706d
      VisibleRangeMinValue = 42702d
      OnDrawContent = rcDateTimeClientDrawContent
    end
    object tbDateTimeClient: TcxTrackBar [6]
      Left = 10000
      Top = 10000
      Position = 1
      Properties.AutoSize = False
      Properties.Max = 4
      Properties.Min = 1
      Properties.ThumbStep = cxtsJump
      Properties.OnChange = tbDateTimeClientPropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Visible = False
      Height = 31
      Width = 196
    end
    object rcDateTimeHeaderClient: TdxRangeControl [7]
      Left = 10000
      Top = 10000
      Width = 645
      Height = 180
      Anchors = [akLeft, akTop, akRight, akBottom]
      ClientPropertiesClassName = 'TdxRangeControlDateTimeHeaderClientProperties'
      ClientProperties.MaxValue = 42706d
      ClientProperties.MinValue = 42702d
      ClientProperties.Scales.Day.Active = True
      ClientProperties.Scales.Day.Visible = True
      ClientProperties.Scales.Week.Visible = True
      ClientProperties.Scales.Year.Visible = True
      SelectedRangeMaxValue = 42703d
      SelectedRangeMinValue = 42702d
      TabOrder = 9
      Visible = False
      VisibleRangeMaxScaleFactor = 10.000000000000000000
      VisibleRangeMaxValue = 42706d
      VisibleRangeMinValue = 42702d
      OnDrawContent = rcDateTimeHeaderClientDrawContent
    end
    object cxCheckComboBox1: TcxCheckComboBox [8]
      Left = 10000
      Top = 10000
      Properties.Items = <
        item
          Description = 'Day'
        end
        item
          Description = 'Week'
        end
        item
          Description = 'Month'
        end
        item
          Description = 'Quarter'
        end
        item
          Description = 'Year'
        end>
      Properties.OnEditValueChanged = cxCheckComboBox1PropertiesEditValueChanged
      EditValue = 19
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 11
      Visible = False
      Width = 121
    end
    object tsNumberClientContentType: TdxToggleSwitch [9]
      Left = 668
      Top = 123
      Checked = True
      Properties.StateIndicator.Kind = sikText
      Properties.StateIndicator.OffText = 'Line'
      Properties.StateIndicator.OnText = 'Discrete'
      Properties.OnChange = tsNumberClientContentTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Transparent = True
      Width = 146
    end
    object tsDateTimeClientContentType: TdxToggleSwitch [10]
      Left = 10000
      Top = 10000
      Checked = True
      Properties.StateIndicator.Kind = sikText
      Properties.StateIndicator.OffText = 'Line'
      Properties.StateIndicator.OnText = 'Area'
      Properties.OnChange = tsDateTimeClientContentTypePropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Transparent = True
      Visible = False
      Width = 130
    end
    object cbAutoFormatScaleCaptions: TcxCheckBox [11]
      Left = 10000
      Top = 10000
      Caption = 'Autoformat Scale Captions'
      Properties.OnChange = cbAutoFormatScaleCaptionsPropertiesChange
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Transparent = True
      Visible = False
      Width = 157
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbAnimation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 71
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cbShowRuler
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 78
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignVert = avClient
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = cbShowZoomAndScrollBar
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 144
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      Control = rcNumericClient
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 420
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Scale Interval'
      Control = tbNumericClient
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      Control = rcDateTimeClient
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 420
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Scale Interval'
      Control = tbDateTimeClient
      ControlOptions.OriginalHeight = 31
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      Control = rcDateTimeHeaderClient
      ControlOptions.OriginalHeight = 90
      ControlOptions.OriginalWidth = 420
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Scales:'
      Control = cxCheckComboBox1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgContent
      AlignHorz = ahCenter
      AlignVert = avCenter
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Height = 301
      SizeOptions.Width = 879
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Numeric Client'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Date Client'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Date-Time Header Client'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup4
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahCenter
      CaptionOptions.Text = 'dxToggleSwitch1'
      CaptionOptions.Visible = False
      Control = tsNumberClientContentType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 146
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahCenter
      CaptionOptions.Visible = False
      Control = tsDateTimeClientContentType
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 130
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cbAutoFormatScaleCaptions
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 88
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionList1: TActionList
    object acAnimation: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Animation'
      Checked = True
      OnExecute = acAnimationExecute
    end
    object acShowRuler: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Ruler'
      Checked = True
      OnExecute = acShowRulerExecute
    end
    object acShowZoomAndScrollBar: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Zoom and Scrollbar'
      Checked = True
      OnExecute = acShowZoomAndScrollBarExecute
    end
  end
end
