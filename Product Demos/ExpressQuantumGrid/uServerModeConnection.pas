unit uServerModeConnection;

interface

{$I cxVer.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, cxGraphics, dxServerModeData, dxMessageDialog,
{$IFDEF DELPHI11}
  Data.DBXCommon,
{$ENDIF}
{$IFNDEF DELPHI8}
  DBXpress,
  Data.Win.ADODB,
{$ELSE}
{$IFNDEF NOMSSQL}
  Data.DBXMSSQL,
{$ENDIF}
  Data.Win.ADODB,
{$ENDIF}
  Data.DB, Vcl.ComCtrls, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxProgressBar, cxMaskEdit,
  cxSpinEdit, cxButtons, cxGroupBox, cxRadioGroup, cxTextEdit, cxLabel,
  cxGridCardView, cxStyles, cxGridTableView, cxClasses,
{$IFDEF DELPHI19}
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Dapt,
  FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Comp.UI {$IFNDEF NOMSSQL},FireDAC.Phys.MSSQL{$ENDIF};
{$ELSE}
  uADStanIntf, uADStanOption, uADStanError,
  uADGUIxIntf, uADPhysIntf, uADStanDef, uADStanPool, uADStanAsync,
  uADPhysManager, uADGUIxFormsWait, uADStanParam, uADDatSManager, uADDAptIntf,
  uADDAptManager, uADCompDataSet, uADCompClient,
  uADPhysODBCBase, uADPhysMSSQL, uADCompGUIx;
{$ENDIF}

type
  TdxCustomConnectionHelper = class;
  TdxProgressBarPositionEvent = procedure (Sender: TObject; const AValue: Double) of object;

  TServerModeConnectionForm = class(TForm)
    Panel1: TPanel;
    lbSQLServer: TcxLabel;
    lbDatabase: TcxLabel;
    lbLoginName: TcxLabel;
    lbPassword: TcxLabel;
    lbRecordCount: TcxLabel;
    edSQLServer: TcxTextEdit;
    rgConnectUsing: TcxRadioGroup;
    edLoginName: TcxTextEdit;
    edPassword: TcxTextEdit;
    btAddRecordsAndStartDemo: TcxButton;
    btStartDemo: TcxButton;
    seCount: TcxSpinEdit;
    ProgressBar: TcxProgressBar;
    cxMemo1: TcxMemo;
    lbTableName: TcxLabel;
    edDatabase: TcxTextEdit;
    edTableName: TcxTextEdit;
    btTestConnection: TcxButton;
    lbCurrentCount: TcxLabel;
    rgConnectionObject: TcxRadioGroup;
    procedure btAddRecordsAndStartDemoClick(Sender: TObject);
    procedure btStartDemoClick(Sender: TObject);
    procedure btTestConnectionClick(Sender: TObject);
    procedure rgConnectUsingPropertiesChange(Sender: TObject);
    procedure rgConnectionObjectPropertiesChange(Sender: TObject);
    procedure edLoginNamePropertiesChange(Sender: TObject);
    procedure edPasswordPropertiesChange(Sender: TObject);
    procedure edSQLServerPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FConnected: Boolean;
    FConnectionHelper: TdxCustomConnectionHelper;
    FRecordsCount: Integer;
    procedure SetProgressBarPosition(Sender: TObject; const AValue: Double);
    procedure ButtonsEnabled(AValue: Boolean);
    procedure UpdateButtons;
    function GetConnectionHelper: TdxCustomConnectionHelper;
  public
    destructor Destroy; override;
    procedure StartDemo;

    property RecordsCount: Integer read FRecordsCount;
    property ConnectionHelper: TdxCustomConnectionHelper read GetConnectionHelper;
  end;

  TConnectionClass = class of TCustomConnection;

  TdxCustomConnectionHelper = class
  private
    FOwnerConnection: Boolean;
    FConnection: TCustomConnection;
    FTableName: string;
    FDatabaseName: string;
    FOnChangeProgressBarPosition: TdxProgressBarPositionEvent;
  protected
    function GetClassConnection: TConnectionClass; virtual; abstract;
    function GetConnection: TCustomConnection; virtual;
    function GetRecordInsertSQL: string;
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; virtual; abstract;
    procedure ExecSQL(const ASQL: string); virtual; abstract;
    function OpenSQL(const ASQL: string): TDataSet; virtual; abstract;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); virtual;
    procedure CreateDatabaseAndConnect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean);
    function TableExists: Boolean;
    procedure CreateTable;
    function GetRecordsCount: Integer;
    procedure SetProgressBarPosition(AValue: Double);
    function ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeDataSource; virtual;
    procedure AddRecords(ACount: Integer); virtual; abstract;

    property Connection: TCustomConnection read GetConnection;
    property OwnerConnection: Boolean read FOwnerConnection;
    property DatabaseName: string read FDatabaseName write FDatabaseName;
    property TableName: string read FTableName write FTableName;
    property OnChangeProgressBarPosition: TdxProgressBarPositionEvent read FOnChangeProgressBarPosition
      write FOnChangeProgressBarPosition;
  end;

  TdxADOConnectionHelper = class(TdxCustomConnectionHelper)
  protected
    function GetClassConnection: TConnectionClass; override;
    function GetConnection: TADOConnection; reintroduce;
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; override;
    procedure ExecSQL(const ASQL: string); override;
    function OpenSQL(const ASQL: string): TDataSet; override;
  public
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;
    procedure AddRecords(ACount: Integer); override;

    property Connection: TADOConnection read GetConnection;
  end;

  TdxDBXConnectionHelper = class(TdxCustomConnectionHelper)
  protected
    function GetClassConnection: TConnectionClass; override;
    function GetConnection: TSQLConnection; reintroduce;
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; override;
    procedure ExecSQL(const ASQL: string); override;
    function OpenSQL(const ASQL: string): TDataSet; override;
  public
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;
    procedure AddRecords(ACount: Integer); override;
    function ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeDataSource; override;

    property Connection: TSQLConnection read GetConnection;
  end;


  TdxFireDACConnectionHelper = class(TdxCustomConnectionHelper)
  protected
  {$IFDEF DELPHI19}
    FGUIxWaitCursor: TFDGUIxWaitCursor;
  {$ELSE}
    FGUIxWaitCursor: TADGUIxWaitCursor;
  {$ENDIF}
    function GetClassConnection: TConnectionClass; override;
  {$IFDEF DELPHI19}
    function GetConnection: TFDConnection; reintroduce;
  {$ELSE}
    function GetConnection: TADConnection; reintroduce;
  {$ENDIF}
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; override;
    procedure ExecSQL(const ASQL: string); override;
    function OpenSQL(const ASQL: string): TDataSet; override;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;
    procedure AddRecords(ACount: Integer); override;

  {$IFDEF DELPHI19}
    property Connection: TFDConnection read GetConnection;
  {$ELSE}
    property Connection: TADConnection read GetConnection;
  {$ENDIF}
  end;

function GetServerModeDataSource(AOwnerDataSource: TComponent; out ADataSource: TdxServerModeDataSource): Boolean;

implementation

uses
  System.UITypes,
  System.StrUtils, System.DateUtils, dxServerModeADODataSource, dxServerModeDBXDataSource,
  dxServerModeFireDACDataSource, dxServerModeSQLAdapters;

{$R *.dfm}

function GetServerModeDataSource(AOwnerDataSource: TComponent; out ADataSource: TdxServerModeDataSource): Boolean;
begin
  with TServerModeConnectionForm.Create(nil) do
  try
    Result := ShowModal = mrOk;
    if Result then
      ADataSource := ConnectionHelper.ExtractServerModeDataSource(AOwnerDataSource);
  finally
    Free;
  end;
end;

{ TServerModeDemoConnectionForm }

procedure TServerModeConnectionForm.btAddRecordsAndStartDemoClick(Sender: TObject);
begin
  ButtonsEnabled(False);
  Enabled := False;
  try
    ConnectionHelper.CreateDatabaseAndConnect(edSQLServer.Text, edDatabase.Text, edLoginName.Text, edPassword.Text,
      rgConnectUsing.ItemIndex = 0);
    ConnectionHelper.CreateTable;
    ConnectionHelper.OnChangeProgressBarPosition := SetProgressBarPosition;
    ConnectionHelper.AddRecords(seCount.Value);
  finally
    Enabled := True;
    SetProgressBarPosition(nil, 0);
  end;
  StartDemo;
end;

procedure TServerModeConnectionForm.btStartDemoClick(Sender: TObject);
begin
  ButtonsEnabled(False);
  ConnectionHelper.Connect(edSQLServer.Text, edDatabase.Text, edLoginName.Text, edPassword.Text, rgConnectUsing.ItemIndex = 0);
  StartDemo;
end;

procedure TServerModeConnectionForm.btTestConnectionClick(Sender: TObject);
begin
  ShowHourglassCursor;
  try
    lbCurrentCount.Caption := '';
    try
      ConnectionHelper.Connect(edSQLServer.Text, 'master', edLoginName.Text, edPassword.Text, rgConnectUsing.ItemIndex = 0);
    except
      btAddRecordsAndStartDemo.Enabled := False;
      btStartDemo.Enabled := False;
      raise;
    end;
  finally
    HideHourglassCursor;
  end;
  ConnectionHelper.DatabaseName := edDatabase.Text;
  FRecordsCount := ConnectionHelper.GetRecordsCount;
  FConnected := True;
  dxMessageDlg('Successful connection.', mtInformation, [mbOK]);
  UpdateButtons;
end;

procedure TServerModeConnectionForm.rgConnectionObjectPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  FreeAndNil(FConnectionHelper);
  UpdateButtons;
end;

procedure TServerModeConnectionForm.rgConnectUsingPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

function TServerModeConnectionForm.GetConnectionHelper: TdxCustomConnectionHelper;
begin
  if FConnectionHelper = nil then
  begin
    if rgConnectionObject.ItemIndex = 0 then
      FConnectionHelper := TdxADOConnectionHelper.Create
    else
      if rgConnectionObject.ItemIndex = 1 then
        FConnectionHelper := TdxDBXConnectionHelper.Create
      else
        FConnectionHelper := TdxFireDACConnectionHelper.Create;
    FConnectionHelper.TableName := edTableName.Text;
  end;
  Result := FConnectionHelper;
end;

procedure TServerModeConnectionForm.SetProgressBarPosition(Sender: TObject; const AValue: Double);
begin
  ProgressBar.Position := AValue;
  ProgressBar.Invalidate;
  Application.ProcessMessages;
end;

procedure TServerModeConnectionForm.ButtonsEnabled(AValue: Boolean);
begin
  btTestConnection.Enabled := AValue;
  btAddRecordsAndStartDemo.Enabled := AValue;
  btStartDemo.Enabled := AValue;
  rgConnectionObject.Enabled := AValue;
  rgConnectUsing.Enabled := AValue;
end;

destructor TServerModeConnectionForm.Destroy;
begin
  FreeAndNil(FConnectionHelper);
  inherited Destroy;
end;

procedure TServerModeConnectionForm.edLoginNamePropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeConnectionForm.edPasswordPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeConnectionForm.edSQLServerPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeConnectionForm.FormShow(Sender: TObject);
begin
  cxMemo1.Properties.WordWrap := True; 
end;

procedure TServerModeConnectionForm.StartDemo;
begin
  ModalResult := mrOk;
end;

procedure TServerModeConnectionForm.UpdateButtons;
begin
  edLoginName.Enabled := rgConnectUsing.ItemIndex > 0;
  edPassword.Enabled := edLoginName.Enabled;
  btAddRecordsAndStartDemo.Enabled := FConnected;
  btStartDemo.Enabled := FConnected and (RecordsCount > 0);
  if FConnected and (RecordsCount > 0) then
    lbCurrentCount.Caption := Format('Current record count = %s', [FormatFloat('#,###', RecordsCount)])
  else
    lbCurrentCount.Caption := '';
end;

{ TdxConnectionHelper }

procedure TdxCustomConnectionHelper.Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
  OSAuthentication: Boolean);
begin
  DatabaseName := ADatabaseName;
end;

constructor TdxCustomConnectionHelper.Create;
begin
  inherited Create;
  FOwnerConnection := True;
end;

procedure TdxCustomConnectionHelper.CreateDatabaseAndConnect(const AHostName, ADatabaseName, AUserName, APassword: string;
  OSAuthentication: Boolean);
begin
  Connect(AHostName, 'master', AUserName, APassword, OSAuthentication);
  DatabaseName := ADatabaseName;
  try
    ExecSQL(Format('IF DB_ID(N''%s'') IS NULL' + sLineBreak +
      'CREATE DATABASE "%s";',
      [ADatabaseName, ADatabaseName]));
  except
    raise Exception.CreateFmt('Cannot create a database ''%s''', [ADatabaseName]);
  end;
  ExecSQL(Format('USE "%s";', [ADatabaseName]));
end;

function TdxCustomConnectionHelper.TableExists: Boolean;
var
  ASQL: string;
  ADataSet: TDataSet;
begin
  ASQL := Format('IF DB_ID(N''%s'') IS NOT NULL AND OBJECT_ID(N''%0:s.dbo.%1:s'') IS NOT NULL' + sLineBreak +
    '  SELECT 1;' + sLineBreak +
    'ELSE' + sLineBreak +
    '  SELECT -1;', [DatabaseName, TableName]);
    ADataSet := OpenSQL(ASQL);
    try
      Result := not ADataSet.Eof and (ADataSet.Fields[0].AsInteger = 1);
    finally
      ADataSet.Free;
    end;
end;

procedure TdxCustomConnectionHelper.CreateTable;
var
  ASQL: string;
begin
  if not TableExists then
  begin
    ASQL := 'IF OBJECT_ID(N''' + DatabaseName + '.dbo.' + TableName + ''') IS NULL' + sLineBreak +
      'CREATE TABLE "dbo"."' + TableName + '"(' +
      ' "OID" int IDENTITY(1,1) NOT NULL,' +
      ' "Subject" nvarchar(100) NULL,' +
      ' "From" nvarchar(100) NULL,' +
      ' "Sent" datetime NULL,' +
      ' "Size" bigint NULL,' +
      ' "HasAttachment" bit NULL,' +
      ' "Priority" int NULL,' +
      ' CONSTRAINT "PK_' + TableName + '" PRIMARY KEY CLUSTERED' +
      '(' +
      ' "OID" ASC' +
      ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"' +
      ') ON "PRIMARY";';
    try
      ExecSQL(ASQL);
    except
      raise Exception.CreateFmt('Cannot create a table ''%s''', [TableName]);
    end;
    ExecSQL('CREATE NONCLUSTERED INDEX iSubject_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("Subject");');
    ExecSQL('CREATE NONCLUSTERED INDEX iFrom_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("From");');
    ExecSQL('CREATE NONCLUSTERED INDEX iSent_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("Sent");');
    ExecSQL('CREATE NONCLUSTERED INDEX iSize_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("Size");');
    ExecSQL('CREATE NONCLUSTERED INDEX iHasAttachment_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("HasAttachment");');
    ExecSQL('CREATE NONCLUSTERED INDEX iPriority_ServerModeGridTableDemo ON "ServerModeGridTableDemo" ("Priority");');
  end;
end;

destructor TdxCustomConnectionHelper.Destroy;
begin
  if OwnerConnection then
    FreeAndNil(FConnection);
  inherited Destroy;
end;

function TdxCustomConnectionHelper.ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeDataSource;
begin
  Result := GetServerModeDataSourceClass.Create(AOwner) as TdxServerModeDataSource;
  Result.Connection := Connection;
  Result.InsertComponent(Connection);
  FOwnerConnection := False;
  Result.TableName := TableName;
  Result.SQLAdapterClass := TdxServerModeMSSQLAdapter;
end;

function TdxCustomConnectionHelper.GetConnection: TCustomConnection;
begin
  if FConnection = nil then
    FConnection := GetClassConnection.Create(nil);
  Result := FConnection;
end;

function TdxCustomConnectionHelper.GetRecordInsertSQL: string;

  function GetDateTime: string;
  var
    ADate: TDateTime;
  begin
    ADate := IncSecond(Now, -Random(315360000));
    Result := FormatDateTime('yyyymmdd hh:mm:ss', ADate);
  end;

const
  Users: array[0..16] of string = (
    'Peter Dolan',
    'Ryan Fischer',
    'Richard Fisher',
    'Tom Hamlett',
    'Mark Hamilton',
    'Steve Lee',
    'Jimmy Lewis',
    'Jeffrey W McClain',
    'Andrew Miller',
    'Dave Murrel',
    'Bert Parkins',
    'Mike Roller',
    'Ray Shipman',
    'Paul Bailey',
    'Brad Barnes',
    'Carl Lucas',
    'Jerry Campbell'
  );
  Subjects: array[0..20] of string = (
    'Integrating Developer Express MasterView control into an Accounting System.',
    'Web Edition: Data Entry Page. There is an issue with date validation.',
    'Payables Due Calculator is ready for testing.',
    'Web Edition: Search Page is ready for testing.',
    'Main Menu: Duplicate Items. Somebody has to review all menu items in the system.',
    'Receivables Calculator. Where can I find the complete specs?',
    'Ledger: Inconsistency. Please fix it.',
    'Receivables Printing module is ready for testing.',
    'Screen Redraw. Somebody has to look at it.',
    'Email System. What library are we going to use?',
    'Cannot add new vendor. This module doesn''''t work!',
    'History. Will we track sales history in our system?',
    'Main Menu: Add a File menu. File menu item is missing.',
    'Currency Mask. The current currency mask in completely unusable.',
    'Drag & Drop operations are not available in the scheduler module.',
    'Data Import. What database types will we support?',
    'Reports. The list of incomplete reports.',
    'Data Archiving. We still don''''t have this features in our application.',
    'Email Attachments. Is it possible to add multiple attachments? I haven''''t found a way to do this.',
    'Check Register. We are using different paths for different modules.',
    'Data Export. Our customers asked us for export to Microsoft Excel');
begin
  Result := 'INSERT INTO "' + TableName + '" ("Subject", "From", "Sent", "Size", "HasAttachment", "Priority")' +
    'VALUES (''' + Subjects[Random(21)] + ''',''' + Users[Random(17)] + ''',''' + GetDateTime + ''',' +
      IntToStr(Random(100000)) + ',' + IntToStr(Random(2)) + ',' + IntToStr(Random(3)) + ');'
end;

function TdxCustomConnectionHelper.GetRecordsCount: Integer;
var
  ASQL: string;
  ADataSet: TDataSet;
begin
  ASQL := Format('IF DB_ID(N''%s'') IS NOT NULL AND OBJECT_ID(N''%0:s.dbo.%1:s'') IS NOT NULL' + sLineBreak +
           '  SELECT COUNT(*) FROM %0:s.dbo.%1:s;' + sLineBreak +
           'ELSE' + sLineBreak +
           '  SELECT 0;', [DatabaseName, TableName]);
  ADataSet := OpenSQL(ASQL);
  try
    if not ADataSet.Eof then
      Result := ADataSet.Fields[0].AsInteger
    else
      Result := 0;
  finally
    ADataSet.Free;
  end;
end;

procedure TdxCustomConnectionHelper.SetProgressBarPosition(AValue: Double);
begin
  if Assigned(FOnChangeProgressBarPosition) then
    FOnChangeProgressBarPosition(Self, AValue);
end;

{ TdxADOConnectionHelper }

function TdxADOConnectionHelper.GetClassConnection: TConnectionClass;
begin
  Result := TADOConnection;
end;

function TdxADOConnectionHelper.GetConnection: TADOConnection;
begin
  Result := TADOConnection(inherited GetConnection);
end;

function TdxADOConnectionHelper.GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass;
begin
  Result := TdxServerModeADODataSource;
end;

function TdxADOConnectionHelper.OpenSQL(const ASQL: string): TDataSet;
var
  AQuery: TADOQuery;
begin
  AQuery := TADOQuery.Create(nil);
  AQuery.Connection := Connection;
  Result := AQuery;
  AQuery.SQL.Text := ASQL;
  AQuery.Open;
end;

procedure TdxADOConnectionHelper.AddRecords(ACount: Integer);
var
  I, J, ASubCount: Integer;
  ASQL: string;
begin
  ASubCount := 10;
  Connection.BeginTrans;
  try
    for I := 0 to (ACount div ASubCount) - 1 do
    begin
      if I mod 100 = 0 then
        SetProgressBarPosition(100 / (ACount div ASubCount) * I);
      ASQL := '';
      for J := 1 to ASubCount do
        ASQL := ASQL + GetRecordInsertSQL;
      ExecSQL(ASQL);
    end;
    Connection.CommitTrans;
  except
    Connection.RollbackTrans;
  end;
end;

procedure TdxADOConnectionHelper.Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
  OSAuthentication: Boolean);
var
  AConnectionString: string;
begin
  inherited Connect(AHostName, ADatabaseName, AUserName, APassword, OSAuthentication);
  Connection.Connected := False;
  Connection.Provider := 'SQLOLEDB.1';
  Connection.LoginPrompt := False;
  AConnectionString := Format('Provider=SQLOLEDB.1;Data Source=%s;Initial Catalog=%s', [AHostName, ADatabaseName]);
  if OSAuthentication then
    Connection.ConnectionString := AConnectionString + ';Integrated Security=SSPI;Persist Security Info=False'
  else
    Connection.ConnectionString := AConnectionString +
      Format(';User ID=%s;Password=%s;Persist Security Info=True', [AUserName, APassword]);
  Connection.Connected := True;
end;

procedure TdxADOConnectionHelper.ExecSQL(const ASQL: string);
var
  AQuery: TADOQuery;
begin
  AQuery := TADOQuery.Create(nil);
  try
    AQuery.Connection := Connection;
    AQuery.SQL.Text := ASQL;
    AQuery.ExecSQL;
  finally
    AQuery.Free;
  end;
end;

{ TdxDBXConnectionHelper }

procedure TdxDBXConnectionHelper.ExecSQL(const ASQL: string);
var
  AQuery: TSQLQuery;
begin
  AQuery := TSQLQuery.Create(nil);
  try
    AQuery.SQLConnection := Connection;
    AQuery.SQL.Text := ASQL;
    AQuery.ExecSQL;
  finally
    AQuery.Free;
  end;
end;

function TdxDBXConnectionHelper.ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeDataSource;
begin
  Result := inherited ExtractServerModeDataSource(AOwner);
  TdxServerModeDBXDataSource(Result).Options.SchemaName := 'dbo';
end;

function TdxDBXConnectionHelper.GetClassConnection: TConnectionClass;
begin
  Result := TSQLConnection;
end;

function TdxDBXConnectionHelper.GetConnection: TSQLConnection;
begin
  Result := TSQLConnection(inherited GetConnection);
end;

function TdxDBXConnectionHelper.GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass;
begin
  Result := TdxServerModeDBXDataSource;
end;

function TdxDBXConnectionHelper.OpenSQL(const ASQL: string): TDataSet;
var
  AQuery: TSQLQuery;
begin
  AQuery := TSQLQuery.Create(nil);
  AQuery.SQLConnection := Connection;
  Result := AQuery;
  AQuery.SQL.Text := ASQL;
  AQuery.Open;
end;

procedure TdxDBXConnectionHelper.AddRecords(ACount: Integer);
var
  I, J, ASubCount: Integer;
  ASQL: string;
{$IFDEF DELPHI11}
  ATransaction: TDBXTransaction;
{$ELSE}
  ATransDesc: TTransactionDesc;
{$ENDIF}
begin
  ASubCount := 10;
{$IFDEF DELPHI11}
  ATransaction := Connection.BeginTransaction;
{$ELSE}
  Connection.StartTransaction(ATransDesc);
{$ENDIF}
  try
    for I := 0 to (ACount div ASubCount) - 1 do
    begin
      if I mod 100 = 0 then
        SetProgressBarPosition(100 / (ACount div ASubCount) * I);
      ASQL := '';
      for J := 1 to ASubCount do
        ASQL := ASQL + GetRecordInsertSQL;
        ExecSQL(ASQL);
    end;
  {$IFDEF DELPHI11}
    Connection.CommitFreeAndNil(ATransaction);
  {$ELSE}
    Connection.Commit(ATransDesc);
  {$ENDIF}
  except
  {$IFDEF DELPHI11}
    Connection.RollbackFreeAndNil(ATransaction);
  {$ELSE}
    Connection.Rollback(ATransDesc);
  {$ENDIF}
  end;
end;

procedure TdxDBXConnectionHelper.Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
  OSAuthentication: Boolean);

  procedure SetParams(const AName, AValue: string);
  var
    I: Integer;
  begin
    if AValue = '' then
    begin
      I := Connection.Params.IndexOfName(AName);
      if I >= 0 then
        Connection.Params.Delete(I);
      Connection.Params.Append(Format('%s=', [AName]));
    end
    else
      Connection.Params.Values[AName] := AValue;
  end;

begin
  inherited Connect(AHostName, ADatabaseName, AUserName, APassword, OSAuthentication);
  Connection.Connected := False;
  Connection.LoginPrompt := False;
  Connection.DriverName := 'MSSQL';
  Connection.GetDriverFunc := 'getSQLDriverMSSQL';
  SetParams('HostName', AHostName);
  SetParams('DataBase', ADatabaseName);
  SetParams('User_Name', AUserName);
  SetParams('Password', APassword);
  if OSAuthentication then
    SetParams('OS Authentication', 'True')
  else
    SetParams('OS Authentication', 'False');
  {$IFDEF DELPHI8}
    Connection.LibraryName := 'dbxmss.dll';
    Connection.VendorLib := 'sqlncli10.dll';
    if Connection.Params.Values['MetaDataPackageLoader'] = '' then
      Connection.Params.Values['MetaDataPackageLoader'] := 'TDBXMsSqlMetaDataCommandFactory';
  {$ELSE}
    Connection.LibraryName := 'dbexpmss.dll';
    Connection.VendorLib := 'oledb';
  {$ENDIF}
  try
    Connection.Connected := True;
  except
    on E : Exception do
      if E.ClassType = EAccessViolation then
        raise Exception.CreateFmt('Cannot connect to a database ''%s''', [ADatabaseName])
      else
        raise;
  end;
end;

{ TdxFireDACConnectionHelper }

constructor TdxFireDACConnectionHelper.Create;
begin
  inherited Create;
{$IFDEF DELPHI19}
  FGUIxWaitCursor := TFDGUIxWaitCursor.Create(nil);
{$ELSE}
  FGUIxWaitCursor := TADGUIxWaitCursor.Create(nil);
{$ENDIF}
end;

destructor TdxFireDACConnectionHelper.Destroy;
begin
  FreeAndNil(FGUIxWaitCursor);
  inherited Destroy;
end;

procedure TdxFireDACConnectionHelper.AddRecords(ACount: Integer);
var
  I, J, ASubCount: Integer;
  ASQL: string;
begin
  ASubCount := 10;
  Connection.StartTransaction;
  try
    for I := 0 to (ACount div ASubCount) - 1 do
    begin
      if I mod 100 = 0 then
        SetProgressBarPosition(100 / (ACount div ASubCount) * I);
      ASQL := '';
      for J := 1 to ASubCount do
        ASQL := ASQL + GetRecordInsertSQL;
      Connection.ExecSQL(ASQL);
    end;
    Connection.Commit;
  except
    Connection.Rollback;
  end;
end;

procedure TdxFireDACConnectionHelper.Connect(const AHostName, ADatabaseName,
  AUserName, APassword: string; OSAuthentication: Boolean);
begin
  inherited Connect(AHostName, ADatabaseName, AUserName, APassword, OSAuthentication);
  Connection.Connected := False;
  Connection.LoginPrompt := False;
  Connection.Params.Values['DriverID'] :=  'MSSQL';
  if OSAuthentication then
    Connection.Params.Values['OSAuthent'] := 'Yes'
  else
  begin
    Connection.Params.Values['OSAuthent'] := 'No';
    Connection.Params.Values['User_Name'] := AUserName;
    Connection.Params.Values['Password'] := APassword;
  end;
  Connection.Params.Values['Server'] :=  AHostName;
  Connection.Params.Values['Database'] := ADatabaseName;
end;

procedure TdxFireDACConnectionHelper.ExecSQL(const ASQL: string);
var
{$IFDEF DELPHI19}
  AQuery: TFDQuery;
{$ELSE}
  AQuery: TADQuery;
{$ENDIF}
begin
{$IFDEF DELPHI19}
  AQuery := TFDQuery.Create(nil);
{$ELSE}
  AQuery := TADQuery.Create(nil);
{$ENDIF}
  try
    AQuery.Connection := Connection;
    AQuery.ExecSQL(ASQL);
  finally
    AQuery.Free;
  end;
end;

function TdxFireDACConnectionHelper.GetClassConnection: TConnectionClass;
begin
{$IFDEF DELPHI19}
  Result := TFDConnection;
{$ELSE}
  Result := TADConnection;
{$ENDIF}
end;

{$IFDEF DELPHI19}
function TdxFireDACConnectionHelper.GetConnection: TFDConnection;
begin
  Result := TFDConnection(inherited GetConnection);
end;
{$ELSE}
function TdxFireDACConnectionHelper.GetConnection: TADConnection;
begin
  Result := TADConnection(inherited GetConnection);
end;
{$ENDIF}

function TdxFireDACConnectionHelper.GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass;
begin
  Result := TdxServerModeFireDACDataSource;
end;

{$IFDEF DELPHI19}
function TdxFireDACConnectionHelper.OpenSQL(const ASQL: string): TDataSet;
var
  AQuery: TFDQuery;
begin
  AQuery := TFDQuery.Create(nil);
  AQuery.Connection := Connection;
  Result := AQuery;
  AQuery.Open(ASQL);
end;
{$ELSE}
function TdxFireDACConnectionHelper.OpenSQL(const ASQL: string): TDataSet;
var
  AQuery: TADQuery;
begin
  AQuery := TADQuery.Create(nil);
  AQuery.Connection := Connection;
  Result := AQuery;
  AQuery.Open(ASQL);
end;
{$ENDIF}

end.
