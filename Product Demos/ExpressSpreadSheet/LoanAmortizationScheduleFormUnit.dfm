inherited frmLoanAmortizationSchedule: TfrmLoanAmortizationSchedule
  inherited lcCustom: TdxLayoutControl
    Top = 40
    Height = 265
    inherited pnlSite: TPanel
      TabOrder = 2
      inherited SpreadSheet: TdxSpreadSheet
        Data = {
          3003000044585353763242461000000042465320000000000000000001000101
          010100000100000001004246532000000000424653200100000001000000200B
          00000007000000430061006C0069006200720069000000000000002000000020
          0000000020000000000020000000000020000000000020000007000000470045
          004E004500520041004C00000000000002000000000000000001424653200100
          0000424653201700000054006400780053007000720065006100640053006800
          6500650074005400610062006C00650056006900650077000600000053006800
          650065007400310001FFFFFFFFFFFFFFFF640000000100000000000000010000
          0055000000140000000200000002000000000200000002000000000000010000
          0000000101000042465320550000000000000042465320000000004246532014
          00000000000000424653200000000000000000000000000C0000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000004246532000
          0000000202000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          6400000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000002000202000200000000000000
          0000000000000000000002000000000000000000000000000000000000000000
          0000000000000000000000000000020200000000000000004246532000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000}
      end
    end
    inherited ztbBook: TdxZoomTrackBar
      TabOrder = 3
    end
    object rbAnnuityPayments: TcxRadioButton [2]
      Left = 15
      Top = 21
      Width = 113
      Height = 22
      Caption = 'Annuity payments'
      Checked = True
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      TabStop = True
      OnClick = rbAnnuityPaymentsClick
      GroupIndex = 3
      ParentBackground = False
      Transparent = True
    end
    object rbScaledPayments: TcxRadioButton [3]
      Left = 151
      Top = 21
      Width = 113
      Height = 22
      Caption = 'Scaled payments'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 1
      OnClick = rbAnnuityPaymentsClick
      GroupIndex = 3
      ParentBackground = False
      Transparent = True
    end
    inherited lgSpreadSheet: TdxLayoutGroup
      Index = 2
    end
    object lgPayments: TdxLayoutGroup
      Parent = lcCustomGroup_Root
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Visible = False
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object liAnnuityPayments: TdxLayoutItem
      Parent = lgPayments
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Annuity payments'
      CaptionOptions.Visible = False
      Control = rbAnnuityPayments
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object liScaledPayments: TdxLayoutItem
      Parent = lgPayments
      Offsets.Left = 20
      Offsets.Right = 20
      CaptionOptions.Text = 'cxRadioButton2'
      CaptionOptions.Visible = False
      Control = rbScaledPayments
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 22
      ControlOptions.OriginalWidth = 113
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  inherited ssFormulaBar: TdxSpreadSheetFormulaBar
    Height = 23
    SpreadSheet = SpreadSheet
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 445
    ExplicitHeight = 23
  end
  inherited Splitter: TcxSplitter
    Top = 29
  end
end
