unit LoanAmortizationScheduleFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSpreadSheetBaseFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetFunctions,
  dxSpreadSheetGraphics, dxSpreadSheetClasses, dxSpreadSheetTypes, dxBarBuiltInMenu, dxSpreadSheet, dxLayoutContainer,
  dxLayoutControl, dxSpreadSheetFormulas, dxLayoutcxEditAdapters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxTextEdit, Vcl.Menus, cxButtons, cxMaskEdit, cxDropDownEdit, cxMemo, dxHashUtils,
  dxCore, dxCoreClasses, dxSpreadSheetCoreHistory, dxSpreadSheetConditionalFormatting,
  dxSpreadSheetConditionalFormattingRules, dxSpreadSheetPrinting, cxClasses, dxSpreadSheetContainers,
  dxSpreadSheetHyperlinks, dxSpreadSheetUtils, Vcl.ExtCtrls, dxSpreadSheetStyles, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns, System.Actions,
  Vcl.ActnList, Vcl.StdActns, cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar;

type
  TfrmLoanAmortizationSchedule = class(TdxSpreadSheetDemoUnitForm)
    lgPayments: TdxLayoutGroup;
    rbAnnuityPayments: TcxRadioButton;
    liAnnuityPayments: TdxLayoutItem;
    rbScaledPayments: TcxRadioButton;
    liScaledPayments: TdxLayoutItem;
    procedure rbAnnuityPaymentsClick(Sender: TObject);
  strict private
    const FStartDataRowIndex: Integer = 11;
  private
    FPreviousScheduledNumberOfPayments: Integer;
    FSheet: TdxSpreadSheetTableView;
    FSheetInitialized: Boolean;

    procedure AddAggregateDefinedNamesForScaled(const ALastRow: string);
    procedure AddBasicDefinedNamesForScaled;
    procedure AddDefinedNamesForAnnuity;
    procedure ClearTable;
    procedure CreateNewTable;
    procedure GenerateAnnuityTableBody;
    procedure GenerateFieldsForCalculationResults;
    procedure GenerateFieldsForDataEntry;
    procedure GenerateScaledTableBody;
    procedure GenerateTableHeader;
    procedure GenerateTableGrid;
    procedure GenerateTitle;
    procedure SetBasicData;
    procedure SetupColumnAndRows;
    function GetActualLastRow: string;
    function GetActualNumberOfPayments: Integer;
    function GetCustomNumberOfPayments(ARowIndex, AColumnIndex: Integer): Integer;
    function GetScheduledNumberOfPayments: Integer;
  protected
    procedure DoSpreadSheetEdited; override;
    procedure DoSpreadSheetLayoutChanged; override;
    function GetDescription: string; override;
    property ActualNumberOfPayments: Integer read GetActualNumberOfPayments;
    property ActualLastRow: string read GetActualLastRow;
    property ScheduledNumberOfPayments: Integer read GetScheduledNumberOfPayments;
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
  SummaryAccounting: string = '\$ #,##0.00;\$ #,##0.00;\$ " - "??;@';
  Accounting: string = '_(\$* #,##0.00_);_(\$ (#,##0.00);_(\$* " - "??_);_(@_)';
  DateFormat: string = 'm/d/yyyy';
  WorkSheetName: string = 'Loan Amortization Schedule';

{ TfrmLoanAmortizationSchedule }

procedure TfrmLoanAmortizationSchedule.AddAggregateDefinedNamesForScaled(const ALastRow: string);
var
  ASheetName: string;
  ADefinedNames: TdxSpreadSheetDefinedNames;
begin
  ASheetName := '''' + FSheet.Caption + '''';
  ADefinedNames := SpreadSheet.DefinedNames;
  ADefinedNames.Add('Beg_Bal', ASheetName + '!$D$12:$D$' + ALastRow);
  ADefinedNames.Add('Cum_Int', ASheetName + '!$K$12:$K$' + ALastRow);
  ADefinedNames.Add('Data', ASheetName + '!$B$12:$K$' + ALastRow);
  ADefinedNames.Add('End_Bal', ASheetName + '!$J$12:$J$' + ALastRow);
  ADefinedNames.Add('Extra_Pay', ASheetName + '!$F$12:$F$' + ALastRow);
  ADefinedNames.Add('Header_Row', 'ROW(' + ASheetName + '!$17:$17)');
  ADefinedNames.Add('Int', ASheetName + '!$I$12:$I$' + ALastRow);
  ADefinedNames.Add('Number_of_Payments', '=MATCH(0.01,End_Bal,-1)+1');
  ADefinedNames.Add('Last_Row', 'IF(Values_Entered,Header_Row+Number_of_Payments,Header_Row)');
  ADefinedNames.Add('Pay_Date', ASheetName + '!$C$12:$C$' + ALastRow);
  ADefinedNames.Add('Pay_Num', ASheetName + '!$B$12:$B$' + ALastRow);
  ADefinedNames.Add('Payment_Date', 'DATE(YEAR(Loan_Start),MONTH(Loan_Start)+Payment_Number,DAY(Loan_Start))');
  ADefinedNames.Add('Princ', ASheetName + '!$H$12:$H$' + ALastRow);
  ADefinedNames.Add('Print_Area_Reset', 'OFFSET(Full_Print,0,0,Last_Row)');
  ADefinedNames.Add('Sched_Pay', ASheetName + '!$E$12:$E$' + ALastRow);
  ADefinedNames.Add('Total_Pay', ASheetName + '!$G$12:$G$' + ALastRow);
  ADefinedNames.Add('Total_Payment', 'Scheduled_Payment+Extra_Payment');
  ADefinedNames.Add('Payment_Number', 'ROW()-Header_Row');
  ADefinedNames.Add('Loan_Not_Paid', 'IF(Payment_Number<=Number_of_Payments,1,0)');
end;

procedure TfrmLoanAmortizationSchedule.AddBasicDefinedNamesForScaled;
var
  ASheetName: string;
  ADefinedNames: TdxSpreadSheetDefinedNames;
begin
  SpreadSheet.BeginUpdate;
  try
    ASheetName := '''' + FSheet.Caption + '''';
    ADefinedNames := SpreadSheet.DefinedNames;
    ADefinedNames.Add('Loan_Amount', ASheetName + '!$E$4');
    ADefinedNames.Add('Interest_Rate', ASheetName + '!$E$5');
    ADefinedNames.Add('Loan_Years', ASheetName + '!$E$6');
    ADefinedNames.Add('Loan_Start', ASheetName + '!$E$8');
    ADefinedNames.Add('Values_Entered', 'IF(Loan_Amount * Interest_Rate * Loan_Years * Loan_Start > 0, 1, 0)');
    ADefinedNames.Add('Full_Print', ASheetName + '!$A:$K');
    ADefinedNames.Add('Number_of_Payments_Per_Year', ASheetName + '!$E$7');
    ADefinedNames.Add('Extra_Payments', ASheetName + '!$E$9');
    ADefinedNames.Add('Scheduled_Monthly_Payment', 'Loan_Amount/(Loan_Years*Number_of_Payments_Per_Year)');
    ADefinedNames.Add('Scheduled_Number_Payments', ASheetName + '!$I$5');
    ADefinedNames.Add('Real_Number_Payments', ASheetName + '!$I$6');
    ADefinedNames.Add('Total_Early_Payments', ASheetName + '!$I$7');
    ADefinedNames.Add('Total_Interest', ASheetName + '!$I$8');
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.AddDefinedNamesForAnnuity;
var
  ASheetName: string;
  ADefinedNames: TdxSpreadSheetDefinedNames;
begin
  SpreadSheet.BeginUpdate;
  try
    ASheetName := '''' + FSheet.Caption + '''';
    ADefinedNames := SpreadSheet.DefinedNames;
    ADefinedNames.Add('Loan_Amount', ASheetName + '!$E$4');
    ADefinedNames.Add('Interest_Rate', ASheetName + '!$E$5');
    ADefinedNames.Add('Loan_Years', ASheetName + '!$E$6');
    ADefinedNames.Add('Number_of_Payments_Per_Year', ASheetName + '!$E$7');
    ADefinedNames.Add('Loan_Start', ASheetName + '!$E$8');
    ADefinedNames.Add('Extra_Payments', ASheetName + '!$E$9');
    ADefinedNames.Add('Scheduled_payment', ASheetName + '!$I$4');
    ADefinedNames.Add('Scheduled_Number_Payments', ASheetName + '!$I$5');
    ADefinedNames.Add('Interest_Rate_Per_Month', '=Interest_Rate/Number_of_Payments_Per_Year');
    ADefinedNames.Add('Actual_Number_Payments', '=NPER(Interest_Rate_Per_Month, Scheduled_payment+Extra_Payments, -Loan_Amount)');
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.ClearTable;
var
  ARange: TRect;
  R, C: Integer;
begin
  SpreadSheet.BeginUpdate;
  try
    SpreadSheet.DefinedNames.Clear;
    if FPreviousScheduledNumberOfPayments > 0 then
    begin
      ARange := Rect(1, FStartDataRowIndex, 10, FStartDataRowIndex - 1 + FPreviousScheduledNumberOfPayments);
      for R := 3 to 7 do
        FSheet.Cells[R, 8].Clear;

      for R := ARange.Top to ARange.Bottom do
        for C := ARange.Left to ARange.Right do
          FSheet.Cells[R, C].Free;
    end;
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.CreateNewTable;
begin
  ClearTable;
  if rbAnnuityPayments.Checked then
  begin
    AddDefinedNamesForAnnuity;
    GenerateAnnuityTableBody;
  end
  else
  begin
    AddBasicDefinedNamesForScaled;
    GenerateScaledTableBody;
  end;
  GenerateTableGrid;
  FPreviousScheduledNumberOfPayments := ScheduledNumberOfPayments;
end;

procedure TfrmLoanAmortizationSchedule.DoSpreadSheetEdited;
var
  I: Integer;
begin
  inherited;
  if (FSheet <> nil) and (FSheet.Selection.FocusedColumn = 4) and (FSheet.Selection.FocusedRow in [3..8]) then
  begin
    ShowHourglassCursor;
    SpreadSheet.History.Lock;
    try
      CreateNewTable;
    finally
      SpreadSheet.History.UnLock;
      HideHourglassCursor;
    end;
  end;
  for I := 0 to SpreadSheet.SheetCount - 1 do
    if SpreadSheet.Sheets[I] = FSheet then
      Exit;

  FSheet := nil;
end;

procedure TfrmLoanAmortizationSchedule.DoSpreadSheetLayoutChanged;
var
  I: Integer;

begin
  inherited;
  if (FSheet <> nil) and FSheetInitialized then
  begin
    for I := 0 to SpreadSheet.SheetCount - 1 do
      if SpreadSheet.Sheets[I].Caption = WorkSheetName then
        Exit;
    FSheet := nil;
  end;
end;

procedure TfrmLoanAmortizationSchedule.GenerateAnnuityTableBody;
var
  I: Integer;
  ARowNumber, APriorRowNumber, ALastRow: string;
  ARowIndex: Integer;
begin
  SpreadSheet.BeginUpdate;
  try
    FSheet.CreateCell(3, 8).SetText('=PMT(Interest_Rate_Per_Month, Scheduled_Number_Payments, -Loan_Amount)', True);
    FSheet.CreateCell(4, 8).SetText('=Loan_Years*Number_of_Payments_Per_Year', True);
    FSheet.CreateCell(5, 8).SetText('=ROUNDUP(Actual_Number_Payments,0)', True);
  finally
    SpreadSheet.EndUpdate;
  end;

  if ActualNumberOfPayments = 0 then
    Exit;

  SpreadSheet.BeginUpdate;
  try
    ALastRow := IntToStr(FStartDataRowIndex + ActualNumberOfPayments);
    FSheet.CreateCell(6, 8).SetText(Format('=SUM(F12:F%s)', [ALastRow]), True);
    FSheet.CreateCell(7, 8).SetText(Format('=SUM(I12:I%s)', [ALastRow]), True);
    for I := 1 to ActualNumberOfPayments do
    begin
      ARowIndex := I + FStartDataRowIndex - 1;
      ARowNumber := IntToStr(ARowIndex + 1);
      APriorRowNumber := IntToStr(ARowIndex);
      FSheet.CreateCell(ARowIndex, 1).AsInteger := I;
      FSheet.CreateCell(ARowIndex, 2).SetText('=DATE(YEAR(Loan_Start),MONTH(Loan_Start)+B' + ARowNumber + '*12/Number_of_Payments_Per_Year,DAY(Loan_Start))', True);
      if I > 1 then
        FSheet.CreateCell(ARowIndex, 3).SetText('=J' + APriorRowNumber, True);
      FSheet.CreateCell(ARowIndex, 4).SetText('=IF(D' + ARowNumber + '>0,IF(Scheduled_payment<D' + ARowNumber + ', Scheduled_payment, D' + ARowNumber + '), 0)', True);
      FSheet.CreateCell(ARowIndex, 5).SetText('=IF(Extra_Payments<>0, IF(Scheduled_payment<D' + ARowNumber + ', G' + ARowNumber + ' -E' + ARowNumber + ', 0), 0)', True);
      FSheet.CreateCell(ARowIndex, 6).SetText('=H' + ARowNumber + '+I' + ARowNumber, True);
      FSheet.CreateCell(ARowIndex, 7).SetText('=IF(J' + ARowNumber +'>0,PPMT(Interest_Rate_Per_Month,B' + ARowNumber + ',Actual_Number_Payments,-Loan_Amount),D' + ARowNumber + ')', True);
      FSheet.CreateCell(ARowIndex, 8).SetText('=IF(D' + ARowNumber + '>0,IPMT(Interest_Rate_Per_Month,B' + ARowNumber + ',Actual_Number_Payments,-Loan_Amount),0)', True);
      FSheet.CreateCell(ARowIndex, 9).SetText('=IF(D' + ARowNumber + '-PPMT(Interest_Rate_Per_Month,B' + ARowNumber + ',Actual_Number_Payments, -Loan_Amount)>0, D' + ARowNumber + '-PPMT(Interest_Rate_Per_Month, B' + ARowNumber + ', Actual_Number_Payments, -Loan_Amount), 0)', True);
      FSheet.CreateCell(ARowIndex, 10).SetText('=SUM($I$12:$I' + ARowNumber + ')', True);
    end;
    FSheet.CreateCell(FStartDataRowIndex, 3).SetText('=Loan_Amount', True);
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.GenerateFieldsForCalculationResults;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  for R := 3 to 7 do
    FSheet.MergedCells.Add(Rect(5, R, 7, R));

  ARange := Rect(5, 3, 7, 7);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorzIndent := 1;
      ACell.Style.AlignHorz := ssahRight;
      ACell.Style.Font.Size := 10;
    end;

  ARange := Rect(8, 3, 8, 7);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.Font.Size := 10;
    end;

  FSheet.CreateCell(3, 5).SetText('First scheduled payment:');
  FSheet.CreateCell(4, 5).SetText('Scheduled number of payments:');
  FSheet.CreateCell(5, 5).SetText('Actual number of payments:');
  FSheet.CreateCell(6, 5).SetText('Total early payments:');
  FSheet.CreateCell(7, 5).SetText('Total interest:');

  FSheet.CreateCell(3, 8).Style.DataFormat.FormatCode := SummaryAccounting;
  FSheet.CreateCell(6, 8).Style.DataFormat.FormatCode := SummaryAccounting;
  FSheet.CreateCell(7, 8).Style.DataFormat.FormatCode := SummaryAccounting;
end;

procedure TfrmLoanAmortizationSchedule.GenerateFieldsForDataEntry;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  for R := 3 to 8 do
    FSheet.MergedCells.Add(Rect(1, R, 3, R));

  ARange := Rect(1, 3, 3, 8);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorzIndent := 1;
      ACell.Style.AlignHorz := ssahRight;
      ACell.Style.Font.Size := 10;
    end;

  ARange := Rect(4, 3, 4, 8);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.Font.Size := 10;
    end;

  FSheet.CreateCell(3, 1).SetText('Loan amount:');
  FSheet.CreateCell(4, 1).SetText('Annual interest rate:');
  FSheet.CreateCell(5, 1).SetText('Loan period in years:');
  FSheet.CreateCell(6, 1).SetText('Number of payments per year:');
  FSheet.CreateCell(7, 1).SetText('Start date of loan:');
  FSheet.CreateCell(8, 1).SetText('Optional extra payments:');

  FSheet.CreateCell(3, 4).Style.DataFormat.FormatCode := SummaryAccounting;
  FSheet.CreateCell(4, 4).Style.DataFormat.FormatCode := '0.00%';
  FSheet.CreateCell(7, 4).Style.DataFormat.FormatCode := DateFormat;
  FSheet.CreateCell(8, 4).Style.DataFormat.FormatCode := SummaryAccounting;
end;

procedure TfrmLoanAmortizationSchedule.GenerateScaledTableBody;
var
  I, ARowNumber, APriorRowNumber, ARowIndex: Integer;
  ANumberOfPayments: Integer;
begin
  SpreadSheet.BeginUpdate;
  try
    FSheet.CreateCell(3, 8).SetText('=IF(Values_Entered > 0, Scheduled_Monthly_Payment, "")', True);
    FSheet.CreateCell(4, 8).SetText('=IF(Values_Entered > 0, Loan_Years*Number_of_Payments_Per_Year, "")', True);
  finally
    SpreadSheet.EndUpdate;
  end;

  ANumberOfPayments := ScheduledNumberOfPayments;
  if ANumberOfPayments = 0 then
    Exit;

  SpreadSheet.BeginUpdate;
  try
    AddAggregateDefinedNamesForScaled(IntToStr(FStartDataRowIndex + ANumberOfPayments));
    FSheet.CreateCell(5, 8).SetText('=IF(Values_Entered > 0, Number_of_Payments, "")', True);
    FSheet.CreateCell(6, 8).SetText('=IF(Values_Entered > 0, SUMIF(Beg_Bal, ">0", Extra_Pay), "")', True);
    FSheet.CreateCell(7, 8).SetText('=IF(Values_Entered > 0, SUMIF(Beg_Bal, ">0", Int), "")', True);
    for I := 1 to ScheduledNumberOfPayments do
    begin
      ARowIndex := I + FStartDataRowIndex - 1;
      ARowNumber := ARowIndex + 1;
      APriorRowNumber := ARowNumber - 1;
      if I > 1 then
      begin
        FSheet.CreateCell(ARowIndex, 1).SetText(Format('=IF(NOT(OR(J%d = 0, J%d = "")), B%d + 1, "")', [APriorRowNumber, APriorRowNumber, APriorRowNumber]), True);
        FSheet.CreateCell(ARowIndex, 3).SetText(Format('=IF(Pay_Num <> "", J%d, "")', [APriorRowNumber]), True);
      end;
      FSheet.CreateCell(ARowIndex, 2).SetText('=IF(Pay_Num<>"", DATE(YEAR(Loan_Start), MONTH(Loan_Start)+(Pay_Num)*12/Number_of_Payments_Per_Year, DAY(Loan_Start)), "")', True);
      FSheet.CreateCell(ARowIndex, 4).SetText('=IF(Pay_Num<>"", Scheduled_Monthly_Payment, "")', True);
      FSheet.CreateCell(ARowIndex, 5).SetText('=IF(Pay_Num<>"", IF(Sched_Pay+Extra_Payments<Beg_Bal, Extra_Payments, IF(AND(Pay_Num<>"", Beg_Bal-Sched_Pay>0), Beg_Bal-Sched_Pay, IF(Pay_Num<>"", 0, ""))), "")', True);
      FSheet.CreateCell(ARowIndex, 6).SetText('=IF(Pay_Num<>"", IF(Sched_Pay+Extra_Pay<Beg_Bal, Princ+Int+Extra_Pay, IF(Pay_Num<>"", Beg_Bal, "")), "")', True);
      FSheet.CreateCell(ARowIndex, 7).SetText('=IF(Pay_Num<>"", Scheduled_Monthly_Payment, "")', True);
      FSheet.CreateCell(ARowIndex, 8).SetText('=IF(Pay_Num<>"", Beg_Bal*(Interest_Rate/Number_of_Payments_Per_Year), "")', True);
      FSheet.CreateCell(ARowIndex, 9).SetText('=IF(Pay_Num<>"", IF(Sched_Pay+Extra_Pay<Beg_Bal, Beg_Bal-Princ, IF(Pay_Num<>"", 0, "")), "")', True);
      FSheet.CreateCell(ARowIndex, 10).SetText(Format('=IF(Pay_Num <> "", SUM($I$12:$I%d), "")', [ARowNumber]), True);
    end;
    FSheet.CreateCell(FStartDataRowIndex, 1).SetText('=1', True);
    FSheet.CreateCell(FStartDataRowIndex, 3).SetText('=IF(Values_Entered, Loan_Amount, "")', True);
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.GenerateTableGrid;
var
  ARange: TRect;
  I, R, C: Integer;
  ACell: TdxSpreadSheetCell;
  AActualNumberOfPayments: Integer;
begin
  FSheet.BeginUpdate;
  try
    AActualNumberOfPayments := ActualNumberOfPayments;
    for I := FStartDataRowIndex to FStartDataRowIndex - 1 + AActualNumberOfPayments do
    begin
      ARange := Rect(1, I, 10, I);
        for R := ARange.Top to ARange.Bottom do
          for C := ARange.Left to ARange.Right do
            if I / 2 = Int(I / 2) then
              FSheet.CreateCell(R, C).Style.Brush.BackgroundColor := RGB(217, 217, 217);
    end;

    ARange := Rect(1, FStartDataRowIndex - 1, 10, FStartDataRowIndex - 1 + AActualNumberOfPayments);
    for R := ARange.Top to ARange.Bottom do
      for C := ARange.Left to ARange.Right do
      begin
        ACell := FSheet.CreateCell(R, C);
        ACell.Style.Borders[bLeft].Color := clWhite;
        ACell.Style.Borders[bRight].Color := clWhite;
        ACell.Style.Borders[bLeft].Style := sscbsThin;
        ACell.Style.Borders[bRight].Style := sscbsThin;
        ACell.Style.AlignVert := ssavCenter;
      end;

    ARange := Rect(1, FStartDataRowIndex, 2, FStartDataRowIndex - 1 + AActualNumberOfPayments);
    for R := ARange.Top to ARange.Bottom do
    begin
      FSheet.Rows[R].Size := 20;
      for C := ARange.Left to ARange.Right do
        FSheet.CreateCell(R, C).Style.AlignHorz := ssahRight;
    end;

    ARange := Rect(2, FStartDataRowIndex, 2, FStartDataRowIndex - 1 + ActualNumberOfPayments);
    for R := ARange.Top to ARange.Bottom do
      for C := ARange.Left to ARange.Right do
        FSheet.CreateCell(R, C).Style.DataFormat.FormatCode := DateFormat;

    ARange := Rect(3, FStartDataRowIndex, 10, FStartDataRowIndex - 1 + ActualNumberOfPayments);
    for R := ARange.Top to ARange.Bottom do
      for C := ARange.Left to ARange.Right do
        FSheet.CreateCell(R, C).Style.DataFormat.FormatCode := Accounting;
  finally
    FSheet.EndUpdate;
  end;
end;

procedure TfrmLoanAmortizationSchedule.GenerateTableHeader;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  ARange := Rect(1, FStartDataRowIndex - 1, 10, FStartDataRowIndex - 1);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.AlignHorz := ssahCenter;
      ACell.Style.AlignVert := ssavCenter;
      ACell.Style.WordWrap := True;
      ACell.Style.Brush.BackgroundColor := RGB(166, 166, 166);
      ACell.Style.Font.Color := clWhite;
      ACell.Style.Font.Size := 10;
    end;

  FSheet.CreateCell(FStartDataRowIndex - 1, 1).SetText('No.');
  FSheet.CreateCell(FStartDataRowIndex - 1, 2).SetText('Payment Date');
  FSheet.CreateCell(FStartDataRowIndex - 1, 3).SetText('Beginning Balance');
  FSheet.CreateCell(FStartDataRowIndex - 1, 4).SetText('Scheduled Payment');
  FSheet.CreateCell(FStartDataRowIndex - 1, 5).SetText('Extra Payment');
  FSheet.CreateCell(FStartDataRowIndex - 1, 6).SetText('Total Payment');
  FSheet.CreateCell(FStartDataRowIndex - 1, 7).SetText('Principal');
  FSheet.CreateCell(FStartDataRowIndex - 1, 8).SetText('Interest');
  FSheet.CreateCell(FStartDataRowIndex - 1, 9).SetText('Ending Balance');
  FSheet.CreateCell(FStartDataRowIndex - 1, 10).SetText('Cumulative Interest');
end;

procedure TfrmLoanAmortizationSchedule.GenerateTitle;
var
  ARange: TRect;
  R, C: Integer;
  ACell: TdxSpreadSheetCell;
begin
  FSheet.CreateCell(1, 1).SetText('Loan Amortization Schedule');
  ARange := Rect(1, 1, 10, 1);
  FSheet.MergedCells.Add(ARange);
  for R := ARange.Top to ARange.Bottom do
    for C := ARange.Left to ARange.Right do
    begin
      ACell := FSheet.CreateCell(R, C);
      ACell.Style.Font.Size := 26;
      ACell.Style.Font.Color := RGB(0, 176, 80);
      ACell.Style.AlignHorz := ssahLeft;
      ACell.Style.AlignVert := ssavCenter;
    end;
end;

function TfrmLoanAmortizationSchedule.GetActualLastRow: string;
begin
  Result := IntToStr(FStartDataRowIndex + ActualNumberOfPayments);
end;

function TfrmLoanAmortizationSchedule.GetActualNumberOfPayments: Integer;
begin
  Result := GetCustomNumberOfPayments(5, 8);
end;

function TfrmLoanAmortizationSchedule.GetCaption: string;
begin
  Result := 'Loan Amortization Schedule';
end;

function TfrmLoanAmortizationSchedule.GetCustomNumberOfPayments(ARowIndex, AColumnIndex: Integer): Integer;
var
  ACell: TdxSpreadSheetCell;
begin
  ACell := FSheet.Cells[ARowIndex, AColumnIndex];
  if (ACell <> nil) and (ACell.AsVariant <> Null) and VarIsNumeric(ACell.AsVariant) then
    Result := ACell.AsVariant
  else
    Result := 0;
end;

function TfrmLoanAmortizationSchedule.GetDescription: string;
begin
  Result := 'This demo illustrates how to use the Spreadsheet to create a loan amortization schedule template and' +
  ' automatically calculate a loan schedule. You can modify the values in the loan amount, annual interest rate, loan' +
  ' period, number of payments, start date and optional payments cells. The spreadsheet re-calculates the loan schedule' +
  ' automatically.';
end;

class function TfrmLoanAmortizationSchedule.GetID: Integer;
begin
  Result := 1;
end;

function TfrmLoanAmortizationSchedule.GetScheduledNumberOfPayments: Integer;
begin
  Result := GetCustomNumberOfPayments(4, 8);
end;

procedure TfrmLoanAmortizationSchedule.InitializeBook;
begin
  inherited;
  SpreadSheet.FormulaController.FormatSettings.DecimalSeparator := '.';
  SpreadSheet.FormulaController.FormatSettings.ListSeparator := ',';
  FSheet.BeginUpdate;
  try
    GenerateTitle;
    GenerateFieldsForDataEntry;
    GenerateFieldsForCalculationResults;
    GenerateTableHeader;
    SetBasicData;
  finally
    FSheet.EndUpdate;
  end;
  FSheetInitialized := True;
  CreateNewTable;
end;

procedure TfrmLoanAmortizationSchedule.PrepareBook;
begin
  if FPreviousScheduledNumberOfPayments = 0 then
  begin
    SpreadSheet.ClearAll;
    SpreadSheet.DefaultCellStyle.Font.Name := 'Tahoma';
    SpreadSheet.DefaultCellStyle.Font.Size := 10;
    FSheet := TdxSpreadSheetTableView(SpreadSheet.AddSheet(WorkSheetName));
    FSheet.Options.GridLines := bFalse;
    FSheet.Options.DefaultRowHeight := 15;
    SetupColumnAndRows;
  end;
end;

procedure TfrmLoanAmortizationSchedule.rbAnnuityPaymentsClick(Sender: TObject);
begin
  if FSheet <> nil then
  begin
    ShowHourglassCursor;
    SpreadSheet.History.Lock;
    try
      CreateNewTable;
    finally
      SpreadSheet.History.Unlock;
      HideHourglassCursor;
    end;
  end;
end;

procedure TfrmLoanAmortizationSchedule.SetBasicData;
begin
  FSheet.CreateCell(3, 4).AsFloat := 19900;
  FSheet.CreateCell(4, 4).AsFloat := 0.055;
  FSheet.CreateCell(5, 4).AsFloat := 2;
  FSheet.CreateCell(6, 4).AsInteger := 12;
  FSheet.CreateCell(7, 4).AsDateTime := Now;
  FSheet.CreateCell(8, 4).AsFloat := 200;
end;

procedure TfrmLoanAmortizationSchedule.SetupColumnAndRows;
var
  I: Integer;
begin
  FSheet.Options.DefaultColumnWidth := Round(9 * 7);
  FSheet.Columns.CreateItem(0).Size := Round(3.43 * 7);
  FSheet.Columns.CreateItem(1).Size := Round(5.14 * 7);
  for I := 2 to 10 do
    FSheet.Columns.CreateItem(I).Size := Round(11.71 * 7);

  FSheet.Rows.CreateItem(1).Size := 35;
  FSheet.Rows.CreateItem(10).Size := 40;
end;

function TfrmLoanAmortizationSchedule.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

initialization
  TfrmLoanAmortizationSchedule.Register;

finalization

end.
