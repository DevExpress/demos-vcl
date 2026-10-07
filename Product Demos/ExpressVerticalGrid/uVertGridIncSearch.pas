unit uVertGridIncSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxVertGridFrame, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxGraphics,
  cxEdit, cxVGrid, cxDBVGrid, cxControls, cxInplaceContainer, cxMemo,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, cxFilter;

type
  TfrmVerticalGridIncSearch = class(TVerticalGridFrame)
    Timer: TTimer;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGrid: TcxDBVerticalGrid;
    VerticalGridBIRTHNAME: TcxDBEditorRow;
    VerticalGridDATEOFBIRTH: TcxDBEditorRow;
    VerticalGridNICKNAME: TcxDBEditorRow;
    VerticalGridGENDER: TcxDBEditorRow;
    VerticalGridCategoryRow1: TcxCategoryRow;
    VerticalGridBIOGRAPHY: TcxDBEditorRow;
    procedure TimerTimer(Sender: TObject);
    procedure VerticalGridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VerticalGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    fCurrentSearchStIndex: Integer;
    procedure StartSearch;
    procedure EndSearch;
    procedure InternalStartSearch;
    function GetSearchText: string;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
    function HasOptions: Boolean; override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

const
  SearchSt = 'JOHN H'#0#0#0'GEORGE M'#0#0#0'FRANCIS'#0#0#0;


{ TfrmVerticalGridIncSearch }
constructor TfrmVerticalGridIncSearch.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fCurrentSearchStIndex := 0;
end;


procedure TfrmVerticalGridIncSearch.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
    StartSearch
  else
    EndSearch;
end;

function TfrmVerticalGridIncSearch.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmVerticalGridIncSearch.StartSearch;
begin
  VerticalGrid.FocusedRecordIndex := 0;
  fCurrentSearchStIndex := 0;
  InternalStartSearch;
  Timer.Enabled := True;
  CheckDescription;
end;

procedure TfrmVerticalGridIncSearch.EndSearch;
begin
  Timer.Enabled := False;
  CheckDescription;
end;

function TfrmVerticalGridIncSearch.GetDescription: string;
const
  ADescription: array[Boolean] of string = (sdxFrameIncSearchVerticalGridDescription1, sdxFrameIncSearchVerticalGridDescription2);
begin
  Result := ADescription[not Timer.Enabled];
end;

procedure TfrmVerticalGridIncSearch.InternalStartSearch;
begin
  VerticalGrid.DataController.GotoFirst;
  VerticalGrid.DataController.Search.Cancel;
  VerticalGrid.DataController.Search.Locate(0, SearchSt[1]);
end;

function TfrmVerticalGridIncSearch.GetSearchText: string;
var
  i: Integer;
begin
  Result := '';
  i := fCurrentSearchStIndex;
  while (i > 0) and (SearchSt[i] <> #0) do
  begin
    Result := SearchSt[i] + Result;
    Dec(i);
  end;
end;

procedure TfrmVerticalGridIncSearch.TimerTimer(Sender: TObject);
begin
  if not VerticalGrid.HandleAllocated or not VerticalGrid.DataController.Search.Searching  then exit;
  Inc(fCurrentSearchStIndex);
  if (fCurrentSearchStIndex > Length(SearchSt)) then
    StartSearch;
  if ((fCurrentSearchStIndex > 1) and (SearchSt[fCurrentSearchStIndex] <> #0)
  and (SearchSt[fCurrentSearchStIndex - 1] = #0)) then
    InternalStartSearch;
  if GetSearchText <> '' then
  begin
    if GetSearchText <> VerticalGrid.DataController.Search.SearchText then
      VerticalGrid.DataController.Search.Locate(0,  GetSearchText)
    else VerticalGrid.DataController.Search.LocateNext(True);
  end;
end;

procedure TfrmVerticalGridIncSearch.VerticalGridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EndSearch;
end;

procedure TfrmVerticalGridIncSearch.VerticalGridMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  EndSearch;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridIncSearchFrameID, TfrmVerticalGridIncSearch,
    VerticalGridIncSearchName, VerticalGridIncSearchImageIndex, -1, VerticalGridSideBarGroupIndex);


end.
