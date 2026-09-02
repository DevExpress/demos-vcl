unit uGridFilterExpression;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxLayoutContainer, cxClasses,
  dxLayoutLookAndFeels, System.Actions, Vcl.ActnList, cxGrid,
  dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, dxmdaset,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxCheckBox,
  dxLayoutcxEditAdapters, cxContainer, cxGroupBox, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridFilterExpression = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    BandedTableView: TcxGridDBBandedTableView;
    BandedTableViewRecId: TcxGridDBBandedColumn;
    BandedTableViewTrademark: TcxGridDBBandedColumn;
    BandedTableViewName: TcxGridDBBandedColumn;
    BandedTableViewBodyStyle: TcxGridDBBandedColumn;
    BandedTableViewPrice: TcxGridDBBandedColumn;
    BandedTableViewBodyStyleID: TcxGridDBBandedColumn;
    BandedTableViewSalesDate: TcxGridDBBandedColumn;
    BandedTableViewSalesPrice: TcxGridDBBandedColumn;
    BandedTableViewDeliveriFrom: TcxGridDBBandedColumn;
    BandedTableViewDeliveryTo: TcxGridDBBandedColumn;
    BandedTableViewDeliveryDate: TcxGridDBBandedColumn;
    BandedTableViewDeliveryComplete: TcxGridDBBandedColumn;
    actExpressionEditing: TAction;
    cxCheckBox1: TdxLayoutCheckBoxItem;
    procedure actExpressionEditingExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridFilterExpression: TfrmGridFilterExpression;

implementation

{$R *.dfm}

uses
  maindata, FrameIDs, dxFrames, cxVariants, uStrsConst;

{ TfrmGridFilterExpression }

procedure TfrmGridFilterExpression.actExpressionEditingExecute(Sender: TObject);
begin
  BandedTableView.Filtering.ExpressionEditing := actExpressionEditing.Checked;
end;

constructor TfrmGridFilterExpression.Create(AOwner: TComponent);
var
  AValue: Variant;
  ADisplayValue: string;
  AExpression: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);
  AItemList := BandedTableView.DataController.Filter.Root.AddItemList(fboOr);
  AExpression := '[' + BandedTableViewPrice.Caption + '] * 95%';
  AItemList.AddExpressionItem(BandedTableViewSalesPrice, foLessEqual, AExpression, AExpression);
  AExpression := '[' + BandedTableViewPrice.Caption + '] * 105%';
  AItemList.AddExpressionItem(BandedTableViewSalesPrice, foGreaterEqual, AExpression, AExpression);
  AValue := VarListArrayCreate('New York');
  ADisplayValue := 'New York';
  VarListArrayAddValue(AValue, 'Boston');
  ADisplayValue := ADisplayValue + ';Boston';
  VarListArrayAddValue(AValue, 'Buffalo');
  ADisplayValue := ADisplayValue + ';Buffalo';
  BandedTableView.DataController.Filter.Root.AddItem(BandedTableViewDeliveriFrom, foInList, AValue, ADisplayValue);
  AExpression := '[' + BandedTableViewDeliveryTo.Caption + ']';
  BandedTableView.DataController.Filter.Root.AddExpressionItem(BandedTableViewDeliveriFrom, foNotEqual, AExpression, AExpression);
  BandedTableView.DataController.Filter.Active := True;
end;

function TfrmGridFilterExpression.GetDescription: string;
begin
  Result := sdxFrameCalculatedFilterItemsDescription;
end;

function TfrmGridFilterExpression.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridFilterExpressionFrameID, TfrmGridFilterExpression,
    GridFilterExpressionFrameName, -1, NewUpdatedGroupIndex, FilteringGroupIndex, -1);

end.
