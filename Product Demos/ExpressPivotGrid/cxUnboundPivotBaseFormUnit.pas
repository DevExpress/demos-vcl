unit cxUnboundPivotBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxCustomPivotBaseFormUnit, cxClasses, cxGraphics, cxCustomData,
  cxStyles, cxEdit, cxControls, cxCustomPivotGrid, cxPivotGrid, cxLookAndFeels, cxLookAndFeelPainters,
  dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, Vcl.ActnList, dxBarBuiltInMenu, System.Actions;

type
  TcxUnboundPivotGridDemoUnitForm = class(TcxCustomPivotGridDemoUnitForm)
    dxLayoutItem1: TdxLayoutItem;
    UnboundPivot: TcxPivotGrid;
  protected
    function GetPivotGrid: TcxCustomPivotGrid; override;
  public
    function HasOptions: Boolean; override;
  end;

var
  cxUnboundPivotGridDemoUnitForm: TcxUnboundPivotGridDemoUnitForm;

implementation

{$R *.dfm}

{ TcxUnboundPivotGridDemoUnitForm }

function TcxUnboundPivotGridDemoUnitForm.GetPivotGrid: TcxCustomPivotGrid;
begin
  Result := UnboundPivot;
end;

function TcxUnboundPivotGridDemoUnitForm.HasOptions: Boolean;
begin
  Result := True;
end;

end.
