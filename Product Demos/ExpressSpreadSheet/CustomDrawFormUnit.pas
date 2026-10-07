unit CustomDrawFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSpreadSheetBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetFormulas,
  dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetClasses,
  dxSpreadSheetTypes, dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheet,
  dxLayoutControl, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreHistory, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetContainers, dxSpreadSheetHyperlinks, dxSpreadSheetPrinting,
  cxClasses, dxSpreadSheetUtils, Vcl.ExtCtrls, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetStyles, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns, System.Actions,
  Vcl.ActnList, Vcl.StdActns, cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar;

type
  TfrmCustomDraw = class(TdxSpreadSheetDemoUnitForm)
    procedure SpreadSheetCustomDrawTableViewCell(
      Sender: TdxSpreadSheetTableView; ACanvas: TcxCanvas;
      AViewInfo: TdxSpreadSheetTableViewCellViewInfo; var AHandled: Boolean);
  protected
    function GetDescription: string; override;
  public
    procedure DrawCallout(ACanvas: TcxCanvas; AViewInfo: TdxSpreadSheetTableViewCellViewInfo);
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

implementation

{$R *.dfm}

uses
  cxGeometry;

{ TfrmCustomDraw }

procedure TfrmCustomDraw.DrawCallout(ACanvas: TcxCanvas; AViewInfo: TdxSpreadSheetTableViewCellViewInfo);
var
  AClipRgn, AFrameRgn: TcxRegion;
  FramePoints: array[0..5] of TPoint;
begin
  FramePoints[0] := cxPointOffset(AViewInfo.Bounds.TopLeft, 0, 10);
  FramePoints[1] := cxPointOffset(FramePoints[0], 5, -10);
  FramePoints[2] := cxPointOffset(FramePoints[1], 200, 0);
  FramePoints[3] := cxPointOffset(FramePoints[2], 0, -20);
  FramePoints[4] := cxPointOffset(FramePoints[3], -205, 0);
  FramePoints[5] := FramePoints[0];
  AFrameRgn := TcxRegion.Create;
  AFrameRgn.Handle := CreatePolygonRgn(FramePoints, Length(FramePoints), WINDING);
  ACanvas.SaveState;
  AClipRgn := TcxRegion.Create(AViewInfo.ViewInfo.CellsArea);
  AClipRgn.Combine(AFrameRgn, roIntersect, False);
  ACanvas.SetClipRegion(AClipRgn, roSet, False);
  FillRegionByColor(ACanvas.Handle, AFrameRgn.Handle, clInfoBk);
  FrameRgn(ACanvas.Handle, AFrameRgn.Handle, GetStockObject(BLACK_BRUSH), 1, 1);
  ACanvas.Font.Name := 'Tahoma';
  ACanvas.Font.Size := 10;
  ACanvas.Font.Color := clBlack;
  ACanvas.Font.Style := [fsBold];
  ACanvas.Brush.Style := bsClear;
  ACanvas.DrawTexT('Incorrect parameter values', cxRect(FramePoints[4], FramePoints[2]),
    cxAlignVCenter or cxAlignHCenter or cxSingleLine);
  ACanvas.RestoreState;
  ACanvas.SetClipRegion(AClipRgn, roSubtract);
  AFrameRgn.Free;
end;

function TfrmCustomDraw.GetCaption: string;
begin
  Result := 'Custom Draw';
end;

function TfrmCustomDraw.GetDescription: string;
begin
  Result := 'This demo illustrates how to use the Spreadsheet Control''s custom draw functionality to display custom' +
  ' column headers, show callouts for out-of-stock products and shade alternate rows.'
end;

class function TfrmCustomDraw.GetID: Integer;
begin
  Result := 8;
end;

procedure TfrmCustomDraw.InitializeBook;
begin
  inherited;
  LoadFromFile('Data\CalculatorOfArea.xlsx');
end;

function TfrmCustomDraw.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

procedure TfrmCustomDraw.SpreadSheetCustomDrawTableViewCell(Sender: TdxSpreadSheetTableView; ACanvas: TcxCanvas;
  AViewInfo: TdxSpreadSheetTableViewCellViewInfo; var AHandled: Boolean);
begin
  if (AViewInfo.Cell = nil) or (AViewInfo.Cell.DataType <> cdtFormula) or (AViewInfo.Cell.AsFormula.ResultValue = nil) then
    Exit;
  if  (AViewInfo.Cell.AsFormula.ErrorCode <> ecNone) or (AViewInfo.Cell.AsFormula.ResultValue.ErrorCode <> ecNone) or
    (not VarIsNumeric(AViewInfo.Cell.AsFormula.Value) or (AViewInfo.Cell.AsFormula.Value < 0)) then
  begin
    AViewInfo.BackgroundColor := clRed;
    AViewInfo.TextColor := clAqua;
    DrawCallout(ACanvas, AViewInfo);
  end;
end;

initialization

TfrmCustomDraw.Register;

finalization

end.
