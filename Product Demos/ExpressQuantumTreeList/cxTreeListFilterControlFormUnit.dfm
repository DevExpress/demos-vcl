inherited frmFilterControl: TfrmFilterControl
  Caption = 'Filter Control'
  ClientHeight = 656
  ClientWidth = 921
  ExplicitWidth = 921
  ExplicitHeight = 656
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    Width = 921
    Height = 656
    ExplicitWidth = 921
    ExplicitHeight = 656
    inherited tlDB: TcxDBTreeList
      Top = 227
      Width = 901
      Height = 381
      Bands = <
        item
        end>
      DataController.DataSource = dmTreeList.dsEmployeesGroups
      DataController.ParentField = 'ParentId'
      DataController.KeyField = 'Id'
      FilterBox.CriteriaDisplayStyle = fcdsTokens
      FilterBox.Visible = fvNonEmpty
      Navigator.Visible = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      TabOrder = 6
      ExplicitTop = 227
      ExplicitWidth = 901
      ExplicitHeight = 381
      object tlDBRecId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'RecId'
        Width = 100
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'Id'
        Width = 100
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBParentId: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'ParentId'
        Width = 100
        Position.ColIndex = 2
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBJobTitle: TcxDBTreeListColumn
        DataBinding.FieldName = 'JobTitle'
        Width = 100
        Position.ColIndex = 3
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <
          item
            AlignHorz = taLeftJustify
            Kind = skCount
          end>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBFirstName: TcxDBTreeListColumn
        DataBinding.FieldName = 'FirstName'
        Width = 100
        Position.ColIndex = 4
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBLastName: TcxDBTreeListColumn
        DataBinding.FieldName = 'LastName'
        Width = 100
        Position.ColIndex = 5
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBCity: TcxDBTreeListColumn
        DataBinding.FieldName = 'City'
        Width = 100
        Position.ColIndex = 6
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBStateProvinceName: TcxDBTreeListColumn
        DataBinding.FieldName = 'StateProvinceName'
        Width = 100
        Position.ColIndex = 7
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPhone: TcxDBTreeListColumn
        DataBinding.FieldName = 'Phone'
        Width = 100
        Position.ColIndex = 8
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBEmailAddress: TcxDBTreeListColumn
        DataBinding.FieldName = 'EmailAddress'
        Width = 100
        Position.ColIndex = 9
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBAddressLine1: TcxDBTreeListColumn
        DataBinding.FieldName = 'AddressLine1'
        Width = 100
        Position.ColIndex = 10
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object tlDBPostalCode: TcxDBTreeListColumn
        DataBinding.FieldName = 'PostalCode'
        Width = 100
        Position.ColIndex = 11
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
    object FilterControl: TcxFilterControl [1]
      Left = 10
      Top = 10
      Width = 901
      Height = 170
      LinkComponent = tlDB
      TabOrder = 0
    end
    object btnApply: TcxButton [2]
      Left = 10
      Top = 186
      Width = 70
      Height = 25
      Caption = '&Apply'
      TabOrder = 1
      OnClick = btnApplyClick
    end
    object btnReset: TcxButton [3]
      Left = 86
      Top = 186
      Width = 70
      Height = 25
      Caption = '&Reset'
      TabOrder = 2
      OnClick = btnResetClick
    end
    object btOpen: TcxButton [4]
      Left = 178
      Top = 186
      Width = 75
      Height = 25
      Hint = 'Open|Opens an existing filter'
      Caption = '&Open...'
      TabOrder = 3
      OnClick = btOpenClick
    end
    object btSave: TcxButton [5]
      Left = 259
      Top = 186
      Width = 70
      Height = 25
      Hint = 'Save As|Saves the active filter with a new name'
      Caption = 'Save &As...'
      TabOrder = 4
      OnClick = btSaveClick
    end
    object cbCriteriaDisplayStyle: TcxComboBox [6]
      Left = 790
      Top = 189
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Tokens'
        'Text')
      Properties.OnEditValueChanged = cxComboBox1PropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Text = 'Tokens'
      Width = 121
    end
    inherited lgMainGroup: TdxLayoutGroup
      Parent = lcMainGroup_Root
      LayoutDirection = ldVertical
      Index = 3
    end
    inherited lgTools: TdxLayoutGroup
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      SizeOptions.Width = 309
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Parent = lcMainGroup_Root
      AlignHorz = ahClient
      Visible = True
      SizeOptions.AssignedValues = []
    end
    inherited dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = nil
      Index = -1
      Special = True
    end
    object liFilterControl: TdxLayoutItem
      Parent = lgTools
      AlignHorz = ahClient
      AlignVert = avClient
      Control = FilterControl
      ControlOptions.OriginalHeight = 170
      ControlOptions.OriginalWidth = 300
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgTools
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btnApply
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btnReset
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btOpen
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      CaptionOptions.Visible = False
      Control = btSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      AlignVert = avCenter
      CaptionOptions.Text = 'Criteria Display Style'
      Control = cbCriteriaDisplayStyle
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object SaveDialog: TdxSaveFileDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 360
    Top = 112
  end
  object OpenDialog: TdxOpenFileDialog
    Left = 288
    Top = 112
  end
end
