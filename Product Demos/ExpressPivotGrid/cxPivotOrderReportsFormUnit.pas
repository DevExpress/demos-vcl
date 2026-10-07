unit cxPivotOrderReportsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotBaseFormUnit, cxControls, cxCustomPivotGrid, cxDBPivotGrid,
  cxPivotDataModule, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxClasses,
  cxCustomData, cxStyles, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions,
  dxBarBuiltInMenu;

type
  TcxPivotOrderReports = class(TcxPivotGridDemoUnitForm)
    PivotGridOrderID: TcxDBPivotGridField;
    PivotGridProductID: TcxDBPivotGridField;
    PivotGridProductName: TcxDBPivotGridField;
    PivotGridUnitPrice: TcxDBPivotGridField;
    PivotGridQuantity: TcxDBPivotGridField;
    PivotGridDiscount: TcxDBPivotGridField;
    PivotGridExtendedPrice: TcxDBPivotGridField;
    dxLayoutItem6: TdxLayoutItem;
    cbFilter: TcxComboBox;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    dxLayoutGroup1: TdxLayoutGroup;
    lgFilter: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    rbOrder: TdxLayoutRadioButtonItem;
    rbOrderFilter: TdxLayoutRadioButtonItem;
    rbQuantity: TdxLayoutRadioButtonItem;
    rbAverage: TdxLayoutRadioButtonItem;
    procedure rbLayoutTypeClick(Sender: TObject);
    procedure cbFilterPropertiesChange(Sender: TObject);
  public
    procedure SelectLayout(ALayoutID: Integer);
    procedure SetFilter(const AValue: string);
    procedure SetFilterVisible(AValue: Boolean);
    class function GetID: Integer; override;
  end;

implementation

uses cxCustomPivotBaseFormUnit;

{$R *.dfm}

procedure TcxPivotOrderReports.rbLayoutTypeClick(Sender: TObject);
begin
  SelectLayout(TcxRadioButton(Sender).Tag);
end;

procedure TcxPivotOrderReports.SelectLayout(ALayoutID: Integer);
const
  Orders: array[0..5] of TLayoutInfo =
    ((Name: 'Unit Price'; Area: faData), (Name: 'Quantity'; Area: faData),
     (Name: 'Discount'; Area: faData), (Name: 'Extended Price'; Area: faData),
     (Name: 'Order'; Area: faRow), (Name: 'Product Name'; Area: faRow));
  Quantity: array[0..5] of TLayoutInfo =
    ((Name: 'Order'; Area: faFilter), (Name: 'Unit Price'; Area: faFilter),
     (Name: 'Discount'; Area: faFilter), (Name: 'Extended Price'; Area: faFilter),
     (Name: 'Quantity'; Area: faData), (Name: 'Product Name'; Area: faRow));
  UnitPrice: array[0..5] of TLayoutInfo =
    ((Name: 'Order'; Area: faFilter), (Name: 'Quantity'; Area: faFilter),
     (Name: 'Discount'; Area: faFilter), (Name: 'Extended Price'; Area: faFilter),
     (Name: 'Unit Price'; Area: faData), (Name: 'Product Name'; Area: faRow));

begin
  PivotGrid.BeginUpdate;
  try
    SetFilterVisible(ALayoutID = 1);
    case ALayoutID of
      0:
        SelectLayoutInfo(Orders);
      1:
        SelectLayoutInfo(Orders);
      2:
        SelectLayoutInfo(Quantity);
      3:
        SelectLayoutInfo(UnitPrice);
    end;
  finally
    PivotGrid.EndUpdate;
  end;
end;

procedure TcxPivotOrderReports.SetFilter(const AValue: string);
begin
  PivotGridOrderID.Filter.FilterType := ftIncluded;
  PivotGridOrderID.Filter.Values.Add(AValue);
end; 

procedure TcxPivotOrderReports.SetFilterVisible(AValue: Boolean);
var
  I: Integer;
begin
  if AValue = lgFilter.Visible then Exit;
  if AValue then
  begin
    if cbFilter.Properties.Items.Count <> PivotGridOrderID.RecordCount then
    begin
      cbFilter.Properties.Items.BeginUpdate;
      try
        cbFilter.Properties.Items.Clear;
        with PivotGridOrderID do
        begin
          for I := 0 to GroupValueList.Count - 1 do
            cbFilter.Properties.Items.Add(GetGroupValueDisplayText(GroupValueList[I]));
        end;
      finally
        cbFilter.Properties.Items.EndUpdate;
      end;
      if cbFilter.ItemIndex = -1 then
        cbFilter.ItemIndex := 0;
    end;
    SetFilter(cbFilter.Text);
  end
  else
    PivotGridOrderID.Filter.FilterType := ftExcluded;
  PivotGridOrderID.Options.Filtering := not AValue;
  lgFilter.Visible := AValue;
end;

class function TcxPivotOrderReports.GetID: Integer;
begin
  Result := 2;
end;

procedure TcxPivotOrderReports.cbFilterPropertiesChange(Sender: TObject);
begin
  SetFilter(cbFilter.Text);
end;

initialization
  TcxPivotOrderReports.Register;

finalization

end.






