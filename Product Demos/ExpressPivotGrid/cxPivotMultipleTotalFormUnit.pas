unit cxPivotMultipleTotalFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxClasses, cxCustomData, cxStyles, cxLookAndFeels, cxLookAndFeelPainters, cxEdit,
  dxLayoutContainer, dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TfrmMultipleTotals = class(TfrmSalesPerson)
  public
    class function GetID: Integer; override;
    function HasOptions: Boolean; override;
  end;

implementation

uses System.Math;

{$R *.dfm}

class function TfrmMultipleTotals.GetID: Integer;
begin
  Result := 4;
end;

function TfrmMultipleTotals.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  TfrmMultipleTotals.Register;

finalization

end.
