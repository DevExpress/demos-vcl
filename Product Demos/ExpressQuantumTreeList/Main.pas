unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs,
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
  cxTL, cxDBTL, cxTLData, dxDemoBaseMainForm, cxCustomTreeListBaseFormUnit, dxDemoUtils,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxRibbonCustomizationForm,
  dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage, Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons,
  dxNavBarStyles, dxGalleryControl, dxRibbonBackstageViewGalleryControl, cxGeometry, dxCore, dxBevel,
  dxRibbonBackstageView, dxSkinsCore, System.Actions, System.ImageList, dxFramedControl,
  dxShellDialogs, dxPanel;

type
  TcxTreeListDemoUnitInfo = class;

  TfrmMain = class(TfrmMainBase)
    pnTreeListSite: TcxGroupBox;
    imgExplorer: TImageList;
    ilNavBar: TcxImageList;
    nbgNew: TdxNavBarGroup;
    nbgOld: TdxNavBarGroup;
    nbiHTML: TdxNavBarItem;
    nbiXML: TdxNavBarItem;
    nbiExcel: TdxNavBarItem;
    nbiText: TdxNavBarItem;
    nbiPrint: TdxNavBarItem;
    nbiPrintPreview: TdxNavBarItem;
    nbiPageSetup: TdxNavBarItem;
    nbiNestedBands: TdxNavBarItem;
    nbiExpandableBands: TdxNavBarItem;
    nbiQuickVisibilityCustomization: TdxNavBarItem;
    nbiGroupSummary: TdxNavBarItem;
    nbiMultipleFixedBands: TdxNavBarItem;
    nbiMultipleSummary: TdxNavBarItem;
    nbiSummaryCalculationBase: TdxNavBarItem;
    nbiImages: TdxNavBarItem;
    nbiDifferentSizesOfImages: TdxNavBarItem;
    nbiNodeHeight: TdxNavBarItem;
    nbiNodeVisibility: TdxNavBarItem;
    nbiExplorer: TdxNavBarItem;
    nbiDragAndDrop: TdxNavBarItem;
    nbiProviderMode: TdxNavBarItem;
    nbiIniEditor: TdxNavBarItem;
    nbiInplaceEditors: TdxNavBarItem;
    nbiCustomDraw: TdxNavBarItem;
    nbiCheckGroups: TdxNavBarItem;
    nbiStyles: TdxNavBarItem;
    nbiMenus: TdxNavBarItem;
    nbiPreview: TdxNavBarItem;
    nbiFullVirtual: TdxNavBarItem;
    nbiSearch: TdxNavBarItem;
    nbiInplaceEditorsValidation: TdxNavBarItem;
    bbShowIndicator: TdxBarButton;
    bbShowRoot: TdxBarButton;
    bsiGridLines: TdxBarSubItem;
    bbGridLinesNone: TdxBarButton;
    bbGridLinesHorizontal: TdxBarButton;
    bbGridLinesVertical: TdxBarButton;
    bbGridLinesBoth: TdxBarButton;
    bsiOptionsView: TdxBarSubItem;
    nbiConditionalFormatting: TdxNavBarItem;
    nbiFilterControl: TdxNavBarItem;
    nbiFilterDropdowns: TdxNavBarItem;
    nbiExcelStyleFiltering: TdxNavBarItem;
    nbiCalculatedFields: TdxNavBarItem;
    nbScrollbarAnnotations: TdxNavBarItem;
    nbiFilterExpression: TdxNavBarItem;
    nbgFiltering: TdxNavBarGroup;
    nbgSummary: TdxNavBarGroup;
    nbgBands: TdxNavBarGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bbShowIndicatorClick(Sender: TObject);
    procedure bbShowRootClick(Sender: TObject);
    procedure bbGridLinesClick(Sender: TObject);
    procedure NavBarOnCustomDrawGroupCaption(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarGroupViewInfo;
      var AHandled: Boolean);
    procedure NavBarOnCustomDrawLink(Sender: TObject; ACanvas: TCanvas; AViewInfo: TdxNavBarLinkViewInfo;
      var AHandled: Boolean);
  private
    FDemoUnit: TcxTreeListDemoUnitInfo;
    function GetActiveFrame: TcxCustomTreeListDemoUnitForm;
    function GetActiveFrameID: Integer;
    function GetActiveTreeList: TcxCustomTreeList;
    procedure SelectUnit(AUnit: TcxTreeListDemoUnitInfo);
    procedure SetActiveFrameID(AValue: Integer);
    procedure SynchronizeMenuItems;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure DemoUnitChanged;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function GetActiveObject: TPersistent; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    procedure InspectedObjectChanged(ASender: TObject); override;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;
    procedure SwitchDemoCustomPropertiesSetup; override;

    property ActiveFrame: TcxCustomTreeListDemoUnitForm read GetActiveFrame;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TcxTreeListDemoUnitInfo): Boolean;
    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property ActiveTreeList: TcxCustomTreeList read GetActiveTreeList;
    property DemoCaption: string read GetDemoCaption;
    property DemoUnit: TcxTreeListDemoUnitInfo read FDemoUnit write SelectUnit;
  end;

  TcxTreeListDemoUnitInfo = class
  protected
    UnitClass: TcxCustomTreeListDemoUnitFormClass;
    UnitInstance: TcxCustomTreeListDemoUnitForm;
  public
    constructor Create(AClass: TcxCustomTreeListDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
  end;

var
  frmMain: TfrmMain;

procedure cxTreeListRegisterDemoUnit(ADemoClass: TcxCustomTreeListDemoUnitFormClass);

implementation

{$R *.dfm}
{$R 'About.res'}

uses
  Winapi.ShellAPI, cxTLExportLink, dxNavBarConsts, dxSkinInfo, dxSkinsStrs;

type
  TcxTreeListViewInfoAccess = class(TcxTreeListViewInfo);
  TcxCustomTreeListAccess = class(TcxCustomTreeList);
  TcxCustomControlControllerAccess = class(TcxCustomControlController);
  TdxSkinLookAndFeelPainterInfo = class(TdxSkinInfo);

var
  ADemoUnits: TcxObjectList;
  FImageListHandle: Cardinal;
  AInfo: TSHFileInfo;

procedure cxTreeListRegisterDemoUnit(ADemoClass: TcxCustomTreeListDemoUnitFormClass);
var
  ADemoInfo: TcxTreeListDemoUnitInfo;
begin
  ADemoInfo := TcxTreeListDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TcxTreeListDemoUnitInfo }

constructor TcxTreeListDemoUnitInfo.Create(AClass: TcxCustomTreeListDemoUnitFormClass);
begin
  UnitClass := AClass;
end;

destructor TcxTreeListDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

procedure TcxTreeListDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
    if UnitInstance.TreeList <> nil then
      UnitInstance.TreeList.Styles.UseOddEvenStyles := bFalse;
  end;
  if (AParent <> nil) and (UnitInstance.TreeList <> nil) then
    UnitInstance.TreeList.BeginUpdate;
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    if UnitInstance <> nil then
      UnitInstance.Parent := AParent;
    UnitInstance.ActivateDataSet;
    UnitInstance.SendToBack;
    UnitInstance.Visible := True;
    if UnitInstance.TreeList <> nil then
    begin
      UnitInstance.TreeList.EndUpdate;
      TcxCustomControlControllerAccess(TcxCustomTreeListAccess(UnitInstance.TreeList).Controller).BeforePaint;
    end;
    UnitInstance.BringToFront;
    UnitInstance.FrameActivated;
  end;
end;

{ TfrmMain }

destructor TfrmMain.Destroy;
begin
  DemoUnit.SetParent(nil);
  inherited Destroy;
end;

function TfrmMain.FindDemoByID(ID: Integer; out ADemo: TcxTreeListDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TcxTreeListDemoUnitInfo(ADemoUnits[I]);
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
{  Navbar.Groups[0].Links[0].Selected := True;
  if Assigned(Navbar.Groups[0].Links[0].Item.OnClick);
  ActiveFrameID := .Item.Tag;                         }
  FImageListHandle := SHGetFileInfo('C:\', 0, AInfo, SizeOf(AInfo), SHGFI_SYSICONINDEX or SHGFI_LARGEICON);
  imgExplorer.Handle := FImageListHandle;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  DemoUnit := nil;
  imgExplorer.Handle := 0;
  DestroyIcon(AInfo.hIcon);
  FreeResource(FImageListHandle);
  inherited;
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
  biFullWindowMode.Visible := AVisible[ActiveTreeList <> nil];
end;

procedure TfrmMain.bbGridLinesClick(Sender: TObject);
begin
  if ActiveTreeList <> nil then
  begin
    case TComponent(Sender).Tag of
      0: ActiveTreeList.OptionsView.GridLines := tlglNone;
      1: ActiveTreeList.OptionsView.GridLines := tlglHorz;
      2: ActiveTreeList.OptionsView.GridLines := tlglVert;
      3: ActiveTreeList.OptionsView.GridLines := tlglBoth;
    end;
    SynchronizeMenuItems;
  end;
end;

procedure TfrmMain.bbShowIndicatorClick(Sender: TObject);
begin
  if ActiveTreeList <> nil then
  begin
    ActiveTreeList.OptionsView.Indicator := not ActiveTreeList.OptionsView.Indicator;
    SynchronizeMenuItems;
  end;
end;

procedure TfrmMain.bbShowRootClick(Sender: TObject);
begin
  if ActiveTreeList <> nil then
  begin
    ActiveTreeList.OptionsView.ShowRoot := not ActiveTreeList.OptionsView.ShowRoot;
    SynchronizeMenuItems;
  end;
end;

procedure TfrmMain.DemoUnitChanged;
begin
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  UpdateInspectedObject;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  case AExportType of
    exHTML:
      cxExportTLToHtml(AFileName, ActiveTreeList, True, True, '', AHandler);
    exXML:
      cxExportTLToXML(AFileName, ActiveTreeList, True, True, '', AHandler);
    exExcel97:
      cxExportTLToExcel(AFileName, ActiveTreeList, True, True, True, '', AHandler);
    exExcel:
      cxExportTLToXLSX(AFileName, ActiveTreeList, True, True, True, '', AHandler);
    exText:
      cxExportTLToText(AFileName, ActiveTreeList, True, True, '', AHandler);
  else //exPDF
    // do nothing
  end;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := ActiveTreeList;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  Result := dxComponentPrinter.FindLinkByComponent(ActiveTreeList, True);
end;

function TfrmMain.GetDemoCaption: string;
begin
  if DemoUnit <> nil then
    Result := GetCaptionWithoutAmpersand(DemoUnit.UnitInstance.Caption)
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.GetExportFileName: string;
begin
  Result := 'ETreeList';
end;

procedure TfrmMain.InspectedObjectChanged(ASender: TObject);
begin
  DemoUnit.UnitInstance.DoInspectedObjectChanged;
  SynchronizeMenuItems;
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

function TfrmMain.GetActiveFrame: TcxCustomTreeListDemoUnitForm;
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

function TfrmMain.GetActiveTreeList: TcxCustomTreeList;
begin
  Result := nil;
  if ActiveFrame <> nil then
    Result := ActiveFrame.TreeList;
end;

procedure TfrmMain.SelectUnit(AUnit: TcxTreeListDemoUnitInfo);
var
  APrevUnit: TcxTreeListDemoUnitInfo;
begin
  if DemoUnit = AUnit then Exit;
  APrevUnit := FDemoUnit;
  FDemoUnit := AUnit;
  if DemoUnit <> nil then
    DemoUnit.SetParent(pnTreeListSite);
  if APrevUnit <> nil then
    APrevUnit.SetParent(nil);
  SynchronizeMenuItems;
  DemoUnitChanged;
  dxComponentPrinter.CurrentLink := GetActiveReportLink;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TcxTreeListDemoUnitInfo;
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
  ActiveFrame.ShowSetup := biCustomProperties.Down;
end;

procedure TfrmMain.SynchronizeMenuItems;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  UpdateBaseMenuOptions;
  bsiOptionsView.Visible := AVisible[ActiveTreeList <> nil];
  bbShowIndicator.Down := (ActiveTreeList <> nil) and ActiveTreeList.OptionsView.Indicator;
  bbShowRoot.Down := (ActiveTreeList <> nil) and ActiveTreeList.OptionsView.ShowRoot;
  if ActiveTreeList <> nil then
    case ActiveTreeList.OptionsView.GridLines of
      tlglNone: bbGridLinesNone.Down := True;
      tlglHorz: bbGridLinesHorizontal.Down := True;
      tlglVert: bbGridLinesVertical.Down := True;
      tlglBoth: bbGridLinesBoth.Down := True;
    end
  else
    NavBar.DeSelectLinks;
end;

initialization
  dxMegaDemoProductIndex := dxTreeListIndex;
  ADemoUnits := TcxObjectList.Create();

finalization
  ADemoUnits.Free;

end.
