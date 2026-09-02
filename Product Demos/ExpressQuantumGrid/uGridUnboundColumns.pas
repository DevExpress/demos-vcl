unit uGridUnboundColumns;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, Data.DB, cxDBData, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridLevel,
  Vcl.StdCtrls, cxGrid, Vcl.ExtCtrls, cxSpinEdit, cxBlobEdit, cxCheckBox,
  cxCalendar, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, cxNavigator,
  dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridUnboundColumns = class(TdxGridFrame)
    Level: TcxGridLevel;
    BandedTableView: TcxGridDBBandedTableView;
    BandedTableViewFIRSTNAME: TcxGridDBBandedColumn;
    BandedTableViewLASTNAME: TcxGridDBBandedColumn;
    BandedTableViewCOMPANYNAME: TcxGridDBBandedColumn;
    BandedTableViewPAYMENTTYPE: TcxGridDBBandedColumn;
    BandedTableViewPRODUCTID: TcxGridDBBandedColumn;
    BandedTableViewCUSTOMER: TcxGridDBBandedColumn;
    BandedTableViewPURCHASEDATE: TcxGridDBBandedColumn;
    BandedTableViewPAYMENTAMOUNT: TcxGridDBBandedColumn;
    BandedTableViewCOPIES: TcxGridDBBandedColumn;
    BandedTableViewSelected: TcxGridDBBandedColumn;
    BandedTableViewSupportRequests: TcxGridDBBandedColumn;
    BandedTableViewLastSupportRequest: TcxGridDBBandedColumn;
    BandedTableViewComments: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    styleSelected: TcxStyle;
    procedure BandedTableViewStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    procedure GenerateUnboundData;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses maindata, dxFrames, FrameIDs, uStrsConst;


{$R *.dfm}

{ TfrmGridUnboundColumns }

constructor TfrmGridUnboundColumns.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  GenerateUnboundData;
end;

procedure TfrmGridUnboundColumns.GenerateUnboundData;

  function GetLastSupportRequestDate(const APurchaseDate: Variant): Variant;
  var
    ADate: TDate;
  begin
    Result := Null;
    if VarIsNull(APurchaseDate) then
      Exit;
    ADate := Int(APurchaseDate);
    Result := ADate + Random(Round(Date - ADate));
  end;

var
  I: Integer;
begin
  Randomize;
  for I := 0 to BandedTableView.DataController.RecordCount - 1 do
  begin
    BandedTableView.DataController.SetValue(I, BandedTableViewSelected.Index, Random(100) mod 2 = 1);
    BandedTableView.DataController.SetValue(I, BandedTableViewSupportRequests.Index, 1 + Random(20));
    BandedTableView.DataController.SetValue(I, BandedTableViewLastSupportRequest.Index,
      GetLastSupportRequestDate(BandedTableView.DataController.GetValue(I, BandedTableViewPURCHASEDATE.Index)));
    BandedTableView.DataController.SetValue(I, BandedTableViewComments.Index, 'Put your comments here...');
  end;
end;

procedure TfrmGridUnboundColumns.BandedTableViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if not ARecord.Selected and (ARecord.RecordIndex > -1)
  and (BandedTableView.DataController.GetValue(ARecord.RecordIndex, BandedTableViewSelected.Index) = True) then
    AStyle := styleSelected;
end;

function TfrmGridUnboundColumns.GetDescription: string;
begin
  Result := sdxFrameUnboundColumnsDescription;
end;

initialization
  dxFrameManager.RegisterFrame(GridUnboundColumnsViewFrameID, TfrmGridUnboundColumns,
    GridUnboundColumnsFrameName, GridUnboundColumnsViewImageIndex, DataBindingGroupIndex, -1, -1);

end.
