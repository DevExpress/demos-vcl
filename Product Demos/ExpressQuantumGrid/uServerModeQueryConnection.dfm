object ServerModeQueryConnectionForm: TServerModeQueryConnectionForm
  Left = 579
  Top = 121
  BorderStyle = bsDialog
  Caption = 'ExpressQuantumGrid Server Mode Query Demo'
  ClientHeight = 650
  ClientWidth = 489
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
    Width = 489
    Height = 650
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 485
    ExplicitHeight = 649
    DesignSize = (
      489
      650)
    object lbSQLServer: TcxLabel
      Left = 8
      Top = 348
      Anchors = [akLeft, akBottom]
      Caption = 'SQL Server:'
      Transparent = True
    end
    object lbDatabase: TcxLabel
      Left = 8
      Top = 375
      Anchors = [akLeft, akBottom]
      Caption = 'Database:'
      Transparent = True
    end
    object lbLoginName: TcxLabel
      Left = 8
      Top = 554
      Anchors = [akLeft, akBottom]
      Caption = 'Login name:'
      Transparent = True
      ExplicitTop = 553
    end
    object lbPassword: TcxLabel
      Left = 8
      Top = 582
      Anchors = [akLeft, akBottom]
      Caption = 'Password:'
      Transparent = True
      ExplicitTop = 581
    end
    object lbRecordCount: TcxLabel
      Left = 312
      Top = 525
      Anchors = [akLeft, akBottom]
      Caption = 'Record count:'
      Transparent = True
      ExplicitTop = 524
    end
    object edSQLServer: TcxTextEdit
      Left = 101
      Top = 349
      Anchors = [akLeft, akBottom]
      Properties.OnChange = edSQLServerPropertiesChange
      TabOrder = 5
      Text = 'localhost'
      Width = 167
    end
    object rgConnectUsing: TcxRadioGroup
      Left = 8
      Top = 467
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
      Height = 81
      Width = 261
    end
    object edLoginName: TcxTextEdit
      Left = 75
      Top = 555
      Anchors = [akLeft, akBottom]
      Enabled = False
      Properties.OnChange = edLoginNamePropertiesChange
      TabOrder = 7
      Text = 'sa'
      ExplicitTop = 554
      Width = 194
    end
    object edPassword: TcxTextEdit
      Left = 75
      Top = 582
      Anchors = [akLeft, akBottom]
      Enabled = False
      Properties.EchoMode = eemPassword
      Properties.OnChange = edPasswordPropertiesChange
      TabOrder = 8
      ExplicitTop = 581
      Width = 194
    end
    object btAddRecordsAndStartDemo: TcxButton
      Left = 312
      Top = 555
      Width = 169
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = 'Add Records and Start Demo'
      Enabled = False
      TabOrder = 9
      OnClick = btAddRecordsAndStartDemoClick
      ExplicitTop = 554
    end
    object btStartDemo: TcxButton
      Left = 312
      Top = 582
      Width = 169
      Height = 21
      Anchors = [akLeft, akBottom]
      Caption = 'Start Demo'
      Enabled = False
      TabOrder = 10
      OnClick = btStartDemoClick
      ExplicitTop = 581
    end
    object seCount: TcxSpinEdit
      Left = 385
      Top = 524
      Anchors = [akLeft, akBottom]
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = '#,###'
      Properties.Increment = 50000.000000000000000000
      Properties.LargeIncrement = 100000.000000000000000000
      Properties.MinValue = 50000.000000000000000000
      TabOrder = 11
      Value = 100000
      ExplicitTop = 523
      Width = 97
    end
    object ProgressBar: TcxProgressBar
      Left = 8
      Top = 622
      TabStop = False
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Properties.PeakValue = 50.000000000000000000
      Properties.ShowTextStyle = cxtsText
      TabOrder = 12
      ExplicitTop = 621
      ExplicitWidth = 462
      Height = 10
      Width = 466
    end
    object cxMemo1: TcxMemo
      AlignWithMargins = True
      Left = 8
      Top = 8
      Margins.Left = 8
      Margins.Top = 8
      Margins.Right = 8
      Margins.Bottom = 8
      TabStop = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      Lines.Strings = (
        
          'In this demo, the grid control needs to be connected to data tab' +
          'les (Orders and Customers) on a Microsoft SQL Server instance. P' +
          'lease use this window to configure the connection and data setti' +
          'ngs.'
        ''
        '1. Select a connection object.'
        
          '2. Specify the name of an existing Microsoft SQL Server instance' +
          ' that will contain the target database.'
        '3. Test the settings by clicking "Test connection".'
        
          '4. If the connection succeeds, do one of the following. On the f' +
          'irst run, specify the number of records in the Orders table and ' +
          'click the Add Records and Start Demo button. A new database and ' +
          'two tables populated with sample data will be created, and then ' +
          'a query that joins the tables will be executed. After this, the ' +
          'demo will start with the grid control bound to the query'#39's resul' +
          't set. On subsequent runs, you can add more records to the Order' +
          's table or just start the demo without generating additional dat' +
          'a.')
      Properties.ReadOnly = True
      Properties.WordWrap = False
      TabOrder = 13
      Height = 220
      Width = 473
    end
    object lbOrdersTableName: TcxLabel
      Left = 8
      Top = 402
      Anchors = [akLeft, akBottom]
      Caption = 'Orders Table:'
      Transparent = True
    end
    object edDatabase: TcxTextEdit
      Left = 101
      Top = 376
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 15
      Text = 'ServerModeGridDemo'
      Width = 167
    end
    object edOrdersTableName: TcxTextEdit
      Left = 101
      Top = 403
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 16
      Text = 'ServerModeGridOrdersDemo'
      Width = 167
    end
    object btTestConnection: TcxButton
      Left = 313
      Top = 491
      Width = 168
      Height = 23
      Anchors = [akLeft, akBottom]
      Caption = 'Test connection'
      TabOrder = 17
      OnClick = btTestConnectionClick
      ExplicitTop = 490
    end
    object lbCurrentCount: TcxLabel
      Left = 314
      Top = 234
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
      Height = 235
      Width = 168
      AnchorY = 352
    end
    object rgConnectionObject: TcxRadioGroup
      Left = 8
      Top = 234
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
      Height = 109
      Width = 261
    end
    object edCustomersTableName: TcxTextEdit
      Left = 101
      Top = 430
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 20
      Text = 'ServerModeGridCustomersDemo'
      Width = 167
    end
    object lbCustomersTableName: TcxLabel
      Left = 8
      Top = 429
      Anchors = [akLeft, akBottom]
      Caption = 'Customers Table:'
      Transparent = True
    end
  end
end
