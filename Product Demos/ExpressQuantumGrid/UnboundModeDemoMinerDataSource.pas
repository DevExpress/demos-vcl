unit UnboundModeDemoMinerDataSource;

{$I cxVer.inc}

interface

uses cxCustomData, UnboundModeDemoTypes;

type
  TMinerFieldDataSource = class(TcxCustomDataSource)
  private
    FCellState: TCellStateRecArrArr;
    FColCount: Integer;
    FRowCount: Integer;
    FGameStatusChanged: TIntGameStatusChangedEvent;
    FMinerFieldChanged: TIntMinerFieldChangedEvent;
    procedure InitNewGame;
    procedure UpdateMinerFieldState(const AChangedCells: TChangedCells; const ARedCells: TCells);
    procedure FireGameStatusChanged(Sender: TObject; AGameStatus: TGameStatus; AGameDifficulty: TGameDifficulty; var AChangedCells: TChangedCells;
      var ARedCells: TCells);
    procedure FireEvMinerFieldChanged(Sender: TObject; var AChangedCells: TCells; var ARedCells: TCells);
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
  public
    destructor Destroy; override;
    procedure HandleEvMinerFieldChanged(Sender: TObject; var AChangedCells: TChangedCells; var ARedCells: TCells);
    procedure HandleEvGameStatusChanged(Sender: TObject; AGameStatus: TGameStatus; AGameDifficulty: TGameDifficulty; var AChangedCells: TChangedCells; var ARedCells: TCells);
    property OnMinerFieldChanged: TIntMinerFieldChangedEvent read FMinerFieldChanged write FMinerFieldChanged;
    property OnGameStatusChanged: TIntGameStatusChangedEvent read FGameStatusChanged write FGameStatusChanged;
  end;

implementation

uses
  System.Variants;

{ TMinerFieldDataSource }

destructor TMinerFieldDataSource.Destroy;
begin
  FCellState := nil;
  inherited Destroy;
end;

procedure TMinerFieldDataSource.FireEvMinerFieldChanged(Sender: TObject; var AChangedCells: TCells; var ARedCells: TCells);
begin
  if Assigned(FMinerFieldChanged) then
    FMinerFieldChanged(Sender, AChangedCells, ARedCells);
end;

procedure TMinerFieldDataSource.FireGameStatusChanged(Sender: TObject; AGameStatus: TGameStatus;
  AGameDifficulty: TGameDifficulty; var AChangedCells: TChangedCells; var ARedCells: TCells);
var
  ACells: TCells;
  i: Integer;
begin
  if Assigned(FGameStatusChanged) then
  begin
    SetLength(ACells, Length(AChangedCells));
    for i:=0 to High(AChangedCells) do
      ACells[i] := AChangedCells[i].Pos;
    AChangedCells := nil;
    FGameStatusChanged(Sender, AGameStatus, AGameDifficulty, ACells, ARedCells);
  end
end;

function TMinerFieldDataSource.GetRecordCount: Integer;
begin
{ remove/add the closing brace on this line to disable/enable the following code}

  Result := FRowCount;

//}
end;

function TMinerFieldDataSource.GetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): Variant;
begin
{ remove/add the closing brace on this line to disable/enable the following code}

  if (Integer(AItemHandle) <= (FColCount - 1)) and (Integer(ARecordHandle) <= (FRowCount - 1)) then
    Result := Integer(@FCellState[Integer(AItemHandle), Integer(ARecordHandle)]);

//}
end;

procedure TMinerFieldDataSource.HandleEvGameStatusChanged(Sender: TObject;
  AGameStatus: TGameStatus; AGameDifficulty: TGameDifficulty;
  var AChangedCells: TChangedCells; var ARedCells: TCells);
begin
  case AGameStatus of
    gsNew:
    begin
      FColCount := AGameDifficulty.Width;
      FRowCount := AGameDifficulty.Height;
      InitNewGame;
    end;
    gsLost:
      UpdateMinerFieldState(AChangedCells, ARedCells);
    gsWon:
      UpdateMinerFieldState(AChangedCells, ARedCells);
  end;
  DataChanged;
  FireGameStatusChanged(Sender, AGameStatus, AGameDifficulty, AChangedCells, ARedCells);
end;

procedure TMinerFieldDataSource.HandleEvMinerFieldChanged(Sender: TObject;
  var AChangedCells: TChangedCells; var ARedCells: TCells);
var
  i: Integer;
  ACells: TCells;
begin
  UpdateMinerFieldState(AChangedCells, ARedCells);
  DataChanged;
  SetLength(ACells, Length(AChangedCells));
  for i:=0 to High(AChangedCells) do
    ACells[i] := AChangedCells[i].Pos;
  AChangedCells := nil;
  FireEvMinerFieldChanged(Sender, ACells, ARedCells);
end;

procedure TMinerFieldDataSource.InitNewGame;
var
  i, j: Integer;
begin
  SetLength(FCellState, FColCount);
  for i:=0 to FColCount - 1 do
  begin
    SetLength(FCellState[i], FRowCount);
    for j:=0 to FRowCount - 1 do
    begin
      FCellState[i, j].CellState := csClosed;
      FCellState[i, j].SurroundNumber := 0;
    end;
  end;
end;

procedure TMinerFieldDataSource.UpdateMinerFieldState(
  const AChangedCells: TChangedCells; const ARedCells: TCells);
var
  i: Integer;
begin
  for i:=0 to High(AChangedCells) do
    FCellState[AChangedCells[i].Pos.x, AChangedCells[i].Pos.y] := AChangedCells[i].CellState;
end;

end.
