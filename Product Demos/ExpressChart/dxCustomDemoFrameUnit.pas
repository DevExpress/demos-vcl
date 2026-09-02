unit dxCustomDemoFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, dxPSCore, dxPgsDlg, cxLookAndFeels, cxLookAndFeelPainters,
  dxOffice11,
  dxDemoObjectInspector, cxLabel,
  cxGraphics, cxControls, cxContainer, cxEdit, dxDemoUtils, dxLayoutContainer,
  cxClasses, dxLayoutControl,
  dxLayoutLookAndFeels, dxSkinsCore;

type
  TdxCustomDemoFrameClass = class of TdxCustomDemoFrame;

  TdxCustomDemoFrame = class(TFrame)
    lcFrame: TdxLayoutControl;
    lcFrameGroup_Root: TdxLayoutGroup;
    lgContent: TdxLayoutGroup;
    lsSetupSplitter: TdxLayoutSplitterItem;
    liDescription: TdxLayoutLabeledItem;
    lgSetupTools: TdxLayoutGroup;
    dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxDefaultLayoutLookAndFeel: TdxLayoutCxLookAndFeel;
    dxCustomMarginsLayoutLookAndFeel: TdxLayoutCxLookAndFeel;
  private
    FCaption: string;
    FChangingVisibility: Boolean;
    FReportLink: TBasedxReportLink;
    FShowSetup: Boolean;

    function GetActive: Boolean;
    function GetActualTouchMode: Boolean;
    function GetCaption: string;
    function GetComponentPrinter: TdxComponentPrinter;
    function GetHasHint: Boolean;
    function GetPrintStyleManager: TdxPrintStyleManager;
    procedure SetShowSetup(AValue: Boolean);
    procedure ChangeOptionsVisibility(AValue: Boolean);
  protected
    procedure AddOperationsToPopupMenu; virtual;
    procedure CheckActualTouchMode;
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string; virtual;
    function GetHint: string; virtual;
    function GetInspectedObject: TPersistent; virtual;
    function GetInitialShowInspector: Boolean; virtual;
    function GetPrintableComponent: TComponent; virtual;
    function NeedInspector: Boolean; virtual;

    procedure FocusFirstControl;
    function GetFirstControl: TWinControl; virtual;

    procedure CheckDescription;
    procedure SetCaption(Value: string); virtual;

    function CreateReportLink: TBasedxReportLink;
    function GetReportLink: TBasedxReportLink; virtual;
    function GetReportLinkClass: TdxReportLinkClass;
    procedure PrepareLink(AReportLink: TBasedxReportLink); virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
    property HasHint: Boolean read GetHasHint;
  public
    constructor Create(AOwner: TComponent); override;

    procedure AfterShow; virtual;
    function CanDeactivate: Boolean; virtual;
    procedure ChangeVisibility(AShow: Boolean); virtual;
    function GetReportLinkName: string; virtual;
    function HasOptions: Boolean; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);

    procedure DoExport(AExportType: TSupportedExportType;
      const AFileName: string; AHandler: TObject); virtual;
    function ExportFileName: string; virtual;
    function IsSupportExport: Boolean; virtual;

    procedure ResetWorkAreaMargins;
    procedure SetWorkAreaMargins(ALeft, ATop, ARight, ABottom: Integer);

    property Active: Boolean read GetActive;
    property Caption: string read GetCaption write SetCaption;
    property ComponentPrinter: TdxComponentPrinter read GetComponentPrinter;
    property InspectedObject: TPersistent read GetInspectedObject;
    property PrintableComponent: TComponent read GetPrintableComponent;
    property PrintStyleManager: TdxPrintStyleManager read GetPrintStyleManager;
    property ReportLink: TBasedxReportLink read GetReportLink;
    property ShowSetup: Boolean read FShowSetup write SetShowSetup;
  end;

implementation

{$R *.DFM}

uses
  System.Types, {Main,} dxBar, {uStrsConst,} dxDemoBaseMainForm;

resourcestring
  // Module hints, description and full names
  sdxFramePSHint =
    'Press the Print Preview toolbar button to render the active visual control.';

  { TdxCustomDemoFrame }

constructor TdxCustomDemoFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Visible := False;
  AddOperationsToPopupMenu;
  liDescription.LookAndFeel := TfrmMainBase(Application.MainForm)
    .dxLayoutSkinLookAndFeelDescription;
  LookAndFeelChanged;
  FShowSetup := HasOptions;
end;

function TdxCustomDemoFrame.GetActive: Boolean;
begin
  Result := Visible;
end;

function TdxCustomDemoFrame.GetActualTouchMode: Boolean;
begin
  Result := TfrmMainBase(Application.MainForm).dxSkinController1.TouchMode;
end;

function TdxCustomDemoFrame.GetCaption: string;
begin
  Result := FCaption;
end;

function TdxCustomDemoFrame.GetComponentPrinter: TdxComponentPrinter;
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

function TdxCustomDemoFrame.GetHasHint: Boolean;
begin
  Result := GetHint <> '';
end;

function TdxCustomDemoFrame.GetPrintStyleManager: TdxPrintStyleManager;
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

procedure TdxCustomDemoFrame.SetShowSetup(AValue: Boolean);
begin
  if FShowSetup <> AValue then
  begin
    FShowSetup := AValue;
    ChangeOptionsVisibility(ShowSetup);
  end;
end;

procedure TdxCustomDemoFrame.ChangeOptionsVisibility(AValue: Boolean);
begin
  lgSetupTools.Visible := AValue;
end;

procedure TdxCustomDemoFrame.SetCaption(Value: string);
begin
  FCaption := ' ' + Value;
end;

function TdxCustomDemoFrame.GetReportLink: TBasedxReportLink;
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

procedure TdxCustomDemoFrame.CheckDescription;
begin
  liDescription.Caption := GetDescription;
  liDescription.Visible := liDescription.Caption <> '';
end;

procedure TdxCustomDemoFrame.AddOperationsToPopupMenu;
begin
end;

procedure TdxCustomDemoFrame.CheckActualTouchMode;
begin
  lcFrame.BeginUpdate;
  try
    DoCheckActualTouchMode;
  finally
    lcFrame.EndUpdate(False);
  end;
end;

procedure TdxCustomDemoFrame.DoCheckActualTouchMode;
begin
  if Visible then
    ToggleBetweenCheckBoxesAndToggleSwitches(Self, ActualTouchMode);
end;

function TdxCustomDemoFrame.GetDescription: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.GetHint: string;
begin
  Result := sdxFramePSHint;
end;

function TdxCustomDemoFrame.GetInspectedObject: TPersistent;
begin
  Result := nil;
end;

function TdxCustomDemoFrame.GetInitialShowInspector: Boolean;
begin
  Result := False;
end;

function TdxCustomDemoFrame.GetPrintableComponent: TComponent;
begin
  Result := nil;
end;

function TdxCustomDemoFrame.NeedInspector: Boolean;
begin
  Result := GetInspectedObject <> nil;
end;

procedure TdxCustomDemoFrame.LookAndFeelChanged;
begin
  Color := Application.MainForm.Color;
  CheckActualTouchMode;
end;

procedure TdxCustomDemoFrame.FocusFirstControl;
var
  AControl: TWinControl;
begin
  AControl := GetFirstControl;
  if AControl <> nil then
    AControl.SetFocus;
end;

function TdxCustomDemoFrame.GetFirstControl: TWinControl;
begin
  Result := FindNextControl(nil, True, True, False);
end;

procedure TdxCustomDemoFrame.AfterShow;
begin
  CheckActualTouchMode;
end;

function TdxCustomDemoFrame.CanDeactivate: Boolean;
begin
  Result := True;
end;

procedure TdxCustomDemoFrame.ChangeVisibility(AShow: Boolean);
const
  AVisible: array [Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
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

function TdxCustomDemoFrame.GetReportLinkName: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.HasOptions: Boolean;
begin
  Result := True;
end;

function TdxCustomDemoFrame.CreateReportLink: TBasedxReportLink;
begin
  Result := ComponentPrinter.AddEmptyLink(GetReportLinkClass);
  if Result <> nil then
    PrepareLink(Result);
end;

function TdxCustomDemoFrame.GetReportLinkClass: TdxReportLinkClass;
begin
  if PrintableComponent <> nil then
    Result := dxPSCore.dxPSLinkClassByCompClass
      (TComponentClass(PrintableComponent.ClassType))
  else
    Result := nil;
end;

procedure TdxCustomDemoFrame.PrepareLink(AReportLink: TBasedxReportLink);
begin
  AReportLink.StyleManager := Self.PrintStyleManager;
  AReportLink.Active := False;
end;

function TdxCustomDemoFrame.IsSupportExport: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.DoExport(AExportType: TSupportedExportType;
  const AFileName: string; AHandler: TObject);
begin
end;

function TdxCustomDemoFrame.ExportFileName: string;
begin
  Result := 'dxExport';
end;

procedure TdxCustomDemoFrame.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
end;

procedure TdxCustomDemoFrame.ResetWorkAreaMargins;
begin
  Padding.SetBounds(0, 0, 0, 0);
  lcFrame.LayoutLookAndFeel := dxDefaultLayoutLookAndFeel;
end;

procedure TdxCustomDemoFrame.SetWorkAreaMargins(ALeft, ATop, ARight, ABottom: Integer);
begin
  lcFrame.LayoutLookAndFeel := dxCustomMarginsLayoutLookAndFeel;
  Padding.SetBounds(ALeft, ARight, ATop, ABottom);
end;

end.
