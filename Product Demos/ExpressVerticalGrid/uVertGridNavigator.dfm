inherited frmVertGridNavigator: TfrmVertGridNavigator
  Width = 848
  Height = 533
  inherited lcFrame: TdxLayoutControl
    Width = 848
    Height = 533
    inherited cxDBVerticalGrid: TcxDBVerticalGrid
      Top = 43
      Width = 816
      Height = 423
      TabOrder = 2
      ExplicitTop = 43
      ExplicitWidth = 816
      ExplicitHeight = 423
      Version = 1
      inherited cxDBVerticalGridID: TcxDBMultiEditorRow
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      inherited fldTrademark: TcxDBEditorRow
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      inherited fldModel: TcxDBEditorRow
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      inherited fldCategory: TcxDBEditorRow
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      inherited rowPerformance_Attributes: TcxCategoryRow
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      inherited fldHP: TcxDBEditorRow
        ID = 5
        ParentID = 4
        Index = 0
        Version = 1
      end
      inherited fldLiter: TcxDBEditorRow
        ID = 6
        ParentID = 4
        Index = 1
        Version = 1
      end
      inherited fldCyl: TcxDBEditorRow
        ID = 7
        ParentID = 4
        Index = 2
        Version = 1
      end
      inherited fldTransmissSpeedCount: TcxDBEditorRow
        ID = 8
        ParentID = 4
        Index = 3
        Version = 1
      end
      inherited fldTransmissAutomatic: TcxDBEditorRow
        ID = 9
        ParentID = 4
        Index = 4
        Version = 1
      end
      inherited cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow
        ID = 10
        ParentID = 4
        Index = 5
        Version = 1
      end
      inherited rowNotes: TcxCategoryRow
        ID = 11
        ParentID = -1
        Index = 5
        Version = 1
      end
      inherited fldDescription: TcxDBEditorRow
        ID = 12
        ParentID = 11
        Index = 0
        Version = 1
      end
      inherited fldHyperlink: TcxDBEditorRow
        ID = 13
        ParentID = 11
        Index = 1
        Version = 1
      end
      inherited rowOthers: TcxCategoryRow
        ID = 14
        ParentID = -1
        Index = 6
        Version = 1
      end
      inherited fldPrice: TcxDBEditorRow
        ID = 15
        ParentID = 14
        Index = 0
        Version = 1
      end
      inherited fldIcon: TcxDBEditorRow
        ID = 16
        ParentID = 14
        Index = 1
        Version = 1
      end
      inherited fldPicture: TcxDBEditorRow
        ID = 17
        ParentID = 14
        Index = 2
        Version = 1
      end
    end
    object Navigator: TcxNavigator [1]
      Left = 10
      Top = 10
      Width = 270
      Height = 25
      Control = cxDBVerticalGrid
      Buttons.CustomButtons = <>
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object cbvGridLayoutStyle: TcxComboBox [2]
      Left = 367
      Top = 10
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnEditValueChanged = cbvGridLayoutStylePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 25
      Width = 150
    end
    inherited lgSetupTools: TdxLayoutGroup
      Parent = lcFrameGroup_Root
      AlignHorz = ahLeft
      Visible = True
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Index = 2
    end
    inherited dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxDBVerticalGrid'
      CaptionOptions.Visible = False
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = Navigator
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 270
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Layout Style'
      Control = cbvGridLayoutStyle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
