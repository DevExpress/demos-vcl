unit cxPivotProductReportsFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotBaseFormUnit, cxControls, cxCustomPivotGrid, cxDBPivotGrid,
  cxPivotDataModule, cxGraphics, Vcl.StdCtrls, cxRadioGroup, cxContainer,
  cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxClasses,
  cxCustomData, cxStyles, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, System.Actions, dxBarBuiltInMenu;

type
  TcxPivotProductReports = class(TcxPivotGridDemoUnitForm)
    PivotGridCategoryName: TcxDBPivotGridField;
    PivotGridProductName: TcxDBPivotGridField;
    PivotGridProductSales: TcxDBPivotGridField;
    PivotGridShippedDate: TcxDBPivotGridField;
    pgfShippedMonth: TcxDBPivotGridField;
    pgfShippedYear: TcxDBPivotGridField;
    pgfShippedQuarter: TcxDBPivotGridField;
    pgMinimumSale: TcxDBPivotGridField;
    pgAverageSale: TcxDBPivotGridField;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    rbCategorySales: TdxLayoutRadioButtonItem;
    rbProductSales: TdxLayoutRadioButtonItem;
    rbIntervalGrouping: TdxLayoutRadioButtonItem;
    rbMultiplySubtotals: TdxLayoutRadioButtonItem;
    rbAverage: TdxLayoutRadioButtonItem;
    rbTop3Products: TdxLayoutRadioButtonItem;
    procedure rbDemoSubTypeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  public
    procedure SelectLayout(AType: Integer);
    class function GetID: Integer; override; 
  end;

implementation

uses cxCustomPivotBaseFormUnit;

{$R *.dfm}

procedure TcxPivotProductReports.SelectLayout(AType: Integer);
const
  Category: array[0..4] of TLayoutInfo =
    ((Name: 'Product Name'; Area: faFilter), (Name: 'Shipped Year'; Area: faFilter),
     (Name: 'Shipped Quarter'; Area: faFilter), (Name: 'Product Sales'; Area: faData),
     (Name: 'Category Name'; Area: faRow));

  Product: array[0..4] of TLayoutInfo =
    ((Name: 'Shipped Year'; Area: faFilter), (Name: 'Shipped Quarter'; Area: faFilter),
     (Name: 'Product Sales'; Area: faData), (Name: 'Category Name'; Area: faRow),
     (Name: 'Product Name'; Area: faRow));

  IntervalGrouping: array[0..5] of TLayoutInfo =
    ((Name: 'Shipped Year'; Area: faColumn), (Name: 'Shipped Quarter'; Area: faColumn),
     (Name: 'Shipped Month'; Area: faColumn), (Name: 'Category Name'; Area: faRow),
     (Name: 'Product Name'; Area: faRow), (Name: 'Product Sales'; Area: faData));

  MultipleSubtotals: array[0..5] of TLayoutInfo =
    ((Name: 'Shipped Month'; Area: faFilter), (Name: 'Product Sales'; Area: faData),
     (Name: 'Category Name'; Area: faRow), (Name: 'Product Name'; Area: faRow),
     (Name: 'Shipped Year'; Area: faColumn), (Name: 'Shipped Quarter'; Area: faColumn));

  AverageSales: array[0..6] of TLayoutInfo =
    ((Name: 'Shipped Year'; Area: faFilter), (Name: 'Product Name'; Area: faFilter),
     (Name: 'Product Sales'; Area: faData), (Name: 'Average Sale'; Area: faData),
     (Name: 'Minimum Sale'; Area: faData), (Name: 'Shipped Quarter'; Area: faRow),
     (Name: 'Category Name'; Area: faRow));

  Top3Products: array[0..4] of TLayoutInfo =
    ((Name: 'Shipped Year'; Area: faFilter), (Name: 'Shipped Quarter'; Area: faFilter),
     (Name: 'Product Sales'; Area: faData), (Name: 'Category Name'; Area: faRow),
     (Name: 'Product Name'; Area: faRow));
     
begin
  PivotGrid.Groups.Clear;
  PivotGridCategoryName.TotalsVisibility := tvAutomatic;
  PivotGridProductName.TopValueCount := 0;
  PivotGridProductName.SortBySummaryInfo.Field := nil;
  case AType of
    0:
      SelectLayoutInfo(Category);
    1:
      SelectLayoutInfo(Product);
    2:
    begin
      SelectLayoutInfo(IntervalGrouping);
      PivotGrid.Groups.Add.AddFields([pgfShippedYear, pgfShippedQuarter, pgfShippedMonth]);
    end;
    3:
    begin
      PivotGridCategoryName.TotalsVisibility := tvCustom;
      SelectLayoutInfo(MultipleSubtotals);
    end;
    4:
      SelectLayoutInfo(AverageSales);
    5:
    begin
      PivotGridProductName.SortBySummaryInfo.Field := PivotGridProductSales;
      PivotGridProductName.SortBySummaryInfo.SummaryType := stSum;
      PivotGridProductName.TopValueCount := 3;
      SelectLayoutInfo(Top3Products);
    end;
  end;
end;

procedure TcxPivotProductReports.rbDemoSubTypeClick(Sender: TObject);
begin
  PivotGrid.BeginUpdate;
  try
    SelectLayout(TcxRadioButton(Sender).Tag);
  finally
    PivotGrid.EndUpdate;
  end;
end;

procedure TcxPivotProductReports.FormShow(Sender: TObject);
begin
  inherited;
  rbCategorySales.Checked := True;
end;

class function TcxPivotProductReports.GetID: Integer;
begin
  Result := 1;
end;

initialization
  TcxPivotProductReports.Register;

finalization

end.


