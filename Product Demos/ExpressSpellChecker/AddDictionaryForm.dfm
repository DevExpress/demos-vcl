object fmAddDictionary: TfmAddDictionary
  Left = 312
  Top = 264
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Add Dictionary'
  ClientHeight = 249
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 13
  object lcAddDictionary: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 496
    Height = 249
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel
    object btnAdd: TcxButton
      Left = 285
      Top = 205
      Width = 97
      Height = 25
      Caption = 'Add'
      Default = True
      ModalResult = 1
      TabOrder = 4
    end
    object btnCancel: TcxButton
      Left = 388
      Top = 205
      Width = 97
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 5
    end
    object beAffixFile: TcxButtonEdit
      Left = 91
      Top = 85
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = beAffixFilePropertiesButtonClick
      Properties.OnChange = CanAddDictionary
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 394
    end
    object beDictionaryFile: TcxButtonEdit
      Tag = 1
      Left = 91
      Top = 112
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = beDictionaryFilePropertiesButtonClick
      Properties.OnChange = CanAddDictionary
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 394
    end
    object cbLanguage: TcxComboBox
      Left = 91
      Top = 139
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 394
    end
    object cbCodePage: TcxComboBox
      Left = 91
      Top = 166
      Properties.DropDownListStyle = lsEditFixedList
      Properties.ImmediatePost = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 394
    end
    object lgRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object lgDictionaryType: TdxLayoutGroup
      Parent = lgRoot
      CaptionOptions.Text = ' Choose a dictionary type '
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lgDictionaryTypeHunspell: TdxLayoutRadioButtonItem
      Parent = lgDictionaryType
      CaptionOptions.Text = 'Hunspell (recommended)'
      Checked = True
      TabStop = True
      Index = 0
    end
    object lgDictionaryTypeOpenOffice: TdxLayoutRadioButtonItem
      Parent = lgDictionaryType
      CaptionOptions.Text = 'Open Office'
      Index = 1
    end
    object lgDictionaryTypeISpell: TdxLayoutRadioButtonItem
      Parent = lgDictionaryType
      CaptionOptions.Text = 'ISpell'
      Index = 2
    end
    object lgLink: TdxLayoutGroup
      Parent = lgRoot
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 1
    end
    object liLink: TdxLayoutLabeledItem
      Parent = lgLink
      CaptionOptions.AlignHorz = taCenter
      CaptionOptions.Text = 
        'You can [URL=http://wiki.services.openoffice.org/wiki/Dictionari' +
        'es] download free Hunspell dictionaries[/URL]'
      Index = 0
    end
    object lgOptions: TdxLayoutGroup
      Parent = lgRoot
      CaptionOptions.Visible = False
      ItemIndex = 3
      ShowBorder = False
      Index = 2
    end
    object liAffixFile: TdxLayoutItem
      Parent = lgOptions
      CaptionOptions.Text = 'Affix file:'
      Control = beAffixFile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDictionaryFile: TdxLayoutItem
      Parent = lgOptions
      CaptionOptions.Text = 'Dictionary file:'
      Control = beDictionaryFile
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liLanguage: TdxLayoutItem
      Parent = lgOptions
      CaptionOptions.Text = 'Language:'
      Control = cbLanguage
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object liCode_Page: TdxLayoutItem
      Parent = lgOptions
      CaptionOptions.Text = 'Code page:'
      Control = cbCodePage
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 350
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object liSeparator: TdxLayoutSeparatorItem
      Parent = lgRoot
      Index = 3
    end
    object lgButtons: TdxLayoutGroup
      Parent = lgRoot
      CaptionOptions.Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object liButtonAdd: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAdd
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liButtonCancel: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 97
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object OpenDialog: TdxOpenFileDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 416
    Top = 64
  end
  object dxLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 384
    Top = 32
    object dxLayoutSkinLookAndFeel: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
