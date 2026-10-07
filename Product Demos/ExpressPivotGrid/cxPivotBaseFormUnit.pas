unit cxPivotBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxControls, cxCustomPivotGrid, cxDBPivotGrid, cxPivotDataModule,
  cxPivotDrillDownFormUnit, cxClasses, cxGraphics, cxCustomData, cxStyles,
  cxEdit, cxCustomPivotBaseFormUnit, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels, Vcl.ActnList, dxBarBuiltInMenu, System.Actions;

type
  TcxPivotGridDemoUnitForm = class(TcxCustomPivotGridDemoUnitForm)
    dxLayoutItem1: TdxLayoutItem;
    DBPivotGrid: TcxDBPivotGrid;
    procedure DBPivotGridDblClick(Sender: TObject);
  protected
    function GetPivotGrid: TcxCustomPivotGrid; override;
  public
    procedure ActivateDataSet; override;
  end;

implementation

{$R *.dfm}

uses
  Main, Data.DB, dxSplashForms;

procedure TcxPivotGridDemoUnitForm.ActivateDataSet;
var
  S: string;
  ADataSet: TDataSet;
begin
  inherited;
  ADataSet := DBPivotGrid.DataSource.DataSet;
  if ADataSet.Active then Exit;
  S := ADataSet.Name;
  Delete(S, 1, 2);
  if Pos('Reports', S) > 0 then
    Insert(' ', S, Pos('Reports', S));
  if Pos('Person', S) > 0 then
    Insert(' ', S, Pos('Person', S));
  TdxSplashFormManager.WaitForm.Show(Application.MainForm);  
  try
    ADataSet.Active := True;
  finally
    TdxSplashFormManager.WaitForm.Hide;
  end;
end;

function TcxPivotGridDemoUnitForm.GetPivotGrid: TcxCustomPivotGrid;
begin
  Result := DBPivotGrid;
end;

procedure TcxPivotGridDemoUnitForm.DBPivotGridDblClick(Sender: TObject);
var
  ACrossCell: TcxPivotGridCrossCell;
begin
  with PivotGrid.HitTest do
  begin
    if HitAtDataCell then
    begin
      ACrossCell := (HitObject as TcxPivotGridDataCellViewInfo).CrossCell;
      if ACrossCell <> nil then
        cxShowDrillDownDataSource(ACrossCell);
    end;
  end; 
end;

end.
