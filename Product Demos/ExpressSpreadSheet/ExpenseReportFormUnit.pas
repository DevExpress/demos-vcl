unit ExpenseReportFormUnit;

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
  cxButtons, cxMaskEdit, cxDropDownEdit, cxTextEdit, dxSpreadSheet,
  dxLayoutControl, cxClasses, cxStyles, cxMemo, dxSpreadSheetStyles, dxCore, dxCoreClasses, dxHashUtils,
  dxSpreadSheetCoreFormulas, dxSpreadSheetCoreHistory, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetContainers,
  dxSpreadSheetHyperlinks, dxSpreadSheetPrinting, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns,
  System.Actions, Vcl.ActnList, Vcl.StdActns, cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar,
  Vcl.ExtCtrls;

type

  { TfrmExpenseReport }

  TfrmExpenseReport = class(TdxSpreadSheetDemoUnitForm)
  private
    FSheet: TdxSpreadSheetTableView;

    procedure ApplyStyleInEvenTableRow(ARowIndex: Integer);
    procedure ApplyStyleInUnevenTableRow(ARowIndex: Integer);
    procedure ApplyStyles;
    procedure ApplyStylesInFooter;
    procedure ApplyStylesInHeader;
    procedure ApplyStylesInTable;
    procedure ApplyStylesInTableRows;
    procedure FillData;
    procedure FillFooter;
    procedure FillHeader;
    procedure FillTable;
    procedure FillTableHeader;
    procedure FillTableRow(ARowIndex: Integer; ADate: string; AAccount: Double; ADescription: string;
      AHotel, ATransport, AFuel, AMeals, APhone, AEntertainment, AMisc: Double);
    procedure FillTableRows;
    procedure FormatCells;
    procedure FormatCellsInFooter;
    procedure FormatCellsInHeader;
    procedure FormatCellsInTable;
    procedure MergeCells;
    procedure SetBorders;
    procedure SetColumnWidth;
    procedure SetFont;
    procedure SetRowHeight;
    procedure SetRowHeightInFooter;
    procedure SetRowHeightInHeader;
    procedure SetRowHeightInTableRow;
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

{ TfrmExpenseReport }

procedure TfrmExpenseReport.ApplyStyleInEvenTableRow(ARowIndex: Integer);
begin
  SetStyle(FSheet.CreateCell(ARowIndex, 1).Style, 4);
  SetStyle(FSheet.CreateCell(ARowIndex, 3).Style, 4);
  SetStyle(FSheet.CreateCell(ARowIndex, 7).Style, 4);
  SetStyle(FSheet.CreateCell(ARowIndex, 9).Style, 4);
  SetStyle(FSheet.CreateCell(ARowIndex, 12).Style, 4);

  SetStyle(FSheet.CreateCell(ARowIndex, 2).Style, 5);
  SetStyle(FSheet.CreateCell(ARowIndex, 5).Style, 5);
  SetStyle(FSheet.CreateCell(ARowIndex, 8).Style, 5);
  SetStyle(FSheet.CreateCell(ARowIndex, 11).Style, 5);
  SetStyle(FSheet.CreateCell(ARowIndex, 13).Style, 5);

  SetStyle(FSheet.CreateCell(ARowIndex, 14).Style, 7);
end;

procedure TfrmExpenseReport.ApplyStyleInUnevenTableRow(ARowIndex: Integer);
begin
  SetStyle(FSheet.CreateCell(ARowIndex, 1).Style, 3);
  SetStyle(FSheet.CreateCell(ARowIndex, 3).Style, 3);
  SetStyle(FSheet.CreateCell(ARowIndex, 7).Style, 3);
  SetStyle(FSheet.CreateCell(ARowIndex, 9).Style, 3);
  SetStyle(FSheet.CreateCell(ARowIndex, 12).Style, 3);
  SetStyle(FSheet.CreateCell(ARowIndex, 14).Style, 6);
end;

procedure TfrmExpenseReport.ApplyStyles;
begin
  ApplyStylesInHeader;
  ApplyStylesInTable;
  ApplyStylesInFooter;
end;

procedure TfrmExpenseReport.ApplyStylesInFooter;
begin
  SetStyle(FSheet.CreateCell(27, 1).Style, 1);
  SetStyle(FSheet.CreateCell(27, 7).Style, 1);
end;

procedure TfrmExpenseReport.ApplyStylesInHeader;
var
  R: Integer;
begin
  for R := 1 to 3 do
    SetStyle(FSheet.CreateCell(R, 1).Style, 1);

  for R := 6 to 7 do
  begin
    SetStyle(FSheet.CreateCell(R, 1).Style, 1);
    SetStyle(FSheet.CreateCell(R, 4).Style, 1);
    SetStyle(FSheet.CreateCell(R, 8).Style, 1);
  end;
end;

procedure TfrmExpenseReport.ApplyStylesInTable;
var
  R, C: Integer;
begin
  for C := 1 to 14 do
    SetStyle(FSheet.CreateCell(9, C).Style, 2);

  for C := 5 to 13 do
    SetStyle(FSheet.CreateCell(25, C).Style, 2);

  for R := 26 to 28 do
    SetStyle(FSheet.CreateCell(R, 14).Style, 6);

  ApplyStylesInTableRows;
end;

procedure TfrmExpenseReport.ApplyStylesInTableRows;
var
  R: Integer;
begin
  for R := 10 to 24 do
    if R mod 2 = 0 then
      ApplyStyleInUnevenTableRow(R)
    else
      ApplyStyleInEvenTableRow(R);
end;

procedure TfrmExpenseReport.FillData;
begin
  FillHeader;
  FillTable;
  FillFooter;
end;

procedure TfrmExpenseReport.FillFooter;
begin
  FSheet.CreateCell(27, 1).SetText('APPROVED:');
  FSheet.CreateCell(27, 7).SetText('NOTES: ');
end;

procedure TfrmExpenseReport.FillHeader;
var
  AFormula: string;
  R: Integer;
begin
  FSheet.CreateCell(1, 1).SetText('PURPOSE:');
  FSheet.CreateCell(1, 3).SetText('HR-Conference');
  FSheet.CreateCell(1, 9).SetText('EXPENSE REPORT');
  FSheet.CreateCell(2, 1).SetText('STATEMENT NUMBER:');
  FSheet.CreateCell(2, 3).SetText('534084310');
  FSheet.CreateCell(3, 1).SetText('PAY PERIOD:');
  AFormula := '=CONCATENATE("from "' + FSeparator + 'TEXT(MIN(B11:B25)' + FSeparator + ' "' + FShortDateFormat + '")' +
    FSeparator + ' " to "' + FSeparator + 'TEXT(MAX(B11:B25)' + FSeparator + ' "' + FShortDateFormat + '"))';
  FSheet.CreateCell(3, 3).SetText(AFormula, True);
  FSheet.CreateCell(5, 1).SetText('EMPLOYEE INFORMATION:');
  FSheet.CreateCell(6, 1).SetText('NAME:');
  FSheet.CreateCell(6, 2).SetText('Tom Nilson');
  FSheet.CreateCell(6, 4).SetText('POSITION:');
  FSheet.CreateCell(6, 6).SetText('HR-manager');
  FSheet.CreateCell(6, 8).SetText('SSN:');
  FSheet.CreateCell(6, 10).SetText('078-05-1120');
  FSheet.CreateCell(7, 1).SetText('DEPARTMENT:');
  FSheet.CreateCell(7, 2).SetText('HR');
  FSheet.CreateCell(7, 4).SetText('MANAGER:');
  FSheet.CreateCell(7, 6).SetText('Nick Ellison');
  FSheet.CreateCell(7, 8).SetText('EMPLOYEE ID:');
  FSheet.CreateCell(7, 10).SetText('9547320');

  for R := 11 to 24 do
    FSheet.CreateCell(R, 14).SetText('=SUM(F' + IntToStr(R + 1) + ':N' + IntToStr(R + 1) + ')', True);

  FSheet.CreateCell(25, 13).SetText('=SUM(N11:N25)', True);
end;

procedure TfrmExpenseReport.FillTable;
var
  R: Integer;
begin
  FillTableHeader;
  FillTableRows;

  for R := 10 to 24 do
    FSheet.CreateCell(R, 14).SetText('=SUM(F' + IntToStr(R + 1) + ':N' + IntToStr(R + 1) + ')', True);

  FSheet.CreateCell(25, 7).SetText('=SUM(H10:H25)', True);
  FSheet.CreateCell(25, 8).SetText('=SUM(I10:I25)', True);
  FSheet.CreateCell(25, 7).SetText('=SUM(H10:H25)', True);
  FSheet.CreateCell(25, 11).SetText('=SUM(L11:L25)', True);
  FSheet.CreateCell(25, 12).SetText('=SUM(M11:M25)', True);
  FSheet.CreateCell(25, 9).SetText('=SUM(J11:K25)', True);
  FSheet.CreateCell(25, 5).SetText('=SUM(F11:G25)', True);
  FSheet.CreateCell(26, 14).SetText('=SUM(O11:O25)', True);
  FSheet.CreateCell(28, 14).SetText('=(O27-O28)', True);

  FSheet.CreateCell(26, 13).SetText('Subtotal:');
  FSheet.CreateCell(27, 13).SetText('Advances:');
  FSheet.CreateCell(28, 13).SetText('TOTAL:');
end;

procedure TfrmExpenseReport.FillTableHeader;
begin
  FSheet.CreateCell(9, 1).SetText('Date');
  FSheet.CreateCell(9, 2).SetText('Account');
  FSheet.CreateCell(9, 3).SetText('Description');
  FSheet.CreateCell(9, 5).SetText('Hotel');
  FSheet.CreateCell(9, 7).SetText('Transport');
  FSheet.CreateCell(9, 8).SetText('Fuel');
  FSheet.CreateCell(9, 9).SetText('Meals');
  FSheet.CreateCell(9, 11).SetText('Phone');
  FSheet.CreateCell(9, 12).SetText('Entertainment');
  FSheet.CreateCell(9, 13).SetText('Misc.');
  FSheet.CreateCell(9, 14).SetText('Total');
end;

procedure TfrmExpenseReport.FillTableRow(ARowIndex: Integer; ADate: string;
  AAccount: Double; ADescription: string; AHotel, ATransport, AFuel, AMeals,
  APhone, AEntertainment, AMisc: Double);
begin
  FSheet.CreateCell(ARowIndex, 1).SetText(ADate, True);
  FSheet.CreateCell(ARowIndex, 2).AsFloat := AAccount;
  FSheet.CreateCell(ARowIndex, 3).AsString := ADescription;
  FSheet.CreateCell(ARowIndex, 5).AsFloat := AHotel;
  FSheet.CreateCell(ARowIndex, 7).AsFloat := ATransport;
  FSheet.CreateCell(ARowIndex, 8).AsFloat := AFuel;
  FSheet.CreateCell(ARowIndex, 9).AsFloat := AMeals;
  FSheet.CreateCell(ARowIndex, 11).AsFloat := APhone;
  FSheet.CreateCell(ARowIndex, 12).AsFloat := AEntertainment;
  FSheet.CreateCell(ARowIndex, 13).AsFloat := AMisc;
end;

procedure TfrmExpenseReport.FillTableRows;
begin
  FillTableRow(10, '=Now()-14', 212340, 'Business trip', 250, 130, 12.42, 50, 8, 0, 19.3);
  FillTableRow(11, '=Now()-13', 289043, 'Business trip', 250, 0, 26.6, 45, 7.8, 0, 29.3);
  FillTableRow(12, '=Now()-12', 212340, 'Holiday', 0, 10, 0, 58, 2.79, 90, 12.3);
  FillTableRow(13, '=Now()-11', 216049, 'Holiday', 0, 30, 0, 60, 9.79, 120, 122.3);
  FillTableRow(14, '=Now()-10', 292352, 'Business trip', 295.5, 150, 10.48, 45, 9.32, 0, 59.0);
  FillTableRow(15, '=Now()-9', 567384, 'Business trip', 295.5, 30, 20.37, 50, 9.12, 0, 30.07);
  FillTableRow(16, '=Now()-8', 890733, 'Business trip', 349, 70, 15.07, 45, 14.05, 0, 100.93);
  FillTableRow(17, '=Now()-7', 578292, 'Business trip', 349, 0, 6.8, 60, 3.7, 0, 302.8);
  FillTableRow(18, '=Now()-6', 199123, 'Business trip', 349, 90, 13.6, 50, 2.6, 0, 23);
  FillTableRow(19, '=Now()-5', 423509, 'Holiday', 0, 0, 37.5, 60, 2.04, 104.04, 20);
  FillTableRow(20, '=Now()-4', 543288, 'Holiday', 0, 90, 14.2, 70, 0.2, 60.2, 12);
  FillTableRow(21, '=Now()-3', 457382, 'Business trip', 205, 125, 16, 45, 14, 0, 35.39);
  FillTableRow(22, '=Now()-2', 584839, 'Business trip', 205, 0, 10.03, 40, 12.01, 0, 30);
  FillTableRow(23, '=Now()-1', 483922, 'Business trip', 205, 0, 26, 55, 9.2, 0, 60);
  FillTableRow(24, '=Now()', 890763, 'Business trip', 205, 125, 9.5, 45, 1.03, 0, 143);
end;

procedure TfrmExpenseReport.FormatCells;
begin
  FormatCellsInHeader;
  FormatCellsInTable;
  FormatCellsInFooter;
end;

procedure TfrmExpenseReport.FormatCellsInFooter;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  ARange := Rect(5, 25, 13, 25);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Brush.Style := sscfsSolid;
      ACell.Style.Brush.BackgroundColor := RGB(242, 252, 252);
      ACell.Style.DataFormat.FormatCode := '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(_)';
    end;

  ARange := Rect(14, 26, 14, 28);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Color := RGB(52, 150, 151);
      ACell.Style.Font.Size := 9;
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.AlignHorzIndent := 1;
      ACell.Style.DataFormat.FormatCode := '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(_)';
    end;

  ARange := Rect(13, 26, 13, 27);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Style := [fsBold];
      ACell.Style.Font.Color := RGB(52, 150, 151);
      ACell.Style.Font.Size := 9;
      ACell.Style.AlignHorz := ssahRight;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.AlignHorzIndent := 1;
    end;

  ACell := FSheet.CreateCell(25, 14);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := RGB(230, 249, 249);

  ARange := Rect(14, 25, 14, 27);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell.Style.Font.Style := [fsBold];
      ACell.Style.Font.Size := 9;
    end;

  ACell := FSheet.CreateCell(28, 13);
  ACell.Style.Font.Style := [fsBold];
  ACell.Style.Font.Color := RGB(52, 150, 151);
  ACell.Style.Font.Size := 11;
  ACell.Style.AlignHorz := ssahRight;
  ACell.Style.AlignVert := ssavCenter;
  ACell.Style.AlignHorzIndent := 1;

  ACell := FSheet.CreateCell(28, 14);
  ACell.Style.Font.Style := [fsBold];
  ACell.Style.Font.Size := 11;
end;

procedure TfrmExpenseReport.FormatCellsInHeader;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  ARange := Rect(9, 1, 14, 2);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Color := RGB(52, 150, 151);
      ACell.Style.Font.Size := 32;
      ACell.Style.Font.Name := 'Segoe UI Light';
      ACell.Style.AlignHorz := ssahCenter;
      ACell.Style.AlignVert := ssavCenter;
    end;

  ARange := Rect(3, 1, 7, 3);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
      FSheet.CreateCell(R, C).Style.AlignHorz := ssahLeft;

  ARange := Rect(4, 3, 7, 3);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
      FSheet.CreateCell(R, C).Style.AlignHorz := ssahLeft;

  ARange := Rect(1, 5, 1, 5);
  ACell := FSheet.CreateCell(5, 1);
  ACell.Style.Font.Style := [fsBold];
  ACell.Style.Font.Color := RGB(52, 150, 151);
  ACell.Style.Font.Size := 12;

  ARange := Rect(2, 5, 14, 5);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Color := RGB(0, 0, 0);
      ACell.Style.Font.Name := 'Segoe UI';
    end;

  ARange := Rect(10, 6, 10, 7);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
      FSheet.CreateCell(R, C).Style.AlignHorz := ssahLeft;

  ARange := Rect(2, 6, 2, 7);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;;
      ACell.Style.AlignHorzIndent := 2;
    end;

  ARange := Rect(6, 6, 6, 7);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;;
      ACell.Style.AlignHorzIndent := 1;
    end;
end;

procedure TfrmExpenseReport.FormatCellsInTable;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  ACell := FSheet.CreateCell(9, 1);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);
  ACell.Style.AlignHorz := ssahCenter;
  ACell.Style.AlignVert := ssavCenter;

  ACell := FSheet.CreateCell(9, 2);
  ACell.Style.AlignHorz := ssahCenter;
  ACell.Style.AlignVert := ssavCenter;

  ARange := Rect(3, 9, 4, 9);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Brush.Style := sscfsSolid;
      ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);
      ACell.Style.AlignVert := ssavCenter;
    end;

  ARange := Rect(4, 9, 14, 25);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.AlignHorzIndent := 1;
    end;

  ACell := FSheet.CreateCell(9, 7);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);

  ARange := Rect(9, 9, 10, 9);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Brush.Style := sscfsSolid;
      ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);
    end;

  ACell := FSheet.CreateCell(9, 12);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);

  ACell := FSheet.CreateCell(9, 14);
  ACell.Style.Brush.Style := sscfsSolid;
  ACell.Style.Brush.BackgroundColor := RGB(251, 251, 251);

  ARange := Rect(1, 10, 1, 24);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahCenter;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.DataFormat.FormatCode := FShortDateFormat;
    end;

  ARange := Rect(2, 10, 2, 24);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Color := RGB(0, 0, 0);
      ACell.Style.AlignHorz := ssahCenter;
      ACell.Style.AlignVert := ssavCenter;
    end;

  ARange := Rect(3, 9, 4, 24);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.AlignHorzIndent := 1;
    end;

  ARange := Rect(5, 10, 14, 24);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.AlignHorzIndent := 1;
      ACell.Style.DataFormat.FormatCode := '_("$"* #,##0.00_);_("$"* \(#,##0.00\);_("$"* "-"??_);_(_)';
    end;

  ARange := Rect(14, 10, 14, 28);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
      FSheet.CreateCell(R, C).Style.Font.Color := RGB(52, 150, 151);
end;

function TfrmExpenseReport.GetCaption: string;
begin
  Result := 'Expense Report';
end;

function TfrmExpenseReport.GetDescription: string;
begin
  Result := 'In this demo, we illustrate how to use the Spreadsheet''s API to generate an expense report in code at runtime.';
end;

class function TfrmExpenseReport.GetID: Integer;
begin
  Result := 2;
end;

procedure TfrmExpenseReport.InitializeBook;
begin
  inherited;
  FSheet.BeginUpdate;
  try
    SetRowHeight;
    SetColumnWidth;
    SetFont;
    ApplyStyles;
    FormatCells;
    SetBorders;
    FillData;
    MergeCells;
  finally
    FSheet.EndUpdate;
  end;
end;

procedure TfrmExpenseReport.MergeCells;
var
  I: Integer;
begin
  for I := 9 to 25 do
  begin
    FSheet.MergedCells.Add(Rect(3, I, 4, I));
    FSheet.MergedCells.Add(Rect(5, I, 6, I));
    FSheet.MergedCells.Add(Rect(9, I, 10, I));
  end;
  FSheet.MergedCells.Add(Rect(10, 7, 11, 7));
  FSheet.MergedCells.Add(Rect(9, 1, 14, 2));
  FSheet.MergedCells.Add(Rect(3, 3, 7, 3));
  FSheet.MergedCells.Add(Rect(3, 2, 4, 2));
  FSheet.MergedCells.Add(Rect(2, 27, 5, 27));
  FSheet.MergedCells.Add(Rect(2, 28, 5, 28));
  FSheet.MergedCells.Add(Rect(8, 27, 11, 27));
  FSheet.MergedCells.Add(Rect(8, 28, 11, 28));
end;

procedure TfrmExpenseReport.PrepareBook;
begin
  SpreadSheet.ClearAll;
  SpreadSheet.DefaultCellStyle.Font.Name := 'Segoe UI';
  SpreadSheet.DefaultCellStyle.Font.Size := 8;
  FSheet := TdxSpreadSheetTableView(SpreadSheet.AddSheet(Caption));
  FSheet.Options.DefaultRowHeight := 10;
  FSheet.Options.Gridlines := bFalse;
end;

procedure TfrmExpenseReport.SetBorders;
var
  C: Integer;
  ACellStyle: TdxSpreadSheetCellStyle;
begin
  for C := 1 to 14 do
  begin
    ACellStyle := FSheet.CreateCell(9, C).Style;
    ACellStyle.Borders[bBottom].Color := RGB(52, 150, 151);
    ACellStyle.Borders[bBottom].Style := sscbsMedium;
  end;
  for C := 2 to 5 do
  begin
    ACellStyle := FSheet.CreateCell(27, C).Style;
    ACellStyle.Borders[bBottom].Color := RGB(180, 180, 180);
    ACellStyle.Borders[bBottom].Style := sscbsThin;
  end;
  for C := 2 to 5 do
  begin
    ACellStyle := FSheet.CreateCell(28, C).Style;
    ACellStyle.Borders[bBottom].Color := RGB(180, 180, 180);
    ACellStyle.Borders[bBottom].Style := sscbsThin;
  end;
  for C := 8 to 11 do
  begin
    ACellStyle := FSheet.CreateCell(27, C).Style;
    ACellStyle.Borders[bBottom].Color := RGB(180, 180, 180);
    ACellStyle.Borders[bBottom].Style := sscbsThin;
  end;
  for C := 8 to 11 do
  begin
    ACellStyle := FSheet.CreateCell(28, C).Style;
    ACellStyle.Borders[bBottom].Color := RGB(180, 180, 180);
    ACellStyle.Borders[bBottom].Style := sscbsThin;
  end;
end;

procedure TfrmExpenseReport.SetColumnWidth;
begin
  FSheet.Columns.CreateItem(0).Size := 17;
  FSheet.Columns.CreateItem(1).Size := 87;
  FSheet.Columns.CreateItem(2).Size := 74;
  FSheet.Columns.CreateItem(3).Size := 54;
  FSheet.Columns.CreateItem(4).Size := 31;
  FSheet.Columns.CreateItem(5).Size := 44;
  FSheet.Columns.CreateItem(6).Size := 40;
  FSheet.Columns.CreateItem(7).Size := 80;
  FSheet.Columns.CreateItem(8).Size := 80;
  FSheet.Columns.CreateItem(9).Size := 23;
  FSheet.Columns.CreateItem(10).Size := 52;
  FSheet.Columns.CreateItem(11).Size := 79;
  FSheet.Columns.CreateItem(12).Size := 103;
  FSheet.Columns.CreateItem(13).Size := 87;
  FSheet.Columns.CreateItem(14).Size := 100;
end;

procedure TfrmExpenseReport.SetFont;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  ARange := Rect(1, 1, 14, 30);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Color := RGB(0, 0, 0);
      ACell.Style.Font.Name := 'Segoe UI';
      ACell.Style.Font.Size := 9;
    end;
end;

procedure TfrmExpenseReport.SetRowHeight;
begin
  SetRowHeightInHeader;
  SetRowHeightInTableRow;
  SetRowHeightInFooter;
end;

procedure TfrmExpenseReport.SetRowHeightInFooter;
begin
  FSheet.Rows.CreateItem(25).Size := 32;
  FSheet.Rows.CreateItem(26).Size := 32;
  FSheet.Rows.CreateItem(27).Size := 32;
  FSheet.Rows.CreateItem(28).Size := 32;
end;

procedure TfrmExpenseReport.SetRowHeightInHeader;
begin
  FSheet.Rows.CreateItem(0).Size := 24;
  FSheet.Rows.CreateItem(1).Size := 19;
  FSheet.Rows.CreateItem(2).Size := 19;
  FSheet.Rows.CreateItem(3).Size := 19;
  FSheet.Rows.CreateItem(4).Size := 35;
  FSheet.Rows.CreateItem(5).Size := 19;
  FSheet.Rows.CreateItem(6).Size := 25;
  FSheet.Rows.CreateItem(7).Size := 18;
  FSheet.Rows.CreateItem(8).Size := 25;
  FSheet.Rows.CreateItem(9).Size := 32;
end;

procedure TfrmExpenseReport.SetRowHeightInTableRow;
var
  I: Integer;
begin
  for I := 10 to 24 do
    FSheet.Rows.CreateItem(I).Size := 21;
end;

procedure TfrmExpenseReport.SetStyle(ACellStyle: TdxSpreadSheetCellStyle; StyleIndex: Integer);
begin
  case StyleIndex of
    1:
      begin
        ACellStyle.Font.Style := [fsBold];
        ACellStyle.Font.Color := RGB(180, 180, 180);
        ACellStyle.Font.Size := 9;
        ACellStyle.Font.Name := 'Segoe UI';
      end;
    2:
      begin
        ACellStyle.Font.Style := [fsBold];
        ACellStyle.Font.Color := RGB(52, 150, 151);
        ACellStyle.Font.Size := 9;
        ACellStyle.Font.Name := 'Segoe UI';
      end;
    3:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(251, 251, 251);
        ACellStyle.Font.Color := RGB(0, 0, 0);
      end;
    4:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(237, 237, 237);
        ACellStyle.Font.Color := RGB(0, 0, 0);
      end;
    5:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(241, 241, 241);
        ACellStyle.Font.Color := RGB(0, 0, 0);
      end;
    6:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(242, 252, 252);
        ACellStyle.Font.Color := RGB(0, 0, 0);
      end;
    7:
      begin
        ACellStyle.Brush.Style := sscfsSolid;
        ACellStyle.Brush.BackgroundColor := RGB(229, 238, 238);
        ACellStyle.Font.Color := RGB(0, 0, 0);
      end;
  end;
end;

function TfrmExpenseReport.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

initialization

TfrmExpenseReport.Register;

finalization

end.
