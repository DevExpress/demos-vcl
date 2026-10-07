object fmTaskCustomDate: TfmTaskCustomDate
  Left = 675
  Top = 428
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'Custom'
  ClientHeight = 137
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 265
    Height = 137
    TabOrder = 0
    AutoSize = True
    object edDateStart: TcxDBDateEdit
      Left = 68
      Top = 12
      DataBinding.DataField = 'DateStart'
      DataBinding.DataSource = DM.dsTasks
      Style.HotTrack = False
      TabOrder = 0
      Width = 181
    end
    object edDateDue: TcxDBDateEdit
      Left = 68
      Top = 46
      DataBinding.DataField = 'DateDue'
      DataBinding.DataSource = DM.dsTasks
      Style.HotTrack = False
      TabOrder = 1
      Width = 181
    end
    object cxButton3: TcxButton
      Left = 92
      Top = 97
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 174
      Top = 97
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 3
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object liStartDate: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Start Date'
      Control = edDateStart
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 181
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liDueDate: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Due Date'
      Control = edDateDue
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object liOK: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = cxButton3
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liCancel: TdxLayoutItem
      Parent = lgButtons
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = cxButton4
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lgButtons: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object liSpace: TdxLayoutEmptySpaceItem
      Parent = dxLayoutControl1Group_Root
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 2
    end
  end
end
