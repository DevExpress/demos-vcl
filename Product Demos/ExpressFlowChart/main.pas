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
  dxRibbonCustomizationForm, Vcl.Menus, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxScreenTip, dxNavBarCollns, dxCustomHint, cxHint,
  dxLayoutLookAndFeels, System.Actions, Vcl.ActnList, System.ImageList,
  Vcl.ImgList, cxImageList, dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm,
  dxPgsDlg, dxPSCore, dxBarExtItems, cxClasses, dxLayoutContainer, Vcl.StdCtrls,
  cxButtons, cxTextEdit, dxLayoutControl, dxNavBarBase, dxNavBarStyles,
  dxNavBar, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel,
  cxLabel, cxGroupBox, dxRibbonBackstageView, cxSplitter, Vcl.ExtCtrls,
  dxFlowChartBaseFormUnit;

type
  TdxFlowChartDemoUnitInfo = class
  private
    function GetLoadingInfo: string;
  protected
    UnitClass: TdxFlowChartDemoUnitFormClass;
    UnitInstance: TdxFlowChartDemoUnitForm;
  public

    constructor Create(AClass: TdxFlowChartDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
    property LoadingInfo: string read GetLoadingInfo;
  end;

  TfrmMain = class(TfrmMainBase)
    nbgFeatures: TdxNavBarGroup;
    pnlControlSite: TcxGroupBox;
    nbiFlowChart: TdxNavBarItem;
    nbiInformationFlow: TdxNavBarItem;
    nbiRelationshipDiagram: TdxNavBarItem;
    nbiCycleDiagram: TdxNavBarItem;
    nbiProductFlowDiagram: TdxNavBarItem;
    nbiCustomShapes: TdxNavBarItem;
    nbiShapes: TdxNavBarItem;
    nbgDiagramTypes: TdxNavBarGroup;
    nbiConnectors: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FDemoUnit: TdxFlowChartDemoUnitInfo;
    procedure SetDemoUnit(Value: TdxFlowChartDemoUnitInfo);
    function GetActiveForm: TdxFlowChartDemoUnitForm;
    function GetActiveFrameID: Integer;
    procedure SetActiveFrameID(AValue: Integer);
  protected
    function IsApplicationButtonAvailable: Boolean; override;
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    function GetDemoCaption: string; override;
    function IsBarOptionsVisible: Boolean; override;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;
    procedure SynchronizeFrameChoosers(AFrameID: Integer);

    property ActiveForm: TdxFlowChartDemoUnitForm read GetActiveForm;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TdxFlowChartDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property DemoCaption: string read GetDemoCaption;
    property DemoUnit: TdxFlowChartDemoUnitInfo read FDemoUnit write SetDemoUnit;
  end;

var
  frmMain: TfrmMain;

procedure dxFlowChartRegisterDemoUnit(ADemoClass: TdxFlowChartDemoUnitFormClass);

implementation

uses
  dxDemoUtils;

{$R *.dfm}

var
  ADemoUnits: TdxFastObjectList;

const
  StartDemoID = 7;

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

procedure dxFlowChartRegisterDemoUnit(ADemoClass: TdxFlowChartDemoUnitFormClass);
var
  ADemoInfo: TdxFlowChartDemoUnitInfo;
begin
  ADemoInfo := TdxFlowChartDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TdxFlowChartDemoUnitInfo }

constructor TdxFlowChartDemoUnitInfo.Create(AClass: TdxFlowChartDemoUnitFormClass);
begin
  inherited Create;
  UnitClass := AClass;
end;

destructor TdxFlowChartDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

function TdxFlowChartDemoUnitInfo.GetLoadingInfo: string;
begin
  Result := UnitClass.GetLoadingInfo;
end;

procedure TdxFlowChartDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if AParent = nil then
  begin
    FreeAndNil(UnitInstance)
  end
  else
  begin
    if UnitInstance = nil then
    begin
      UnitInstance := UnitClass.Create(AParent);
      UnitInstance.Parent := AParent;
    end;
    UnitInstance.Visible := True;
    UnitInstance.AfterShow;
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
  dxRibbon1Tab1.Caption := 'Demo';
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

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  pnlControlSite.Realign;
end;

function TfrmMain.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
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
  out ADemo: TdxFlowChartDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxFlowChartDemoUnitInfo(ADemoUnits[I]);
    Result := ID = ADemo.UnitClass.GetID;
    if Result then
      Break;
  end;
end;

function TfrmMain.GetActiveForm: TdxFlowChartDemoUnitForm;
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
    Result := DemoUnit.UnitInstance.GetCaption
  else
    Result := inherited GetDemoCaption;
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
  ADemo: TdxFlowChartDemoUnitInfo;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
  begin
    DemoUnit := ADemo;
    UpdateBaseMenuOptions;
  end;
end;

procedure TfrmMain.SetDemoUnit(Value: TdxFlowChartDemoUnitInfo);
var
  APrevUnit: TdxFlowChartDemoUnitInfo;
begin
  if DemoUnit <> Value then
  begin
    pnlControlSite.Visible := False;
    APrevUnit := FDemoUnit;
    FDemoUnit := Value;
    if APrevUnit <> nil then
      APrevUnit.SetParent(nil);
    if DemoUnit <> nil then
      DemoUnit.SetParent(pnlControlSite);
    pnlControlSite.Visible := True;
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
  dxMegaDemoProductIndex := dxFlowChartIndex;
  ADemoUnits := TdxFastObjectList.Create;

finalization
  ADemoUnits.Free;


end.
