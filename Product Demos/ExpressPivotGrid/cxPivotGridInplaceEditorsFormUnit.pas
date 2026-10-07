unit cxPivotGridInplaceEditorsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxClasses, cxGraphics, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxCustomPivotGrid,
  cxDBPivotGrid, cxControls, cxProgressBar, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, dxBarBuiltInMenu, System.Actions;

type
  TfrmInplaceEditors = class(TfrmSalesPerson)
    pgfPercentsOfColumn: TcxDBPivotGridField;
  public
    class function GetID: Integer; override;
    function HasOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

{ TfrmInplaceEditors }

class function TfrmInplaceEditors.GetID: Integer;
begin
  Result := 26;
end;

function TfrmInplaceEditors.HasOptions: Boolean;
begin
  Result := False;
end;

initialization
  TfrmInplaceEditors.Register;

finalization

end.
