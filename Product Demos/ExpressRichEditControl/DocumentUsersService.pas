unit DocumentUsersService;

interface

uses
  System.Classes, dxRichEdit.NativeApi, dxRichEdit.Dialogs.RangeEditingPermissionsFormController;

type
  TOnDocumentUsersUpdated = procedure (AUsers: TStrings) of object;

  TDocumentUsersService = class(TInterfacedObject, IdxUserListService)
  private
    FUsers: TStrings;
    FOnDocumentUsersUpdated: TOnDocumentUsersUpdated;

    //IdxUserService
    function GetUsers: TStrings;
    procedure SetOnUsersUpdated(AValue: TOnDocumentUsersUpdated);
  protected
    function CanAddUser(AName: string): Boolean; virtual;
    procedure DocumentUsersUpdated; virtual;
    procedure PopulateUsers(ARangePermissions: IdxRichEditRangePermissionCollection); virtual;
  public
    constructor Create; virtual;
    destructor Destroy; override;

    procedure Update(ARangePermissions: IdxRichEditRangePermissionCollection);

    property Users: TStrings read GetUsers;
    property OnDocumentUsersUpdated: TOnDocumentUsersUpdated read FOnDocumentUsersUpdated write SetOnUsersUpdated;
  end;

implementation

uses
  System.SysUtils, System.Variants, dxCore;

{ TUserService }

constructor TDocumentUsersService.Create;
begin
  inherited Create;
  FUsers := TStringList.Create;
end;

destructor TDocumentUsersService.Destroy;
begin
  FreeAndNil(FUsers);
  inherited Destroy;
end;

procedure TDocumentUsersService.Update(ARangePermissions: IdxRichEditRangePermissionCollection);
begin
  Users.Clear;
  PopulateUsers(ARangePermissions);
  DocumentUsersUpdated;
end;

function TDocumentUsersService.CanAddUser(AName: string): Boolean;
begin
  Result := (Users.IndexOf(AName) = -1) and not (VarIsNull(AName) or VarIsEmpty(AName));
end;

procedure TDocumentUsersService.DocumentUsersUpdated;
begin
  if Assigned(FOnDocumentUsersUpdated) then
    FOnDocumentUsersUpdated(Users);
end;

procedure TDocumentUsersService.PopulateUsers(ARangePermissions: IdxRichEditRangePermissionCollection);
var
  I: Integer;
  AUserName: string;
begin
  for I := 0 to ARangePermissions.Count - 1 do
  begin
    AUserName := ARangePermissions[I].UserName;
    if CanAddUser(AUserName) then
      Users.Add(AUserName);
  end;
end;

function TDocumentUsersService.GetUsers: TStrings;
begin
  Result := FUsers;
end;

procedure TDocumentUsersService.SetOnUsersUpdated(AValue: TOnDocumentUsersUpdated);
begin
  if not dxSameMethods(FOnDocumentUsersUpdated, AValue) then
    FOnDocumentUsersUpdated := AValue;
end;

end.
