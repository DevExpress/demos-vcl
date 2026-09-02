unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.Generics.Collections,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, Vcl.ActnList, Vcl.ImgList, dxBar,
  dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore,
  dxBarExtItems, cxLabel, cxTextEdit, dxNavBar, dxGDIPlusClasses, Vcl.ExtCtrls,
  cxSplitter, cxClasses, cxInplaceContainer, cxGroupBox, dxNavBarBase, dxNavBarCollns,
  dxDemoBaseMainForm, dxGanttControlBaseFormUnit, dxDemoUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxRibbonCustomizationForm,
  dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxNavBarStyles, dxGalleryControl, dxRibbonBackstageViewGalleryControl, cxGeometry, dxCore, dxBevel,
  dxRibbonBackstageView, dxSkinsCore, System.Actions,
  dxGanttControlCustomClasses, dxGanttControl, dxMessageDialog, dxShellDialogs, dxFramedControl, dxPanel;

type
  TdxGanttControlDemoUnitInfo = class;

  TfrmMain = class(TfrmMainBase)
    pnGanttControlSite: TcxGroupBox;
    nbgNew: TdxNavBarGroup;
    bsiOptionsView: TdxBarSubItem;
    biDeleteConfirmation: TdxBarLargeButton;
    biDirectX: TdxBarLargeButton;
    actDeleteConfirmation: TAction;
    actDirectX: TAction;
    biOpen: TdxBarLargeButton;
    actSaveAs: TAction;
    actOpen: TAction;
    biSaveAs: TdxBarLargeButton;
    actNew: TAction;
    biNew: TdxBarLargeButton;
    biUndo: TdxBarButton;
    biRedo: TdxBarButton;
    actUndo: TAction;
    actRedo: TAction;
    barFile: TdxBar;
    nbiLargeData: TdxNavBarItem;
    nbiImportSchedulerData: TdxNavBarItem;
    nbiExtendedAttributes: TdxNavBarItem;
    nbiBaselines: TdxNavBarItem;
    aExportToSVG: TAction;
    dxBarLargeButton1: TdxBarLargeButton;
    sfdExportToSvg: TdxSaveFileDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NavBarOnCustomDrawGroupCaption(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarGroupViewInfo;
      var AHandled: Boolean);
    procedure NavBarOnCustomDrawLink(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarLinkViewInfo;
      var AHandled: Boolean);
    procedure actDeleteConfirmationExecute(Sender: TObject);
    procedure actDirectXExecute(Sender: TObject);
    procedure actSaveAsExecute(Sender: TObject);
    procedure actOpenExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure actUndoExecute(Sender: TObject);
    procedure actRedoExecute(Sender: TObject);
    procedure actUndoUpdate(Sender: TObject);
    procedure actRedoUpdate(Sender: TObject);
    procedure aExportToSVGExecute(Sender: TObject);
  private
    FDemoUnit: TdxGanttControlDemoUnitInfo;
    function GetActiveFrame: TdxGanttControlBaseDemoForm;
    function GetActiveFrameID: Integer;
    function GetActiveGanttControl: TdxCustomGanttControl;
    procedure SelectUnit(AUnit: TdxGanttControlDemoUnitInfo);
    procedure SetActiveFrameID(AValue: Integer);
    procedure SynchronizeMenuItems;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure DemoUnitChanged;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function EnableDocumentOpen: Boolean;
    function GetActiveObject: TPersistent; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    procedure GetSupportedExportTypes(AList: TList<TSupportedExportType>); override;
    procedure InspectedObjectChanged(ASender: TObject); override;
    function IsActiveGanttControlModified: Boolean;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;
    procedure SwitchDemoCustomPropertiesSetup; override;

    property ActiveFrame: TdxGanttControlBaseDemoForm read GetActiveFrame;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TdxGanttControlDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property ActiveGanttControl: TdxCustomGanttControl read GetActiveGanttControl;
    property DemoCaption: string read GetDemoCaption;
    property DemoUnit: TdxGanttControlDemoUnitInfo read FDemoUnit write SelectUnit;
  end;

  TdxGanttControlDemoUnitInfo = class
  protected
    UnitClass: TdxGanttControlBaseDemoFormClass;
    UnitInstance: TdxGanttControlBaseDemoForm;
  public
    constructor Create(AClass: TdxGanttControlBaseDemoFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
  end;

const
  dxSoftwareDevelopmentDemoID = 0;
  dxLargeDataSourceDemoID = 1;
  dxSchedulerDataImportDemoID = 2;
  dxExtendedAttributesDemoID = 3;
  dxBaselinesDemoID = 4;

var
  frmMain: TfrmMain;

procedure dxRegisterGanttControlDemoUnit(ADemoClass: TdxGanttControlBaseDemoFormClass);

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, dxNavBarConsts, dxSkinInfo, dxSkinsStrs, dxSmartImage;

type
  TdxSkinLookAndFeelPainterInfo = class(TdxSkinInfo);
  TdxGanttControlBaseDemoFormAccess = class(TdxGanttControlBaseDemoForm);

var
  ADemoUnits: TcxObjectList;

procedure dxRegisterGanttControlDemoUnit(ADemoClass: TdxGanttControlBaseDemoFormClass);
var
  ADemoInfo: TdxGanttControlDemoUnitInfo;
begin
  ADemoInfo := TdxGanttControlDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TdxGanttControlDemoUnitInfo }

constructor TdxGanttControlDemoUnitInfo.Create(AClass: TdxGanttControlBaseDemoFormClass);
begin
  UnitClass := AClass;
end;

destructor TdxGanttControlDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

procedure TdxGanttControlDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
  end;
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    if UnitInstance <> nil then
      UnitInstance.Parent := AParent;
    UnitInstance.SendToBack;
    UnitInstance.Visible := True;
    UnitInstance.BringToFront;
  end;
end;

{ TfrmMain }

constructor TfrmMain.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  bvtPrint.TabVisible := False;
end;

destructor TfrmMain.Destroy;
begin
  DemoUnit.SetParent(nil);
  inherited Destroy;
end;

function TfrmMain.FindDemoByID(ID: Integer; out ADemo: TdxGanttControlDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxGanttControlDemoUnitInfo(ADemoUnits[I]);
    if ID = ADemo.UnitClass.GetID then
      Exit;
  end;
  Result := False;
end;

type
  TdxNavBarControllerAccess = class(TdxNavBarController);

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  TdxNavBarControllerAccess(Navbar.Controller).DoLinkClick(Navbar, Navbar.Groups[dxFirstNavBarGroupIndex].Links[0]);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  DemoUnit := nil;
  inherited;
end;

procedure TfrmMain.actDeleteConfirmationExecute(Sender: TObject);
begin
  ActiveGanttControl.OptionsBehavior.ConfirmDelete := actDeleteConfirmation.Checked;
end;

procedure TfrmMain.actDirectXExecute(Sender: TObject);
begin
  if actDirectX.Checked then
    dxSkinController1.RenderMode := rmDirectX
  else
    dxSkinController1.RenderMode := rmDefault;
end;

procedure TfrmMain.actNewExecute(Sender: TObject);
begin
  if EnableDocumentOpen then
  begin
    ActiveGanttControl.DataModel.Reset;
    TdxGanttControlBaseDemoFormAccess(ActiveFrame).ResetIsModified;
  end
end;

procedure TfrmMain.actOpenExecute(Sender: TObject);
begin
  if EnableDocumentOpen and OpenDialog.Execute then
    ActiveGanttControl.DataModel.LoadFromFile(OpenDialog.FileName);
end;

procedure TfrmMain.actSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
  begin
    ActiveGanttControl.DataModel.SaveToFile(SaveDialog.FileName);
    TdxGanttControlBaseDemoFormAccess(ActiveFrame).ResetIsModified;
  end;
end;

procedure TfrmMain.actUndoExecute(Sender: TObject);
begin
  ActiveGanttControl.History.Undo;
end;

procedure TfrmMain.actUndoUpdate(Sender: TObject);
begin
  actUndo.Enabled := ActiveGanttControl.History.CanUndo;
end;

procedure TfrmMain.aExportToSVGExecute(Sender: TObject);
var
  AImage: TdxCustomSmartImage;
begin
  if sfdExportToSvg.Execute then
  begin
    AImage := ActiveGanttControl.ExportToImage;
    try
      AImage.SaveToFile(sfdExportToSvg.FileName);
    finally
      AImage.Free;
    end;
    if dxMessageDlg(Format('Open file %s?', [sfdExportToSvg.FileName]), mtConfirmation, mbYesNo) = mrYes then
      ShellExecute(Handle, PChar('OPEN'), PChar(sfdExportToSvg.FileName), nil, nil, SW_SHOWMAXIMIZED);
  end;
end;

procedure TfrmMain.actRedoExecute(Sender: TObject);
begin
  ActiveGanttControl.History.Redo;
end;

procedure TfrmMain.actRedoUpdate(Sender: TObject);
begin
  actRedo.Enabled := ActiveGanttControl.History.CanRedo;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  ActiveFrameID := AID;
  CustomizeSetupRibbonGroups;
  SynchronizeFrameNavigation(ActiveFrameID);
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  biFullWindowMode.Visible := AVisible[ActiveGanttControl <> nil];
end;

procedure TfrmMain.DemoUnitChanged;
begin
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  DemoUnit.UnitInstance.FrameActivated;
  UpdateInspectedObject;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  if AExportType = exXML then
    TdxGanttControl(ActiveGanttControl).DataModel.SaveToFile(AFileName);
end;

function TfrmMain.EnableDocumentOpen: Boolean;
var
   mr: Integer;
begin
  Result := not IsActiveGanttControlModified;
  if not Result then
  begin
    mr := dxMessageDlg('Do you want to save your changes?', mtConfirmation, mbYesNoCancel);
    if mr = mrCancel then
      Exit;
    Result := mr = mrNo;
    if not Result then
    begin
      Result := SaveDialog.Execute;
      if Result then
        ActiveGanttControl.DataModel.SaveToFile(SaveDialog.FileName);
    end;
  end;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := ActiveGanttControl;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  Result := dxComponentPrinter.FindLinkByComponent(ActiveGanttControl, True);
end;

function TfrmMain.GetDemoCaption: string;
begin
  if DemoUnit <> nil then
    Result := GetCaptionWithoutAmpersand(DemoUnit.UnitInstance.GetCaption)
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.GetExportFileName: string;
begin
  Result := 'ExportGanttControl';
end;

procedure TfrmMain.GetSupportedExportTypes(AList: TList<TSupportedExportType>);
begin
  //
end;

procedure TfrmMain.InspectedObjectChanged(ASender: TObject);
begin
  DemoUnit.UnitInstance.DoInspectedObjectChanged;
  SynchronizeMenuItems;
end;

function TfrmMain.IsActiveGanttControlModified: Boolean;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.IsGanttControlModified
  else
    Result := False;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if ActiveFrame <> nil then
    ActiveFrame.LookAndFeelChanged;
end;

type
  TdxNavBarItemViewInfoAccess = class(TdxNavBarCustomItemViewInfo);

procedure TfrmMain.NavBarOnCustomDrawGroupCaption(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarGroupViewInfo;
  var AHandled: Boolean);
var
  AcxCanvas: TcxCanvas;
  R: TRect;
begin
  AcxCanvas := TcxCanvas.Create(ACanvas);
  try
    R := AViewInfo.CaptionRect;
    AViewInfo.Painter.DrawGroupCaptionText(AViewInfo);
    NavBar.LookAndFeel.Painter.DrawSeparator(AcxCanvas, cxRectSetBottom(R, R.Bottom - 1, 1), False);
    TdxNavBarItemViewInfoAccess(AViewInfo).FFocusRect := cxNullRect;
  finally
    AHandled := True;
    AcxCanvas.Free;
  end;
end;

procedure TfrmMain.NavBarOnCustomDrawLink(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarLinkViewInfo;
  var AHandled: Boolean);
begin
  TdxNavBarItemViewInfoAccess(AViewInfo).FFocusRect := cxNullRect;
end;

function TfrmMain.GetActiveFrame: TdxGanttControlBaseDemoForm;
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

function TfrmMain.GetActiveGanttControl: TdxCustomGanttControl;
begin
  Result := nil;
  if ActiveFrame <> nil then
    Result := ActiveFrame.dxGanttControl;
end;

procedure TfrmMain.SelectUnit(AUnit: TdxGanttControlDemoUnitInfo);
var
  APrevUnit: TdxGanttControlDemoUnitInfo;
begin
  if DemoUnit = AUnit then Exit;
  APrevUnit := FDemoUnit;
  FDemoUnit := AUnit;
  if DemoUnit <> nil then
    DemoUnit.SetParent(pnGanttControlSite);
  if APrevUnit <> nil then
    APrevUnit.SetParent(nil);
  DemoUnitChanged;
  dxComponentPrinter.CurrentLink := GetActiveReportLink;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TdxGanttControlDemoUnitInfo;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
  begin
    DemoUnit := ADemo;
    SynchronizeMenuItems;
  end;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  ActiveFrame.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.SwitchDemoCustomPropertiesSetup;
begin
  inherited SwitchDemoCustomPropertiesSetup;
  biCustomProperties.Enabled := ActiveFrame.NeedCustomProperties;
  ActiveFrame.ShowSetup := biCustomProperties.Enabled and biCustomProperties.Down;
end;

procedure TfrmMain.SynchronizeMenuItems;
begin
  actDeleteConfirmationExecute(nil);
  actDirectXExecute(nil);
  SwitchDemoCustomPropertiesSetup;
  barFile.Visible := ActiveFrameID in [dxSoftwareDevelopmentDemoID, dxExtendedAttributesDemoID, dxBaselinesDemoID];
end;

initialization
  dxMegaDemoProductIndex := dxGanttControlIndex;
  ADemoUnits := TcxObjectList.Create();
  UseLatestCommonDialogs := False;

finalization
  ADemoUnits.Free;

end.
