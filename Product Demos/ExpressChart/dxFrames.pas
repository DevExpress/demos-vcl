unit dxFrames;

interface

uses
  System.Classes, Vcl.Forms, System.SysUtils, dxCustomDemoFrameUnit, Vcl.Controls;

type
  TdxFrameInfo = class
  private
    FCaption: string;
    FCustomFrameClass: TdxCustomDemoFrameClass;
    FFrame: TdxCustomDemoFrame;
    FID: Integer;
    FImageIndex: Integer;
    FSideBarFirstAdditionalGroupIndex: Integer;
    FSideBarGroupIndex: Integer;
    FSideBarSecondAdditionalGroupIndex: Integer;
    function GetActive: Boolean;
  protected
    property Frame: TdxCustomDemoFrame read FFrame;
  public
    constructor Create(ID: Integer; ClassType: TdxCustomDemoFrameClass;
      Caption: string; ImageIndex, SideBarGroupIndex1, SideBarGroupIndex2: Integer);
    procedure CreateFrame(AOwner: TComponent);
    procedure DestroyFrame;
    procedure HideFrame;
    procedure ShowFrame(AParent: TWinControl);

    property Active: Boolean read GetActive;
    property Caption: string read FCaption;
    property ID: Integer read FID write FID;
    property SideBarGroupIndex: Integer read FSideBarGroupIndex;
    property SideBarFirstAdditionalGroupIndex: Integer read FSideBarFirstAdditionalGroupIndex;
    property SideBarSecondAdditionalGroupIndex: Integer read FSideBarSecondAdditionalGroupIndex;
    property ImageIndex: Integer read FImageIndex;
  end;

  TdxFrameManager = class
  private
    FActiveFrameInfo: TdxFrameInfo;
    FFrameInfoList: TList;
    function GetActiveFrame: TdxCustomDemoFrame;
    function GetCount: Integer;
    function GetItem(Index: Integer): TdxFrameInfo;
    procedure AddNewItem(ANewItem: TdxFrameInfo);
  protected
    constructor CreateInstance(ADummy: Integer = 0); 
    class function AccessInstance(Request: Integer): TdxFrameManager;

    function GetFrameInfoByID(FrameID: Integer): TdxFrameInfo;
  public
    procedure AfterConstruction; override;
    destructor Destroy; override;
    class function Instance: TdxFrameManager;
    class procedure ReleaseInstance;

    procedure RegisterFrame(FrameID: Integer; ClassType: TdxCustomDemoFrameClass; Caption: string;
      ImageIndex, SideBarGroupIndex1, SideBarGroupIndex2: Integer);
    procedure ShowFrame(FrameID: Integer; Parent: TWinControl);

    property ActiveFrame: TdxCustomDemoFrame read GetActiveFrame;
    property ActiveFrameInfo: TdxFrameInfo read FActiveFrameInfo;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TdxFrameInfo read GetItem; default;
  end;

function dxFrameManager: TdxFrameManager;

implementation

resourcestring
  // dxFrames
  sdxCannotCreateSecondInstance = 'Can not create the second instance of the object %s';
  sdxAccessCodeIsIllegal = 'The access code %d is illegal';

function dxFrameManager: TdxFrameManager;
begin
  Result := TdxFrameManager.Instance;
end;

{ TdxFrameInfo }

constructor TdxFrameInfo.Create(ID: Integer; ClassType: TdxCustomDemoFrameClass;
  Caption: string; ImageIndex, SideBarGroupIndex1, SideBarGroupIndex2: Integer);
begin
  inherited Create;
  FID := ID;
  FCustomFrameClass := ClassType;
  FCaption := Caption;
  FImageIndex := ImageIndex;
  FSideBarFirstAdditionalGroupIndex := SideBarGroupIndex1;
  FSideBarGroupIndex := SideBarGroupIndex2;
  FSideBarSecondAdditionalGroupIndex := -1;
end;

function TdxFrameInfo.GetActive: Boolean;
begin
  Result := Self = dxFrameManager.ActiveFrameInfo;
end;

procedure TdxFrameInfo.CreateFrame(AOwner: TComponent);
begin
  FFrame := FCustomFrameClass.Create(AOwner);
  FFrame.Caption := FCaption;
end;

procedure TdxFrameInfo.DestroyFrame;
begin
  FFrame.Free;
  FFrame := nil;
end;

procedure TdxFrameInfo.HideFrame;
begin
  FFrame.ChangeVisibility(False);
end;

procedure TdxFrameInfo.ShowFrame(AParent: TWinControl);
begin
  if not Assigned(FFrame) then
    CreateFrame(AParent);
  FFrame.Parent := AParent;
  FFrame.ChangeVisibility(True);
end;

{ TdxFrameManager }

destructor TdxFrameManager.Destroy;
var
  I: Integer;
begin
  if AccessInstance(0) = Self then
    AccessInstance(2);
  for I := 0 to Count - 1 do
    Items[I].Free;
  FFrameInfoList.Free;
  inherited Destroy;
end;

function TdxFrameManager.GetActiveFrame: TdxCustomDemoFrame;
begin
  if ActiveFrameInfo <> nil then
    Result := ActiveFrameInfo.Frame
  else
    Result := nil;
end;

function TdxFrameManager.GetCount: Integer;
begin
  Result := FFrameInfoList.Count;
end;

function TdxFrameManager.GetItem(Index: Integer): TdxFrameInfo;
begin
  Result := TdxFrameInfo(FFrameInfoList.Items[Index]);
end;

procedure TdxFrameManager.AddNewItem(ANewItem: TdxFrameInfo);
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
    if Items[I].ID = ANewItem.ID then
      raise Exception.CreateFmt('Frame "%s" registered with duplicate ID %d', [ANewItem.ID, ANewItem.ClassName]);

  for I := 0 to Count - 1 do
    if Items[I].ID > ANewItem.ID then
    begin
      FFrameInfoList.Insert(I, Pointer(ANewItem));
      Exit;
    end;
  FFrameInfoList.Add(Pointer(ANewItem));
end;

procedure TdxFrameManager.AfterConstruction;
begin
  if Assigned(AccessInstance(0)) then
    raise Exception.CreateFmt(sdxCannotCreateSecondInstance, [ClassName]);
end;

constructor TdxFrameManager.CreateInstance(ADummy: Integer = 0);
begin
  inherited Create;
  FFrameInfoList := TList.Create;
end;

var
  FInstance: TdxFrameManager = nil;

class function TdxFrameManager.AccessInstance(Request: Integer): TdxFrameManager;
begin
  case Request of
    0: ;
    1: if not Assigned(FInstance) then
         FInstance := CreateInstance;
    2: FInstance := nil;
  else
    raise Exception.CreateFmt(sdxAccessCodeIsIllegal, [Request]);
  end;
  Result := FInstance;
end;

function TdxFrameManager.GetFrameInfoByID(FrameID: Integer): TdxFrameInfo;
var
  I: Integer;
begin
  for I := 0 to Count - 1 do
  begin
    Result := Items[I];
    if Items[I].ID = FrameID then
      Exit;
  end;
  Result := nil;
end;

class function TdxFrameManager.Instance: TdxFrameManager;
begin
  Result := AccessInstance(1);
end;

class procedure TdxFrameManager.ReleaseInstance;
begin
  AccessInstance(0).Free;
end;

procedure TdxFrameManager.RegisterFrame(FrameID: Integer; ClassType: TdxCustomDemoFrameClass; Caption: string;
  ImageIndex, SideBarGroupIndex1, SideBarGroupIndex2: Integer);
var
  FI: TdxFrameInfo;
begin
  FI := TdxFrameInfo.Create(FrameID, ClassType, Caption, ImageIndex, SideBarGroupIndex1, SideBarGroupIndex2);
  AddNewItem(FI);
end;

procedure TdxFrameManager.ShowFrame(FrameID: Integer; Parent: TWinControl);
var
  FrameInfo: TdxFrameInfo;
begin
  if ActiveFrameInfo <> nil then
    if ActiveFrameInfo.ID = FrameID then
      Exit
    else
      ActiveFrameInfo.HideFrame;
  FrameInfo := GetFrameInfoByID(FrameID);
  if FrameInfo <> nil then
  begin
    FrameInfo.ShowFrame(Parent);
    FActiveFrameInfo := FrameInfo;
  end;
end;

initialization

finalization
  TdxFrameManager.ReleaseInstance;
end.
