inherited frmVerticalGridFilterControl: TfrmVerticalGridFilterControl
  Width = 813
  Height = 481
  inherited lcFrame: TdxLayoutControl
    Width = 813
    Height = 481
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 206
      Width = 793
      Height = 210
      FilterBox.CriteriaDisplayStyle = fcdsTokens
      FilterBox.Visible = fvNonEmpty
      LayoutStyle = lsMultiRecordView
      OptionsView.RowHeaderWidth = 116
      OptionsView.ValueWidth = 176
      OptionsBehavior.RowFiltering = bTrue
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 6
      DataController.DataSource = dmMain.dsDXCustomers
      Version = 1
      object VerticalGridFIRSTNAME: TcxDBEditorRow
        Properties.Caption = 'First Name'
        Properties.DataBinding.FieldName = 'FIRSTNAME'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridLASTNAME: TcxDBEditorRow
        Properties.Caption = 'Last Name'
        Properties.DataBinding.FieldName = 'LASTNAME'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridCOMPANYNAME: TcxDBEditorRow
        Properties.Caption = 'Company Name'
        Properties.DataBinding.FieldName = 'COMPANYNAME'
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridPAYMENTTYPE: TcxDBEditorRow
        Properties.Caption = 'Payment Type'
        Properties.RepositoryItem = dmMain.edrepDXPaymentTypeImageCombo
        Properties.DataBinding.FieldName = 'PAYMENTTYPE'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridPRODUCTID: TcxDBEditorRow
        Properties.Caption = 'Product'
        Properties.RepositoryItem = dmMain.edrepDXProductLookup
        Properties.DataBinding.FieldName = 'PRODUCTID'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VerticalGridCUSTOMER: TcxDBEditorRow
        Properties.Caption = 'Customer'
        Properties.DataBinding.FieldName = 'CUSTOMER'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object VerticalGridPURCHASEDATE: TcxDBEditorRow
        Properties.Caption = 'Purchase Date'
        Properties.DataBinding.FieldName = 'PURCHASEDATE'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object VerticalGridPAYMENTAMOUNT: TcxDBEditorRow
        Properties.Caption = 'Payment Amount'
        Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DataBinding.FieldName = 'PAYMENTAMOUNT'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object VerticalGridCOPIES: TcxDBEditorRow
        Properties.Caption = 'Copies'
        Properties.DataBinding.FieldName = 'COPIES'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
    end
    object FilterControl: TcxFilterControl [1]
      Left = 10
      Top = 10
      Width = 793
      Height = 151
      LinkComponent = VerticalGrid
      TabOrder = 0
    end
    object btnApply: TcxButton [2]
      Left = 10
      Top = 167
      Width = 75
      Height = 25
      Caption = '&Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btOpen: TcxButton [3]
      Left = 188
      Top = 167
      Width = 75
      Height = 25
      Hint = 'Open|Opens an existing filter'
      Caption = '&Open...'
      TabOrder = 3
      OnClick = btOpenClick
    end
    object btnReset: TcxButton [4]
      Left = 91
      Top = 167
      Width = 75
      Height = 25
      Caption = '&Reset'
      TabOrder = 2
      OnClick = btnResetClick
    end
    object btSave: TcxButton [5]
      Left = 269
      Top = 167
      Width = 75
      Height = 25
      Hint = 'Save As|Saves the active filter with a new name'
      Caption = 'Save &As...'
      TabOrder = 4
      OnClick = btSaveClick
    end
    object cbCriteriaDisplayStyle: TcxComboBox [6]
      Left = 303
      Top = 188
      AutoSize = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tokens'
        'Text')
      Properties.OnEditValueChanged = cbCriteriaDisplayStylePropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Text = 'Tokens'
      Height = 21
      Width = 121
    end
    inherited lgContent: TdxLayoutGroup
      Parent = lcFrameGroup_Root
      Index = 3
    end
    inherited lsSetupSplitter: TdxLayoutSplitterItem
      Parent = lcFrameGroup_Root
      Visible = True
      Index = 2
    end
    inherited lgSetupTools: TdxLayoutGroup
      Parent = lcFrameGroup_Root
      AlignHorz = ahClient
      Visible = True
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 450
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avClient
      Control = FilterControl
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgSetupTools
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Visible = False
      Control = btnApply
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btOpen
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btnReset
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = btSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'Criteria Display Style'
      Control = cbCriteriaDisplayStyle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object OpenDialog: TdxOpenFileDialog
    Left = 288
    Top = 112
  end
  object SaveDialog: TdxSaveFileDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 360
    Top = 112
  end
end
