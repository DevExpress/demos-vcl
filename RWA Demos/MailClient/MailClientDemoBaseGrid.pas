unit MailClientDemoBaseGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.Types,
  Vcl.Dialogs, Vcl.ExtCtrls, dxCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxSplitter,
  cxTextEdit, cxMemo, cxRichEdit, cxGridDBDataDefinitions, cxLabel, dxBar,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxBevel,
  MailClientDemoBase, dxLayoutControlAdapters, cxMRUEdit,
  dxSkinsdxBarPainter, Vcl.ActnList, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxRibbonPainter, dxPSCore,
  MailClientDemoData, dxPScxExtComCtrlsLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxSchedulerLnk, dxLayoutLookAndFeels, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, cxGeometry, dxFramedControl,
  dxPanel;

type
  TMailClientDemoBaseGridFrame = class(TMailClientDemoBaseFrame)
    AutoSearchTimer: TTimer;
    lcgRich: TdxLayoutGroup;
    lblSubject: TcxLabel;
    lciSubject: TdxLayoutItem;
    lcgContentCaption: TdxLayoutGroup;
    lciRich: TdxLayoutItem;
    cxreMain: TcxRichEdit;
    lciFrom: TdxLayoutLabeledItem;
    lciDate: TdxLayoutLabeledItem;
    actLayoutFlip: TAction;
    actLayoutRotate: TAction;
    lcgRoot: TdxLayoutGroup;
    lcBase: TdxLayoutControl;
    PanelGrid: TdxPanel;
    PanelFilter: TdxPanel;
    PanelButtons: TdxPanel;
    cxbSearch: TcxButton;
    cxbSearchClear: TcxButton;
    PanelSearch: TdxPanel;
    mrueSearch: TcxMRUEdit;
    grMain: TcxGrid;
    tvMain: TcxGridDBTableView;
    grMainLevel1: TcxGridLevel;
    lciGrid: TdxLayoutItem;
    lcgMain: TdxLayoutGroup;
    lciNavBar: TdxLayoutItem;
    procedure cxbSearchClick(Sender: TObject);
    procedure cxbSearchClearClick(Sender: TObject);
    procedure AutoSearchTimerTimer(Sender: TObject);
    procedure mrueSearchPropertiesChange(Sender: TObject);
    procedure tvMainDataControllerDataChanged(Sender: TObject);
    procedure actLayoutFlipExecute(Sender: TObject);
    procedure actLayoutRotateExecute(Sender: TObject);
    procedure cxreMainPropertiesURLClick(Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
  private
    FLockFilter: Boolean;
    procedure ClearLikeFilter;
    procedure SetClearButtonEnabled;
  protected
    procedure AddLikeCondition(AItemList: TcxFilterCriteriaItemList; AColumn: TcxCustomGridTableItem; const ALike: string);
    procedure AddLikeFilter; virtual;
    procedure AfterActivate; override;
    procedure CalculateItemsCount; virtual;
    function CustomDrawImageOnCell(ACellViewInfo: TcxGridTableDataCellViewInfo; ACanvas: TcxCanvas;
      AImageList: TcxImageList; ANeedImages: array of Integer; const ANeedIndex: Integer): Boolean;
    procedure ExportToHTML(const AFileName: string); override;
    procedure ExportToXLS(const AFileName: string); override;
    procedure ExportToXLSX(const AFileName: string); override;
    procedure ExportToXML(const AFileName: string); override;
    procedure ExportToTXT(const AFileName: string); override;
    function GetController: TcxGridTableController;
    function GetContentZoomPosition: Integer; override;
    function GetCurrentRecordItemValue(const AItemIndex: Integer): Variant;
    function GetDataController: TcxGridDBDataController; virtual;
    function GetDataSet: TDataSet; override;
    function GetViewStyleNormal: Boolean; override;
    procedure RepairLostOwingInheritanceSettings; virtual;
    procedure SetContentZoomPosition(Value: Integer); override;
    procedure SetCurrentRecordItemValue(const AItemIndex: Integer; const AValue: Variant; APostRecord: Boolean = True);
    procedure SetViewStyleNormal(const Value: Boolean); override;
    procedure StopAutoSeekTimer;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ApplyGeneralFilter;
    procedure ExchangeMainGroupsLayout;
    procedure FlipLayout;
    function GetItemCountInfo: string; override;
    procedure RotateLayout;
    procedure Translate; override;

    property Controller: TcxGridTableController read GetController;
    property DataController: TcxGridDBDataController read GetDataController;
  published
    procedure CustomDrawHighlightingCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  end;

var
  MailClientDemoBaseGridFrame: TMailClientDemoBaseGridFrame;

implementation

uses
  System.Math, cxDataUtils, MailClientDemoMain, cxGridExportLink, LocalizationStrs;

{$R *.dfm}

constructor TMailClientDemoBaseGridFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  RepairLostOwingInheritanceSettings;
end;

procedure TMailClientDemoBaseGridFrame.CustomDrawHighlightingCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AFoundText, ACellText: string;
  P: Integer;
begin
  ADone := False;
  if (Trim(mrueSearch.Text) = '') or not (AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo) then Exit;
  AFoundText := AnsiUpperCase(mrueSearch.Text);
  ACellText := AViewInfo.Text;
  P := Pos(AFoundText, AnsiUpperCase(ACellText));
  if P > 0 then
  with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo) do
  begin
    SelStart := P - 1;
    SelLength := Length(AFoundText);
    SelBackgroundColor := RGB(255, 210, 0);
  end;
end;

function TMailClientDemoBaseGridFrame.GetController: TcxGridTableController;
begin
  Result := tvMain.Controller;
end;

function TMailClientDemoBaseGridFrame.GetContentZoomPosition: Integer;
begin
  Result := Trunc(cxreMain.ActiveProperties.ZoomFactor * 100);
end;

function TMailClientDemoBaseGridFrame.GetCurrentRecordItemValue(
  const AItemIndex: Integer): Variant;
begin
  Result := DataController.GetEditValue(AItemIndex, evsValue);
end;

function TMailClientDemoBaseGridFrame.GetDataController: TcxGridDBDataController;
begin
  Result := TcxGridDBDataController(grMain.ActiveView.DataController);
end;

function TMailClientDemoBaseGridFrame.GetDataSet: TDataSet;
begin
  Result := DataController.DataSource.DataSet;
end;

function TMailClientDemoBaseGridFrame.CustomDrawImageOnCell(ACellViewInfo: TcxGridTableDataCellViewInfo;
  ACanvas: TcxCanvas; AImageList: TcxImageList;
  ANeedImages: array of Integer; const ANeedIndex: Integer): Boolean;
begin
  ACanvas.FillRect(ACellViewInfo.Bounds, ACellViewInfo.EditViewInfo.BackgroundColor);
  Result := (ANeedIndex >= Low(ANeedImages)) and (ANeedIndex <= High(ANeedImages));
  if Result then
    TdxImageDrawer.DrawImage(ACanvas, cxRectCenter(ACellViewInfo.Bounds, AImageList.Width, AImageList.Height), nil,
      AImageList, ANeedImages[ANeedIndex], Enabled, RootLookAndFeel.Painter.GridRowColorPalette(cxbsDefault),
      fmMailClientDemoMain.ScaleFactor);
end;

procedure TMailClientDemoBaseGridFrame.ApplyGeneralFilter;
var
  AFilter: TcxDataFilterCriteria;
begin
  if FLockFilter then Exit;

  ShowHourglassCursor;
  try
    FLockFilter := True;
    AFilter := DataController.Filter;
    AFilter.BeginUpdate;
    try
      ClearLikeFilter;
      AddLikeFilter;
      AFilter.Active := True;
    finally
      AFilter.EndUpdate;
      FLockFilter := False;
    end;
  finally
    HideHourglassCursor;
  end;

  StopAutoSeekTimer;
  if grMain.ActiveView = tvMain then
    DataController.Groups.FullExpand;
end;

procedure TMailClientDemoBaseGridFrame.mrueSearchPropertiesChange(Sender: TObject);
begin
  StopAutoSeekTimer;
  AutoSearchTimer.Enabled := True;
  SetClearButtonEnabled;
end;

procedure TMailClientDemoBaseGridFrame.cxbSearchClick(Sender: TObject);
begin
  ApplyGeneralFilter;
end;

procedure TMailClientDemoBaseGridFrame.cxreMainPropertiesURLClick(
  Sender: TcxCustomRichEdit; const URLText: string; Button: TMouseButton);
begin
  dxShellExecute(URLText);
end;

procedure TMailClientDemoBaseGridFrame.cxbSearchClearClick(Sender: TObject);
begin
  mrueSearch.Text := '';
  ApplyGeneralFilter;
end;

procedure TMailClientDemoBaseGridFrame.AutoSearchTimerTimer(Sender: TObject);
begin
  if Trim(mrueSearch.Text) = '' then
    cxbSearchClearClick(Sender)
  else
    cxbSearchClick(Sender);
end;

procedure TMailClientDemoBaseGridFrame.ClearLikeFilter;
var
  I: Integer;
  ARoot: TcxFilterCriteriaItemList;
begin
  ARoot := DataController.Filter.Root;
  for I := ARoot.Count - 1 downto 0 do
  begin
    if ARoot.Items[I] is TcxFilterCriteriaItemList then
      ARoot.Items[I].Free;
  end;
end;

procedure TMailClientDemoBaseGridFrame.actLayoutFlipExecute(Sender: TObject);
begin
  FlipLayout;
end;

procedure TMailClientDemoBaseGridFrame.actLayoutRotateExecute(Sender: TObject);
begin
  RotateLayout;
end;

procedure TMailClientDemoBaseGridFrame.AddLikeCondition(
  AItemList: TcxFilterCriteriaItemList; AColumn: TcxCustomGridTableItem; const ALike: string);
begin
  if AColumn.Visible then
    AItemList.AddItem(AColumn, foLike, '%' + ALike + '%', '"' + ALike + '"');
end;

procedure TMailClientDemoBaseGridFrame.AddLikeFilter;
begin
end;

procedure TMailClientDemoBaseGridFrame.AfterActivate;
begin
  inherited AfterActivate;
  CalculateItemsCount;
  SetClearButtonEnabled;
end;

procedure TMailClientDemoBaseGridFrame.CalculateItemsCount;
begin
  tvMainDataControllerDataChanged(Self);
end;

procedure TMailClientDemoBaseGridFrame.ExchangeMainGroupsLayout;
begin
  if not lcgRich.Visible then
    Exit;
  if lcgRich.Index = 0 then
  begin
    lcgRich.Index := 1;
    lciGrid.Index := 0;
  end
  else
  begin
    lcgRich.Index := 0;
    lciGrid.Index := 1;
  end;
end;

procedure TMailClientDemoBaseGridFrame.ExportToHTML(const AFileName: string);
begin
  ExportGridToHTML(AFileName, grMain);
end;

procedure TMailClientDemoBaseGridFrame.ExportToXLS(const AFileName: string);
begin
  ExportGridToExcel(AFileName, grMain);
end;

procedure TMailClientDemoBaseGridFrame.ExportToXLSX(const AFileName: string);
begin
  ExportGridToXLSX(AFileName, grMain);
end;

procedure TMailClientDemoBaseGridFrame.ExportToXML(const AFileName: string);
begin
  ExportGridToXML(AFileName, grMain);
end;

procedure TMailClientDemoBaseGridFrame.ExportToTXT(const AFileName: string);
begin
  ExportGridToText(AFileName, grMain);
end;

procedure TMailClientDemoBaseGridFrame.FlipLayout;
begin
  ExchangeMainGroupsLayout;
end;

function TMailClientDemoBaseGridFrame.GetItemCountInfo: string;
begin
  Result := Format(cxGetResourceString(@sItemCountInfo), [DataController.FilteredRecordCount]);
end;

function TMailClientDemoBaseGridFrame.GetViewStyleNormal: Boolean;
begin
  Result := lciNavBar.Visible;
end;

procedure TMailClientDemoBaseGridFrame.RepairLostOwingInheritanceSettings;
begin
  lcgRich.LookAndFeel := nil;
  lcgRich.LookAndFeel := lslfMain;
end;

procedure TMailClientDemoBaseGridFrame.RotateLayout;
begin
  if not lcgRich.Visible then
    Exit;
  if lcgMain.LayoutDirection = ldHorizontal then
    lcgMain.LayoutDirection := ldVertical
  else
  begin
    lcgMain.LayoutDirection := ldHorizontal;
    ExchangeMainGroupsLayout;
  end;
end;

procedure TMailClientDemoBaseGridFrame.SetClearButtonEnabled;
begin
  cxbSearchClear.Enabled := mrueSearch.Text <> '';
end;

procedure TMailClientDemoBaseGridFrame.SetCurrentRecordItemValue(
  const AItemIndex: Integer; const AValue: Variant; APostRecord: Boolean = True);
begin
  DataController.SetEditValue(AItemIndex, AValue, evsValue);
  if APostRecord then
    DataController.Post
  else
    DataController.PostEditingData;
end;

procedure TMailClientDemoBaseGridFrame.SetViewStyleNormal(const Value: Boolean);
begin
  inherited;
  lciNavBar.Visible := Value;
end;

procedure TMailClientDemoBaseGridFrame.SetContentZoomPosition(Value: Integer);
begin
  cxreMain.ActiveProperties.ZoomFactor := Value / 100;
end;

procedure TMailClientDemoBaseGridFrame.StopAutoSeekTimer;
begin
  if AutoSearchTimer.Enabled then
    AutoSearchTimer.Enabled := False;
end;

procedure TMailClientDemoBaseGridFrame.Translate;
begin
  cxbSearch.Caption := cxGetResourceString(@sSearch);
  cxbSearchClear.Caption := cxGetResourceString(@sClear);
end;

procedure TMailClientDemoBaseGridFrame.tvMainDataControllerDataChanged(Sender: TObject);
begin
  if IsActive then
    fmMailClientDemoMain.ItemsCountInfo.Caption := GetItemCountInfo;
end;

end.

