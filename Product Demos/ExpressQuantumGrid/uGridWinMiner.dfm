inherited frmGridWinMiner: TfrmGridWinMiner
  object pnlTop: TPanel
    Left = 0
    Top = 83
    Width = 443
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TcxLabel
      Left = 8
      Top = 10
      Width = 91
      Height = 13
      Caption = 'Select Game Type:'
    end
    object Label2: TcxLabel
      Left = 286
      Top = 10
      Width = 102
      Height = 13
      Caption = 'Select Color Scheme:'
    end
    object icbGameType: TcxImageComboBox
      Left = 130
      Top = 6
      Width = 137
      Height = 21
      Properties.Items = <
        item
          Description = 'Beginner'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Intermediate'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'Expert'
          ImageIndex = 2
          Value = 2
        end>
      TabOrder = 0
      OnClick = icbGameTypeClick
    end
    object icbScheme: TcxImageComboBox
      Left = 421
      Top = 6
      Width = 136
      Height = 21
      Properties.Items = <
        item
          Description = 'Green'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Blue'
          ImageIndex = 1
          Value = 1
        end
        item
          Description = 'System'
          ImageIndex = 2
          Value = 2
        end
        item
          Description = 'Gold'
          ImageIndex = 3
          Value = 3
        end>
      TabOrder = 1
      OnClick = icbSchemeClick
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 124
    Width = 443
    Height = 101
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    OnResize = pnlClientResize
  end
  object Panel1: TPanel
    Left = 0
    Top = 25
    Width = 443
    Height = 58
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BevelWidth = 4
    TabOrder = 5
    object Label3: TcxLabel
      Left = 0
      Top = 5
      Width = 5
      Height = 48
      Align = alLeft
      AutoSize = False
    end
    object Label4: TcxLabel
      Left = 438
      Top = 5
      Width = 5
      Height = 48
      Align = alRight
      AutoSize = False
    end
    object Label5: TcxLabel
      Left = 0
      Top = 0
      Width = 443
      Height = 5
      Align = alTop
      AutoSize = False
    end
    object Label6: TcxLabel
      Left = 0
      Top = 53
      Width = 443
      Height = 5
      Align = alBottom
      AutoSize = False
    end
    object Panel2: TPanel
      Left = 5
      Top = 5
      Width = 433
      Height = 48
      Align = alClient
      Alignment = taLeftJustify
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Label7: TcxLabel
        Left = 2
        Top = 7
        Width = 5
        Height = 34
        Align = alLeft
        AutoSize = False
      end
      object Label8: TcxLabel
        Left = 426
        Top = 7
        Width = 5
        Height = 34
        Align = alRight
        AutoSize = False
      end
      object Label9: TcxLabel
        Left = 2
        Top = 2
        Width = 429
        Height = 5
        Align = alTop
        AutoSize = False
      end
      object Label10: TcxLabel
        Left = 2
        Top = 41
        Width = 429
        Height = 5
        Align = alBottom
        AutoSize = False
      end
      object Label11: TcxLabel
        Left = 7
        Top = 7
        Width = 419
        Height = 34
        Align = alClient
        AutoSize = False
        Caption = 
          'The ExpressQuantumGrid Suite offers you unrivaled power and' +
          ' flexibility - Guaranteed. By using CustomDraw and Unbound' +
          ' Mode, you can even build yourself a MineSweeper game!'
        Style.Color = clBtnFace
        ParentColor = False
        Properties.WordWrap= True
      end
    end
  end
end
