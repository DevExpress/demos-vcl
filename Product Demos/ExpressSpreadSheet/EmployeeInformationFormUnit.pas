unit EmployeeInformationFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSpreadSheetBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetFormulas,
  dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetClasses,
  dxSpreadSheetTypes, dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus,
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls,
  cxButtons, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheet,
  dxLayoutControl, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetContainers, dxSpreadSheetHyperlinks, dxSpreadSheetPrinting,
  dxSpreadSheetUtils, cxClasses, Vcl.ExtCtrls, dxSpreadSheetStyles, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreStyles,
  dxSpreadSheetCoreStrs, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns, System.Actions, Vcl.ActnList, Vcl.StdActns,
  cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar;

type
  { TfrmEmployeeInformation }

  TfrmEmployeeInformation = class(TdxSpreadSheetDemoUnitForm)
    btnCalculate: TcxButton;
    liCalculateButton: TdxLayoutItem;
    procedure btnCalculateClick(Sender: TObject);
  private
    FSheet1: TdxSpreadSheetTableView;
    FSheet2: TdxSpreadSheetTableView;
    FSheet3: TdxSpreadSheetTableView;
    FBlueFontColor: TColor;
    FBlueFillColor: TColor;
    FBlueBorderColor: TColor;
    FDarkBlueColor: TColor;

    procedure ApplyStylesInPaystub(ATopPaystubRow: Integer); overload;
    procedure ApplyStylesInPaystub(AStartPaystubRow, ALeftPaystubColumn, AEndPaystubRow: Integer); overload;
    procedure CreateIndividualPaystubs;
    procedure FormatCellsInPaystub(ATopPaystubRow: Integer);
    procedure FormatCellsInPaystubHeader(ATopPaystubRow: Integer);
    procedure FormatCellsInPaystubTableDataColumn(ATopPaystubRow: Integer);
    procedure FormatCellsInPaystubTableHeader(ATopHeaderRow: Integer);
    function GetEmployeeInformationTable: string;
    function GetPayrollCalculatorTable: string;
    procedure InitColors;
    procedure InitIndividualPaystubsSheet;
    procedure MergeCells(ATopPaystubRow: Integer);
    procedure SetBordersInPaystub(ATopPaystubRow: Integer);
    procedure SetColumnsWidth;
    procedure SetMoneyFormat(ALeftColumnIndex, ATopRowIndex, ARightColumnIndex, ABottomRowIndex: Integer);
    procedure SetPaystubData(ATopPaystubRow, APaystubID: Integer);
    procedure SetPaystubDataInHeader(ATopPaystubRow: Integer);
    procedure SetPeriodEnding;
    procedure SetRowsHeightInPaystub(ATopPaystubRow: Integer);
    procedure SetStyle(ACellStyle: TdxSpreadSheetCellStyle; StyleIndex: Integer);
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    procedure PrepareBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

implementation

{$R *.dfm}

const
  EmployeeInformationPath: string = 'Data\EmployeeInformation_template.xlsx';
  NameColumnIndex: Integer = 2;
  PaystubRowCount: Integer = 24;
  PaystubColumnCount: Integer = 7;
  FirstHeaderColumn: Integer = 2;
  FirstDataColumn: Integer = 3;
  SecondHeaderColumn: Integer = 5;
  SecondDataColumn: Integer = 6;

{ TfrmEmployeeInformation }

procedure TfrmEmployeeInformation.ApplyStylesInPaystub(ATopPaystubRow: Integer);
begin
  ApplyStylesInPaystub(ATopPaystubRow + 6, 0, ATopPaystubRow + 15);
  ApplyStylesInPaystub(ATopPaystubRow + 5, 3, ATopPaystubRow + 14);
end;

procedure TfrmEmployeeInformation.ApplyStylesInPaystub(AStartPaystubRow, ALeftPaystubColumn, AEndPaystubRow: Integer);
var
  R: Integer;
begin
  for R := AStartPaystubRow to AEndPaystubRow - 1 do
    if R mod 2 = 0 then
      SetStyle(FSheet3.CreateCell(R, ALeftPaystubColumn + 2).Style, 2)
    else
    begin
      SetStyle(FSheet3.CreateCell(R, ALeftPaystubColumn + 2).Style, 1);
      SetStyle(FSheet3.CreateCell(R, ALeftPaystubColumn + 3).Style, 3);
    end;
end;

procedure TfrmEmployeeInformation.btnCalculateClick(Sender: TObject);
begin
  if SpreadSheet.SheetCount > 2 then
      SpreadSheet.ActiveSheetIndex := 2;
end;

procedure TfrmEmployeeInformation.CreateIndividualPaystubs;
var
  APaystubID: Integer;
  ATopPaystubRow: Integer;
begin
  for APaystubID := 1 to 9 do
  begin
    ATopPaystubRow := (APaystubID - 1) * 16;
    SetRowsHeightInPaystub(ATopPaystubRow);
    FormatCellsInPaystub(ATopPaystubRow);
    ApplyStylesInPaystub(ATopPaystubRow);
    SetBordersInPaystub(ATopPaystubRow);
    SetPaystubDataInHeader(ATopPaystubRow);
    SetPaystubData(ATopPaystubRow, APaystubID);
    MergeCells(ATopPaystubRow);
  end
end;

procedure TfrmEmployeeInformation.FormatCellsInPaystub(ATopPaystubRow: Integer);
begin
  FormatCellsInPaystubHeader(ATopPaystubRow);
  FormatCellsInPaystubTableHeader(ATopPaystubRow);
  FormatCellsInPaystubTableDataColumn(ATopPaystubRow);
end;

procedure TfrmEmployeeInformation.FormatCellsInPaystubHeader(ATopPaystubRow: Integer);
var
  AGrayFillColor: TColor;
  ACell: TdxSpreadSheetCell;
  R, C: Integer;
begin
  AGrayFillColor := RGB(248, 248, 248);

  for R := ATopPaystubRow + 1 to ATopPaystubRow + 15 do
    for C := 1 to PaystubColumnCount do
    begin
      ACell := FSheet3.CreateCell(R, C);
      ACell.Style.Brush.Style := sscfsSolid;
      ACell.Style.Brush.BackgroundColor := AGrayFillColor;
    end;

  for C := 2 to 3 do
  begin
    ACell := FSheet3.CreateCell(ATopPaystubRow + 2, C);
    ACell.Style.Brush.Style := sscfsSolid;
    ACell.Style.Brush.BackgroundColor := AGrayFillColor;
    ACell.Style.Font.Color := FDarkBlueColor;
    ACell.Style.Font.Size := 27;
    ACell.Style.AlignHorz := ssahLeft;
    ACell.Style.WordWrap := True;
  end;

  ACell := FSheet3.CreateCell(ATopPaystubRow + 3, 2);
  ACell.Style.Font.Size := 16;
  ACell.Style.Font.Name := 'Segoe UI Light';
  ACell.Style.AlignVert := ssavTop;

  ACell := FSheet3.CreateCell(ATopPaystubRow + 2, 5);
  ACell.Style.Font.Color := FDarkBlueColor;
  ACell.Style.Font.Size := 12;
  ACell.Style.AlignHorz := ssahRight;
  ACell.Style.AlignVert := ssavTop;
  ACell.Style.WordWrap := True;
end;

procedure TfrmEmployeeInformation.FormatCellsInPaystubTableDataColumn(ATopPaystubRow: Integer);
var
  ACell: TdxSpreadSheetCell;
  R: Integer;
begin
  for R := ATopPaystubRow + 5 to ATopPaystubRow + 14 do
  begin
    ACell := FSheet3.CreateCell(R, FirstHeaderColumn + 1);
    ACell.Style.AlignHorz := ssahCenter;
    ACell.Style.AlignVert := ssavCenter;

    ACell := FSheet3.CreateCell(R, SecondDataColumn);
    ACell.Style.AlignHorz := ssahCenter;
    ACell.Style.AlignVert := ssavCenter;
  end;

  ACell := FSheet3.CreateCell(ATopPaystubRow + 14, SecondDataColumn);
  ACell.Style.Font.Color := RGB(26, 127, 169);
  ACell.Style.Brush.BackgroundColor := RGB(234, 244, 251);
  ACell.Style.Font.Size := 13;

  SetMoneyFormat(FirstDataColumn, ATopPaystubRow + 7, FirstDataColumn, ATopPaystubRow + 11);
  SetMoneyFormat(FirstDataColumn, ATopPaystubRow + 13, FirstDataColumn, ATopPaystubRow + 14);
  SetMoneyFormat(SecondDataColumn, ATopPaystubRow + 5, SecondDataColumn, ATopPaystubRow + 8);
  SetMoneyFormat(SecondDataColumn, ATopPaystubRow + 12, SecondDataColumn, ATopPaystubRow + 14);
end;

procedure TfrmEmployeeInformation.FormatCellsInPaystubTableHeader(ATopHeaderRow: Integer);
var
  ACell: TdxSpreadSheetCell;
  R: Integer;
begin
  ACell := FSheet3.CreateCell(ATopHeaderRow + 5, FirstHeaderColumn);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := FBlueBorderColor;
  ACell.Style.Font.Color := FBlueFontColor;
  ACell.Style.Font.Name := 'Segoe UI Semibold';

  for R := ATopHeaderRow + 5 to ATopHeaderRow + 14 do
  begin
    ACell := FSheet3.CreateCell(R, FirstHeaderColumn);
    ACell.Style.AlignHorz := ssahLeft;
    ACell.Style.AlignVert := ssavCenter;
    ACell.Style.AlignHorzIndent := 2;
  end;

  for R := ATopHeaderRow + 5 to ATopHeaderRow + 14 do
  begin
    ACell := FSheet3.CreateCell(R, SecondHeaderColumn);
    ACell.Style.AlignHorz := ssahLeft;
    ACell.Style.AlignVert := ssavCenter;
    ACell.Style.AlignHorzIndent := 2;
  end;

  ACell := FSheet3.CreateCell(ATopHeaderRow + 14, FirstHeaderColumn);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := FBlueFillColor;
  ACell.Style.Font.Style := [fsBold];
  ACell.Style.Font.Color := FBlueFontColor;
  ACell.Style.Font.Size := 11;

  ACell := FSheet3.CreateCell(ATopHeaderRow + 14, SecondHeaderColumn);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := FBlueFillColor;
  ACell.Style.Font.Style := [fsBold];
  ACell.Style.Font.Color := FBlueFontColor;
  ACell.Style.Font.Size := 11;
end;

function TfrmEmployeeInformation.GetCaption: string;
begin
  Result := 'Employee Information';
end;

function TfrmEmployeeInformation.GetDescription: string;
begin
  Result := 'In this demo, the Spreadsheet''s API is used to create an employee paystubs template in code at runtime.' +
  ' You can use the Employee Information or Payroll Calculator sheet to modify values and view the results of your' +
  ' changes in the Individual Paystubs sheet.'
end;

function TfrmEmployeeInformation.GetEmployeeInformationTable: string;
begin
  Result := '''' + FSheet1.Caption + '''' + '!$C$5:$K$17';
end;

class function TfrmEmployeeInformation.GetID: Integer;
begin
  Result := 3;
end;

function TfrmEmployeeInformation.GetPayrollCalculatorTable: string;
begin
  Result := '''' + FSheet2.Caption + '''' + '!$B$5:$K$15'
end;

procedure TfrmEmployeeInformation.InitColors;
begin
  FBlueFontColor := RGB(212, 233, 251);
  FBlueFillColor := RGB(101, 168, 196);
  FBlueBorderColor := RGB(84, 158, 189);
  FDarkBlueColor := RGB(18, 92, 156);
end;

procedure TfrmEmployeeInformation.InitializeBook;
begin
  inherited;
  SpreadSheet.BeginUpdate;
  try
    LoadFromFile(EmployeeInformationPath);
    InitIndividualPaystubsSheet;
    InitColors;
    SetColumnsWidth;
    SetPeriodEnding;
    CreateIndividualPaystubs;
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmEmployeeInformation.InitIndividualPaystubsSheet;
begin
  FSheet1 := TdxSpreadSheetTableView(SpreadSheet.Sheets[0]);
  FSheet2 := TdxSpreadSheetTableView(SpreadSheet.Sheets[1]);
  FSheet3 := TdxSpreadSheetTableView(SpreadSheet.Sheets[2]);

  FSheet3.Options.ZoomFactor := 100;
  FSheet3.Options.DefaultRowHeight := 13;
  FSheet3.Caption := 'Individual paystubs';
  FSheet3.Options.Gridlines := bFalse;

  FSheet3.CellStyles.DefaultStyle.Font.Name := 'Segoe UI';
end;

procedure TfrmEmployeeInformation.MergeCells(ATopPaystubRow: Integer);
begin
  FSheet3.MergedCells.Add(Rect(2, ATopPaystubRow + 2, 3, ATopPaystubRow + 2));
  FSheet3.MergedCells.Add(Rect(5, ATopPaystubRow + 2, 6, ATopPaystubRow + 2));
end;

procedure TfrmEmployeeInformation.PrepareBook;
begin
  inherited;
  SpreadSheet.CellStyles.DefaultStyle.Font.Name := 'Segoe UI';
  SpreadSheet.CellStyles.DefaultStyle.Font.Size := 11;
end;

procedure TfrmEmployeeInformation.SetBordersInPaystub(ATopPaystubRow: Integer);
var
  C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  for C := 1 to PaystubColumnCount do
  begin
    ACell := FSheet3.CreateCell(ATopPaystubRow + 1, C);
    ACell.Style.Borders[bTop].Color := FDarkBlueColor;
    ACell.Style.Borders[bTop].Style := sscbsThick;
  end;
  for C := 5 to 6 do
  begin
    ACell := FSheet3.CreateCell(ATopPaystubRow + 14, C);
    ACell.Style.Borders[bTop].Color := FBlueBorderColor;
    ACell.Style.Borders[bTop].Style := sscbsThin;
    ACell.Style.Borders[bBottom].Color := FBlueBorderColor;
    ACell.Style.Borders[bBottom].Style := sscbsThin;
  end;
end;

procedure TfrmEmployeeInformation.SetColumnsWidth;
var
  APaystubOrderInRow: Integer;
  AFirstPaystubColumn: Integer;
begin
  for APaystubOrderInRow := 0 to 2 do
  begin
    AFirstPaystubColumn := APaystubOrderInRow * (PaystubColumnCount + 1);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 0).Size := Round(4.5 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 1).Size := Round(3.35 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 2).Size := Round(40 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 3).Size := Round(14.53 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 4).Size := Round(3.3 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 5).Size := Round(40 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 6).Size := Round(14.53 * 8);
    FSheet3.Columns.CreateItem(AFirstPaystubColumn + 7).Size := Round(3.35 * 8);
  end;
end;

procedure TfrmEmployeeInformation.SetMoneyFormat(ALeftColumnIndex, ATopRowIndex, ARightColumnIndex, ABottomRowIndex: Integer);
var
  R, C: Integer;
begin
  for R := ATopRowIndex to ABottomRowIndex do
    for C := ALeftColumnIndex to ARightColumnIndex do
      FSheet3.CreateCell(R, C).Style.DataFormat.FormatCode := '"$"#,##0.00';
end;

procedure TfrmEmployeeInformation.SetPaystubData(ATopPaystubRow, APaystubID: Integer);
var
  AEmployeeIdColumn1: string;
  AEmployeeIdColumn2: string;
  AEmployeeInformationTable: string;
  APayrollCalculatorTable: string;
begin
  Inc(ATopPaystubRow);
  AEmployeeIdColumn1 := 'D';
  AEmployeeIdColumn2 := 'G';
  FSheet3.CreateCell(ATopPaystubRow + 4, FirstDataColumn).AsInteger := APaystubID;
  AEmployeeInformationTable := GetEmployeeInformationTable;
  APayrollCalculatorTable := GetPayrollCalculatorTable;
  FSheet3.CreateCell(ATopPaystubRow + 5, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '4' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 6, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '3' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 7, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '8' + FSeparator + 'FALSE)*' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 12), True);
  FSheet3.CreateCell(ATopPaystubRow + 8, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '9' + FSeparator + 'FALSE)*' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 12), True);
  FSheet3.CreateCell(ATopPaystubRow + 9, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '11' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 10, FirstDataColumn).SetText('=SUM(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 8) + ':' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 10)
                                                         + ')+SUM(' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 5) + ':' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 6)
                                                         + ')+' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 14), True);
  FSheet3.CreateCell(ATopPaystubRow + 11, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '5' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 12, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '7' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 13, FirstDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 6) + FSeparator + AEmployeeInformationTable + FSeparator + '7' + FSeparator + 'FALSE)*' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 12), True);
  FSheet3.CreateCell(ATopPaystubRow + 4, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '6' + FSeparator + 'FALSE)*' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 12), True);
  FSheet3.CreateCell(ATopPaystubRow + 5, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '12' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 6, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '10' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 7, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '3' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 8, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '5' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 9, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '4' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 10, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '6' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 11, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '8' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 12, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '9' + FSeparator + 'FALSE)+' + AEmployeeIdColumn2 + IntToStr(ATopPaystubRow + 7), True);
  FSheet3.CreateCell(ATopPaystubRow + 13, SecondDataColumn).SetText('=HLOOKUP(' + AEmployeeIdColumn1 + IntToStr(ATopPaystubRow + 5) + FSeparator + APayrollCalculatorTable + FSeparator + '11' + FSeparator + 'FALSE)', True);
end;

procedure TfrmEmployeeInformation.SetPaystubDataInHeader(ATopPaystubRow: Integer);
var
  AEmployeeInformationTable: string;
begin
  AEmployeeInformationTable := GetEmployeeInformationTable;
  Inc(ATopPaystubRow);
  FSheet3.CreateCell(ATopPaystubRow + 1, FirstHeaderColumn).SetText('=HLOOKUP(' + 'D' + IntToStr(ATopPaystubRow + 5) + FSeparator + AEmployeeInformationTable + FSeparator + '2' + FSeparator + 'FALSE)', True);
  FSheet3.CreateCell(ATopPaystubRow + 2, FirstHeaderColumn).AsString := 'DevExpress';
  FSheet3.CreateCell(ATopPaystubRow + 4, FirstHeaderColumn).AsString := 'EMPLOYEE ID';
  FSheet3.CreateCell(ATopPaystubRow + 5, FirstHeaderColumn).AsString := 'Tax Status';
  FSheet3.CreateCell(ATopPaystubRow + 6, FirstHeaderColumn).AsString := 'Hourly Rate';
  FSheet3.CreateCell(ATopPaystubRow + 7, FirstHeaderColumn).AsString := 'Social Security Tax';
  FSheet3.CreateCell(ATopPaystubRow + 8, FirstHeaderColumn).AsString := 'Medicare Tax';
  FSheet3.CreateCell(ATopPaystubRow + 9, FirstHeaderColumn).AsString := 'Insurance Deduction';
  FSheet3.CreateCell(ATopPaystubRow + 10, FirstHeaderColumn).AsString := 'Total Taxes and Regular Deductions ';
  FSheet3.CreateCell(ATopPaystubRow + 11, FirstHeaderColumn).AsString := 'Federal Allowance (From W-4)';
  FSheet3.CreateCell(ATopPaystubRow + 12, FirstHeaderColumn).AsString := 'Overtime Rate';
  FSheet3.CreateCell(ATopPaystubRow + 13, FirstHeaderColumn).AsString := 'Federal Income Tax';
  FSheet3.CreateCell(ATopPaystubRow + 1, SecondHeaderColumn).SetText('=CONCATENATE("Period: "' + FSeparator + 'TEXT(NOW()' + FSeparator + ' "' + FShortDateFormat + '"))', True);
  FSheet3.CreateCell(ATopPaystubRow + 4, SecondHeaderColumn).AsString := 'State Tax';
  FSheet3.CreateCell(ATopPaystubRow + 5, SecondHeaderColumn).AsString := 'Other Regular Deduction';
  FSheet3.CreateCell(ATopPaystubRow + 6, SecondHeaderColumn).AsString := 'Other Deduction';
  FSheet3.CreateCell(ATopPaystubRow + 7, SecondHeaderColumn).AsString := 'Hours Worked';
  FSheet3.CreateCell(ATopPaystubRow + 8, SecondHeaderColumn).AsString := 'Sick Hours';
  FSheet3.CreateCell(ATopPaystubRow + 9, SecondHeaderColumn).AsString := 'Vacation Hours';
  FSheet3.CreateCell(ATopPaystubRow + 10, SecondHeaderColumn).AsString := 'Overtime Hours';
  FSheet3.CreateCell(ATopPaystubRow + 11, SecondHeaderColumn).AsString := 'Gross Pay';
  FSheet3.CreateCell(ATopPaystubRow + 12, SecondHeaderColumn).AsString := 'Total Taxes and Deductions';
  FSheet3.CreateCell(ATopPaystubRow + 13, SecondHeaderColumn).AsString := 'NET PAY';
end;

procedure TfrmEmployeeInformation.SetPeriodEnding;
begin
  FSheet2.CreateCell(1, 3).SetText('=CONCATENATE("PERIOD ENDING: "' + FSeparator + 'TEXT(NOW()' + FSeparator + ' "' + FShortDateFormat + '"))', True);
end;

procedure TfrmEmployeeInformation.SetRowsHeightInPaystub(ATopPaystubRow: Integer);
var
  I: Integer;
begin
  FSheet3.Rows.CreateItem(ATopPaystubRow).Size := 41;
  FSheet3.Rows.CreateItem(ATopPaystubRow + 1).Size := 24;
  FSheet3.Rows.CreateItem(ATopPaystubRow + 2).Size := 45;
  FSheet3.Rows.CreateItem(ATopPaystubRow + 3).Size := 30;
  FSheet3.Rows.CreateItem(ATopPaystubRow + 4).Size := 27;
  for I := 5 to 14 do
    FSheet3.Rows.CreateItem(ATopPaystubRow + I).Size := 36;

  FSheet3.Rows.CreateItem(ATopPaystubRow + 15).Size := 33;
end;

procedure TfrmEmployeeInformation.SetStyle(ACellStyle: TdxSpreadSheetCellStyle; StyleIndex: Integer);
begin
  case StyleIndex of
    1:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := FBlueFillColor;
        ACellStyle.Font.Color := FBlueFontColor;
        ACellStyle.Font.Name := 'Segoe UI';
        ACellStyle.AlignHorz := ssahLeft;
        ACellStyle.AlignVert := ssavCenter;
        ACellStyle.AlignHorzIndent := 2;
      end;
    2:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := FBlueBorderColor;
        ACellStyle.Font.Color := FBlueFontColor;
        ACellStyle.Font.Name := 'Segoe UI';
        ACellStyle.AlignHorz := ssahLeft;
        ACellStyle.AlignVert := ssavCenter;
        ACellStyle.AlignHorzIndent := 2;
      end;
    3:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(255, 255, 255);
        ACellStyle.Font.Color := RGB(0, 0, 0);
        ACellStyle.Font.Name := 'Segoe UI';
        ACellStyle.AlignHorz := ssahCenter;
        ACellStyle.AlignVert := ssavCenter;
      end;
  end;
end;

function TfrmEmployeeInformation.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

initialization

TfrmEmployeeInformation.Register;

finalization

end.
