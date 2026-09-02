object fmTaskEdit: TfmTaskEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EDIT TASK'
  ClientHeight = 314
  ClientWidth = 905
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 905
    Height = 314
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = DM.dxLayoutCxLookAndFeel1
    OptionsItem.AutoControlTabOrders = False
    OptionsItem.SizableHorz = True
    OptionsItem.SizableVert = True
    object edHomePhone: TcxDBTextEdit
      Left = 428
      Top = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Subject'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 477
    end
    object edOwner: TcxDBLookupComboBox
      Left = 123
      Top = 17
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'OwnerId'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'FullName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsEmployeesHelper
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 153
    end
    object edAssigned: TcxDBLookupComboBox
      Left = 123
      Top = 54
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'AssignedEmployeeId'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'FullName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsEmployeesHelper
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 153
    end
    object edStartDate: TcxDBDateEdit
      Left = 123
      Top = 109
      HelpType = htKeyword
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'StartDate'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 153
    end
    object edDueDate: TcxDBDateEdit
      Left = 123
      Top = 146
      HelpType = htKeyword
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'DueDate'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 153
    end
    object edPriority: TcxDBImageComboBox
      Left = 123
      Top = 238
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Priority'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = DM.ilPriority
      Properties.Items = <
        item
          Description = 'Low'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Normal'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'High'
          ImageIndex = 2
          Value = 2
        end
        item
          Description = 'Urgent'
          ImageIndex = 3
          Value = 3
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 153
    end
    object edStatus: TcxDBLookupComboBox
      Left = 123
      Top = 201
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Status'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'StatusName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.dsTaskStatus
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 153
    end
    object edProfile: TcxDBRichEdit
      Left = 428
      Top = 54
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -14
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 138
      Width = 477
    end
    object edComplete: TcxTrackBar
      Left = 428
      Top = 202
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Properties.Max = 100
      Properties.ShowPositionHint = True
      Properties.ThumbHeight = 16
      Properties.ThumbWidth = 9
      Properties.TickSize = 4
      Properties.TrackSize = 13
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Height = 63
      Width = 477
    end
    object btnSave: TcxButton
      Left = 698
      Top = 275
      Width = 104
      Height = 34
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Save'
      ModalResult = 1
      OptionsImage.ImageIndex = 30
      OptionsImage.Images = DM.ilButtons
      OptionsImage.Spacing = 13
      TabOrder = 9
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TcxButton
      Left = 812
      Top = 275
      Width = 93
      Height = 34
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = DM.ilButtons
      OptionsImage.Spacing = 8
      TabOrder = 10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      SizeOptions.Height = 168
      ButtonOptions.DefaultHeight = 14
      ButtonOptions.DefaultWidth = 14
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object liSubject: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'SUBJECT'
      Control = edHomePhone
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 477
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 198
      SizeOptions.Width = 27
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object liOwner: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 193
      CaptionOptions.Text = 'OWNER'
      Control = edOwner
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 171
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahLeft
      Index = 0
    end
    object liAssignedTo: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'ASSIGNED TO'
      Control = edAssigned
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liStartDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 259
      CaptionOptions.Text = 'START DATE'
      Control = edStartDate
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Height = 8
      SizeOptions.Width = 8
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object liDueDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'DUE DATE'
      Control = edDueDate
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 126
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Height = 8
      SizeOptions.Width = 8
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object liPriority: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 187
      CaptionOptions.Text = 'PRIORITY'
      Control = edPriority
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 128
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liStatus: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 188
      CaptionOptions.Text = 'STATUS'
      Control = edStatus
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 133
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liDescription: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 100
      SizeOptions.Width = 538
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'DESCRIPTION'
      Control = edProfile
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 424
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group1
      AlignHorz = ahRight
      Index = 2
    end
    object liComplete: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      CaptionOptions.Text = '% COMPLETE'
      Control = edComplete
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 164
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avBottom
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      SizeOptions.Width = 104
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 104
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      SizeOptions.Width = 93
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 17
      ControlOptions.MinWidth = 17
      ControlOptions.OriginalHeight = 34
      ControlOptions.OriginalWidth = 93
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      Index = 0
    end
  end
end
