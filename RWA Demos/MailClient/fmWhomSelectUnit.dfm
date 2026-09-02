object fmWhomSelect: TfmWhomSelect
  Left = 557
  Top = 175
  Caption = 'Select Contact(s)'
  ClientHeight = 515
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 489
    Height = 515
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 11
      Top = 11
      Width = 467
      Height = 431
      TabOrder = 0
      object tvContacts: TcxGridDBTableView
        OnDblClick = cxbToClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = DM.dsContacts
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = dbcName
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsCustomize.ColumnMoving = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.FocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.Header = False
        OptionsView.RowSeparatorColor = clNone
        object dbcCustomerId: TcxGridDBColumn
          DataBinding.FieldName = 'CustomerId'
          Visible = False
          Width = 20
        end
        object dbcName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          SortIndex = 0
          SortOrder = soAscending
          Width = 155
        end
        object dbcMiddleName: TcxGridDBColumn
          DataBinding.FieldName = 'MiddleName'
          Visible = False
          Width = 118
        end
        object dbcEmail: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          Width = 162
        end
        object dbcAddress: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
          Visible = False
          Width = 212
        end
        object dbcPhone: TcxGridDBColumn
          DataBinding.FieldName = 'Phone'
          Visible = False
          Width = 100
        end
        object dbcComments: TcxGridDBColumn
          DataBinding.FieldName = 'Comments'
          Visible = False
          Width = 20
        end
        object dbcPhoto: TcxGridDBColumn
          DataBinding.FieldName = 'Photo'
          Visible = False
          Width = 20
        end
        object dbcDiscountLevel: TcxGridDBColumn
          DataBinding.FieldName = 'DiscountLevel'
          Visible = False
          Width = 20
        end
        object dbcFirstName: TcxGridDBColumn
          DataBinding.FieldName = 'FirstName'
          Visible = False
          Width = 20
        end
        object dbcLastName: TcxGridDBColumn
          DataBinding.FieldName = 'LastName'
          Visible = False
          Width = 20
        end
        object dbcGender: TcxGridDBColumn
          DataBinding.FieldName = 'Gender'
          Visible = False
          Width = 20
        end
        object dbcBirthDate: TcxGridDBColumn
          DataBinding.FieldName = 'BirthDate'
          Visible = False
          Width = 20
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = tvContacts
      end
    end
    object cxbTo: TcxButton
      Left = 11
      Top = 448
      Width = 75
      Height = 25
      Caption = 'To ->'
      TabOrder = 1
      OnClick = cxbToClick
    end
    object cxButton1: TcxButton
      Left = 322
      Top = 479
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 403
      Top = 479
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 4
    end
    object teTo: TdxTokenEdit
      Left = 92
      Top = 448
      ParentShowHint = False
      Properties.Images = DM.cxGridsImageList_16
      Properties.ImmediatePost = True
      Properties.Lookup.FilterSources = [tefsDisplayText]
      Properties.MaxLineCount = 3
      Properties.PostEditValueOnFocusLeave = True
      Properties.Tokens = <>
      ShowHint = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 386
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      AlignHorz = ahLeft
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxbTo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'dxTokenEdit1'
      CaptionOptions.Visible = False
      Control = teTo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
