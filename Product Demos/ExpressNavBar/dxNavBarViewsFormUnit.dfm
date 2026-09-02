inherited dxNavBarControlDemoUnitForm2: TdxNavBarControlDemoUnitForm2
  Caption = 'Views'
  ClientHeight = 668
  ClientWidth = 1079
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 1079
  ExplicitHeight = 668
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 1079
    Height = 668
    ExplicitWidth = 1079
    ExplicitHeight = 668
    object nbMain: TdxNavBar [0]
      Left = 11
      Top = 29
      Width = 286
      Height = 590
      Color = 16053234
      Constraints.MinWidth = 10
      ActiveGroupIndex = 0
      TabOrder = 0
      TabStop = True
      View = 14
      OptionsBehavior.Common.AllowExpandAnimation = True
      OptionsBehavior.Common.ShowGroupsHint = True
      OptionsBehavior.Common.ShowLinksHint = True
      OptionsImage.LargeImages = imgLarge
      OptionsImage.SmallImages = imgSmall
      OptionsView.NavigationPane.MaxVisibleGroups = 3
      OnActiveGroupChanged = nbMainActiveGroupChanged
      OnEndDrag = nbMainEndDrag
      OnLinkClick = nbMainLinkClick
      object bgMail: TdxNavBarGroup
        Caption = 'Mail'
        Hint = 'Local group hint'
        LargeImageIndex = 6
        SelectedLinkIndex = -1
        SmallImageIndex = 6
        TopVisibleLinkIndex = 0
        UseSmallImages = False
        Links = <
          item
            Item = biInbox
          end
          item
            Item = biDrafts
          end
          item
            Item = biOutbox
          end
          item
            Item = biSentItems
          end
          item
            Item = biJunkEmail
          end
          item
            Item = biDeletedItems
          end>
      end
      object bgNews: TdxNavBarGroup
        Caption = 'News'
        Hint = 'News group hint'
        LargeImageIndex = 19
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        SmallImageIndex = 19
        TopVisibleLinkIndex = 0
        Links = <
          item
            Item = biNews
          end>
      end
      object bgOther: TdxNavBarGroup
        Caption = 'Other'
        Hint = 'Temp group hint'
        LargeImageIndex = 9
        LinksUseSmallImages = False
        SelectedLinkIndex = -1
        SmallImageIndex = 9
        TopVisibleLinkIndex = 0
        UseSmallImages = False
        Links = <
          item
            Item = biMyComputer
          end
          item
            Item = biMyDocuments
          end
          item
            Item = biFavorites
          end>
      end
      object bgTasks: TdxNavBarGroup
        Caption = 'Tasks'
        LargeImageIndex = 2
        SelectedLinkIndex = -1
        SmallImageIndex = 2
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object bgCalendar: TdxNavBarGroup
        Caption = 'Calendar'
        LargeImageIndex = 3
        SelectedLinkIndex = -1
        SmallImageIndex = 3
        TopVisibleLinkIndex = 0
        UseSmallImages = False
        Links = <>
      end
      object bgJournal: TdxNavBarGroup
        Caption = 'Journal'
        LargeImageIndex = 5
        SelectedLinkIndex = -1
        SmallImageIndex = 5
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object bgNotes: TdxNavBarGroup
        Caption = 'Notes'
        LargeImageIndex = 7
        SelectedLinkIndex = -1
        SmallImageIndex = 7
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object bgContacts: TdxNavBarGroup
        Caption = 'Contacts'
        LargeImageIndex = 4
        SelectedLinkIndex = -1
        SmallImageIndex = 4
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object bgShortcuts: TdxNavBarGroup
        Caption = 'Shortcuts'
        LargeImageIndex = 8
        SelectedLinkIndex = -1
        SmallImageIndex = 8
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object biInbox: TdxNavBarItem
        Caption = 'Inbox'
        Hint = 'Inbox'
        LargeImageIndex = 16
        SmallImageIndex = 16
        Left = 24
        Top = 24
      end
      object biOutbox: TdxNavBarItem
        Caption = 'Outbox'
        Hint = 'Outbox'
        LargeImageIndex = 18
        SmallImageIndex = 18
        Left = 40
        Top = 32
      end
      object biSentItems: TdxNavBarItem
        Caption = 'Sent Items'
        Enabled = False
        Hint = 'Sent Items'
        LargeImageIndex = 13
        SmallImageIndex = 13
      end
      object biDeletedItems: TdxNavBarItem
        Caption = 'Deleted Items'
        Hint = 'Deleted Items'
        LargeImageIndex = 14
        SmallImageIndex = 14
      end
      object biDrafts: TdxNavBarItem
        Caption = 'Drafts'
        Hint = 'Drafts'
        LargeImageIndex = 15
        SmallImageIndex = 15
      end
      object biNews: TdxNavBarItem
        Caption = 'News'
        Hint = 'News'
        LargeImageIndex = 0
        SmallImageIndex = 0
      end
      object biMyComputer: TdxNavBarItem
        Caption = 'My Computer'
        Hint = 'Temp'
        LargeImageIndex = 11
        SmallImageIndex = 12
      end
      object biMyDocuments: TdxNavBarItem
        Caption = 'My Documents'
        LargeImageIndex = 12
        SmallImageIndex = 10
      end
      object biFavorites: TdxNavBarItem
        Caption = 'Favorites'
        LargeImageIndex = 10
        SmallImageIndex = 11
      end
      object biJunkEmail: TdxNavBarItem
        Caption = 'Junk E-mail'
        LargeImageIndex = 17
        SmallImageIndex = 17
      end
      object stThirdGroupBackGround: TdxNavBarStyleItem
        Style.AlphaBlending = 120
        Style.AlphaBlending2 = 150
        Style.BackColor = clYellow
        Style.BackColor2 = clLime
        Style.GradientMode = gmBackwardDiagonal
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'MS Sans Serif'
        Style.Font.Style = []
        Style.Image.Data = {
          0A544A504547496D616765CF080000FFD8FFE000104A46494600010201004800
          480000FFED015050686F746F73686F7020332E30003842494D03ED0000000000
          10004800000001000100480000000100013842494D03F3000000000008000000
          00000000003842494D271000000000000A000100000000000000023842494D03
          F5000000000048002F66660001006C66660006000000000001002F6666000100
          A1999A0006000000000001003200000001005A00000006000000000001003500
          000001002D000000060000000000013842494D03F80000000000700000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF03E800003842494D040000000000000200003842494D040200
          000000000200003842494D04060000000000020000FFEE000E41646F62650064
          8000000001FFDB008400120E0E0E100E151010151E1311131E231A15151A2322
          171717171722110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C011413131619161B17171B140E0E0E14140E0E0E0E14
          110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0CFFC00011080087008703012200021101031101FFC4
          013F0000010501010101010100000000000000030001020405060708090A0B01
          00010501010101010100000000000000010002030405060708090A0B10000104
          01030204020507060805030C3301000211030421123105415161132271813206
          1491A1B14223241552C16233347282D14307259253F0E1F163733516A2B28326
          4493546445C2A3743617D255E265F2B384C3D375E3F3462794A485B495C4D4E4
          F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767778797A7B7C7D7E7F711
          0002020102040403040506070706053501000211032131120441516171221305
          32819114A1B14223C152D1F0332462E1728292435315637334F1250616A2B283
          072635C2D2449354A317644555367465E2F2B384C3D375E3F34694A485B495C4
          D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737475767778797A7B7C7FF
          DD00040009FFDA000C03010002110311003F00E80D80185126535DCA182B9BC9
          774E908E96CB76BE6ADD0E9D15207557A9831BB43E2A6E5AED6E4D99BEB3D90C
          68558771E680ED0AB392201B0C313615655B9B2CD7C955DE5A60E842B8C70F81
          4D6D01E3C0A8E78F8C7143D335D195692D9AFEA9EEA26D517B1EC30428012554
          3C60D1DD98463BB669B1D2AEEE913F82A553615D6FD15A1CBDF0D12D7CB57A30
          25314EE4C89B5A1891E29B6944014837C10E0B4DB5CB750922B9BA8F194937DB
          F552EE2D1FFFD0E82D1B900B484671D754809581288917441A089ADD55BA491E
          63C10C33C11AB0A4C50224B672B09DD044A03959FCD407B476D158CD13BB0C0A
          245658469C842E138F255E3220E8BC8B6C10C7882109D8D0646A120515AFF156
          0704FE61EAFDE59EA8EC5832B846E0253E0989528022345A492C4A8A72994724
          85C220420515A9F02892371F70F8A4A2F1EF1F1092659F7297D0E17FFFD1DE73
          B5D53B4782859CA66388E3EE5CF897AA8BA55A68DA6A2043638391068ADC36B6
          0926064477427A9B1FD8A77007FBD4B21C51D0B18D0B54A60511EC210E153902
          0B30D9203F3531E48411029205696613A609D4E162C994928408531536CA8C29
          0462355146FF00A60F984927FD21F109267F945DFA2FFFD2DCB79506C2959CA8
          80B9C97CCEA0D92B491E68EDB3E6AB02A72A684E98E51B6D35CD7220DC39F70F
          C550DE473F7846AF24B79D478A9E19A37AFA7FACC72C67A6ADA8044B4CF92196
          03E454DAE63F56983E49CBA3478FED05318C48BD2BBFE87FE80C60908B610A40
          2202DF1D1318080C606A0AB88AD0929478249D48B592493848052A13C2709894
          FA0B50BFE90F8849338FB87C424ABD8F719ABD2FFFD3DE7051DAA69C0581C365
          D1BA4510989472077417B6136512120DB1DC534905380A50A1322B94D79065A6
          0AB2CCBECFFBD55DA9478A9219A71D8AD3189DDB6E20EAC31F91445EE6983A7E
          455C48E0A7DC7F3B50A4F7EF51E897FCC5BC03FBCDD6580FD1307C11419E742B
          39A08D5864782B34DFF9AEFB8AB38B35E92F4FFD0639E3EA356CA709482120AC
          D30AFD90DC510F082E4A674545138FB87C525027DC3E292A77EA6C568FFFD4DE
          446A19041446AC286EE84991084F047C3F0560283D9E1A1524A363459196AD41
          CA20D541C21DC41536AA1314598ECCA136D524932D65B084F0A4991B4DB1220C
          8D0A2D6F63FDAF1AA1943313E0A5C790C4FEF47F74AAADD3635CD1FBCDFC54D5
          5C7B9D107DC3C55A9F0E16AE3946510435A4083AAFCA0D8D21166123A84F2011
          4B41A2D177D21F14911EC1BC7C46892A5C078E9B1C4385FFD5DD7182A6C286FE
          54D8B0227D4E891A361AA5099811837C55C846C3048D352CAF4F155F83AFDEB4
          5D59E46AAAD9583E4557CF87AB2427D180294A17B9854B74F92A2624164A6729
          A54495194A954CE541C96E4C4A202404F480751A157DB31A85429F357DB3B569
          F2DF2B5F2EEB4C27D0F0A0E2A3BA149C74B29679F789F1092839DEE1F14943C4
          38EED92BD2FF00FFD6DA74CA9B1D1CF09DF59E5BA8499E6B9E00893A56086E55
          0784626102A6F7694578312B4604886CD597CCBEE517B5AE1AFDE108BE14DAF9
          4D1901D0AB848D435ACA88F30AB96F82D22C9D5BF72AEFAC4EA36955F2E1EA19
          A193BB520A5B4FC958D8472A418A11857F1B5C30A90603E4AC7A63B6853ECF15
          20C2B4E4615B60EAAE3443505AC84703DAADE28D06199B44E43254DE844A8721
          A2BA2183BE90F8A4A448EFF249435ADDAFBD29FFD7E88B7BB4FC90E75F35E509
          2E7E577A3A03C5F5EA5EE0783F72B0750BC65256F171707A98A757A3EBEEE521
          F8AF204945FA49E8FB0873C6841F88522E91EE1F7AF1C493C71D1FDD41E1FF00
          09F60E38E137C1790249838AD2FB1B11345E3092B50DB56396EFB3E9D9224C2F
          18491375A21F62713DD09C179124AAE4F1648BEB892F234947AD2F7FFFD9}
        Style.VAlignment = vaCenter
        Style.AssignedValues = [savAlphaBlending, savAlphaBlending2, savBackColor, savBackColor2, savFont, savGradientMode, savVAlignment, savImage]
      end
      object stThirdGroupHeader: TdxNavBarStyleItem
        Style.AlphaBlending = 150
        Style.AlphaBlending2 = 150
        Style.BackColor = clOlive
        Style.BackColor2 = clLime
        Style.GradientMode = gmVertical
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.AssignedValues = [savAlphaBlending, savAlphaBlending2, savBackColor, savBackColor2, savFont, savGradientMode]
      end
      object stThirdGroupHeaderHotTracked: TdxNavBarStyleItem
        Style.AlphaBlending = 150
        Style.AlphaBlending2 = 150
        Style.BackColor = clLime
        Style.BackColor2 = clOlive
        Style.GradientMode = gmVertical
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.AssignedValues = [savAlphaBlending, savAlphaBlending2, savBackColor, savBackColor2, savFont, savGradientMode]
      end
      object stThirdGroupHeaderPressed: TdxNavBarStyleItem
        Style.AlphaBlending = 150
        Style.AlphaBlending2 = 150
        Style.BackColor = clLime
        Style.BackColor2 = clOlive
        Style.GradientMode = gmHorizontal
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlack
        Style.Font.Height = -11
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold, fsUnderline]
        Style.AssignedValues = [savAlphaBlending, savAlphaBlending2, savBackColor, savBackColor2, savFont, savGradientMode]
      end
    end
    object tvNavBar: TdxTreeViewControl [1]
      Left = 304
      Top = 28
      Width = 473
      Height = 384
      TabOrder = 1
      OptionsBehavior.ReadOnly = True
      OptionsSelection.HideSelection = False
      OnSelectionChanged = tvNavBarSelectionChanged
    end
    object btAddGroup: TcxButton [2]
      Left = 783
      Top = 28
      Width = 91
      Height = 25
      Caption = '&Add group'
      TabOrder = 2
      OnClick = btAddGroupClick
    end
    object btAddLink: TcxButton [3]
      Left = 783
      Top = 59
      Width = 91
      Height = 25
      Caption = 'A&dd Link'
      TabOrder = 3
      OnClick = btAddLinkClick
    end
    object btDeleteGroup: TcxButton [4]
      Left = 783
      Top = 90
      Width = 91
      Height = 25
      Caption = 'De&lete group'
      TabOrder = 4
      OnClick = btDeleteGroupClick
    end
    object btDeleteLink: TcxButton [5]
      Left = 783
      Top = 121
      Width = 91
      Height = 25
      Caption = 'Dele&te Link'
      TabOrder = 5
      OnClick = btDeleteLinkClick
    end
    object eGCaption: TcxTextEdit [6]
      Left = 413
      Top = 454
      Properties.OnChange = eGCaptionPropertiesChange
      Style.HotTrack = False
      TabOrder = 6
      Width = 445
    end
    object cbGSmallImageIndex: TcxImageComboBox [7]
      Left = 413
      Top = 556
      Properties.Images = imgSmall
      Properties.Items = <>
      Properties.OnChange = cbGSmallImageIndexPropertiesChange
      Style.HotTrack = False
      TabOrder = 7
      Width = 445
    end
    object cbGLargeImageIndex: TcxImageComboBox [8]
      Left = 413
      Top = 583
      Properties.Items = <>
      Properties.LargeImages = imgLarge
      Properties.OnChange = cbGLargeImageIndexPropertiesChange
      Style.HotTrack = False
      TabOrder = 8
      Width = 445
    end
    object eICaption: TcxTextEdit [9]
      Left = 10000
      Top = 10000
      Properties.OnChange = eICaptionPropertiesChange
      Style.HotTrack = False
      TabOrder = 9
      Visible = False
      Width = 445
    end
    object cbILargeImageIndex: TcxImageComboBox [10]
      Left = 10000
      Top = 10000
      Properties.Items = <>
      Properties.LargeImages = imgLarge
      Properties.OnChange = cbILargeImageIndexPropertiesChange
      Style.HotTrack = False
      TabOrder = 11
      Visible = False
      Width = 445
    end
    object cbISmallImageIndex: TcxImageComboBox [11]
      Left = 10000
      Top = 10000
      Properties.Images = imgSmall
      Properties.Items = <>
      Properties.OnChange = cbISmallImageIndexPropertiesChange
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Width = 445
    end
    object miStyle: TcxComboBox [12]
      Left = 899
      Top = 59
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = miStyleNewPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Width = 161
    end
    object miColorScheme: TcxComboBox [13]
      Left = 899
      Top = 102
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = miColorSchemePropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Width = 161
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
      ItemIndex = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Nav&Bar Groups - Links Hierarchy:'
      CaptionOptions.Layout = clTop
      Control = tvNavBar
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = ' '
      CaptionOptions.Layout = clTop
      Control = btAddGroup
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btAddLink
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btDeleteGroup
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btDeleteLink
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 91
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = lgMainGroup
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'NavBar:'
      CaptionOptions.Layout = clTop
      Control = nbMain
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 300
      ControlOptions.OriginalWidth = 286
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = tsSelectedGroupProps
      CaptionOptions.Text = 'Caption:'
      Control = eGCaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = tsSelectedItemProps
      CaptionOptions.Text = '&Caption:'
      Control = eICaption
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = tsSelectedItemProps
      AlignHorz = ahClient
      CaptionOptions.Text = 'Small image index:'
      Control = cbISmallImageIndex
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = tsSelectedItemProps
      CaptionOptions.Text = 'Large image index:'
      Control = cbILargeImageIndex
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = tsSelectedGroupProps
      AlignHorz = ahClient
      CaptionOptions.Text = 'Small image index:'
      Control = cbGSmallImageIndex
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = tsSelectedGroupProps
      AlignHorz = ahClient
      CaptionOptions.Text = 'Large image index:'
      Control = cbGLargeImageIndex
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'View:'
      CaptionOptions.Layout = clTop
      Control = miStyle
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lgProperties: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      Hidden = True
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = lgMainGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Index = 1
    end
    object tsSelectedItemProps: TdxLayoutGroup
      Parent = lgProperties
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Selected NavBar &Item Properties'
      ItemIndex = 2
      Index = 1
    end
    object tsSelectedGroupProps: TdxLayoutGroup
      Parent = lgProperties
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Selected NavBar &Group Properties'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = tsSelectedGroupProps
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object cbGExpanded: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'E&xpanded'
      OnClick = cbGExpandedClick
      Index = 0
    end
    object cbGVisible: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = '&Visible'
      OnClick = cbGVisibleClick
      Index = 1
    end
    object cbGShowAsIconView: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Show as i&con view'
      OnClick = cbGShowAsIconViewClick
      Index = 2
    end
    object cbGLinkUseSmallImages: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Links use &small images'
      OnClick = cbGLinkUseSmallImagesClick
      Index = 0
    end
    object cbGUseSmallImages: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Use s&mall images'
      OnClick = cbGUseSmallImagesClick
      Index = 1
    end
    object cbIVisible: TdxLayoutCheckBoxItem
      Parent = tsSelectedItemProps
      AlignHorz = ahLeft
      CaptionOptions.Text = '&Visible'
      OnClick = cbIVisibleClick
      Index = 2
    end
    object cbIEnabled: TdxLayoutCheckBoxItem
      Parent = tsSelectedItemProps
      CaptionOptions.Text = '&Enabled'
      OnClick = cbIEnabledClick
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Index = -1
    end
    object dxLayoutCheckBoxItem1: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actShowCaptions
      Index = 2
    end
    object dxLayoutCheckBoxItem2: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actShowSpecialGroup
      Index = 3
    end
    object dxLayoutCheckBoxItem3: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actAllowSelectLinks
      Index = 5
    end
    object dxLayoutCheckBoxItem4: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actEachGroupHasSelectedLink
      Index = 6
    end
    object dxLayoutCheckBoxItem5: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actShowGroupHints
      Index = 8
    end
    object dxLayoutCheckBoxItem6: TdxLayoutCheckBoxItem
      Parent = lgTools
      Action = actShowLinkHints
      Index = 9
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 7
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lgTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      CaptionOptions.Text = 'New Item'
      Index = -1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Color Scheme:'
      CaptionOptions.Layout = clTop
      Control = miColorScheme
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 432
    Top = 96
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object alMain: TActionList
    Left = 288
    Top = 104
    object actShowCaptions: TAction
      Category = 'Options'
      Caption = 'Show &Captions'
      OnExecute = actShowCaptionsExecute
    end
    object actShowSpecialGroup: TAction
      Category = 'Options'
      Caption = 'Show &Special Group'
      OnExecute = actShowSpecialGroupExecute
    end
    object actAllowSelectLinks: TAction
      Category = 'Options'
      Caption = 'Allow Se&lect Links'
      OnExecute = actAllowSelectLinksExecute
    end
    object actEachGroupHasSelectedLink: TAction
      Category = 'Options'
      Caption = 'Each Group &Has Selected Link'
      OnExecute = actEachGroupHasSelectedLinkExecute
    end
    object actShowGroupHints: TAction
      Category = 'Options'
      Caption = 'Show Group &Hints'
      OnExecute = actShowGroupHintsExecute
    end
    object actShowLinkHints: TAction
      Category = 'Options'
      Caption = 'Show Link H&ints'
      OnExecute = actShowLinkHintsExecute
    end
  end
  object imgLarge: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    Left = 136
    Top = 152
    Bitmap = {
      494C010114001800040020002000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B130A
      014C49280595A35A0DDE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000B130A
      014C49280595A35A0DDE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000404040C17171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF464646C800000000000000000000000000000000000000000000
      00000000000000000000000000000502002829170371723F08BACB7010F8D776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000502002829170371723F08BACB7010F8D776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      000B130A014C49280595A35A0DDED77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000B130A014C49280595A35A0DDED77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000502002829170371723F08BACB70
      10F8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000502002829170371723F08BACB70
      10F8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      032106062F7A0F0F73BE1717AEE91B1BCFFE1B1BCFFE1717B0EA0F0F75BF0606
      317D000004240000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000031F0B0B5AA71B1B
      CDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCFFE0C0C5EAB00000322000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF84480AC8000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030318581919BDF21B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1919BFF403031C5F0000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF84480AC8000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000050529711B1BCFFE1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF06062E7900000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD57510FE321C037C0000000E0000000C2D190376D37410FDD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000030318571B1BCFFE1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF04041C5F000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD57510FE321C037C0000000E0000000C2D190376D37410FDD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF4727059303020022864A0ACA8E4E0BCF0503002A4023048CD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000021D1919BBF11B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919BFF4000003220000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF4727059303020022864A0ACA8E4E0BCF0503002A4023048CD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF07040030653808AFD77610FFD77610FF633608AD0603002CD77610FFD776
      10FFD77610FFD77610FF0000000001000017633608AD683908B20201001B0000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B55A31B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0C0C5EAB0000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF07040030653808AFD77610FFD77610FF633608AD0603002CD77610FFD776
      10FFD77610FFD77610FF0000000001000017633608AD683908B20201001B0000
      000000000000000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000AA0580CDCD77610FFD77610FFA85C0DE200000004D77610FFD776
      10FFD77610FFD77610FF190E0258B6640EEBD77610FFD77610FFBC670EEF1F11
      026200000001000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000021E1B1BCBFC1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCFFE0000
      042400000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000AA0580CDCD77610FFD77610FFA85C0DE200000004D77610FFD776
      10FFD77610FFD77610FF190E0258B6640EEBD77610FFD77610FFBC670EEF1F11
      026200000001000000000000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000E9A550BD8D77610FFD77610FFA75C0DE100000003D77610FFD776
      10FFD77610FFD77610FFD77610FFB2610EE8160C0152140B0150B0610DE7D776
      10FF713E08B90301001F0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005052B751B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606
      317D00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0000000E9A550BD8D77610FFD77610FFA75C0DE100000003D77610FFD776
      10FFD77610FFD77610FFD77610FFB2610EE8160C0152140B0150B0610DE7D776
      10FF713E08B90301001F0000000000000000D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF0B06003B573006A2D77610FFD77610FF603507AB0603002CD77610FFD776
      10FFD77610FFD77610FF5C3207A7010000140000000000000000010000135A31
      07A5D77610FFC16A0FF22414026900000001D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E6BB71B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0F0F
      75BF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF0B06003B573006A2D77610FFD77610FF603507AB0603002CD77610FFD776
      10FFD77610FFD77610FF5C3207A7010000140000000000000000010000135A31
      07A5D77610FFC16A0FF22414026900000001D77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFD77610FFD77610FF000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FF522D069D0201001D774209BE81470AC60402002644250590D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000140B0150B0610DE7D77610FF784209BFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001616A4E21B1BD1FF1B1BD1FF1B1BD1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1717
      B0EA00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FF522D069D0201001D774209BE81470AC60402002644250590D77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000140B0150B0610DE7D77610FF784209BFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD57610FE3A20048501010018000000112B170373D37410FDD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000010000135A3107A5D77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001919C2F61B1BD1FF1B1BD1FF1B1BD1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1B
      CFFE00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD57610FE3A20048501010018000000112B170373D37410FDD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000010000135A3107A5D77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001919C2F61B1BD1FF1B1BD1FF1B1BD1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1B1B
      CFFE00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF7A4309C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001515A2E11B1BD1FF1B1BD1FF1B1BD1FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1BD1FF1B1BD1FF1B1BD1FF1717
      AEE900000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF7A4309C0000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E6AB51B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0F0F
      73BD00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000B4630EEAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000050529721B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0606
      2F7A00000000000000000000000000000000B4630EEAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000000000030B06003A3C2104879351
      0BD3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000B0D3E01A10000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000021C1B1BC9FB1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCDFD0000
      032200000000000000000000000000000000000000030B06003A3C2104879351
      0BD3D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E4101A50000000D000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000030100212715026D723F08BACD7010F9D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      0000000000000104002C186E02D6229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B519F1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0B0B5AA70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000030100212715026D723F08BACD7010F9D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF197002D80105002F0000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000D170C0154552E06A0B4630EEAD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000004160062209002F5229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000021A1818B7EF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1919BDF20000031F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000D170C0154552E06A0B4630EEAD776
      10FFD77610FFD77610FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF209202F60518
      0066000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030B06
      003A3C21048793510BD3000000000000000000000000000000000000000B0D3E
      01A1229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020214511B1BCFFE1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCFFE03031958000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030B06
      003A3C21048793510BD300000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF0E4101A50000000D00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000104002C186E02D6229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000040423691B1BCFFE1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BCFFE0505287000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF197002D80105002F000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004160062209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      000000000000000000000000000000000000020214511818B7EF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1818BBF1030318570000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209202F6051800660000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000413005A1F8C02F2229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      000000000000000000000000000000000000000000000000021A0B0B519F1B1B
      CAFB1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BCBFC0B0B55A30000021D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF1F8E02F40414005E0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000030027176801D0229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      021B050529720E0E6AB51515A3E11919C2F61919C2F61616A4E20E0E6BB70505
      2B750000021E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF176B02D300040029000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000090C38
      0199229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF0D3A019D0000000A00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000413005A1F8C02F2229C02FF229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF1F8E02F40414
      005E000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000030027176801D0229C02FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF176B02D3000400290000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000090C3801990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D3A019D0000000A000000000000
      00000000000000000000000000000000000000000000000000003B3B3BB97171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF404040C0000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF0000000000000000052E4484000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF052E44840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F23048B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B50606060EB717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF626262ED0D0D0D5600000000000000000000
      00000000000000000000000000000000000000000000000000003F3F3FBF2F2F
      2FA5111111660202022600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FF3F23048B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005B5B5BE5717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF626262ED00000000000000000000
      0000000000000000000000000000000000000000000000000000292929997171
      71FF717171FF717171FF9A9A9AE56A6A6AA52828286605050526000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FF3F23048B000000000000000000000000000000000000
      000D231302678C4D0BCE0603002C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E5A7171
      71FF717171FFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF052E44840000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FF3F23048B00000000080400314D2A0599C16A
      0FF2D77610FFD77610FF311B037B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      00000000000000000000000000000000000000000000000000000101011A7171
      71FFBBBBBBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14B1FFFF052E
      4484000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFA1580CDDD77610FFD77610FFD776
      10FFD77610FFD77610FF85490AC9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000008C8C
      8CD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF052E44840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD57510FE0201001A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5C99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF052E448400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003F23048BD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF231302670000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1F
      1F5AFFFFFFFFFFFFFFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF052E4484000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      0000000000000000000000000000090500360201001E00000000000000000000
      000000000002633608ADD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF6C3C08B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      021AFFFFFFFFFFFFFFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052E44840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF0000000000000000000000000000
      00000000000F241402698E4E0BCFD77610FFB6640EEB10090146000000000000
      0000000000000000000A864A0ACAD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFCB700FF80000000C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052E448400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000014B1FFFF14B1FFFF000000000000000009050036512C
      069CC56C0FF4D77610FFD77610FFD77610FFD77610FFD37410FD331C037D0000
      0002000000000000000001010018A65B0DE0D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF160C015400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052E4484000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004293C7C14B1FFFF0000000000000000130A014CA95D
      0DE2D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF6C3B
      08B50100001200000000000000000603002CBF690FF0D77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF573006A200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052E44840000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004293C7C0000000000000000000000000000
      000E48280595D47410FDD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFA35A0DDE08040032000000000000000010090147CF7210FBD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFB9650EED00000004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052E
      4484000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000B06003B98530BD6D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFC96E0FF720120264000000000000000022130266D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF0D070140000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004293C7C14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF052E44840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000007371E0482CE7110FAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF522C069D00000009000000003F23048BD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF4224058E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004293C7C14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF052E448400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000603002D84490AC8D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF8C4D0BCE03020022000000026336
      08ADD77610FFD77610FFD77610FFD77610FFD77610FFA1580CDD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004293C7C14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF052E4484000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000329160370C56C
      0FF4D77610FFD77610FFD77610FFD77610FFD77610FFBB670EEE120A014B0000
      000A864A0ACAD77610FFD77610FFD77610FFD77610FFD77610FF0603002C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000007171
      71FF717171FF0000000000000000717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000429
      3C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052E44840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000301
      0020713E08B9D77610FFD77610FFD77610FFD77610FFD77610FFD57510FE391F
      04840201001BA65B0DE0D77610FFD77610FFD77610FFD77610FF311B037B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF1255B5E10B0B519F00000003000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000011D10025EB8650EECD77610FFD77610FFD77610FFD77610FFD776
      10FF723F08BA0D070141BF690FF0D77610FFD77610FFD77610FF85490AC90000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF1255B5E11B1BCFFE1B1BD1FF0B0B53A1000000030000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF4E4E4ED4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010000165C3207A7D77610FFD77610FFD77610FFD776
      10FFD77610FFA85C0DE2331C037DCF7210FBD77610FFD77610FFD57510FE0201
      001A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF1255B5E11B1BCFFE1B1BD1FF1B1BD1FF1B1BD1FF0B0B53A10000
      0003000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000130A014CA95D0DE2D77610FFD776
      10FFD77610FFD77610FFCD7010F98F4E0BD0D77610FFD77610FFD77610FF2313
      0267000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000004293C7C14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF1255B5E11B1BCFFE1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0B0B
      53A10000000300000000000000000000000000000000000000001A1A1A7C7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000E48280595D474
      10FDD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF6C3C
      08B5000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004293C7C14B1FFFF14B1FFFF1255
      B5E11B1BCFFE1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF0B0B53A10000000300000000000000000000000000000000000000001A1A
      1A7C717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B06
      003B98530BD6D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFCB70
      0FF80000000C0000000000000000000000000000000000000000000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004293C7C1255B5E11B1B
      CFFE1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0B0B53A100000003000000000000000000000000000000000000
      00001A1A1A7C717171FF717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000007371E0482CE7110FAD77610FFD77610FFD77610FFD77610FFD776
      10FF160C01540000000000000000000000000000000000000000000000000000
      000000000000595959E3717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF606060EB0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003031C5E1B1B
      CDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0A0A4B9A00000002000000000000000000000000000000000000
      0000000000001A1A1A7C717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000603002D84490AC8D77610FFD77610FFD77610FFD776
      10FF573006A20000000000000000000000000000000000000000000000000000
      0000000000000909094A595959E3717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF5B5B5BE50B0B0B500000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      1C5E1B1BCDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF0A0A4B9A0000000200000000000000000000000000000000000000000000
      000000000000000000001A1A1A7C717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000329160370C56C0FF4D77610FFD776
      10FFB9650EED0000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000003031C5E1B1BCDFD1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0A0A
      4B9A000000020000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A7C717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF484848CC000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000003010020713E08B9D776
      10FFD77610FF0D07014000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007171
      71FF717171FFDBDBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3E3FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000003031C5E1B1BCDFD1B1BD1FF1B1BD1FF1B1BD1FF0A0A4B9A0000
      0002000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000011D10
      025EB8650EEC4224058E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005C5C
      5CE6717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF636363EE0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000003031C5E1B1BCDFD1B1BD1FF0A0A4B9A000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001000016391F048400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000808
      0847464646C9656565F16A6A6AF7717171FF717171FF6A6A6AF7666666F24848
      48CB0A0A0A4C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000003031C5E0A0A499700000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000434343C4717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF484848CC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E5C5E5E5EF06A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF606060F210101064000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000585858E86A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF606060F2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000020000000F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000D703D08B80301001F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000201001B6E3C08B701000013000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005E3407A9BC670EEF180D0257000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000150C0151B8650EEC6B3B08B400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000140B0150D77610FFD77610FF552E06A00000
      000D000000000000000000000000000000000000000000000000000000000000
      00000000000B4E2B069AD67610FED77610FF1B0F025B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001E1E1E84717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF606060F2101010640000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000007BB670EEED77610FFD77610FF9F58
      0CDC0A0500370000000000000000000000000000000000000000000000000804
      00329A550BD8D77610FFD77610FFC66D0FF50000000B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001E1E1E84717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF606060F20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000502C069CD77610FFD77610FFD776
      10FFCF7210FB311B037B000000030000000000000000000000022D190376CD70
      10F9D77610FFD77610FFD77610FF5C3207A70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E84717171FF717171FF1A1A1A7C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E080143D77610FFD77610FFD776
      10FFD77610FFD77610FF7B4309C10301001F0201001B754009BCD77610FFD776
      10FFD77610FFD77610FFD77610FF140B014E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E1E
      1E84717171FF717171FF1A1A1A7C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000003AF600DE6D77610FFD776
      10FFD77610FFD77610FFD77610FFBC670EEFB8650EECD77610FFD77610FFD776
      10FFD77610FFD77610FFBA660EED000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E847171
      71FF717171FF1A1A1A7C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF3F3F3FBF3F3F3FBF3F3F3FBF2C2C2C9F6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004325058FD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF4F2B069B000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B506060
      60EB717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF626262ED0D0D0D560000000000000000000000001E1E1E84717171FF7171
      71FF1A1A1A7C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000009050036D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF0D070141000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005B5B5BE57171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF626262ED00000000000000001E1E1E84717171FF717171FF1A1A
      1A7C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF606060F21010106400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009F570CDBD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFAD5F0DE500000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000717171FF717171FF1A1A1A7C0000
      000000000000000000000B0B0B50606060EB626262ED0D0D0D56000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF606060F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002010019904F0BD1D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A540BD80201001D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000717171FF717171FF000000000000
      000000000000000000005B5B5BE5717171FF717171FF626262ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000010090147B3630DE9D77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFB8650EEC140B014F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000717171FF717171FF000000000000
      00000000000000000000595959E3717171FF717171FF606060EB000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      00000000000000000000000000053E220489D57510FED77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD67610FE4526059100000008000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000717171FF717171FF1E1E1E840000
      000000000000000000000909094A595959E35B5B5BE50B0B0B50000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF555555E56A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF5E5E5EF0000000000000
      00086A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000301002184480AC8D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FF8C4D0BCE040200260000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000001A1A1A7C717171FF717171FF1E1E
      1E84000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF00000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0B0B0B53555555E56A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF575757E70E0E0E5C000000000909
      094B6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000170D0155BD680EEFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFC26B0FF31C0F
      025D000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF0000000000000000000000001A1A1A7C717171FF7171
      71FF1E1E1E840000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000104B4B
      4BD76A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000094D2A
      0599D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FF552F06A10000000C00000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF000000000000000000000000000000001A1A1A7C7171
      71FF717171FF1E1E1E8400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000110A0A0A514D4D4DD96A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF0000000000000000000000000603002B93500BD3D776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF9A550BD807040030000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000001A1A
      1A7C717171FF717171FF1E1E1E84000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000084480AC8D77610FFD77610FFD77610FFD77610FFD77610FFD77610FF9250
      0BD2000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00001A1A1A7C717171FF717171FF1E1E1E840000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000006A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024140269D77610FFD77610FFD77610FFD77610FFD77610FFD77610FF2A17
      0372000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000001A1A1A7C717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      00000000000000000000555555E56A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF5E5E5EF000000000000000086A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000011CA6E10F7D77610FFD77610FFD77610FFD77610FFCF7210FA0100
      0017000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000001A1A1A7C717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC00000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      000000000000000000000B0B0B53555555E56A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF575757E70E0E0E5C000000000909094B6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005E3307A9D77610FFD77610FFD77610FFD77610FF683908B20000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E5D3F3F3FBF3F3F3FBF111111630000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000104B4B4BD76A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011090149D77610FFD77610FFD77610FFD77610FF160C01520000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E5D3F3F3FBF3F3F3FBF1111
      1163000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003F3F3FBF3F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000110A0A0A514D4D4DD96A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000003AD5F0DE5D77610FFD77610FFB6640EEB000000060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E5D3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003D220489D77610FFD77610FF46260592000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000595959E37171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF606060EB00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E5D3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF282828990000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000005030029D77610FFD77610FF08040032000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909094A5959
      59E3717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF5B5B5BE50B0B0B5000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000555555E56A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF5E5E5EF000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084480AC892500BD200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B53555555E56A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF575757E70E0E0E5C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000241402692A17037200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000110100001700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000404040C1717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4646
      46C8000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000090C380199208E02F4229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF186C02D4000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C350196229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000404040C1717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF464646C80000000000000000000000000000
      000000000000000000001E8702EE229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFE4A45EFFFCF6
      EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDF7F1FFE5A764FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFDC86
      2AFFF5DDC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E0
      C8FFDC882EFFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000A35A0DDED77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFB0610DE700000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFF2D2B1FFDA80
      21FFD77712FFEAB781FFFEFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFCFFEBBB88FFD878
      13FFD97E1EFFF1CFABFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      00002615026CD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF2E19037600000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFBF0
      E5FFE1994CFFD77610FFDF9341FFF9EBDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEDE0FFE09646FFD77610FFE096
      47FFFAEEE1FFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000140B0150894B0BCCD57510FE311B037B0000000D0000000B2916
      0370CF7210FA884B0BCB180D0257000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFEFDFFECBF8FFFD87915FFD97C1BFFF0CBA3FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFDF7F1FFE5A764FFE4A45EFFFCF6EFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CEAAFFD97E1EFFD87814FFEBBB89FFFEFD
      FCFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      00000000000000000000000000010A0500380000000000000000000000000000
      0000050200280000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7E3CEFFDD8B33FFD77610FFE4A45EFFFCF6EFFFFFFF
      FFFFFFFFFFFFF6E0C8FFDC882EFFD77610FFD77610FFDC862AFFF5DDC3FFFFFF
      FFFFFFFFFFFFFDF7F1FFE5A764FFD77610FFDC892FFFF6E0C9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000000000000000000000000001381F0483C06A0FF1C36B0FF34124
      048D0000000400000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FFE7AC6CFFD77610FFDC862AFFF4DB
      C0FFEBBB88FFD87813FFD97E1EFFF1CFACFFF2D2B0FFDA8020FFD77712FFEAB7
      81FFF5DDC3FFDC882EFFD77610FFE5A866FFFDF7F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000070737840000
      0000000000000000000000000000000000000000000007073784000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      00000000000000000000000000002614026BD77610FFD77610FFD77610FFD776
      10FF3A20048500000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2B1FFDA8021FFD776
      10FFD77610FFE09748FFFAEEE2FFFFFFFFFFFFFFFFFFFBF0E4FFE1994BFFD776
      10FFD77610FFD97E1EFFF1CFABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF0707
      378400000000000000000000000000000000070737841B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000002A95D0DE2D77610FFD77610FFD77610FFD776
      10FFC76E0FF60000000F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1CEAAFFD97E1EFFD878
      14FFEBBC8AFFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFECBE
      8EFFD87915FFD97C1BFFF0CBA3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF070737840000000000000000070737841B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000000000002B180373D77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF4828059500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7F1FFE5A764FFD77610FFDC8930FFF6E1
      CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF7E3CDFFDD8B32FFD77610FFE4A45EFFFCF6EFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF07073784070737841B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000000000009D560CDAD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFBB670EEE000000050000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6E0C8FFDC882EFFD77610FFE6A967FFFDF8F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDF9F4FFE6AB6BFFD77610FFDC862AFFF5DDC3FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000000000008B4C0BCDD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FF8C4D0BCE000000010000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFEFDFCFFEBBB88FFD87813FFD97E1EFFF1CFACFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2B0FFDA8020FFD77712FFEAB781FFFEFC
      FAFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      00000000000000000000BC670EEFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFC56C0FF400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFAED
      E0FFE09646FFD77610FFE09748FFFAEEE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF0E4FFE1994BFFD77610FFDF93
      41FFF9EBDCFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      00000000000000000000BC670EEFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFAD5F0DE500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFF1CEA9FFD97E
      1EFFD87814FFEBBC8AFFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFECBE8EFFD879
      15FFD97C1BFFF0CBA3FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      000000000000000000005B3207A6D77610FFD77610FFD77610FFD77610FFD776
      10FF85490AC901000013000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFDC89
      30FFF6E1CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E3
      CDFFDD8B32FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000011562F06A2B8650EECC96E0FF7A65B0DE04E2B
      069A0101001800000000000000000000000000000000000000001C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C1C7F1C1C
      1C7F0000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFE6A967FFFDF8
      F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDF9F4FFE6AB6BFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      00000000000000000000229C02FF229C02FF0106003300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      000000000000000000001E8502EC229C02FF0108003B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFD77610FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF00000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000000000000000000000B320191229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000003B3B3BB9717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF404040C00000000000000000000000000000
      00000000000000000000000000070B3201911D8502EC229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF166301CC000000000000
      000000000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000000000
      000000000000000000003B3B3BB9717171FF717171FF717171FF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4040
      40C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E6DB91B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF0F0F77C0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000484848CC7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4E4E
      4ED4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFD87A17FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF8A8AE7FF8A8AE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFDA8222FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD97C1BFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF8A8AE7FF1B1BD1FF1B1BD1FF8A8AE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFE19A4CFFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFE09545FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFF8A8A
      E7FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF8A8AE7FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFF4D9BCFFD87814FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD87813FFF3D5B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFF8A8AE7FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF8A8AE7FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFF7E5D2FFE6AB6BFFDA8020FFD77610FFD77610FFD77610FFD776
      10FFD97E1EFFE6AA69FFF7E3CFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFF9191E9FF1B1B
      D1FF1B1BD1FF9191E9FF9191E9FF1B1BD1FF1B1BD1FF1B1BD1FF8A8AE7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF6EFFFDE8E39FFD77610FFD77610FFDD8C
      34FFFCF4ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFF9191
      E9FF9191E9FFFFFFFFFFFFFFFFFF9191E9FF1B1BD1FF1B1BD1FF1B1BD1FF8A8A
      E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7AD6EFFD77610FFD77610FFE6A8
      66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191E9FF1B1BD1FF1B1BD1FF1B1B
      D1FF8A8AE7FFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FFFFFFFFFFFFFFFFFF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E7D5FFD87813FFD77610FFD77610FFD777
      12FFF7E4CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191E9FF1B1BD1FF1B1B
      D1FF1B1BD1FF8A8AE7FFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FFFFFFFFFFFFFFFFFF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7AE70FFD77610FFD77610FFD77610FFD776
      10FFE6AA69FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191E9FF1B1B
      D1FF1B1BD1FF9191E9FFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFDD8A32FFD77610FFD77610FFD77610FFD776
      10FFDC862AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9191
      E9FF9191E9FFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD87A16FFD77610FFD77610FFD77610FFD776
      10FFD77711FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD97C1AFFD77610FFD77610FFD77610FFD776
      10FFD87915FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE7AD6DFFD77610FFD77610FFD77610FFD776
      10FFE6A866FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBF7FFE8B175FFDA8020FFD97E1EFFE7AE
      71FFFDF9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
      AAFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF00000000000000000000000000000000717171FF7171
      71FF00000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      000014B1FFFF14B1FFFF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF14B1FFFF14B1FFFF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014B1FFFF14B1FFFF14B1FFFF14B1FFFF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF000000000000000000000000000000000000000000000000717171FF7171
      71FF0000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000717171FF717171FF0000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000017171773717171FE717171FF717171FF717171FF717171FF717171FF1A1A
      1A7B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000434343C47171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF4848
      48CC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000080808443C3C3CBA656565F1666666F23E3E3EBD090909490000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
    DesignInfo = 9961608
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253696E676C655061676556696577223E0D0A09093C7061746820636C6173
          733D22426C61636B2220643D224D32372C30483343322E342C302C322C302E34
          2C322C3176323863302C302E362C302E342C312C312C3168323463302E362C30
          2C312D302E342C312D3156314332382C302E342C32372E362C302C32372C307A
          204D32362C3238483456326832325632387A222F3E0D0A09093C706174682063
          6C6173733D22426C75652220643D224D32322C384838563668313456387A204D
          32322C3130483876326831345631307A204D32322C3134483876326831345631
          347A204D32322C3138483876326831345631387A204D32322C32324838763268
          31345632327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D426C61636B7B6669
          6C6C3A233732373237323B7D262331333B262331303B2623393B2E437573746F
          6D57686974657B66696C6C3A234646464646463B7D262331333B262331303B26
          23393B2E437573746F6D426C75657B66696C6C3A233131373744373B7D262331
          333B262331303B2623393B2E7374307B6F7061636974793A302E363B7D3C2F73
          74796C653E0D0A3C7061746820636C6173733D22437573746F6D426C61636B22
          20643D224D302C36683332763232483056367A222F3E0D0A3C7061746820636C
          6173733D22437573746F6D57686974652220643D224D322C3868323876313848
          3256387A222F3E0D0A3C7061746820636C6173733D22437573746F6D426C7565
          2220643D224D31332C31392E3263322E352C302E372C332C312E362C332C342E
          38682D332E37483463302D332E322C302E352D342E312C332D342E3863312E33
          2D302E342C312E352D312E332C312E352D312E3743372E372C31362E362C372C
          31352C372C31332E3220202623393B63302D302E312C302D302E332C302D302E
          3543372C31312E332C382E342C31302C392E392C313063302C302C302C302C30
          2E312C3063302C302C302C302C302E312C3063312E352C302C322E392C312E33
          2C322E392C322E3763302C302E332C302C302E342C302C302E3520202623393B
          63302C312E382D302E372C332E342D312E352C342E334331312E352C31372E39
          2C31312E372C31382E382C31332C31392E327A222F3E0D0A3C672069643D22D0
          A1D0BBD0BED0B95F322220636C6173733D22737430223E0D0A09093C72656374
          20783D2231382220793D2232322220636C6173733D22437573746F6D426C6163
          6B222077696474683D22313022206865696768743D2232222F3E0D0A09093C72
          65637420783D2231382220793D2231382220636C6173733D22437573746F6D42
          6C61636B222077696474683D22313022206865696768743D2232222F3E0D0A09
          093C7265637420783D2231382220793D2231342220636C6173733D2243757374
          6F6D426C61636B222077696474683D22313022206865696768743D2232222F3E
          0D0A09093C7265637420783D2231382220793D2231302220636C6173733D2243
          7573746F6D426C61636B222077696474683D22313022206865696768743D2232
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D57686974657B6669
          6C6C3A234646464646463B7D262331333B262331303B2623393B2E437573746F
          6D426C61636B7B66696C6C3A233732373237323B7D262331333B262331303B26
          23393B2E437573746F6D59656C6C6F777B66696C6C3A234646423131353B7D26
          2331333B262331303B2623393B2E437573746F6D5265647B66696C6C3A234431
          314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B95F
          32223E0D0A09093C672069643D225461736B223E0D0A0909093C726563742078
          3D22342220793D22342220636C6173733D22437573746F6D59656C6C6F772220
          77696474683D22323422206865696768743D223238222F3E0D0A0909093C706F
          6C79676F6E20636C6173733D22437573746F6D426C61636B2220706F696E7473
          3D2232362C333020362C333020362C362032322C362032362C362032362C3130
          202623393B2623393B222F3E0D0A0909093C706F6C796C696E6520636C617373
          3D22437573746F6D57686974652220706F696E74733D2232342C323820382C32
          3820382C382032302C382032342C382032342C3132202623393B2623393B222F
          3E0D0A0909093C7061746820636C6173733D22437573746F6D426C61636B2220
          643D224D32342C364838563268346C302E362D302E364331332E352C302E352C
          31342E372C302C31362C30683063312E332C302C322E352C302E352C332E342C
          312E344C32302C32683456367A222F3E0D0A0909093C7061746820636C617373
          3D22437573746F6D5265642220643D224D31322C31386C2D322C326C342C346C
          382D386C2D322D326C2D362C364C31322C3138222F3E0D0A09093C2F673E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D426C61636B7B6669
          6C6C3A233732373237323B7D262331333B262331303B2623393B2E437573746F
          6D5265647B66696C6C3A234431314331433B7D262331333B262331303B262339
          3B2E437573746F6D57686974657B66696C6C3A234646464646463B7D26233133
          3B262331303B2623393B2E7374307B6F7061636974793A302E363B7D3C2F7374
          796C653E0D0A3C706F6C79676F6E20636C6173733D22437573746F6D426C6163
          6B2220706F696E74733D2232362C342032362C382032302C382032302C342031
          302C342031302C3820342C3820342C3420322C3420322C32382032382C323820
          32382C3420222F3E0D0A3C7061746820636C6173733D22437573746F6D576869
          74652220643D224D342C313268323276313448345631327A222F3E0D0A3C7061
          746820636C6173733D22437573746F6D426C61636B2220643D224D362C366832
          5632483656367A204D32322C327634683256324832327A222F3E0D0A3C706174
          6820636C6173733D22437573746F6D5265642220643D224D31302C3230762D36
          683676364831307A204D31322C313676326832762D324831327A222F3E0D0A3C
          672069643D22D0A1D0BBD0BED0B95F322220636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22437573746F6D426C61636B2220643D224D
          362C32346832762D3248365632347A204D362C32306832762D3248365632307A
          204D362C31366832762D3248365631367A204D31302C32346832762D32682D32
          5632347A204D31342C32346832762D32682D325632347A204D31382C32306832
          762D32682D3220202623393B2623393B5632307A204D31382C31366832762D32
          682D325631367A204D32322C313476326832762D324832327A222F3E0D0A0909
          3C7265637420783D2231382220793D2232322220636C6173733D22437573746F
          6D426C61636B222077696474683D223222206865696768743D2232222F3E0D0A
          09093C7265637420783D2232322220793D2231382220636C6173733D22437573
          746F6D426C61636B222077696474683D223222206865696768743D2232222F3E
          0D0A09093C7265637420783D2232322220793D2232322220636C6173733D2243
          7573746F6D426C61636B222077696474683D223222206865696768743D223222
          2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2243617264223E0D0A09093C706174
          6820636C6173733D22426C61636B2220643D224D33312C34483143302E352C34
          2C302C342E352C302C3576323063302C302E352C302E352C312C312C31683330
          63302E352C302C312D302E352C312D3156354333322C342E352C33312E352C34
          2C33312C347A204D33302C3234483256366832385632347A222F3E0D0A09093C
          6720636C6173733D22737430223E0D0A0909093C7061746820636C6173733D22
          426C61636B2220643D224D32382C313048313856386831305631307A204D3238
          2C313248313876326831305631327A204D32382C313648313876326831305631
          367A204D32382C323048313876326831305632307A222F3E0D0A09093C2F673E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D31362C3232
          483463302E342D322E382C322E342D322E332C332E352D332E3543382E312C31
          392E342C382E392C32302C31302C323063312E312C302C312E392D302E362C32
          2E352D312E344331332E372C31392E372C31352E362C31392E322C31362C3232
          7A20202623393B2623393B204D362E392C31342E3876302E3143372E332C3136
          2E342C382E322C31382C31302C313873322E382D312E362C332E322D332E3176
          2D302E3163302E372C302C302E342D302E372C302E362D3173302E332D302E35
          2C302E322D302E39632D302E312D302E332D302E332D302E322D302E342D302E
          3220202623393B2623393B63312E322D332E312D302E372D322E392D302E372D
          322E395331322E372C382C392E322C3843362C382C352E362C31302E352C362E
          332C31322E3763302C302E312D302E322C302E312D302E332C302E32632D302E
          312C302E342C302E312C302E362C302E332C302E3953362E322C31342E382C36
          2E392C31342E387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2242
          6F6F6B223E0D0A09093C7061746820636C6173733D22477265656E2220643D22
          4D392C36683137563563302D302E362D302E342D312D312D31483943372E332C
          342C362C352E332C362C3776313863302C312E372C312E332C332C332C336831
          3663302E362C302C312D302E342C312D315638483943382E342C382C382C372E
          362C382C3720202623393B2623393B53382E342C362C392C367A222F3E0D0A09
          3C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D57686974657B6669
          6C6C3A234646464646463B7D262331333B262331303B2623393B2E437573746F
          6D426C75657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C67
          2069643D224D61696C223E0D0A09093C7265637420793D22342220636C617373
          3D22437573746F6D426C7565222077696474683D22333222206865696768743D
          223234222F3E0D0A09093C7265637420783D22322220793D22362220636C6173
          733D22437573746F6D5768697465222077696474683D22323822206865696768
          743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D2243757374
          6F6D426C75652220706F696E74733D2233302C382031362C313820322C382032
          2C31302031302E342C313620322C323220322C32342031312E382C3137203136
          2C32302032302E322C31372033302C32342033302C32322032312E362C313620
          33302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2242
          6F6F6B6D61726B2220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32372C34483743362E352C342C362C342E352C362C35763234
          63302C302E352C302E352C312C312C3168323063302E352C302C312D302E352C
          312D3156354332382C342E352C32372E352C342C32372C347A204D32362C3238
          483856366831385632387A222F3E0D0A3C7061746820636C6173733D22526564
          2220643D224D31372C32682D36632D302E352C302D312C302E352D312C317631
          356C342D346C342C3456334331382C322E352C31372E352C322C31372C327A22
          2F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224E
          616D655F4D616E616765722220786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474
          703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070
          782220793D22307078222076696577426F783D22302030203332203332222073
          74796C653D22656E61626C652D6261636B67726F756E643A6E65772030203020
          33322033323B2220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C7374796C6520747970653D22746578742F6373732220786D
          6C3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E7374307B6F70616369
          74793A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22
          426C61636B2220643D224D32372C3848376C2D372C3776346C372C376C32302C
          3063302E362C302C312D302E342C312D3156394332382C382E342C32372E362C
          382C32372C387A204D32362C323448386C2D362D36762D326C362D3668313856
          32347A204D32322C3136682D38762D32683820202623393B5631367A204D3232
          2C3230682D38762D3268385632307A204D31302C313763302C312E312D302E39
          2C322D322C32632D312E312C302D322D302E392D322D3273302E392D322C322D
          3243392E312C31352C31302C31352E392C31302C31377A222F3E0D0A3C672063
          6C6173733D22737430223E0D0A09093C7061746820636C6173733D22426C6163
          6B2220643D224D33312C344831314C372C3868336C322D32683138763134682D
          327632683363302E362C302C312D302E342C312D3156354333322C342E342C33
          312E362C342C33312C347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D226261636B636F6C6F722220643D224D31342C3148374336
          2E342C312C362C312E342C362C327631683563312E312C302C322C302E392C32
          2C327635683163302E362C302C312D302E342C312D3156324331352C312E342C
          31342E362C312C31342C317A222F3E0D0A3C7061746820636C6173733D226261
          636B636F6C6F722220643D224D31312C34483443332E342C342C332C342E342C
          332C357631683563312E312C302C322C302E392C322C327635683163302E362C
          302C312D302E342C312D3156354331322C342E342C31312E362C342C31312C34
          7A222F3E0D0A3C7061746820636C6173733D226261636B636F6C6F722220643D
          224D382C37483143302E342C372C302C372E342C302C38763763302C302E362C
          302E342C312C312C31683763302E362C302C312D302E342C312D31563843392C
          372E342C382E362C372C382C377A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020323420323422207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203234203234
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E47726170686963205374796C657B66696C
          6C3A233732373237323B7D262331333B262331303B2623393B2E5265647B6669
          6C6C3A234431314331433B7D262331333B262331303B2623393B2E59656C6C6F
          777B66696C6C3A234646423131353B7D262331333B262331303B2623393B2E42
          6C75657B66696C6C3A233131373744373B7D262331333B262331303B2623393B
          2E7374307B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706F
          6C79676F6E20636C6173733D22426C75652220706F696E74733D2231322C3120
          31352C392032332C392031362E322C31342031392C32322031322C313720352C
          323220372E382C313420312C3920392C3920222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C672069643D2244
          65736B746F7057696E646F7773223E0D0A09093C7061746820636C6173733D22
          426C61636B2220643D224D32382C34483443322E392C342C322C342E392C322C
          3676313463302C312E312C302E392C322C322C32683876344838763268313676
          2D32682D34762D34683863312E312C302C322D302E392C322D3256364333302C
          342E392C32392E312C342C32382C347A20202623393B2623393B204D32382C32
          30483456366832345632307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D
          2259656C6C6F772220706F696E74733D2233322C33302033302C33322033302C
          32302033322C313820222F3E0D0A3C7265637420793D2232302220636C617373
          3D2259656C6C6F77222077696474683D22323822206865696768743D22313222
          2F3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D342C3132
          68326832683163302E362C302C312D302E342C312D3156366831347631326832
          563563302D302E362D302E342D312D312D314831305632683138763136683256
          3163302D302E362D302E342D312D312D31483943382E342C302C382C302E342C
          382C3120202623393B76334C362C366C2D342C347632763668325631327A222F
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2253
          656E64223E0D0A09093C706F6C79676F6E20636C6173733D22426C7565222070
          6F696E74733D22322C323020382C32322E342032342C31302031322C32342031
          322C33302031362E332C32352E372032322C32382033302C32202623393B222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E7374307B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E7374317B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C7061746820636C6173733D2273743022
          20643D224D32352C36682D3463302D302E332C302D302E362C302D3156346330
          2D322D322D322D342D32682D326C302C30632D322C302D342C302D342C327631
          63302C302E342C302C302E372C302C31483743352E392C362C352C362E392C35
          2C38763268326831386832563820202623393B4332372C362E392C32362E312C
          362C32352C367A222F3E0D0A3C7061746820636C6173733D227374312220643D
          224D31382C34682D34632D302E352C302D312C302E342D312C316C302C306330
          2C302E352C302C312C302C31683663302C302C302D302E342C302D316C302C30
          4331392C342E342C31382E362C342C31382C347A222F3E0D0A3C706174682063
          6C6173733D227374302220643D224D372C313276313663302C312E312C302E39
          2C322C322C3268313463312E312C302C322D302E392C322D3273302D31362C30
          2D313648377A204D31312C3238483956313468325632387A204D31352C323868
          2D3256313468325632387A204D31392C3238682D3256313420202623393B6832
          5632387A204D32332C3238682D3256313468325632387A222F3E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E57686974657B66696C
          6C3A234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D2259656C6C6F772220643D224D342C32324C31382C386C362C364C31302C32
          384C342C32327A222F3E0D0A3C7061746820636C6173733D225265642220643D
          224D31382E312C386C362D366C362C366C2D362C364C31382E312C387A222F3E
          0D0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E74733D
          2231302C323620382C323620382C323420362C323420362C323220342C323220
          332E322C32352E3220362E382C32382E382031302C323820222F3E0D0A3C706F
          6C79676F6E20636C6173733D22426C61636B2220706F696E74733D22322C3330
          20362E382C32382E3820332E322C32352E3220222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D224F75746C6F6F6B496D706F7274223E0D0A09093C706F6C79676F6E2063
          6C6173733D22477265656E2220706F696E74733D2233322C342032342C342032
          342C302031362C362032342C31322032342C382033322C38202623393B222F3E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
          48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
          2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
          2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
          2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
          2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
          322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
          372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
          393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
          302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
          68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
          326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
          302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
          322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
          2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
          32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
          312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
          2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2252
          656D6F7665436972636C6564223E0D0A09093C7061746820636C6173733D2252
          65642220643D224D31362C3443392E342C342C342C392E342C342C313673352E
          342C31322C31322C31327331322D352E342C31322D31325332322E362C342C31
          362C347A204D32342C31384838762D346831365631387A222F3E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D224F75746C6F6F6B4578706F7274223E0D0A09093C706F6C79676F6E2063
          6C6173733D22477265656E2220706F696E74733D2231362C342032342C342032
          342C302033322C362032342C31322032342C382031362C38202623393B222F3E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
          48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
          2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
          2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
          2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
          2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
          322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
          372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
          393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
          302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
          68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
          326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
          302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
          322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
          2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
          32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
          312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
          2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D22456D706C6F79656553756D6D6172
          79223E0D0A09093C7061746820636C6173733D22426C75652220643D224D3132
          2C32364838762D3668345632367A204D31382C3138682D34763868345631387A
          204D32342C3136682D3476313068345631367A222F3E0D0A09093C7061746820
          636C6173733D22426C61636B2220643D224D32392C30483343322E352C302C32
          2C302E352C322C3176333063302C302E352C302E352C312C312C316832366330
          2E352C302C312D302E352C312D3156314333302C302E352C32392E352C302C32
          392C307A204D32382C3330483456326832345633307A20202623393B2623393B
          204D32342C384838563668313656387A204D32342C31324838762D3268313656
          31327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object imgSmall: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    Left = 136
    Top = 96
    Bitmap = {
      494C010114001800040010001000FFFFFFFF2100FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000006000000001002000000000000060
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A120A014B47270593A0580CDC000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000A120A014B47270593A0580CDC000000000000000000000000000000000000
      00000000000000000000000000000000000000000000636363EF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF656565F100000000040200262816036F703D08B8C96E
      0FF7D77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000040200262816036F703D08B8C96E
      0FF7D77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000805052971121287CD1A1AC7F91A1AC7F9121289CF05052A730000
      000900000000000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC06A0FF10000000000000000000000000000000000000000000000000000
      021C12128DD21B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1313
      90D40000021E000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC06A0FF100000000000000000000000000000000717171FF000000000000
      0000D77610FFD77610FF00000000D77610FFD77610FF00000000D77610FFD776
      10FF0000000000000000717171FF00000000D77610FFD77610FF4023048B2715
      026D3E22048AD77610FFD77610FF000000000000000000000000000000000000
      0000D77610FF0000000000000000000000000000000000000000000000071212
      8DD11B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF131390D4000000090000000000000000D77610FFD77610FF4023048B2715
      026D3E22048AD77610FFD77610FF000000000000000000000000000000000000
      0000D77610FF00000000000000000000000000000000717171FF000000000000
      0000D77610FFD77610FF00000000D77610FFD77610FF00000000D77610FFD776
      10FF0000000000000000717171FF00000000D77610FFD77610FF2A170372D776
      10FF29160370D77610FFD77610FF180D025698530BD71B0E025B000000000000
      0000D77610FF00000000000000000000000000000000000000000505276F1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF05052A730000000000000000D77610FFD77610FF2A170372D776
      10FF29160370D77610FFD77610FF180D025698530BD71B0E025B000000000000
      0000D77610FF00000000000000000000000000000000717171FF000000000000
      0000D77610FFD77610FF00000000D77610FFD77610FF00000000D77610FFD776
      10FF0000000000000000717171FF00000000D77610FFD77610FF29170371D776
      10FF2816036FD77610FFD77610FF5E3407A9050300295C3207A7683908B20201
      001BD77610FF0000000000000000000000000000000000000000111183CA1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF121288CE0000000000000000D77610FFD77610FF29170371D776
      10FF2816036FD77610FFD77610FF5E3407A9050300295C3207A7683908B20201
      001BD77610FF00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000D77610FFD77610FF00000000D77610FFD776
      10FF0000000000000000717171FF00000000D77610FFD77610FF4325058F2514
      026B3E220489D77610FFD77610FF000000000000000000000000160C01529B55
      0BD8D77610FF00000000000000000000000000000000000000001919C2F61B1B
      D1FF000000000000000000000000000000000000000000000000000000000000
      00001B1BD1FF1A1AC7F90000000000000000D77610FFD77610FF4325058F2514
      026B3E220489D77610FFD77610FF000000000000000000000000160C01529B55
      0BD8D77610FF00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000D77610FFD776
      10FF0000000000000000717171FF00000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFBD680EEF00000000000000000000000000000000000000001919C1F51B1B
      D1FF000000000000000000000000000000000000000000000000000000000000
      00001B1BD1FF1A1AC7F90000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFBD680EEF00000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF00000000CF7210FAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111182C91B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF121287CD0000000000000000CF7210FAD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000F180D0256573007A3B865
      0EECD77610FFD77610FFD77610FF0000000000000000000000000000000B0D3D
      01A00000000000000000000000000000000000000000000000000505266D1B1B
      D1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF1B1BD1FF0505297100000000000000000000000F180D0256573007A3B865
      0EECD77610FFD77610FFD77610FF000000000000000000000000000000000000
      00000D3E01A20000000C000000000000000000000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      00030C06003D3E22048997530BD600000000000000000104002B186C02D5229C
      02FF000000000000000000000000000000000000000000000000000000071212
      8ACF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1B
      D1FF12128DD20000000800000000000000000000000000000000000000000000
      00030C06003D3E22048997530BD6000000000000000000000000000000000000
      0000229C02FF186E02D60104002D0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      00000000000000000000000000000000000004160061209002F5229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      021A12128ACF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF1212
      8DD10000021C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF209002F50517006300000000717171FF000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF0000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000414005D1F8E02F3229C02FF229C
      02FF229C02FF229C02FF229C02FF229C02FF0000000000000000000000000000
      0000000000070505266D111182C91919C1F51919C1F5111184CB0505276F0000
      0007000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000229C02FF229C02FF229C02FF229C
      02FF229C02FF229C02FF208E02F40415005F00000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000040029176A01D2229C
      02FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000229C02FF186C02D40004002A0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000A0C3A
      019C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000D3B019E0000000A000000000000000000000000626262ED717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF636363EF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003A200485000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A4E6D6D6DFA717171FF717171FF717171FF717171FF717171FF717171FF6D6D
      6DFA0B0B0B5100000000000000000000000000000000404040BF2E2E2EA22020
      2063040404230000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FF3A2004850000000C221302668B4C0BCD0503
      002A000000000000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C80000000000000000000000000000000002A2A2A9CBABABAFFFFFF
      FFFFFFFFFFFF052D428200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D77610FFD77610FFC86E0FF6D77610FFD77610FF2F1A
      0378000000000000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C80000000000000000000000000000000001D1D1D5DFFFFFFFFFFFF
      FFFF14B1FFFF14B1FFFF052D4282000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF717171FF717171FF717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000E00000008000000004224048ED77610FFD77610FFD77610FFD77610FF8147
      0AC6000000000000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C80000000000000000000000000000000000303031DFFFFFFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000000000000000000000000000
      00000000000000000000000000000000000000000000454545C8717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF484848CC0000000000000000090500354F2B069BC36B
      0FF3884B0BCB0301002000000003673808B0D77610FFD77610FFD77610FFD374
      10FD010100180000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C800000000000000000000000000000000000000000042A3E7E14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D428200000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF0000000000000000140B014FAB5E0DE4D776
      10FFD77610FFB8650EEC110901490000000B894B0BCCD77610FFD77610FFD776
      10FF211202650000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C80000000000000000000000000000000000000000000000000042A
      3E7E14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D4282000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF0000000000000000000000000000000F4C2A
      0598D57510FED77610FFD37410FD361E04800201001CA95C0DE2D77610FFD776
      10FF6A3A08B30000000000000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C800000000000000000000000000000000000000000000000000000
      0000042A3E7E14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D42820000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      00000C07003E9B550BD8D77610FFD77610FF6E3C08B70D070141C16A0FF2D776
      10FFC86E0FF60000000B00000000000000000000000000000000000000001C1C
      1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C1C801C1C
      1C801C1C1C800000000000000000000000000000000000000000000000000000
      000000000000042A3E7E14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF052D
      42820000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000000000083A200485CF7210FAD77610FFA65B0DE0341D037ED072
      10FBD77610FF150C015100000000000000000000000000000000000000001C1C
      1C80717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF1C1C1C800000000000000000000000000000000000000000000000000000
      00000000000000000000042A3E7E14B1FFFF14B1FFFF14B1FFFF14B1FFFF155D
      CDEF0909429000000001000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      00000000000000000000000000000704002F884B0BCBD77610FFCB7010F88F4E
      0BD0D77610FF532D069F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000042A3E7E14B1FFFF14B1FFFF155DCDEF1B1B
      D1FF1B1BD1FF09094391000000010000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000032B180373C66D0FF5D776
      10FFD77610FFB6640EEB000000030000000000000000000000001C1C1C807171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF1C1C1C8000000000000000000000000000000000000000000000
      000000000000000000000000000000000000042A3E7E155DCDEF1B1BD1FF1B1B
      D1FF1B1BD1FF1B1BD1FF090943910000000100000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000003020022743F
      09BBD77610FFD77610FF0C07003E0000000000000000000000000909094B6B6B
      6BF8717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF6B6B6BF80A0A0A4F00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000505266E1B1BCFFE1B1B
      D1FF1B1BD1FF1B1BD1FF08083F8D0000000000000000424242C3717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF454545C8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00011F110261BA660EED4023048C000000000000000000000000000000000000
      0000000000001C1C1C80B0B0B0FFFFFFFFFFFFFFFFFFB2B2B2FF1C1C1C800000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000505266E1B1B
      CFFE1B1BD1FF08083F8D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010100183A200485000000000000000000000000000000000000
      0000000000000A0A0A4C626262EE6F6F6FFD6F6F6FFD636363EF0A0A0A4F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      266E08083E8C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000444444CD6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF484848D200000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000052D42820000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000014B1FFFF0000000000000000000000000905
      0035000000080000000000000000000000000000000000000000000000000000
      0007090500370000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF00000000000000000000
      00000000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000014B1FFFF0000000000000000000000000C07
      003E90500BD10603002B00000000000000000000000000000000050300298D4D
      0BCF0F0801440000000000000000000000000000000000000000010101215757
      57E0717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF676767F400000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF4848
      48D20000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000014B1FFFF0000000000000000000000000000
      0002A95D0DE2C86E0FF62514026B000000010000000023130268C76D0FF5AF61
      0DE6000000030000000000000000000000000000000001010121575757E01B1B
      1B7E000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A
      6AFF0000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000014B1FFFF0000000000000000000000000000
      00003F23048BD77610FFD77610FF6A3A08B3673808B1D77610FFD77610FF4425
      05900000000000000000000000000000000001010121575757E01B1B1B7E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF3F3F3FBF393939B76A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A
      6AFF0000000000000000000000000000000014B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF0000000014B1FFFF0000000000000000000000000000
      000008040031D77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0905
      003700000000000000000000000000000000575757E01B1B1B7E000000000A0A
      0A4F0B0B0B510000000000000000717171FF717171FF717171FF717171FF0000
      000000000000717171FF000000003F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A
      6AFF000000006A6A6AFF484848D2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000042A3E7E0000000000000000000000000000
      000000000006B6640EEBD77610FFD77610FFD77610FFD77610FFBB670EEE0000
      000800000000000000000000000000000000717171FF00000000000000006565
      65F1696969F50000000000000000000000000000000000000000000000000000
      000000000000717171FF000000003F3F3FBF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000006A6A6AFF6A6A
      6AFF000000006A6A6AFF6A6A6AFF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000000000000000000000000000402
      0024884B0BCBD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF8C4D
      0BCE04020026000000000000000000000000555555DE1D1D1D82000000000909
      094B0A0A0A4D0000000000000000717171FF717171FF717171FF717171FF0000
      000000000000717171FF000000003F3F3FBF414141C76A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF444444CD000000156A6A6AFF6A6A
      6AFF000000006A6A6AFF6A6A6AFF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF0000000000000000000000001A0E0259C06A
      0FF1D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFC36B0FF31C0F025D00000000000000000101011F555555DE1D1D1D820000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000003F3F3FBF0000000000000000000000000000
      00000000000000000000000000000000000000000019323232B06A6A6AFF6A6A
      6AFF000000006A6A6AFF6A6A6AFF0000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000000000B512C069DD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FF562F06A10000000C000000000101011F555555DE1D1D
      1D82000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF000000003F3F3FBF0000000000000000000000006A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF000000006A6A6AFF6A6A6AFF0000000000000000717171FF717171FF7171
      71FF676767F40000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000000000000000000000000000000
      00000000000000000000894B0BCCD77610FFD77610FF8F4E0BD0000000000000
      00000000000000000000000000000000000000000000000000000101011F5555
      55DE717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F2000000003F3F3FBF0000000000000000000000004141
      41C76A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF4444
      44CD000000156A6A6AFF6A6A6AFF00000000000000001B1B1B7E717171FF7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000000000000000000000000000000
      000000000000000000002615026CD77610FFD77610FF29170371000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00172F2F2FA61010106100000000000000000000000000000000000000000000
      00000000000000000000000000003F3F3FBF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0019323232B06A6A6AFF6A6A6AFF0000000000000000000000001B1B1B7E7171
      71FF717171FF0000000000000000000000000000000000000000000000000000
      0000717171FF00000000717171FF000000000000000000000000000000000000
      0000000000000000000001000013CC7010F8CF7210FA01000016000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000172F2F2FA63F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F3FBF3F3F
      3FBF3F3F3FBF3F3F3FBF3F3F3FBF393939B50000000000000000000000000000
      000000000000000000006A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF6A6A6AFF000000000000000000000000000000001B1B
      1B7E717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF666666F200000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000623507AC673808B100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000414141C76A6A6AFF6A6A6AFF6A6A6AFF6A6A6AFF6A6A
      6AFF6A6A6AFF6A6A6AFF444444CD000000000000000000000000000000000000
      0000717171FF0000000000000000000000000000000000000000000000000000
      00000000000000000000717171FF000000000000000000000000000000000000
      0000000000000000000000000000130A014C150C015100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000646464F0717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF666666F2000000000000000000000000000000000000
      0000000000000000000000000000000000040000000600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006363
      63EF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF656565F100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B30
      018E229802FC229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF208E02F4000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000636363EF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF656565F10000000000000000000000002196
      02FB229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFE5A662FFFDF6F0FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDF7F1FFE5A765FFD77610FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF0000000092500BD2D776
      10FFD77610FFD77610FFD77610FF98530BD7000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFF1D0ADFFDE903CFFF5DE
      C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E0C8FFDE903CFFF1CFAAFFD77610FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF0000000001000014361E
      0481030200220301001F311B037B010000160000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFFFFFFFFFFAEFE3FFE199
      4CFFEAB985FFFEFDFBFFFDF7F1FFE5A765FFE5A662FFFDF6F0FFFEFDFCFFEBBB
      88FFE1984AFFFAEEE1FFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF00000000000000000201
      001BA0580CDCA65B0DE00302002200000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFFFFFFFFFFFFFFFFFFFFD
      FCFFECBD8BFFE09646FFDF903CFFF1CFABFFF1D0ADFFDE903BFFE09748FFEBBB
      88FFFEFDFCFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000000707358200000000000000000707358200000000000000000000
      000000000000717171FF0000000000000000717171FF00000000000000004929
      0596D77610FFD77610FF5B3207A6000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFFFFFFFFFFFFFFFFFFEFD
      FCFFEBBB88FFE1984AFFFAEEE1FFFFFFFFFFFFFFFFFFFAEFE2FFE1994CFFEAB9
      85FFFEFDFBFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000001B1BD1FF07073582070735821B1BD1FF00000000000000000000
      000000000000717171FF0000000000000000717171FF0000000000000000B463
      0EE9D77610FFD77610FFBC670EEF00000002000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFFFFFFFFFFAEDE0FFE198
      4AFFEBBC89FFFEFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFECBD
      8BFFE09748FFFAECDEFFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000000
      000000000000717171FF0000000000000000717171FF0000000000000000C96E
      0FF7D77610FFD77610FFC76E0FF6000000000000000000000000000000000000
      0000000000000000000000000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFF1CEAAFFDF913DFFF6E0
      C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E1CBFFDF913DFFF0CDA7FFD77610FF0000000000000000000000007171
      71FF000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000000
      000000000000717171FF0000000000000000717171FF00000000000000004929
      0596CB7010F8A35A0DDE0C06003D00000000000000001C1C1C7F1C1C1C7F1C1C
      1C7F1C1C1C7F1C1C1C7F00000000717171FF000000000000000000000000229C
      02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF229C02FF000000000000000000000000D77610FFE5A866FFFDF7F2FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFDF8F3FFE6A968FFD77610FF0000000000000000000000007171
      71FF000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000000
      000000000000717171FF0000000000000000717171FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000717171FF0000000000000000000000002196
      02FA0001001C0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D77610FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD77610FF0000000000000000000000007171
      71FF000000001B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF00000000000000000000
      000000000000717171FF0000000000000000626262ED717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF636363EF0000000000000000000000000A2D
      018A219602FA229C02FF229C02FF229C02FF229C02FF229C02FF229C02FF229C
      02FF1F8C02F2000000000000000000000000D77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD776
      10FFD77610FFD77610FFD77610FFD77610FF0000000000000000000000006262
      62ED717171FF1B1BD1FF1B1BD1FF1B1BD1FF1B1BD1FF717171FF717171FF7171
      71FF717171FF636363EF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818B5ED1B1BD1FF1B1BD1FF1818B7EF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1FFFF14B1
      FFFF14B1FFFF14B1FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000666666F2717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF676767F400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF14B1FFFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FFFFFFFFFFD87A17FFD776
      10FFD77610FFD77610FFD77610FFD87713FFFFFFFFFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFF8C8CE8FF8C8CE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFAAAA
      AAFFFFFFFFFFAAAAAAFFFFFFFFFFAAAAAAFFFFFFFFFFAAAAAAFFFFFFFFFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FFFFFFFFFFE1994BFFD776
      10FFD77610FFD77610FFD77610FFE09747FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFF8C8CE8FF1B1BD1FF1B1BD1FF8C8CE8FFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFDF9F4FFEFC8
      9FFFD97C1AFFD97B19FFEFC79DFFFDF8F3FFFFFFFFFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFF8F8FE8FF8F8FE8FF8F8FE8FF1B1BD1FF8C8CE8FFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFAAAA
      AAFFFFFFFFFF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFAAAAAAFFFFFFFFFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFFDF9
      F5FFDB8528FFDB8426FFFDF8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FE8FF1B1BD1FF8C8CE8FFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFFFFF
      FFFFFFFFFFFF1B1BD1FFFFFFFFFF1B1BD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFF1CE
      A8FFD77610FFD77610FFF0CBA5FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8FE8FF8F8FE8FFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFAAAA
      AAFFFFFFFFFF1B1BD1FF1B1BD1FF1B1BD1FFFFFFFFFFAAAAAAFFFFFFFFFFAAAA
      AAFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFECBD
      8CFFD77610FFD77610FFEBBC89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF717171FF000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFF9E9
      D9FFDC882DFFDC872CFFF8E8D7FFFFFFFFFFFFFFFFFFAAAAAAFFAAAAAAFFAAAA
      AAFFAAAAAAFFAAAAAAFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF0000000000000000717171FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF717171FF000000000000000014B1FFFF7171
      71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF717171FF14B1FFFF000000000000000000000000717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF000000000000000000000000717171FF000000000000
      0000D77610FFD77610FFD77610FFD77610FFD77610FFD77610FFD77610FF0000
      000000000000717171FF0000000000000000717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF717171FF717171FF717171FF000000000000000014B1FFFF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF14B1FFFF000000000000000000000000717171FF000000000000
      000000000000717171FF717171FF717171FF717171FF717171FF000000000000
      000000000000717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014B1FFFF14B1
      FFFF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF14B1FFFF14B1FFFF000000000000000000000000717171FF000000007171
      71FF00000000717171FF717171FF717171FF717171FF717171FF000000007171
      71FF00000000717171FF000000000000000000000000717171FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000717171FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF000000000000000000000000000000000000000000000000000000007171
      71FF0000000000000000000000000000000000000000646464F0717171FF7171
      71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
      71FF717171FF666666F200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001414146D5F5F5FEA606060EB16161671000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000600000000100010000000000000300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000}
    DesignInfo = 6291592
    ImageInfo = <
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C67206964
          3D2253696E676C655061676556696577223E0D0A09093C7061746820636C6173
          733D22426C61636B2220643D224D32372C30483343322E342C302C322C302E34
          2C322C3176323863302C302E362C302E342C312C312C3168323463302E362C30
          2C312D302E342C312D3156314332382C302E342C32372E362C302C32372C307A
          204D32362C3238483456326832325632387A222F3E0D0A09093C706174682063
          6C6173733D22426C75652220643D224D32322C384838563668313456387A204D
          32322C3130483876326831345631307A204D32322C3134483876326831345631
          347A204D32322C3138483876326831345631387A204D32322C32324838763268
          31345632327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D426C61636B7B6669
          6C6C3A233732373237323B7D262331333B262331303B2623393B2E437573746F
          6D57686974657B66696C6C3A234646464646463B7D262331333B262331303B26
          23393B2E437573746F6D426C75657B66696C6C3A233131373744373B7D262331
          333B262331303B2623393B2E7374307B6F7061636974793A302E363B7D3C2F73
          74796C653E0D0A3C7061746820636C6173733D22437573746F6D426C61636B22
          20643D224D302C36683332763232483056367A222F3E0D0A3C7061746820636C
          6173733D22437573746F6D57686974652220643D224D322C3868323876313848
          3256387A222F3E0D0A3C7061746820636C6173733D22437573746F6D426C7565
          2220643D224D31332C31392E3263322E352C302E372C332C312E362C332C342E
          38682D332E37483463302D332E322C302E352D342E312C332D342E3863312E33
          2D302E342C312E352D312E332C312E352D312E3743372E372C31362E362C372C
          31352C372C31332E3220202623393B63302D302E312C302D302E332C302D302E
          3543372C31312E332C382E342C31302C392E392C313063302C302C302C302C30
          2E312C3063302C302C302C302C302E312C3063312E352C302C322E392C312E33
          2C322E392C322E3763302C302E332C302C302E342C302C302E3520202623393B
          63302C312E382D302E372C332E342D312E352C342E334331312E352C31372E39
          2C31312E372C31382E382C31332C31392E327A222F3E0D0A3C672069643D22D0
          A1D0BBD0BED0B95F322220636C6173733D22737430223E0D0A09093C72656374
          20783D2231382220793D2232322220636C6173733D22437573746F6D426C6163
          6B222077696474683D22313022206865696768743D2232222F3E0D0A09093C72
          65637420783D2231382220793D2231382220636C6173733D22437573746F6D42
          6C61636B222077696474683D22313022206865696768743D2232222F3E0D0A09
          093C7265637420783D2231382220793D2231342220636C6173733D2243757374
          6F6D426C61636B222077696474683D22313022206865696768743D2232222F3E
          0D0A09093C7265637420783D2231382220793D2231302220636C6173733D2243
          7573746F6D426C61636B222077696474683D22313022206865696768743D2232
          222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D57686974657B6669
          6C6C3A234646464646463B7D262331333B262331303B2623393B2E437573746F
          6D426C61636B7B66696C6C3A233732373237323B7D262331333B262331303B26
          23393B2E437573746F6D59656C6C6F777B66696C6C3A234646423131353B7D26
          2331333B262331303B2623393B2E437573746F6D5265647B66696C6C3A234431
          314331433B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0B95F
          32223E0D0A09093C672069643D225461736B223E0D0A0909093C726563742078
          3D22342220793D22342220636C6173733D22437573746F6D59656C6C6F772220
          77696474683D22323422206865696768743D223238222F3E0D0A0909093C706F
          6C79676F6E20636C6173733D22437573746F6D426C61636B2220706F696E7473
          3D2232362C333020362C333020362C362032322C362032362C362032362C3130
          202623393B2623393B222F3E0D0A0909093C706F6C796C696E6520636C617373
          3D22437573746F6D57686974652220706F696E74733D2232342C323820382C32
          3820382C382032302C382032342C382032342C3132202623393B2623393B222F
          3E0D0A0909093C7061746820636C6173733D22437573746F6D426C61636B2220
          643D224D32342C364838563268346C302E362D302E364331332E352C302E352C
          31342E372C302C31362C30683063312E332C302C322E352C302E352C332E342C
          312E344C32302C32683456367A222F3E0D0A0909093C7061746820636C617373
          3D22437573746F6D5265642220643D224D31322C31386C2D322C326C342C346C
          382D386C2D322D326C2D362C364C31322C3138222F3E0D0A09093C2F673E0D0A
          093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D426C61636B7B6669
          6C6C3A233732373237323B7D262331333B262331303B2623393B2E437573746F
          6D5265647B66696C6C3A234431314331433B7D262331333B262331303B262339
          3B2E437573746F6D57686974657B66696C6C3A234646464646463B7D26233133
          3B262331303B2623393B2E7374307B6F7061636974793A302E363B7D3C2F7374
          796C653E0D0A3C706F6C79676F6E20636C6173733D22437573746F6D426C6163
          6B2220706F696E74733D2232362C342032362C382032302C382032302C342031
          302C342031302C3820342C3820342C3420322C3420322C32382032382C323820
          32382C3420222F3E0D0A3C7061746820636C6173733D22437573746F6D576869
          74652220643D224D342C313268323276313448345631327A222F3E0D0A3C7061
          746820636C6173733D22437573746F6D426C61636B2220643D224D362C366832
          5632483656367A204D32322C327634683256324832327A222F3E0D0A3C706174
          6820636C6173733D22437573746F6D5265642220643D224D31302C3230762D36
          683676364831307A204D31322C313676326832762D324831327A222F3E0D0A3C
          672069643D22D0A1D0BBD0BED0B95F322220636C6173733D22737430223E0D0A
          09093C7061746820636C6173733D22437573746F6D426C61636B2220643D224D
          362C32346832762D3248365632347A204D362C32306832762D3248365632307A
          204D362C31366832762D3248365631367A204D31302C32346832762D32682D32
          5632347A204D31342C32346832762D32682D325632347A204D31382C32306832
          762D32682D3220202623393B2623393B5632307A204D31382C31366832762D32
          682D325631367A204D32322C313476326832762D324832327A222F3E0D0A0909
          3C7265637420783D2231382220793D2232322220636C6173733D22437573746F
          6D426C61636B222077696474683D223222206865696768743D2232222F3E0D0A
          09093C7265637420783D2232322220793D2231382220636C6173733D22437573
          746F6D426C61636B222077696474683D223222206865696768743D2232222F3E
          0D0A09093C7265637420783D2232322220793D2232322220636C6173733D2243
          7573746F6D426C61636B222077696474683D223222206865696768743D223222
          2F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D2243617264223E0D0A09093C706174
          6820636C6173733D22426C61636B2220643D224D33312C34483143302E352C34
          2C302C342E352C302C3576323063302C302E352C302E352C312C312C31683330
          63302E352C302C312D302E352C312D3156354333322C342E352C33312E352C34
          2C33312C347A204D33302C3234483256366832385632347A222F3E0D0A09093C
          6720636C6173733D22737430223E0D0A0909093C7061746820636C6173733D22
          426C61636B2220643D224D32382C313048313856386831305631307A204D3238
          2C313248313876326831305631327A204D32382C313648313876326831305631
          367A204D32382C323048313876326831305632307A222F3E0D0A09093C2F673E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D31362C3232
          483463302E342D322E382C322E342D322E332C332E352D332E3543382E312C31
          392E342C382E392C32302C31302C323063312E312C302C312E392D302E362C32
          2E352D312E344331332E372C31392E372C31352E362C31392E322C31362C3232
          7A20202623393B2623393B204D362E392C31342E3876302E3143372E332C3136
          2E342C382E322C31382C31302C313873322E382D312E362C332E322D332E3176
          2D302E3163302E372C302C302E342D302E372C302E362D3173302E332D302E35
          2C302E322D302E39632D302E312D302E332D302E332D302E322D302E342D302E
          3220202623393B2623393B63312E322D332E312D302E372D322E392D302E372D
          322E395331322E372C382C392E322C3843362C382C352E362C31302E352C362E
          332C31322E3763302C302E312D302E322C302E312D302E332C302E32632D302E
          312C302E342C302E312C302E362C302E332C302E3953362E322C31342E382C36
          2E392C31342E387A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2242
          6F6F6B223E0D0A09093C7061746820636C6173733D22477265656E2220643D22
          4D392C36683137563563302D302E362D302E342D312D312D31483943372E332C
          342C362C352E332C362C3776313863302C312E372C312E332C332C332C336831
          3663302E362C302C312D302E342C312D315638483943382E342C382C382C372E
          362C382C3720202623393B2623393B53382E342C362C392C367A222F3E0D0A09
          3C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E437573746F6D57686974657B6669
          6C6C3A234646464646463B7D262331333B262331303B2623393B2E437573746F
          6D426C75657B66696C6C3A233131373744373B7D3C2F7374796C653E0D0A3C67
          2069643D224D61696C223E0D0A09093C7265637420793D22342220636C617373
          3D22437573746F6D426C7565222077696474683D22333222206865696768743D
          223234222F3E0D0A09093C7265637420783D22322220793D22362220636C6173
          733D22437573746F6D5768697465222077696474683D22323822206865696768
          743D223230222F3E0D0A09093C706F6C79676F6E20636C6173733D2243757374
          6F6D426C75652220706F696E74733D2233302C382031362C313820322C382032
          2C31302031302E342C313620322C323220322C32342031312E382C3137203136
          2C32302032302E322C31372033302C32342033302C32322032312E362C313620
          33302C3130202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2242
          6F6F6B6D61726B2220786D6C6E733D22687474703A2F2F7777772E77332E6F72
          672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F
          7777772E77332E6F72672F313939392F786C696E6B2220783D22307078222079
          3D22307078222076696577426F783D2230203020333220333222207374796C65
          3D22656E61626C652D6261636B67726F756E643A6E6577203020302033322033
          323B2220786D6C3A73706163653D227072657365727665223E262331333B2623
          31303B3C7374796C6520747970653D22746578742F6373732220786D6C3A7370
          6163653D227072657365727665223E2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
          6B2220643D224D32372C34483743362E352C342C362C342E352C362C35763234
          63302C302E352C302E352C312C312C3168323063302E352C302C312D302E352C
          312D3156354332382C342E352C32372E352C342C32372C347A204D32362C3238
          483856366831385632387A222F3E0D0A3C7061746820636C6173733D22526564
          2220643D224D31372C32682D36632D302E352C302D312C302E352D312C317631
          356C342D346C342C3456334331382C322E352C31372E352C322C31372C327A22
          2F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224E
          616D655F4D616E616765722220786D6C6E733D22687474703A2F2F7777772E77
          332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474
          703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070
          782220793D22307078222076696577426F783D22302030203332203332222073
          74796C653D22656E61626C652D6261636B67726F756E643A6E65772030203020
          33322033323B2220786D6C3A73706163653D227072657365727665223E262331
          333B262331303B3C7374796C6520747970653D22746578742F6373732220786D
          6C3A73706163653D227072657365727665223E2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E7374307B6F70616369
          74793A302E37353B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22
          426C61636B2220643D224D32372C3848376C2D372C3776346C372C376C32302C
          3063302E362C302C312D302E342C312D3156394332382C382E342C32372E362C
          382C32372C387A204D32362C323448386C2D362D36762D326C362D3668313856
          32347A204D32322C3136682D38762D32683820202623393B5631367A204D3232
          2C3230682D38762D3268385632307A204D31302C313763302C312E312D302E39
          2C322D322C32632D312E312C302D322D302E392D322D3273302E392D322C322D
          3243392E312C31352C31302C31352E392C31302C31377A222F3E0D0A3C672063
          6C6173733D22737430223E0D0A09093C7061746820636C6173733D22426C6163
          6B2220643D224D33312C344831314C372C3868336C322D32683138763134682D
          327632683363302E362C302C312D302E342C312D3156354333322C342E342C33
          312E362C342C33312C347A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020313620313622207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203136203136
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E6261636B636F
          6C6F727B66696C6C3A233642364236423B7D3C2F7374796C653E0D0A3C706174
          6820636C6173733D226261636B636F6C6F722220643D224D31342C3148374336
          2E342C312C362C312E342C362C327631683563312E312C302C322C302E392C32
          2C327635683163302E362C302C312D302E342C312D3156324331352C312E342C
          31342E362C312C31342C317A222F3E0D0A3C7061746820636C6173733D226261
          636B636F6C6F722220643D224D31312C34483443332E342C342C332C342E342C
          332C357631683563312E312C302C322C302E392C322C327635683163302E362C
          302C312D302E342C312D3156354331322C342E342C31312E362C342C31312C34
          7A222F3E0D0A3C7061746820636C6173733D226261636B636F6C6F722220643D
          224D382C37483143302E342C372C302C372E342C302C38763763302C302E362C
          302E342C312C312C31683763302E362C302C312D302E342C312D31563843392C
          372E342C382E362C372C382C377A222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
          323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
          46423131353B7D3C2F7374796C653E0D0A3C706F6C79676F6E20636C6173733D
          2259656C6C6F772220706F696E74733D2233322C33302033302C33322033302C
          32302033322C313820222F3E0D0A3C7265637420793D2232302220636C617373
          3D2259656C6C6F77222077696474683D22323822206865696768743D22313222
          2F3E0D0A3C7061746820636C6173733D22426C61636B2220643D224D342C3132
          68326832683163302E362C302C312D302E342C312D3156366831347631326832
          563563302D302E362D302E342D312D312D314831305632683138763136683256
          3163302D302E362D302E342D312D312D31483943382E342C302C382C302E342C
          382C3120202623393B76334C362C366C2D342C347632763668325631327A222F
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020323420323422207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203234203234
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E47726170686963205374796C657B66696C
          6C3A233732373237323B7D262331333B262331303B2623393B2E5265647B6669
          6C6C3A234431314331433B7D262331333B262331303B2623393B2E59656C6C6F
          777B66696C6C3A234646423131353B7D262331333B262331303B2623393B2E42
          6C75657B66696C6C3A233131373744373B7D262331333B262331303B2623393B
          2E7374307B66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C706F
          6C79676F6E20636C6173733D22426C75652220706F696E74733D2231322C3120
          31352C392032332C392031362E322C31342031392C32322031322C313720352C
          323220372E382C313420312C3920392C3920222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F637373223E2E426C61636B7B
          66696C6C3A233732373237323B7D3C2F7374796C653E0D0A3C672069643D2244
          65736B746F7057696E646F7773223E0D0A09093C7061746820636C6173733D22
          426C61636B2220643D224D32382C34483443322E392C342C322C342E392C322C
          3676313463302C312E312C302E392C322C322C32683876344838763268313676
          2D32682D34762D34683863312E312C302C322D302E392C322D3256364333302C
          342E392C32392E312C342C32382C347A20202623393B2623393B204D32382C32
          30483456366832345632307A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2253
          656E64223E0D0A09093C706F6C79676F6E20636C6173733D22426C7565222070
          6F696E74733D22322C323020382C32322E342032342C31302031322C32342031
          322C33302031362E332C32352E372032322C32382033302C32202623393B222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
          A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
          6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
          2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
          20793D22307078222076696577426F783D223020302033322033322220737479
          6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
          2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
          262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
          73706163653D227072657365727665223E2E7374307B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E7374317B66696C6C3A23464646
          4646463B7D3C2F7374796C653E0D0A3C7061746820636C6173733D2273743022
          20643D224D32352C36682D3463302D302E332C302D302E362C302D3156346330
          2D322D322D322D342D32682D326C302C30632D322C302D342C302D342C327631
          63302C302E342C302C302E372C302C31483743352E392C362C352C362E392C35
          2C38763268326831386832563820202623393B4332372C362E392C32362E312C
          362C32352C367A222F3E0D0A3C7061746820636C6173733D227374312220643D
          224D31382C34682D34632D302E352C302D312C302E342D312C316C302C306330
          2C302E352C302C312C302C31683663302C302C302D302E342C302D316C302C30
          4331392C342E342C31382E362C342C31382C347A222F3E0D0A3C706174682063
          6C6173733D227374302220643D224D372C313276313663302C312E312C302E39
          2C322C322C3268313463312E312C302C322D302E392C322D3273302D31362C30
          2D313648377A204D31312C3238483956313468325632387A204D31352C323868
          2D3256313468325632387A204D31392C3238682D3256313420202623393B6832
          5632387A204D32332C3238682D3256313468325632387A222F3E0D0A3C2F7376
          673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A23
          3732373237323B7D262331333B262331303B2623393B2E57686974657B66696C
          6C3A234646464646463B7D3C2F7374796C653E0D0A3C7061746820636C617373
          3D2259656C6C6F772220643D224D342C32324C31382C386C362C364C31302C32
          384C342C32327A222F3E0D0A3C7061746820636C6173733D225265642220643D
          224D31382E312C386C362D366C362C366C2D362C364C31382E312C387A222F3E
          0D0A3C706F6C79676F6E20636C6173733D2257686974652220706F696E74733D
          2231302C323620382C323620382C323420362C323420362C323220342C323220
          332E322C32352E3220362E382C32382E382031302C323820222F3E0D0A3C706F
          6C79676F6E20636C6173733D22426C61636B2220706F696E74733D22322C3330
          20362E382C32382E3820332E322C32352E3220222F3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D224F75746C6F6F6B496D706F7274223E0D0A09093C706F6C79676F6E2063
          6C6173733D22477265656E2220706F696E74733D2233322C342032342C342032
          342C302031362C362032342C31322032342C382033322C38202623393B222F3E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
          48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
          2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
          2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
          2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
          2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
          322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
          372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
          393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
          302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
          68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
          326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
          302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
          322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
          2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
          32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
          312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
          2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
          3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
          423131353B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A
          233732373237323B7D262331333B262331303B2623393B2E477265656E7B6669
          6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
          696C6C3A234431314331433B7D262331333B262331303B2623393B2E7374307B
          6F7061636974793A302E37353B7D262331333B262331303B2623393B2E737431
          7B6F7061636974793A302E353B7D3C2F7374796C653E0D0A3C672069643D2252
          656D6F7665436972636C6564223E0D0A09093C7061746820636C6173733D2252
          65642220643D224D31362C3443392E342C342C342C392E342C342C313673352E
          342C31322C31322C31327331322D352E342C31322D31325332322E362C342C31
          362C347A204D32342C31384838762D346831365631387A222F3E0D0A093C2F67
          3E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E5265647B66696C6C3A234431314331433B
          7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A2337323732
          37323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A233131
          373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C3A
          233033394332333B7D262331333B262331303B2623393B2E59656C6C6F777B66
          696C6C3A234646423131353B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
          7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
          643D224F75746C6F6F6B4578706F7274223E0D0A09093C706F6C79676F6E2063
          6C6173733D22477265656E2220706F696E74733D2231362C342032342C342032
          342C302033322C362032342C31322032342C382031362C38202623393B222F3E
          0D0A09093C7061746820636C6173733D22426C75652220643D224D32352C3134
          48313456384C302C31322E325632386C31342C34762D3668313163302E352C30
          2C312D302E352C312D315631354332362C31342E352C32352E352C31342C3235
          2C31347A204D392E322C32322E3943382E362C32332E362C372E392C32342C37
          2C323420202623393B2623393B632D302E392C302D312E362D302E342D322E32
          2D312E3143342E332C32322E322C342C32312E332C342C32302E3163302D312E
          322C302E332D322E322C302E382D3343352E342C31362E342C362E312C31362C
          372E312C313663302E392C302C312E362C302E342C322E312C312E3120202623
          393B2623393B63302E352C302E372C302E382C312E372C302E382C322E384331
          302C32312E322C392E372C32322E322C392E322C32322E397A204D31342C3136
          68396C2D362C346C2D332D325631367A204D32342C3234483134762D346C332C
          326C372D342E365632347A204D382E342C31372E3920202623393B2623393B63
          302E332C302E352C302E352C312E322C302E352C322E3163302C302E392D302E
          322C312E362D302E352C322E31632D302E332C302E352D302E382C302E382D31
          2E342C302E38632D302E362C302D312D302E332D312E342D302E3853352E312C
          32302E392C352E312C323020202623393B2623393B63302D302E392C302E322D
          312E362C302E352D322E3143362C31372E342C362E352C31372E312C372C3137
          2E3143372E362C31372E312C382E312C31372E342C382E342C31372E397A222F
          3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end
      item
        ImageClass = 'TdxSmartImage'
        Image.Data = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
          462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
          617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
          2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
          77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
          22307078222076696577426F783D2230203020333220333222207374796C653D
          22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
          3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
          303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
          63653D227072657365727665223E2E59656C6C6F777B66696C6C3A2346464231
          31353B7D262331333B262331303B2623393B2E5265647B66696C6C3A23443131
          4331433B7D262331333B262331303B2623393B2E426C75657B66696C6C3A2331
          31373744373B7D262331333B262331303B2623393B2E477265656E7B66696C6C
          3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
          696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
          657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
          74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
          74317B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B2E
          7374327B646973706C61793A696E6C696E653B66696C6C3A233033394332333B
          7D262331333B262331303B2623393B2E7374337B646973706C61793A696E6C69
          6E653B66696C6C3A234431314331433B7D262331333B262331303B2623393B2E
          7374347B646973706C61793A696E6C696E653B66696C6C3A233732373237323B
          7D3C2F7374796C653E0D0A3C672069643D22456D706C6F79656553756D6D6172
          79223E0D0A09093C7061746820636C6173733D22426C75652220643D224D3132
          2C32364838762D3668345632367A204D31382C3138682D34763868345631387A
          204D32342C3136682D3476313068345631367A222F3E0D0A09093C7061746820
          636C6173733D22426C61636B2220643D224D32392C30483343322E352C302C32
          2C302E352C322C3176333063302C302E352C302E352C312C312C316832366330
          2E352C302C312D302E352C312D3156314333302C302E352C32392E352C302C32
          392C307A204D32382C3330483456326832345633307A20202623393B2623393B
          204D32342C384838563668313656387A204D32342C31324838762D3268313656
          31327A222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      end>
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'Menus')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.Images = imgSmall
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 368
    Top = 96
    PixelsPerInch = 96
    object miOptions: TdxBarSubItem
      Caption = '&Options'
      Category = 1
      Visible = ivAlways
      ItemLinks = <>
    end
  end
  object pmnuItems: TdxBarPopupMenu
    BarManager = dxBarManager1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ItemLinks = <>
    UseOwnFont = True
    Left = 216
    Top = 88
    PixelsPerInch = 96
  end
end
