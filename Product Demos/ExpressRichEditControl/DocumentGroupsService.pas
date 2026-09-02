unit DocumentGroupsService;

interface

uses
  System.Classes, dxRichEdit.NativeApi, dxRichEdit.Dialogs.RangeEditingPermissionsFormController;

type
  TDocumentGroupsService = class(TInterfacedObject, IdxUserGroupListService)
  private
    FGroups: TStrings;

    //IdxUserService
    function GetUserGroups: TStrings;
  protected
    function CanAddUser(AName: string): Boolean; virtual;
    procedure PopulateGroups(ARangePermissions: IdxRichEditRangePermissionCollection); virtual;
  public
    constructor Create; virtual;
    destructor Destroy; override;

    procedure Update(ARangePermissions: IdxRichEditRangePermissionCollection);

    property Groups: TStrings read GetUserGroups;
  end;

implementation

uses
  System.SysUtils, System.Variants, dxCore;

{ TUserService }

constructor TDocumentGroupsService.Create;
begin
  inherited Create;
  FGroups := TStringList.Create;
end;

destructor TDocumentGroupsService.Destroy;
begin
  FreeAndNil(FGroups);
  inherited Destroy;
end;

procedure TDocumentGroupsService.Update(ARangePermissions: IdxRichEditRangePermissionCollection);
begin
  Groups.Clear;
  PopulateGroups(ARangePermissions);
end;

function TDocumentGroupsService.CanAddUser(AName: string): Boolean;
begin
  Result := (Groups.IndexOf(AName) = -1) and not (VarIsNull(AName) or VarIsEmpty(AName));
end;

procedure TDocumentGroupsService.PopulateGroups(ARangePermissions: IdxRichEditRangePermissionCollection);
begin
  Groups.Add('Everyone');
  Groups.Add('Administrators');
  Groups.Add('Contributors');
  Groups.Add('Owners');
  Groups.Add('Editors');
  Groups.Add('Current User');
end;

function TDocumentGroupsService.GetUserGroups: TStrings;
begin
  Result := FGroups;
end;

end.
