unit InvoiceFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxSpreadSheetCore,
  dxSpreadSheetClasses, dxSpreadSheetTypes, dxSpreadSheet, cxPCdxBarPopupMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxCustomSpreadSheetBaseFormUnit,
  dxBarBuiltInMenu, dxSpreadSheetFunctions, dxSpreadSheetGraphics, cxContainer,
  dxLayoutcxEditAdapters, cxMaskEdit, dxLayoutContainer, cxTextEdit,
  dxLayoutControl, dxmdaset, cxCheckBox, Datasnap.DBClient, cxSpinEdit,
  dxSpreadSheetFormulas, dxSpreadSheetBaseFormUnit, cxDropDownEdit, Vcl.Menus,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxMemo, dxHashUtils, dxCore, dxCoreClasses, dxSpreadSheetCoreHistory,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetPrinting,
  dxSpreadSheetStyles, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetContainers, dxSpreadSheetHyperlinks, dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns,
  System.Actions, Vcl.ActnList, Vcl.StdActns, cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar,
  Vcl.ExtCtrls;

type

  TfrmInvoice = class(TdxSpreadSheetDemoUnitForm)
    dsInvoice: TDataSource;
    dxMemData1: TdxMemData;
    dxMemData1ProductID: TAutoIncField;
    dxMemData1ProductName: TWideStringField;
    dxMemData1SupplierID: TIntegerField;
    dxMemData1CategoryID: TIntegerField;
    dxMemData1QuantityPerUnit: TWideStringField;
    dxMemData1UnitPrice: TBCDField;
    dxMemData1UnitsInStock: TSmallintField;
    dxMemData1UnitsOnOrder: TSmallintField;
    dxMemData1ReorderLevel: TSmallintField;
    dxMemData1Discontinued: TBooleanField;
    dxMemData1EAN13: TWideStringField;
    lgInvoiceTabbed: TdxLayoutGroup;
    lgData: TdxLayoutGroup;
    teContactPerson: TcxTextEdit;
    mePhone: TcxMaskEdit;
    teCompany: TcxTextEdit;
    teStreetAddress: TcxTextEdit;
    teSlogan: TcxTextEdit;
    teCity: TcxTextEdit;
    teState: TcxTextEdit;
    meZIP: TcxMaskEdit;
    meFax: TcxMaskEdit;
    teEMail: TcxTextEdit;
    teName: TcxTextEdit;
    teStreetAddress1: TcxTextEdit;
    mePhone1: TcxMaskEdit;
    teCompany1: TcxTextEdit;
    teCity1: TcxTextEdit;
    teState1: TcxTextEdit;
    meZIP1: TcxMaskEdit;
    igFrom: TdxLayoutGroup;
    liContactPerson: TdxLayoutItem;
    liPhone: TdxLayoutItem;
    liCompany: TdxLayoutItem;
    liStreetAddress: TdxLayoutItem;
    liSlogan: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    liCity: TdxLayoutItem;
    lcInvoiceGroup2: TdxLayoutAutoCreatedGroup;
    liState: TdxLayoutItem;
    liZIP: TdxLayoutItem;
    liFax: TdxLayoutItem;
    lcInvoiceGroup3: TdxLayoutAutoCreatedGroup;
    liEMail: TdxLayoutItem;
    lcInvoiceGroup4: TdxLayoutAutoCreatedGroup;
    lgBillTo: TdxLayoutGroup;
    liName: TdxLayoutItem;
    liStreetAddress1: TdxLayoutItem;
    liPhone1: TdxLayoutItem;
    liCompany1: TdxLayoutItem;
    lcInvoiceGroup5: TdxLayoutAutoCreatedGroup;
    liCity1: TdxLayoutItem;
    lcInvoiceGroup6: TdxLayoutAutoCreatedGroup;
    liState1: TdxLayoutItem;
    liZIP1: TdxLayoutItem;
    liInvoiceGrid: TdxLayoutItem;
    grInvoice: TcxGrid;
    grInvoiceDBTableView1: TcxGridDBTableView;
    grInvoiceDBTableView1Check: TcxGridDBColumn;
    grInvoiceDBTableView1ProductName: TcxGridDBColumn;
    grInvoiceDBTableView1Quantity: TcxGridDBColumn;
    grInvoiceDBTableView1Discount: TcxGridDBColumn;
    grInvoiceDBTableView1UnitPrice: TcxGridDBColumn;
    grInvoiceLevel1: TcxGridLevel;
    procedure grInvoiceDBTableView1CheckPropertiesEditValueChanged(Sender: TObject);
    procedure grInvoiceDBTableView1QuantityPropertiesEditValueChanged(Sender: TObject);
    procedure lgInvoiceTabbedTabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
  private
    FSheet: TdxSpreadSheetTableView;

    procedure ApplySimpleCellValue(const AText: string; AColumn, ARow: Integer);
    procedure CreateColumnTitle(ARow, AColumn: Integer; const AText: string);
    procedure CreateContactInfoRange(const ARect: TRect);
    procedure CreateTableColumn(AColumn, ARow, ARowCount: Integer; ACaption, ANumberFormat: string; AHorAlignment: TdxSpreadSheetDataAlignHorz; AIndent: Integer = 0);
    procedure CreateThankfulRange(ARect: TRect);
    procedure CreateVariationalPart(AGoodsCount: Integer);
    procedure FillInvoiceCore;
    procedure FillInvoiceSheet;
    function  PopulateInvoiceGoodsList: Integer;
    procedure PrepareColumns;
    procedure PrepareRows;
    procedure PopulateDataInGrid;
    procedure PutWatermarkStyleValue(ACell: TdxSpreadSheetCell);
    procedure SetCenteredBoldValue(ACell: TdxSpreadSheetCell; const AText: string);
    procedure SetInvoiceTotalCell(ACell: TdxSpreadSheetCell; AGoodsCount: Integer);
    procedure SetLeftAlignedBoldValue(ACell: TdxSpreadSheetCell; const AText: string);

    function GetRecordValueFromGrid(ARecordIndex, AItemIndex: Integer): Variant;
    procedure SetRecordValueToGrid(ARecordIndex, AItemIndex: Integer; AValue: Variant);
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

uses
  System.Math, cxGridDBDataDefinitions;

const
  MaxItemsInInvoice: Integer = 18;
  GoodsStartRow: Integer = 16;
  AccountingFormat: string = '_($* #,##0.00_);_($* (#,##0.00);_($* " - "??_);_(@_)';
  AmountNumberFormat: string = '_(* #,##0.00_);_(* (#,##0.00);_(* " - "??_);_(@_)';
  DateNumberFormat: string = 'mmmm d, yyyy';
  CurrencyWithRedNegativeAndEmptyZero: string = '_-[$$-409]* #,##0.00_ ;_-[$$-409]* \-#,##0.00\ ;;_-@_ ';
  PercentageWithRedNegativeAndEmptyZero: string = '0.00%;[Red]-0.00%;;@';
  DefaultRegularFontName: string = 'Segoe UI';
  DefaultLightFontName: string = 'Segoe UI Light';
  DefaultFontSize: Integer = 11;


{ TfrmInvoice }

procedure TfrmInvoice.ApplySimpleCellValue(const AText: string; AColumn, ARow: Integer);
begin
  if AText <> '' then
    FSheet.CreateCell(ARow, AColumn).SetText(AText);
end;

procedure TfrmInvoice.CreateColumnTitle(ARow, AColumn: Integer; const AText: string);
var
  AStyle: TdxSpreadSheetCellStyle;
begin
  FSheet.BeginUpdate;
  try
    AStyle := FSheet.CreateCell(ARow, AColumn).Style;
    AStyle.Font.Name := DefaultRegularFontName;
    AStyle.Font.Style := [fsBold];
    AStyle.Font.Color := RGB($33, $33, $33);
    AStyle.Borders[bBottom].Style := sscbsMedium;
    AStyle.AlignVert := ssavCenter;
  finally
    FSheet.EndUpdate;
  end;
  FSheet.Cells[ARow, AColumn].SetText(AText);
end;

procedure TfrmInvoice.CreateContactInfoRange(const ARect: TRect);
var
  ARow: Integer;
  ACell: TdxSpreadSheetCell;
begin
  FSheet.BeginUpdate;
  try
    FSheet.MergedCells.Add(ARect);
    for ARow := ARect.Top to ARect.Bottom do
      FSheet.Rows[ARow].Size := 20;

    ACell := FSheet.CreateCell(ARect.Top, ARect.Left);
    ACell.Style.AlignHorz := ssahLeft;
    ACell.Style.WordWrap := True;
  finally
    FSheet.EndUpdate;
  end;
end;

procedure TfrmInvoice.CreateTableColumn(AColumn, ARow, ARowCount: Integer;
  ACaption, ANumberFormat: string; AHorAlignment: TdxSpreadSheetDataAlignHorz;
  AIndent: Integer = 0);
var
  AStyle: TdxSpreadSheetCellStyle;
  ARowCounter: Integer;
begin
  CreateColumnTitle(ARow, AColumn, ACaption);
  FSheet.BeginUpdate;
  try
    for ARowCounter := ARow to ARow + ARowCount do
    begin
      AStyle := FSheet.CreateCell(ARowCounter, AColumn).Style;
      AStyle.AlignHorz := AHorAlignment;
      if ANumberFormat <> '' then
        AStyle.DataFormat.FormatCode := ANumberFormat;

      AStyle.AlignHorzIndent := AIndent;
    end;
  finally
    FSheet.EndUpdate;
  end;
end;

procedure TfrmInvoice.CreateThankfulRange(ARect: TRect);
var
  AStyle: TdxSpreadSheetCellStyle;
  AColumn, ARow: Integer;
begin
  FSheet.MergedCells.Add(ARect);
  FSheet.BeginUpdate;
  try
    for AColumn := ARect.Left to ARect.Right - 1 do
      for ARow := ARect.Top to ARect.Bottom do
      begin
        AStyle := FSheet.CreateCell(ARow, AColumn).Style;
        AStyle.Font.Name := DefaultRegularFontName;
        AStyle.Font.Style := [fsBold, fsItalic];
        AStyle.AlignHorz := ssahLeft;
      end;
  finally
    FSheet.EndUpdate;
  end;
  FSheet.Cells[ARect.Top, ARect.Left].SetText('THANK YOU FOR YOUR BUSINESS!');
end;

procedure TfrmInvoice.CreateVariationalPart(AGoodsCount: Integer);
var
  AFormula: string;
  ARow: Integer;
  ATotalRowIndex: Integer;
  ACurrentCell: TdxSpreadSheetCell;
begin
  CreateTableColumn(1, 15, 18, 'Description', '', ssahLeft, 1);
  CreateTableColumn(2, 15, 18, 'QTY', '', ssahRight);
  CreateTableColumn(3, 15, 18, 'Price', CurrencyWithRedNegativeAndEmptyZero, ssahRight);
  CreateTableColumn(4, 15, 18, 'Discount', PercentageWithRedNegativeAndEmptyZero, ssahRight);
  CreateTableColumn(5, 15, 18, 'Amount', CurrencyWithRedNegativeAndEmptyZero, ssahRight);

  ATotalRowIndex := GoodsStartRow + AGoodsCount;
  for ARow := GoodsStartRow to ATotalRowIndex - 1 do
  begin
    AFormula := '=C' + IntToStr(ARow + 1) + '*D' + IntToStr(ARow + 1) + '*(1-E' + IntToStr(ARow + 1) + ')';
    FSheet.CreateCell(ARow, 5).SetText(AFormula, True);
  end;

  SetCenteredBoldValue(FSheet.CreateCell(ATotalRowIndex + 1, 4), 'Total');
  SetInvoiceTotalCell(FSheet.CreateCell(ATotalRowIndex + 1, 5), AGoodsCount);

  ACurrentCell := FSheet.CreateCell(ATotalRowIndex + 3, 1);
  ACurrentCell.Style.AlignHorz := ssahLeft;
  ACurrentCell.Style.DataFormat.FormatCode := '0';
  ACurrentCell.SetText('Make all checks payable to Your Company Name');

  CreateContactInfoRange(Rect(1, ATotalRowIndex + 4, 5, ATotalRowIndex + 5));
  CreateThankfulRange(Rect(1, ATotalRowIndex + 7, 5, ATotalRowIndex + 7));
end;

procedure TfrmInvoice.FillInvoiceCore;
var
  AGoodsRowCount: Integer;
  AFooterRowIndex: Integer;
begin
  ApplySimpleCellValue(teCompany.Text, 1, 0);
  ApplySimpleCellValue(teSlogan.Text, 1, 2);
  ApplySimpleCellValue(teStreetAddress.Text, 1, 3);
  ApplySimpleCellValue(teCity.Text + ', ' + teState.Text + ' ' + meZIP.Text, 1, 4);
  ApplySimpleCellValue('Phone: ' + mePhone.Text + ', Fax: ' + meFax.Text, 1, 5);
  ApplySimpleCellValue(teName.Text, 1, 8);
  ApplySimpleCellValue(teCompany1.Text, 1, 9);
  ApplySimpleCellValue(teStreetAddress1.Text, 1, 10);
  ApplySimpleCellValue(teCity1.Text + ', ' + teState1.Text + ' ' + meZIP1.Text, 1, 11);
  ApplySimpleCellValue('Phone: ' + mePhone1.Text, 1, 12);
  AGoodsRowCount := PopulateInvoiceGoodsList;
  CreateVariationalPart(AGoodsRowCount);
  AFooterRowIndex := 16 + AGoodsRowCount + 3;
  ApplySimpleCellValue('Make all checks payable to ' + teCompany.Text, 1, AFooterRowIndex);
  ApplySimpleCellValue('If you have any questions concerning this invoice, contact ' + teContactPerson.Text + ', ' + mePhone.Text +', ' + teEMail.Text, 1, AFooterRowIndex + 1);
end;

procedure TfrmInvoice.FillInvoiceSheet;
var
  ACurrentCell: TdxSpreadSheetCell;
begin
  SpreadSheet.BeginUpdate;
  try
    PrepareColumns;
    PrepareRows;

    ACurrentCell := FSheet.CreateCell(0, 1);
    ACurrentCell.Style.Font.Name := DefaultLightFontName;
    ACurrentCell.Style.Font.Size := 27;
    ACurrentCell.Style.AlignVert := ssavBottom;

    ACurrentCell := FSheet.CreateCell(2, 1);
    ACurrentCell.Style.Font.Style := [fsBold, fsItalic];
    ACurrentCell.Style.Font.Size := 14;

    SetLeftAlignedBoldValue(FSheet.CreateCell(3, 4), 'DATE:');
    SetLeftAlignedBoldValue(FSheet.CreateCell(4, 4), 'INVOICE #:');
    SetLeftAlignedBoldValue(FSheet.CreateCell(5, 4), 'FOR:');

    PutWatermarkStyleValue(FSheet.CreateCell(0, 5));

    ACurrentCell := FSheet.CreateCell(3, 5);
    ACurrentCell.Style.DataFormat.FormatCode := DateNumberFormat;
    ACurrentCell.Style.AlignHorz := ssahLeft;
    ACurrentCell.SetText('=TODAY()', True);

    ACurrentCell := FSheet.CreateCell(4, 5);
    ACurrentCell.Style.DataFormat.FormatCode := '0';
    ACurrentCell.Style.AlignHorz := ssahLeft;
    ACurrentCell.SetText('100');

    ACurrentCell := FSheet.CreateCell(5, 5);
    ACurrentCell.Style.WordWrap := True;
    ACurrentCell.Style.Font.Style := [fsItalic];
    ACurrentCell.SetText('Project or service description');

    ACurrentCell := FSheet.CreateCell(7, 1);
    ACurrentCell.Style.Font.Size := 14;
    ACurrentCell.Style.Font.Style := [fsBold];
    ACurrentCell.SetText('BILL TO:');

    FillInvoiceCore;

  finally
    SpreadSheet.EndUpdate;
  end;
end;

function TfrmInvoice.GetCaption: string;
begin
  Result := 'Invoice';
end;

function TfrmInvoice.GetDescription: string;
begin
  Result := 'This demo illustrates the Spreadsheet''s API. The sample invoice template is generated in code at runtime.' +
  ' Switch to the Data tab to modify the contents of an order, then return to the Invoice tab to view the results. You' +
  ' can change the product quantity, price and discount values - all the values are re-calculated automatically.'
end;

class function TfrmInvoice.GetID: Integer;
begin
  Result := 0;
end;

function TfrmInvoice.GetRecordValueFromGrid(ARecordIndex, AItemIndex: Integer): Variant;
begin
  Result := grInvoiceDBTableView1.DataController.GetValue(ARecordIndex, AItemIndex);
end;

procedure TfrmInvoice.grInvoiceDBTableView1CheckPropertiesEditValueChanged(Sender: TObject);
var
  AIndex: Integer;
begin
  grInvoiceDBTableView1.DataController.Post;
  AIndex := grInvoiceDBTableView1.DataController.FocusedRecordIndex;
  if GetRecordValueFromGrid(AIndex, grInvoiceDBTableView1Check.Index) then
    SetRecordValueToGrid(AIndex, grInvoiceDBTableView1Quantity.Index, 1)
  else
    SetRecordValueToGrid(AIndex, grInvoiceDBTableView1Quantity.Index, 0);
end;

procedure TfrmInvoice.grInvoiceDBTableView1QuantityPropertiesEditValueChanged(
  Sender: TObject);
var
  AIndex: Integer;
begin
  grInvoiceDBTableView1.DataController.Post;
  AIndex := grInvoiceDBTableView1.DataController.FocusedRecordIndex;
  if GetRecordValueFromGrid(AIndex, grInvoiceDBTableView1Quantity.Index) > 0 then
    SetRecordValueToGrid(AIndex, grInvoiceDBTableView1Check.Index, True)
  else
    SetRecordValueToGrid(AIndex, grInvoiceDBTableView1Check.Index, False);
end;

procedure TfrmInvoice.InitializeBook;
begin
  inherited;
  PopulateDataInGrid;
  FillInvoiceSheet;
end;

procedure TfrmInvoice.lgInvoiceTabbedTabChanging(Sender: TObject; ANewTabIndex: Integer; var Allow: Boolean);
var
  I: Integer;
begin
  if ANewTabIndex = 1 then
  begin
    SpreadSheet.BeginUpdate;
    try
      for I := 0 to SpreadSheet.SheetCount do
        if SpreadSheet.Sheets[I].Caption = 'SimpleInvoice' then
        begin
          SpreadSheet.Sheets[I].Free;
          Break;
        end;
      FSheet := TdxSpreadSheetTableView(SpreadSheet.AddSheet('SimpleInvoice'));
      SpreadSheet.ActiveSheetIndex := 0;
      FSheet.Options.GridLines := bFalse;
    finally
      SpreadSheet.EndUpdate;
    end;
    FillInvoiceSheet;
  end;
end;

procedure TfrmInvoice.PopulateDataInGrid;
var
  I: Integer;
  AQuantityValue: Variant;
  ARecordCount: Integer;
begin
  Randomize;
  ARecordCount := grInvoiceDBTableView1.DataController.RecordCount;
  for I := 0 to 8 do
    SetRecordValueToGrid(Random(ARecordCount - 1), grInvoiceDBTableView1Quantity.Index, Random(20) + 1);

  grInvoiceDBTableView1.BeginUpdate;
  try
    for I := 0 to ARecordCount - 1 do
    begin
      AQuantityValue := GetRecordValueFromGrid(I, grInvoiceDBTableView1Quantity.Index);
      SetRecordValueToGrid(I, grInvoiceDBTableView1Quantity.Index, AQuantityValue);
      SetRecordValueToGrid(I, grInvoiceDBTableView1Check.Index, AQuantityValue > 0);
      SetRecordValueToGrid(I, grInvoiceDBTableView1Discount.Index, 0);
    end;
  finally
    grInvoiceDBTableView1.EndUpdate;
  end;
end;

function TfrmInvoice.PopulateInvoiceGoodsList: Integer;
var
  ACurrentRowIndex: Integer;
  I, J: Integer;
  AQuantity: Variant;
begin
  Result := 0;
  for I := 0 to grInvoiceDBTableView1.DataController.RecordCount - 1 do
  begin
    AQuantity := GetRecordValueFromGrid(I, grInvoiceDBTableView1Quantity.Index);
    if AQuantity > 0 then
    begin
      ACurrentRowIndex := Result + GoodsStartRow;
      FSheet.CreateCell(ACurrentRowIndex, 1).SetText(GetRecordValueFromGrid(I, grInvoiceDBTableView1ProductName.Index));
      FSheet.CreateCell(ACurrentRowIndex, 2).SetText(IntToStr(AQuantity));
      FSheet.CreateCell(ACurrentRowIndex, 3).SetText(FloatToStr(GetRecordValueFromGrid(I, grInvoiceDBTableView1UnitPrice.Index)));
      FSheet.CreateCell(ACurrentRowIndex, 4).SetText(FloatToStr(GetRecordValueFromGrid(I, grInvoiceDBTableView1Discount.Index) / 100));
      if (Result / 2) = Int((Result / 2)) then
        for J := 1 to 5 do
          FSheet.CreateCell(ACurrentRowIndex, J).Style.Brush.BackgroundColor := RGB($F1, $F1, $F1);

      Inc(Result);
      if Result >= MaxItemsInInvoice then
        Break;
    end;
  end;
end;

procedure TfrmInvoice.PrepareBook;
begin
  SpreadSheet.ClearAll;
  SpreadSheet.DefaultCellStyle.AlignVert := ssavCenter;
  SpreadSheet.DefaultCellStyle.Font.Name := DefaultRegularFontName;
  SpreadSheet.DefaultCellStyle.Font.Size := DefaultFontSize;
  FSheet := TdxSpreadSheetTableView(SpreadSheet.AddSheet('SimpleInvoice'));
  FSheet.Options.GridLines := bFalse;
end;

procedure TfrmInvoice.PrepareColumns;
begin
  FSheet.Columns.CreateItem(0).Size := 6 * 8;
  FSheet.Columns.CreateItem(1).Size := Round(47.86 * 8);
  FSheet.Columns.CreateItem(2).Size := 12 * 8;
  FSheet.Columns.CreateItem(3).Size := 18 * 8;
  FSheet.Columns.CreateItem(4).Size := 16 * 8;
  FSheet.Columns.CreateItem(5).Size := 21 * 8;
end;

procedure TfrmInvoice.PrepareRows;
var
  ARow: Integer;
begin
  FSheet.Rows.CreateItem(0).Size := 53;
  FSheet.Rows.CreateItem(2).Size := Min(FSheet.Options.DefaultRowHeight * 2, 400);
  for ARow := 2 to 6 do
    FSheet.Rows.CreateItem(ARow).Style.AlignVert := ssavTop;

  FSheet.Rows.CreateItem(5).Size := 45;
  for ARow := 7 to 11 do
    FSheet.Rows.CreateItem(ARow).Style.AlignVert := ssavBottom;

  for ARow := 16 to 24 do
    FSheet.Rows.CreateItem(ARow).Size := 25;

  for ARow := 37 to 38 do
    FSheet.Rows.CreateItem(ARow).Style.AlignVert := ssavBottom;
end;

procedure TfrmInvoice.PutWatermarkStyleValue(ACell: TdxSpreadSheetCell);
begin
  FSheet.BeginUpdate;
  try
    ACell.Style.Font.Size := 36;
    ACell.Style.Font.Style := [fsBold, fsItalic];
    ACell.Style.AlignHorz := ssahRight;
    ACell.Style.AlignVert := ssavBottom;
    ACell.Style.Font.Color := RGB($E0, $E0, $E0);
  finally
    FSheet.EndUpdate;
  end;
  ACell.SetText('INVOICE');
end;

procedure TfrmInvoice.SetCenteredBoldValue(ACell: TdxSpreadSheetCell; const AText: string);
begin
  FSheet.BeginUpdate;
  try
    ACell.Style.AlignHorz := ssahCenter;
    ACell.Style.Font.Style := [fsBold];
    ACell.Style.Font.Name := DefaultRegularFontName;
    ACell.Style.Font.Size := 14;
  finally
    FSheet.EndUpdate;
  end;
  ACell.SetText(AText);
end;

procedure TfrmInvoice.SetInvoiceTotalCell(ACell: TdxSpreadSheetCell; AGoodsCount: Integer);
var
  AFormula: string;
begin
  FSheet.BeginUpdate;
  try
    ACell.Style.DataFormat.FormatCode := AccountingFormat;
    ACell.Style.Font.Color := clBlack;
    ACell.Style.Brush.BackgroundColor := RGB($ea, $ea, $ea);
    ACell.Style.AlignHorz := ssahRight;
    ACell.Style.Font.Size := 14;
  finally
    FSheet.EndUpdate;
  end;
  AFormula := '=SUM(F' + IntToStr(GoodsStartRow + 1) + ':F' + IntToStr(GoodsStartRow + AGoodsCount) + ')';
  ACell.SetText(AFormula, True);
end;

procedure TfrmInvoice.SetLeftAlignedBoldValue(ACell: TdxSpreadSheetCell; const AText: string);
begin
  FSheet.BeginUpdate;
  try
    ACell.Style.AlignHorz := ssahLeft;
    ACell.Style.Font.Name := DefaultRegularFontName;
    ACell.Style.Font.Style := [fsBold];
    ACell.Style.Font.Size := DefaultFontSize;
    ACell.Style.Font.Color := RGB($BB, $BA, $BA);
  finally
    FSheet.EndUpdate;
  end;
  ACell.SetText(AText);
end;

procedure TfrmInvoice.SetRecordValueToGrid(ARecordIndex, AItemIndex: Integer; AValue: Variant);
begin
  grInvoiceDBTableView1.DataController.SetValue(ARecordIndex, AItemIndex, AValue);
end;

function TfrmInvoice.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

initialization
  TfrmInvoice.Register;

finalization

end.
