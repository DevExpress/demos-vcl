unit uGridMergeCells;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, Vcl.StdCtrls, cxControls, cxGrid, Vcl.ExtCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGridLevel, cxGridCardView, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxLabel, cxNavigator, cxCalendar, dxGDIPlusClasses, cxImage, cxGroupBox, Vcl.Menus,
  dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridMergeCells = class(TdxGridFrame)
    level: TcxGridLevel;
    DBTableViewItems: TcxGridDBTableView;
    DBTableViewItemsNAME: TcxGridDBColumn;
    DBTableViewItemsTYPE: TcxGridDBColumn;
    DBTableViewItemsPROJECTID: TcxGridDBColumn;
    DBTableViewItemsPRIORITY: TcxGridDBColumn;
    DBTableViewItemsSTATUS: TcxGridDBColumn;
    DBTableViewItemsCREATORID: TcxGridDBColumn;
    DBTableViewItemsCREATEDDATE: TcxGridDBColumn;
    DBTableViewItemsOWNERID: TcxGridDBColumn;
    DBTableViewItemsLASTMODIFIEDDATE: TcxGridDBColumn;
    DBTableViewItemsFIXEDDATE: TcxGridDBColumn;
    DBTableViewItemsDESCRIPTION: TcxGridDBColumn;
  private
    FSaveProjectAlignment: TcxEditAlignment;
    FSaveTypeAlignment: TcxEditAlignment;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

uses
  dxFrames, FrameIDs, maindata, uStrsConst;

{$R *.dfm}

{ TfrmGridMergeCells }
constructor TfrmGridMergeCells.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FSaveProjectAlignment := dmMain.edrepProjectLookup.Properties.Alignment;
  FSaveTypeAlignment := dmMain.edrepTypeImageCombo.Properties.Alignment;
end;

procedure TfrmGridMergeCells.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
  begin
    dmMain.edrepProjectLookup.Properties.Alignment.Horz := taCenter;
    dmMain.edrepProjectLookup.Properties.Alignment.Vert := taVCenter;
    dmMain.edrepTypeImageCombo.Properties.Alignment.Horz := taCenter;
    dmMain.edrepTypeImageCombo.Properties.Alignment.Vert := taVCenter;
  end else
  begin
    dmMain.edrepProjectLookup.Properties.Alignment := FSaveProjectAlignment;
    dmMain.edrepTypeImageCombo.Properties.Alignment := FSaveTypeAlignment;
  end;
end;

function TfrmGridMergeCells.GetDescription: string;
begin
  Result := sdxFrameMergeCellsDescription;
end;

initialization
  dxFrameManager.RegisterFrame(GridCellMergingFrameID, TfrmGridMergeCells,
    GridCellMergingFrameName, GridCellMergingImageIndex, TableBandedTableGroupIndex, -1, -1);


end.
