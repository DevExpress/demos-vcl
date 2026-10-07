unit cxPivotCustomDrawFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, System.Math, cxGeometry, Vcl.ImgList, dxOffice11, cxPivotDataModule,
  cxClasses, cxCustomData, cxStyles, cxLookAndFeels, cxLookAndFeelPainters,
  cxEdit, dxLayoutContainer, dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, dxBarBuiltInMenu, System.Actions;

type
  TfrmCustomDraw = class(TfrmSalesPerson)
    imgParts: TImageList;
    imgEventImages: TImageList;
    procedure CustomDrawFieldHeader(Sender: TcxCustomPivotGrid;
      ACanvas: TcxCanvas; AViewInfo: TcxPivotGridFieldHeaderCellViewInfo;
      var ADone: Boolean);
    procedure CustomDrawColumnHeader(Sender: TcxCustomPivotGrid;
      ACanvas: TcxCanvas; AViewInfo: TcxPivotGridHeaderCellViewInfo;
      var ADone: Boolean);
    procedure PivotGridCustomDrawCell(Sender: TcxCustomPivotGrid;
      ACanvas: TcxCanvas; AViewInfo: TcxPivotGridDataCellViewInfo;
      var ADone: Boolean);
    procedure PivotGridCustomDrawPart(Sender: TcxCustomPivotGrid;
      ACanvas: TcxCanvas; AViewInfo: TcxPivotGridCustomCellViewInfo;
      var ADone: Boolean);
  public
    procedure DrawParts(ACanvas: TcxCanvas;
      const R: TRect; AImages: TImageList; AState: Integer);
    class function GetID: Integer; override;
    function HasOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  System.Types;

var
  TemporaryBitmap: TBitmap;

procedure CheckTemporaryBitmapSize(AImages: TImageList);
begin
  if (TemporaryBitmap.Width <> AImages.Width) or (TemporaryBitmap.Height <> AImages.Height) then
  begin
    TemporaryBitmap.Width := AImages.Width;
    TemporaryBitmap.Height := AImages.Height;
  end;
end;

procedure TfrmCustomDraw.DrawParts(ACanvas: TcxCanvas;
  const R: TRect; AImages: TImageList; AState: Integer);

  procedure DrawPart(AIndex: Integer; ABounds: TRect; const ACheckBounds: TcxBorders = [];
    AHStretch: Boolean = False; AVStretch: Boolean = False);
  var
    ARgn: TcxRegion;
    ALeft, ATop: Integer;
  begin
    if (bLeft in ACheckBounds) then
      ABounds.Left := Max(ABounds.Left, R.Left + (R.Right - R.Left) div 2);
    if (bTop in ACheckBounds) then
      ABounds.Top := Max(ABounds.Top, R.Top + (R.Bottom - R.Top) div 2);
    if (bRight in ACheckBounds) then
      ABounds.Right := Min(ABounds.Right, R.Left + (R.Right - R.Left) div 2);
    if (bBottom in ACheckBounds) then
      ABounds.Bottom := Min(ABounds.Bottom, R.Top + (R.Bottom - R.Top) div 2);
    if not cxRectIsEmpty(ABounds) then
    begin
      ARgn := ACanvas.GetClipRegion;
      ACanvas.IntersectClipRect(ABounds);
      if AHStretch or AVStretch then
      begin
        if not AVStretch then
        begin
          if (bTop in ACheckBounds) then
            ABounds.Top := ABounds.Bottom - AImages.Height
          else
            ABounds.Bottom := ABounds.Top + AImages.Height;
        end;
        if not AHStretch then
        begin
          if (bLeft in ACheckBounds) then
            ABounds.Left := ABounds.Right - AImages.Width
          else
            ABounds.Right := ABounds.Left + AImages.Width;
        end;
        TemporaryBitmap.Canvas.Brush.Color := TemporaryBitmap.TransparentColor;
        TemporaryBitmap.Canvas.FillRect(cxRect(0, 0, AImages.Width, AImages.Height));
        AImages.GetBitmap(AIndex + (AState * 9), TemporaryBitmap);
        ACanvas.Canvas.StretchDraw(ABounds, TemporaryBitmap)
      end
      else
      begin
        if (bLeft in ACheckBounds) then
          ALeft := ABounds.Right - AImages.Width
        else
          ALeft := ABounds.Left;
        if (bTop in ACheckBounds) then
          ATop := ABounds.Bottom - AImages.Height
        else
          ATop := ABounds.Top;
        ACanvas.DrawImage(AImages, ALeft, ATop, AIndex + (AState * 9));
      end;
      ACanvas.SetClipRegion(ARgn, roSet);
    end;
  end;

begin
  CheckTemporaryBitmapSize(AImages);
  DrawPart(0, cxRect(R.Left, R.Top, R.Left + AImages.Width, R.Top + AImages.Height), [bRight, bBottom]);
  DrawPart(6, cxRect(R.Left, R.Bottom - AImages.Height, R.Left + AImages.Width, R.Bottom), [bRight, bTop]);
  DrawPart(2, cxRect(R.Right - AImages.Width, R.Top, R.Right, R.Top + AImages.Height), [bLeft, bBottom]);
  DrawPart(4, cxRect(R.Right - AImages.Width, R.Bottom - AImages.Height, R.Right, R.Bottom), [bLeft, bTop]);
  DrawPart(1, cxRect(R.Left + AImages.Width, R.Top, R.Right - AImages.Width, R.Top + AImages.Height), [bBottom], True, False);
  DrawPart(5, cxRect(R.Left + AImages.Width, R.Bottom - AImages.Height, R.Right - AImages.Width, R.Bottom), [bTop], True, False);
  DrawPart(8, cxRect(R.Left + AImages.Width, R.Top + AImages.Height, R.Right - AImages.Width, R.Bottom - AImages.Height), [], True, True);
  DrawPart(7, cxRect(R.Left, R.Top + AImages.Height, R.Left + AImages.Width, R.Bottom - AImages.Height), [bRight], False, True);
  DrawPart(3, cxRect(R.Right - AImages.Width, R.Top + AImages.Height, R.Right, R.Bottom - AImages.Height), [bLeft], False, True);
end;

class function TfrmCustomDraw.GetID: Integer;
begin
  Result := 16;
end;

function TfrmCustomDraw.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmCustomDraw.CustomDrawFieldHeader(
  Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas;
  AViewInfo: TcxPivotGridFieldHeaderCellViewInfo; var ADone: Boolean);
begin
  DrawParts(ACanvas, AViewInfo.Bounds, imgParts, 1);
  AViewInfo.Transparent := True;
end;

procedure TfrmCustomDraw.CustomDrawColumnHeader(
  Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas;
  AViewInfo: TcxPivotGridHeaderCellViewInfo; var ADone: Boolean);
begin
  DrawParts(ACanvas, AViewInfo.Bounds, imgParts, 1);
  AViewInfo.Transparent := True;
end;

procedure TfrmCustomDraw.PivotGridCustomDrawCell(
  Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas;
  AViewInfo: TcxPivotGridDataCellViewInfo; var ADone: Boolean);
begin
  AViewInfo.Transparent := True;
  FillTubeGradientRect(ACanvas.Handle, AViewInfo.Bounds,
    ColorToRgb(AViewInfo.ViewParams.Color), ColorToRgb(clSkyBlue), 100, False);
end;

procedure TfrmCustomDraw.PivotGridCustomDrawPart(
  Sender: TcxCustomPivotGrid; ACanvas: TcxCanvas;
  AViewInfo: TcxPivotGridCustomCellViewInfo; var ADone: Boolean);
begin
  AViewInfo.Transparent := True;
  if AViewInfo is TcxPivotGridHeaderBackgroundCellViewInfo then
    FillTubeGradientRect(ACanvas.Handle, AViewInfo.Bounds,
      ColorToRgb(AViewInfo.ViewParams.Color), ColorToRgb(clSilver), 100, False)
  else
    ACanvas.FillRect(AViewInfo.Bounds, dmPivot.stBKImage.Bitmap);
end;

initialization
  TfrmCustomDraw.Register;
  TemporaryBitmap := TBitmap.Create;
  TemporaryBitmap.Width := 16;
  TemporaryBitmap.Height := 16;
  TemporaryBitmap.TransparentMode := tmFixed;
  TemporaryBitmap.TransparentColor := clFuchsia;
  TemporaryBitmap.Transparent := True;

finalization
  TemporaryBitmap.Free;

end.
