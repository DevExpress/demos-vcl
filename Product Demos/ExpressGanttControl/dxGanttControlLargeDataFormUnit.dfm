inherited frmLargeData: TfrmLargeData
  inherited lcMain: TdxLayoutControl
    ExplicitWidth = 961
    ExplicitHeight = 795
    inherited dxGanttControl: TdxGanttControl
      Width = 699
      TabOrder = 4
      ViewChart.OptionsSheet.RowHeaderWidth = 55
      ViewChart.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskName'
          UID = 1
          Width = 305
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskDuration'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskStart'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskFinish'
          UID = 1
        end>
      ViewChart.OptionsSheet.Width = 400
      ViewResourceSheet.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnName'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnType'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnGroup'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlResourceSheetColumnBaseCalendar'
          UID = 1
        end>
      ExplicitWidth = 699
    end
    inherited cmbChartTimescale: TcxComboBox
      Left = 747
      Top = 238
      ExplicitLeft = 747
      ExplicitTop = 238
    end
    object btnGenerate: TcxButton [4]
      Left = 734
      Top = 110
      Width = 208
      Height = 25
      Caption = 'Generate'
      TabOrder = 0
      OnClick = btnGenerateClick
    end
    inherited lgMainGroup: TdxLayoutGroup
      Index = 2
    end
    inherited lgTools: TdxLayoutGroup
      SizeOptions.Width = 170
      ShowBorder = False
      Index = 1
    end
    inherited dxLayoutSplitterItem1: TdxLayoutSplitterItem
      Index = 0
    end
    inherited lgActiveView: TdxLayoutGroup
      Visible = False
      Index = 1
    end
    object lgTasks: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'Task Count'
      ButtonOptions.Buttons = <>
      ItemIndex = 3
      Index = 0
    end
    object rb100K: TdxLayoutRadioButtonItem
      Tag = 100000
      Parent = lgTasks
      SizeOptions.Height = 17
      SizeOptions.Width = 198
      CaptionOptions.Text = '100K'
      Checked = True
      GroupIndex = 1
      TabStop = True
      Index = 0
    end
    object rb500K: TdxLayoutRadioButtonItem
      Tag = 500000
      Parent = lgTasks
      SizeOptions.Height = 17
      SizeOptions.Width = 198
      CaptionOptions.Text = '500K'
      GroupIndex = 1
      Index = 1
    end
    object rb1M: TdxLayoutRadioButtonItem
      Tag = 1000000
      Parent = lgTasks
      SizeOptions.Height = 17
      SizeOptions.Width = 198
      CaptionOptions.Text = '1M'
      GroupIndex = 1
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTasks
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btnGenerate
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    Left = 104
    Top = 112
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end
