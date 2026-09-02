unit cxTreeListFilterExpressionFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxDBTreeListBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  dxScrollbarAnnotations, cxTL, cxTLdxBarBuiltInMenu, dxLayoutContainer,
  System.Actions, Vcl.ActnList, cxClasses, dxLayoutLookAndFeels,
  cxInplaceContainer, cxTLData, cxDBTL, dxLayoutControl,
  cxMaskEdit, cxDBLookupComboBox, cxCurrencyEdit, cxCalendar, cxCheckBox,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxFilter;

type
  TfrmFilterExpression = class(TcxDBTreeListDemoUnitForm)
    tlDBRecId: TcxDBTreeListColumn;
    tlDBModel: TcxDBTreeListColumn;
    tlDBBodyStyleID: TcxDBTreeListColumn;
    tlDBBodyStyle: TcxDBTreeListColumn;
    tlDBPrice: TcxDBTreeListColumn;
    tlDBSalesDate: TcxDBTreeListColumn;
    tlDBSalesPrice: TcxDBTreeListColumn;
    tlDBDeliveryDate: TcxDBTreeListColumn;
    tlDBDeliveryComplete: TcxDBTreeListColumn;
    tlDBDeliveryFrom: TcxDBTreeListColumn;
    tlDBDeliveryTo: TcxDBTreeListColumn;
    cxStyleRepository1: TcxStyleRepository;
    stGroup: TcxStyle;
    actExpressionEditing: TAction;
    cxCheckBox1: TdxLayoutCheckBoxItem;
    procedure tlDBEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
      var Allow: Boolean);
    procedure tlDBStylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
    procedure actExpressionEditingExecute(Sender: TObject);
  private
    procedure SetFilter;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

var
  frmFilterExpression: TfrmFilterExpression;

implementation

{$R *.dfm}

uses
  cxTreeListDataModule, cxVariants;

{ TfrmFilterExpression }

procedure TfrmFilterExpression.actExpressionEditingExecute(Sender: TObject);
begin
  tlDB.Filtering.ExpressionEditing := actExpressionEditing.Checked;
end;

procedure TfrmFilterExpression.FrameActivated;
begin
  inherited FrameActivated;
  SetFilter;
  TreeList.FullExpand;
end;

class function TfrmFilterExpression.GetID: Integer;
begin
  Result := 62;
end;

procedure TfrmFilterExpression.SetFilter;
var
  AValue: Variant;
  ADisplayValue: string;
  AExpression: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  AItemList := tlDB.DataController.Filter.Root.AddItemList(fboOr);
  AExpression := '[' + tlDBPrice.Caption.Text + '] * 95%';
  AItemList.AddExpressionItem(tlDBSalesPrice, foLessEqual, AExpression, AExpression);
  AExpression := '[' + tlDBPrice.Caption.Text + '] * 105%';
  AItemList.AddExpressionItem(tlDBSalesPrice, foGreaterEqual, AExpression, AExpression);
  AValue := VarListArrayCreate('New York');
  ADisplayValue := 'New York';
  VarListArrayAddValue(AValue, 'Boston');
  ADisplayValue := ADisplayValue + ';Boston';
  VarListArrayAddValue(AValue, 'Buffalo');
  ADisplayValue := ADisplayValue + ';Buffalo';
  tlDB.DataController.Filter.Root.AddItem(tlDBDeliveryFrom, foInList, AValue, ADisplayValue);
  AExpression := '[' + tlDBDeliveryTo.Caption.Text + ']';
  tlDB.DataController.Filter.Root.AddExpressionItem(tlDBDeliveryFrom, foNotEqual, AExpression, AExpression);
  tlDB.DataController.Filter.Active := True;
  if tlDB.AbsoluteVisibleCount > 0 then
    tlDB.AbsoluteVisibleItems[0].Focused := True;
  tlDB.SetFocus;
end;

procedure TfrmFilterExpression.tlDBEditing(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; var Allow: Boolean);
begin
  Allow := Allow and not tlDB.FocusedNode.IsGroupNode;
end;

procedure TfrmFilterExpression.tlDBStylesGetContentStyle(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
  ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  if ANode.IsGroupNode then
    AStyle := stGroup;
end;

initialization
  TfrmFilterExpression.Register;

end.
