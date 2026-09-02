unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxBar, dxBarApplicationMenu,
  dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore, dxBarExtItems, dxRibbonGallery,
  dxSkinChooserGallery, cxLabel, cxTextEdit, dxNavBar, dxStatusBar, Vcl.ExtCtrls,
  cxSplitter, cxClasses, cxCustomPivotGrid, cxExportPivotGridLink,
  cxPivotBaseFormUnit, cxCustomPivotBaseFormUnit,
  dxGDIPlusClasses, dxDemoUtils, dxPScxCommon, dxNavBarCollns, dxNavBarBase,
  Vcl.ImgList, Vcl.ActnList, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, dxRibbonCustomizationForm, dxScreenTip, dxCustomHint, cxHint, cxImageList, cxImage,
  Vcl.Menus, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, dxNavBarStyles, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBevel, cxGroupBox, dxRibbonBackstageView, System.Actions,
  dxCore, cxGeometry, dxFramedControl, dxShellDialogs, dxPanel;

type
  TcxPivotGridDemoUnitInfo = class;
  TcxPivotGridAccess = class(TcxCustomPivotGrid);
  TcxPivotGridViewInfoAccess = class(TcxPivotGridViewInfo);

  TfrmMain = class(TfrmMainBase)
    nbgSampleReports: TdxNavBarGroup;
    nbiCustomerReports: TdxNavBarItem;
    nbiOrderReports: TdxNavBarItem;
    nbiProductReports: TdxNavBarItem;
    nbiSingleTotal: TdxNavBarItem;
    nbiMultipleTotals: TdxNavBarItem;
    nbiTotalsLocation: TdxNavBarItem;
    nbiSortBySummary: TdxNavBarItem;
    nbiTopValues: TdxNavBarItem;
    nbiIntervalGrouping: TdxNavBarItem;
    nbiFieldsCustomization: TdxNavBarItem;
    nbiGroups: TdxNavBarItem;
    nbgSummary: TdxNavBarGroup;
    nbiCustomDraw: TdxNavBarItem;
    nbiHTML: TdxNavBarItem;
    nbiXML: TdxNavBarItem;
    nbiExcel: TdxNavBarItem;
    nbiText: TdxNavBarItem;
    nbiStyles: TdxNavBarItem;
    nbiPrintPreview: TdxNavBarItem;
    nbiPageSetup: TdxNavBarItem;
    nbiPrint: TdxNavBarItem;
    nbiSummaryVariation: TdxNavBarItem;
    nbiChartConnection: TdxNavBarItem;
    nbgHighlighted: TdxNavBarGroup;
    nbiPrefilter: TdxNavBarItem;
    nbiInplaceEditors: TdxNavBarItem;
    nbiOLAPBrowser: TdxNavBarItem;
    nbiSummaryDataset: TdxNavBarItem;
    nbDataShaping: TdxNavBarGroup;
    nbOLAPFeatures: TdxNavBarGroup;
    nbAppearance: TdxNavBarGroup;
    nbiOLAPDrillDown: TdxNavBarItem;
    nbiOLAPMultipleTotals: TdxNavBarItem;
    nbgEditing: TdxNavBarGroup;
    nbgCharts: TdxNavBarGroup;
    nbiCompactLayout: TdxNavBarItem;
    dxComponentPrinterPivotReportLink: TcxPivotGridReportLink;
    imgLinkImages: TcxImageList;
    bsiOptionsView: TdxBarSubItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    biShowColumnTotals: TdxBarButton;
    biShowRowTotals: TdxBarButton;
    biShowTotalsForSingleValue: TdxBarButton;
    biShowGrandTotalsForSingleValue: TdxBarButton;
    biShowColumnGrandTotals: TdxBarButton;
    biShowRowGrandTotals: TdxBarButton;
    biShowColumnFields: TdxBarButton;
    biShowFilterFields: TdxBarButton;
    biShowDataFields: TdxBarButton;
    biShowFilterSeparator: TdxBarButton;
    biShowRowFields: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    biColumnFar: TdxBarButton;
    biColumnNear: TdxBarButton;
    biRowFar: TdxBarButton;
    biRowNear: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    biCrossCells: TdxBarButton;
    biGrandTotalsCells: TdxBarButton;
    biTotalsCells: TdxBarButton;
    biMultiSelect: TdxBarButton;
    biHideFocus: TdxBarButton;
    biHideSelection: TdxBarButton;
    biRowTree: TdxBarButton;
    bsiLockedStateImage: TdxBarSubItem;
    bsiLockedStateImageMode: TdxBarSubItem;
    bsiLockedStateImageEffect: TdxBarSubItem;
    bbLockedStateImageModeNever: TdxBarButton;
    bbLockedStateImageModePending: TdxBarButton;
    bbLockedStateImageModeImmediate: TdxBarButton;
    bbLockedStateImageEffectLight: TdxBarButton;
    bbLockedStateImageEffectDark: TdxBarButton;
    nbiRuntimeSummaryChange: TdxNavBarItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OnTotalsVisibilityItemClick(Sender: TObject);
    procedure OnItemVisibilityClick(Sender: TObject);
    procedure biSelectionOptionsClick(Sender: TObject);
    procedure biTotalsLocationClick(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure LockedViewImageClick(Sender: TObject);
  private
    FDemoUnit: TcxPivotGridDemoUnitInfo;
    function GetActiveFrameID: Integer;
    function GetActiveFrameHasOptions: Boolean;
    function GetActivePivotGrid: TcxCustomPivotGrid;
    procedure SelectUnit(AUnit: TcxPivotGridDemoUnitInfo);
    procedure SetActiveFrameID(AValue: Integer);
    procedure SynchronizeMenuItems;
    procedure SynchronizeFrameChoosers(AFrameID: Integer);
  protected
    LockUpdate: Boolean;
    procedure ActivateDemo(AID: Integer); override;
    procedure DemoUnitChanged;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function GetActiveObject: TPersistent; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    procedure LookAndFeelChanged; override;
    procedure SwitchFullWindowMode; override;
    procedure SwitchDemoCustomPropertiesSetup; override;
    procedure SyncSelectionOptionsWithMenu;
    procedure SyncMenuWithSelectionOptions;
    procedure SyncTotalsVisibilityWithMenu;
    procedure SyncMenuWithTotalsVisibility;
    procedure SyncItemsVisibilityWithMenu;
    procedure SyncMenuWithItemsVisibility;
    procedure SyncMenuWithOptionsLockedStateImage;
  public
    destructor Destroy; override;
    function FindDemoByID(ID: Integer; out ADemo: TcxPivotGridDemoUnitInfo): Boolean;

    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property ActiveFrameHasOptions: Boolean read GetActiveFrameHasOptions;
    property ActivePivotGrid: TcxCustomPivotGrid read GetActivePivotGrid;
    property DemoUnit: TcxPivotGridDemoUnitInfo read FDemoUnit write SelectUnit;
  end;

  { TcxPivotGridDemoUnitInfo }

  TcxPivotGridDemoUnitInfo = class
  protected
    UnitClass: TcxCustomPivotGridDemoUnitFormClass;
    UnitInstance: TcxCustomPivotGridDemoUnitForm;
  public
    constructor Create(AClass: TcxCustomPivotGridDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
  end;

var
  frmMain: TfrmMain;

procedure cxPivotGridRegisterDemoUnit(ADemoClass: TcxCustomPivotGridDemoUnitFormClass);

implementation

{$R *.dfm}

uses
  Winapi.ShellAPI, dxSkinsLookAndFeelPainter, dxSkinsStrs, dxNavBarConsts;

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);

var
  ADemoUnits: TcxObjectList;

procedure cxPivotGridRegisterDemoUnit(ADemoClass: TcxCustomPivotGridDemoUnitFormClass);
var
  ADemoInfo: TcxPivotGridDemoUnitInfo;
begin
  ADemoInfo := TcxPivotGridDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{  TcxPivotGridDemoUnitInfo }

constructor TcxPivotGridDemoUnitInfo.Create(AClass: TcxCustomPivotGridDemoUnitFormClass);
begin
  UnitClass := AClass;
end;

destructor TcxPivotGridDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

procedure TcxPivotGridDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
  end;
  if (AParent <> nil) and (UnitInstance.PivotGrid <> nil) then
    UnitInstance.PivotGrid.BeginUpdate;
  if AParent = nil then
    FreeAndNil(UnitInstance)
  else
  begin
    if UnitInstance <> nil then
      UnitInstance.Parent := AParent;
    try
      UnitInstance.ActivateDataSet;
    finally
      UnitInstance.SendToBack;
      UnitInstance.Visible := True;
      if UnitInstance.PivotGrid <> nil then
      begin
        UnitInstance.PivotGrid.EndUpdate;
        TcxPivotGridViewInfoAccess(TcxPivotGridAccess(UnitInstance.PivotGrid).ViewInfo).BeforePaint;
      end;
      UnitInstance.BringToFront;
      UnitInstance.FrameActivated;
    end;
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
  ActiveFrameID := 7;
  SynchronizeFrameChoosers(ActiveFrameID);
  SynchronizeFrameNavigation(ActiveFrameID);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  DemoUnit := nil;
  inherited;
end;

procedure TfrmMain.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if (ActiveControl = ActivePivotGrid) and (GetKeyState(VK_CONTROL) < 0) and (Msg.CharCode = VK_INSERT) then
  begin
    ActivePivotGrid.CopyToClipboard(False, True, True, True);
    Msg.Result := 1;
  end;
end;

function TfrmMain.FindDemoByID(
  ID: Integer; out ADemo: TcxPivotGridDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TcxPivotGridDemoUnitInfo(ADemoUnits[I]);
    if ID = ADemo.UnitClass.GetID then
      Exit;
  end;
  Result := False;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  ActiveFrameID := AID;
end;

procedure TfrmMain.biSelectionOptionsClick(Sender: TObject);
begin
  if LockUpdate then
    Exit;
  SyncSelectionOptionsWithMenu;
end;

procedure TfrmMain.biTotalsLocationClick(Sender: TObject);
begin
  if LockUpdate then
    Exit;
  SyncTotalsVisibilityWithMenu;
end;

procedure TfrmMain.DemoUnitChanged;
begin
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  LockUpdate := True;
  UpdateInspectedObject;
  if ActivePivotGrid <> nil then
  begin
    ActivePivotGrid.BeginUpdate;
    try
      SyncMenuWithTotalsVisibility;
      SyncMenuWithItemsVisibility;
      SyncMenuWithSelectionOptions;
      SyncMenuWithOptionsLockedStateImage;
    finally
      LockUpdate := False;
      ActivePivotGrid.EndUpdate;
    end;
  end;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  case AExportType of
    exHTML:
      cxExportPivotGridToHtml(AFileName, ActivePivotGrid, True, '', AHandler);
    exXML:
      cxExportPivotGridToXML(AFileName, ActivePivotGrid, True, '', AHandler);
    exExcel97:
      cxExportPivotGridToExcel(AFileName, ActivePivotGrid, True, True, '', AHandler);
    exExcel:
      cxExportPivotGridToXLSX(AFileName, ActivePivotGrid, True, True, '', AHandler);
    exText:
      cxExportPivotGridToText(AFileName, ActivePivotGrid, True, '', AHandler);
  else //exPDF
    // do nothing
  end;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := ActivePivotGrid;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  Result := dxComponentPrinterPivotReportLink;
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
  Result := 'EPivotGrid';
end;

procedure TfrmMain.LockedViewImageClick(Sender: TObject);
var
  ATag: Integer;
begin
  ATag := TComponent(Sender).Tag;
  case ATag of
    0, 1, 2:
      ActivePivotGrid.OptionsLockedStateImage.Mode := TcxLockedStateImageShowingMode(ATag);
    3, 4:
      ActivePivotGrid.OptionsLockedStateImage.Effect := TcxLockedStateImageEffect(ATag - 2);
  end;
  SyncMenuWithOptionsLockedStateImage;
end;

procedure TfrmMain.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  if DemoUnit <> nil then
    DemoUnit.UnitInstance.LookAndFeelChanged;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  DemoUnit.UnitInstance.SwitchFullWindowMode(FullWindowModeOn);
end;

procedure TfrmMain.SwitchDemoCustomPropertiesSetup;
begin
  inherited SwitchDemoCustomPropertiesSetup;
  DemoUnit.UnitInstance.ShowSetup := biCustomProperties.Down;
end;

procedure TfrmMain.SyncSelectionOptionsWithMenu;
var
  AIncludeCells: TcxPivotGridOptionsSelectionIncludes;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsSelection do
  begin
    AIncludeCells := [];
    if biCrossCells.Down then
      AIncludeCells := AIncludeCells + [osiCrossCells];
    if biGrandTotalsCells.Down then
      AIncludeCells := AIncludeCells + [osiGrandTotalCells];
    if biTotalsCells.Down then
      AIncludeCells := AIncludeCells + [osiTotalCells];
    IncludeCells := AIncludeCells;
    MultiSelect := biMultiSelect.Down;
    HideFocusRect := biHideFocus.Down;
    HideSelection := biHideSelection.Down;
  end;
end;

procedure TfrmMain.SyncMenuWithSelectionOptions;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsSelection do
  begin
    biCrossCells.Down := osiCrossCells in IncludeCells;
    biGrandTotalsCells.Down := osiGrandTotalCells in IncludeCells;
    biTotalsCells.Down := osiGrandTotalCells in IncludeCells;
    biMultiSelect.Down := MultiSelect;
    biHideFocus.Down := HideFocusRect;
    biHideSelection.Down := HideSelection;
  end;
end;

procedure TfrmMain.SyncTotalsVisibilityWithMenu;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsView do
  begin
    ColumnTotals := biShowColumnTotals.Down;
    RowTotals := biShowRowTotals.Down;
    TotalsForSingleValues := biShowTotalsForSingleValue.Down;
    GrandTotalsForSingleValues := biShowGrandTotalsForSingleValue.Down;
    ColumnGrandTotals := biShowColumnGrandTotals.Down;
    RowGrandTotals := biShowRowGrandTotals.Down;
    ColumnTotalsLocation := TcxPivotGridColumnTotalsLocation(biColumnNear.Down);
    RowTotalsLocation := TcxPivotGridRowTotalsLocation(Byte(biRowNear.Down) + Byte(biRowTree.Down) * 2);
  end;
end;

procedure TfrmMain.SyncMenuWithTotalsVisibility;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsView do
  begin
    biShowColumnTotals.Down := ColumnTotals;
    biShowRowTotals.Down := RowTotals;
    biShowTotalsForSingleValue.Down := TotalsForSingleValues;
    biShowGrandTotalsForSingleValue.Down := GrandTotalsForSingleValues;
    biShowColumnGrandTotals.Down := ColumnGrandTotals;
    biShowRowGrandTotals.Down := RowGrandTotals;
    biColumnNear.Down := ColumnTotalsLocation = ctlNear;
    biColumnFar.Down := ColumnTotalsLocation = ctlFar;
    biRowNear.Down := RowTotalsLocation = rtlNear;
    biRowFar.Down := RowTotalsLocation = rtlFar;
    biRowTree.Down := RowTotalsLocation = rtlTree;
  end;
end;

procedure TfrmMain.SyncItemsVisibilityWithMenu;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsView do
  begin
    ColumnFields := biShowColumnFields.Down;
    DataFields := biShowDataFields.Down;
    FilterFields := biShowFilterFields.Down;
    FilterSeparator := biShowFilterSeparator.Down;
    RowFields := biShowRowFields.Down;
  end;
end;

procedure TfrmMain.SyncMenuWithItemsVisibility;
begin
  if ActivePivotGrid  = nil then
    Exit;
  with ActivePivotGrid.OptionsView do
  begin
    biShowColumnFields.Down := ColumnFields;
    biShowDataFields.Down := DataFields;
    biShowFilterFields.Down := FilterFields;
    biShowFilterSeparator.Down := FilterSeparator;
    biShowRowFields.Down := RowFields;
  end;
end;

procedure TfrmMain.SyncMenuWithOptionsLockedStateImage;
var
  AOptionsLockedStateImage: TcxPivotGridOptionsLockedStateImage;
begin
  AOptionsLockedStateImage := ActivePivotGrid.OptionsLockedStateImage;
  AOptionsLockedStateImage.ShowText := True;
  bbLockedStateImageModeNever.Down := AOptionsLockedStateImage.Mode = lsimNever;
  bbLockedStateImageModePending.Down := AOptionsLockedStateImage.Mode = lsimPending;
  bbLockedStateImageModeImmediate.Down := AOptionsLockedStateImage.Mode = lsimImmediate;
  bbLockedStateImageEffectLight.Down := AOptionsLockedStateImage.Effect = lsieLight;
  bbLockedStateImageEffectDark.Down := AOptionsLockedStateImage.Effect = lsieDark;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitClass.GetID
  else
    Result := -MaxInt;
end;

function TfrmMain.GetActiveFrameHasOptions: Boolean;
begin
  Result := (DemoUnit <> nil) and (DemoUnit.UnitInstance <> nil) and DemoUnit.UnitInstance.HasOptions;
end;

function TfrmMain.GetActivePivotGrid: TcxCustomPivotGrid;
begin
  Result := nil;
  if (DemoUnit <> nil) and (DemoUnit.UnitInstance <> nil) then
    Result := DemoUnit.UnitInstance.PivotGrid;
end;

procedure TfrmMain.OnItemVisibilityClick(Sender: TObject);
begin
  if LockUpdate then
    Exit;
  SyncItemsVisibilityWithMenu;
end;

procedure TfrmMain.OnTotalsVisibilityItemClick(Sender: TObject);
begin
  if LockUpdate then
    Exit;
  SyncTotalsVisibilityWithMenu;
end;

procedure TfrmMain.SelectUnit(AUnit: TcxPivotGridDemoUnitInfo);
var
  APrevUnit: TcxPivotGridDemoUnitInfo;
begin
  if DemoUnit = AUnit then
    Exit;
  APrevUnit := FDemoUnit;
  try
    if AUnit <> nil then
      AUnit.SetParent(plClient);
  finally
    FDemoUnit := AUnit;
    if APrevUnit <> nil then
      APrevUnit.SetParent(nil);
    if FDemoUnit <> nil then
      dxComponentPrinterPivotReportLink.Component := AUnit.UnitInstance.PivotGrid
    else
      dxComponentPrinterPivotReportLink.Component := nil;
    SynchronizeMenuItems;
    DemoUnitChanged;
  end;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TcxPivotGridDemoUnitInfo;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
    DemoUnit := ADemo;
end;

procedure TfrmMain.SynchronizeMenuItems;
const
  AVisible: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);
begin
  UpdateBaseMenuOptions;
  biFullWindowMode.Visible := AVisible[ActivePivotGrid <> nil];
  biCustomProperties.Visible := AVisible[ActiveFrameHasOptions];
  bsiOptionsView.Visible := AVisible[ActivePivotGrid <> nil];
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
  if not CheckSelectedLink(nbgHighlighted) then
    for AGroupIndex := 0 to NavBar.Groups.Count - 1 do
      if (AGroupIndex <> nbgHighlighted.Index) and CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
        Break;
end;

initialization
  dxMegaDemoProductIndex := dxPivotGridIndex;
  ADemoUnits := TcxObjectList.Create();

finalization
  ADemoUnits.Free;

end.
