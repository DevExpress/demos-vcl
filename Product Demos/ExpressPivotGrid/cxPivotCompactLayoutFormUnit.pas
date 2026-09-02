unit cxPivotCompactLayoutFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxClasses, cxCustomData, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxSplitter, cxRadioGroup, cxLabel, dxLayoutContainer, dxLayoutLookAndFeels, Vcl.ActnList,
  dxLayoutControl, dxLayoutcxEditAdapters, cxGroupBox, dxLayoutControlAdapters, System.Actions,
  dxBarBuiltInMenu;

type
  TfrmCompactLayout = class(TfrmSalesPerson)
    lsplCutomizationForm: TdxLayoutSplitterItem;
    grbCustomization: TcxGroupBox;
    liCustomization: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    rbCompactLayout: TdxLayoutRadioButtonItem;
    rbFullLayout: TdxLayoutRadioButtonItem;
    procedure FormShow(Sender: TObject);
    procedure DBPivotGridCustomization(Sender: TObject);
    procedure rbLayoutClick(Sender: TObject);
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotBaseFormUnit, cxPivotGridAdvancedCustomization;

{$R *.dfm}

procedure TfrmCompactLayout.DBPivotGridCustomization(Sender: TObject);
begin
  inherited;
  if PivotGrid.Customization.Visible then
  begin
    PivotGrid.Customization.Form.Align := alClient;
    PivotGrid.Customization.Site := grbCustomization;
  end
  else
    PivotGrid.Customization.Site := nil;
  liCustomization.Visible := PivotGrid.Customization.Visible;
  lsplCutomizationForm.Visible := liCustomization.Visible;
end;

procedure TfrmCompactLayout.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  rbCompactLayout.Checked := True;
  PivotGrid.Customization.FormStyle := cfsAdvanced;
  PivotGrid.Customization.Visible := True;
  TcxPivotGridAdvancedCustomizationForm(PivotGrid.Customization.Form).Layout := cflBottomPanelOnly2by2;
  for I := 0 to PivotGrid.FieldCount - 1 do
    PivotGrid.Fields[I].ExpandAll;
end;

class function TfrmCompactLayout.GetID: Integer;
begin
  Result := 35;
end;

procedure TfrmCompactLayout.rbLayoutClick(Sender: TObject);
begin
  inherited;
  PivotGrid.OptionsView.RowTotalsLocation := TcxPivotGridRowTotalsLocation(TComponent(Sender).Tag);
end;

initialization
  TfrmCompactLayout.Register;

finalization

end.
