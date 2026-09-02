inherited frmGridAutoHeight: TfrmGridAutoHeight
  inherited PanelDescription: TdxPanel
    ExplicitTop = 667
  end
  inherited PanelGrid: TdxPanel
    Width = 652
    ExplicitWidth = 688
    ExplicitHeight = 667
    inherited Grid: TcxGrid
      Width = 652
      Height = 667
      ExplicitWidth = 688
      ExplicitHeight = 667
      object DBTableView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dmMain.dsEmployees
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.DataRowSizing = True
        OptionsCustomize.GroupRowSizing = True
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object DBTableViewEmployeeID: TcxGridDBColumn
          DataBinding.FieldName = 'EmployeeID'
          Visible = False
        end
        object DBTableViewFirstName: TcxGridDBColumn
          Caption = 'First Name'
          DataBinding.FieldName = 'FirstName'
          Options.AutoWidthSizable = False
          Width = 72
        end
        object DBTableViewLastName: TcxGridDBColumn
          Caption = 'Last Name'
          DataBinding.FieldName = 'LastName'
          Options.AutoWidthSizable = False
          Width = 72
        end
        object DBTableViewTitle: TcxGridDBColumn
          DataBinding.FieldName = 'Title'
          Visible = False
        end
        object DBTableViewTitleOfCourtesy: TcxGridDBColumn
          Caption = 'Title Of Courtesy'
          DataBinding.FieldName = 'TitleOfCourtesy'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = dmMain.ilMain
          Properties.Items = <
            item
              Description = 'Dr.'
              ImageIndex = 27
              Value = 'Dr.'
            end
            item
              Description = 'Mr.'
              ImageIndex = 12
              Value = 'Mr.'
            end
            item
              Description = 'Ms.'
              ImageIndex = 13
              Value = 'Ms.'
            end
            item
              Description = 'Mrs.'
              ImageIndex = 26
              Value = 'Mrs.'
            end
            item
              Description = 'Miss.'
              ImageIndex = 25
              Value = 'Miss.'
            end>
          Options.AutoWidthSizable = False
          Width = 102
        end
        object DBTableViewBirthDate: TcxGridDBColumn
          Caption = 'Birth Date'
          DataBinding.FieldName = 'BirthDate'
          Options.AutoWidthSizable = False
          Width = 68
        end
        object DBTableViewHireDate: TcxGridDBColumn
          DataBinding.FieldName = 'HireDate'
          Visible = False
        end
        object DBTableViewAddress: TcxGridDBColumn
          DataBinding.FieldName = 'Address'
          Visible = False
        end
        object DBTableViewCity: TcxGridDBColumn
          DataBinding.FieldName = 'City'
          Visible = False
        end
        object DBTableViewRegion: TcxGridDBColumn
          DataBinding.FieldName = 'Region'
          Visible = False
        end
        object DBTableViewPostalCode: TcxGridDBColumn
          DataBinding.FieldName = 'PostalCode'
          Visible = False
        end
        object DBTableViewCountry: TcxGridDBColumn
          DataBinding.FieldName = 'Country'
          Visible = False
        end
        object DBTableViewHomePhone: TcxGridDBColumn
          DataBinding.FieldName = 'HomePhone'
          Visible = False
        end
        object DBTableViewExtension: TcxGridDBColumn
          DataBinding.FieldName = 'Extension'
          Visible = False
        end
        object DBTableViewPhoto: TcxGridDBColumn
          DataBinding.FieldName = 'Photo'
          PropertiesClassName = 'TcxImageProperties'
          Properties.FitMode = ifmProportionalStretch
          Properties.GraphicClassName = 'TdxSmartImage'
          Properties.ShowFocusRect = False
          Options.AutoWidthSizable = False
          Width = 150
        end
        object DBTableViewNotes: TcxGridDBColumn
          DataBinding.FieldName = 'Notes'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 317
        end
        object DBTableViewReportsTo: TcxGridDBColumn
          DataBinding.FieldName = 'ReportsTo'
          Visible = False
        end
      end
      object GridLevel: TcxGridLevel
        GridView = DBTableView
      end
    end
  end
  inherited PanelSetupTools: TdxPanel
    Left = 652
    Width = 270
    ExplicitLeft = 652
    ExplicitWidth = 270
    inherited gbSetupTools: TcxGroupBox
      ExplicitWidth = 233
      Width = 269
      inherited lcFrame: TdxLayoutControl
        Width = 267
        ExplicitWidth = 231
        ExplicitHeight = 647
        object edImageHeight: TcxSpinEdit [0]
          Left = 119
          Top = 56
          Enabled = False
          Properties.Increment = 5.000000000000000000
          Properties.LargeIncrement = 25.000000000000000000
          Properties.MaxValue = 200.000000000000000000
          Properties.MinValue = 25.000000000000000000
          Properties.SpinButtons.ShowFastButtons = True
          Properties.OnChange = edImageHeightPropertiesChange
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          TabOrder = 0
          Value = 100
          Width = 138
        end
        inherited lcFrameGroup_Root: TdxLayoutGroup
          ItemIndex = 2
        end
        inherited lgSetupTools: TdxLayoutGroup
          Index = 3
        end
        object liImageHeight: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          Control = edImageHeight
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 97
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = lcFrameGroup_Root
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object rbAutoHeight: TdxLayoutRadioButtonItem
          Parent = lcFrameGroup_Root
          SizeOptions.Height = 17
          SizeOptions.Width = 95
          CaptionOptions.Text = 'Auto Height'
          Checked = True
          TabStop = True
          OnClick = rbScaleImageClick
          Index = 0
        end
        object rbMemoAutoHeight: TdxLayoutRadioButtonItem
          Parent = lcFrameGroup_Root
          SizeOptions.Height = 17
          SizeOptions.Width = 131
          CaptionOptions.Text = 'Memo Edit Auto Height'
          OnClick = rbScaleImageClick
          Index = 1
        end
        object rbScaleImage: TdxLayoutRadioButtonItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahLeft
          AlignVert = avCenter
          SizeOptions.Height = 17
          SizeOptions.Width = 103
          CaptionOptions.Text = 'Scale Image (%)'
          OnClick = rbScaleImageClick
          Index = 0
        end
      end
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
