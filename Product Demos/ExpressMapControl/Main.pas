unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.RTLConsts,
  Vcl.Dialogs, dxDemoBaseMainForm, dxCoreClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxLayoutLookAndFeels, Vcl.ActnList, Vcl.ImgList, dxBar,
  dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore,
  dxBarExtItems, dxLayoutContainer, cxTextEdit, dxLayoutControl, dxNavBar,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses, dxNavBarBase,
  dxNavBarCollns, dxMapControl,
  dxMapControlBaseFormUnit, cxGroupBox, dxRibbonCustomizationForm, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  cxImage, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxNavBarStyles,
  dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel, dxRibbonBackstageView,
  System.Actions, dxCore, cxGeometry, dxFramedControl, dxShellDialogs, dxPanel, System.ImageList;

type
  TdxMapControlDemoUnitInfo = class
  private
    function GetLoadingInfo: string;
  protected
    UnitClass: TdxMapControlDemoUnitFormClass;
    UnitInstance: TdxMapControlDemoUnitForm;
  public
    constructor Create(AClass: TdxMapControlDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
    property LoadingInfo: string read GetLoadingInfo;
  end;

  TfrmMain = class(TfrmMainBase)
    nbgNew: TdxNavBarGroup;
    nbiDataProviders: TdxNavBarItem;
    nbiWorldWeather: TdxNavBarItem;
    ilNavBar: TcxImageList;
    pnMapControlSite: TcxGroupBox;
    nbiSalesDashboard: TdxNavBarItem;
    nbiShapefileSupport: TdxNavBarItem;
    nbiDayAndNight: TdxNavBarItem;
    nbiAzureServices: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDemoUnit: TdxMapControlDemoUnitInfo;
    procedure SetDemoUnit(Value: TdxMapControlDemoUnitInfo);
    function GetActiveFrameID: Integer;
    function GetActiveMapControl: TdxMapControl;
    procedure SetActiveFrameID(AValue: Integer);
  protected
    procedure ActivateDemo(AID: Integer); override;
    function GetActiveObject: TPersistent; override;
    function GetDemoCaption: string; override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;
    procedure CustomizeSetupRibbonGroups; override;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TdxMapControlDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property ActiveTreeList: TdxMapControl read GetActiveMapControl;
    property DemoCaption: string read GetDemoCaption;
    property DemoUnit: TdxMapControlDemoUnitInfo read FDemoUnit write SetDemoUnit;
  end;

var
  frmMain: TfrmMain;

procedure dxMapControlRegisterDemoUnit(ADemoClass: TdxMapControlDemoUnitFormClass);

implementation

uses dxDemoUtils, dxSplashForms;

{$R *.dfm}

const
  StartFrameID = 6;

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

var
  ADemoUnits: TdxFastObjectList;

procedure dxMapControlRegisterDemoUnit(ADemoClass: TdxMapControlDemoUnitFormClass);
var
  ADemoInfo: TdxMapControlDemoUnitInfo;
begin
  ADemoInfo := TdxMapControlDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TdxMapControlDemoUnitInfo }

constructor TdxMapControlDemoUnitInfo.Create(
  AClass: TdxMapControlDemoUnitFormClass);
begin
  inherited Create;
  UnitClass := AClass;
end;

destructor TdxMapControlDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

function TdxMapControlDemoUnitInfo.GetLoadingInfo: string;
begin
  Result := UnitClass.GetLoadingInfo;
end;

procedure TdxMapControlDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
  end;
  if (AParent <> nil) and (UnitInstance.MapControl <> nil) then
    UnitInstance.MapControl.BeginUpdate;
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    UnitInstance.Parent := AParent;
    UnitInstance.SendToBack;
    UnitInstance.Visible := True;
    if UnitInstance.MapControl <> nil then
      UnitInstance.MapControl.EndUpdate;
    UnitInstance.BringToFront;
    UnitInstance.Update;
  end;
end;

{ TfrmMain }

destructor TfrmMain.Destroy;
begin
  DemoUnit.SetParent(nil);
  inherited Destroy;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  UpdateBaseMenuOptions;
  ActivateDemo(StartFrameID);
  nbgNew.SelectedLinkIndex := StartFrameID;
  SynchronizeFrameNavigation(StartFrameID);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  DemoUnit := nil;
  inherited;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  ActiveFrameID := AID;
end;

function TfrmMain.FindDemoByID(ID: Integer;
  out ADemo: TdxMapControlDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxMapControlDemoUnitInfo(ADemoUnits[I]);
    if ID = ADemo.UnitClass.GetID then
      Exit;
  end;
  Result := False;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitClass.GetID
  else
    Result := -MaxInt;
end;

function TfrmMain.GetActiveMapControl: TdxMapControl;
begin
  Result := nil;
  if (DemoUnit <> nil) and (DemoUnit.UnitInstance <> nil) then
    Result := DemoUnit.UnitInstance.MapControl;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := GetActiveMapControl;
end;

function TfrmMain.GetDemoCaption: string;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitInstance.Caption
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
end;

function TfrmMain.IsExportOptionsAvailable: Boolean;
begin
  Result := False;
end;

function TfrmMain.IsPrintOptionsAvailable: Boolean;
begin
  Result := False;
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  inherited CustomizeSetupRibbonGroups;
  biFullWindowMode.Visible := ivAlways;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TdxMapControlDemoUnitInfo;
  ANavBarDragDropFlags: TdxNavBarDragDropFlags;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
  begin
    ANavBarDragDropFlags := NavBar.DragDropFlags;
    NavBar.DragDropFlags := [];
    try
      LockWindowUpdate(Handle);
      DemoUnit := ADemo;
    finally
      LockWindowUpdate(0);
      NavBar.DragDropFlags := ANavBarDragDropFlags;
    end;
    UpdateBaseMenuOptions;
  end;
end;

procedure TfrmMain.SetDemoUnit(Value: TdxMapControlDemoUnitInfo);
var
  APrevUnit: TdxMapControlDemoUnitInfo;
  ANeedWaitForm: Boolean;
begin
  if DemoUnit = Value then Exit;
  APrevUnit := FDemoUnit;
  FDemoUnit := Value;
  ANeedWaitForm := DemoUnit <> nil;
  if ANeedWaitForm and (Application.MainForm <> nil) then
    TdxSplashFormManager.WaitForm.Show(Application.MainForm); 
  if APrevUnit <> nil then
    APrevUnit.SetParent(nil);
  if DemoUnit <> nil then
    DemoUnit.SetParent(pnMapControlSite);
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  UpdateInspectedObject;
  if ANeedWaitForm then
    TdxSplashFormManager.WaitForm.Hide;
end;

initialization
  dxMegaDemoProductIndex := dxMapControlIndex;
  ADemoUnits := TdxFastObjectList.Create;

finalization
  ADemoUnits.Free;


end.
