unit cxPivotGridSummaryDataSetFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxClasses, cxGraphics, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxCustomPivotGrid,
  cxDBPivotGrid, cxControls, Data.DB, cxDBData, cxFilter, cxData, cxDataStorage,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGridChartView, cxGridDBChartView, cxGrid,
  cxPivotGridSummaryDataSet, dxmdaset, cxPivotGridCustomDataSet,
  dxSkinscxPCPainter,
  cxPivotGridDrillDownDataSet, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxLayoutContainer,
  dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.Actions, dxBarBuiltInMenu, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmSummaryDataSet = class(TfrmSalesPerson)
    PivotGridDrillDownDataSet: TcxPivotGridDrillDownDataSet;
    PivotGridDrillDownDataSource: TDataSource;
    PivotGridSummaryDataSource: TDataSource;
    PivotGridSummaryDataSet: TcxPivotGridSummaryDataSet;
    Grid: TcxGrid;
    SummaryChartView: TcxGridDBChartView;
    SummaryTableView: TcxGridDBTableView;
    DrillDownTableView: TcxGridDBTableView;
    SummaryTableLevel: TcxGridLevel;
    SummaryChartLevel: TcxGridLevel;
    DrillDownTableLevel: TcxGridLevel;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutSplitterItem2: TdxLayoutSplitterItem;
    procedure GridActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure PivotGridSummaryDataSetDataChanged(Sender: TObject);
  public
    function HasOptions: Boolean; override;
    procedure ActivateDataSet; override;
    class function GetID: Integer; override;
  end;

var
  frmSummaryDataSet: TfrmSummaryDataSet;

implementation

uses cxCustomPivotBaseFormUnit, cxSpinEdit;

{$R *.dfm}

{ TfrmSummaryDataSet }

function TfrmSummaryDataSet.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TfrmSummaryDataSet.ActivateDataSet;
begin
  inherited ActivateDataSet;
  PivotGrid.ViewData.Selection.Add(Rect(0, 0, 0, 0));
end;

class function TfrmSummaryDataSet.GetID: Integer;
begin
  Result := 28;
end;

procedure TfrmSummaryDataSet.GridActiveTabChanged(Sender: TcxCustomGrid;
  ALevel: TcxGridLevel);
begin
  inherited;
  PivotGridSummaryDataSetDataChanged(nil);
end;

procedure TfrmSummaryDataSet.PivotGridSummaryDataSetDataChanged(
  Sender: TObject);
var
  I: Integer;
  AColumn: TcxGridDBColumn;
begin
  inherited;
  if Grid.ActiveLevel = SummaryChartLevel then
  begin
    SummaryChartView.BeginUpdate;
    try
      SummaryChartView.ClearSeries;
      SummaryChartView.ClearDataGroups;
      for I := 0 to PivotGridSummaryDataSet.FieldCount - 1 do
      begin
        case TcxPivotGridFieldArea(PivotGridSummaryDataSet.Fields[I].Tag - 1) of
          faColumn, faRow:
            SummaryChartView.CreateDataGroup.DataBinding.FieldName := PivotGridSummaryDataSet.Fields[I].FieldName;
          faData:
            SummaryChartView.CreateSeries.DataBinding.FieldName := PivotGridSummaryDataSet.Fields[I].FieldName;
        end;
      end;
    finally
      SummaryChartView.EndUpdate;
    end
  end
  else
    if Grid.ActiveLevel = SummaryTableLevel then
    begin
      SummaryTableView.BeginUpdate;
      try
        SummaryTableView.ClearItems;
        SummaryTableView.DataController.CreateAllItems;
      finally
        SummaryTableView.EndUpdate;
      end
    end
    else
    begin
      DrillDownTableView.BeginUpdate;
      try
        DrillDownTableView.ClearItems;
        DrillDownTableView.DataController.CreateAllItems;
        for I := 0 to DrillDownTableView.ColumnCount -1 do
        begin
          AColumn := DrillDownTableView.Columns[I];
          if AColumn.DataBinding.FieldName = 'Discount' then
          begin
            AColumn.PropertiesClass := TcxSpinEditProperties;
            TcxSpinEditProperties(AColumn.Properties).ValueType := vtFloat;
            TcxSpinEditProperties(AColumn.Properties).DisplayFormat := '0.00';
          end;
        end;
      finally
        DrillDownTableView.EndUpdate;
      end;
    end;
end;

initialization
  TfrmSummaryDataSet.Register;

finalization

end.
