unit dxCustomFrame;

interface

uses
  Vcl.Forms, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, System.Classes, Vcl.Controls, Vcl.ExtCtrls, dxPSCore,
  dxRibbon, dxPgsDlg, dxRichEdit.Control, dxDemoUtils, DocumentUsersService,
  DocumentGroupsService, dxLayoutContainer, cxClasses, dxLayoutControl, dxLayoutcxEditAdapters,
  dxLayoutLookAndFeels, cxGeometry, dxFramedControl, dxPanel;

type
  TdxFrameClass = class of TfrmCustomFrame;

  TfrmCustomFrame = class(TFrame, IcxLookAndFeelNotificationListener)
    plTop: TPanel;
    pnlSeparator: TPanel;
    lcDescriptionGroup_Root: TdxLayoutGroup;
    lcDescription: TdxLayoutControl;
    lblDescription: TdxLayoutLabeledItem;
    dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeelDescription: TdxLayoutSkinLookAndFeel;
  private
    FCaption: string;
    FChangingVisibility: Boolean;
    FDocumentUsersService: TDocumentUsersService;
    FDocumentGroupsService: TDocumentGroupsService;
    FReportLink: TBasedxReportLink;
    FRibbon: TdxRibbon;

    function GetActive: Boolean;
    function GetComponentPrinter: TdxComponentPrinter;
    function GetHasHint: Boolean;
    function GetPrintStyleManager: TdxPrintStyleManager;

    function GetOnDocumentUsersUpdated: TOnDocumentUsersUpdated;
    procedure SetOnUsersUpdated(AValue: TOnDocumentUsersUpdated);
  protected
    // IcxLookAndFeelNotificationListener
    function GetObject: TObject;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
      AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);

    // IdxDemo
    function GetCaption: string;

    procedure AddOperationsToPopupMenu; virtual;
    function GetActiveRichEdit: TdxRichEditControl; virtual; abstract;
    function GetDescription: string; virtual;
    function GetHint: string; virtual;
    function GetInspectedObject: TPersistent; virtual;
    function GetInitialShowInspector: Boolean; virtual;
    function GetPrintableComponent: TComponent; virtual;
    procedure DocumentLoadedHandler(Sender: TObject); virtual;
    function NeedInspector: Boolean; virtual;
    procedure LookAndFeelChanged; virtual;

    procedure FocusFirstControl;

    procedure CheckDescription;
    procedure SetCaption(Value: string); virtual;

    function CreateReportLink: TBasedxReportLink;
    function GetReportLink: TBasedxReportLink; virtual;
    function GetReportLinkClass: TdxReportLinkClass;
    procedure PrepareLink(AReportLink: TBasedxReportLink); virtual;

    property DocumentUsersService: TDocumentUsersService read FDocumentUsersService;
    property DocumentGroupsService: TDocumentGroupsService read FDocumentGroupsService;
    property HasHint: Boolean read GetHasHint;
    property Ribbon: TdxRibbon read FRibbon;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); reintroduce; virtual;
    destructor Destroy; override;

    procedure AfterShow; virtual;
    procedure BeforeHide; virtual;
    function CanDeactivate: Boolean; virtual;
    procedure ChangeVisibility(AShow: Boolean); virtual;
    function GetReportLinkName: string; virtual;

    procedure UpdateDocumentActiveUser(AUserName: string);
    procedure UpdateDocumentGroups;
    procedure UpdateDocumentUsers;

    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject); virtual;
    function ExportFileName: string; virtual;
    function IsSupportExport: Boolean; virtual;

    property Active: Boolean read GetActive;
    property ActiveRichEdit: TdxRichEditControl read GetActiveRichEdit;
    property Caption: string read GetCaption write SetCaption;
    property ComponentPrinter: TdxComponentPrinter read GetComponentPrinter;
    property OnDocumentUsersUpdated: TOnDocumentUsersUpdated read GetOnDocumentUsersUpdated write SetOnUsersUpdated;
    property InspectedObject: TPersistent read GetInspectedObject;
    property PrintableComponent: TComponent read GetPrintableComponent;
    property PrintStyleManager: TdxPrintStyleManager read GetPrintStyleManager;
    property ReportLink: TBasedxReportLink read GetReportLink;
  end;

implementation

{$R *.DFM}

uses
  Winapi.Windows, Vcl.Graphics, System.Types, dxOffice11, uStrsConst,
  dxRichEdit.Dialogs.RangeEditingPermissionsFormController, dxRichEdit.NativeApi;

{ TdxFrame }

constructor TfrmCustomFrame.Create(AOwner: TComponent; ARibbon: TdxRibbon);
begin
  inherited Create(AOwner);
  Visible := False;
  FRibbon := ARibbon;
  AddOperationsToPopupMenu;
  RootLookAndFeel.AddChangeListener(self);
  LookAndFeelChanged;
  FDocumentUsersService := TDocumentUsersService.Create;
  FDocumentGroupsService := TDocumentGroupsService.Create;
  ActiveRichEdit.AddService(IdxUserListService, DocumentUsersService);
  ActiveRichEdit.AddService(IdxUserGroupListService, DocumentGroupsService);
  ActiveRichEdit.OnDocumentLoaded := DocumentLoadedHandler;
end;

destructor TfrmCustomFrame.Destroy;
begin
  RootLookAndFeel.RemoveChangeListener(self);
  inherited;
end;

function TfrmCustomFrame.GetActive: Boolean;
begin
  Result := Visible;
end;

function TfrmCustomFrame.GetCaption: string;
begin
  Result := FCaption;
end;

function TfrmCustomFrame.GetComponentPrinter: TdxComponentPrinter;
var
  I: Integer;
  Component: TComponent;
begin
  with Application.MainForm do
    for I := 0 to ComponentCount - 1 do
    begin
      Component := Components[I];
      if Component is TdxComponentPrinter then
      begin
        Result := TdxComponentPrinter(Component);
        Exit;
      end;
    end;
  Result := nil;
end;

function TfrmCustomFrame.GetHasHint: Boolean;
begin
  Result := GetHint <> '';
end;

function TfrmCustomFrame.GetPrintStyleManager: TdxPrintStyleManager;
var
  I: Integer;
  Component: TComponent;
begin
  with Application.MainForm do
    for I := 0 to ComponentCount - 1 do
    begin
      Component := Components[I];
      if Component is TdxPrintStyleManager then
      begin
        Result := TdxPrintStyleManager(Component);
        Exit;
      end;
    end;
  Result := nil;
end;

function TfrmCustomFrame.GetOnDocumentUsersUpdated: TOnDocumentUsersUpdated;
begin
  Result := DocumentUsersService.OnDocumentUsersUpdated;
end;

procedure TfrmCustomFrame.SetOnUsersUpdated(AValue: TOnDocumentUsersUpdated);
begin
  DocumentUsersService.OnDocumentUsersUpdated := AValue;
end;

procedure TfrmCustomFrame.SetCaption(Value: string);
begin
  FCaption := ' ' + Value;
end;

function TfrmCustomFrame.GetReportLink: TBasedxReportLink;
begin
  if FReportLink = nil then
    FReportLink := CreateReportLink;
  Result := FReportLink;

  if Result <> nil then
    with Result do
    begin
      ReportTitle.Text := Caption;
      RestoreFromOriginal;
      Component := PrintableComponent;
    end;
end;

procedure TfrmCustomFrame.CheckDescription;
begin
  if GetDescription <> '' then
  begin
    lblDescription.Caption := GetDescription;
    lblDescription.Visible := True;
  end;
end;

function TfrmCustomFrame.GetObject: TObject;
begin
  Result := self;
end;

procedure TfrmCustomFrame.MasterLookAndFeelChanged(Sender: TcxLookAndFeel;
  AChangedValues: TcxLookAndFeelValues);
begin
  LookAndFeelChanged;
end;

procedure TfrmCustomFrame.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
  // do nothing
end;

procedure TfrmCustomFrame.AddOperationsToPopupMenu;
begin
end;

function TfrmCustomFrame.GetDescription: string;
begin
end;

function TfrmCustomFrame.GetHint: string;
begin
  Result := '';
end;

function TfrmCustomFrame.GetInspectedObject: TPersistent;
begin
  Result := nil;
end;

function TfrmCustomFrame.GetInitialShowInspector: Boolean;
begin
  Result := False;
end;

function TfrmCustomFrame.GetPrintableComponent: TComponent;
begin
  Result := nil;
end;

procedure TfrmCustomFrame.DocumentLoadedHandler(Sender: TObject);
begin
  UpdateDocumentUsers;
  UpdateDocumentGroups;
end;

function TfrmCustomFrame.NeedInspector: Boolean;
begin
  Result := GetInspectedObject <> nil;
end;

procedure TfrmCustomFrame.LookAndFeelChanged;
begin
//  Color := Application.MainForm.Color;
//  if (RootLookAndFeel.ActiveStyle in [lfsNative, lfsOffice11]) then
//  begin
//    HintInternal.Color := dxOffice11DockColor1;
//  end
//  else
//  begin
//    pnlHintInternal.Color := clInfoBk;
//  end;
end;

procedure TfrmCustomFrame.FocusFirstControl;
var
  AControl: TWinControl;
begin
  AControl := FindNextControl(nil, True, True, False);
  if AControl <> nil then
    AControl.SetFocus;
end;

procedure TfrmCustomFrame.AfterShow;
begin
  ActiveRichEdit.SetFocus;
end;

procedure TfrmCustomFrame.BeforeHide;
begin
end;

function TfrmCustomFrame.CanDeactivate: Boolean;
begin
  Result := True;
end;

procedure TfrmCustomFrame.ChangeVisibility(AShow: Boolean);
begin
  try
    FChangingVisibility := True;
    Visible := AShow;
    if AShow then
    begin
      CheckDescription;
      FocusFirstControl;
    end;
  finally
    FChangingVisibility := False;
  end;
end;

function TfrmCustomFrame.GetReportLinkName: string;
begin
  Result := '';
end;

procedure TfrmCustomFrame.UpdateDocumentActiveUser(AUserName: string);
begin
  ActiveRichEdit.Options.Authentication.EMail := AUserName;
end;

procedure TfrmCustomFrame.UpdateDocumentGroups;
var
  ARangePermissions: IdxRichEditRangePermissionCollection;
begin
  ARangePermissions := ActiveRichEdit.Document.BeginUpdateRangePermissions;
  try
    DocumentGroupsService.Update(ARangePermissions);
  finally
    ActiveRichEdit.Document.CancelUpdateRangePermissions(ARangePermissions);
  end;
end;

procedure TfrmCustomFrame.UpdateDocumentUsers;
var
  ARangePermissions: IdxRichEditRangePermissionCollection;
begin
  ARangePermissions := ActiveRichEdit.Document.BeginUpdateRangePermissions;
  try
    DocumentUsersService.Update(ARangePermissions);
  finally
    ActiveRichEdit.Document.CancelUpdateRangePermissions(ARangePermissions);
  end;
end;

function TfrmCustomFrame.CreateReportLink: TBasedxReportLink;
begin
  Result := ComponentPrinter.AddEmptyLink(GetReportLinkClass);
  if Result <> nil then
    PrepareLink(Result);
end;

function TfrmCustomFrame.GetReportLinkClass: TdxReportLinkClass;
begin
  if PrintableComponent <> nil then
    Result := dxPSCore.dxPSLinkClassByCompClass
      (TComponentClass(PrintableComponent.ClassType))
  else
    Result := nil;
end;

procedure TfrmCustomFrame.PrepareLink(AReportLink: TBasedxReportLink);
begin
  AReportLink.StyleManager := self.PrintStyleManager;
  AReportLink.Active := False;
end;

function TfrmCustomFrame.IsSupportExport: Boolean;
begin
  Result := False;
end;

procedure TfrmCustomFrame.DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject);
begin
end;

function TfrmCustomFrame.ExportFileName: string;
begin
  Result := 'dxExport';
end;

end.
