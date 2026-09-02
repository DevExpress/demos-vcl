unit dxDemosDB;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Controls, Vcl.Forms,
  Data.DB, Datasnap.DBClient, Datasnap.Provider, cxControls, cxClasses, MidasLib;

const
  scxPrefixName = 'dxdd';
  scxDefaultDataPath = 'Data';

type
  TdxDemosDataSet = class;
  TdxDemosDataSetsController = class;
                                                   
  { TdxDataSetLinkInfo }

  TdxDataSetLinkInfo = class
  public
    Source: TDataSet;
    Dest: TdxDemosDataSet;
    Controller: TdxDemosDataSetsController;
    constructor Create(AController: TdxDemosDataSetsController; ASource: TDataSet);
    procedure AssignData;
    procedure AssignFieldInfo(ADest, ASource: TField);
    procedure AssignProperties;
    procedure CreateAllFields;
    procedure CreateDest;
    procedure DestroySource;
    function Index: Integer;
    procedure Reactivate;
    procedure UnlockDataSets;

    function DoCreateField(const FieldName: WideString; Origin: string): TField;
    function GetConvertedDataSet(AOriginal: TDataSet): TdxDemosDataSet;
  end;

  { TdxDemosDataSet }

  TdxDemosDataSet = class(TCustomClientDataSet)
  private
    FController: TdxDemosDataSetsController;
    FFileName: TFileName;
    FLockLoading: Boolean;
    FTableName: string;
    FSavedActive: Boolean;
    function GetFileName: TFileName;
    function GetIsLocked: Boolean;
    function GetPath: string;
    procedure SetController(AValue: TdxDemosDataSetsController);
    procedure SetFileName(const AValue: TFileName);
    procedure SetTableName(const AValue: string);
    function IsFileNameStored: Boolean;
  protected
    procedure CheckController;
    procedure LoadData;
    procedure Loaded; override;
    procedure Reload;
    procedure SaveData;
    procedure SetActive(Value: Boolean); override;
    procedure WriteState(Writer: TWriter); override;
  public
    constructor CreateEx(AController: TdxDemosDataSetsController; ASource: TDataSet);

    property Controller: TdxDemosDataSetsController read FController write SetController;
    property IsLocked: Boolean read GetIsLocked;
    property Path: string read GetPath;
  published
    property FileName: TFileName read GetFileName write SetFileName stored IsFileNameStored;
    property TableName: string read FTableName write SetTableName;
    property Active;
    property Aggregates;
    property AggregatesActive;
    property AutoCalcFields;
    property CommandText;
    property ConnectionBroker;
    property Constraints;
    property DataSetField;
    property DisableStringTrim;
    property Filter;
    property Filtered;
    property FilterOptions;
    property FieldDefs;
    property IndexDefs;
    property IndexFieldNames;
    property IndexName;
    property FetchOnDemand;
    property MasterFields;
    property MasterSource;
    property ObjectView;
    property PacketRecords;
    property Params;
    property ReadOnly;
    property RemoteServer;
    property StoreDefs;
    property BeforeOpen;
    property AfterOpen;
    property BeforeClose;
    property AfterClose;
    property BeforeInsert;
    property AfterInsert;
    property BeforeEdit;
    property AfterEdit;
    property BeforePost;
    property AfterPost;
    property BeforeCancel;
    property AfterCancel;
    property BeforeDelete;
    property AfterDelete;
    property BeforeScroll;
    property AfterScroll;
    property BeforeRefresh;
    property AfterRefresh;
    property OnCalcFields;
    property OnDeleteError;
    property OnEditError;
    property OnFilterRecord;
    property OnNewRecord;
    property OnPostError;
    property OnReconcileError;
    property BeforeApplyUpdates;
    property AfterApplyUpdates;
    property BeforeGetRecords;
    property AfterGetRecords;
    property BeforeRowRequest;
    property AfterRowRequest;
    property BeforeExecute;
    property AfterExecute;
    property BeforeGetParams;
    property AfterGetParams;
  end;

  { TdxDemosDataSetsController }

  TdxDataSetHandlerProc = procedure(ADataSet: TdxDataSetLinkInfo) of object;

  TdxDemosDataSetsController = class(TComponent)
  private
    FDataPath: TFileName;
    FDataSetsList: TList;
    FItemLinks: TcxObjectList;
    FIsLocked: Boolean;
    function GetCount: Integer;
    function GetItem(AIndex: Integer): TdxDataSetLinkInfo;
    function GetIsLocked: Boolean;
    procedure SetDataPath(AValue: TFileName);
    function IsDataPathStored: Boolean;
  protected
    procedure ActivateDataSet(AItem: TdxDataSetLinkInfo);
    procedure Add(ADataSet: TDataSet);
    procedure AddDemoDataset(ADataSet: TdxDemosDataSet);
    procedure AssignData(AItem: TdxDataSetLinkInfo);
    procedure AssignProperties(AItem: TdxDataSetLinkInfo);
    procedure CreateDest(AItem: TdxDataSetLinkInfo);
    procedure DestroySource(AItem: TdxDataSetLinkInfo);
    procedure ForEach(AProc: TdxDataSetHandlerProc);
    function GetDataSetLinkByDataSet(ADataSet: TDataSet): TdxDataSetLinkInfo;
    function GetDataSetLinkByDemoDataSet(ADataSet: TDataSet): TdxDataSetLinkInfo;
    procedure Loaded; override;
    procedure PopulateDataSets;
    procedure Reactivate(AItem: TdxDataSetLinkInfo);
    procedure RemoveDemoDataSet(ADataSet: TdxDemosDataSet);
    procedure ReplaceDatasetLinks;
    procedure ReplaceDatasetLink(AComponent: TComponent);
    procedure SaveData(AItem: TdxDataSetLinkInfo);
    procedure Unlock(AItem: TdxDataSetLinkInfo);

    property Count: Integer read GetCount;
    property Items[Index: Integer]: TdxDataSetLinkInfo read GetItem;
    property IsLocked: Boolean read GetIsLocked;
  public
    procedure Convert;
    procedure DestroySources;
  published
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    
    property DataPath: TFileName read FDataPath write SetDataPath stored IsDataPathStored;
  end;


implementation

type
  IdxProviderSupport = {$IFDEF DELPHI17}IProviderSupportNG{$ELSE}IProviderSupport{$ENDIF};

{ TdxDataSetLinkInfo }

constructor TdxDataSetLinkInfo.Create(AController: TdxDemosDataSetsController; ASource: TDataSet);
begin
  Controller := AController;
  Source := ASource;
end;

procedure TdxDataSetLinkInfo.AssignData;
var
  DSProv: TDataSetProvider;
begin
  DSProv := TDataSetProvider.Create(nil);
  try
    DSProv.DataSet := Source;
    Dest.Data := DSProv.Data
  finally
    DSProv.Free;
  end;
  //
  Dest.FTableName := IdxProviderSupport(Source).PSGetTableName;
  if Dest.FTableName  = '' then
    Dest.FTableName := Source.Name;
end;

procedure TdxDataSetLinkInfo.AssignFieldInfo(ADest, ASource: TField);
begin
  ADest.Alignment := ASource.Alignment;
  //
  ADest.AutoGenerateValue := ASource.AutoGenerateValue;
  ADest.KeyFields := ASource.KeyFields;
  ADest.DefaultExpression := ASource.DefaultExpression;
  ADest.DisplayLabel := ASource.DisplayLabel;
  ADest.DisplayWidth := ASource.DisplayWidth;
  ADest.ProviderFlags := ASource.ProviderFlags;
  ADest.ReadOnly := ASource.ReadOnly;
  ADest.Visible := ASource.Visible;
  //
  ADest.LookupDataSet := GetConvertedDataSet(ASource.LookupDataSet);
  ADest.LookupKeyFields := ASource.LookupKeyFields;
  ADest.LookupResultField := ASource.LookupResultField;
  //
  ADest.OnChange := ASource.OnChange;
  ADest.OnGetText := ASource.OnGetText;
  ADest.OnSetText := ASource.OnSetText;
  ADest.OnValidate := ASource.OnValidate;
end;

procedure TdxDataSetLinkInfo.AssignProperties;
var
  I: Integer;
  AActive: Boolean;
begin
  AActive := Dest.Active;
  Dest.Active := False;
  // assign events
  Dest.AutoCalcFields := Source.AutoCalcFields;
  Dest.BeforeOpen := Source.BeforeOpen;
  Dest.AfterOpen := Source.AfterOpen;
  Dest.BeforeClose := Source.BeforeClose;
  Dest.AfterClose := Source.AfterClose;
  Dest.BeforeInsert := Source.BeforeInsert;
  Dest.AfterInsert := Source.AfterInsert;
  Dest.BeforeEdit := Source.BeforeEdit;
  Dest.AfterEdit := Source.AfterEdit;
  Dest.BeforePost := Source.BeforePost;
  Dest.AfterPost := Source.AfterPost;
  Dest.BeforeCancel := Source.BeforeCancel;
  Dest.AfterCancel := Source.AfterCancel;
  Dest.BeforeDelete := Source.BeforeDelete;
  Dest.AfterDelete := Source.AfterDelete;
  Dest.BeforeScroll := Source.BeforeScroll;
  Dest.AfterScroll := Source.AfterScroll;
  Dest.BeforeRefresh := Source.BeforeRefresh;;
  Dest.AfterRefresh := Source.AfterRefresh;
  Dest.OnCalcFields := Source.OnCalcFields;
  Dest.OnDeleteError := Source.OnDeleteError;;
  Dest.OnEditError := Source.OnEditError;
  Dest.OnFilterRecord := Source.OnFilterRecord; ;
  Dest.OnNewRecord := Source.OnNewRecord;
  Dest.OnPostError := Source.OnPostError;
  Dest.Filtered := Source.Filtered;
  Dest.FilterOptions := Source.FilterOptions;
  Dest.Filter := Source.Filter;
  // assign Fields events
  if Source.FieldCount > 0 then
  begin
    CreateAllFields;
    if Dest.FieldDefs.Count <> Dest.FieldDefs.Count then
      raise Exception.Create('Different in FieldsCount ')
    else
      for I := 0 to Dest.FieldCount - 1 do
        AssignFieldInfo(Dest.Fields[I], Source.FieldByName(Dest.Fields[I].FieldName));
  end; 
  Dest.Active := AActive;
end;

procedure TdxDataSetLinkInfo.CreateAllFields;
var
  I: Integer;
begin
  if Dest.FieldCount <> 0 then Exit;
  if Source.Fields.Count = 0 then 
    for I := 0 to Source.FieldDefs.Count - 1 do
      DoCreateField(Source.FieldDefs[I].Name, '')
  else
    for I := 0 to Source.Fields.Count - 1 do
      DoCreateField(Source.Fields[I].FieldName, '')
end;

procedure TdxDataSetLinkInfo.CreateDest;
begin
  Dest := TdxDemosDataSet.CreateEx(Controller, Source);
  Dest.DisableControls;
  Source.DisableControls;
  AssignData;
end;

procedure TdxDataSetLinkInfo.DestroySource;
begin
  FreeAndNil(Source);
end;

function TdxDataSetLinkInfo.Index: Integer;
begin
  Result := -1;
  if Controller <> nil then
    Result := Controller.FDataSetsList.IndexOf(Self); 
end;

procedure TdxDataSetLinkInfo.Reactivate;
var
  AActive: Boolean;
begin
  AActive := Dest.Active;
  Dest.Active := False;
  Dest.Active := AActive;
end;

procedure TdxDataSetLinkInfo.UnlockDataSets;
begin
  Source.EnableControls;
  Dest.EnableControls;
end;

function TdxDataSetLinkInfo.DoCreateField(
  const FieldName: WideString; Origin: string): TField;
var
  FieldDef: TFieldDef;
  ParentField: TField;
  SubScript, ShortName, ParentFullName: String;
begin
  FieldDef := Dest.FieldDefList.FieldByName(FieldName);
  ParentField := nil;
  if Dest.ObjectView then
  begin
    if FieldDef.ParentDef <> nil then
    begin
      if FieldDef.ParentDef.DataType = ftArray then
      begin
        { Strip off the subscript to determine the parent's full name }
        SubScript := Copy(FieldName, Pos('[', FieldName), MaxInt);
        ParentFullName := Copy(FieldName, 1, Length(FieldName) - Length(SubScript));
        ShortName := FieldDef.ParentDef.Name + SubScript;
      end
      else
      begin
        if faUnNamed in FieldDef.ParentDef.Attributes then
          ParentFullName := FieldDef.ParentDef.Name else
          ParentFullName := ChangeFileExt(FieldName, '');
        ShortName := FieldDef.Name;
      end;
      ParentField := Dest.FieldList.Find(ParentFullName);
      if ParentField = nil then
        ParentField := DoCreateField(ParentFullName, Origin);
    end
    else
      ShortName := FieldDef.Name;
  end
  else
    ShortName := FieldName;
  Result := FieldDef.CreateField(Dest.Owner, ParentField as TObjectField, ShortName, False);
  try
    Result.Origin := Origin;
    Result.Name := CreateUniqueName(Dest.Owner, Dest, Result, scxPrefixName, FieldName);
  except
    Result.Free;
    raise;
  end;
end;

function TdxDataSetLinkInfo.GetConvertedDataSet(AOriginal: TDataSet): TdxDemosDataSet;
begin
  if AOriginal = nil then
    Result := nil
  else
    Result := Controller.GetDataSetLinkByDataSet(AOriginal).Dest;
end;

{ TdxDemosDataSet }

constructor TdxDemosDataSet.CreateEx(AController: TdxDemosDataSetsController; ASource: TDataSet);
begin
  DesignInfo := ASource.DesignInfo;
  inherited Create(AController.Owner);
  FController := AController;
  Name := scxPrefixName + ASource.Name;
end;

procedure TdxDemosDataSet.CheckController;
var
  I: Integer; 
begin
  for I := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[I] is TdxDemosDataSetsController then
    begin
      Controller := TdxDemosDataSetsController(Owner.Components[I]);
      Break;
    end;
end;

procedure TdxDemosDataSet.LoadData;
var
  AStream: TStream;
begin
  if FileExists(FileName) then
  begin
    AStream := TFileStream.Create(FileName, fmOpenRead or fmShareDenyNone);
    try
      FLockLoading := True;
      LoadFromStream(AStream);
    finally
      FLockLoading := False;
      AStream.Free;
    end;
  end;
end;

procedure TdxDemosDataSet.Loaded;
begin
  inherited Loaded;
  Reload;
end;

procedure TdxDemosDataSet.Reload;
begin
  CheckController;
  if Controller <> nil then 
  begin
    LoadData;
    Active := FSavedActive;
  end;
end;

procedure TdxDemosDataSet.SaveData;
var
  ADir: string;
begin
  if FileName <> '' then
  begin
    ADir := ExtractFileDir(FileName);
    if not DirectoryExists(ADir) then
    begin
      ADir := GetCurrentDir + '\' + ADir;
      if  ADir <> '' then
        ForceDirectories(ADir);
    end;
    SaveToFile(FileName);
  end;
end;

procedure TdxDemosDataSet.SetActive(Value: Boolean);
begin
  FSavedActive := Value;
  if not IsLocked then
  begin
    if Active and not Value then
      SaveData
    else
      if not Active and Value then
        LoadData;
  end;
  if not Value or not (csLoading in ComponentState) then 
    inherited SetActive(Value);
end;

procedure TdxDemosDataSet.WriteState(Writer: TWriter); 
begin
  Data := Null;
  inherited WriteState(Writer);
end;

function TdxDemosDataSet.GetFileName: TFileName;
begin
  Result := FFileName;
  if Result = '' then
    Result := TableName;
  if (Result <> '') and (ExtractFileExt(FFileName) = '') then
    Result := Path + Result + '.cds';
end;

function TdxDemosDataSet.GetIsLocked: Boolean;
begin
  Result := (Controller = nil) or Controller.IsLocked
    or FLockLoading or (csLoading in ComponentState);
end;

function TdxDemosDataSet.GetPath: string;
begin
  Result := Controller.DataPath;
  if (Result <> '') and (Result[Length(Result)] <> '\') then
    Result := Result + '\';
end;

procedure TdxDemosDataSet.SetTableName(const AValue: string);
var
  AActive: Boolean;
begin
  if SameText(TableName, AValue) then Exit;
  AActive := Active;
  Active := False;
  FTableName := AValue;
  Active := AActive;
end;

function TdxDemosDataSet.IsFileNameStored: Boolean;
begin
  Result := FFileName <> '';
end;

procedure TdxDemosDataSet.SetFileName(const AValue: TFileName);
var
  AActive: Boolean;
begin
  if SameText(FileName, AValue) then Exit;  
  AActive := Active;
  Active := False;
  FFileName := AValue;
  Active := AActive;
end;

procedure TdxDemosDataSet.SetController(AValue: TdxDemosDataSetsController);
begin
  if Controller = AValue then Exit;
  if Controller <> nil then
    Controller.RemoveDemoDataSet(Self);
  FController := AValue;
  if Controller <> nil then
  begin
    Controller.AddDemoDataSet(Self);
    SaveData;
  end;
end;

{ TdxDemosDataSetsController }

constructor TdxDemosDataSetsController.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FItemLinks := TcxObjectList.Create;
  FDataSetsList := TList.Create;
  FDataPath := scxDefaultDataPath;
end;

destructor TdxDemosDataSetsController.Destroy;
begin
  FDataSetsList.Free;
  FItemLinks.Free;
  inherited Destroy;
end;

procedure TdxDemosDataSetsController.Convert;
begin
  if Owner = nil then Exit;
  FIsLocked := True;
  try
    PopulateDataSets;
    ForEach(CreateDest);
    ForEach(AssignData);
    ForEach(AssignProperties);
    ForEach(SaveData);
    ReplaceDataSetLinks;
    ForEach(Unlock);
    ForEach(Reactivate);
    SetDesignerModified(Self);
  finally
    FIsLocked := False;
  end;
end;

procedure TdxDemosDataSetsController.DestroySources;
begin
  ForEach(DestroySource);
end;

procedure TdxDemosDataSetsController.ActivateDataSet(AItem: TdxDataSetLinkInfo);
begin
  AItem.Dest.Active := True;
end;

procedure TdxDemosDataSetsController.Add(ADataSet: TDataSet);
begin
  FItemLinks.Add(TdxDataSetLinkInfo.Create(Self, ADataSet));
end;

procedure TdxDemosDataSetsController.AddDemoDataset(ADataSet: TdxDemosDataSet);
var
  AInfo: TdxDataSetLinkInfo;
begin
  if GetDataSetLinkByDemoDataSet(ADataSet) <> nil then Exit;
  AInfo := TdxDataSetLinkInfo.Create(Self, nil);
  AInfo.Dest := ADataSet;
  FItemLinks.Add(AInfo);
end;

procedure TdxDemosDataSetsController.AssignData(AItem: TdxDataSetLinkInfo);
begin
  AItem.AssignData;
end;

procedure TdxDemosDataSetsController.AssignProperties(AItem: TdxDataSetLinkInfo);
begin
  AItem.AssignProperties;
end;

procedure TdxDemosDataSetsController.CreateDest(AItem: TdxDataSetLinkInfo);
begin
  AItem.CreateDest;
end;

procedure TdxDemosDataSetsController.DestroySource(AItem: TdxDataSetLinkInfo);
begin
  AItem.DestroySource;
end;

function TdxDemosDataSetsController.GetDataSetLinkByDataSet(
  ADataSet: TDataSet): TdxDataSetLinkInfo;
var
  I: Integer;
begin
  for I := 0 to Count - 1  do
  begin
    Result := Items[I];
    if ADataSet = Result.Source then Exit;
  end;
  Result := nil;
end;

function TdxDemosDataSetsController.GetDataSetLinkByDemoDataSet(
  ADataSet: TDataSet): TdxDataSetLinkInfo;
var
  I: Integer;
begin
  for I := 0 to Count - 1  do
  begin
    Result := Items[I];
    if ADataSet = Result.Dest then Exit;
  end;
  Result := nil;
end;

procedure TdxDemosDataSetsController.Loaded;
var
  I: Integer; 
begin
  inherited Loaded;
  for I := 0 to ComponentCount - 1 do
    if Components[I] is TdxDemosDataSet then
      TdxDemosDataSet(TdxDemosDataSet).Reload;
end;

procedure TdxDemosDataSetsController.ForEach(AProc: TdxDataSetHandlerProc);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    AProc(Items[I]);
end;

procedure TdxDemosDataSetsController.PopulateDataSets;
var
  I: Integer;
begin
  for I := 0 to Owner.ComponentCount - 1 do
    if Owner.Components[I] is TDataSet then
      Add(Owner.Components[I] as TDataSet);
end;

procedure TdxDemosDataSetsController.Reactivate(AItem: TdxDataSetLinkInfo);
begin
  AItem.Reactivate;
end;

procedure TdxDemosDataSetsController.RemoveDemoDataSet(ADataSet: TdxDemosDataSet);
var
  AInfo: TdxDataSetLinkInfo;
begin
  AInfo := GetDataSetLinkByDemoDataSet(ADataSet);
  if AInfo <> nil then
  begin
    FItemLinks.Delete(AInfo.Index);
    AInfo.Free;
  end; 
end;

procedure TdxDemosDataSetsController.ReplaceDatasetLinks;
var
  I: Integer;
begin
  for I := 0 to Owner.ComponentCount - 1 do
    ReplaceDataSetLink(Owner.Components[I]);
end;

procedure TdxDemosDataSetsController.ReplaceDatasetLink(AComponent: TComponent);
var
  ALink: TdxDataSetLinkInfo;
begin
  if not (AComponent is TDataSource) then Exit;
  ALink := GetDataSetLinkByDataSet(TDataSource(AComponent).DataSet);
  if ALink <> nil then
    TDataSource(AComponent).DataSet := ALink.Dest;
end;

procedure TdxDemosDataSetsController.SaveData(AItem: TdxDataSetLinkInfo);
begin
  AItem.Dest.SaveData;
end;

procedure TdxDemosDataSetsController.Unlock(AItem: TdxDataSetLinkInfo);
begin
  AItem.UnlockDataSets;
end;

function TdxDemosDataSetsController.GetCount: Integer;
begin
  Result := FItemLinks.Count;
end;

function TdxDemosDataSetsController.GetItem(AIndex: Integer): TdxDataSetLinkInfo;
begin
  Result := FItemLinks[AIndex] as TdxDataSetLinkInfo;
end;

function TdxDemosDataSetsController.GetIsLocked: Boolean;
begin
  Result := FIsLocked; 
end;

procedure TdxDemosDataSetsController.SetDataPath(AValue: TFileName);
begin
  FDataPath := AValue;
end;

function TdxDemosDataSetsController.IsDataPathStored: Boolean;
begin
  Result := FDataPath <> scxDefaultDataPath;
end;

end.
