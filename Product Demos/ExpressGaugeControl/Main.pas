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
  dxNavBarCollns, dxGaugeControl,
  dxGaugeControlBaseFormUnit, cxGroupBox, dxRibbonCustomizationForm, dxScreenTip, dxCustomHint, cxHint, cxImageList,
  cxImage, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxNavBarStyles, System.Actions,
  System.ImageList, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel, dxRibbonBackstageView,
  dxPScxPivotGridLnk;

type
  TdxGaugeControlDemoUnitInfo = class
  private
    function GetLoadingInfo: string;
  protected
    UnitClass: TdxGaugeControlDemoUnitFormClass;
    UnitInstance: TdxGaugeControlDemoUnitForm;
  public
    constructor Create(AClass: TdxGaugeControlDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
    property LoadingInfo: string read GetLoadingInfo;
  end;

  TfrmMain = class(TfrmMainBase)
    nbgFeatures: TdxNavBarGroup;
    nbiStyles: TdxNavBarItem;
    nbiWorldTime: TdxNavBarItem;
    ilNavBar: TcxImageList;
    pnGaugeControlSite: TcxGroupBox;
    nbiCarBreakTester: TdxNavBarItem;
    nbgGadgets: TdxNavBarGroup;
    nbiTemperatureGauges: TdxNavBarItem;
    nbiDataBinding: TdxNavBarItem;
    nbiFullCircularGauges: TdxNavBarItem;
    nbHalfCircularGauges: TdxNavBarItem;
    nbiQuarterCircularGauges: TdxNavBarItem;
    nbiLinearGauges: TdxNavBarItem;
    nbiDigitalGauges: TdxNavBarItem;
    cxImageList1: TcxImageList;
    nbiHybridGauges: TdxNavBarItem;
    nbiThreeFourthCircularGauges: TdxNavBarItem;
    nbiWideCircularGauges: TdxNavBarItem;
    nbiSmartMeter: TdxNavBarItem;
    nbiWeatherForecast: TdxNavBarItem;
    nbiLogarithmicGauges: TdxNavBarItem;
    nbLabelOrientation: TdxNavBarItem;
    nbiDigitalGaugesDisplayModes: TdxNavBarItem;
    nbgScales: TdxNavBarGroup;
    nbiCircularScale: TdxNavBarItem;
    nbiLinearScale: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FDemoUnit: TdxGaugeControlDemoUnitInfo;
    procedure SetDemoUnit(Value: TdxGaugeControlDemoUnitInfo);
    function GetActiveForm: TdxGaugeControlDemoUnitForm;
    function GetActiveFrameID: Integer;
    procedure SetActiveFrameID(AValue: Integer);
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    function GetDemoCaption: string; override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsBarOptionsVisible: Boolean; override;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;
    procedure SynchronizeFrameChoosers(AFrameID: Integer);

    property ActiveForm: TdxGaugeControlDemoUnitForm read GetActiveForm;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TdxGaugeControlDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property DemoCaption: string read GetDemoCaption;
    property DemoUnit: TdxGaugeControlDemoUnitInfo read FDemoUnit write SetDemoUnit;
  end;

var
  frmMain: TfrmMain;

procedure dxGaugeControlRegisterDemoUnit(ADemoClass: TdxGaugeControlDemoUnitFormClass);

implementation

uses
  dxDemoUtils;

{$R *.dfm}

var
  ADemoUnits: TdxFastObjectList;

const
  StartDemoID = 0;

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

procedure dxGaugeControlRegisterDemoUnit(ADemoClass: TdxGaugeControlDemoUnitFormClass);
var
  ADemoInfo: TdxGaugeControlDemoUnitInfo;
begin
  ADemoInfo := TdxGaugeControlDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TdxGaugeControlDemoUnitInfo }

constructor TdxGaugeControlDemoUnitInfo.Create(
  AClass: TdxGaugeControlDemoUnitFormClass);
begin
  inherited Create;
  UnitClass := AClass;
end;

destructor TdxGaugeControlDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

function TdxGaugeControlDemoUnitInfo.GetLoadingInfo: string;
begin
  Result := UnitClass.GetLoadingInfo;
end;

procedure TdxGaugeControlDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    if UnitInstance = nil then
    begin
      UnitInstance := UnitClass.Create(AParent);
      UnitInstance.Parent := AParent;
    end;
    UnitInstance.Visible := True;
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
  ActivateDemo(StartDemoID);
  SynchronizeFrameChoosers(StartDemoID);
  SynchronizeFrameNavigation(StartDemoID);
  UpdateBaseMenuOptions;
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

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biShowInspector.Visible := ivNever;
  biFullWindowMode.Visible := ivAlways;
  biCustomProperties.Visible := ivNever;
end;

function TfrmMain.FindDemoByID(ID: Integer;
  out ADemo: TdxGaugeControlDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxGaugeControlDemoUnitInfo(ADemoUnits[I]);
    Result := ID = ADemo.UnitClass.GetID;
    if Result then
      Break;
  end;
end;

function TfrmMain.GetActiveForm: TdxGaugeControlDemoUnitForm;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitInstance
  else
    Result := nil;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitClass.GetID
  else
    Result := -MaxInt;
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

function TfrmMain.IsBarOptionsVisible: Boolean;
begin
  Result := False;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if ActiveForm <> nil then
    ActiveForm.LookAndFeelChanged;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TdxGaugeControlDemoUnitInfo;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
  begin
    DemoUnit := ADemo;
    UpdateBaseMenuOptions;
  end;
end;

procedure TfrmMain.SetDemoUnit(Value: TdxGaugeControlDemoUnitInfo);
var
  APrevUnit: TdxGaugeControlDemoUnitInfo;
begin
  if DemoUnit <> Value then
  begin
    pnGaugeControlSite.Visible := False;
    APrevUnit := FDemoUnit;
    FDemoUnit := Value;
    if APrevUnit <> nil then
      APrevUnit.SetParent(nil);
    if DemoUnit <> nil then
      DemoUnit.SetParent(pnGaugeControlSite);
    pnGaugeControlSite.Visible := True;
    Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  end;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  ActiveForm.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.SynchronizeFrameChoosers(AFrameID: Integer);

  function CheckSelectedLink(AGroup: TdxNavBarGroup): Boolean;
  var
    ALinkIndex: Integer;
    ALink: TdxNavBarItemLink;
  begin
    Result := False;
    for ALinkIndex := 0 to AGroup.LinkCount - 1 do
    begin
      ALink := AGroup.Links[ALinkIndex];
      ALink.Selected := ALink.Item.Tag = AFrameID;
      if ALink.Selected then
      begin
        TdxNavBarViewInfoAccess(NavBar.ViewInfo).MakeLinkVisible(ALink, False);
        Result := True;
      end;
    end;
  end;

var
  AGroupIndex: Integer;
begin
  if not CheckSelectedLink(nbgFeatures) then
    for AGroupIndex := 0 to NavBar.Groups.Count - 1 do
      if (AGroupIndex <> nbgFeatures.Index) and CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
        Break;
end;

initialization
  dxMegaDemoProductIndex := dxGaugeControlIndex;
  ADemoUnits := TdxFastObjectList.Create;

finalization
  ADemoUnits.Free;


end.
