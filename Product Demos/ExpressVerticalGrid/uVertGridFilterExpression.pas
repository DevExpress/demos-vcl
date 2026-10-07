unit uVertGridFilterExpression;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxVertGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutLookAndFeels, dxLayoutControl, cxStyles,
  dxScrollbarAnnotations, cxEdit, cxInplaceContainer, cxVGrid, cxDBVGrid,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutcxEditAdapters, cxContainer, cxCheckBox, cxFilter;

type
  TfrmFilterExpression = class(TVerticalGridFrame)
    VerticalGrid: TcxDBVerticalGrid;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGridRecId: TcxDBEditorRow;
    VerticalGridTrademark: TcxDBEditorRow;
    VerticalGridName: TcxDBEditorRow;
    VerticalGridBodyStyleID: TcxDBEditorRow;
    VerticalGridBodyStyle: TcxDBEditorRow;
    VerticalGridPrice: TcxDBEditorRow;
    VerticalGridSalesDate: TcxDBEditorRow;
    VerticalGridSalesPrice: TcxDBEditorRow;
    VerticalGridDeliveryDate: TcxDBEditorRow;
    VerticalGridDeliveryComplete: TcxDBEditorRow;
    VerticalGridDeliveryFrom: TcxDBEditorRow;
    VerticalGridDeliveryTo: TcxDBEditorRow;
    VerticalGridCarInfoCategory: TcxCategoryRow;
    VerticalGridOrderInfoCategory: TcxCategoryRow;
    VerticalGridDeliveryCategory: TcxCategoryRow;
    cbExpressionEditing: TcxCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    procedure cbExpressionEditingPropertiesEditValueChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

var
  frmFilterExpression: TfrmFilterExpression;

implementation

{$R *.dfm}

uses
  maindata, FrameIDs, dxFrames, cxVariants, uStrsConst;

{ TfrmFilterExpression }

procedure TfrmFilterExpression.cbExpressionEditingPropertiesEditValueChanged(Sender: TObject);
begin
  VerticalGrid.Filtering.ExpressionEditing := cbExpressionEditing.Checked;
end;

procedure TfrmFilterExpression.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
    VerticalGrid.SetFocus;
end;

constructor TfrmFilterExpression.Create(AOwner: TComponent);
var
  AValue: Variant;
  ADisplayValue: string;
  AExpression: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);
  AItemList := VerticalGrid.DataController.Filter.Root.AddItemList(fboOr);
  AExpression := '[' + VerticalGridPrice.Properties.Caption + '] * 95%';
  AItemList.AddExpressionItem(VerticalGridSalesPrice.Properties.ItemLink, foLessEqual, AExpression, AExpression);
  AExpression := '[' + VerticalGridPrice.Properties.Caption + '] * 105%';
  AItemList.AddExpressionItem(VerticalGridSalesPrice.Properties.ItemLink, foGreaterEqual, AExpression, AExpression);
  AValue := VarListArrayCreate('New York');
  ADisplayValue := 'New York';
  VarListArrayAddValue(AValue, 'Boston');
  ADisplayValue := ADisplayValue + ';Boston';
  VarListArrayAddValue(AValue, 'Buffalo');
  ADisplayValue := ADisplayValue + ';Buffalo';
  VerticalGrid.DataController.Filter.Root.AddItem(VerticalGridDeliveryFrom.Properties.ItemLink, foInList, AValue, ADisplayValue);
  AExpression := '[' + VerticalGridDeliveryTo.Properties.Caption + ']';
  VerticalGrid.DataController.Filter.Root.AddExpressionItem(VerticalGridDeliveryFrom.Properties.ItemLink, foNotEqual, AExpression, AExpression);
  VerticalGrid.DataController.Filter.Active := True;
end;

function TfrmFilterExpression.GetDescription: string;
begin
  Result := sdxFrameVerticalGridCalculatedFilterItemsDescription;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridFilterExpressionFrameID, TfrmFilterExpression,
    VerticalGridFilterExpressionName, -1, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);

end.
