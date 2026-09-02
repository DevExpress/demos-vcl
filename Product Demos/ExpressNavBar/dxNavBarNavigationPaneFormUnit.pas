unit dxNavBarNavigationPaneFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxNavBarControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox,
  Vcl.ActnList, Vcl.ImgList, Vcl.ComCtrls, cxTextEdit, dxNavBarGroupItems, dxNavBarCollns,
  cxClasses, dxNavBarBase, dxNavBar, cxListView, dxNavBarOfficeNavigationBar,
  cxSplitter, Winapi.ShlObj, cxShellCommon, cxShellListView, cxTreeView, cxButtons,
  cxShellTreeView, dxSkinsdxNavBarPainter, dxStatusBar, dxBar, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, dxLayoutcxEditAdapters, dxBarBuiltInMenu, dxLayoutContainer, cxImageList,
  dxLayoutControl, dxLayoutLookAndFeels, System.Actions, System.UITypes;

type
  PShellItem = ^TShellItem;
  TShellItem = record
    FullID,
    ID: PItemIDList;
    ParentID: PItemIDList;
    ShellFolder: IShellFolder;
    Empty: Boolean;
    DisplayName,
    TypeName: string;
    ImageIndex,
    Size,
    Attributes: Integer;
    ModDate: string;
  end;

  TfrmNavigationPane = class(TdxNavBarControlDemoUnitForm)
    ilSmall: TcxImageList;
    ilLarge: TcxImageList;
    ActionList1: TActionList;
    actUp: TAction;
    actLargeIcons: TAction;
    actSmallIcons: TAction;
    actList: TAction;
    actReport: TAction;
    actDesktop: TAction;
    actMyDocuments: TAction;
    actMyNetworkPlaces: TAction;
    nbMain: TdxNavBar;
    bgMyComputer: TdxNavBarGroup;
    bgFavorites: TdxNavBarGroup;
    bgSearch: TdxNavBarGroup;
    bgColorScheme: TdxNavBarGroup;
    bgOptions: TdxNavBarGroup;
    nbMainUp: TdxNavBarItem;
    nbMainDesktop: TdxNavBarItem;
    nbMainMyDocuments: TdxNavBarItem;
    nbMainNetwork: TdxNavBarItem;
    nbMainBlue: TdxNavBarItem;
    nbMainBlack: TdxNavBarItem;
    nbMainSilver: TdxNavBarItem;
    nbMainLargeIcons: TdxNavBarItem;
    nbMainSmallIcons: TdxNavBarItem;
    nbMainList: TdxNavBarItem;
    nbMainReport: TdxNavBarItem;
    bgMyComputerControl: TdxNavBarGroupControl;
    nbMyComputer: TdxNavBar;
    nbMyComputerGroup1: TdxNavBarGroup;
    nbMyComputerGroup2: TdxNavBarGroup;
    nbMyComputerUp: TdxNavBarItem;
    nbMyComputerDesktop: TdxNavBarItem;
    nbMyComputerMyDocuments: TdxNavBarItem;
    nbMyComputerMyNetworkPlaces: TdxNavBarItem;
    nbMyComputerSeparator1: TdxNavBarSeparator;
    nbMyComputerGroup2Control: TdxNavBarGroupControl;
    bgFavoritesControl: TdxNavBarGroupControl;
    bgSearchControl: TdxNavBarGroupControl;
    btnSearch: TButton;
    edSearch: TcxTextEdit;
    bgOptionsControl: TdxNavBarGroupControl;
    nbOptions: TdxNavBar;
    nbOptionsListOptions: TdxNavBarGroup;
    nbOptionsNavBarOptions: TdxNavBarGroup;
    nbOptionsLargeIcons: TdxNavBarItem;
    nbOptionsSmallIcons: TdxNavBarItem;
    nbOptionsList: TdxNavBarItem;
    nbOptionsReport: TdxNavBarItem;
    nbOptionsAdjustWidthByPopup: TdxNavBarItem;
    nbOptionsAllowCustomize: TdxNavBarItem;
    nbOptionsCollapsible: TdxNavBarItem;
    nbOptionsTabStop: TdxNavBarItem;
    dxNavBarOfficeNavigationBar1: TdxNavBarOfficeNavigationBar;
    cxSplitter1: TcxSplitter;
    lvMain: TcxListView;
    tvMyComputer: TcxTreeView;
    lvMyFavorites: TcxListView;
    ilMainSmall: TImageList;
    ilMainLarge: TImageList;
    StatusBar1: TdxStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    actAdjustWidthByPopup: TAction;
    actAllowCustomize: TAction;
    actOptionsCollapsible: TAction;
    actOptionsTabStop: TAction;
    cxGroupBox2: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    Button1: TcxButton;
    actSearch: TAction;
    dxLayoutItem1: TdxLayoutItem;
    cxGroupBox3: TcxGroupBox;
    dxNavBar1: TdxNavBar;
    dxNavBarGroup1: TdxNavBarGroup;
    dxNavBarGroup2: TdxNavBarGroup;
    dxNavBarItem31: TdxNavBarItem;
    dxNavBarItem32: TdxNavBarItem;
    dxNavBarItem33: TdxNavBarItem;
    dxNavBarItem34: TdxNavBarItem;
    dxNavBarItem35: TdxNavBarItem;
    dxNavBarItem36: TdxNavBarItem;
    dxNavBarItem37: TdxNavBarItem;
    dxNavBarItem38: TdxNavBarItem;
    dxLayoutAutoCreatedGroup2Temp: TdxLayoutAutoCreatedGroup;
    cbShowOfficeNavvigationBar: TdxLayoutCheckBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure lvMainData(Sender: TObject; Item: TListItem);
    procedure btnLargeIconsClick(Sender: TObject);
    procedure lvMainDblClick(Sender: TObject);
    procedure lvMainDataHint(Sender: TObject; StartIndex,
      EndIndex: Integer);
    procedure lvMainKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lvMainDataFind(Sender: TObject; Find: TItemFind;
      const FindString: String; const FindPosition: TPoint;
      FindData: Pointer; StartIndex: Integer; Direction: TSearchDirection;
      Wrap: Boolean; var Index: Integer);
    procedure lvMainCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure lvMainCustomDrawSubItem(Sender: TCustomListView;
      Item: TListItem; SubItem: Integer; State: TCustomDrawState;
      var DefaultDraw: Boolean);
    procedure btnBackClick(Sender: TObject);
    procedure Form1Close(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchClick(Sender: TObject);
    procedure nbMainDesktopClick(Sender: TObject);
    procedure nbMainMyDocumentsClick(Sender: TObject);
    procedure nbMainNetworkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure tvMyComputerClick(Sender: TObject);
    procedure lvMyFavoritesClick(Sender: TObject);
    procedure actLargeIconsExecute(Sender: TObject);
    procedure nbOptionsAdjustWidthByPopupClick(Sender: TObject);
    procedure nbOptionsAllowCustomizeClick(Sender: TObject);
    procedure nbOptionsCollapsibleClick(Sender: TObject);
    procedure nbOptionsTabStopClick(Sender: TObject);
    procedure tvMyComputerAdvancedCustomDraw(Sender: TCustomTreeView;
      const ARect: TRect; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure tvMyComputerMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tvMyComputerMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bbExitClick(Sender: TObject);
    procedure dxNavBarOfficeNavigationBar1QueryPeekFormContent(ASender: TObject;
      ANavigationItem: IdxNavigationItem; var AControl: TWinControl);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure edSearchPropertiesChange(Sender: TObject);
    procedure cbShowOfficeNavvigationBarClick(Sender: TObject);
  private
    FIDList: TList;
    FSearchShellID: PItemIDList;
    FShellID: PItemIDList;
    FDesktopFolder: IShellFolder;
    FSearching: Boolean;
    FLockSearchTextChange: Boolean;
    function GetShellFolder: IShellFolder;
    function GetShellItemCount: Integer;
    function GetShellItem(Index: Integer): PShellItem;

    procedure ClearIDList;

    function SwitchOption(Sender: TObject; AValue: Boolean): Boolean;
    procedure CloseNavBarPopup;
  protected
    function GetBarManager: TdxBarManager; override;
    function GetDescription: string; override;
    function GetNavBarControl: TdxNavBar; override;
    function GetIDByPath(APath: string): PItemIDList;
    function GetIDBySpetialFolder(ASpetialFolder: Integer): PItemIDList;
    function GetShellFolderByID(AID: PItemIDList): IShellFolder;
    function GetEnumIDListByFolder(AFolder: IShellFolder): IEnumIDList;

    function CompareNames(Path, Pattern: string): Boolean;
    procedure SetSearch(AID: PItemIDList; const Pattern: string);
    procedure SetPath(const Value: string); overload;
    procedure SetPath(ID: PItemIDList); overload;
    procedure PopulateIDList(AID: PItemIDList);
    procedure PopulateSearchIDList(ASearchID: PItemIDList; Pattern: string);
    procedure PopulateMyFavoritesList(AID: PItemIDList);
    procedure PopulateMyComputerTree(AID: PItemIDList);
    procedure CheckShellItems(StartIndex, EndIndex: Integer);
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    function HasOptions: Boolean; override;

    property DesktopFolder: IShellFolder read FDesktopFolder;
    property SearchShellID: PItemIDList read FSearchShellID;
    property ShellFolder: IShellFolder read GetShellFolder;
    property ShellID: PItemIDList read FShellID;

    property ShellItems[Index: Integer]: PShellItem read GetShellItem;
    property ShellItemCount: Integer read GetShellItemCount;
  end;

implementation

{$R *.dfm}

uses
  System.Types, Winapi.ShellAPI, Winapi.ActiveX, System.Win.ComObj, Winapi.CommCtrl, cxGeometry, dxNavBarOffice11Views;

procedure DisposePIDL(ID: PItemIDList);
var
  Malloc: IMalloc;
begin
  if ID = nil then Exit;
  OLECheck(SHGetMalloc(Malloc));
  Malloc.Free(ID);
end;

function NextPIDL(IDList: PItemIDList): PItemIDList;
begin
  Result := IDList;
  Inc(PAnsiChar(Result), IDList^.mkid.cb);
end;

function GetPIDLSize(IDList: PItemIDList): Integer;
begin
  Result := 0;
  if Assigned(IDList) then
  begin
    Result := SizeOf(IDList^.mkid.cb);
    while IDList^.mkid.cb <> 0 do
    begin
      Result := Result + IDList^.mkid.cb;
      IDList := NextPIDL(IDList);
    end;
  end;
end;

procedure StripLastID(IDList: PItemIDList);
var
  MarkerID: PItemIDList;
begin
  MarkerID := IDList;
  if Assigned(IDList) then
  begin
     while IDList.mkid.cb <> 0 do
    begin
      MarkerID := IDList;
      IDList := NextPIDL(IDList);
    end;
    MarkerID.mkid.cb := 0;
  end;
end;

function CreatePIDL(Size: Integer): PItemIDList;
var
  Malloc: IMalloc;
  HR: HResult;
begin
  Result := nil;

  HR := SHGetMalloc(Malloc);
  if Failed(HR) then
    Exit;

  try
    Result := Malloc.Alloc(Size);
    if Assigned(Result) then
      FillChar(Result^, Size, 0);
  finally
  end;
end;

function CopyPIDL(IDList: PItemIDList): PItemIDList;
var
  Size: Integer;
begin
  Size := GetPIDLSize(IDList);
  Result := CreatePIDL(Size);
  if Assigned(Result) then
    CopyMemory(Result, IDList, Size);
end;

function ConcatPIDLs(IDList1, IDList2: PItemIDList): PItemIDList;
var
  cb1, cb2: Integer;
begin
  if Assigned(IDList1) then
    cb1 := GetPIDLSize(IDList1) - SizeOf(IDList1^.mkid.cb)
  else cb1 := 0;
  cb2 := GetPIDLSize(IDList2);

  Result := CreatePIDL(cb1 + cb2);
  if Assigned(Result) then
  begin
    if Assigned(IDList1) then
      CopyMemory(Result, IDList1, cb1);
    CopyMemory(PAnsiChar(Result) + cb1, IDList2, cb2);
  end;
end;

function GetDisplayName(ShellFolder: IShellFolder; PIDL: PItemIDList;
                        ForParsing: Boolean): string;
var
  StrRet: TStrRet;
  P: PAnsiChar;
  Flags: Integer;
begin
  Result := '';
  if ForParsing then
    Flags := SHGDN_FORPARSING
  else Flags := SHGDN_NORMAL;

  ShellFolder.GetDisplayNameOf(PIDL, Flags, StrRet);
  case StrRet.uType of
    STRRET_CSTR:
      SetString(Result, StrRet.cStr, lStrLenA(StrRet.cStr));
    STRRET_OFFSET:
      begin
        P := @PIDL.mkid.abID[StrRet.uOffset - SizeOf(PIDL.mkid.cb)];
        SetString(Result, P, PIDL.mkid.cb - StrRet.uOffset);
      end;
    STRRET_WSTR:
      Result := StrRet.pOleStr;
  end;
end;

function GetShellImage(PIDL: PItemIDList; Large, Open: Boolean): Integer;
var
  FileInfo: TSHFileInfo;
  Flags: Integer;
begin
  FillChar(FileInfo, SizeOf(FileInfo), #0);
  Flags := SHGFI_PIDL or SHGFI_SYSICONINDEX or SHGFI_ICON;
  if Open then Flags := Flags or SHGFI_OPENICON;
  if Large then Flags := Flags or SHGFI_LARGEICON
  else Flags := Flags or SHGFI_SMALLICON;
  SHGetFileInfo(PChar(PIDL), 0, FileInfo, SizeOf(FileInfo), Flags);
  Result := FileInfo.iIcon;
end;

function IsFolder(ShellFolder: IShellFolder; ID: PItemIDList): Boolean;
var
  Flags: UINT;
begin
  Flags := SFGAO_FOLDER;
  ShellFolder.GetAttributesOf(1, ID, Flags);
  Result := SFGAO_FOLDER and Flags <> 0;
end;

{ TfrmNavigationPane }

procedure TfrmNavigationPane.FormCreate(Sender: TObject);
var
  FileInfo: TSHFileInfo;
  NewPIDL: PItemIDList;
begin
  inherited;
  dxNavBar1.Parent := nil;
  cxGroupBox2.Parent := nil;
  if nbMyComputer.Painter is TdxNavBarSkinExplorerBarPainter then
    (nbMyComputer.Painter as TdxNavBarSkinExplorerBarPainter).Embedded := True;
  if nbOptions.Painter is TdxNavBarSkinExplorerBarPainter then
    (nbOptions.Painter as TdxNavBarSkinExplorerBarPainter).Embedded := True;
  OLECheck(SHGetDesktopFolder(FDesktopFolder));
  FIDList := TList.Create;

  ilMainSmall.Handle := SHGetFileInfo('C:\', 0, FileInfo, SizeOf(FileInfo),
    SHGFI_SYSICONINDEX or SHGFI_SMALLICON);
  ilMainLarge.Handle := SHGetFileInfo('C:\', 0, FileInfo, SizeOf(FileInfo),
    SHGFI_SYSICONINDEX or SHGFI_LARGEICON);

  OLECheck(SHGetSpecialFolderLocation(Application.Handle, CSIDL_DRIVES, NewPIDL));
  FShellID := NewPIDL;
  SetPath(NewPIDL);
  PopulateMyFavoritesList(GetIDBySpetialFolder(CSIDL_FAVORITES));
  PopulateMyComputerTree(NewPIDL);
end;

procedure TfrmNavigationPane.btnLargeIconsClick(Sender: TObject);
begin
  lvMain.ViewStyle := TViewStyle((Sender as TComponent).Tag);
end;

procedure TfrmNavigationPane.lvMainDblClick(Sender: TObject);
var
  AShellFolder: IShellFolder;
  AParentID, AID: PItemIDList;
begin
  if lvMain.Selected <> nil then
  begin
    AID := ShellItems[lvMain.Selected.Index].ID;
    AParentID := ShellItems[lvMain.Selected.Index].ParentID;
    if FSearchShellID = nil then
    begin
      AShellFolder := ShellItems[lvMain.Selected.Index].ShellFolder;
      if IsFolder(AShellFolder, AID) then
        SetPath(ConcatPIDLs(AParentID, AID));
    end
    else SetPath(AParentID);
  end;
end;

function TfrmNavigationPane.GetShellFolder: IShellFolder;
begin
  Result := GetShellFolderByID(FShellID);
end;

function TfrmNavigationPane.GetShellItemCount: Integer;
begin
  Result := FIDList.Count;
end;

function TfrmNavigationPane.GetShellItem(Index: Integer): PShellItem;
begin
  Result := PShellItem(FIDList[Index]);
end;

procedure TfrmNavigationPane.lvMainKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_RETURN:
      lvMainDblClick(Sender);
    VK_BACK:
      btnBackClick(Sender);
  end;
end;

procedure TfrmNavigationPane.ClearIDList;
var
  I: Integer;
begin
  for I := 0 to ShellItemCount - 1 do
  begin
    DisposePIDL(ShellItems[I].ID);
    Dispose(ShellItems[I]);
  end;
  FIDList.Clear;
end;

function TfrmNavigationPane.SwitchOption(Sender: TObject; AValue: Boolean): Boolean;
const
  UncheckImage = -1;
  CheckImage = 14;
  AImageIndex: array [Boolean] of Integer = (UncheckImage, CheckImage);
begin
  Result := not AValue;
  (Sender as TAction).ImageIndex := AImageIndex[Result];
end;

procedure TfrmNavigationPane.CloseNavBarPopup;
begin
  TdxNavBarOffice11NavPanePainter(nbMain.Painter).Controller.ClosePopupControl;
end;

procedure TfrmNavigationPane.PopulateIDList(AID: PItemIDList);
var
  ID: PItemIDList;
  AShellFolder: IShellFolder;
  EnumList: IEnumIDList;
  NumIDs: LongWord;
  SaveCursor: TCursor;
  ShellItem: PShellItem;
begin
  AShellFolder := GetShellFolderByID(AID);
  SaveCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourglass;
    ClearIDList;
    EnumList := GetEnumIDListByFolder(AShellFolder);

    FShellID := AID;
    FSearchShellID := nil;
    while EnumList.Next(1, ID, NumIDs) = S_OK do
    begin
      ShellItem := New(PShellItem);
      ShellItem.ID := ID;
      ShellItem.ParentID := AID;
      ShellItem.ShellFolder := ShellFolder;
      ShellItem.DisplayName := GetDisplayName(AShellFolder, ID, False);
      ShellItem.Empty := True;
      FIDList.Add(ShellItem);
    end;
    FIDList.SortList(function (Item1, Item2: Pointer): Integer
                     begin
                       Result := SmallInt(ShellFolder.CompareIDs(0,
                         PShellItem(Item1).ID, PShellItem(Item2).ID));
                     end);
  finally
    lvMain.Items.Count := ShellItemCount;
    lvMain.Repaint;
    Screen.Cursor := SaveCursor;
  end;
end;

procedure TfrmNavigationPane.PopulateSearchIDList(ASearchID: PItemIDList; Pattern: string);

  procedure CheckFolder(AID: PItemIDList);
  var
    AFolder: IShellFolder;
    ID: PItemIDList;
    EnumList: IEnumIDList;
    NumIDs: LongWord;
    ShellItem: PShellItem;
  begin
    AFolder := GetShellFolderByID(AID);
    EnumList := GetEnumIDListByFolder(AFolder);
    while EnumList.Next(1, ID, NumIDs) = S_OK do
    begin
      if CompareNames(GetDisplayName(AFolder, ID, True), Pattern) then
      begin
        ShellItem := New(PShellItem);
        ShellItem.ID := ID;
        ShellItem.ParentID := AID;
        ShellItem.ShellFolder := AFolder;
        ShellItem.DisplayName := GetDisplayName(AFolder, ID, False);
        ShellItem.Empty := True;
        FIDList.Add(ShellItem);
      end;
      if not FSearching then exit;
      Application.ProcessMessages;
      if not FSearching then exit;

      if IsFolder(AFolder, ID) then
      begin
        StatusBar1.Visible := True;
        StatusBar1.SimplePanelStyle.Text := Format('Search in %s ...', [GetDisplayName(AFolder, ID, False)]);
        CheckFolder(ConcatPIDLs(AID, ID));
      end;
    end;
    lvMain.Items.Count := ShellItemCount;
    lvMain.Repaint;
  end;

begin
  FSearchShellID := ASearchID;
  ClearIDList;
  CheckFolder(ASearchID);
end;

procedure TfrmNavigationPane.PopulateMyFavoritesList(AID: PItemIDList);
var
  AItem: TListItem;
  ID, FullID: PItemIDList;
  AShellFolder: IShellFolder;
  EnumList: IEnumIDList;
  NumIDs: LongWord;
  SaveCursor: TCursor;
  FileInfo: TSHFileInfo;
begin
  AShellFolder := GetShellFolderByID(AID);
  lvMyFavorites.Items.BeginUpdate;
  SaveCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourglass;
    EnumList := GetEnumIDListByFolder(AShellFolder);
    while EnumList.Next(1, ID, NumIDs) = S_OK do
    begin
      AItem := lvMyFavorites.Items.Add;
      FullID := ConcatPIDLs(AID, ID);
      AItem.Caption := GetDisplayName(AShellFolder, ID, False);
      AItem.ImageIndex := GetShellImage(FullID, False, False);

      SHGetFileInfo(PChar(FullID), 0, FileInfo, SizeOf(FileInfo), SHGFI_TYPENAME or SHGFI_PIDL);
      AItem.SubItems.Add(FileInfo.szTypeName);
      if IsFolder(AShellFolder, ID) then
        AItem.Data := FullID
      else AItem.Data := nil;
    end;
  finally
    lvMyFavorites.Repaint;
    lvMyFavorites.Items.EndUpdate;
    Screen.Cursor := SaveCursor;
  end;
end;

procedure TfrmNavigationPane.PopulateMyComputerTree(AID: PItemIDList);
var
  ANode, AItemNode: TTreeNode;
  ID, FullID: PItemIDList;
  AShellFolder: IShellFolder;
  EnumList: IEnumIDList;
  NumIDs: LongWord;
  SaveCursor: TCursor;
begin
  ANode := tvMyComputer.Items.Add(nil, 'MyComputer');
  ANode.ImageIndex := GetShellImage(AID, False, False);
  ANode.SelectedIndex := GetShellImage(AID, False, False);
  ANode.Data := AID;
  AShellFolder := GetShellFolderByID(AID);
  tvMyComputer.Items.BeginUpdate;
  SaveCursor := Screen.Cursor;
  try
    Screen.Cursor := crHourglass;
    EnumList := GetEnumIDListByFolder(AShellFolder);
    while EnumList.Next(1, ID, NumIDs) = S_OK do
    begin
      AItemNode := tvMyComputer.Items.AddChild(ANode, GetDisplayName(AShellFolder, ID, False));
      FullID := ConcatPIDLs(AID, ID);
      AItemNode.ImageIndex := GetShellImage(FullID, False, False);
      AItemNode.SelectedIndex := GetShellImage(FullID, False, False);
      if IsFolder(AShellFolder, ID) then
        AItemNode.Data := FullID
      else AItemNode.Data := nil;
    end;
  finally
    tvMyComputer.SortType := stText;
    tvMyComputer.Items.EndUpdate;
    Screen.Cursor := SaveCursor;
  end;
  tvMyComputer.FullExpand;
end;

function TfrmNavigationPane.GetIDByPath(APath: string): PItemIDList;
var
  P: PWideChar;
  Flags,
  NumChars: LongWord;
begin
  NumChars := Length(APath);
  Flags := 0;
  P := StringToOleStr(APath);
  OLECheck(DesktopFolder.ParseDisplayName(Application.Handle, nil, P,
    NumChars, Result, Flags));
end;

function TfrmNavigationPane.GetIDBySpetialFolder(ASpetialFolder: Integer): PItemIDList;
begin
  OLECheck(SHGetSpecialFolderLocation(Application.Handle, ASpetialFolder, Result));
end;

function TfrmNavigationPane.GetShellFolderByID(AID: PItemIDList): IShellFolder;
begin
   if AID <> nil then
     OLECheck(DesktopFolder.BindToObject(AID, nil, IID_IShellFolder, Pointer(Result)))
   else Result := nil;
end;

function TfrmNavigationPane.GetBarManager: TdxBarManager;
begin
  Result := dxBarManager1;
end;

function TfrmNavigationPane.GetDescription: string;
begin
  Result := 'This example mimics the Microsoft Outlook Navigation Pane style.';
end;

function TfrmNavigationPane.GetEnumIDListByFolder(AFolder: IShellFolder): IEnumIDList;
const
  Flags = SHCONTF_FOLDERS or SHCONTF_NONFOLDERS or SHCONTF_INCLUDEHIDDEN;
begin
  if AFolder <> nil then
    OleCheck(AFolder.EnumObjects(Application.Handle, Flags, Result))
  else Result := nil;
end;

function TfrmNavigationPane.CompareNames(Path, Pattern: string): Boolean;
var
  APos: Integer;
  S, Name, Extention, PatName, PatExt: string;
begin
  S := Path;
  repeat
    APos := Pos('\', S);
    if APos > 0 then S := Copy(S, APos + 1, Length(S) - APos + 1);
  until APos = 0;
  APos := Pos('.', S);
  if APos > 0 then
  begin
    Name := UpperCase(Copy(S, 1, APos - 1));
    Extention := UpperCase(Copy(S, APos + 1, Length(S) - APos + 1));
  end
  else
  begin
    Name := UpperCase(S);
    Extention := '';
  end;
  Pattern := UpperCase(Pattern);
  APos := Pos('.', Pattern);
  if APos > 0 then
  begin
    PatName := Copy(Pattern, 1, APos - 1);
    PatExt := Copy(Pattern, APos + 1, Length(Pattern) - APos + 1);
  end
  else
  begin
    PatName := Pattern;
    PatExt := '';
  end;
  Result := (((Name = PatName) or (PatName = '*')) and
    ((Extention = PatExt) or (PatExt = '*') or (PatExt = ''))) or
    ((PatExt = '') and (PatName <> '') and (Pos(PatName, Name) > 0));
end;

procedure TfrmNavigationPane.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  if FLockSearchTextChange then
    Exit;
  FLockSearchTextChange := True;
  edSearch.Text := cxTextEdit1.Text;
  FLockSearchTextChange := False;
end;

procedure TfrmNavigationPane.cbShowOfficeNavvigationBarClick(Sender: TObject);
begin
  dxNavBarOfficeNavigationBar1.Visible := cbShowOfficeNavvigationBar.Checked;
  if dxNavBarOfficeNavigationBar1.Visible then
    dxNavBarOfficeNavigationBar1.ItemProvider := nbMain
  else
    dxNavBarOfficeNavigationBar1.ItemProvider := nil;
end;

procedure TfrmNavigationPane.dxNavBarOfficeNavigationBar1QueryPeekFormContent(
  ASender: TObject; ANavigationItem: IdxNavigationItem;
  var AControl: TWinControl);
begin
  if FSearching then
    Exit;
  if ANavigationItem.Text = '&Options' then
    AControl := dxNavBar1
  else
    if ANavigationItem.Text = '&Search' then
      AControl := cxGroupBox2;
end;

procedure TfrmNavigationPane.edSearchPropertiesChange(Sender: TObject);
begin
  if FLockSearchTextChange then
    Exit;
  FLockSearchTextChange := True;
  cxTextEdit1.Text := edSearch.Text;
  FLockSearchTextChange := False;
end;

procedure TfrmNavigationPane.SetSearch(AID: PItemIDList; const Pattern: string);
begin
  lvMain.Items.BeginUpdate;
  try
    FSearching := True;
    actSearch.Caption := 'Stop';
    try
      PopulateSearchIDList(AID, Pattern);
      if lvMain.Items.Count > 0 then
      begin
        lvMain.Selected := lvMain.Items[0];
        lvMain.Selected.Focused := True;
        lvMain.Selected.MakeVisible(False);
      end;
    finally
      StatusBar1.Visible := False;
      StatusBar1.SimplePanelStyle.Text := '';
      actSearch.Caption := 'Search';
      FSearching := False;
    end;
  finally
    lvMain.Items.EndUpdate;
  end;
end;

procedure TfrmNavigationPane.SetPath(const Value: string);
var
  NewPIDL: PItemIDList;
begin
  NewPIDL := GetIDByPath(Value);
  SetPath(NewPIDL);
end;

procedure TfrmNavigationPane.SetPath(ID: PItemIDList);
begin
  lvMain.Items.BeginUpdate;
  try
    PopulateIDList(ID);
    if lvMain.Items.Count > 0 then
    begin
      lvMain.Selected := lvMain.Items[0];
      lvMain.Selected.Focused := True;
      lvMain.Selected.MakeVisible(False);
    end;
  finally
    lvMain.Items.EndUpdate;
  end;
end;

procedure TfrmNavigationPane.CheckShellItems(StartIndex, EndIndex: Integer);

 function ValidFileTime(FileTime: TFileTime): Boolean;
 begin
   Result := (FileTime.dwLowDateTime <> 0) or (FileTime.dwHighDateTime <> 0);
 end;

var
  FileData: TWin32FindData;
  FileInfo: TSHFileInfo;
  SysTime: TSystemTime;
  I: Integer;
  LocalFileTime: TFILETIME;
begin
  for I := StartIndex to EndIndex do
  begin
    if ShellItems[I]^.Empty then
    with ShellItems[I]^ do
    begin
      FullID := ConcatPIDLs(ParentID, ID);
      ImageIndex := GetShellImage(FullID, lvMain.ViewStyle = vsIcon, False);

      SHGetFileInfo(PChar(FullID), 0, FileInfo, SizeOf(FileInfo), SHGFI_TYPENAME or SHGFI_PIDL);
      TypeName := FileInfo.szTypeName;

      FillChar(FileData, SizeOf(FileData), #0);
      SHGetDataFromIDList(ShellFolder, ID, SHGDFIL_FINDDATA, @FileData, SizeOf(FileData));

      Size := (FileData.nFileSizeLow + 1023 ) div 1024;
      if Size = 0 then Size := 1;

      FillChar(LocalFileTime, SizeOf(TFileTime), #0);
      with FileData do
        if ValidFileTime(ftLastWriteTime)
        and FileTimeToLocalFileTime(ftLastWriteTime, LocalFileTime)
        and FileTimeToSystemTime(LocalFileTime, SysTime) then
        try
          ModDate := DateTimeToStr(SystemTimeToDateTime(SysTime))
        except
          on EConvertError do ModDate := '';
        end
        else ModDate := '';

      Attributes := FileData.dwFileAttributes;
      Empty := False;
    end;
  end;
end;

procedure TfrmNavigationPane.lvMainDataHint(Sender: TObject; StartIndex,
  EndIndex: Integer);
begin
  if (StartIndex > ShellItemCount) or (EndIndex > ShellItemCount) then Exit;
  CheckShellItems(StartIndex, EndIndex);
end;

procedure TfrmNavigationPane.lvMainData(Sender: TObject; Item: TListItem);
var
  Attrs: string;
begin
  if (Item.Index > ShellItemCount) then Exit;
  with ShellItems[Item.Index]^ do
  begin
    Item.Caption := DisplayName;
    Item.ImageIndex := ImageIndex;

    if lvMain.ViewStyle <> vsReport then Exit;

    if not IsFolder(ShellFolder, ID) then
      Item.SubItems.Add(Format('%dKB', [Size]))
    else Item.SubItems.Add('');
    Item.SubItems.Add(TypeName);
    try
      Item.SubItems.Add(ModDate);
    except
    end;

    if Bool(Attributes and FILE_ATTRIBUTE_READONLY) then Attrs := Attrs + 'R';
    if Bool(Attributes and FILE_ATTRIBUTE_HIDDEN) then Attrs := Attrs + 'H';
    if Bool(Attributes and FILE_ATTRIBUTE_SYSTEM) then Attrs := Attrs + 'S';
    if Bool(Attributes and FILE_ATTRIBUTE_ARCHIVE) then Attrs := Attrs + 'A';
  end;
  Item.SubItems.Add(Attrs);
end;

procedure TfrmNavigationPane.lvMainDataFind(Sender: TObject; Find: TItemFind;
  const FindString: String; const FindPosition: TPoint; FindData: Pointer;
  StartIndex: Integer; Direction: TSearchDirection; Wrap: Boolean;
  var Index: Integer);
var
  I: Integer;
  Found: Boolean;
begin
  I := StartIndex;
  if (Find = ifExactString) or (Find = ifPartialString) then
  begin
    repeat
      if (I = ShellItemCount - 1) then
        if Wrap then I := 0 else Exit;
      Found := Pos(UpperCase(FindString), UpperCase(ShellItems[I]^.DisplayName)) = 1;
      Inc(I);
    until Found or (I = StartIndex);
    if Found then Index := I-1;
  end;
end;

procedure TfrmNavigationPane.lvMainCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  Attrs: Integer;
begin
  if Item = nil then Exit;
  Attrs := ShellItems[Item.Index].Attributes;
  if Bool(Attrs and FILE_ATTRIBUTE_READONLY) then
    lvMain.Canvas.Font.Color := clGrayText;
  if Bool(Attrs and FILE_ATTRIBUTE_HIDDEN) then
    lvMain.Canvas.Font.Style :=
       lvMain.Canvas.Font.Style + [fsStrikeOut];
  if Bool(Attrs and FILE_ATTRIBUTE_SYSTEM) then
    lvMain.Canvas.Font.Color := clHighlight;
end;

procedure TfrmNavigationPane.lvMainCustomDrawSubItem(Sender: TCustomListView;
  Item: TListItem; SubItem: Integer; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  if SubItem = 0 then Exit;
  lvMain.Canvas.Font.Color := GetSysColor(COLOR_WINDOWTEXT);
end;

procedure TfrmNavigationPane.bbExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNavigationPane.btnBackClick(Sender: TObject);
var
  Temp: PItemIDList;
begin
  if FSearchShellID = nil then
  begin
    Temp := CopyPIDL(FShellID);
    if Assigned(Temp) then
      StripLastID(Temp);
    if Temp.mkid.cb <> 0 then
      SetPath(Temp)
    else Beep;
  end
  else SetPath(FSearchShellID);
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.Form1Close(Sender: TObject; var Action: TCloseAction);
begin
  FSearching := False;
end;

procedure TfrmNavigationPane.btnSearchClick(Sender: TObject);
begin
  if not FSearching then
    SetSearch(FShellID, edSearch.Text)
  else FSearching := False;
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.nbMainDesktopClick(Sender: TObject);
begin
  SetPath(GetIDBySpetialFolder(CSIDL_DESKTOPDIRECTORY));
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.nbMainMyDocumentsClick(Sender: TObject);
begin
  SetPath(GetIDBySpetialFolder(CSIDL_PERSONAL));
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.nbMainNetworkClick(Sender: TObject);
begin
  SetPath(GetIDBySpetialFolder(CSIDL_NETWORK));
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.FormDestroy(Sender: TObject);
begin
  ClearIDList;
  FIDList.Free;
end;

procedure TfrmNavigationPane.tvMyComputerClick(Sender: TObject);
begin
   if (tvMyComputer.Selected <> nil) and (tvMyComputer.Selected.Data <> nil) then
   begin
     SetPath(PItemIDList(tvMyComputer.Selected.Data));
     CloseNavBarPopup;
   end;
end;

procedure TfrmNavigationPane.lvMyFavoritesClick(Sender: TObject);
begin
  if (lvMyFavorites.Selected <> nil) and (lvMyFavorites.Selected.Data <> nil) then
  begin
     SetPath(PItemIDList(lvMyFavorites.Selected.Data));
     CloseNavBarPopup;
  end;
end;

procedure TfrmNavigationPane.actLargeIconsExecute(Sender: TObject);
begin
  lvMain.ViewStyle := TViewStyle((Sender as TComponent).Tag);
  CloseNavBarPopup;
end;

procedure TfrmNavigationPane.nbOptionsAdjustWidthByPopupClick(
  Sender: TObject);
begin
  nbMain.OptionsBehavior.NavigationPane.AdjustWidthByPopup :=
    SwitchOption(Sender, nbMain.OptionsBehavior.NavigationPane.AdjustWidthByPopup);
end;

procedure TfrmNavigationPane.nbOptionsAllowCustomizeClick(
  Sender: TObject);
begin
  nbMain.OptionsBehavior.NavigationPane.AllowCustomizing :=
    SwitchOption(Sender, nbMain.OptionsBehavior.NavigationPane.AllowCustomizing);
end;

procedure TfrmNavigationPane.nbOptionsCollapsibleClick(Sender: TObject);
begin
  nbMain.OptionsBehavior.NavigationPane.Collapsible :=
    SwitchOption(Sender, nbMain.OptionsBehavior.NavigationPane.Collapsible);
end;

procedure TfrmNavigationPane.nbOptionsTabStopClick(Sender: TObject);
begin
  nbMain.TabStop := SwitchOption(Sender, nbMain.TabStop);
  nbMyComputer.TabStop := SwitchOption(Sender, nbMyComputer.TabStop);
  nbOptions.TabStop := SwitchOption(Sender, nbOptions.TabStop);
  if not nbOptions.TabStop then
    lvMain.SetFocus
//  else
//    if nbOptions.Parent <> nil then
//      nbOptions.SetFocus;
end;

procedure TfrmNavigationPane.tvMyComputerAdvancedCustomDraw(Sender: TCustomTreeView;
  const ARect: TRect; Stage: TCustomDrawStage; var DefaultDraw: Boolean);
begin
  bgMyComputerControl.DrawSizeGrip(Sender.Canvas, bgMyComputerControl.GetSizeGripRect(Sender));
end;

procedure TfrmNavigationPane.tvMyComputerMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AControl: TControl;
  ASizeGripRect: TRect;
  APoint: TPoint;
begin
  AControl := TControl(Sender);
  ASizeGripRect := bgMyComputerControl.GetSizeGripRect(AControl);
  APoint := Point(X, Y);
  if cxRectPtIn(ASizeGripRect, APoint) then
    bgMyComputerControl.BeginResize(AControl, Button, Shift, APoint);
end;

procedure TfrmNavigationPane.tvMyComputerMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  AControl: TControl;
  ASizeGripRect: TRect;
  APoint: TPoint;
begin
  AControl := TControl(Sender);
  ASizeGripRect := bgMyComputerControl.GetSizeGripRect(AControl);
  APoint := Point(X, Y);
  if cxRectPtIn(ASizeGripRect, APoint) then
    AControl.Cursor := crSizeWE
  else
    AControl.Cursor := crDefault;
end;

class function TfrmNavigationPane.GetID: Integer;
begin
  Result := 4;
end;

class function TfrmNavigationPane.GetLoadingInfo: string;
begin
  Result := 'Navigation Pane Demo';
end;

function TfrmNavigationPane.HasOptions: Boolean;
begin
  Result := True;
end;

function TfrmNavigationPane.GetNavBarControl: TdxNavBar;
begin
  Result := nbMain;
end;

initialization
  TfrmNavigationPane.Register;

end.
