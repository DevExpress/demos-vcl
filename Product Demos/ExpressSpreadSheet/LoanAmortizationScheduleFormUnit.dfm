inherited frmLoanAmortizationSchedule: TfrmLoanAmortizationSchedule
  inherited lcCustom: TdxLayoutControl
    inherited pnlSite: TPanel
      TabOrder = 2
      inherited SpreadSheet: TdxSpreadSheet
        Data = {
          5403000044585353763242460C00000042465320000000000000000001000101
          010100000000000001004246532000000000424653200200000001000000200B
          00000007000000430061006C0069006200720069000000000000002000000020
          00000000200000000020000000002000000000200007000000470045004E0045
          00520041004C0000000000000200000000000000000101000000200B00000007
          000000430061006C006900620072006900000000000000200000002000000000
          200000000020000000002000000000200007000000470045004E004500520041
          004C000000000000020000000000000000014246532001000000424653201700
          0000540064007800530070007200650061006400530068006500650074005400
          610062006C006500560069006500770006000000530068006500650074003100
          01FFFFFFFFFFFFFFFF6400000001000000000000000100000055000000140000
          0002000000020000000002000000000000010000000000010100004246532055
          0000000000000042465320000000004246532014000000000000004246532000
          00000000000000000000000C0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004246532000000000020200000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000640000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000002000202000200000000000000000000000000000000000200
          0000000000000000000000000000000000000000000000000000000000000000
          000002020000000000000000424653200000000000000000}
      end
    end
    inherited ztbBook: TdxZoomTrackBar
      TabOrder = 3
    end
    object rbAnnuityPayments: TcxRadioButton [2]
      Left = 12
      Top = 11
      Width = 113
      Height = 22
      Caption = 'Annuity payments'
      Checked = True
      Color = 16053234
      ParentColor = False
      TabOrder = 0
      TabStop = True
      OnClick = rbAnnuityPaymentsClick
      GroupIndex = 3
      ParentBackground = False
      Transparent = True
    end
    object rbScaledPayments: TcxRadioButton [3]
      Left = 148
      Top = 11
      Width = 113
      Height = 22
      Caption = 'Scaled payments'
      Color = 16053234
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
      ButtonOptions.Buttons = <>
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
end
