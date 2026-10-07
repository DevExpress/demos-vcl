unit cxPivotIntervalGroupingFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxCheckBox, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxClasses,
  cxCustomData, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters, Vcl.ActnList,
  dxLayoutLookAndFeels, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmIntervalGrouping = class(TfrmSalesPerson)
    pgfProductAlphabetical: TcxDBPivotGridField;
    dxLayoutItem2: TdxLayoutItem;
    cbGroupType: TcxComboBox;
    acShowProductAlphabetically: TAction;
    cbxShowProductAlphabetically: TdxLayoutCheckBoxItem;
    procedure PivotGridStylesGetFieldHeaderStyle(
      Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
      var AStyle: TcxStyle);
    procedure cbGroupTypePropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acShowProductAlphabeticallyExecute(Sender: TObject);
  private
    procedure Initialize;
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotDataModule;

{$R *.dfm}

procedure TfrmIntervalGrouping.Initialize;
begin
  pgfProductAlphabetical.Visible :=  acShowProductAlphabetically.Checked;
  cbGroupType.ItemIndex := Integer(pgfOrderDate.GroupInterval) - Integer(giDate);
end;

class function TfrmIntervalGrouping.GetID: Integer;
begin
  Result := 9;
end;

procedure TfrmIntervalGrouping.PivotGridStylesGetFieldHeaderStyle(
  Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
  var AStyle: TcxStyle);
begin
  if AField = pgfOrderDate then
    AStyle := dmPivot.stBoldFont;
end;

procedure TfrmIntervalGrouping.acShowProductAlphabeticallyExecute(Sender: TObject);
begin
  pgfProductAlphabetical.Visible := acShowProductAlphabetically.Checked;
end;

procedure TfrmIntervalGrouping.cbGroupTypePropertiesChange(
  Sender: TObject);
var
  S: string;
begin
   pgfOrderDate.GroupInterval :=
     TcxPivotGridGroupInterval(cbGroupType.ItemIndex + Integer(giDate));
   S := cbGroupType.Text;
   if cbGroupType.ItemIndex <> 0 then
     S := Copy(S, 5, 128);
   pgfOrderDate.Caption := 'Order Date (' + S + ')';
end;

procedure TfrmIntervalGrouping.FormCreate(Sender: TObject);
begin
  Initialize;
end;

initialization
  TfrmIntervalGrouping.Register;

finalization

end.
