inherited frmVerticalGridFilterPopup: TfrmVerticalGridFilterPopup
  inherited lcFrame: TdxLayoutControl
    object VerticalGrid: TcxDBVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 177
      Height = 247
      FilterBox.Visible = fvNonEmpty
      FindPanel.DisplayMode = fpdmManual
      FindPanel.UseExtendedSyntax = True
      LayoutStyle = lsMultiRecordView
      OptionsView.CellAutoHeight = True
      OptionsView.GridLineColor = clGray
      OptionsView.RowHeaderWidth = 173
      OptionsView.RowHeight = 20
      OptionsView.ShowRowHeaderFilterButtons = sfbAlways
      OptionsView.ValueWidth = 170
      OptionsView.RecordsInterval = 2
      OptionsBehavior.RowFiltering = bTrue
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      TabOrder = 0
      DataController.DataSource = dmMain.dsEmployeesGroups
      Version = 1
      object VerticalGridRecId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'RecId'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VerticalGridId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Id'
        Visible = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VerticalGridParentId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'ParentId'
        Visible = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VerticalGridJobTitle: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'JobTitle'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VerticalGridFirstName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'FirstName'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VerticalGridLastName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'LastName'
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object VerticalGridCity: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'City'
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object VerticalGridStateProvinceName: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'StateProvinceName'
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object VerticalGridPhone: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Phone'
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object VerticalGridEmailAddress: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'EmailAddress'
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object VerticalGridAddressLine1: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'AddressLine1'
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object VerticalGridPostalCode: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'PostalCode'
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
    end
    object cbApplyMultiSelectChanges: TcxComboBox [1]
      Left = 336
      Top = 113
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Immediately'
        'OnButtonClick')
      Properties.OnEditValueChanged = seMRUItemListCountPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Immediately'
      Width = 93
    end
    object seMRUItemListCount: TcxSpinEdit [2]
      Left = 336
      Top = 140
      Enabled = False
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 15.000000000000000000
      Properties.OnEditValueChanged = cbApplyMultiSelectChangesPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 2
      Value = 5
      Width = 93
    end
    object seMaxDropDownItemCount: TcxSpinEdit [3]
      Left = 336
      Top = 167
      Properties.AssignedValues.MinValue = True
      Properties.MaxValue = 20.000000000000000000
      Properties.OnEditValueChanged = seMaxDropDownItemCountPropertiesEditValueChanged
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      TabOrder = 3
      Value = 15
      Width = 93
    end
    inherited lgSetupTools: TdxLayoutGroup
      Visible = True
      SizeOptions.Width = 240
      ItemIndex = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxDBVerticalGrid1'
      CaptionOptions.Visible = False
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 260
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Apply Selection Changes'
      Control = cbApplyMultiSelectChanges
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'MRU Filter Item Count'
      Control = seMRUItemListCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Max Filter Item Count'
      Control = seMaxDropDownItemCount
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = lgSetupTools
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      CaptionOptions.Text = 'Empty Space Item'
      Index = 3
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = lgSetupTools
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ShowBorder = False
      Index = 4
    end
    object cbIncrementalFiltering: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Action = acIncrementalFiltering
      CaptionOptions.Text = 'Incremental Filtering'
      Index = 2
    end
    object cxMultiSelect: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Action = acMultiSelect
      CaptionOptions.Text = 'Multi-select Filter Items'
      Index = 0
    end
    object cbFilteredItemList: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      Action = acFilteredItemList
      Index = 0
    end
    object cbMRUItemsList: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup1
      AlignHorz = ahLeft
      Action = acMRUItemsList
      CaptionOptions.Text = 'Show MRU Filter Items'
      Index = 1
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Height = -39
      PixelsPerInch = 144
    end
  end
  object alCustomCheckBoxes: TActionList
    Left = 344
    Top = 120
    object acMultiSelect: TAction
      AutoCheck = True
      Checked = True
      OnExecute = acMultiSelectExecute
    end
    object acFilteredItemList: TAction
      AutoCheck = True
      Caption = 'Show Filtered Items Only'
      OnExecute = acFilteredItemListExecute
    end
    object acMRUItemsList: TAction
      AutoCheck = True
      Checked = True
      Enabled = False
      OnExecute = acMRUItemsListExecute
    end
    object acIncrementalFiltering: TAction
      AutoCheck = True
      OnExecute = acIncrementalFilteringExecute
    end
  end
end
