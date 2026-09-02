inherited frmBarCode: TfrmBarCode
  inherited lcFrame: TdxLayoutControl
    object tcMain: TcxTabControl [0]
      AlignWithMargins = True
      Left = 22
      Top = 28
      Width = 687
      Height = 534
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.MultiLine = True
      Properties.ShowFrame = True
      Properties.TabIndex = 12
      Properties.Tabs.Strings = (
        'Code 11'
        'Code 39'
        'Code 39 Extended'
        'Code 93'
        'Code 93 Extended'
        'Code128'
        'EAN-8'
        'EAN-13'
        'Interleaved 2 of 5'
        'MSI'
        'UPC-A'
        'UPC-E'
        'QR Code')
      OnChange = tcMainChange
      ClientRectBottom = 530
      ClientRectLeft = 4
      ClientRectRight = 683
      ClientRectTop = 42
      object bvlSeparator: TdxBevel
        AlignWithMargins = True
        Left = 399
        Top = 45
        Width = 2
        Height = 482
        Margins.Right = 2
        Align = alRight
        Shape = dxbsLineCenteredHorz
        ExplicitLeft = 426
        ExplicitTop = 51
        ExplicitHeight = 463
      end
      object Panel1: TPanel
        Left = 4
        Top = 42
        Width = 392
        Height = 488
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object BarCode: TdxBarCode
          AlignWithMargins = True
          Left = 3
          Top = 3
          Align = alClient
          Enabled = False
          ParentFont = False
          Properties.BarCodeSymbologyClassName = 'TdxBarCodeEAN13Symbology'
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
      object lcSettings: TdxLayoutControl
        Left = 403
        Top = 42
        Width = 280
        Height = 488
        Align = alRight
        TabOrder = 1
        object memText: TcxMemo
          AlignWithMargins = True
          Left = 10
          Top = 28
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 6
          Lines.Strings = (
            '0123456789000')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Height = 45
          Width = 260
        end
        object seFontSize: TcxSpinEdit
          AlignWithMargins = True
          Left = 10000
          Top = 10000
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.MaxValue = 30.000000000000000000
          Properties.MinValue = 6.000000000000000000
          Properties.OnEditValueChanged = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 1
          Value = 13
          Visible = False
          Width = 155
        end
        object cbRotationAngle: TcxComboBox
          AlignWithMargins = True
          Left = 10000
          Top = 10000
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            '0'
            '-90'
            '90'
            '180')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Text = '0'
          Visible = False
          Width = 155
        end
        object seModuleWidth: TcxSpinEdit
          AlignWithMargins = True
          Left = 10000
          Top = 10000
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.MaxValue = 20.000000000000000000
          Properties.MinValue = 1.000000000000000000
          Properties.OnEditValueChanged = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 3
          Value = 2
          Visible = False
          Width = 155
        end
        object cbFitMode: TcxComboBox
          AlignWithMargins = True
          Left = 10000
          Top = 10000
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Normal'
            'Stretch'
            'Proportional Stretch'
            'Fit')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 4
          Text = 'Normal'
          Visible = False
          Width = 155
        end
        object cxCheckBox1: TcxCheckBox
          Left = 10000
          Top = 10000
          Action = acShowText
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Transparent = True
          Visible = False
          Width = 75
        end
        object seWideNarrowRatio: TcxSpinEdit
          AlignWithMargins = True
          Left = 134
          Top = 113
          Margins.Top = 0
          Properties.ImmediatePost = True
          Properties.Increment = 0.100000000000000000
          Properties.LargeIncrement = 1.000000000000000000
          Properties.MaxValue = 3.000000000000000000
          Properties.MinValue = 2.000000000000000000
          Properties.ValueType = vtFloat
          Properties.OnEditValueChanged = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 6
          Value = 2.000000000000000000
          Width = 122
        end
        object cxCheckBox2: TcxCheckBox
          Left = 24
          Top = 140
          Action = acChecksum
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Transparent = True
          Width = 232
        end
        object cbCharacterSet: TcxComboBox
          AlignWithMargins = True
          Left = 134
          Top = 167
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Auto'
            'A'
            'B'
            'C')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 8
          Text = 'Auto'
          Width = 122
        end
        object cbCompactionMode: TcxComboBox
          AlignWithMargins = True
          Left = 134
          Top = 194
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Numeric'
            'AlphaNumeric'
            'Byte')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 9
          Text = 'Byte'
          Width = 121
        end
        object cbErrorCorrectionLevel: TcxComboBox
          AlignWithMargins = True
          Left = 134
          Top = 248
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'L'
            'M'
            'Q'
            'H')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 11
          Text = 'M'
          Width = 122
        end
        object cbSizeVersion: TcxComboBox
          AlignWithMargins = True
          Left = 134
          Top = 221
          Margins.Top = 0
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Auto'
            'Version 1'
            'Version 2'
            'Version 3'
            'Version 4'
            'Version 5'
            'Version 6'
            'Version 7'
            'Version 8'
            'Version 9'
            'Version 10'
            'Version 11'
            'Version 12'
            'Version 13'
            'Version 14'
            'Version 15'
            'Version 16'
            'Version 17'
            'Version 18'
            'Version 19'
            'Version 20'
            'Version 21'
            'Version 22'
            'Version 23'
            'Version 24'
            'Version 25'
            'Version 26'
            'Version 27'
            'Version 28'
            'Version 29'
            'Version 30'
            'Version 31'
            'Version 32'
            'Version 33'
            'Version 34'
            'Version 35'
            'Version 36'
            'Version 37'
            'Version 38'
            'Version 39'
            'Version 40')
          Properties.OnChange = memTextPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 10
          Text = 'Auto'
          Width = 122
        end
        object lcSettingsGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 1
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = lcSettingsGroup_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Text'
          CaptionOptions.Layout = clTop
          Control = memText
          ControlOptions.OriginalHeight = 45
          ControlOptions.OriginalWidth = 185
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lgCustomSettings: TdxLayoutGroup
          Parent = lcSettingsGroup_Root
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          ItemIndex = 1
          LayoutDirection = ldTabbed
          ShowBorder = False
          Index = 1
        end
        object lgCommonProperties: TdxLayoutGroup
          Parent = lgCustomSettings
          CaptionOptions.Text = 'Common Properties'
          ButtonOptions.Buttons = <>
          ItemIndex = 3
          Index = 0
        end
        object lgSpecificProperties: TdxLayoutGroup
          Parent = lgCustomSettings
          CaptionOptions.Text = 'Specific Properties'
          ButtonOptions.Buttons = <>
          ItemIndex = 3
          Index = 1
        end
        object liFontSize: TdxLayoutItem
          Parent = lgCommonProperties
          CaptionOptions.Text = 'Font Size'
          Control = seFontSize
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liRotationAngle: TdxLayoutItem
          Parent = lgCommonProperties
          CaptionOptions.Text = 'Rotation Angle'
          Control = cbRotationAngle
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liModuleSize: TdxLayoutItem
          Parent = lgCommonProperties
          CaptionOptions.Text = 'Module Size'
          Control = seModuleWidth
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liFitMode: TdxLayoutItem
          Parent = lgCommonProperties
          CaptionOptions.Text = 'Fit Mode'
          Control = cbFitMode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = lgCommonProperties
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = cxCheckBox1
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object liWideNarrowRatio: TdxLayoutItem
          Parent = lgSpecificProperties
          CaptionOptions.Text = 'Wide Narrow Ratio'
          Control = seWideNarrowRatio
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object liCheckSum: TdxLayoutItem
          Parent = lgSpecificProperties
          CaptionOptions.Text = 'cxCheckBox2'
          CaptionOptions.Visible = False
          Control = cxCheckBox2
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 88
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object liCharacterSet: TdxLayoutItem
          Parent = lgSpecificProperties
          CaptionOptions.Text = 'Character Set'
          Control = cbCharacterSet
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object liCompactionMode: TdxLayoutItem
          Parent = lgSpecificProperties
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Compaction Mode'
          Control = cbCompactionMode
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object liErrorCorrectionLevel: TdxLayoutItem
          Parent = lgSpecificProperties
          CaptionOptions.Text = 'Error Correction Level'
          Control = cbErrorCorrectionLevel
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 5
        end
        object liSizeVersion: TdxLayoutItem
          Parent = lgSpecificProperties
          CaptionOptions.Text = 'Size Version'
          Control = cbSizeVersion
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 4
        end
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahCenter
      AlignVert = avCenter
      Control = tcMain
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 534
      ControlOptions.OriginalWidth = 687
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited ActionList1: TActionList
    object acShowText: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show Text'
      Checked = True
      OnExecute = memTextPropertiesChange
    end
    object acChecksum: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Checksum'
      Checked = True
      OnExecute = memTextPropertiesChange
    end
  end
end
