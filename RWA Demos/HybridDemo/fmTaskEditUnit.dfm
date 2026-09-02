object fmTaskEdit: TfmTaskEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'EDIT TASK'
  ClientHeight = 491
  ClientWidth = 1414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1414
    Height = 491
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = DM.dxLayoutCxLookAndFeel1
    OptionsItem.AutoControlTabOrders = False
    OptionsItem.SizableHorz = True
    OptionsItem.SizableVert = True
    object edHomePhone: TcxDBTextEdit
      Left = 640
      Top = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Subject'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 745
    end
    object edOwner: TcxDBLookupComboBox
      Left = 164
      Top = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 269
    end
    object edAssigned: TcxDBLookupComboBox
      Left = 164
      Top = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 269
    end
    object edStartDate: TcxDBDateEdit
      Left = 164
      Top = 165
      HelpType = htKeyword
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'StartDate'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 269
    end
    object edDueDate: TcxDBDateEdit
      Left = 164
      Top = 219
      HelpType = htKeyword
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'DueDate'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Properties.DateButtons = [btnClear]
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 269
    end
    object edPriority: TcxDBImageComboBox
      Left = 164
      Top = 356
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 269
    end
    object edStatus: TcxDBLookupComboBox
      Left = 164
      Top = 302
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 269
    end
    object edProfile: TcxDBRichEdit
      Left = 640
      Top = 82
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = DM.dsTasks
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -22
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Height = 198
      Width = 745
    end
    object edComplete: TcxTrackBar
      Left = 640
      Top = 296
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Properties.Max = 100
      Properties.ShowPositionHint = True
      Properties.ThumbHeight = 16
      Properties.ThumbWidth = 9
      Properties.TickSize = 4
      Properties.TrackSize = 13
      Style.HotTrack = False
      TabOrder = 8
      Transparent = True
      Height = 99
      Width = 745
    end
    object btnSave: TcxButton
      Left = 1062
      Top = 411
      Width = 162
      Height = 52
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Save'
      ModalResult = 1
      OptionsImage.ImageIndex = 30
      OptionsImage.Images = DM.ilButtons
      OptionsImage.Spacing = 20
      TabOrder = 9
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object btnCancel: TcxButton
      Left = 1240
      Top = 411
      Width = 145
      Height = 52
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cancel'
      ModalResult = 2
      OptionsImage.ImageIndex = 31
      OptionsImage.Images = DM.ilButtons
      OptionsImage.Spacing = 13
      TabOrder = 10
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -22
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
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
      SizeOptions.Height = 262
      ButtonOptions.Buttons = <>
      ButtonOptions.DefaultHeight = 21
      ButtonOptions.DefaultWidth = 21
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
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 745
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutControl1Group1
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 309
      SizeOptions.Width = 42
      CaptionOptions.Text = 'Empty Space Item'
      Index = 1
    end
    object liOwner: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 301
      CaptionOptions.Text = 'OWNER'
      Control = edOwner
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 267
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
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liStartDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 405
      CaptionOptions.Text = 'START DATE'
      Control = edStartDate
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Height = 13
      SizeOptions.Width = 13
      CaptionOptions.Text = 'Empty Space Item'
      Index = 2
    end
    object liDueDate: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'DUE DATE'
      Control = edDueDate
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 196
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Height = 13
      SizeOptions.Width = 13
      CaptionOptions.Text = 'Empty Space Item'
      Index = 5
    end
    object liPriority: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 292
      CaptionOptions.Text = 'PRIORITY'
      Control = edPriority
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object liStatus: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      SizeOptions.Width = 294
      CaptionOptions.Text = 'STATUS'
      Control = edStatus
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 38
      ControlOptions.OriginalWidth = 207
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object liDescription: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 156
      SizeOptions.Width = 840
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 'DESCRIPTION'
      Control = edProfile
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 156
      ControlOptions.OriginalWidth = 662
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
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 99
      ControlOptions.OriginalWidth = 256
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
      SizeOptions.Width = 162
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnSave
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 52
      ControlOptions.OriginalWidth = 162
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avTop
      SizeOptions.Width = 145
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btnCancel
      ControlOptions.MinHeight = 26
      ControlOptions.MinWidth = 26
      ControlOptions.OriginalHeight = 52
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      Index = 0
    end
  end
end
