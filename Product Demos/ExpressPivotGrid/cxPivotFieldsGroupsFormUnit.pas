unit cxPivotFieldsGroupsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxPivotDataModule, cxStyles, Vcl.Menus, cxLookAndFeelPainters,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxClasses, cxGraphics, cxCustomData, cxLookAndFeels, cxEdit, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions,
  dxBarBuiltInMenu;

type
  TfrmGroups = class(TfrmSalesPerson)
    dxLayoutItem2: TdxLayoutItem;
    cxbtnSetVisible: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    procedure PivotGridStylesGetFieldHeaderStyle(
      Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
      var AStyle: TcxStyle);
    procedure cxbtnSetVisibleClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

class function TfrmGroups.GetID: Integer;
begin
  Result := 15;
end;

procedure TfrmGroups.PivotGridStylesGetFieldHeaderStyle(
  Sender: TcxCustomPivotGrid; AField: TcxPivotGridField;
  var AStyle: TcxStyle);
begin
  if (AField <> nil) and (AField.Group <> nil) then
  begin
    case AField.Group.Index of
      0:
        AStyle := dmPivot.stRedFont;
      1:
        AStyle := dmPivot.stBlueFont;
      2:
        AStyle := dmPivot.stGreenFont;
    end;
  end;
end;

procedure TfrmGroups.cxbtnSetVisibleClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to PivotGrid.Groups.Count - 1 do
    PivotGrid.Groups[I].FullExpand;
end;

procedure TfrmGroups.cxButton1Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to PivotGrid.Groups.Count - 1 do
    PivotGrid.Groups[I].FullCollapse;
end;

initialization
  TfrmGroups.Register;

finalization

end.
