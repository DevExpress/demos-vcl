unit uGridCellSelection;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, Vcl.StdCtrls, cxControls, cxGrid, Vcl.ExtCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridLevel, cxLookAndFeelPainters, cxLookAndFeels, cxContainer, cxLabel,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPSCore,
  dxPScxCommon, Vcl.Menus, dxLayoutControlAdapters, cxNavigator, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridCellSelection = class(TdxGridFrame)
    Level: TcxGridLevel;
    TableView: TcxGridTableView;
    cxStyleRepository1: TcxStyleRepository;
    styleSelected: TcxStyle;
    styleNormal: TcxStyle;
    lgLabels: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutGroup2: TdxLayoutGroup;
    liSelectedRows: TdxLayoutLabeledItem;
    liSelectedColumns: TdxLayoutLabeledItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutLabeledItem5: TdxLayoutLabeledItem;
    dxLayoutLabeledItem6: TdxLayoutLabeledItem;
    liSelectedCells: TdxLayoutLabeledItem;
    liSelectedSummary: TdxLayoutLabeledItem;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    procedure TableViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure TableViewSelectionChanged(Sender: TcxCustomGridTableView);
    procedure TableViewCustomDrawIndicatorCell(Sender: TcxGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxCustomGridIndicatorItemViewInfo;
      var ADone: Boolean);
    procedure TableViewStylesGetHeaderStyle(Sender: TcxGridTableView; AColumn: TcxGridColumn; var AStyle: TcxStyle);
  private
    procedure CreateSpreadSheet;
    procedure CreateColumns;
    procedure CreateRows;
    function GetColumnCaption(Index: Integer): string;
  protected
    //function GetPrintableComponent: TComponent; override;
    function GetDescription: string; override;
    procedure PrepareLink(AReportLink: TBasedxReportLink); override;
    function IsSupportGrouping: Boolean; override;
    procedure UpdateHeader;
  public
    constructor Create(AOwner: TComponent); override;
    procedure AfterConstruction; override;

    function CanUseOddEvenStyle: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, System.MaskUtils, uStrsConst, dxDemoBaseMainForm;

const RecordCount = 1000;
const ColumnCount = 256;

type
  TfrmMainBaseAccess = class(TfrmMainBase);


{ TfrmGridCellSelection }

constructor TfrmGridCellSelection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  CreateSpreadSheet;
end;

procedure TfrmGridCellSelection.AfterConstruction;
begin
  inherited;
  TableView.Controller.SelectCells(TableView.Columns[1], TableView.Columns[5], 2, 12);
end;

function TfrmGridCellSelection.CanUseOddEvenStyle: Boolean;
begin
  Result := False;
end;

function TfrmGridCellSelection.GetDescription: string;
begin
  Result := sdxFrameCellSelectionDescription;
end;

procedure TfrmGridCellSelection.PrepareLink(AReportLink: TBasedxReportLink);
begin
  inherited;
  TdxGridReportLink(AReportLink).OptionsSelection.ProcessSelection := True;
end;

function TfrmGridCellSelection.IsSupportGrouping: Boolean;
begin
  Result := False;
end;

procedure TfrmGridCellSelection.UpdateHeader;
begin
  TableView.ViewInfo.HeaderViewInfo.Update;
end;

procedure TfrmGridCellSelection.CreateSpreadSheet;
begin
  TableView.BeginUpdate;
  try
    CreateColumns;
    CreateRows;
  finally
    TableView.EndUpdate;
  end;
end;

procedure TfrmGridCellSelection.CreateColumns;
var
  I: Integer;
  AColumn: TcxGridColumn;
begin
  for I := 0 to ColumnCount - 1 do
  begin
    AColumn := TableView.CreateColumn;
    AColumn.Caption := GetColumnCaption(I);
    AColumn.HeaderAlignmentHorz := taCenter;
    AColumn.DataBinding.ValueType := 'Integer';
  end;
end;

procedure TfrmGridCellSelection.CreateRows;
var
  I, J: Integer;
begin
  TableView.DataController.RecordCount := RecordCount;
  Randomize;
  for I := 0 to RecordCount - 1 do
    for J := 0 to ColumnCount - 1 do
      TableView.DataController.SetValue(I, J, Random(100));
end;

function TfrmGridCellSelection.GetColumnCaption(Index: Integer): string;
const
  ACharRange: Integer = Integer('Z') - Integer('A') + 1;
begin
  if Index div ACharRange > 0 then
     Result := GetColumnCaption(Index div ACharRange - 1)
  else
    Result := '';
  Result := Result + Char(Integer('A') + Index mod ACharRange);
end;

procedure TfrmGridCellSelection.TableViewColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var
  AColumnStart, AColumnEnd : TcxGridColumn;
begin
  AColumnStart := AColumn;
  AColumnEnd := AColumn;

  if(GetKeyState(VK_SHIFT) < 0) then
  begin
    if (TableView.Controller.SelectedColumnCount > 0) then
    begin
      if(TableView.Controller.SelectedColumns[0].VisibleIndex < AColumn.VisibleIndex) then
        AColumnStart := TableView.Controller.SelectedColumns[0];
      if(TableView.Controller.SelectedColumns[TableView.Controller.SelectedColumnCount - 1].VisibleIndex > AColumn.VisibleIndex) then
        AColumnEnd := TableView.Controller.SelectedColumns[TableView.Controller.SelectedColumnCount - 1];
    end else TableView.Controller.ClearCellSelection;
  end;

  TableView.Controller.SelectCells(AColumnStart, AColumnEnd, 0, TableView.DataController.RecordCount - 1);
end;

procedure TfrmGridCellSelection.TableViewSelectionChanged(
  Sender: TcxCustomGridTableView);
var
  I, J, ASum : Integer;
  val: Variant;
begin
  liSelectedRows.Caption := FormatFloat('0,', TableView.Controller.SelectedRowCount);
  liSelectedColumns.Caption  := FormatFloat('0,', TableView.Controller.SelectedColumnCount);
  liSelectedCells.Caption  := FormatFloat('0,', TableView.Controller.SelectedRowCount * TableView.Controller.SelectedColumnCount);
  ASum := 0;
  for I := 0 to TableView.Controller.SelectedRowCount - 1 do
    for J := 0 to TableView.Controller.SelectedColumnCount - 1 do
    begin
      val := TableView.DataController.GetValue(TableView.Controller.SelectedRows[I].RecordIndex, TableView.Controller.SelectedColumns[J].Index);
      if not VarIsNull(val) then
        Inc(ASum,  Integer(val));
    end;
  liSelectedSummary.Caption := FormatFloat('0,', ASum);
  UpdateHeader;
end;

procedure TfrmGridCellSelection.TableViewStylesGetHeaderStyle(Sender: TcxGridTableView; AColumn: TcxGridColumn;
  var AStyle: TcxStyle);
begin
  if AColumn = nil then exit;
  if AColumn.Selected then
    AStyle := styleSelected
  else
    AStyle := styleNormal;
end;

procedure TfrmGridCellSelection.TableViewCustomDrawIndicatorCell(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxCustomGridIndicatorItemViewInfo; var ADone: Boolean);
var
  AIndicatorViewInfo: TcxGridIndicatorRowItemViewInfo;
  ATextRect: TRect;
  AText: string;
  ABorders: TcxBorders;
  AStyle: TcxStyle;
  AScaleFactor: TdxScaleFactor;
begin
  if AViewInfo is TcxGridIndicatorRowItemViewInfo then
  begin
    ATextRect := AViewInfo.ContentBounds;
    AIndicatorViewInfo := AViewInfo as TcxGridIndicatorRowItemViewInfo;
    AText := IntToStr(AIndicatorViewInfo.GridRecord.Index + 1);
    InflateRect(ATextRect, -2, -1);
    ABorders := cxBordersAll;
    if Sender.LookAndFeelPainter.LookAndFeelStyle = lfsUltraFlat then
      ABorders := ABorders - [bTop];
    if AIndicatorViewInfo.GridRecord.Selected then
      AStyle := styleSelected
    else
      AStyle := styleNormal;
    AScaleFactor := TfrmMainBaseAccess(Application.MainForm).ScaleFactor;
    Sender.LookAndFeelPainter.DrawScaledHeader(ACanvas, AViewInfo.ContentBounds, ATextRect, [], ABorders, cxbsNormal, taCenter, vaCenter,
      False, False, AText, AStyle.Font, AStyle.TextColor, AStyle.Color, AScaleFactor);
    ADone := True;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(GridCellSelectionFrameID, TfrmGridCellSelection, GridCellSelectionFrameName,
    GridCellSelectionImageIndex, TableBandedTableGroupIndex, -1, -1);


end.
