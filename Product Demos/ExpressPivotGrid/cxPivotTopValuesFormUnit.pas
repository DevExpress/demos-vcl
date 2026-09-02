unit cxPivotTopValuesFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxCheckBox, cxSpinEdit, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles,
  cxClasses, cxCustomData, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmTopValues = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    speTopCount: TcxSpinEdit;
    dxLayoutItem3: TdxLayoutItem;
    cbFieldList: TcxComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    acTopValuesShowOthers: TAction;
    cbTopValuesShowOthers: TdxLayoutCheckBoxItem;
    procedure cbFieldListPropertiesChange(Sender: TObject);
    procedure UpdateSettings(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GetGroupHeaderStyle(Sender: TcxCustomPivotGrid;
      AItem: TcxPivotGridViewDataItem; var AStyle: TcxStyle);
  private
    LockUpdate: Boolean;
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotBaseFormUnit, cxPivotDataModule;

{$R *.dfm}

class function TfrmTopValues.GetID: Integer;
begin
  Result := 8;
end;

procedure TfrmTopValues.cbFieldListPropertiesChange(Sender: TObject);
var
  AField: TcxPivotGridField;
begin
  if cbFieldList.ItemObject <> nil then
  begin
    AField := TcxPivotGridField(cbFieldList.ItemObject);
    if not (AField.Area in [faRow, faColumn]) then
      AField.Area := faRow;
    AField.Visible := True;
    LockUpdate := True;
    try
      speTopCount.Value := AField.TopValueCount;
      speTopCount.Properties.MaxValue := AField.GroupValueList.Count;
      acTopValuesShowOthers.Checked := AField.TopValueShowOthers;
    finally
      LockUpdate := False;
    end;
  end;
end;

procedure TfrmTopValues.UpdateSettings(Sender: TObject);
begin
  if LockUpdate then Exit;
  if cbFieldList.ItemObject <> nil then
    with TcxPivotGridField(cbFieldList.ItemObject) do
    begin
      TopValueCount := speTopCount.Value;
      TopValueShowOthers := acTopValuesShowOthers.Checked;
    end;
end;

procedure TfrmTopValues.FormShow(Sender: TObject);
var
  I: Integer;
  AField: TcxPivotGridField;
begin
  with cbFieldList.Properties.Items do
  begin
    BeginUpdate;
    try
      Clear;
      for I := 0 to PivotGrid.FieldCount - 1 do
      begin
        AField := PivotGrid.Fields[I];
        if (AField.Area <> faData) and not AField.Hidden then
          AddObject(AField.Caption, AField);
      end;
      cbFieldList.ItemObject := pgfSalesPerson;
    finally
      EndUpdate;
    end;
  end;
end;

procedure TfrmTopValues.GetGroupHeaderStyle(Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem;
  var AStyle: TcxStyle);
begin
  if AItem.GroupItem.RecordIndex = cxPivotGridOthersRecordIndex then
    AStyle := dmPivot.stBoldFont
end;

initialization
  TfrmTopValues.Register;

finalization

end.
