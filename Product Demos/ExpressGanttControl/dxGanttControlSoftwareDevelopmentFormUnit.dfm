inherited frmSoftwareDevelopment: TfrmSoftwareDevelopment
  inherited lcMain: TdxLayoutControl
    ExplicitWidth = 961
    ExplicitHeight = 795
    inherited dxGanttControl: TdxGanttControl
      Width = 699
      TabOrder = 3
      ViewChart.OptionsSheet.Columns.Items = <
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnIndicator'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskMode'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnTaskName'
          UID = 1
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
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnPredecessors'
          UID = 1
        end
        item
          ItemClass = 'TdxGanttControlViewChartSheetColumnResourceName'
          UID = 1
        end>
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
      Top = 95
      TabOrder = 0
      ExplicitLeft = 747
      ExplicitTop = 95
    end
    inherited cmbTimelineScale: TcxComboBox
      TabOrder = 1
    end
    inherited seTimelineUnitMinWidth: TcxSpinEdit
      TabOrder = 2
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
