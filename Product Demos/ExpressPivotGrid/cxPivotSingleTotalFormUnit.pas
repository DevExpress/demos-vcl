unit cxPivotSingleTotalFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxPivotGridStrs, cxClasses,
  cxCustomData, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  Vcl.ActnList, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmSingleTotal = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    cbField: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbSummaryType: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbSummaryTypePropertiesChange(Sender: TObject);
    procedure cbFieldPropertiesChange(Sender: TObject);
    procedure PivotGridStylesGetFieldHeaderStyle(
      Sender: TcxCustomPivotGrid; AField: TcxPivotGridField; var AStyle: TcxStyle);
  private
    SummaryField: TcxDBPivotGridField;
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotDataModule, dxCore;

{$R *.dfm}

class function TfrmSingleTotal.GetID: Integer;
begin
  Result := 3;
end;

procedure TfrmSingleTotal.FormCreate(Sender: TObject);
var
  S: string;
  I: TcxPivotGridSummaryType;
begin
  SummaryField := pgfUnitPrice;
  cbField.Properties.Items.AddObject(pgfUnitPrice.DataBinding.FieldName, pgfUnitPrice);
  cbField.Properties.Items.AddObject(pgfQuantity.DataBinding.FieldName, pgfQuantity);
  cbField.Properties.Items.AddObject(pgfDiscount.DataBinding.FieldName, pgfDiscount);
  for I := Low(TotalDescriptions) to High(TotalDescriptions) do
  begin
    S := Format(cxGetResourceString(TotalDescriptions[I]), ['']);
    S := StringReplace(S, ' ', '', [rfReplaceAll]);
    cbSummaryType.Properties.Items.AddObject(S, TObject(I));
  end;
  cbField.ItemObject := pgfUnitPrice;
end;

procedure TfrmSingleTotal.cbSummaryTypePropertiesChange(Sender: TObject);
var
  S: string;
begin
  SummaryField.SummaryType := TcxPivotGridSummaryType(cbSummaryType.ItemObject);
  S := Format(cxGetResourceString(TotalDescriptions[SummaryField.SummaryType]), ['']);
  S := SummaryField.DataBinding.FieldName + '(' + S  + ')';
  SummaryField.Caption := StringReplace(S, ' ', '', [rfReplaceAll]);
  PivotGrid.LayoutChanged;
end;

procedure TfrmSingleTotal.cbFieldPropertiesChange(Sender: TObject);
begin
  SummaryField := TcxDBPivotGridField(cbField.ItemObject);
  cbSummaryType.ItemObject := TObject(SummaryField.SummaryType);
  PivotGrid.LayoutChanged;
end;

procedure TfrmSingleTotal.PivotGridStylesGetFieldHeaderStyle(
  Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
  var AStyle: TcxStyle);
begin
  if (AField <> nil) and (AField.Area = faData) and (dmPivot <> nil) then
  begin
    AStyle := dmPivot.stField;
    if AField = SummaryField then
      AStyle := dmPivot.stSelectedField;
  end;
end;

initialization
  TfrmSingleTotal.Register;

finalization

end.
