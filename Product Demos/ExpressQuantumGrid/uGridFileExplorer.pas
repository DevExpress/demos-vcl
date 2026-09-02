unit uGridFileExplorer;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Winapi.CommCtrl, System.Win.ComObj,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, dxCore,
  cxGridCustomTableView, cxGridTableView, cxClasses, cxGridCustomView,
  cxGridLevel, Vcl.ImgList, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxDataStorage, cxImageComboBox, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutLookAndFeels, System.Actions,
  cxLabel, cxNavigator, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, Vcl.ActnList, Vcl.ComCtrls, Winapi.ShlObj, cxCalendar, dxDateRanges, dxScrollbarAnnotations,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridFileExplorer = class(TdxGridFrame)
    Level: TcxGridLevel;
    TableView: TcxGridTableView;
    clnAttrib: TcxGridColumn;
    clnName: TcxGridColumn;
    clnDate: TcxGridColumn;
    clnSize: TcxGridColumn;
    ilIcons: TImageList;
    dxLayoutItem1: TdxLayoutItem;
    cbDrives: TcxComboBox;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    liCurrentPath: TdxLayoutLabeledItem;
    clnIcon: TcxGridColumn;
    clnFileType: TcxGridColumn;
    clnExt: TcxGridColumn;
    dxLayoutGroup1: TdxLayoutGroup;
    procedure TableViewDblClick(Sender: TObject);
    procedure TableViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDrivesClick(Sender: TObject);
    procedure TableViewDataControllerSortingChanged(Sender: TObject);
  private
    procedure ExecuteFile;
  protected
    function GetDescription: string; override;
    function IsFooterMenuEnabled: Boolean; override;
    procedure OpenFolder(const AFolderName: string);
    procedure PopulateDrives;
    procedure PopulateIcons;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure AfterShow; override;
    function CanUseOddEvenStyle: Boolean; override;
  end;

  PFileSourceRecord = ^TFileSourceRecord;
  TFileSourceRecord = record
    Time: TDateTime;
    Size: Integer;
    Attr: Integer;
    Name: string;
    Ext: string;
    FileType: Integer;  
  end;

  TFilesDataSource = class(TcxCustomDataSource)
  private
    FTableView: TcxGridTableView;
    FPathName: string;
    FFiles: TList;
    procedure SetPathName(const Value: string);
    procedure Clear;
    procedure LoadData;
    function GetItemIndex(AItemHandle: TcxDataItemHandle): Integer;
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle): Variant; override;
    function GetDisplayText(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle): string; override;
  public
    constructor Create(const APathName: string; ATableView: TcxGridTableView);
    destructor Destroy; override;
    function GetValueById(AID, ARecordIndex: Integer): Variant;
    property PathName: string read FPathName write SetPathName;
  end;

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, dxFrames, FrameIDs, uStrsConst, System.Math, Winapi.ActiveX;

var
  DesktopFolder: IShellFolder;

procedure DisposePIDL(ID: PItemIDList);
var
  Malloc: IMalloc;
begin
  if ID = nil then Exit;
  OLECheck(SHGetMalloc(Malloc));
  Malloc.Free(ID);
end;

function GetIDByPath(APath: string): PItemIDList;
var
  P: PWideChar;
  AFlags, ANumChars: LongWord;
begin
  ANumChars := Length(APath);
  AFlags := 0;
  P := StringToOleStr(APath);
  OLECheck(DesktopFolder.ParseDisplayName(Application.Handle, nil, P, ANumChars, Result, AFlags));
end;

function GetShellImageIndex(const ACurrentFolder: string; ARecord: PFileSourceRecord): Integer;
var
  AFileName: string;
  AFileInfo: TSHFileInfo;
  ID: PItemIDList;
begin
  Result := 0;
  if (ARecord.Attr and faDirectory = faDirectory) and (ARecord.Name = '..') then
  begin
    AFileName := ACurrentFolder;
    while (Length(AFileName) > 0) and (AFileName[Length(AFileName)] = '\') do
      Delete(AFileName, Length(AFileName), 1);
  end
  else
    AFileName := ACurrentFolder + ARecord.Name;
  if ARecord.Ext <> '' then
    AFileName := AFileName + '.' + ARecord.Ext;
  FillChar(AFileInfo, SizeOf(AFileInfo), #0);
  ID := GetIDByPath(AFileName);
  try
    if SHGetFileInfo(PChar(ID), 0, AFileInfo, SizeOf(AFileInfo), SHGFI_PIDL or SHGFI_SYSICONINDEX) <> 0 then
      Result := AFileInfo.iIcon
  finally
    DisposePIDL(ID);
    DestroyIcon(AFileInfo.hIcon);
  end;
end;

{ TFilesDataSource }

constructor TFilesDataSource.Create(const APathName: string; ATableView: TcxGridTableView);
begin
  FTableView := ATableView;
  FFiles := TList.Create;
  PathName := APathName;
end;

destructor TFilesDataSource.Destroy;
begin
  Clear;
  FFiles.Free;
  inherited;
end;

function TFilesDataSource.GetRecordCount: Integer;
begin
  Result := FFiles.Count;
end;

function TFilesDataSource.GetValue(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle): Variant;
begin
  Result := GetValueByID(GetItemIndex(AItemHandle), Integer(ARecordHandle));
end;

function TFilesDataSource.GetDisplayText(ARecordHandle: TcxDataRecordHandle; AItemHandle: TcxDataItemHandle): string;

  function GetSizeStr(ARecord: PFileSourceRecord): string;
  var
    ASize: Int64;
  begin
    Result := '';
    if ARecord^.Attr and faDirectory <> faDirectory then
    begin
      ASize := ARecord^.Size;
      if ASize < 1000 then
        Result := IntToStr(ASize) + ' Bytes'
      else
        if ASize < 1000000 then
          Result := IntToStr(ASize div 1000) + ' KB'
        else
          if ASize < 1000000000 then
            Result := IntToStr(ASize div 1000000) + ' MB'
          else
            Result := IntToStr(ASize div 1000000000) + ' GB';
    end;
  end;

var
  AColIndex: Integer;
  ARecord: PFileSourceRecord;
begin
  AColIndex := GetItemIndex(AItemHandle);
  ARecord := PFileSourceRecord(FFiles[Integer(ARecordHandle)]);

  case AColIndex of
    1: Result := ARecord^.Name;
    2: Result := ARecord^.Ext;
    3: Result := GetSizeStr(ARecord);
    4: Result := DateToStr(ARecord^.Time);
    5: Result := IntToStr(ARecord^.Attr);
    6: Result := IntToStr(ARecord^.FileType);
  else
    Result := '';
  end;
end;

function TFilesDataSource.GetItemIndex(AItemHandle: TcxDataItemHandle): Integer;
begin
  Result := FTableView.Columns[Integer(AItemHandle)].DataBinding.Item.ID
end;

procedure TFilesDataSource.SetPathName(const Value: string);
begin
  if (FPathName <> Value) then
  begin
    Clear;
    FPathName := Value;
    if PathName <> '' then
      LoadData;
  end;
end;

procedure TFilesDataSource.Clear;
var
  I: Integer;
begin
  for I := 0 to FFiles.Count - 1 do
     Dispose(PFileSourceRecord(FFiles[I]));
  FFiles.Clear;
end;

procedure TFilesDataSource.LoadData;
var
  ASearchRec: TSearchRec;
  ARes: Integer;

  procedure ExtractFileNameAndExtension(const ASearchRec: TSearchRec; out AName, AExt: string);
  begin
    AName := ASearchRec.Name;
    AExt := '';
    if ASearchRec.Attr and faDirectory = faDirectory  then
      Exit;
    AExt := ExtractFileExt(AName);
    if AExt <> '' then
    begin
      Delete(AName, Length(AName) - Length(AExt) + 1, Length(AExt));
      Delete(AExt, 1, 1);
    end;
  end;

  procedure AddFile;
  var
    ARecord: PFileSourceRecord;
    AName, AExt: string;
  begin
    ARecord := new(PFileSourceRecord);
    FFiles.Add(ARecord);
    ExtractFileNameAndExtension(ASearchRec, AName, AExt);
    ARecord.Name := AName;
    ARecord.Ext := AExt;
    ARecord.Attr := ASearchRec.Attr;
    ARecord.Time := FileDateToDateTime(ASearchRec.Time);
    ARecord.Size := ASearchRec.Size;
    if not (ASearchRec.Attr and faDirectory = faDirectory) then
      ARecord.FileType := 20    
    else
      if ASearchRec.Name = '..' then
        ARecord.FileType := 0   
      else
        ARecord.FileType := 10; 
  end;

begin
  ARes := FindFirst(PathName + '\*.*', faAnyFile and not faHidden, ASearchRec);
  while ARes = 0 do
  begin
    if ASearchRec.Name <> '.' then
      AddFile;
    ARes := FindNext(ASearchRec);
  end;
  FindClose(ASearchRec);
end;

function TFilesDataSource.GetValueById(AID, ARecordIndex: Integer): Variant;
var
  ARecord: PFileSourceRecord;
begin
  ARecord := PFileSourceRecord(FFiles[Integer(ARecordIndex)]);
  case AID of
    0: Result := GetShellImageIndex(PathName + '\', ARecord);
    1: Result := ARecord.Name;
    2: Result := ARecord.Ext;
    3: Result := ARecord.Size;
    4: Result := ARecord.Time;
    5: Result := ARecord.Attr;
    6: Result := ARecord.FileType;
  end;
end;

{ TfrmGridFileExplorer }

constructor TfrmGridFileExplorer.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  clnIcon.DataBinding.ValueTypeClass := TcxIntegerValueType;
  clnName.DataBinding.ValueTypeClass := TcxStringValueType;
  clnDate.DataBinding.ValueTypeClass := TcxIntegerValueType;
  clnSize.DataBinding.ValueTypeClass := TcxIntegerValueType;
  clnAttrib.DataBinding.ValueTypeClass := TcxIntegerValueType;
  PopulateIcons;
  PopulateDrives;
  clnName.SortOrder := soAscending;
end;

destructor TfrmGridFileExplorer.Destroy;
begin
  if TableView.DataController.CustomDataSource <> nil then
  begin
    TableView.DataController.CustomDataSource.Free;
    TableView.DataController.CustomDataSource := nil;
  end;
  inherited Destroy;
end;

procedure TfrmGridFileExplorer.AfterShow;
begin
  inherited AfterShow;
  Grid.SetFocus;
end;

function TfrmGridFileExplorer.CanUseOddEvenStyle: Boolean;
begin
  Result := False;
end;

function TfrmGridFileExplorer.GetDescription: string;
begin
  Result := sdxFrameFileExplorerDescription;
end;

procedure TfrmGridFileExplorer.ExecuteFile;
var
  AFileName: string;
begin
  if TableView.Controller.FocusedRow <> nil then
    with TFilesDataSource(TableView.DataController.CustomDataSource) do
    begin
      if TableView.Controller.FocusedRow.Values[clnName.Index] = '..' then
      begin
        AFileName := PathName;
        while (Length(AFileName) > 0) and (AFileName[Length(AFileName)] <> '\') do
          AFileName := Copy(AFileName, 1, Length(AFileName) - 1);
        if Length(AFileName) > 0 then
          AFileName := Copy(AFileName, 1, Length(AFileName) - 1);
      end
      else
        AFileName := PathName + '\' + TableView.Controller.FocusedRow.Values[clnName.Index];

      if TableView.Controller.FocusedRow.Values[clnExt.Index] <> '' then
        AFileName := AFileName + '.' + TableView.Controller.FocusedRow.Values[clnExt.Index];

      if TableView.Controller.FocusedRow.Values[clnAttrib.Index] and faDirectory = faDirectory then
        OpenFolder(AFileName)
      else
        ShellExecute(Handle, PChar('OPEN'), PChar(AFileName), nil, nil, SW_SHOWNORMAL);
    end;
end;

procedure TfrmGridFileExplorer.TableViewDataControllerSortingChanged(Sender: TObject);
begin
  clnFileType.SortOrder := soAscending;
  clnFileType.SortIndex := 0;
end;

procedure TfrmGridFileExplorer.TableViewDblClick(Sender: TObject);
var
  pt: TPoint;
  AHitTest: TcxCustomGridHitTest;
begin
  GetCursorPos(pt);
  pt := Grid.ScreenToClient(pt);
  AHitTest := TableView.ViewInfo.GetHitTest(pt.X, pt.Y);
  if AHitTest is TcxGridRecordCellHitTest then
    ExecuteFile;
end;

procedure TfrmGridFileExplorer.TableViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ExecuteFile;
end;

procedure TfrmGridFileExplorer.cbDrivesClick(Sender: TObject);
begin
  OpenFolder(cbDrives.Text);
end;

function TfrmGridFileExplorer.IsFooterMenuEnabled: Boolean;
begin
  Result := False;
end;

procedure TfrmGridFileExplorer.OpenFolder(const AFolderName: string);

  function ExtractLocalFolderName(const APath: string): string;
  var
    APos: Integer;
  begin
    Result := APath;
    while (Length(Result) > 0) and (Result[Length(Result)] = '\') do
      Delete(Result, Length(Result), 1);
    for APos := Length(Result) - 1 downto 1 do
      if Result[APos] = '\' then
      begin
        Result := Copy(Result, APos + 1, Length(Result) - APos);
        Break;
      end;
  end;

var
  APriorFolder, ALocalName: string;
  AIndex: Integer;
begin
  with TFilesDataSource(TableView.DataController.CustomDataSource) do
  begin
    APriorFolder := PathName;
    PathName := AFolderName;
    DataChanged;
    liCurrentPath.Caption := PathName + '\*.*';
    if TableView.DataController.RecordCount > 0 then
    begin
      AIndex := 0;
      if (Length(APriorFolder) > Length(PathName)) and (Copy(APriorFolder, 1, Length(PathName)) = PathName) then
      begin
        ALocalName := ExtractLocalFolderName(APriorFolder);
        AIndex := Max(AIndex, TableView.DataController.FindRecordIndexByText(0, clnName.Index, ALocalName, False, False, True));
        AIndex := TableView.DataController.GetRowIndexByRecordIndex(AIndex, False);
      end;
      TableView.Controller.FocusedRowIndex := AIndex;
    end;
  end;
end;

procedure TfrmGridFileExplorer.PopulateDrives;
var
  ADrive: DWORD;
  AMask: DWORD;
  I: Integer;
begin
  AMask := 1;
  ADrive := GetLogicalDrives;
  TableView.DataController.CustomDataSource := TFilesDataSource.Create('', TableView);
  for I := 0 to SizeOf(DWord) * 8 - 1 do
  begin
     if ADrive and AMask = AMask then
       cbDrives.Properties.Items.Add(Char(Integer('A') + I) + ':');
     AMask := AMask * 2;
     if (AMask > ADrive) then break;
  end;
  if cbDrives.Properties.Items.IndexOf('C:') > -1 then
    cbDrives.ItemIndex := cbDrives.Properties.Items.IndexOf('C:');
end;

procedure TfrmGridFileExplorer.PopulateIcons;
var
  I: Integer;
  AFileInfo: TSHFileInfo;
  AItem: TcxImageComboBoxItem;
begin
  ilIcons.Handle := SHGetFileInfo('', 0, AFileInfo, SizeOf(AFileInfo), SHGFI_SYSICONINDEX or SHGFI_LARGEICON or SHGFI_OPENICON);
  ImageList_SetBkColor(ilIcons.Handle, CLR_NONE);
  TcxImageComboBoxProperties(clnIcon.Properties).Items.Clear;
  for I := 0 to ilIcons.Count - 1 do
  begin
    AItem := TcxImageComboBoxProperties(clnIcon.Properties).Items.Add;
    AItem.Value := I;
    AItem.ImageIndex := I;
  end;
end;

initialization
  OLECheck(SHGetDesktopFolder(DesktopFolder));
end.
