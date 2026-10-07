unit uGridBandedView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ImgList,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxDataStorage, Data.DB, cxDBData, cxMemo, cxCheckBox, cxImage, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, cxNavigator, dxLayoutContainer,
  cxButtons, dxLayoutControl, cxTextEdit, cxSpinEdit, cxImageComboBox, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations,
  dxLayoutLookAndFeels, System.Actions, cxGroupBox, dxDPIAwareUtils,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridBandedView = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    DBBandedTableView: TcxGridDBBandedTableView;
    DBBandedTableViewTrademarkName: TcxGridDBBandedColumn;
    DBBandedTableViewName: TcxGridDBBandedColumn;
    DBBandedTableViewModification: TcxGridDBBandedColumn;
    DBBandedTableViewBodyStyle: TcxGridDBBandedColumn;
    DBBandedTableViewDescription: TcxGridDBBandedColumn;
    DBBandedTableViewHorsepower: TcxGridDBBandedColumn;
    DBBandedTableViewTorque: TcxGridDBBandedColumn;
    DBBandedTableViewMPG_City: TcxGridDBBandedColumn;
    DBBandedTableViewMPG_Highway: TcxGridDBBandedColumn;
    DBBandedTableViewDoors: TcxGridDBBandedColumn;
    DBBandedTableViewCylinders: TcxGridDBBandedColumn;
    DBBandedTableViewTransmission: TcxGridDBBandedColumn;
    DBBandedTableViewTransmissionSpeeds: TcxGridDBBandedColumn;
    DBBandedTableViewPhoto: TcxGridDBBandedColumn;
    procedure DBBandedTableViewMPG_CityCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure DBBandedTableViewMPG_HighwayCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    procedure DrawContent(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo);
    function GetImages: TCustomImageList;
    procedure DrawIntervalImage(ACanvas: TcxCanvas; const ABounds: TRect; AImages: TCustomImageList;
      const AValue: Variant; const AMaxLow, AMinHigh: Variant);
  protected
    function GetDescription: string; override;

    property Images: TCustomImageList read GetImages;
  public
    procedure AfterShow; override;
  end;

implementation

uses maindata, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

type
  TcxCustomGridCellPainterAccess = class(TcxCustomGridCellPainter);
  TcxGridTableDataCellViewInfoAccess = class(TcxGridTableDataCellViewInfo);

procedure TfrmGridBandedView.AfterShow;
var
  AKey: Word;
begin
  inherited AfterShow;
  if ShowingCounter = 1 then
  begin
    DBBandedTableView.ViewData.Expand(True);
    AKey := VK_HOME;
    DBBandedTableView.Controller.DoKeyDown(AKey, [ssCtrl]);
  end;
end;

function TfrmGridBandedView.GetDescription: string;
begin
  Result := sdxFrameBandedViewDescription;
end;

function TfrmGridBandedView.GetImages: TCustomImageList;
begin
  Result := dmMain.ilMain;
end;

procedure TfrmGridBandedView.DrawIntervalImage(ACanvas: TcxCanvas; const ABounds: TRect; AImages: TCustomImageList;
  const AValue: Variant; const AMaxLow, AMinHigh: Variant);
var
  R: TRect;
begin
  R := ABounds;
  R.Right := R.Left + dxGetImageSize(AImages, FrameScaleFactor).cx + cxTextOffset * 2;
  if AValue <= AMaxLow then
    TdxImageDrawer.DrawImage(ACanvas, R, nil, AImages, 22, True, nil, FrameScaleFactor)
  else
    if AValue <= AMinHigh then
      TdxImageDrawer.DrawImage(ACanvas, R, nil, AImages, 23, True, nil, FrameScaleFactor)
    else
      TdxImageDrawer.DrawImage(ACanvas, R, nil, AImages, 24, True, nil, FrameScaleFactor);
end;

procedure TfrmGridBandedView.DrawContent(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo);
var
  APainter: TcxCustomGridCellPainter;
begin
  APainter := TcxGridTableDataCellViewInfoAccess(AViewInfo).GetPainterClass.Create(ACanvas, AViewInfo);
  try
    TcxCustomGridCellPainterAccess(APainter).DrawBackground;
    AViewInfo.EditViewInfo.Paint(ACanvas);
  finally
    APainter.Free;
  end;
end;

procedure TfrmGridBandedView.DBBandedTableViewMPG_CityCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  DrawContent(ACanvas, AViewInfo);
  DrawIntervalImage(ACanvas, AViewInfo.Bounds, Images, AViewInfo.Value, 17, 22);
  ADone := True;
end;

procedure TfrmGridBandedView.DBBandedTableViewMPG_HighwayCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  DrawContent(ACanvas, AViewInfo);
  DrawIntervalImage(ACanvas, AViewInfo.Bounds, Images, AViewInfo.Value, 21, 29);
  ADone := True;
end;


initialization
  dxFrameManager.RegisterFrame(GridBandedViewFrameID, TfrmGridBandedView,
    GridBandedViewFrameName, GridBandedViewImageIndex, GridViewGroupIndex, TableBandedTableGroupIndex, -1);

end.
