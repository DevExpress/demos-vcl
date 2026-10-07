unit uServerModeQueryConnection;

interface

{$I cxVer.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, cxGraphics, dxServerModeData, dxMessageDialog,
{$IFDEF DELPHI11}
  Data.DBXCommon,
{$ENDIF}
{$IFNDEF NOMSSQL}
  Data.DBXMSSQL,
{$ENDIF}
  Data.Win.ADODB,
  Data.DB, Vcl.ComCtrls, Data.FMTBcd, Data.SqlExpr, Vcl.ExtCtrls, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxMemo, cxProgressBar, cxMaskEdit,
  cxSpinEdit, cxButtons, cxGroupBox, cxRadioGroup, cxTextEdit, cxLabel,
  cxGridCardView, cxStyles, cxGridTableView, cxClasses,
{$IFDEF DELPHI19}
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.DApt,
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

  TServerModeQueryConnectionForm = class(TForm)
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
    lbOrdersTableName: TcxLabel;
    edDatabase: TcxTextEdit;
    edOrdersTableName: TcxTextEdit;
    btTestConnection: TcxButton;
    lbCurrentCount: TcxLabel;
    rgConnectionObject: TcxRadioGroup;
    lbCustomersTableName: TcxLabel;
    edCustomersTableName: TcxTextEdit;
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
    FDatabaseName: string;
    FOnChangeProgressBarPosition: TdxProgressBarPositionEvent;
    FCustomersTableName: string;
    FOrdersTableName: string;
  protected
    function DoGetRecordsCount(const ATableName: string): Integer;
    function GetClassConnection: TConnectionClass; virtual; abstract;
    function GetConnection: TCustomConnection; virtual;
    function GetCustomerInsertSQL: string;
    function GetOrderInsertSQL: string;
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; virtual; abstract;
    procedure ExecSQL(const ASQL: string); virtual; abstract;
    function OpenSQL(const ASQL: string): TDataSet; virtual; abstract;

    procedure BeginTransaction; virtual; abstract;
    procedure CommitTransaction; virtual; abstract;
    procedure RollbackTransaction; virtual; abstract;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); virtual;
    procedure CreateDatabaseAndConnect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean);
    procedure CreateTable;
    function GetRecordsCount: Integer;
    procedure SetProgressBarPosition(AValue: Double);
    function ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeQueryDataSource; virtual;
    procedure AddRecords(ACount: Integer);

    property Connection: TCustomConnection read GetConnection;
    property OwnerConnection: Boolean read FOwnerConnection;
    property DatabaseName: string read FDatabaseName write FDatabaseName;
    property OrdersTableName: string read FOrdersTableName write FOrdersTableName;
    property CustomersTableName: string read FCustomersTableName write FCustomersTableName;
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

    procedure BeginTransaction; override;
    procedure CommitTransaction; override;
    procedure RollbackTransaction; override;
  public
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;

    property Connection: TADOConnection read GetConnection;
  end;

  TdxDBXConnectionHelper = class(TdxCustomConnectionHelper)
  private
  {$IFDEF DELPHI11}
    FTrans: TDBXTransaction;
  {$ELSE}
    FTrans: TTransactionDesc;
  {$ENDIF}
  protected
    function GetClassConnection: TConnectionClass; override;
    function GetConnection: TSQLConnection; reintroduce;
    function GetServerModeDataSourceClass: TdxServerModeCustomDataSourceClass; override;
    procedure ExecSQL(const ASQL: string); override;
    function OpenSQL(const ASQL: string): TDataSet; override;

    procedure BeginTransaction; override;
    procedure CommitTransaction; override;
    procedure RollbackTransaction; override;
  public
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;
    function ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeQueryDataSource; override;

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

    procedure BeginTransaction; override;
    procedure CommitTransaction; override;
    procedure RollbackTransaction; override;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Connect(const AHostName, ADatabaseName, AUserName, APassword: string;
      OSAuthentication: Boolean); override;

  {$IFDEF DELPHI19}
    property Connection: TFDConnection read GetConnection;
  {$ELSE}
    property Connection: TADConnection read GetConnection;
  {$ENDIF}
  end;

function GetServerModeDataSource(AOwnerDataSource: TComponent; out ADataSource: TdxServerModeQueryDataSource): Boolean;

const
  MaxCustomerCount = 100;

implementation

uses
  System.UITypes,
  System.StrUtils, System.DateUtils, dxServerModeADODataSource, dxServerModeDBXDataSource,
  dxServerModeFireDACDataSource, dxServerModeSQLAdapters;

{$R *.dfm}

function GetServerModeDataSource(AOwnerDataSource: TComponent; out ADataSource: TdxServerModeQueryDataSource): Boolean;
begin
  with TServerModeQueryConnectionForm.Create(nil) do
  try
    Result := ShowModal = mrOk;
    if Result then
      ADataSource := ConnectionHelper.ExtractServerModeDataSource(AOwnerDataSource);
  finally
    Free;
  end;
end;

{ TServerModeDemoConnectionForm }

procedure TServerModeQueryConnectionForm.btAddRecordsAndStartDemoClick(Sender: TObject);
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

procedure TServerModeQueryConnectionForm.btStartDemoClick(Sender: TObject);
begin
  ButtonsEnabled(False);
  ConnectionHelper.Connect(edSQLServer.Text, edDatabase.Text, edLoginName.Text, edPassword.Text, rgConnectUsing.ItemIndex = 0);
  StartDemo;
end;

procedure TServerModeQueryConnectionForm.btTestConnectionClick(Sender: TObject);
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

procedure TServerModeQueryConnectionForm.rgConnectionObjectPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  FreeAndNil(FConnectionHelper);
  UpdateButtons;
end;

procedure TServerModeQueryConnectionForm.rgConnectUsingPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

function TServerModeQueryConnectionForm.GetConnectionHelper: TdxCustomConnectionHelper;
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
    FConnectionHelper.CustomersTableName := edCustomersTableName.Text;
    FConnectionHelper.OrdersTableName := edOrdersTableName.Text;
  end;
  Result := FConnectionHelper;
end;

procedure TServerModeQueryConnectionForm.SetProgressBarPosition(Sender: TObject; const AValue: Double);
begin
  ProgressBar.Position := AValue;
  ProgressBar.Invalidate;
  Application.ProcessMessages;
end;

procedure TServerModeQueryConnectionForm.ButtonsEnabled(AValue: Boolean);
begin
  btTestConnection.Enabled := AValue;
  btAddRecordsAndStartDemo.Enabled := AValue;
  btStartDemo.Enabled := AValue;
  rgConnectionObject.Enabled := AValue;
  rgConnectUsing.Enabled := AValue;
end;

destructor TServerModeQueryConnectionForm.Destroy;
begin
  FreeAndNil(FConnectionHelper);
  inherited Destroy;
end;

procedure TServerModeQueryConnectionForm.edLoginNamePropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeQueryConnectionForm.edPasswordPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeQueryConnectionForm.edSQLServerPropertiesChange(Sender: TObject);
begin
  FConnected := False;
  UpdateButtons;
end;

procedure TServerModeQueryConnectionForm.FormShow(Sender: TObject);
begin
  cxMemo1.Properties.WordWrap := True; 
end;

procedure TServerModeQueryConnectionForm.StartDemo;
begin
  ModalResult := mrOk;
end;

procedure TServerModeQueryConnectionForm.UpdateButtons;
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

procedure TdxCustomConnectionHelper.AddRecords(ACount: Integer);
var
  ASQL: string;
  ASubCount: Integer;

  procedure AddCustomers(ACustomersCount: Integer);
  var
    I, J: Integer;
  begin
    BeginTransaction;
    try
      for I := 0 to (ACustomersCount div ASubCount) - 1 do
      begin
        ASQL := '';
        for J := 1 to ASubCount do
          ASQL := ASQL + GetCustomerInsertSQL;
        ExecSQL(ASQL);
      end;
      CommitTransaction;
    except
      RollbackTransaction;
    end;
  end;

var
  I, J, ACustomerCount: Integer;
begin
  ASubCount := 10;
  ACustomerCount := DoGetRecordsCount(CustomersTableName);
  if ACustomerCount < MaxCustomerCount then
    AddCustomers(MaxCustomerCount - ACustomerCount);
  BeginTransaction;
  try
    for I := 0 to (ACount div ASubCount) - 1 do
    begin
      if I mod 100 = 0 then
        SetProgressBarPosition(100 / (ACount div ASubCount) * I);
      ASQL := '';
      for J := 1 to ASubCount do
        ASQL := ASQL + GetOrderInsertSQL;
      ExecSQL(ASQL);
    end;
    CommitTransaction;
  except
    RollbackTransaction;
  end;
end;

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

procedure TdxCustomConnectionHelper.CreateTable;
var
  ASQL: string;
begin
  ASQL := Format('IF OBJECT_ID(N''' + DatabaseName + '.dbo.%s'') IS NULL' + sLineBreak +
    'CREATE TABLE "dbo"."%0:s"(' +
    ' "OID" int IDENTITY(1,1) NOT NULL,' +
    ' "FirstName" nvarchar(10) NOT NULL,' +
    ' "LastName" nvarchar(10) NOT NULL,' +
    ' "Company" nvarchar(30) NOT NULL,' +
    ' "Prefix" nvarchar(5) NOT NULL,' +
    ' "Title" nvarchar(5) NOT NULL,' +
    ' "Address" nvarchar(50) NOT NULL,' +
    ' "City" nvarchar(15) NOT NULL, ' +
    ' "State" nvarchar(2) NOT NULL,' +
    ' "ZipCode" nvarchar(10) NOT NULL,' +
    ' "Source" nvarchar(10) NOT NULL,' +
    ' "Customer" bit NULL,' +
    ' "HomePhone" nvarchar(15) NOT NULL,' +
    ' "FaxPhone" nvarchar(15) NOT NULL,' +
    ' "Description" text NOT NULL,' +
    ' "Email" nvarchar(30) NOT NULL' +
    ' CONSTRAINT "PK_%0:s" PRIMARY KEY CLUSTERED' +
    '(' +
    ' "OID" ASC' +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"' +
    ') ON "PRIMARY";', [CustomersTableName]);
   try
    ExecSQL(ASQL);
  except
    raise Exception.CreateFmt('Cannot create a table ''%s''', [CustomersTableName]);
  end;

  ASQL := Format('IF OBJECT_ID(N''' + DatabaseName + '.dbo.%s'') IS NULL' + sLineBreak +
    'CREATE TABLE "dbo"."%0:s"(' +
    ' "OID" int IDENTITY(1,1) NOT NULL,' +
    ' "CustomerID" bigint NOT NULL,' +
    ' "OrderDate" datetime NULL,' +
    ' "Trademark" nvarchar(20) NOT NULL,' +
    ' "Model" nvarchar(30) NOT NULL,' +
    ' "HP" bigint NOT NULL,' +
    ' "Cyl" bigint NOT NULL,' +
    ' "TransmissSpeedCount" bigint NOT NULL,' +
    ' "TransmissAutomatic" bit NULL,' +
    ' "Category" nvarchar(10) NOT NULL,' +
    ' "Price" bigint NOT NULL,' +
    ' CONSTRAINT "PK_%0:s" PRIMARY KEY CLUSTERED' +
    '(' +
    ' "OID" ASC' +
    ')WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON "PRIMARY"' +
    ') ON "PRIMARY";', [OrdersTableName]);
  try
    ExecSQL(ASQL);
  except
    raise Exception.CreateFmt('Cannot create a table ''%s''', [OrdersTableName]);
  end;
end;

destructor TdxCustomConnectionHelper.Destroy;
begin
  if OwnerConnection then
    FreeAndNil(FConnection);
  inherited Destroy;
end;

function TdxCustomConnectionHelper.ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeQueryDataSource;
begin
  Result := GetServerModeDataSourceClass.Create(AOwner) as TdxServerModeQueryDataSource;
  Result.Connection := Connection;
  Result.InsertComponent(Connection);
  FOwnerConnection := False;
  Result.SQL.Text := 'SELECT' + sLineBreak +
      '"ServerModeGridOrdersDemo"."OID"' + sLineBreak +
      ',"CustomerID"' + sLineBreak +
      ',"OrderDate"' + sLineBreak +
      ',"Trademark"' + sLineBreak +
      ',"Model"' + sLineBreak +
      ',"HP"' + sLineBreak +
      ',"Cyl"' + sLineBreak +
      ',"TransmissSpeedCount"' + sLineBreak +
      ',"TransmissAutomatic"' + sLineBreak +
      ',"Category"' + sLineBreak +
      ',"Price"' + sLineBreak +
      '' + sLineBreak +
      ',"FirstName"' + sLineBreak +
      ',"LastName"' + sLineBreak +
      ',"Company"' + sLineBreak +
      ',"Prefix"' + sLineBreak +
      ',"Title"' + sLineBreak +
      ',"Address"' + sLineBreak +
      ',"City"' + sLineBreak +
      ',"State"' + sLineBreak +
      ',"ZipCode"' + sLineBreak +
      ',"Source"' + sLineBreak +
      ',"Customer"' + sLineBreak +
      ',"HomePhone"' + sLineBreak +
      ',"FaxPhone"' + sLineBreak +
      ',"Description"' + sLineBreak +
      ',"Email"' + sLineBreak +
      'FROM' + sLineBreak +
      '"ServerModeGridOrdersDemo"' + sLineBreak +
        'left join "ServerModeGridCustomersDemo" on("ServerModeGridOrdersDemo"."CustomerID" = "ServerModeGridCustomersDemo"."OID")';
  Result.SQLAdapterClass := TdxServerModeMSSQLAdapter;
  Result.KeyFieldNames := 'OID';
end;

function TdxCustomConnectionHelper.DoGetRecordsCount(const ATableName: string): Integer;
var
  ASQL: string;
  ADataSet: TDataSet;
begin
  ASQL := Format('IF DB_ID(N''%s'') IS NOT NULL AND OBJECT_ID(N''%0:s.dbo.%1:s'') IS NOT NULL' + sLineBreak +
    '  SELECT COUNT(*) FROM %0:s.dbo.%1:s;' + sLineBreak +
    'ELSE' + sLineBreak +
    '  SELECT 0;', [DatabaseName, ATableName]);
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

function TdxCustomConnectionHelper.GetConnection: TCustomConnection;
begin
  if FConnection = nil then
    FConnection := GetClassConnection.Create(nil);
  Result := FConnection;
end;

function TdxCustomConnectionHelper.GetCustomerInsertSQL: string;
const
  AFirstName: array[0..18] of string = ('Jane', 'Sam', 'Karen', 'Bobbie', 'Ricardo', 'Frank', 'Christa',
    'Jimmie', 'Alfred', 'James', 'Robert', 'June', 'Mildred', 'Henry', 'Michael', 'Scott', 'Mickey',
    'Roger', 'Leticia');
  ALastName: array[0..18] of string = ('Doe', 'Hill', 'Holmes', 'Valentine', 'Menendez', 'Frankson', 
    'Christie', 'Jones', 'Newman', 'Johnson', 'James', 'Alessandro', 'Johansson', 'McAllister', 'Jeffers', 
    'Mathewson', 'Alcorn', 'Michelson', 'Ford'); 
  ACompany: array[0..18] of string = ('Doe Enterprises', 'Hill Corporation', 'Holmes World', 
    'Valentine Hearts', 'Menedez Development', 'Frankson Media', 'Christies House of Design', 'Jones & Assoc', 
    'Newman Systems', 'Development House', 'James Systems', 'Alessandro & Associates', 'Mildreds World', 
    'McAllister Systems', 'Jeffers Clinic', 'Mathewson Design', 'Mickeys World of Fun','Michelson Systems', 
    'Ford Consulting');
  APrefix: array[0..18] of string = ('Ms.', 'Mr.', 'Ms.', 'Mr.', 'Mr.', 'Mr.', 'Ms.', 'Mrs.', 'Mr.', 'Mr.',
    'Mr.', 'Mrs.', 'Ms.', 'Mr.', 'Mr.', 'Mr.', 'Mr.', 'Mr.', 'Mrs.');
  ATitle: array[0..18] of string = ('', '', '', 'Dr.', '', '', 'PhD', '', 'PhD', 'PhD', 'MS', 'PhD', '', 'MS',
    'PhD', 'MA', '', 'PhD', 'PhD');

  AAddress: array[0..18] of string = ('123 Home Lane', '45 Hill St.', '9333 Holmes Dr.', '933 Heart St. Suite 1',
    '939 Center Street', '121 Media Center Drive', '349 Graphic Design Lane', '990 King Lane', '900 Newman Center',
    '93900 Carter Lane', '390-1 Fourth St.', '90283 Los Angeles Ave.', '390290 Mildred Lane', '029-938 Excelsior Way',
    '233 First St.', '111 McHenry St.', '436 1st Ave.', '3920 Michelson Dr.', '2900 Ford Drive'); 
  ACity: array[0..18] of string = ('Atlanta', 'Hillsville', 'Johnsonville', 'Chicago', 'Atlanta', 'New York', 'New York', 
    'Kingsville', 'Newman', 'Cartersville', 'New York', 'Los Angeles', 'Cleveland', 'San Francisco', 'Los Angeles', 
    'New York', 'Cleveland', 'Bridgeford', 'Lansing');
  AState: array[0..18] of string = ('CA', 'VA', 'NY', 'IL', 'GA', 'NY', 'CA', 'CA', 'OK', 'GA', 'NY', 'CA', 'OH', 'CA',
    'CA', 'NY', 'OH', 'CT', 'MI');
  AZipCode: array[0..18] of string = ('55555', '44444', '12121', '89123', '45012', '12121', '12211', '93939',
    '9900-', '909309', '12121', '93090', '37288-2323', '98454', '92939', '11111-2222', '37288', '93200', '23920');
  ASource: array[0..18] of string = ('', 'NY Times', 'Bob', 'Jennie', '', 'NY Times', 'NY Times', '', 'LA Times', '',
    'NY Times', 'LA Times', 'Referral', 'Referral', 'LA Times', 'NY Times', 'Referral', '', 'Referral');
  AHomePhone: array[0..18] of string = ('(233)323-33-23', '(222)222-22-22', '(333)333-33-33', '(898)745-15-11',
    '(151)615-16-11', '(339)339-39-39', '(939)399-99-99', '(993)939-93-99', '(930)930-30-93', '(309)209-30-20',
    '(029)020-90-90', '(902)092-09-30', '(090)983-02-48', '(923)022-08-34', '(093)008-30-23', '(209)093-84-98',
    '(000)002-32-32', '(203)290-89-02', '(228)320-83-20');
  AFaxPhone: array[0..18] of string = ('(444)444-44-44', '(222)222-22-22', '(212)556-56-55', '(321)516-51-51',
    '(656)161-65-16', '(393)090-20-99', '(909)098-00-98', '(930)930-98-09', '(920)983-02-02', '(094)302-89-08',
    '(090)909-00-90', '(940)104-80-93', '(190)890-02-83', '(084)029-80-28', '(080)098-90-08', '(098)900-98-90',
    '(098)902-98-34', '(098)900-83-04', '(098)908-00-80');
  ADescription: array[0..18] of string = ('This is a description for Jane Doe.'#$D#$A'Notice the Auto Preview Feature.',
    'This is a description for Sam Hill.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Karen Holmes.'#$D#$A'Notice the Auto Preview Feature.', '', 
    'This is a description for Ricardo Menendez.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Frank Frankson.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Christa Christie.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Jimmie Jones.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Alfred Newman.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for James Johnson.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Robert James.'#$D#$A'Notice the Auto Preview Feature.', '', 
    'This is a description for Mildred Johansson.'#$D#$A'Notice the Auto Preview Feature.', '', 
    'This is a description for Michael Jeffers.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Scott Mathewson.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Mickey Alcorn.'#$D#$A'Notice the Auto Preview Feature.', 
    'This is a description for Mickey Alcorn.'#$D#$A'Notice the Auto Preview Feature.', 
    '');
  AEmail: array[0..18] of string = ('doej@doeent.com', 'hills@hillcorp.com', 'holmesk@holmesw.com', 
    'valentineb@valetntineh.com', 'menendezr@menedezdev.com', 'franksonf@frankfmedia.com', 
    'christiec@christiesdesign.com', 'jonesj@jonesjim.com', 'newmanalf@newmansyst.com', 
    'johnsonj@jdevhouse.com', 'jamesr@jrsengin.com', 'alessandroj@alessandroassoc', 
    'johanssonm@mildrworld.com', 'mcallisterh@mcallistersyst.com', 'jeffersm@jeffersclinic.com', 
    'mathewsons@mathewstondsgn.com', 'alcornm@mikeysworld.com', 'michelsonr@michelsonsyst.com', 
    'fordl@fordconsult.com'); 

  function GetCustomer: string;
  begin
    case Random(3) of
      0:
        Result := '0';
      1:
        Result := '1';
      else
        Result := 'NULL';
    end;
  end;

var
  ACustomerIndex, AAddressIndex: Integer;
begin
  ACustomerIndex := Random(19);
  AAddressIndex := Random(19);
  Result := Format('INSERT INTO "%s" ("FirstName", "LastName", "Company", "Prefix", "Title", "Address", "City", ' +
    '"State", "ZipCode", "Source", "Customer", "HomePhone", "FaxPhone", "Description", "Email") VALUES ' +
    '(''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', %s, ''%s'', '+
    '''%s'', ''%s'', ''%s'')', [CustomersTableName, AFirstName[ACustomerIndex], ALastName[ACustomerIndex], ACompany[ACustomerIndex],
    APrefix[ACustomerIndex], ATitle[ACustomerIndex], AAddress[AAddressIndex], ACity[AAddressIndex],
    AState[AAddressIndex], AZipCode[AAddressIndex], ASource[AAddressIndex], GetCustomer, AHomePhone[Random(19)],
    AFaxPhone[Random(19)], ADescription[AAddressIndex], AEmail[AAddressIndex]]);
end;

function TdxCustomConnectionHelper.GetOrderInsertSQL: string;

  function GetDateTime: string;
  var
    ADate: TDateTime;
  begin
    ADate := IncSecond(Now, -Random(315360000));
    Result := FormatDateTime('yyyymmdd hh:mm:ss', ADate);
  end;

const
  Trademark: array[0..23] of string = ('Mercedes-Benz', 'Mercedes-Benz', 'Mercedes-Benz', 'BMW', 
    'Rolls-Royce', 'Jaguar', 'Cadillac', 'Cadillac', 'Lexus', 'Lexus', 'Ford', 'Dodge', 'GMC', 
    'Nissan','Toyota', 'Infiniti', 'Infiniti', 'Jaguar', 'Audi', 'Audi', 'BMW', 'BMW', 'Acura', 
    'Acura'); 
  Model: array[0..23] of string = ('SL500 Roadster', 'CLK55 AMG Cabriolet', 'C230 Kompressor Sport Coupe', 
    '530i', 'Corniche', 'S-Type 3.0', 'Seville', 'DeVille', 'LS430', 'GS 430', 'Ranger FX-4', 'Ram 1500', 
    'Siera Quadrasteer', 'Crew Cab SE', 'Tacoma S-Runner', 'Q45', 'G35 Sport Coupe Leather 6MT', 'XK8 Coupe', 
    'A6 3.0', 'TT Roadster', '760i Sedan', 'Z4 3.0 Roadster', 'TSX', 'NSX 3.2'); 
  HP: array[0..23] of string = ('302', '342', '189', '225', '325', '235', '275', '275', '290', '300',
    '135', '215', '200', '143', '190', '340', '280', '294', '220', '180', '438', '225', '200', '290');
  Cyl: array[0..23] of string = ('8', '8', '4', '6', '8', '6', '8', '8', '8', '8', '4', '6', '6', '4',
    '6', '8', '6', '8', '6', '4', '12', '6', '4', '6');
  TransmissSpeedCount: array[0..23] of string = ('5', '5', '5', '6', '4', '5', '4', '4', '5', '5', '5',
    '4', '4', '4', '5', '5', '6', '6', '5', '6', '6', '6', '6', '6');
  TransmissAutomatic: array[0..23] of string = ('1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1',
    '1', '1', '1', '0', '1', 'NULL', '1', '1', '1', '1', 'NULL', '0', 'NULL');
  Category: array[0..23] of string = ('SPORTS', 'SPORTS', 'SPORTS', 'SALOON', 'SALOON', 'SALOON', 'SALOON',
    'SALOON', 'SALOON', 'SALOON', 'TRUCK', 'TRUCK', 'TRUCK', 'TRUCK', 'TRUCK', 'SALOON', 'SPORTS', 'SPORTS',
    'SALOON', 'SPORTS', 'SALOON', 'SPORTS', 'SPORTS', 'SPORTS');
  Price: array[0..23] of string = ('83800', '79645', '25600', '39450', '370485', '44320', '49600', '47780',
    '54900', '41242', '12565', '17315', '17748', '12800', '20000', '62300', '34000', '73000', '38000', '45000',
    '120000', '45000', '28500', '95000');

var
  I: Integer;
begin
  I := Random(24);
  Result := Format('INSERT INTO "%s" ("CustomerID", "OrderDate", "Trademark", "Model", "HP", "Cyl", "TransmissSpeedCount", ' +
    '"TransmissAutomatic", "Category", "Price") VALUES (''%d'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', ''%s'', %s, ''%s'', ''%s'')',
    [OrdersTableName, Random(MaxCustomerCount) + 1, GetDateTime, Trademark[I], Model[I], HP[I], Cyl[I],
      TransmissSpeedCount[I], TransmissAutomatic[I], Category[I], Price[I]]);
end;

function TdxCustomConnectionHelper.GetRecordsCount: Integer;
begin
  Result := 0;
  if DoGetRecordsCount(CustomersTableName) > 0 then
    Result := DoGetRecordsCount(OrdersTableName);
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
  Result := TdxServerModeADOQueryDataSource;
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

procedure TdxADOConnectionHelper.BeginTransaction;
begin
  Connection.BeginTrans;
end;

procedure TdxADOConnectionHelper.CommitTransaction;
begin
  Connection.CommitTrans;
end;

procedure TdxADOConnectionHelper.RollbackTransaction;
begin
  Connection.RollbackTrans;
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

function TdxDBXConnectionHelper.ExtractServerModeDataSource(AOwner: TComponent): TdxServerModeQueryDataSource;
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
  Result := TdxServerModeDBXQueryDataSource;
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

procedure TdxDBXConnectionHelper.BeginTransaction;
begin
{$IFDEF DELPHI11}
  FTrans := Connection.BeginTransaction;
{$ELSE}
  Connection.StartTransaction(FTrans);
{$ENDIF}
end;

procedure TdxDBXConnectionHelper.CommitTransaction;
begin
{$IFDEF DELPHI11}
  Connection.CommitFreeAndNil(FTrans);
{$ELSE}
  Connection.Commit(FTrans);
{$ENDIF}
end;

procedure TdxDBXConnectionHelper.RollbackTransaction;
begin
{$IFDEF DELPHI11}
  Connection.RollbackFreeAndNil(FTrans);
{$ELSE}
  Connection.Rollback(FTrans);
{$ENDIF}
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

{ TdxADConnectionHelper }

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

procedure TdxFireDACConnectionHelper.BeginTransaction;
begin
  Connection.StartTransaction;
end;

procedure TdxFireDACConnectionHelper.CommitTransaction;
begin
  Connection.Commit;
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
  Result := TdxServerModeFireDACQueryDataSource;
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

procedure TdxFireDACConnectionHelper.RollbackTransaction;
begin
  Connection.Rollback;
end;

end.
