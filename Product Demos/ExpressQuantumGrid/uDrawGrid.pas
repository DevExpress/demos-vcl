unit uDrawGrid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, dxPSCore, dxPSStdGrLnk, cxImage;

type
  TfrmDrawGrid = class(TdxCustomDemoFrame)
    DrawGrid: TDrawGrid;
    procedure DrawGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    FPicture: TPicture;
    procedure InternalDrawGridDrawCell(ACanvas: TCanvas; ACol, ARow: Integer; Rect: TRect;
      AReportLink: TBasedxReportLink);
    procedure PSReportLinkCustomDraw(Sender: TBasedxReportLink;
      ACol, ARow: Integer; ACanvas: TCanvas; ABoundsRect, AClientRect: TRect);
    procedure SetupGrid;  
  protected
    procedure AddBars; override;
    procedure AddOperations; override;

    function GetPrintableComponent: TComponent; override;
    procedure PrepareLink(AReportLink: TBasedxReportLink); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  MainData, dxFrames, FrameIDs, dxOperationTypes, uStrsConst, Data.DB, dxPSGlbl, 
  dxPrnDev, Vcl.Imaging.jpeg;

{$R *.dfm}

const
   DrawGridFieldNames: array[0..5] of string = 
     ('PHOTO', 'CAPTION', 'YEAR', 'TAGLINE', 'PLOTOUTLINE', 'RUNTIME');

constructor TfrmDrawGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FPicture := TPicture.Create;
  SetupGrid;
end;

destructor TfrmDrawGrid.Destroy;
begin
  FPicture.Free;
  inherited Destroy;
end;

procedure TfrmDrawGrid.DrawGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  InternalDrawGridDrawCell(DrawGrid.Canvas, ACol, ARow, Rect, nil);
end;

procedure TfrmDrawGrid.AddBars;
begin
  inherited;
  BarList.AddBar(btStandard);
end;

procedure TfrmDrawGrid.AddOperations;
begin
  inherited;
  with Operations do
  begin
    AddOperation(otPrintStyles, nil);
    AddOperation(otDefinePrintStyles, nil);
    AddOperation(otPrintPreview, nil);
    AddOperation(otPrint, nil);
    AddOperation(otStyles, nil);
  end;
end;

function TfrmDrawGrid.GetPrintableComponent: TComponent;
begin
  Result := DrawGrid;
end;

procedure TfrmDrawGrid.PrepareLink(AReportLink: TBasedxReportLink);
begin
  inherited;
  with TdxDrawGridReportLink(AReportLink) do 
  begin
    AutoWidth := True;
    OnCustomDrawCell := PSReportLinkCustomDraw;
  end;
end;

procedure TfrmDrawGrid.InternalDrawGridDrawCell(ACanvas: TCanvas; ACol, ARow: Integer; Rect: TRect;
  AReportLink: TBasedxReportLink);

  function InvertColor(AColor: TColor): TColor;
  begin
    AColor := ColorToRGB(AColor);
    Result := RGB(GetRValue(AColor) xor $FF, GetGValue(AColor) xor $FF, GetBValue(AColor) xor $FF)
  end;

const
  FontColors: array[Boolean] of TColor = (clBlack, clWhite);
  BrushColors: array[Boolean] of TColor = ($00D9DCDD, clWhite);
var
  V, W, H: Integer;
  S: string;
  SaveBrColor: TColor;
  SaveFnColor: TColor;
  APrevMode: Integer;
  R: TRect;

  function IsSelected: Boolean;
  begin
    with DrawGrid.Selection do
      Result := (AReportLink = nil) and
        (ACol >= Left) and (ACol <= Right) and (ARow >= Top) and (ARow <= Bottom);
  end;

  function AreSoftEdges: Boolean;
  begin
    with TdxDrawGridReportLink(AReportLink) do 
      Result := Effects3D and Soft3D;
  end;
  
  function EdgeMode: TdxCellEdgeMode;
  const
    EdgeModeMap: array[Boolean, Boolean] of TdxCellEdgeMode = 
     ((cemPattern, cemPattern), (cemPattern, cem3DEffects));
  begin
    Result := EdgeModeMap[TdxDrawGridReportLink(AReportLink).Effects3D, ARow = 0];
  end;
  
begin
  try
    with ACanvas do
    begin
      SaveBrColor := Brush.Color;
      SaveFnColor := Font.Color;

      if ARow = 0 then
        Brush.Color := clGray
      else
      begin
        Brush.Color := BrushColors[Odd(ARow)];
        if IsSelected then
          Brush.Color := InvertColor(Brush.Color);
      end;
      FillRect(Rect);

      S := '';
      if ARow = 0 then
        S := dmMain.atMovies.FindField(DrawGridFieldNames[ACol]).DisplayName
      else
      begin
        dmMain.atMovies.First;
        dmMain.atMovies.MoveBy(ARow mod (DrawGrid.RowCount - 1));
        if ACol = 0 then
          LoadPicture(FPicture, TJPEGImage, dmMain.atMovies.FindField(DrawGridFieldNames[ACol]).Value)
        else
          S := dmMain.atMovies.FindField(DrawGridFieldNames[ACol]).DisplayText;
      end;
      InflateRect(Rect, -2, -2);

      if (ACol <> 0) or (ARow = 0) then
      begin
        APrevMode := SetBkMode(Handle, TRANSPARENT);
        Font.Name := dxDefaultFont;
        if ARow = 0 then
        begin
          Font.Color := clWhite;
          Font.Style := [fsBold];
        end
        else
        begin
          Font.Color := FontColors[IsSelected];
          Font.Style := [];
        end;
        if AReportLink = nil then
          Windows.DrawText(Handle, PChar(S), Length(S), Rect,
            DT_LEFT or DT_TOP or DT_EDITCONTROL or DT_END_ELLIPSIS or DT_WORDBREAK)
        else
        begin
          AReportLink.DrawEdge(ACanvas, Rect, EdgeMode, cesRaised, cesRaised, csAll, AreSoftEdges);
          AReportLink.DrawText(ACanvas, Rect, 2, S, Font, clNone, taLeft, taTop, False, True, True);
        end;
        SetBkMode(Handle, APrevMode);
      end
      else
      begin
        R := Rect;
        if (FPicture.Graphic <> nil) and not FPicture.Graphic.Empty then
        begin
          W := Rect.Right - Rect.Left;
          H := Rect.Bottom - Rect.Top;
          if (FPicture.Graphic.Width / FPicture.Graphic.Height > W / H) then
          begin
            V := MulDiv(FPicture.Graphic.Height, W, FPicture.Graphic.Width);
            Rect := Bounds(Rect.Left, Rect.Top + (H - V) div 2, W, V);
          end
          else
          begin
            V := MulDiv(FPicture.Graphic.Width, H, FPicture.Graphic.Height);
            Rect := Bounds(Rect.Left + (W - V) div 2, Rect.Top, V, H);
          end;
          StretchDraw(Rect, FPicture.Graphic);
        end;
        if AReportLink <> nil then
          AReportLink.DrawEdge(ACanvas, R, EdgeMode, cesRaised, cesRaised, csAll, AreSoftEdges);
      end;  
      Brush.Color := SaveBrColor;
      Font.Color := SaveFnColor;
      Font.Style := [];
    end;
  except 
  end;
end;

procedure TfrmDrawGrid.PSReportLinkCustomDraw(Sender: TBasedxReportLink;
  ACol, ARow: Integer; ACanvas: TCanvas; ABoundsRect, AClientRect: TRect);
begin
  InternalDrawGridDrawCell(ACanvas, ACol, ARow, ABoundsRect, Sender);
end;

procedure TfrmDrawGrid.SetupGrid;
const
  cColWidths: array[0..5] of Integer = (150, 120, 50, 200, 150, 50);
var
  I: Integer;
begin
  with DrawGrid do
  begin
    ColCount := High(DrawGridFieldNames) - Low(DrawGridFieldNames);
    FixedCols := 0;
    DefaultRowHeight := 120;
    RowCount := 1 + dmMain.atMovies.RecordCount;
    for I := 0 to ColCount - 1 do
      ColWidths[I] := cColWidths[I];//dmMain.atMovies.FindField(DrawGridFieldNames[I]).DisplayWidth;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(StandardControlDrawGridIndex, TfrmDrawGrid,
    StandardControlsDrawGridName, StandardControlsDrawGridImageIndex, 
    StandardControlsDrawGridImageIndex, StandardControlsGroupIndex);

end.
