unit uGridDragDrop;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uGridCustomSummaries, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxDataStorage,
  cxSpinEdit, dxmdaset, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxLabel, Vcl.Menus, cxNavigator, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmDragDropGrid = class(TfrmCustomGridSummaries)
    Grid1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    cxGridDBColumn10: TcxGridDBColumn;
    GridDBTableViewName: TcxGridDBColumn;
    dxPanel1: TdxPanel;
    procedure GridEnter(Sender: TObject);
    procedure Grid1Enter(Sender: TObject);
    procedure GridDBTableViewEndDrag(Sender, Target: TObject; X,
      Y: Integer);
    procedure GridDBTableViewStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GridDBTableView1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GridDBTableViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
  private
    FGrid: TcxGrid;
    FDragView: TcxGridDBTableView;
    FEndDragging: Boolean;

    function GetView(pt: TPoint): TcxGridDBTableView;
    function GetSelectedPaymentType(pt: TPoint): Integer;
    function CanDrag(pt: TPoint): Boolean;
    procedure DoAfterPost(DataSet: TDataSet);
  protected
    function GetActiveGrid: TcxGrid; override;
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

{$R *.dfm}

uses
  System.Types, FrameIDs, dxFrames, dxGridFrame, MainData, uStrsConst;

{ TfrmDragDropGrid }

constructor TfrmDragDropGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FGrid := Grid;
  GridDBTableView1.DataController.Groups.FullExpand;
  GridDBTableView.DataController.Filter.AddItem(nil, GridDBTableViewCUSTOMER, foEqual, True, 'True');
  GridDBTableView.DataController.Filter.Active := True;
  GridDBTableView1.DataController.Filter.AddItem(nil, cxGridDBColumn6, foEqual, False, 'True');
  GridDBTableView1.DataController.Filter.Active := True;
end;

function TfrmDragDropGrid.GetActiveGrid: TcxGrid;
begin
  if FGrid <> nil then
    Result := FGrid
  else Result := inherited GetActiveGrid;
end;

procedure TfrmDragDropGrid.GridEnter(Sender: TObject);
begin
  FGrid := Grid;
end;

procedure TfrmDragDropGrid.Grid1Enter(Sender: TObject);
begin
  FGrid := Grid1;
end;

procedure TfrmDragDropGrid.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
    dmMain.cdsDXCustomers.AfterPost := DoAfterPost
  else
    dmMain.cdsDXCustomers.AfterPost := nil;
end;

function TfrmDragDropGrid.GetDescription: string;
begin
  Result := sdxFrameDragDropDescription;
end;

function TfrmDragDropGrid.GetView(pt: TPoint): TcxGridDBTableView;

  function ClientToScreenRect(AControl: TWinControl; const ARect: TRect): TRect;
  begin
    Result := ARect;
    Result.Location := AControl.ClientToScreen(ARect.Location);
  end;

begin
  if PtInRect(ClientToScreenRect(Grid, ClientRect), pt) then
    Result := GridDBTableView
  else
    if PtInRect(ClientToScreenRect(Grid1, ClientRect), pt) then
      Result := GridDBTableView1
    else
      Result :=  nil;
end;


function TfrmDragDropGrid.GetSelectedPaymentType(pt: TPoint): Integer;
var
  ATableView: TcxGridDBTableView;
  AHitTest: TcxCustomGridHitTest;
  AColumn: Integer;
begin
  Result := -1;
  ATableView := GetView(pt);
  if ATableView <> nil then
  begin
    if (ATableView.GroupedColumnCount = 1) and
      (CompareText(ATableView.GroupedColumns[0].Caption, GridDBTableViewPAYMENTTYPE.Caption) = 0) then
    begin
      if ATableView = GridDBTableView then
        AColumn := GridDBTableViewPAYMENTTYPE.Index
      else AColumn := cxGridDBColumn4.Index;
      pt := ATableView.Site.ScreenToClient(pt);
      AHitTest := ATableView.ViewInfo.GetHitTest(pt);
      if (AHitTest is TcxGridRecordHitTest) then
        Result := ATableView.DataController.Values[TcxGridRecordHitTest(AHitTest).GridRecord.RecordIndex, AColumn];
    end;
  end;
end;

function TfrmDragDropGrid.CanDrag(pt: TPoint): Boolean;
var
  APaymentType: Integer;
  ADragView: TcxGridDBTableView;
begin
  APaymentType := GetSelectedPaymentType(pt);
  ADragView := GetView(pt);
  Result := (APaymentType > -1) or ((ADragView <> nil) and (ADragView <> FDragView));
end;

procedure TfrmDragDropGrid.DoAfterPost(DataSet: TDataSet);
begin
  if FEndDragging then exit;
  GridDBTableView.DataController.UpdateData;
  GridDBTableView1.DataController.UpdateData;
end;

procedure TfrmDragDropGrid.GridDBTableViewStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  FDragView := GridDBTableView;
end;

procedure TfrmDragDropGrid.GridDBTableView1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  FDragView := GridDBTableView1;
end;

procedure TfrmDragDropGrid.GridDBTableViewEndDrag(Sender, Target: TObject;
  X, Y: Integer);
var
  pt: TPoint;
  AList: TList;
  I, J: Integer;
  ARowIndex, ARecordIndex: Integer;
  ATableView: TcxGridDBTableView;
  APaymentType: Integer;
  AMemData: TdxMemData;
begin
  if not (Target is TWinControl) then exit;
  pt := TWinControl(Target).ClientToScreen(Point(X, Y));
  if CanDrag(pt) then
  begin
    ATableView := GetView(pt);
    APaymentType := GetSelectedPaymentType(pt);
    AList := TList.Create;
    AMemData := TdxMemData.Create(nil);
    FEndDragging := True;
    try
      for I := 0 to FDragView.DataController.GetSelectedCount - 1 do
      begin
        ARowIndex := FDragView.DataController.GetSelectedRowIndex(I);
        if FDragView.DataController.GetRowInfo(ARowIndex).Level = FDragView.DataController.Groups.GroupingItemCount then
        begin
          ARecordIndex := FDragView.DataController.GetRowInfo(ARowIndex).RecordIndex;
          AList.Add(Pointer(Integer(FDragView.DataController.GetRecordId(ARecordIndex))));
        end;
      end;
      dmMain.cdsDXCustomers.DisableControls;
      if IsCtrlPressed then
        AMemData.LoadFromDataSet(dmMain.cdsDXCustomers);
      for I := 0 to AList.Count - 1 do
      begin
        if dmMain.cdsDXCustomers.Locate('ID', Integer(AList[I]), []) then
        begin
          if IsCtrlPressed then
          begin
            AMemData.Locate('ID', Integer(AList[I]), []);
            dmMain.cdsDXCustomers.Append;
            for J := 0 to dmMain.cdsDXCustomers.FieldCount - 1 do
              if(dmMain.cdsDXCustomers.Fields[J].CanModify) then
                dmMain.cdsDXCustomers.Fields[J].Value := AMemData.FindField(dmMain.cdsDXCustomers.Fields[J].FieldName).Value;
          end
          else dmMain.cdsDXCustomers.Edit;
          if APaymentType > - 1 then
            dmMain.cdsDXCustomers.FindField('PAYMENTTYPE').AsInteger := APaymentType;
          dmMain.cdsDXCustomers.FindField('CUSTOMER').AsBoolean := ATableView = GridDBTableView;
          dmMain.cdsDXCustomers.Post;
        end;
      end;
    finally
      AList.Free;
      FEndDragging := False;
      AMemData.Free;
      dmMain.cdsDXCustomers.EnableControls;
    end;
  end;
  FDragView := nil;
end;

procedure TfrmDragDropGrid.GridDBTableViewDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (FDragView <> nil) and CanDrag(TWinControl(Sender).ClientToScreen(Point(X, Y)));
end;

initialization
  dxFrameManager.RegisterFrame(GridDragDropFrameID, TfrmDragDropGrid, GridDragDropFrameName,
    GridDragDropImageIndex, TableBandedTableGroupIndex, -1, -1);

end.
