object frmSaveDialogForm: TfrmSaveDialogForm
  Left = 397
  Top = 229
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Save Options'
  ClientHeight = 393
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lcMain: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 457
    Height = 393
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutCxLookAndFeel1
    OnClick = lcMainClick
    DesignSize = (
      457
      393)
    object edUserPassword: TcxTextEdit
      Left = 139
      Top = 82
      Anchors = [akTop, akRight]
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Properties.ShowPasswordRevealButton = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 333
    end
    object edOwnerPassword: TcxTextEdit
      Left = 139
      Top = 109
      Anchors = [akTop, akRight]
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Properties.ShowPasswordRevealButton = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 333
    end
    object cbxMethod: TcxComboBox
      Left = 139
      Top = 136
      Anchors = [akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'RC4: 40 Bit'
        'RC4: 128 Bit')
      Properties.OnChange = cbxMethodPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 333
    end
    object btnOk: TcxButton
      Left = 334
      Top = 360
      Width = 85
      Height = 23
      Caption = 'Ok'
      Default = True
      ModalResult = 1
      TabOrder = 11
    end
    object btnCancel: TcxButton
      Left = 425
      Top = 360
      Width = 85
      Height = 23
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 12
    end
    object teSignatureReason: TcxTextEdit
      Left = 10000
      Top = 10000
      Anchors = [akTop, akRight]
      Properties.OnChange = teSignatureReasonPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Visible = False
      Width = 304
    end
    object teSignatureLocation: TcxTextEdit
      Left = 10000
      Top = 10000
      Anchors = [akTop, akRight]
      Properties.OnChange = teSignatureLocationPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Visible = False
      Width = 304
    end
    object teSignatureContactInfo: TcxTextEdit
      Left = 10000
      Top = 10000
      Anchors = [akTop, akRight]
      Properties.OnChange = teSignatureContactInfoPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Visible = False
      Width = 304
    end
    object btnSignatureViewCertificate: TcxButton
      Left = 10000
      Top = 10000
      Width = 100
      Height = 23
      Caption = 'View Certificate...'
      TabOrder = 7
      Visible = False
      OnClick = btnSignatureViewCertificateClick
    end
    object peSytemStorage: TcxPopupEdit
      Left = 10000
      Top = 10000
      Properties.PopupControl = lvSystemStorage
      Properties.ReadOnly = False
      Properties.OnCloseUp = peSytemStoragePropertiesCloseUp
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Text = 'peSytemStorage'
      Visible = False
      OnMouseDown = peSytemStorageMouseDown
      OnMouseUp = peSytemStorageMouseUp
      Width = 304
    end
    object teSignatureCertificateFileName: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.OnEditValueChanged = teSignatureCertificateFileNamePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Text = 'teSignatureCertificateFileName'
      Visible = False
      Width = 304
    end
    object cbPrintingAllowed: TcxComboBox
      Left = 139
      Top = 193
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 333
    end
    object cbChangesAllowed: TcxComboBox
      Left = 139
      Top = 220
      Properties.DropDownListStyle = lsFixedList
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 333
    end
    object lcMainGroup_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      SizeOptions.Width = 520
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lcMainGroup_Root
      ButtonOptions.Buttons = <>
      LayoutDirection = ldTabbed
      ShowBorder = False
      TabbedOptions.ShowFrame = True
      Index = 0
    end
    object tbsSecurity: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = '&Security'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object gbSecuritySettings: TdxLayoutGroup
      Parent = tbsSecurity
      AlignVert = avClient
      CaptionOptions.Text = ' Security Settings '
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Visible = True
      Index = 0
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = gbSecuritySettings
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignVert = avTop
      CaptionOptions.Text = 'Passwords'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      Index = 0
    end
    object lbUserPassword: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'User Password:'
      Control = edUserPassword
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lbOwnerPassword: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Owner Password:'
      Control = edOwnerPassword
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lbMethod: TdxLayoutItem
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Method'
      Control = cbxMethod
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'btnOk'
      CaptionOptions.Visible = False
      Control = btnOk
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'btnCancel'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 85
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object tbsSignature: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Signature'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object lgSignatureSettings: TdxLayoutGroup
      Parent = tbsSignature
      AlignVert = avClient
      CaptionOptions.Text = 'Signature Settings'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.CheckBox.Visible = True
      OnCheckBoxStateChanged = lgSignatureSettingsCheckBoxStateChanged
      Index = 0
    end
    object liteSignatureReason: TdxLayoutItem
      Parent = tbsSignatureDetails
      CaptionOptions.Text = 'Reason:'
      Control = teSignatureReason
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liteSignatureLocation: TdxLayoutItem
      Parent = tbsSignatureDetails
      CaptionOptions.Text = 'Location:'
      Control = teSignatureLocation
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liteSignatureContactInfo: TdxLayoutItem
      Parent = tbsSignatureDetails
      CaptionOptions.Text = 'Contact Info:'
      Control = teSignatureContactInfo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object tbsSignatureDetails: TdxLayoutGroup
      Parent = lgSignatureSettings
      AlignVert = avClient
      CaptionOptions.Text = 'Details'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      Index = 1
    end
    object tbsSignatureCertificate: TdxLayoutGroup
      Parent = lgSignatureSettings
      CaptionOptions.Text = 'Certificate (Digital ID)'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object lrbSignatureUseCertificateFromSystemStore: TdxLayoutRadioButtonItem
      Parent = tbsSignatureCertificate
      CaptionOptions.Text = 'Use Certificate from System Store:'
      TabStop = True
      OnClick = lrbSignatureUseCertificateFromSystemStoreClick
      Index = 0
    end
    object lrbSignatureUseCertificateFromFile: TdxLayoutRadioButtonItem
      Parent = tbsSignatureCertificate
      CaptionOptions.Text = 'Use Certificate from file:'
      TabStop = True
      OnClick = lrbSignatureUseCertificateFromFileClick
      Index = 2
    end
    object lgSignatureSystemStorage: TdxLayoutGroup
      Parent = tbsSignatureCertificate
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = tbsSignatureCertificate
      AlignHorz = ahRight
      CaptionOptions.Visible = False
      Control = btnSignatureViewCertificate
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lipeSytemStorage: TdxLayoutItem
      Parent = lgSignatureSystemStorage
      AlignVert = avTop
      CaptionOptions.Text = 'Issued To:'
      Control = peSytemStorage
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liteSignatureCertificateFileName: TdxLayoutItem
      Parent = tbsSignatureCertificate
      CaptionOptions.Text = 'File Name:'
      Control = teSignatureCertificateFileName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liPrintingAllowed: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Printing Allowed:'
      Control = cbPrintingAllowed
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liChangesAllowed: TdxLayoutItem
      Parent = dxLayoutGroup1
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      CaptionOptions.Text = 'Changes Allowed:'
      Control = cbChangesAllowed
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignVert = avClient
      CaptionOptions.Text = 'Permissions'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 1
    end
    object cbEnableTextAccess40: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Allow Copy Operations with Text, Images, and Other Content'
      CaptionOptions.WordWrap = True
      OnClick = cbEnableTextAccess40Click
      Index = 2
    end
    object cbEnableTextAccess128: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 
        'Allow Text Access for Screen Reader Devices for the Visually Imp' +
        'aired'
      CaptionOptions.WordWrap = True
      Index = 3
    end
  end
  object lvSystemStorage: TcxListView
    Left = 201
    Top = 31
    Width = 216
    Height = 50
    Columns = <
      item
        AutoSize = True
        Caption = 'Issuer'
      end
      item
        AutoSize = True
        Caption = 'Expiration Date'
      end>
    RowSelect = True
    TabOrder = 1
    ViewStyle = vsReport
    Visible = False
    OnClick = lvSystemStorageClick
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 264
    Top = 224
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
