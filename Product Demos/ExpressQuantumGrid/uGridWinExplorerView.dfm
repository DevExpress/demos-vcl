inherited frmGridWinExplorerView: TfrmGridWinExplorerView
  inherited PanelGrid: TdxPanel
    Width = 696
    ExplicitWidth = 696
    inherited Grid: TcxGrid
      Width = 696
      ExplicitWidth = 696
      object WinExplorerView: TcxGridDBWinExplorerView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.DisplayMode = fpdmManual
        ScrollbarAnnotations.CustomAnnotations = <>
        ActiveDisplayMode = dmExtraLargeImages
        DataController.DataSource = dmMain.dsModels
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        ItemSet.CheckBoxItem = WinExplorerViewInStock
        ItemSet.DescriptionItem = WinExplorerViewDescription
        ItemSet.ExtraLargeImageItem = WinExplorerViewPhoto
        ItemSet.MediumImageItem = WinExplorerViewImage
        ItemSet.TextItem = WinExplorerViewName
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.FocusRect = False
        OptionsView.ShowExpandButtons = True
        DisplayModes.ExtraLargeImages.ImageSize.Height = 126
        DisplayModes.ExtraLargeImages.ImageSize.Width = 168
        DisplayModes.LargeImages.ImageSize.Height = 76
        DisplayModes.LargeImages.ImageSize.Width = 100
        DisplayModes.List.ImageSize.Height = 32
        DisplayModes.List.ImageSize.Width = 32
        DisplayModes.List.RecordWidth = 185
        DisplayModes.SmallImages.ImageSize.Height = 32
        DisplayModes.SmallImages.ImageSize.Width = 32
        DisplayModes.SmallImages.RecordWidth = 200
        DisplayModes.Tiles.RecordWidth = 260
        object WinExplorerViewTrademark: TcxGridDBWinExplorerViewItem
          DataBinding.FieldName = 'Trademark'
        end
        object WinExplorerViewName: TcxGridDBWinExplorerViewItem
          Tag = -1
          DataBinding.FieldName = 'Name'
        end
        object WinExplorerViewCategory: TcxGridDBWinExplorerViewItem
          Tag = 1
          DataBinding.FieldName = 'Category'
        end
        object WinExplorerViewBodyStyle: TcxGridDBWinExplorerViewItem
          Tag = 3
          DataBinding.FieldName = 'BodyStyle'
        end
        object WinExplorerViewTransmissionTypeName: TcxGridDBWinExplorerViewItem
          Tag = 2
          DataBinding.FieldName = 'TransmissionTypeName'
        end
        object WinExplorerViewDescription: TcxGridDBWinExplorerViewItem
          Tag = -1
          DataBinding.FieldName = 'Description'
        end
        object WinExplorerViewImage: TcxGridDBWinExplorerViewItem
          Tag = -1
          DataBinding.FieldName = 'Image'
          RepositoryItem = dmMain.EditRepositoryImage
          Options.Editing = False
        end
        object WinExplorerViewPhoto: TcxGridDBWinExplorerViewItem
          Tag = -1
          DataBinding.FieldName = 'Photo'
          RepositoryItem = dmMain.EditRepositoryImage
          Options.Editing = False
        end
        object WinExplorerViewInStock: TcxGridDBWinExplorerViewItem
          Tag = -1
          DataBinding.FieldName = 'InStock'
        end
      end
      object Level: TcxGridLevel
        GridView = WinExplorerView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 696
    Width = 226
    ExplicitLeft = 696
    ExplicitWidth = 226
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 225
      Width = 225
      inherited lcFrame: TdxLayoutControl
        Width = 223
        ExplicitWidth = 223
        object gcDisplayModes: TdxGalleryControl [0]
          Left = 10
          Top = 10
          Width = 203
          Height = 116
          Images = dmMain.ilViews
          OptionsBehavior.ItemCheckMode = icmSingleRadio
          OptionsView.Item.Image.ShowFrame = False
          OptionsView.Item.Text.AlignHorz = taLeftJustify
          OptionsView.Item.Text.AlignVert = vaCenter
          OptionsView.Item.Text.Position = posRight
          TabOrder = 0
          OnItemClick = gcDisplayModesItemClick
          object gcgGroup: TdxGalleryControlGroup
            Caption = 'Group'
            ShowCaption = False
            object gciExtraLargeIcons: TdxGalleryControlItem
              Tag = 1
              Caption = 'Extra large icons'
              Checked = True
              ImageIndex = 0
              ActionIndex = nil
            end
            object gciLargeIcons: TdxGalleryControlItem
              Tag = 2
              Caption = 'Large icons'
              ImageIndex = 1
              ActionIndex = nil
            end
            object gciMediumIcons: TdxGalleryControlItem
              Tag = 4
              Caption = 'Medium icons'
              ImageIndex = 2
              ActionIndex = nil
            end
            object gciSmallIcons: TdxGalleryControlItem
              Tag = 5
              Caption = 'Small icons'
              ImageIndex = 3
              ActionIndex = nil
            end
            object gciList: TdxGalleryControlItem
              Tag = 3
              Caption = 'List'
              ImageIndex = 4
              ActionIndex = nil
            end
            object gciTiles: TdxGalleryControlItem
              Tag = 6
              Caption = 'Tiles'
              ImageIndex = 6
              ActionIndex = nil
            end
            object gciContent: TdxGalleryControlItem
              Caption = 'Content'
              ImageIndex = 5
              ActionIndex = nil
            end
          end
        end
        object cbHotTrack: TcxCheckBox [1]
          Left = 10
          Top = 132
          Action = acHotTrack
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 1
          Transparent = True
        end
        object cbMultiSelect: TcxCheckBox [2]
          Left = 10
          Top = 159
          Action = acMultiSelect
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Transparent = True
        end
        object cbShowCheckBoxes: TcxCheckBox [3]
          Left = 10
          Top = 186
          Action = acShowCheckBoxes
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Transparent = True
        end
        object cbShowExpandButtons: TcxCheckBox [4]
          Left = 10
          Top = 213
          Action = acShowExpandButtons
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Transparent = True
        end
        object cbSortBy: TcxComboBox [5]
          Left = 70
          Top = 240
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Ascending'
            'Descending'
            'None')
          Properties.OnEditValueChanged = cbSortByPropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 5
          Text = 'None'
          Width = 143
        end
        object cbGroupBy: TcxComboBox [6]
          Left = 70
          Top = 267
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Trademark'
            'Category'
            'Transmission type'
            'Body style'
            'None')
          Properties.OnEditValueChanged = cbGroupByPropertiesEditValueChanged
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 6
          Text = 'None'
          Width = 143
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = lgSetupTools
          AlignVert = avTop
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = True
          SizeOptions.SizableVert = True
          SizeOptions.Height = 116
          SizeOptions.Width = 260
          Control = gcDisplayModes
          ControlOptions.OriginalHeight = 99
          ControlOptions.OriginalWidth = 260
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object lgCheckBoxes: TdxLayoutGroup
          Parent = lgSetupTools
          CaptionOptions.Text = 'New Group'
          ItemIndex = 2
          ShowBorder = False
          Index = 1
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = lgCheckBoxes
          CaptionOptions.Visible = False
          Control = cbHotTrack
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 69
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = lgCheckBoxes
          CaptionOptions.Visible = False
          Control = cbMultiSelect
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 77
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = lgCheckBoxes
          CaptionOptions.Visible = False
          Control = cbShowCheckBoxes
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 112
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = lgCheckBoxes
          CaptionOptions.Visible = False
          Control = cbShowExpandButtons
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 129
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = lgSetupTools
          AlignVert = avClient
          CaptionOptions.Text = 'New Group'
          SizeOptions.AssignedValues = [sovSizableHorz]
          SizeOptions.SizableHorz = True
          SizeOptions.Width = 204
          ShowBorder = False
          Index = 2
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Sort Order:'
          Control = cbSortBy
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Group By:'
          Control = cbGroupBy
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  inherited alCustomCheckBoxes: TActionList
    object acHotTrack: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Hot-track'
      Checked = True
      OnExecute = acHotTrackExecute
    end
    object acMultiSelect: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Multi select'
      OnExecute = acMultiSelectExecute
    end
    object acShowCheckBoxes: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show check boxes'
      OnExecute = acShowCheckBoxesExecute
    end
    object acShowExpandButtons: TAction
      Tag = 1
      AutoCheck = True
      Caption = 'Show expand buttons'
      Checked = True
      OnExecute = acShowExpandButtonsExecute
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
