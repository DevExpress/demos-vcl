inherited frmVertGridInplaceEditors: TfrmVertGridInplaceEditors
  inherited lcFrame: TdxLayoutControl
    object VerticalGrid: TcxVerticalGrid [0]
      Left = 10
      Top = 10
      Width = 217
      Height = 230
      OptionsView.AutoScaleBands = False
      OptionsView.RowHeaderWidth = 156
      OptionsView.ValueWidth = 240
      TabOrder = 0
      Version = 1
      object VerticalGridCategoryRow1: TcxCategoryRow
        Properties.Caption = 'Standard Editors'
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object vgButtonEditor: TcxEditorRow
        Properties.Caption = 'Button Editor'
        Properties.RepositoryItem = EditRepositoryButtonItem
        Properties.Value = 'Press me...'
        ID = 1
        ParentID = 0
        Index = 0
        Version = 1
      end
      object vgCheckBoxEditor: TcxEditorRow
        Properties.Caption = 'CheckBox Editor'
        Properties.RepositoryItem = EditRepositoryCheckBoxItem
        Properties.DataBinding.ValueType = 'Boolean'
        Properties.Value = True
        ID = 2
        ParentID = 0
        Index = 1
        Version = 1
      end
      object vgCurrencyEditor: TcxEditorRow
        Properties.Caption = 'Currency Editor'
        Properties.RepositoryItem = EditRepositoryCurrencyItem
        Properties.DataBinding.ValueType = 'Currency'
        Properties.Value = 123428900c
        ID = 3
        ParentID = 0
        Index = 2
        Version = 1
      end
      object vgMaskEditor: TcxEditorRow
        Properties.Caption = 'Advanced Mask Editor'
        Properties.RepositoryItem = EditRepositoryMaskItem
        Properties.Value = '(234)897-235'
        ID = 4
        ParentID = 0
        Index = 3
        Version = 1
      end
      object vgRadioGroupEditor: TcxEditorRow
        Properties.Caption = 'RadioGroup Editor'
        Properties.RepositoryItem = EditRepositoryRadioGroupItem
        Properties.Value = '0'
        ID = 5
        ParentID = 0
        Index = 4
        Version = 1
      end
      object vgSpintEditor: TcxEditorRow
        Properties.Caption = 'Spin Editor'
        Properties.RepositoryItem = EditRepositorySpinItem
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = Null
        ID = 6
        ParentID = 0
        Index = 5
        Version = 1
      end
      object vgTextEditor: TcxEditorRow
        Properties.Caption = 'Text Editor'
        Properties.RepositoryItem = EditRepositoryTextItem
        Properties.Value = 'Text'
        ID = 7
        ParentID = 0
        Index = 6
        Version = 1
      end
      object vgTimeEditor: TcxEditorRow
        Properties.Caption = 'Time Editor'
        Properties.RepositoryItem = EditRepositoryTimeItem
        Properties.DataBinding.ValueType = 'DateTime'
        Properties.Value = Null
        ID = 8
        ParentID = 0
        Index = 7
        Version = 1
      end
      object VerticalGridCategoryRow2: TcxCategoryRow
        Properties.Caption = 'ComboBoxes'
        ID = 9
        ParentID = -1
        Index = 1
        Version = 1
      end
      object vgComboBoxEditor: TcxEditorRow
        Properties.Caption = 'ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryComboBoxItem
        Properties.Value = 'Green'
        ID = 10
        ParentID = 9
        Index = 0
        Version = 1
      end
      object vgHyperLinkEditor: TcxEditorRow
        Properties.Caption = 'HyperLink Editor'
        Properties.RepositoryItem = EditRepositoryHyperLinkItem
        Properties.Value = 'http://www.devexpress.com'
        ID = 11
        ParentID = 9
        Index = 1
        Version = 1
      end
      object vgImageComboBoxEditor: TcxEditorRow
        Properties.Caption = 'Image ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryImageComboBoxItem
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 2
        ID = 12
        ParentID = 9
        Index = 2
        Version = 1
      end
      object vgLookupComboBoxEditor: TcxEditorRow
        Properties.Caption = 'Lookup ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryLookupComboBoxItem
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = Null
        ID = 13
        ParentID = 9
        Index = 3
        Version = 1
      end
      object vgMRUEditor: TcxEditorRow
        Properties.Caption = 'MRU Editor'
        Properties.RepositoryItem = EditRepositoryMRUItem
        Properties.Value = 'What'#39's your favorite color?'
        ID = 14
        ParentID = 9
        Index = 4
        Version = 1
      end
      object VerticalGridCategoryRow3: TcxCategoryRow
        Properties.Caption = 'Blobs'
        ID = 15
        ParentID = -1
        Index = 2
        Version = 1
      end
      object vgBlobEditor: TcxEditorRow
        Properties.Caption = 'Blob Editor'
        Properties.RepositoryItem = EditRepositoryBlobItem
        Properties.Value = 'Please add text here...'
        ID = 16
        ParentID = 15
        Index = 0
        Version = 1
      end
      object vgImageEditor: TcxEditorRow
        Height = 220
        Properties.Caption = 'Image Editor'
        Properties.RepositoryItem = EditRepositoryImageItem
        Properties.DataBinding.ValueType = 'Variant'
        Properties.Value = Null
        ID = 17
        ParentID = 15
        Index = 1
        Version = 1
      end
      object vgMemoEditor: TcxEditorRow
        Height = 150
        Properties.Caption = 'Memo Editor'
        Properties.RepositoryItem = EditRepositoryMemoItem
        Properties.Value = Null
        ID = 18
        ParentID = 15
        Index = 2
        Version = 1
      end
      object VerticalGridCategoryRow4: TcxCategoryRow
        Properties.Caption = 'Popup'
        ID = 19
        ParentID = -1
        Index = 3
        Version = 1
      end
      object vgCalcEditor: TcxEditorRow
        Properties.Caption = 'Calc Editor'
        Properties.RepositoryItem = EditRepositoryCalcItem
        Properties.DataBinding.ValueType = 'Float'
        Properties.Value = 8234.219999999999000000
        ID = 20
        ParentID = 19
        Index = 0
        Version = 1
      end
      object vgDateEditor: TcxEditorRow
        Properties.Caption = 'Date Editor'
        Properties.RepositoryItem = EditRepositoryDateItem
        Properties.DataBinding.ValueType = 'DateTime'
        Properties.Value = Null
        ID = 21
        ParentID = 19
        Index = 1
        Version = 1
      end
      object vgPopupEditor: TcxEditorRow
        Properties.Caption = 'Popup Editor'
        Properties.RepositoryItem = EditRepositoryPopupItem
        Properties.Value = 'Pop me up...'
        ID = 22
        ParentID = 19
        Index = 2
        Version = 1
      end
      object VerticalGridCategoryRow5: TcxCategoryRow
        Properties.Caption = 'Extended'
        ID = 23
        ParentID = -1
        Index = 4
        Version = 1
      end
      object vgProgressBarEditor: TcxEditorRow
        Properties.Caption = 'ProgressBar Editor'
        Properties.RepositoryItem = EditRepositoryProgressBar
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 40
        Properties.OnGetEditingProperties = vgProgressBarEditorPropertiesGetEditingProperties
        ID = 24
        ParentID = 23
        Index = 0
        Version = 1
      end
      object vgShellComboBoxEditor: TcxEditorRow
        Properties.Caption = 'Shell ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryShellComboBoxItem
        Properties.Value = Null
        ID = 25
        ParentID = 23
        Index = 1
        Version = 1
      end
      object vgTrackBarEditor: TcxEditorRow
        Properties.Caption = 'Track BarEditor'
        Properties.RepositoryItem = EditRepositoryTrackBar
        Properties.DataBinding.ValueType = 'Integer'
        Properties.Value = 6
        ID = 26
        ParentID = 23
        Index = 2
        Version = 1
      end
      object vgColorComboBoxEditor: TcxEditorRow
        Properties.Caption = 'Color ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryColorComboBox
        Properties.Value = Null
        ID = 27
        ParentID = 23
        Index = 3
        Version = 1
      end
      object vgFontComboBoxEditor: TcxEditorRow
        Properties.Caption = 'Font ComboBox Editor'
        Properties.RepositoryItem = EditRepositoryFontNameComboBox
        Properties.Value = Null
        ID = 28
        ParentID = 23
        Index = 4
        Version = 1
      end
      object vgLabel: TcxEditorRow
        Properties.Caption = 'Label'
        Properties.RepositoryItem = EditRepositoryLabel
        Properties.Value = 'Sample'
        Styles.Content = cxStyle1
        ID = 29
        ParentID = 23
        Index = 5
        Version = 1
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Control = VerticalGrid
      ControlOptions.OriginalHeight = 633
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object EditRepository: TcxEditRepository
    Left = 328
    Top = 168
    PixelsPerInch = 96
    object EditRepositoryBlobItem: TcxEditRepositoryBlobItem
      Properties.BlobEditKind = bekMemo
    end
    object EditRepositoryButtonItem: TcxEditRepositoryButtonItem
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EditRepositoryButtonItemPropertiesButtonClick
    end
    object EditRepositoryCalcItem: TcxEditRepositoryCalcItem
    end
    object EditRepositoryCheckBoxItem: TcxEditRepositoryCheckBoxItem
    end
    object EditRepositoryComboBoxItem: TcxEditRepositoryComboBoxItem
      Properties.Items.Strings = (
        'Blue'
        'Green'
        'Brown'
        'Yellow'
        'Red'
        'Black')
    end
    object EditRepositoryCurrencyItem: TcxEditRepositoryCurrencyItem
    end
    object EditRepositoryDateItem: TcxEditRepositoryDateItem
    end
    object EditRepositoryHyperLinkItem: TcxEditRepositoryHyperLinkItem
      Properties.SingleClick = True
    end
    object EditRepositoryImageItem: TcxEditRepositoryImageItem
      Properties.GraphicClassName = 'TdxSmartImage'
    end
    object EditRepositoryImageComboBoxItem: TcxEditRepositoryImageComboBoxItem
      Properties.Images = dmMain.imMain
      Properties.Items = <
        item
          Description = 'Cash'
          ImageIndex = 8
          Value = 1
        end
        item
          Description = 'Visa'
          ImageIndex = 9
          Value = 2
        end
        item
          Description = 'MasterCard'
          ImageIndex = 10
          Value = 2
        end
        item
          Description = 'American Express'
          ImageIndex = 11
          Value = 4
        end>
    end
    object EditRepositoryLookupComboBoxItem: TcxEditRepositoryLookupComboBoxItem
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dmMain.dsDXProducts
    end
    object EditRepositoryMaskItem: TcxEditRepositoryMaskItem
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d\d\d - \d\d\d\d'
    end
    object EditRepositoryMemoItem: TcxEditRepositoryMemoItem
    end
    object EditRepositoryMRUItem: TcxEditRepositoryMRUItem
      Properties.LookupItems.Strings = (
        'Blue'
        'Green'
        'Brown'
        'Yellow'
        'Red'
        'Black')
      Properties.ShowEllipsis = False
    end
    object EditRepositoryPopupItem: TcxEditRepositoryPopupItem
      Properties.OnInitPopup = EditRepositoryPopupItemPropertiesInitPopup
    end
    object EditRepositoryRadioGroupItem: TcxEditRepositoryRadioGroupItem
      Properties.Columns = 3
      Properties.Items = <
        item
          Caption = 'Cash'
          Value = 0
        end
        item
          Caption = 'Visa'
          Value = 2
        end
        item
          Caption = 'MasterCard'
          Value = 1
        end>
    end
    object EditRepositorySpinItem: TcxEditRepositorySpinItem
    end
    object EditRepositoryTextItem: TcxEditRepositoryTextItem
    end
    object EditRepositoryTimeItem: TcxEditRepositoryTimeItem
      Properties.Use24HourFormat = False
    end
    object EditRepositoryProgressBar: TcxEditRepositoryProgressBar
      Properties.PeakValue = 40.000000000000000000
    end
    object EditRepositoryShellComboBoxItem: TcxEditRepositoryShellComboBoxItem
    end
    object EditRepositoryTrackBar: TcxEditRepositoryTrackBar
    end
    object EditRepositoryColorComboBox: TcxEditRepositoryColorComboBox
      Properties.CustomColors = <>
    end
    object EditRepositoryFontNameComboBox: TcxEditRepositoryFontNameComboBox
    end
    object EditRepositoryLabel: TcxEditRepositoryLabel
      Properties.Depth = 3
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 480
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
  end
end
