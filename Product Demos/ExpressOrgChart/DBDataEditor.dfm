object fmDBDataEditor: TfmDBDataEditor
  Left = 0
  Top = 0
  Caption = 'DBOrgChart Data Editor'
  ClientHeight = 390
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 12
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 918
    Height = 390
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 10
      Top = 10
      Width = 898
      Height = 342
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = MainForm.DataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1ID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          MinWidth = 39
          Width = 39
        end
        object cxGrid1DBTableView1PARENT: TcxGridDBColumn
          Caption = 'ParentID'
          DataBinding.FieldName = 'PARENT'
          MinWidth = 39
          Width = 44
        end
        object cxGrid1DBTableView1NAME: TcxGridDBColumn
          Caption = 'Caption'
          DataBinding.FieldName = 'NAME'
          MinWidth = 39
          Width = 153
        end
        object cxGrid1DBTableView1WIDTH: TcxGridDBColumn
          Caption = 'Width'
          DataBinding.FieldName = 'WIDTH'
          MinWidth = 39
          Width = 39
        end
        object cxGrid1DBTableView1HEIGHT: TcxGridDBColumn
          Caption = 'Height'
          DataBinding.FieldName = 'HEIGHT'
          MinWidth = 39
          Width = 43
        end
        object cxGrid1DBTableView1TYPE: TcxGridDBColumn
          Caption = 'Shape'
          DataBinding.FieldName = 'TYPE'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Rectangle'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Round Rect'
              Value = '1'
            end
            item
              Description = 'Ellipse'
              Value = '2'
            end
            item
              Description = 'Diamond'
              Value = '3'
            end>
          MinWidth = 39
          Width = 88
        end
        object cxGrid1DBTableView1COLOR: TcxGridDBColumn
          Caption = 'Color'
          DataBinding.FieldName = 'COLOR'
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.CustomColors = <>
          MinWidth = 39
          Width = 117
        end
        object cxGrid1DBTableView1IMAGE: TcxGridDBColumn
          Caption = 'Image'
          DataBinding.FieldName = 'IMAGE'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taRightJustify
          Properties.AssignedValues.MinValue = True
          Properties.MaxValue = 10.000000000000000000
          MinWidth = 39
          Width = 39
        end
        object cxGrid1DBTableView1ORDER: TcxGridDBColumn
          Caption = 'Order'
          DataBinding.FieldName = 'ORDER'
          MinWidth = 39
          Width = 39
        end
        object cxGrid1DBTableView1ALIGN: TcxGridDBColumn
          Caption = 'Align'
          DataBinding.FieldName = 'ALIGN'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'Left'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Center'
              Value = '1'
            end
            item
              Description = 'Right'
              Value = '2'
            end>
          MinWidth = 39
          Width = 58
        end
        object cxGrid1DBTableView1IMAGEALIGN: TcxGridDBColumn
          Caption = 'Image Align'
          DataBinding.FieldName = 'IMAGEALIGN'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'None'
              ImageIndex = 0
              Value = '0'
            end
            item
              Description = 'Left-Top'
              Value = '1'
            end
            item
              Description = 'Left-Center'
              Value = '2'
            end
            item
              Description = 'Left-Bottom'
              Value = '3'
            end
            item
              Description = 'Right-Top'
              Value = '4'
            end
            item
              Description = 'Right-Center'
              Value = '5'
            end
            item
              Description = 'Right-Bottom'
              Value = '6'
            end
            item
              Description = 'Top-Left'
              Value = '7'
            end
            item
              Description = 'Top-Center'
              Value = '8'
            end
            item
              Description = 'Top-Right'
              Value = '9'
            end
            item
              Description = 'Bottom-Left'
              Value = '10'
            end
            item
              Description = 'Bottom-Center'
              Value = '11'
            end
            item
              Description = 'Bottom-Right'
              Value = '12'
            end>
          Width = 78
        end
        object cxGrid1DBTableView1CDATE: TcxGridDBColumn
          Caption = 'Creation Date'
          DataBinding.FieldName = 'CDATE'
          PropertiesClassName = 'TcxDateEditProperties'
          MinWidth = 39
          Width = 75
        end
        object cxGrid1DBTableView1CBY: TcxGridDBColumn
          Caption = 'Created By'
          DataBinding.FieldName = 'CBY'
          MinWidth = 39
          Width = 75
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxButton1: TcxButton
      Left = 838
      Top = 358
      Width = 70
      Height = 22
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Cancel = True
      Caption = '&Close'
      ModalResult = 2
      OptionsImage.Spacing = 3
      TabOrder = 1
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutCxLookAndFeel1
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.MinHeight = 16
      ControlOptions.MinWidth = 16
      ControlOptions.OriginalHeight = 180
      ControlOptions.OriginalWidth = 346
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.MinHeight = 16
      ControlOptions.MinWidth = 16
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 70
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
      ItemOptions.CaptionOptions.Font.Charset = DEFAULT_CHARSET
      ItemOptions.CaptionOptions.Font.Color = clWindowText
      ItemOptions.CaptionOptions.Font.Height = -12
      ItemOptions.CaptionOptions.Font.Name = 'Tahoma'
      ItemOptions.CaptionOptions.Font.Style = []
      ItemOptions.CaptionOptions.UseDefaultFont = False
      PixelsPerInch = 96
    end
  end
end
