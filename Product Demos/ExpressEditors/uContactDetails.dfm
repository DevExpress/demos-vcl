inherited frmContactDetails: TfrmContactDetails
  inherited lcFrame: TdxLayoutControl
    object edFirstName: TcxDBTextEdit [0]
      Left = 90
      Top = 28
      DataBinding.DataField = 'FirstName'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Width = 276
    end
    object edLastName: TcxDBTextEdit [1]
      Left = 90
      Top = 55
      DataBinding.DataField = 'LastName'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 276
    end
    object edFullName: TcxDBTextEdit [2]
      Left = 90
      Top = 82
      DataBinding.DataField = 'FullName'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 276
    end
    object edBirthDate: TcxDBDateEdit [3]
      Left = 90
      Top = 109
      DataBinding.DataField = 'BirthDate'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 276
    end
    object edTitle: TcxDBTextEdit [4]
      Left = 90
      Top = 136
      DataBinding.DataField = 'Title'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 130
    end
    object cbPrefix: TcxDBImageComboBox [5]
      Left = 259
      Top = 136
      RepositoryItem = edrepPrefix
      DataBinding.DataField = 'Prefix'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 107
    end
    object imPhoto: TcxDBImage [6]
      Left = 388
      Top = 28
      DataBinding.DataField = 'Picture'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Height = 129
      Width = 121
    end
    object edAddressLine: TcxDBTextEdit [7]
      Left = 90
      Top = 179
      DataBinding.DataField = 'Address_Line'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 419
    end
    object edAddressCity: TcxDBTextEdit [8]
      Left = 90
      Top = 206
      DataBinding.DataField = 'Address_City'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 419
    end
    object edZipCode: TcxDBMaskEdit [9]
      Left = 340
      Top = 233
      DataBinding.DataField = 'Address_ZipCode'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '\d\d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Width = 169
    end
    object edState: TcxDBLookupComboBox [10]
      Left = 90
      Top = 233
      DataBinding.DataField = 'Address_State'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'ShortName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsStates
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 9
      Width = 197
    end
    object edHomePhone: TcxDBButtonEdit [11]
      Left = 90
      Top = 276
      DataBinding.DataField = 'HomePhone'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 9
          Kind = bkGlyph
        end>
      Properties.Images = dmMain.ilMain
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d\d\d - \d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 11
      Width = 419
    end
    object edMobilePhone: TcxDBButtonEdit [12]
      Left = 90
      Top = 306
      DataBinding.DataField = 'MobilePhone'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 10
          Kind = bkGlyph
        end>
      Properties.Images = dmMain.ilMain
      Properties.MaskKind = emkRegExprEx
      Properties.EditMask = '(\(\d\d\d\))? \d\d\d - \d\d\d\d'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 12
      Width = 419
    end
    object edEmail: TcxDBButtonEdit [13]
      Left = 90
      Top = 336
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 11
          Kind = bkGlyph
        end>
      Properties.Images = dmMain.ilMain
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 13
      Width = 419
    end
    object edSkype: TcxDBButtonEdit [14]
      Left = 90
      Top = 366
      DataBinding.DataField = 'Skype'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 12
          Kind = bkGlyph
        end>
      Properties.Images = dmMain.ilMain
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      TabOrder = 14
      Width = 419
    end
    object edDepartment: TcxDBLookupComboBox [15]
      Left = 593
      Top = 28
      DataBinding.DataField = 'Department'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.KeyFieldNames = 'Department_ID'
      Properties.ListColumns = <
        item
          FieldName = 'Department_Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dmMain.dsDepartments
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 15
      Width = 20
    end
    object edStatus: TcxDBImageComboBox [16]
      Left = 593
      Top = 55
      RepositoryItem = edrepStatus
      DataBinding.DataField = 'Status'
      DataBinding.DataSource = dmMain.dsEmployees
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 16
      Width = 20
    end
    object edHireDate: TcxDBDateEdit [17]
      Left = 593
      Top = 82
      DataBinding.DataField = 'HireDate'
      DataBinding.DataSource = dmMain.dsEmployees
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 17
      Width = 20
    end
    object grTask: TcxGrid [18]
      Left = 22
      Top = 430
      Width = 591
      Height = 20
      TabOrder = 19
      object tvTask: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmMain.dsTasks
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        Preview.Column = clmDescription
        Preview.Visible = True
        object clmPriority: TcxGridDBColumn
          Caption = 'Priority'
          DataBinding.FieldName = 'PRIORITY'
          RepositoryItem = edrepPriority
          Width = 88
        end
        object clmDueDate: TcxGridDBColumn
          Caption = 'Due Date'
          DataBinding.FieldName = 'DUEDATE'
          Styles.Content = cxStyleBoldColumn
          Width = 88
        end
        object clmSubject: TcxGridDBColumn
          Caption = 'Subject'
          DataBinding.FieldName = 'SUBJECT'
          Width = 469
        end
        object clmCompletion: TcxGridDBColumn
          Caption = 'Completion'
          DataBinding.FieldName = 'COMPLETION'
          PropertiesClassName = 'TcxProgressBarProperties'
          Width = 448
        end
        object clmDescription: TcxGridDBColumn
          Caption = 'Description'
          DataBinding.FieldName = 'DESCRIPTION'
        end
      end
      object lvlTask: TcxGridLevel
        GridView = tvTask
      end
    end
    object grEvaluation: TcxGrid [19]
      Left = 531
      Top = 143
      Width = 82
      Height = 247
      TabOrder = 18
      object tvEvaluation: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dmMain.dsEvaluation
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmSmartTag
        object clmCreatedOn: TcxGridDBColumn
          Caption = 'Created on'
          DataBinding.FieldName = 'CreatedOn'
          Styles.Content = cxStyleBoldColumn
          Width = 79
        end
        object clmEvaluationSubject: TcxGridDBColumn
          DataBinding.FieldName = 'Subject'
          Width = 183
        end
        object clmManager: TcxGridDBColumn
          DataBinding.FieldName = 'Manager'
          Width = 126
        end
      end
      object lvlEvaluation: TcxGridLevel
        GridView = tvEvaluation
      end
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'First Name'
      Control = edFirstName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Last Name'
      Control = edLastName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Full Name'
      Control = edFullName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Birth Date'
      Control = edBirthDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Title'
      Control = edTitle
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'Prefix'
      Control = cbPrefix
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 107
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup5
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup5
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'cxImage1'
      CaptionOptions.Visible = False
      Control = imPhoto
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Address'
      Control = edAddressLine
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'City'
      Control = edAddressCity
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'ZIP code'
      Control = edZipCode
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'State'
      Control = edState
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 197
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Mobile Phone'
      Control = edMobilePhone
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Email'
      Control = edEmail
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Skype'
      Control = edSkype
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 404
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 404
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup8
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup6
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Department'
      Control = edDepartment
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Status'
      Control = edStatus
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Hire Date'
      Control = edHireDate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 3
    end
    object dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem
      Parent = lgContent
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Empty Space Item'
      SizeOptions.Height = 10
      SizeOptions.Width = 10
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = lgContent
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tasks'
      CaptionOptions.Layout = clTop
      Control = grTask
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignVert = avClient
      CaptionOptions.Text = 'Evaluations'
      CaptionOptions.Layout = clTop
      Control = grEvaluation
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'Home Phone'
      Control = edHomePhone
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited amAdorners: TdxUIAdornerManager
    OnGuideGetCalloutPopupControl = amAdornersGuideGetCalloutPopupControl
    object gdFirstName: TdxGuide
      Tag = 1
      TargetElement.Control = edFirstName
    end
    object gdLastName: TdxGuide
      Tag = 1
      TargetElement.Control = edLastName
    end
    object gdFullName: TdxGuide
      Tag = 1
      TargetElement.Control = edFullName
    end
    object gdBirthDate: TdxGuide
      Tag = 1
      TargetElement.Control = edBirthDate
    end
    object gdTitle: TdxGuide
      Tag = 1
      TargetElement.Control = edTitle
    end
    object gdPrefix: TdxGuide
      Tag = 1
      TargetElement.Control = cbPrefix
    end
    object gdPhoto: TdxGuide
      Tag = 1
      TargetElement.Control = imPhoto
    end
    object gdDepartment: TdxGuide
      Tag = 1
      TargetElement.Control = edDepartment
    end
    object gdStatus: TdxGuide
      Tag = 1
      TargetElement.Control = edStatus
    end
    object gdHireDate: TdxGuide
      Tag = 1
      TargetElement.Control = edHireDate
    end
    object gdAddressLine: TdxGuide
      Tag = 1
      TargetElement.Control = edAddressLine
    end
    object gdAddressCity: TdxGuide
      Tag = 1
      TargetElement.Control = edAddressCity
    end
    object gdState: TdxGuide
      Tag = 1
      TargetElement.Control = edState
    end
    object gdZipCode: TdxGuide
      Tag = 1
      TargetElement.Control = edZipCode
    end
    object gdHomePhone: TdxGuide
      Tag = 1
      TargetElement.Control = edHomePhone
    end
    object gdMobilePhone: TdxGuide
      Tag = 1
      TargetElement.Control = edMobilePhone
    end
    object gdEmail: TdxGuide
      Tag = 1
      TargetElement.Control = edEmail
    end
    object gdSkype: TdxGuide
      Tag = 1
      TargetElement.Control = edSkype
    end
    object gdCreatedOn: TdxGuide
      Tag = 3
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grEvaluation.lvlEvaluation.tvEvaluation.clmCreatedOn.Header'
    end
    object gdEvaluationSubject: TdxGuide
      Tag = 3
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 
        'grEvaluation.lvlEvaluation.tvEvaluation.clmEvaluationSubject.Hea' +
        'der'
    end
    object gdManager: TdxGuide
      Tag = 3
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grEvaluation.lvlEvaluation.tvEvaluation.clmManager.Header'
    end
    object gdPriority: TdxGuide
      Tag = 2
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grTask.lvlTask.tvTask.clmPriority.Header'
    end
    object gdDueDate: TdxGuide
      Tag = 2
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grTask.lvlTask.tvTask.clmDueDate.Header'
    end
    object gdSubject: TdxGuide
      Tag = 2
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grTask.lvlTask.tvTask.clmSubject.Header'
    end
    object gdCompletion: TdxGuide
      Tag = 2
      TargetElementClassName = 'TdxAdornerTargetElementPath'
      TargetElement.Path = 'grTask.lvlTask.tvTask.clmCompletion.Header'
    end
  end
  object cxEditRepository1: TcxEditRepository
    Left = 608
    Top = 296
    PixelsPerInch = 96
    object edrepPrefix: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = dmMain.ilMain
      Properties.Items = <
        item
          Description = 'Dr'
          ImageIndex = 4
          Value = 0
        end
        item
          Description = 'Mr'
          ImageIndex = 5
          Value = 1
        end
        item
          Description = 'Ms'
          ImageIndex = 6
          Value = 2
        end
        item
          Description = 'Miss'
          ImageIndex = 7
          Value = 3
        end
        item
          Description = 'Mrs'
          ImageIndex = 8
          Value = 4
        end>
    end
    object edrepStatus: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Images = dmMain.ilMain
      Properties.Items = <
        item
          Description = 'Salaried'
          ImageIndex = 13
          Value = 0
        end
        item
          Description = 'Commission'
          ImageIndex = 14
          Value = 1
        end
        item
          Description = 'Terminated'
          ImageIndex = 15
          Value = 2
        end
        item
          Description = 'On Leave'
          ImageIndex = 16
          Value = 3
        end>
    end
    object edrepPriority: TcxEditRepositoryImageComboBoxItem
      Properties.Alignment.Horz = taCenter
      Properties.Images = dmMain.ilMain
      Properties.Items = <
        item
          ImageIndex = 17
          Value = 1
        end
        item
          ImageIndex = 18
          Value = 2
        end
        item
          ImageIndex = 19
          Value = 3
        end
        item
          ImageIndex = 20
          Value = 4
        end>
      Properties.ShowDescriptions = False
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyleBoldColumn: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end
