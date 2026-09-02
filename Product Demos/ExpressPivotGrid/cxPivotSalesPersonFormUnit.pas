unit cxPivotSalesPersonFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotBaseFormUnit, cxControls, cxCustomPivotGrid,
  cxDBPivotGrid, cxPivotDataModule, cxClasses, cxStyles, cxDataStorage,
  cxGraphics, cxCustomData, cxEdit, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutLookAndFeels,
  Vcl.ActnList, dxLayoutControl, dxBarBuiltInMenu, System.Actions;

type
  TfrmSalesPerson = class(TcxPivotGridDemoUnitForm)
    pgfCountry: TcxDBPivotGridField;
    pgfName: TcxDBPivotGridField;
    pgfCategoryName: TcxDBPivotGridField;
    pgfOrderDate: TcxDBPivotGridField;
    pgfUnitPrice: TcxDBPivotGridField;
    pgfQuantity: TcxDBPivotGridField;
    pgfDiscount: TcxDBPivotGridField;
    pgfExtendedPrice: TcxDBPivotGridField;
    pgfSalesPerson: TcxDBPivotGridField;
    pgfOrderYear: TcxDBPivotGridField;
    pgfOrderQuarter: TcxDBPivotGridField;
    pgfOrderMonth: TcxDBPivotGridField;
    procedure pgfCategoryNameGetGroupImageIndex(Sender: TcxPivotGridField;
      const AItem: TcxPivotGridViewDataItem; var AImageIndex: Integer;
      var AImageAlignHorz: TAlignment;
      var AImageAlignVert: TcxAlignmentVert);
    procedure PivotGridStylesGetColumnHeaderStyle(
      Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem;
      var AStyle: TcxStyle);
  public
    function HasOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

procedure TfrmSalesPerson.pgfCategoryNameGetGroupImageIndex(
  Sender: TcxPivotGridField; const AItem: TcxPivotGridViewDataItem;
  var AImageIndex: Integer; var AImageAlignHorz: TAlignment;
  var AImageAlignVert: TcxAlignmentVert);
begin
  if AItem.IsTotal then
  begin
    if (TcxPivotGridViewDataTotalItem(AItem).Total <> nil) and
      (TcxPivotGridViewDataTotalItem(AItem).Total.SummaryType = stSum) then
      AImageIndex := 8;
  end
  else
    AImageIndex := Sender.GroupValueList.IndexOf(AItem.GroupItem.Value);

  if not AItem.Expanded or (Sender.PivotGrid.OptionsView.RowTotalsLocation = rtlTree) then
    AImageAlignVert := vaCenter;
end;

procedure TfrmSalesPerson.PivotGridStylesGetColumnHeaderStyle(
  Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem;
  var AStyle: TcxStyle);
begin
  if (AItem.Field <> nil) and (AItem.Field.DataBinding.ValueTypeClass = TcxDateTimeValueType) then
   AStyle := dmPivot.stDefaultFontStyle;
end;

function TfrmSalesPerson.HasOptions: Boolean;
begin
  Result := True;
end;

end.
