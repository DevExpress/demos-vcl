unit cxPivotTotalsLocationFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, cxCustomData, cxStyles,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutLookAndFeels, Vcl.ActnList,
  dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmTotalsLocation = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    cbColumnTotalsLocation: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbRowTotalsLocation: TcxComboBox;
    procedure cbTotalsLocationPropertiesChange(Sender: TObject);
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotBaseFormUnit;

{$R *.dfm}

class function TfrmTotalsLocation.GetID: Integer;
begin
  Result := 6;
end;

procedure TfrmTotalsLocation.cbTotalsLocationPropertiesChange(
  Sender: TObject);
begin
  PivotGrid.BeginUpdate;
  try
    PivotGrid.OptionsView.ColumnTotalsLocation := TcxPivotGridColumnTotalsLocation(cbColumnTotalsLocation.ItemIndex);
    PivotGrid.OptionsView.RowTotalsLocation := TcxPivotGridRowTotalsLocation(cbRowTotalsLocation.ItemIndex);
  finally
    PivotGrid.EndUpdate;
  end;
end;

initialization
  TfrmTotalsLocation.Register;

finalization

end.
