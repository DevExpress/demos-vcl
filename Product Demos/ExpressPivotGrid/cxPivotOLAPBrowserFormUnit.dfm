inherited frmOLAPBrowser: TfrmOLAPBrowser
  Caption = 'OLAP Browser'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited lcMain: TdxLayoutControl
    inherited UnboundPivot: TcxPivotGrid
      Height = 343
      OLAPDataSource = OLAPDataSource
      TabOrder = 2
      OnDblClick = UnboundPivotDblClick
      ExplicitHeight = 343
    end
    object cmbProvider: TcxComboBox [1]
      Left = 667
      Top = 41
      Properties.DropDownListStyle = lsEditFixedList
      Properties.Items.Strings = (
        'ADO MD'
        'OLE DB')
      Properties.OnChange = cmbProviderPropertiesChange
      Style.HotTrack = False
      TabOrder = 0
      Text = 'ADO MD'
      Width = 87
    end
    object btNewConnection: TcxButton [2]
      AlignWithMargins = True
      Left = 622
      Top = 68
      Width = 132
      Height = 25
      Margins.Top = 17
      Margins.Right = 6
      Margins.Bottom = 13
      Caption = 'New Connection'
      TabOrder = 1
      OnClick = btNewConnectionClick
    end
    inherited lgTools: TdxLayoutGroup
      Visible = True
    end
    inherited liDescription: TdxLayoutLabeledItem
      CaptionOptions.Text = 
        'This demo illustrates how to use OLAP to populate the PivotGrid ' +
        'with data. You can click the "New Connection" button to connect ' +
        'the PivotGrid to an OLAP Cube file or Analysis server.'
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Provider'
      Control = cmbProvider
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lgTools
      SizeOptions.AssignedValues = [sovSizableHorz]
      SizeOptions.SizableHorz = False
      SizeOptions.Width = 110
      CaptionOptions.Visible = False
      Control = btNewConnection
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 110
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  object OLAPDataSource: TcxPivotGridOLAPDataSource
    ProviderClassName = 'TcxPivotGridOLAPADOMDProvider'
    Left = 464
    Top = 48
  end
end
