unit cxPivotSummaryVariationFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxStyles, cxGraphics, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, cxCustomData, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions,
  dxBarBuiltInMenu;

type
  TfrmSummaryVariation = class(TfrmSalesPerson)
    pgfVariation: TcxDBPivotGridField;
    dxLayoutItem2: TdxLayoutItem;
    cbVariationType: TcxComboBox;
    procedure PivotGridStylesGetContentStyle(Sender: TcxCustomPivotGrid;
      ACell: TcxPivotGridDataCellViewInfo; var AStyle: TcxStyle);
    procedure cbVariationTypePropertiesChange(Sender: TObject);
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotDataModule;

{$R *.dfm}

class function TfrmSummaryVariation.GetID: Integer;
begin
  Result := 5;
end;

procedure TfrmSummaryVariation.PivotGridStylesGetContentStyle(
  Sender: TcxCustomPivotGrid; ACell: TcxPivotGridDataCellViewInfo;
  var AStyle: TcxStyle);
begin
  if (ACell.DataField = pgfVariation) and not VarIsNull(ACell.Value) then
  begin
    if ACell.Value < 0 then
      AStyle := dmPivot.stRedFont
    else
      AStyle := dmPivot.stBlueFont
  end;
end;

procedure TfrmSummaryVariation.cbVariationTypePropertiesChange(
  Sender: TObject);
begin
  pgfVariation.Caption := cbVariationType.Text + ' ' + 'Variation';
  pgfVariation.SummaryVariation := TcxPivotGridSummaryVariation(cbVariationType.ItemIndex);
end;

initialization
  TfrmSummaryVariation.Register;

finalization

end.
