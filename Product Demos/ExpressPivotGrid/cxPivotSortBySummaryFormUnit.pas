unit cxPivotSortBySummaryFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxClasses, cxCustomData,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, cxGroupBox, cxRadioGroup, dxLayoutContainer, dxLayoutLookAndFeels,
  Vcl.ActnList, dxLayoutControl, dxLayoutcxEditAdapters, System.Actions, dxBarBuiltInMenu;

type
  TfrmSortBySummary = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    cbFieldList: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    cbSortBy: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    cmbSortOrder: TcxComboBox;
    procedure FormCreate(Sender: TObject);
    procedure cbFieldListPropertiesChange(Sender: TObject);
    procedure cbSortByPropertiesChange(Sender: TObject);
    procedure PivotGridStylesGetFieldHeaderStyle(
      Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
      var AStyle: TcxStyle);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotDataModule;

{$R *.dfm}

class function TfrmSortBySummary.GetID: Integer;
begin
  Result := 7;
end;

procedure TfrmSortBySummary.FormCreate(Sender: TObject);
var
  I: Integer;
  AField: TcxPivotGridField;
begin
  for I := 0 to PivotGrid.FieldCount - 1 do
  begin
    AField := PivotGrid.Fields[I];
    if AField.Area = faData then
      cbSortBy.Properties.Items.AddObject(AField.Caption, AField)
    else
      if AField.Area in [faRow, faColumn] then
        cbFieldList.Properties.Items.AddObject(AField.Caption, AField);
  end;
  cbSortBy.Properties.Items.AddObject('None', nil);
  cbFieldList.ItemObject := pgfSalesPerson;
  pgfOrderMonth.SortBySummaryInfo.Field := pgfExtendedPrice;
  pgfOrderMonth.SortBySummaryInfo.Conditions.Add(pgfOrderYear, '2016');
end;

procedure TfrmSortBySummary.cbFieldListPropertiesChange(Sender: TObject);
begin
  if cbFieldList.ItemObject <> nil then
    cbSortBy.ItemObject := TcxPivotGridField(cbFieldList.ItemObject).SortBySummaryInfo.Field
  else
    cbSortBy.ItemObject := nil;
end;

procedure TfrmSortBySummary.cbSortByPropertiesChange(Sender: TObject);
begin
  if cbFieldList.ItemObject <> nil then
    with TcxPivotGridField(cbFieldList.ItemObject).SortBySummaryInfo do
    begin
      Field := TcxPivotGridField(cbSortBy.ItemObject);
      if Field <> nil then
        SummaryType := Field.SummaryType;
    end;
end;

procedure TfrmSortBySummary.cxComboBox1PropertiesChange(Sender: TObject);
begin
  inherited;
  DBPivotGrid.OptionsBehavior.SortBySummaryDefaultOrder := TcxDataSortOrder(cmbSortOrder.ItemIndex);
end;

procedure TfrmSortBySummary.PivotGridStylesGetFieldHeaderStyle(
  Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
  var AStyle: TcxStyle);
begin
  if (AField <> nil) and (AField.SortBySummaryInfo.Field <> nil) then
    AStyle := dmPivot.stSelectedField
end;

initialization
  TfrmSortBySummary.Register;

finalization

end.
