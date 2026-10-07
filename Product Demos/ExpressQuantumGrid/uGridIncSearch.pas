unit uGridIncSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, Data.DB, cxDBData, cxClasses, cxDataStorage,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, cxNavigator,
  dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, cxMemo, dxDateRanges, dxScrollbarAnnotations,
  dxLayoutLookAndFeels, System.Actions, cxGroupBox,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmIncSearchGrid = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    DBTableView: TcxGridDBTableView;
    DBTableViewBIRTHNAME: TcxGridDBColumn;
    DBTableViewDATEOFBIRTH: TcxGridDBColumn;
    DBTableViewBIOGRAPHY: TcxGridDBColumn;
    DBTableViewGENDER: TcxGridDBColumn;
    Timer: TTimer;
    procedure TimerTimer(Sender: TObject);
    procedure DBTableViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBTableViewMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FCurrentSearchStIndex: Integer;
    FOldDataSetFilter: string;
    FOldDataSetFiltered: Boolean;
    function GetDataSet: TDataSet;
    procedure StartSearch;
    procedure EndSearch;
    procedure InternalStartSearch;
    function GetSearchText: string;
  protected
    function GetDescription: string; override;

    property DataSet: TDataSet read GetDataSet;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

const
  SearchSt = 'JOHN H'#0#0#0'GEORGE M'#0#0#0'FRANCIS'#0#0#0;

constructor TfrmIncSearchGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FCurrentSearchStIndex := 0;
  FOldDataSetFilter := DataSet.Filter;
  FOldDataSetFiltered := DataSet.Filtered;
  DataSet.Filter := 'BirthName <> ''''';
  DataSet.Filtered := True;
end;

procedure TfrmIncSearchGrid.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
    StartSearch
  else
  begin
    EndSearch;
    DataSet.Filter := FOldDataSetFilter;
    DataSet.Filtered := FOldDataSetFiltered;
  end;
end;

function TfrmIncSearchGrid.GetDataSet: TDataSet;
begin
  Result := DBTableView.DataController.DataSource.DataSet;
end;

function TfrmIncSearchGrid.GetDescription: string;
begin
  if (Timer.Enabled) or (liDescription.Caption = '') then
    Result := sdxFrameIncSearchGridDescription1
  else 
    Result := sdxFrameIncSearchGridDescription2;
end;

procedure TfrmIncSearchGrid.StartSearch;
begin
  DBTableView.Controller.FocusedColumnIndex := 0;
  FCurrentSearchStIndex := 0;
  InternalStartSearch;
  CheckDescription;
  Timer.Enabled := True;
end;

procedure TfrmIncSearchGrid.EndSearch;
begin
  Timer.Enabled := False;
  CheckDescription;
end;

procedure TfrmIncSearchGrid.InternalStartSearch;
begin
  DBTableView.DataController.GotoFirst;
  DBTableView.DataController.Search.Cancel;
  DBTableView.DataController.Search.Locate(DBTableViewBIRTHNAME.ID, SearchSt[1]);
end;


function TfrmIncSearchGrid.GetSearchText: string;
var
  I: Integer;
begin
  Result := '';
  I := FCurrentSearchStIndex;
  while (I > 0) and (SearchSt[I] <> #0) do
  begin
    Result := SearchSt[I] + Result;
    Dec(I);
  end;
end;

procedure TfrmIncSearchGrid.TimerTimer(Sender: TObject);
begin
  if not Grid.HandleAllocated or not DBTableView.DataController.Search.Searching  then exit;
  Inc(FCurrentSearchStIndex);
  if (FCurrentSearchStIndex > Length(SearchSt)) then
    StartSearch;
  if ((FCurrentSearchStIndex > 1) and (SearchSt[FCurrentSearchStIndex] <> #0) and
      (SearchSt[FCurrentSearchStIndex - 1] = #0)) then
    InternalStartSearch;
  if GetSearchText <> '' then
  begin
    if GetSearchText <> DBTableView.DataController.Search.SearchText then
      DBTableView.DataController.Search.Locate(DBTableViewBIRTHNAME.ID,  GetSearchText)
    else 
      DBTableView.DataController.Search.LocateNext(True);
  end;
end;

procedure TfrmIncSearchGrid.DBTableViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EndSearch;
end;

procedure TfrmIncSearchGrid.DBTableViewMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  EndSearch;
end;

initialization
  dxFrameManager.RegisterFrame(GridIncSearchFrameID, TfrmIncSearchGrid,
    GridIncrementalSearchFrameName, GridIncSearchImageIndex, TableBandedTableGroupIndex, -1, -1);

end.
