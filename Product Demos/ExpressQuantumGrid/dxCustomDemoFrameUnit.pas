unit dxCustomDemoFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, dxPSCore, dxPgsDlg, cxLookAndFeels, cxLookAndFeelPainters,
  dxOffice11,
  dxDemoObjectInspector, cxLabel,
  cxGraphics, cxControls, cxContainer, cxEdit, dxDemoUtils, cxImage, cxGroupBox, dxGDIPlusClasses, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxToggleSwitch, cxCheckBox, System.Actions, dxLayoutLookAndFeels,
  cxCheckGroup, dxCheckGroupBox, dxPanel,
  cxGeometry, dxFramedControl;

type
  TdxDemoFrameSetupMode = (fsmVisible, fsmSizeable);
  TdxDemoFrameSetupModes = set of TdxDemoFrameSetupMode;

type
  TdxCustomDemoFrameClass = class of TdxCustomDemoFrame;

  TdxCustomDemoFrame = class(TFrame)
    alCustomCheckBoxes: TActionList;
    dxFrameLayoutLookAndFeelList: TdxLayoutLookAndFeelList;
    dxLayoutBoldItemCaption: TdxLayoutCxLookAndFeel;
    PanelDescription: TdxPanel;
    lcBottomFrame: TdxLayoutControl;
    lcBottomFrameGroup_Root: TdxLayoutGroup;
    lgSetupTools: TdxLayoutGroup;
    liDescription: TdxLayoutLabeledItem;
    PanelGrid: TdxPanel;
    PanelSetupTools: TdxPanel;
    gbSetupTools: TcxGroupBox;
    lcFrame: TdxLayoutControl;
    lcFrameGroup_Root: TdxLayoutGroup;
    procedure btnSetupClick(Sender: TObject);
    procedure lcBottomFrameMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PanelDescriptionResize(Sender: TObject);
  private
    FCaption: string;
    FChangingVisibility: Boolean;
    FReportLink: TBasedxReportLink;
    FShowSetup: Boolean;
    function GetActive: Boolean;
    function GetActualTouchMode: Boolean;
    function GetComponentPrinter: TdxComponentPrinter;
    function GetHasHint: Boolean;
    function GetPrintStyleManager: TdxPrintStyleManager;
    function GetShowingCounter: Integer;
    procedure SetShowSetup(AValue: Boolean);
  protected
    procedure AddOperationsToPopupMenu; virtual;
    function AllowToggleBetweenCheckBoxesAndToggleSwitches: Boolean; virtual;
    procedure ApplySetupVisibility(AVisible: Boolean); virtual;
    procedure CheckActualTouchMode;
    procedure DoCheckActualTouchMode; virtual;
    function GetDescription: string; virtual;
    function GetHint: string; virtual;
    function GetInspectedObject: TPersistent; virtual;
    function GetInitialShowInspector: Boolean; virtual;
    function GetPrintableComponent: TComponent; virtual;
    function GetSplashCaption: string; virtual;
    function NeedInspector: Boolean; virtual;
    function NeedSetup: Boolean; virtual;
    function NeedWaitForm: Boolean; virtual;
    procedure SetupLayoutsLookAndFeel; virtual;
    procedure ShowSetupChanged;

    procedure FocusFirstControl;
    function GetFirstControl: TWinControl; virtual;

    procedure CheckDescription;
    procedure SetCaption(Value: string); virtual;

    function CreateReportLink: TBasedxReportLink;
    function GetCaption: string;
    function GetReportLink: TBasedxReportLink; virtual;
    function GetReportLinkClass: TdxReportLinkClass;
    procedure PrepareLink(AReportLink: TBasedxReportLink); virtual;

    property ActualTouchMode: Boolean read GetActualTouchMode;
    property HasHint: Boolean read GetHasHint;
    property ShowingCounter: Integer read GetShowingCounter;
  public
    constructor Create(AOwner: TComponent); override;
    procedure BeforeDestruction; override;
    procedure BeginUpdate; virtual;
    procedure EndUpdate; virtual;

    procedure AfterShow; virtual;
    function CanDeactivate: Boolean; virtual;
    function CanToggleScrollbars: Boolean; virtual;
    function CanToggleSetup: Boolean; virtual;
    function CanUseOddEvenStyle: Boolean; virtual;
    procedure ChangeVisibility(AShow: Boolean); virtual;
    function GetReportLinkName: string; virtual;
    function IsApplicationButtonVisible: Boolean; virtual;
    function IsOptionsVisible: Boolean; virtual;
    procedure LookAndFeelChanged; virtual;
    procedure ScaleFactorChanged(M: Integer; D: Integer); virtual;
    procedure SwitchFullWindowMode(AValue: Boolean);
    procedure TuneWorkArea(AMarginsNeeded: Boolean); virtual;

    procedure DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean); virtual;
    function ExportFileName: string; virtual;
    function IsSupportExport: Boolean; virtual;

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
  dxBar, dxBarExtItems, System.Types, uStrsConst, System.Math, dxSplashForms, dxDemoBaseMainForm,
  dxFrames, dxThreading;

{ TdxCustomDemoFrame }

constructor TdxCustomDemoFrame.Create(AOwner: TComponent);
begin
  if NeedWaitForm then
    TdxSplashFormManager.WaitForm.Show(Application.MainForm);
  inherited Create(AOwner);
  Visible := False;
  ApplySetupVisibility(NeedSetup);
  FShowSetup := NeedSetup;
  AddOperationsToPopupMenu;
  SetupLayoutsLookAndFeel;
  LookAndFeelChanged;
end;

procedure TdxCustomDemoFrame.BeforeDestruction;
begin
  TdxUIThreadSyncService.Unsubscribe(Self);
  inherited BeforeDestruction;
end;

procedure TdxCustomDemoFrame.BeginUpdate;
begin
end;

procedure TdxCustomDemoFrame.EndUpdate;
begin
end;

function TdxCustomDemoFrame.AllowToggleBetweenCheckBoxesAndToggleSwitches: Boolean;
begin
  Result := True;
end;

procedure TdxCustomDemoFrame.ApplySetupVisibility(AVisible: Boolean);
begin
  PanelSetupTools.Visible := AVisible;
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

function TdxCustomDemoFrame.GetShowingCounter: Integer;
begin
  Result := dxFrameManager.ActiveFrameInfo.ShowingCounter;
end;

procedure TdxCustomDemoFrame.SetCaption(Value: string);
begin
  FCaption := ' ' + Value;
end;

procedure TdxCustomDemoFrame.SetShowSetup(AValue: Boolean);
begin
  FShowSetup := AValue;
  ShowSetupChanged;
end;

procedure TdxCustomDemoFrame.SetupLayoutsLookAndFeel;
begin
  lcFrame.LayoutLookAndFeel := TfrmMainBase(Application.MainForm).dxLayoutSkinLookAndFeel1;
  lcBottomFrame.LookAndFeel := TfrmMainBase(Application.MainForm).dxLayoutSkinLookAndFeel1;
  liDescription.LookAndFeel := TfrmMainBase(Application.MainForm).dxLayoutSkinLookAndFeelDescription;
end;

procedure TdxCustomDemoFrame.ShowSetupChanged;
begin
  ApplySetupVisibility(ShowSetup);
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
  if Visible and AllowToggleBetweenCheckBoxesAndToggleSwitches then
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

function TdxCustomDemoFrame.GetSplashCaption: string;
begin
  Result := '';
end;

function TdxCustomDemoFrame.NeedInspector: Boolean;
begin
  Result := GetInspectedObject <> nil;
end;

function TdxCustomDemoFrame.NeedSetup: Boolean;
begin
  Result := False;
end;

function TdxCustomDemoFrame.NeedWaitForm: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.LookAndFeelChanged;
begin
  Color := Application.MainForm.Color;
  CheckActualTouchMode;
end;

procedure TdxCustomDemoFrame.ScaleFactorChanged(M: Integer; D: Integer);
begin
//do nothing
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
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  CheckActualTouchMode;
  TfrmMainBase(Application.MainForm).biCustomProperties.Visible := AVisible[NeedSetup];
  TfrmMainBase(Application.MainForm).biCustomProperties.Down := ShowSetup;
  TdxUIThreadSyncService.EnqueueInvokeInUIThread(Self,
    procedure ()
    begin
      TdxSplashFormManager.WaitForm.Hide;
    end
    );
end;

procedure TdxCustomDemoFrame.btnSetupClick(Sender: TObject);
begin
  ApplySetupVisibility(not PanelSetupTools.Visible);
end;

function TdxCustomDemoFrame.CanDeactivate: Boolean;
begin
  Result := True;
end;

function TdxCustomDemoFrame.CanToggleScrollbars: Boolean;
begin
  Result := True;
end;

function TdxCustomDemoFrame.CanToggleSetup: Boolean;
begin
  Result := True;
end;

function TdxCustomDemoFrame.CanUseOddEvenStyle: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.ChangeVisibility(AShow: Boolean);
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

function TdxCustomDemoFrame.IsApplicationButtonVisible: Boolean;
begin
  Result := True;
end;

function TdxCustomDemoFrame.IsOptionsVisible: Boolean;
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

procedure TdxCustomDemoFrame.PanelDescriptionResize(Sender: TObject);
begin
end;

procedure TdxCustomDemoFrame.PrepareLink(AReportLink: TBasedxReportLink);
begin
  AReportLink.StyleManager := self.PrintStyleManager;
  AReportLink.Active := False;
end;

function TdxCustomDemoFrame.IsSupportExport: Boolean;
begin
  Result := False;
end;

procedure TdxCustomDemoFrame.lcBottomFrameMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//
end;

procedure TdxCustomDemoFrame.DoExport(AExportType: TSupportedExportType; const AFileName: string; AHandler: TObject; ADataOnly: Boolean);
begin
end;

function TdxCustomDemoFrame.ExportFileName: string;
begin
  Result := 'dxExport';
end;

procedure TdxCustomDemoFrame.SwitchFullWindowMode(AValue: Boolean);
begin
  liDescription.Visible := not AValue and (liDescription.Caption <> '');
  PanelDescription.Visible := not AValue;
end;

procedure TdxCustomDemoFrame.TuneWorkArea(AMarginsNeeded: Boolean);
begin

end;

end.
