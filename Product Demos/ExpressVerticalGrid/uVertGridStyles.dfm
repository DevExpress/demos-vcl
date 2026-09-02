inherited frmVertGridStyles: TfrmVertGridStyles
  Width = 807
  Height = 524
  inherited lcFrame: TdxLayoutControl
    Width = 807
    Height = 524
    inherited cxDBVerticalGrid: TcxDBVerticalGrid
      Width = 569
      Height = 445
      ExplicitWidth = 569
      ExplicitHeight = 445
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
    object cbStyleSheetList: TcxComboBox [1]
      Left = 688
      Top = 28
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.OnEditValueChanged = cbStyleSheetListPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Height = 25
      Width = 97
    end
    object btnNew: TcxButton [2]
      Left = 609
      Top = 75
      Width = 176
      Height = 25
      Caption = '&New Style...'
      TabOrder = 2
      OnClick = btnNewClick
    end
    object btnEdit: TcxButton [3]
      Left = 609
      Top = 106
      Width = 176
      Height = 25
      Caption = '&Edit a Style...'
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnCopy: TcxButton [4]
      Tag = 1
      Left = 609
      Top = 137
      Width = 176
      Height = 25
      Caption = '&Copy a Style...'
      TabOrder = 4
      OnClick = btnCopyClick
    end
    object btnDelete: TcxButton [5]
      Left = 609
      Top = 168
      Width = 176
      Height = 25
      Caption = '&Delete a Style...'
      TabOrder = 5
      OnClick = btnDeleteClick
    end
    inherited lgSetupTools: TdxLayoutGroup
      Visible = True
      SizeOptions.SizableHorz = False
    end
    inherited dxLayoutItem1: TdxLayoutItem
      CaptionOptions.Text = 'cxDBVerticalGrid'
      CaptionOptions.Visible = False
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Text = 'Style Sheet List'
      Control = cbStyleSheetList
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Visible = False
      Control = btnNew
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Visible = False
      Control = btnEdit
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Visible = False
      Control = btnCopy
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lgSetupTools
      CaptionOptions.Visible = False
      Control = btnDelete
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 6
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object StyleRepository: TcxStyleRepository
    Left = 200
    Top = 40
    PixelsPerInch = 96
  end
end
