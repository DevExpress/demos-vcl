unit cxTreeListFeaturesDemoUtils;

interface

uses
  Vcl.Forms, System.Types, Winapi.Windows, System.Math, cxTL, cxControls, cxGeometry;

procedure SmoothMouseMove(TreeList: TcxCustomTreeList; X, Y: Integer);
procedure MouseMoveAndRightClick(TreeList: TcxCustomTreeList; X, Y: Integer);

implementation

const
  AAbsoluteSize = 65536.0;

type
  TAxis = (axX, axY);

function NormalizeCoordinate(ACoordinate: Integer; AAxis: TAxis): Integer;
var
  ARelativeSize: Integer;
begin
  if AAxis = axX then
    ARelativeSize := Screen.Width
  else
    ARelativeSize := Screen.Height;
  Result := Trunc(AAbsoluteSize * ACoordinate / ARelativeSize) + Trunc(AAbsoluteSize / ARelativeSize / 2);
end;

procedure MouseMove(X, Y: Integer);
var
  AScreenPt: TPoint;
begin
  AScreenPt.X := NormalizeCoordinate(X, axX);
  AScreenPt.Y := NormalizeCoordinate(Y, axY);
  mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE,
    AScreenPt.X, AScreenPt.Y, 0, 0);
  Application.ProcessMessages;
  Sleep(2);
end;

procedure RightClick(X, Y: Integer);
var
  AScreenPt: TPoint;
begin
  AScreenPt.X := NormalizeCoordinate(X, axX);
  AScreenPt.Y := NormalizeCoordinate(Y, axY);
  mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_RIGHTDOWN,
    AScreenPt.X, AScreenPt.Y, 0, 0);
  mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_RIGHTUP,
    AScreenPt.X, AScreenPt.Y, 0, 0);
end;

procedure SmoothMouseMove(TreeList: TcxCustomTreeList; X, Y: Integer);
var
  AStartPoint, AEndPoint, ACurrentPoint, AScreenPt: TPoint;
  AXStep, AYStep: Double;
  AMaxDistance, AXDistance, AYDistance, ScreenX, ScreenY: Integer;
  AXPosition, AYPosition: Double;
begin
  AScreenPt := TreeList.ClientToScreen(Point(X, Y));
  ScreenX := AScreenPt.X;
  ScreenY := AScreenPt.Y;
  AStartPoint := GetMouseCursorPos;
  AEndPoint := Point(ScreenX, ScreenY);
  AXDistance := AEndPoint.X - AStartPoint.X;
  AYDistance := AEndPoint.Y - AStartPoint.Y;
  AMaxDistance := Max(Abs(AXDistance), Abs(AYDistance));
  if AMaxDistance <> 0 then
  begin
    AXStep := AXDistance / AMaxDistance;
    AYStep := AYDistance / AMaxDistance;
    AXPosition := 0;
    AYPosition := 0;
    ACurrentPoint := AStartPoint;
    repeat
      ACurrentPoint := cxPointOffset(AStartPoint, Round(AXPosition), Round(AYPosition));
      MouseMove(ACurrentPoint.X, ACurrentPoint.Y);
      AXPosition := AXPosition + AXStep;
      AYPosition := AYPosition + AYStep;
    until cxPointIsEqual(ACurrentPoint, AEndPoint);
    RightClick(ACurrentPoint.X, ACurrentPoint.Y);
  end;
end;

procedure MouseMoveAndRightClick(TreeList: TcxCustomTreeList; X, Y: Integer);
var
  AScreenPt: TPoint;
begin
  AScreenPt := TreeList.ClientToScreen(Point(X, Y));
  MouseMove(AScreenPt.X, AScreenPt.Y);
  RightClick(AScreenPt.X, AScreenPt.Y);
end;

end.
