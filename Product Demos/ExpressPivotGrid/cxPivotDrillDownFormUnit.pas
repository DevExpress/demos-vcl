unit cxPivotDrillDownFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxCustomPivotGrid, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMemo, cxRichEdit, Winapi.RichEdit, cxHyperLinkEdit,
  cxLabel, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, dxDateRanges, dxScrollbarAnnotations;

type
  TfrmDrillDown = class(TForm)
    Panel1: TPanel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    TableView: TcxGridTableView;
    cxLabel1: TcxLabel;
    lblURL: TLabel;
    procedure lblURLClick(Sender: TObject);
  end;

  procedure cxShowDrillDownDataSource(ACrossCell: TcxPivotGridCrossCell);

implementation

uses
  cxSpinEdit, Winapi.ShellAPI;

{$R *.dfm}

procedure cxShowDrillDownDataSource(ACrossCell: TcxPivotGridCrossCell);
var
  AForm: TfrmDrillDown;
  ADataSource: TcxCustomDataSource;

  procedure CreateColumns(APivotGrid: TcxCustomPivotGrid; AGrid: TcxGridTableView);
  var
    I: Integer;
    AColumn: TcxGridColumn;
    AField: TcxPivotGridField;
  begin
    for I := 0 to TcxPivotGridCrossCellDataSource(ADataSource).FieldCount - 1 do
    begin
      AField := TcxPivotGridCrossCellDataSource(ADataSource).PivotGridFields[I];
      AColumn := AGrid.CreateColumn;
      AColumn.Caption := AField.Caption;
      AColumn.Hidden := AField.Hidden;
      AColumn.Visible := AField.Visible;
      if (AField.UniqueName = '[Measures].[Discount]') or (AField.UniqueName = 'Discount') then
      begin
        AColumn.PropertiesClass := TcxSpinEditProperties;
        TcxSpinEditProperties(AColumn.Properties).ValueType := vtFloat;
        TcxSpinEditProperties(AColumn.Properties).DisplayFormat := '0.00';
      end;
    end;
  end;

begin
  AForm := TfrmDrillDown.Create(nil);
  try
    ADataSource := ACrossCell.CreateDrillDownDataSource;
    CreateColumns(ACrossCell.PivotGrid, AForm.TableView);
    try
      AForm.TableView.DataController.CustomDataSource := ADataSource;
      AForm.TableView.ApplyBestFit();
      AForm.ShowModal;
    finally
      ADataSource.Free;
    end;
  finally
    AForm.Free;
  end;
end;

procedure TfrmDrillDown.lblURLClick(Sender: TObject);
begin
  cxGrid1.SetFocus;
  ShellExecute(Handle, PChar('OPEN'), PChar(lblURL.Caption), nil, nil, SW_SHOWMAXIMIZED);
end;

end.
