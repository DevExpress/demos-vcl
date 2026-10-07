unit uGridUnbound;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridCommon, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridLevel, cxDataStorage, cxEdit, cxEditRepositoryItems, cxGraphics,
  cxStyles, cxCustomData, cxFilter, cxData, cxClasses, cxSpinEdit,
  cxCalendar, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, cxNavigator,
  dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridUnbound = class(TdxGridFrame)
    RootLevel: TcxGridLevel;
    TableView: TcxGridTableView;
    clnID: TcxGridColumn;
    clnName: TcxGridColumn;
    clnDate: TcxGridColumn;
    clnCurrency: TcxGridColumn;
  private
    procedure CustomizeGrid;
    procedure CreateData;
  protected
    function IsFooterMenuEnabled: Boolean; override;
    function GetDescription: string; override;
    function NeedWaitForm: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;


implementation

{$R *.dfm}
uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmGridUnbound }

constructor TfrmGridUnbound.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  CustomizeGrid;
end;

procedure TfrmGridUnbound.CustomizeGrid;
begin
  clnID.DataBinding.ValueTypeClass := TcxIntegerValueType;
  clnName.DataBinding.ValueTypeClass := TcxStringValueType;
  clnDate.DataBinding.ValueTypeClass := TcxDateTimeValueType;
  clnCurrency.DataBinding.ValueTypeClass := TcxCurrencyValueType;
  CreateData;
end;

procedure TfrmGridUnbound.CreateData;
const
  ADataRowCount = 30000;
var
  I: Integer;
begin
  with TableView.DataController as TcxGridDataController do
  begin
    BeginUpdate;
    RecordCount := ADataRowCount;
    try
      for I := 0 to ADataRowCount - 1 do
      begin
        Values[I, 0] := I + 1;
        Values[I, 1] := Format('Text = %d', [1 + Random(ADataRowCount div 100)]);
        Values[I, 2] := Date - Random(ADataRowCount) mod 100;
        Values[I, 3] := 1000 + Random(100000)/100;
      end;
    finally
      EndUpdate;
    end;
  end;
end;


function TfrmGridUnbound.GetDescription: string;
begin
  Result := sdxFrameUnboundDescription;
end;

function TfrmGridUnbound.IsFooterMenuEnabled: Boolean;
begin
  Result := False;
end;

function TfrmGridUnbound.NeedWaitForm: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridUnboundFrameID, TfrmGridUnbound,
    GridUnboundModeFrameName, GridUnboundImageIndex, DataBindingGroupIndex, -1, -1);

end.
