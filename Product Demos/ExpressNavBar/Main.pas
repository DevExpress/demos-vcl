unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxRibbonCustomizationForm, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxLayoutLookAndFeels, Vcl.ActnList, Vcl.ImgList, dxBar,
  dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore,
  dxBarExtItems, dxLayoutContainer, cxTextEdit, dxLayoutControl, dxNavBar,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses, dxCoreClasses,
  dxNavBarControlBaseFormUnit, dxNavBarCollns, dxNavBarBase, cxGroupBox,
  dxSkinsCore, dxSkinsdxRibbonPainter,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, dxNavBarStyles, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel,
  dxRibbonBackstageView, dxCore, cxGeometry, dxFramedControl, dxShellDialogs, System.Actions, dxPanel;

type
  TdxNavBarControlDemoUnitInfo = class
  private
    function GetLoadingInfo: string;
  protected
    UnitClass: TdxNavBarControlDemoUnitFormClass;
    UnitInstance: TdxNavBarControlDemoUnitForm;
  public
    constructor Create(AClass: TdxNavBarControlDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
    property LoadingInfo: string read GetLoadingInfo;
  end;

  TfrmMain = class(TfrmMainBase)
    NavBarGroup1: TdxNavBarGroup;
    NavBarItem1: TdxNavBarItem;
    pnNavBarControlSite: TcxGroupBox;
    NavBarItem2: TdxNavBarItem;
    NavBarGroup2: TdxNavBarGroup;
    NavBarItem3: TdxNavBarItem;
    NavBarItem4: TdxNavBarItem;
    NavBarItem5: TdxNavBarItem;
    NavBarItem6: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDemoUnit: TdxNavBarControlDemoUnitInfo;
    procedure SetDemoUnit(Value: TdxNavBarControlDemoUnitInfo);
    function GetActiveFrameID: Integer;
    procedure SetActiveFrameID(AValue: Integer);
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    function GetActiveObject: TPersistent; override;
    function GetDemoCaption: string; override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;
    procedure SwitchDemoCustomPropertiesSetup; override;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TdxNavBarControlDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property DemoUnit: TdxNavBarControlDemoUnitInfo read FDemoUnit write SetDemoUnit;
  end;

var
  frmMain: TfrmMain;

procedure dxNavBarControlRegisterDemoUnit(ADemoClass: TdxNavBarControlDemoUnitFormClass);

implementation

uses System.RTLConsts, dxDemoUtils;

{$R *.dfm}

var
  ADemoUnits: TdxFastObjectList;

procedure dxNavBarControlRegisterDemoUnit(ADemoClass: TdxNavBarControlDemoUnitFormClass);
var
  ADemoInfo: TdxNavBarControlDemoUnitInfo;
begin
  ADemoInfo := TdxNavBarControlDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TdxNavBarControlDemoUnitInfo }

constructor TdxNavBarControlDemoUnitInfo.Create(
  AClass: TdxNavBarControlDemoUnitFormClass);
begin
  inherited Create;
  UnitClass := AClass;
end;

destructor TdxNavBarControlDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

function TdxNavBarControlDemoUnitInfo.GetLoadingInfo: string;
begin
  Result := UnitClass.GetLoadingInfo;
end;

procedure TdxNavBarControlDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
  end;
  if (AParent <> nil) and (UnitInstance.NavBarControl <> nil) then
    UnitInstance.NavBarControl.BeginUpdate;
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    UnitInstance.Parent := AParent;
    UnitInstance.SendToBack;
    UnitInstance.Visible := True;
    if UnitInstance.NavBarControl <> nil then
      UnitInstance.NavBarControl.EndUpdate;
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

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  ActiveFrameID := AID;
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biFullWindowMode.Visible := ivAlways;
end;

function TfrmMain.FindDemoByID(ID: Integer;
  out ADemo: TdxNavBarControlDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxNavBarControlDemoUnitInfo(ADemoUnits[I]);
    if ID = ADemo.UnitClass.GetID then
      Exit;
  end;
  Result := False;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  UpdateBaseMenuOptions;
  NavBarGroup1.SelectedLinkIndex := 0;
  ActiveFrameID := 5;
  SynchronizeFrameNavigation(ActiveFrameID);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  DemoUnit := nil;
  inherited;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitClass.GetID
  else
    Result := -MaxInt;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitInstance.NavBarControl
  else
    Result := inherited GetActiveObject;
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

procedure TfrmMain.SwitchDemoCustomPropertiesSetup;
begin
  inherited SwitchDemoCustomPropertiesSetup;
  DemoUnit.UnitInstance.ShowSetup := biCustomProperties.Down;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TdxNavBarControlDemoUnitInfo;
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

procedure TfrmMain.SetDemoUnit(Value: TdxNavBarControlDemoUnitInfo);
var
  APrevUnit: TdxNavBarControlDemoUnitInfo;
begin
  if DemoUnit = Value then Exit;
  APrevUnit := FDemoUnit;
  FDemoUnit := Value;
  if APrevUnit <> nil then
    APrevUnit.SetParent(nil);
  if DemoUnit <> nil then
    DemoUnit.SetParent(pnNavBarControlSite);
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  UpdateInspectedObject;
end;

initialization
  dxMegaDemoProductIndex := dxNavBarIndex;
  ADemoUnits := TdxFastObjectList.Create;

finalization
  ADemoUnits.Free;

end.
