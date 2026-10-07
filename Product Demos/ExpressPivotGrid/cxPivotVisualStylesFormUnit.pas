unit cxPivotVisualStylesFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxStyles, cxClasses, cxGraphics, cxCustomData, cxEdit,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutLookAndFeels,
  Vcl.ActnList, dxLayoutControl, dxBarBuiltInMenu, System.Actions;

type
  TfrmVisualStyles = class(TfrmSalesPerson)
    cxStylesRepository: TcxStyleRepository;
    stContent: TcxStyle;
    stHeader: TcxStyle;
    stFieldHeaders: TcxStyle;
    stHeadersBackground: TcxStyle;
    stRedContent: TcxStyle;
    stMin: TcxStyle;
    stMax: TcxStyle;
    stBlueContent: TcxStyle;
    dxLayoutItem2: TdxLayoutItem;
    cxComboBox1: TcxComboBox;
    procedure PivotGridStylesGetContentStyle(Sender: TcxCustomPivotGrid;
      ACell: TcxPivotGridDataCellViewInfo; var AStyle: TcxStyle);
    procedure FormCreate(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxCustomPivotBaseFormUnit;

{$R *.dfm}

class function TfrmVisualStyles.GetID: Integer;
begin
  Result := 14;
end;

procedure TfrmVisualStyles.PivotGridStylesGetContentStyle(
  Sender: TcxCustomPivotGrid; ACell: TcxPivotGridDataCellViewInfo;
  var AStyle: TcxStyle);
begin
  Exit;
  if (ACell.DataField = pgfExtendedPrice) then
  begin
    if ACell.Value < 15000 then
      AStyle := stBlueContent
    else
      AStyle := stRedContent;
  end;
end;

procedure TfrmVisualStyles.FormCreate(Sender: TObject);
begin
  inherited;
  cxComboBox1.Properties.Items.Add('Column');
  cxComboBox1.Properties.Items.Add('All Cells');
  cxComboBox1.Properties.Items.Add('Row');
  cxComboBox1.ItemIndex := 0;
  PivotGrid.LookAndFeel.SkinName := '';
end;

procedure TfrmVisualStyles.cxComboBox1PropertiesChange(Sender: TObject);
var
  I: Integer;
  AStyleIndex: Integer;
begin
  inherited;
  PivotGrid.LookAndFeel.SkinName := '';
  for I := gs_ColumnMaximumValue to gs_RowMinimumValue do
    pgfExtendedPrice.Styles.Values[I] := nil;
  AStyleIndex := gs_ColumnMaximumValue + cxComboBox1.ItemIndex * 2;
  pgfExtendedPrice.Styles.Values[AStyleIndex] := stMax;
  pgfExtendedPrice.Styles.Values[AStyleIndex + 1] := stMin;
end;

initialization
  //TfrmVisualStyles.Register;

finalization



end.
