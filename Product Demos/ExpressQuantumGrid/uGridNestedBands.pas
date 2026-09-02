unit uGridNestedBands;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxControls, cxGridCustomView, cxClasses, cxGridLevel, Vcl.StdCtrls, cxGrid,
  Vcl.ExtCtrls, cxCurrencyEdit, cxSpinEdit, cxCheckBox, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, cxNavigator, dxLayoutContainer,
  cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridNestedBands = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    BandedTableView: TcxGridDBBandedTableView;
    BandedTableViewFIRSTNAME: TcxGridDBBandedColumn;
    BandedTableViewLASTNAME: TcxGridDBBandedColumn;
    BandedTableViewCOMPANYNAME: TcxGridDBBandedColumn;
    BandedTableViewPAYMENTTYPE: TcxGridDBBandedColumn;
    BandedTableViewPRODUCTID: TcxGridDBBandedColumn;
    BandedTableViewPURCHASEDATE: TcxGridDBBandedColumn;
    BandedTableViewPAYMENTAMOUNT: TcxGridDBBandedColumn;
    BandedTableViewCOPIES: TcxGridDBBandedColumn;
    BandedTableViewSelected: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    styleSelected: TcxStyle;
    procedure BandedTableViewStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    procedure GenerateUnboundData;
  protected
    function GetDescription: string; override;  
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridNestedBands: TfrmGridNestedBands;

implementation

uses maindata, dxFrames, FrameIDs, uStrsConst;


{$R *.dfm}

{ TfrmGridNestedBands }

constructor TfrmGridNestedBands.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  GenerateUnboundData;
end;

procedure TfrmGridNestedBands.GenerateUnboundData;
var
  I: Integer;
begin
  Randomize;
  for I := 0 to BandedTableView.DataController.RecordCount - 1 do
  begin
    BandedTableView.DataController.SetValue(I, BandedTableViewSelected.Index, Random(100) mod 2 = 1);
  end;
end;

procedure TfrmGridNestedBands.BandedTableViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if not ARecord.Selected and (ARecord.RecordIndex > -1)
  and (BandedTableView.DataController.GetValue(ARecord.RecordIndex, BandedTableViewSelected.Index) = True) then
    AStyle := styleSelected;
end;

function TfrmGridNestedBands.GetDescription: string;
begin
  Result := sdxNestedBandsDescription;
end;

initialization
  dxFrameManager.RegisterFrame(GridNestedBandsFrameID, TfrmGridNestedBands,
    GridNestedBandsFrameName, GridNestedBandsImageIndex, -1, TableBandedTableGroupIndex, -1);


end.
 
