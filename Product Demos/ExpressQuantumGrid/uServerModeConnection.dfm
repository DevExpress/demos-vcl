object ServerModeConnectionForm: TServerModeConnectionForm
  Left = 579
  Top = 121
  BorderStyle = bsDialog
  Caption = 'ExpressQuantumGrid Server Mode Demo'
  ClientHeight = 650
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 650
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 450
    ExplicitHeight = 536
    DesignSize = (
      454
      650)
    object lbSQLServer: TcxLabel
      Left = 8
      Top = 378
      Anchors = [akLeft, akBottom]
      Caption = 'SQL Server:'
      Transparent = True
      ExplicitTop = 311
    end
    object lbDatabase: TcxLabel
      Left = 8
      Top = 407
      Anchors = [akLeft, akBottom]
      Caption = 'Database:'
      Transparent = True
      ExplicitTop = 340
    end
    object lbLoginName: TcxLabel
      Left = 8
      Top = 564
      Anchors = [akLeft, akBottom]
      Caption = 'Login name:'
      Transparent = True
      ExplicitTop = 450
    end
    object lbPassword: TcxLabel
      Left = 8
      Top = 590
      Anchors = [akLeft, akBottom]
      Caption = 'Password:'
      Transparent = True
      ExplicitTop = 476
    end
    object lbRecordCount: TcxLabel
      Left = 279
      Top = 534
      Anchors = [akLeft, akBottom]
      Caption = 'Record count:'
      Transparent = True
      ExplicitTop = 420
    end
    object edSQLServer: TcxTextEdit
      Left = 68
      Top = 377
      Anchors = [akLeft, akBottom]
      Properties.OnChange = edSQLServerPropertiesChange
      TabOrder = 5
      Text = 'localhost'
      ExplicitTop = 310
      Width = 157
    end
    object rgConnectUsing: TcxRadioGroup
      Left = 8
      Top = 475
      Anchors = [akLeft, akBottom]
      Caption = ' Connect using: '
      Properties.Items = <
        item
          Caption = 'Windows authentication'
        end
        item
          Caption = 'SQL Server authentication'
        end>
      Properties.OnChange = rgConnectUsingPropertiesChange
      ItemIndex = 0
      TabOrder = 6
      ExplicitTop = 408
      Height = 79
      Width = 217
    end
    object edLoginName: TcxTextEdit
      Left = 74
      Top = 563
      Anchors = [akLeft, akBottom]
      Enabled = False
      Properties.OnChange = edLoginNamePropertiesChange
      TabOrder = 7
      Text = 'sa'
      ExplicitTop = 449
      Width = 152
    end
    object edPassword: TcxTextEdit
      Left = 74
      Top = 590
      Anchors = [akLeft, akBottom]
      Enabled = False
      Properties.EchoMode = eemPassword
      Properties.OnChange = edPasswordPropertiesChange
      TabOrder = 8
      ExplicitTop = 476
      Width = 152
    end
    object btAddRecordsAndStartDemo: TcxButton
      Left = 279
      Top = 563
      Width = 167
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = 'Add Records and Start Demo'
      Enabled = False
      TabOrder = 9
      OnClick = btAddRecordsAndStartDemoClick
      ExplicitTop = 449
    end
    object btStartDemo: TcxButton
      Left = 279
      Top = 590
      Width = 167
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = 'Start Demo'
      Enabled = False
      TabOrder = 10
      OnClick = btStartDemoClick
      ExplicitTop = 476
    end
    object seCount: TcxSpinEdit
      Left = 351
      Top = 533
      Anchors = [akLeft, akBottom]
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.Increment = 50000.000000000000000000
      Properties.LargeIncrement = 100000.000000000000000000
      Properties.MinValue = 50000.000000000000000000
      TabOrder = 11
      Value = 100000
      ExplicitTop = 419
      Width = 95
    end
    object ProgressBar: TcxProgressBar
      Left = 7
      Top = 624
      TabStop = False
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Properties.PeakValue = 50.000000000000000000
      Properties.ShowTextStyle = cxtsText
      TabOrder = 12
      ExplicitTop = 510
      ExplicitWidth = 432
      Height = 10
      Width = 436
    end
    object cxMemo1: TcxMemo
      Left = 7
      Top = 8
      TabStop = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        
          'In this demo, the grid control needs to be connected to a data t' +
          'able on a Microsoft SQL Server instance. Please use this window ' +
          'to configure the connection and data settings.'
        ''
        '1. Select a connection object.'
        
          '2. Specify the name of an existing Microsoft SQL Server instance' +
          ' that will contain the target database.'
        '3. Test the settings by clicking "Test connection".'
        
          '4. If the connection succeeds, do one of the following. On the f' +
          'irst run, specify the number of records in the target table and ' +
          'click the Add Records and Start Demo button. A new database and ' +
          'a table populated with sample data will be created, and then the' +
          ' demo will start with the grid control bound to the table. On su' +
          'bsequent runs, you can add more records to the table or just sta' +
          'rt the demo without generating additional data.')
      Properties.ReadOnly = True
      Properties.WordWrap = False
      TabOrder = 13
      ExplicitHeight = 185
      Height = 252
      Width = 436
    end
    object lbTableName: TcxLabel
      Left = 8
      Top = 435
      Anchors = [akLeft, akBottom]
      Caption = 'Table:'
      Transparent = True
      ExplicitTop = 368
    end
    object edDatabase: TcxTextEdit
      Left = 68
      Top = 406
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 15
      Text = 'ServerModeGridDemo'
      ExplicitTop = 339
      Width = 157
    end
    object edTableName: TcxTextEdit
      Left = 68
      Top = 435
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 16
      Text = 'ServerModeGridTableDemo'
      ExplicitTop = 368
      Width = 157
    end
    object btTestConnection: TcxButton
      Left = 279
      Top = 500
      Width = 167
      Height = 23
      Anchors = [akLeft, akBottom]
      Caption = 'Test connection'
      TabOrder = 17
      OnClick = btTestConnectionClick
      ExplicitTop = 386
    end
    object lbCurrentCount: TcxLabel
      Left = 279
      Top = 292
      Anchors = [akLeft, akBottom]
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Transparent = True
      ExplicitTop = 225
      Height = 164
      Width = 167
      AnchorY = 374
    end
    object rgConnectionObject: TcxRadioGroup
      Left = 8
      Top = 264
      Anchors = [akLeft, akBottom]
      Caption = 'Connection object: '
      Properties.Items = <
        item
          Caption = 'ADO'
        end
        item
          Caption = 'dbExpress'
        end
        item
          Caption = 'FireDAC'
        end>
      Properties.OnChange = rgConnectionObjectPropertiesChange
      ItemIndex = 0
      TabOrder = 19
      ExplicitTop = 197
      Height = 104
      Width = 217
    end
  end
end
