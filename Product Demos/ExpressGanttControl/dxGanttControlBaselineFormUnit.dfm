inherited frmBaselines: TfrmBaselines
  Width = 948
  Height = 671
  inherited lcMain: TdxLayoutControl
    Width = 948
    Height = 671
    inherited dxGanttControl: TdxGanttControl
      Width = 687
      Height = 613
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
      OnBaselineChanged = dxGanttControlBaselineChanged
      OnBaselineDeleted = dxGanttControlBaselineChanged
      OnBaselineInserted = dxGanttControlBaselineChanged
      ExplicitWidth = 687
      ExplicitHeight = 588
    end
    inherited cmbChartTimescale: TcxComboBox
      Left = 10000
      Top = 10000
      TabOrder = 5
      Visible = False
      ExplicitLeft = 10000
      ExplicitTop = 10000
      ExplicitWidth = 121
      Width = 121
    end
    inherited cmbTimelineScale: TcxComboBox
      TabOrder = 7
      ExplicitWidth = 121
      Width = 121
    end
    inherited seTimelineUnitMinWidth: TcxSpinEdit
      TabOrder = 6
      ExplicitWidth = 121
      Width = 121
    end
    object cbBaseline: TcxComboBox [4]
      Left = 770
      Top = 41
      Properties.DropDownListStyle = lsEditFixedList
      Properties.OnEditValueChanged = cbBaselinePropertiesEditValueChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 159
    end
    object cbSetBaseline: TcxComboBox [5]
      Left = 779
      Top = 97
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 141
    end
    object cxButton1: TcxButton [6]
      Left = 731
      Top = 147
      Width = 108
      Height = 25
      Caption = 'Set Baseline'
      TabOrder = 3
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton [7]
      Left = 845
      Top = 147
      Width = 75
      Height = 25
      Caption = 'Clear Baseline'
      TabOrder = 4
      OnClick = cxButton2Click
    end
    inherited lgTools: TdxLayoutGroup
      ItemIndex = 1
    end
    inherited lgActiveView: TdxLayoutGroup
      Parent = nil
      Index = -1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lgTools
      CaptionOptions.Text = 'Baseline:'
      Control = cbBaseline
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lgTools
      CaptionOptions.Text = 'Change Baseline'
      ItemIndex = 2
      Index = 1
    end
    object lcbiSelectedTask: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Selected Tasks'
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'Baseline:'
      Control = cbSetBaseline
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignVert = avClient
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup6
      LayoutDirection = ldHorizontal
      Index = 2
    end
  end
  inherited dxLayoutMainLookAndFeelList1: TdxLayoutLookAndFeelList
    inherited dxMainCxLookAndFeel1: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
  inherited dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList
    inherited dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel
      PixelsPerInch = 96
    end
  end
end