inherited frmActivityIndicator: TfrmActivityIndicator
  inherited lcFrame: TdxLayoutControl
    object tcMain: TcxTabControl [0]
      AlignWithMargins = True
      Left = 22
      Top = 28
      Width = 610
      Height = 354
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.ShowFrame = True
      OnChange = tcMainChange
      ClientRectBottom = 350
      ClientRectLeft = 4
      ClientRectRight = 606
      ClientRectTop = 4
      object bvlSeparator: TdxBevel
        AlignWithMargins = True
        Left = 321
        Top = 7
        Width = 2
        Height = 340
        Align = alRight
        Shape = dxbsLineCenteredHorz
        ExplicitLeft = 399
        ExplicitTop = 4
        ExplicitHeight = 212
      end
      object ActivityIndicator: TdxActivityIndicator
        AlignWithMargins = True
        Left = 64
        Top = 64
        Width = 194
        Height = 226
        Margins.Left = 60
        Margins.Top = 60
        Margins.Right = 60
        Margins.Bottom = 60
        Align = alClient
        PropertiesClassName = 'TdxActivityIndicatorHorizontalDotsProperties'
        Active = True
        Transparent = True
      end
      object lcSettings: TdxLayoutControl
        Left = 326
        Top = 4
        Width = 280
        Height = 346
        Align = alRight
        TabOrder = 1
        object seAnimationTime: TcxSpinEdit
          AlignWithMargins = True
          Left = 107
          Top = 10
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.Increment = 100.000000000000000000
          Properties.LargeIncrement = 1000.000000000000000000
          Properties.MaxValue = 100000.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.SpinButtons.ShowFastButtons = True
          Properties.OnEditValueChanged = seAnimationTimePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Value = 1
          Width = 163
        end
        object seArcThickness: TcxSpinEdit
          AlignWithMargins = True
          Left = 107
          Top = 53
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.LargeIncrement = 5.000000000000000000
          Properties.MaxValue = 30.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.SpinButtons.ShowFastButtons = True
          Properties.OnEditValueChanged = seArcThicknessPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Value = 1
          Width = 163
        end
        object ccbArcColor: TcxColorComboBox
          AlignWithMargins = True
          Left = 107
          Top = 80
          Margins.Top = 0
          Properties.AllowSelectColor = True
          Properties.ColorDialogShowFull = True
          Properties.ColorDialogType = cxcdtAdvanced
          Properties.CustomColors = <>
          Properties.OnChange = ccbArcColorPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 163
        end
        object seDotSize: TcxSpinEdit
          AlignWithMargins = True
          Left = 107
          Top = 123
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.LargeIncrement = 5.000000000000000000
          Properties.MaxValue = 50.000000000000000000
          Properties.MinValue = 2.000000000000000000
          Properties.SpinButtons.ShowFastButtons = True
          Properties.OnEditValueChanged = seDotSizePropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Value = 2
          Width = 163
        end
        object seDotCount: TcxSpinEdit
          AlignWithMargins = True
          Left = 107
          Top = 150
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.MaxValue = 10.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.ValueType = vtInt
          Properties.OnEditValueChanged = seDotCountPropertiesChange
          Properties.ZeroLargeIncrement = True
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          TabOrder = 4
          Value = 1
          Width = 163
        end
        object ccbDotColor: TcxColorComboBox
          AlignWithMargins = True
          Left = 107
          Top = 177
          Margins.Top = 0
          Properties.AllowSelectColor = True
          Properties.ColorDialogShowFull = True
          Properties.ColorDialogType = cxcdtAdvanced
          Properties.CustomColors = <>
          Properties.OnChange = ccbDotColorPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Width = 163
        end
        object lcSettingsGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 2
          ShowBorder = False
          Index = -1
        end
        object liAnimationTime: TdxLayoutItem
          Parent = lcSettingsGroup_Root
          CaptionOptions.Text = 'Animation Time, ms'
          Control = seAnimationTime
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = lgArcBased
          CaptionOptions.Text = 'Arc Thickness'
          Control = seArcThickness
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = lgArcBased
          AlignHorz = ahClient
          CaptionOptions.Text = 'Arc Color'
          Control = ccbArcColor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
          Parent = lgDotBased
          CaptionOptions.Text = 'Empty Space Item'
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          Index = 0
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = lgDotBased
          CaptionOptions.Text = 'Dot Size'
          Control = seDotSize
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = lgDotBased
          CaptionOptions.Text = 'Dot Count'
          Control = seDotCount
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = lgDotBased
          CaptionOptions.Text = 'Dot Color'
          Control = ccbDotColor
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lgArcBased: TdxLayoutGroup
          Parent = lcSettingsGroup_Root
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = 1
        end
        object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
          Parent = lgArcBased
          CaptionOptions.Text = 'Empty Space Item'
          SizeOptions.Height = 10
          SizeOptions.Width = 10
          Index = 0
        end
        object lgDotBased: TdxLayoutGroup
          Parent = lcSettingsGroup_Root
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          ShowBorder = False
          Index = 2
        end
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahCenter
      AlignVert = avCenter
      Control = tcMain
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 354
      ControlOptions.OriginalWidth = 610
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
