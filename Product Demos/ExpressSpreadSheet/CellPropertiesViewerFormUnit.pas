unit CellPropertiesViewerFormUnit;

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
  dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxStyles,
  cxInplaceContainer, cxVGrid, cxOI, Vcl.StdCtrls, cxButtons, cxMemo, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxSpreadSheet, dxLayoutControl, dxCore, dxCoreClasses, dxHashUtils,
  dxSpreadSheetCoreHistory, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetPrinting, cxClasses, dxSpreadSheetContainers,
  dxSpreadSheetHyperlinks, dxSpreadSheetUtils, Vcl.ExtCtrls, dxSpreadSheetStyles;

type
  { TdxCustomCellPersistent }

  TdxCustomCellPersistent = class(TPersistent)
  private
    FSpreadSheet: TdxSpreadSheet;
    function GetCell: TdxSpreadSheetCell;
    function GetFocusedColumn: Integer;
    function GetFocusedRow: Integer;
  protected
    property FocusedColumn: Integer read GetFocusedColumn;
    property FocusedRow: Integer read GetFocusedRow;
    property SpreadSheet: TdxSpreadSheet read FSpreadSheet;
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet); overload; virtual;
    constructor Create(ASpreadSheet: TdxSpreadSheet; ABorder: TcxBorder); overload; virtual;

    property Cell: TdxSpreadSheetCell read GetCell;
  end;

  { TdxCellBorder }

  TdxCellBorder = class(TdxCustomCellPersistent)
  private
    FBorder: TcxBorder;

    function GetColor: TColor;
    function GetStyle: TdxSpreadSheetCellBorderStyle;
    procedure SetColor(const Value: TColor);
    procedure SetStyle(const Value: TdxSpreadSheetCellBorderStyle);
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet; ABorder: TcxBorder); override;
  published
    property Color: TColor read GetColor write SetColor;
    property Style: TdxSpreadSheetCellBorderStyle read GetStyle write SetStyle;
  end;

  { TdxCellBorders }

  TdxCellBorders = class(TdxCustomCellPersistent)
  private
    FBottom: TdxCellBorder;
    FLeft: TdxCellBorder;
    FRight: TdxCellBorder;
    FTop: TdxCellBorder;
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet); override;
    destructor Destroy; override;
  published
    property Bottom: TdxCellBorder read FBottom;
    property Right: TdxCellBorder read FRight;
    property Left: TdxCellBorder read FLeft;
    property Top: TdxCellBorder read FTop;
  end;

  { TdxCellBrush }

  TdxCellBrush = class(TdxCustomCellPersistent)
  private
    function GetBackgroundColor: TColor;
    function GetForegroundColor: TColor;
    function GetStyle: TdxSpreadSheetCellFillStyle;
    procedure SetBackgroundColor(const Value: TColor);
    procedure SetForegroundColor(const Value: TColor);
    procedure SetStyle(const Value: TdxSpreadSheetCellFillStyle);
  published
    property BackgroundColor: TColor read GetBackgroundColor write SetBackgroundColor;
    property ForegroundColor: TColor read GetForegroundColor write SetForegroundColor;
    property Style: TdxSpreadSheetCellFillStyle read GetStyle write SetStyle;
  end;

  { TdxCellDataFormat }

  TdxCellDataFormat = class(TdxCustomCellPersistent)
  private
    function GetFormatCode: string;
    function GetFormatCodeID: Integer;
    procedure SetFormatCode(const Value: string);
    procedure SetFormatCodeID(const Value: Integer);
  published
    property FormatCode: string read GetFormatCode write SetFormatCode;
    property FormatCodeID: Integer read GetFormatCodeID write SetFormatCodeID;
  end;

  { TdxCellFont }

  TdxCellFont = class(TdxCustomCellPersistent)
  private
    function GetCharset: TFontCharset;
    function GetColor: TColor;
    function GetHeight: Integer;
    function GetName: TFontName;
    function GetPitch: TFontPitch;
    function GetSize: Integer;
    function GetStyle: TFontStyles;
    procedure SetCharset(const Value: TFontCharset);
    procedure SetColor(const Value: TColor);
    procedure SetHeight(const Value: Integer);
    procedure SetName(const Value: TFontName);
    procedure SetPitch(const Value: TFontPitch);
    procedure SetSize(const Value: Integer);
    procedure SetStyle(const Value: TFontStyles);
  published
    property Charset: TFontCharset read GetCharset write SetCharset;
    property Color: TColor read GetColor write SetColor;
    property Height: Integer read GetHeight write SetHeight;
    property Name: TFontName read GetName write SetName;
    property Pitch: TFontPitch read GetPitch write SetPitch default fpDefault;
    property Size: Integer read GetSize write SetSize stored False;
    property Style: TFontStyles read GetStyle write SetStyle;
  end;

  { TdxCellStyle }

  TdxCellStyle = class(TdxCustomCellPersistent)
  private
    FBorders: TdxCellBorders;
    FBrush: TdxCellBrush;
    FDataFormat: TdxCellDataFormat;
    FFont: TdxCellFont;

    function GetAlignHorz: TdxSpreadSheetDataAlignHorz;
    procedure SetAlignHorz(const Value: TdxSpreadSheetDataAlignHorz);
    function GetAlignHorzIndent: Integer;
    procedure SetAlignHorzIndent(const Value: Integer);
    function GetAlignVert: TdxSpreadSheetDataAlignVert;
    procedure SetAlignVert(const Value: TdxSpreadSheetDataAlignVert);
    function GetHidden: Boolean;
    function GetLocked: Boolean;
    function GetShrinkToFit: Boolean;
    function GetWordWrap: Boolean;
    procedure SetHidden(const Value: Boolean);
    procedure SetLocked(const Value: Boolean);
    procedure SetShrinkToFit(const Value: Boolean);
    procedure SetWordWrap(const Value: Boolean);
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet); override;
    destructor Destroy; override;
  published
    property AlignHorz: TdxSpreadSheetDataAlignHorz read GetAlignHorz write SetAlignHorz;
    property AlignHorzIndent: Integer read GetAlignHorzIndent write SetAlignHorzIndent;
    property AlignVert: TdxSpreadSheetDataAlignVert read GetAlignVert write SetAlignVert;
    property Borders: TdxCellBorders read FBorders;
    property Brush: TdxCellBrush read FBrush;
    property DataFormat: TdxCellDataFormat read FDataFormat;
    property Font: TdxCellFont read FFont;
    property Hidden: Boolean read GetHidden write SetHidden;
    property Locked: Boolean read GetLocked write SetLocked;
    property ShrinkToFit: Boolean read GetShrinkToFit write SetShrinkToFit;
    property WordWrap: Boolean read GetWordWrap write SetWordWrap;
  end;

  { TdxCellValue }

  TdxCellValue = class(TdxCustomCellPersistent)
  private
    FAsVariant: Variant;

    function GetAsBoolean: Boolean;
    function GetAsCurrency: Currency;
    function GetAsDateTime: TDateTime;
    function GetAsError: TdxSpreadSheetFormulaErrorCode;
    function GetAsFloat: Double;
    function GetAsInteger: Longint;
    function GetAsString: string;
    function GetAsVariant: Variant;
  published
    property AsBoolean: Boolean read GetAsBoolean;
    property AsCurrency: Currency read GetAsCurrency;
    property AsDateTime: TDateTime read GetAsDateTime;
    property AsError: TdxSpreadSheetFormulaErrorCode read GetAsError;
    property AsFloat: Double read GetAsFloat;
    property AsInteger: Longint read GetAsInteger;
    property AsString: string read GetAsString;
    property AsVariant: Variant read GetAsVariant write FAsVariant stored False;
  end;

  { TdxCellContent }

  TdxCellContent = class(TdxCustomCellPersistent)
  private
    FValue: TdxCellValue;
    function GetFormula: string;
    procedure SetFormula(const Value: string);
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet); override;
    destructor Destroy; override;
  published
    property Formula: string read GetFormula write SetFormula;
    property Value: TdxCellValue read FValue;
  end;

  { TdxCellPersistent }

  TdxCellPersistent = class(TdxCustomCellPersistent)
  private
    FContent: TdxCellContent;
    FStyle: TdxCellStyle;
  public
    constructor Create(ASpreadSheet: TdxSpreadSheet); override;
    destructor Destroy; override;
  published
    property Content: TdxCellContent read FContent;
    property Style: TdxCellStyle read FStyle;
  end;

  { TfrmCellPropertiesViewer }

  TfrmCellPropertiesViewer = class(TdxSpreadSheetDemoUnitForm)
    rttiCellInspector: TcxRTTIInspector;
    liCellInspector: TdxLayoutItem;
    lcCustomGroup1: TdxLayoutAutoCreatedGroup;
    lcCustomSplitterItem3: TdxLayoutSplitterItem;
    procedure rttiCellInspectorEditValueChanged(Sender: TObject;
      ARowProperties: TcxCustomEditorRowProperties);
  private
    FSpreadSheetCellPersistent: TdxCellPersistent;
  protected
    procedure DoSpreadSheetSelectionChanged; override;
    function GetDescription: string; override;
  public
    destructor Destroy; override;

    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

implementation

{$R *.dfm}

{ TfrmCellPropertiesViewer }

destructor TfrmCellPropertiesViewer.Destroy;
begin
  FreeAndNil(FSpreadSheetCellPersistent);
  inherited;
end;

procedure TfrmCellPropertiesViewer.DoSpreadSheetSelectionChanged;
begin
  inherited;
  rttiCellInspector.RefreshInspectedProperties;
end;

function TfrmCellPropertiesViewer.GetCaption: string;
begin
  Result := 'Cell Properties Viewer';
end;

function TfrmCellPropertiesViewer.GetDescription: string;
begin
  Result := 'This demo illustrates how to use the Spreadsheet to edit a cell in a worksheet through the API.' +
  ' You can select a cell in the SpreadsheetControl and review its properties in the property grid. If you enter a ' +
  'value or formula, or format this cell, it changes the corresponding properties'' values. You can also modify the' +
  ' selected cell by setting its formula, formatting or layout properties in corresponding property grid editors.';
end;

class function TfrmCellPropertiesViewer.GetID: Integer;
begin
  Result := 7;
end;

procedure TfrmCellPropertiesViewer.InitializeBook;
begin
  inherited;
  SpreadSheet.BeginUpdate;
  try
    LoadFromFile('Data\CellPropertiesViewer_template.xlsx');
    FSpreadSheetCellPersistent := TdxCellPersistent.Create(SpreadSheet);
    rttiCellInspector.InspectedObject := FSpreadSheetCellPersistent;
    rttiCellInspector.FullExpand;
  finally
    SpreadSheet.EndUpdate;
  end;
end;

procedure TfrmCellPropertiesViewer.rttiCellInspectorEditValueChanged(
  Sender: TObject; ARowProperties: TcxCustomEditorRowProperties);
begin
  DoSpreadSheetSelectionChanged;
end;

function TfrmCellPropertiesViewer.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

{ TdxSpreaqdSheetRangeAdapter }

constructor TdxCellPersistent.Create(ASpreadSheet: TdxSpreadSheet);
begin
  inherited;
  FContent := TdxCellContent.Create(ASpreadSheet);
  FStyle := TdxCellStyle.Create(ASpreadSheet);
end;

destructor TdxCellPersistent.Destroy;
begin
  FreeAndNil(FContent);
  FreeAndNil(FStyle);
end;

{ TdxSpreadSheetCustomCellPersistent }

constructor TdxCustomCellPersistent.Create(ASpreadSheet: TdxSpreadSheet);
begin
  FSpreadSheet := ASpreadSheet;
end;

constructor TdxCustomCellPersistent.Create(ASpreadSheet: TdxSpreadSheet; ABorder: TcxBorder);
begin
  Create(ASpreadSheet);
end;

function TdxCustomCellPersistent.GetCell: TdxSpreadSheetCell;
begin
  Result := SpreadSheet.ActiveSheetAsTable.Cells[FocusedRow, FocusedColumn];
end;

function TdxCustomCellPersistent.GetFocusedColumn: Integer;
begin
  Result := SpreadSheet.ActiveSheetAsTable.Selection.FocusedColumn;
end;

function TdxCustomCellPersistent.GetFocusedRow: Integer;
begin
  Result := SpreadSheet.ActiveSheetAsTable.Selection.FocusedRow;
end;

{ TdxCellContent }

constructor TdxCellContent.Create(ASpreadSheet: TdxSpreadSheet);
begin
  inherited;
  FValue := TdxCellValue.Create(ASpreadSheet);
end;

destructor TdxCellContent.Destroy;
begin
  FreeAndNil(FValue);
  inherited;
end;

function TdxCellContent.GetFormula: string;
begin
  if (Cell <> nil) and Cell.IsFormula then
    Result := Cell.AsFormula.AsText
  else
    Result := '';
end;

procedure TdxCellContent.SetFormula(const Value: string);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).SetText(Value, True);
end;

{ TdxCellValue }

function TdxCellValue.GetAsBoolean: Boolean;
begin
  if Cell <> nil then
    Result := Cell.AsBoolean
  else
    Result := False;
end;

function TdxCellValue.GetAsCurrency: Currency;
begin
  if (Cell <> nil) and (Cell.DataType = cdtCurrency) then
    Result := Cell.AsCurrency
  else
    Result := 0;
end;

function TdxCellValue.GetAsDateTime: TDateTime;
begin
  if (Cell <> nil) and (Cell.DataType = cdtDateTime) then
    Result := Cell.AsDateTime
  else
    Result := 0;
end;

function TdxCellValue.GetAsError: TdxSpreadSheetFormulaErrorCode;
begin
  if (Cell <> nil) and (Cell.DataType = cdtError) then
    Result := Cell.AsError
  else
    Result := ecNone;
end;

function TdxCellValue.GetAsFloat: Double;
begin
  if (Cell <> nil) and (Cell.DataType = cdtFloat) then
    Result := Cell.AsFloat
  else
    Result := 0;
end;

function TdxCellValue.GetAsInteger: Longint;
begin
  if (Cell <> nil) and (Cell.DataType = cdtInteger) then
    Result := Cell.AsInteger
  else
    Result := 0;
end;

function TdxCellValue.GetAsString: string;
begin
  if Cell <> nil then
    Result := Cell.AsString
  else
    Result := '';
end;

function TdxCellValue.GetAsVariant: Variant;
begin
  if Cell <> nil then
    FAsVariant := Cell.AsVariant
  else
    FAsVariant := NULL;

  Result := FAsVariant;
end;

{ TdxCellStyle }

constructor TdxCellStyle.Create(ASpreadSheet: TdxSpreadSheet);
begin
  inherited;
  FBorders := TdxCellBorders.Create(ASpreadSheet);
  FBrush := TdxCellBrush.Create(ASpreadSheet);
  FDataFormat := TdxCellDataFormat.Create(ASpreadSheet);
  FFont := TdxCellFont.Create(ASpreadSheet);
end;

destructor TdxCellStyle.Destroy;
begin
  FreeAndNil(FBrush);
  FreeAndNil(FBorders);
  FreeAndNil(FDataFormat);
  FreeAndNil(FFont);
  inherited;
end;

function TdxCellStyle.GetAlignHorz: TdxSpreadSheetDataAlignHorz;
begin
  if Cell <> nil then
    Result := Cell.Style.AlignHorz
  else
    Result := SpreadSheet.DefaultCellStyle.AlignHorz;
end;

function TdxCellStyle.GetAlignHorzIndent: Integer;
begin
  if Cell <> nil then
    Result := Cell.Style.AlignHorzIndent
  else
    Result := SpreadSheet.DefaultCellStyle.AlignHorzIndent;
end;

function TdxCellStyle.GetAlignVert: TdxSpreadSheetDataAlignVert;
begin
  if Cell <> nil then
    Result := Cell.Style.AlignVert
  else
    Result := SpreadSheet.DefaultCellStyle.AlignVert;
end;

function TdxCellStyle.GetHidden: Boolean;
begin
  if Cell <> nil then
    Result := Cell.Style.Hidden
  else
    Result := SpreadSheet.DefaultCellStyle.Hidden;
end;

function TdxCellStyle.GetLocked: Boolean;
begin
  if Cell <> nil then
    Result := Cell.Style.Locked
  else
    Result := SpreadSheet.DefaultCellStyle.Locked;
end;

function TdxCellStyle.GetShrinkToFit: Boolean;
begin
  if Cell <> nil then
    Result := Cell.Style.ShrinkToFit
  else
    Result := SpreadSheet.DefaultCellStyle.ShrinkToFit;
end;

function TdxCellStyle.GetWordWrap: Boolean;
begin
  if Cell <> nil then
    Result := Cell.Style.WordWrap
  else
    Result := SpreadSheet.DefaultCellStyle.WordWrap;
end;

procedure TdxCellStyle.SetAlignHorz(const Value: TdxSpreadSheetDataAlignHorz);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.AlignHorz := Value;
end;

procedure TdxCellStyle.SetAlignHorzIndent(const Value: Integer);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.AlignHorzIndent := Value;
end;

procedure TdxCellStyle.SetAlignVert(const Value: TdxSpreadSheetDataAlignVert);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.AlignVert := Value;
end;

procedure TdxCellStyle.SetHidden(const Value: Boolean);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Hidden := Value;
end;

procedure TdxCellStyle.SetLocked(const Value: Boolean);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Locked := Value;
end;

procedure TdxCellStyle.SetShrinkToFit(const Value: Boolean);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.ShrinkToFit := Value;
end;

procedure TdxCellStyle.SetWordWrap(const Value: Boolean);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.WordWrap := Value;
end;

{ TdxCellBorders }

constructor TdxCellBorders.Create(ASpreadSheet: TdxSpreadSheet);
begin
  inherited;
  FLeft := TdxCellBorder.Create(ASpreadSheet, bLeft);
  FRight := TdxCellBorder.Create(ASpreadSheet, bRight);
  FTop := TdxCellBorder.Create(ASpreadSheet, bTop);
  FBottom := TdxCellBorder.Create(ASpreadSheet, bBottom);
end;

destructor TdxCellBorders.Destroy;
begin
  FreeAndNil(FLeft);
  FreeAndNil(FRight);
  FreeAndNil(FTop);
  FreeAndNil(FBottom);
  inherited;
end;

{ TdxCellBorder }

constructor TdxCellBorder.Create(ASpreadSheet: TdxSpreadSheet; ABorder: TcxBorder);
begin
  inherited;
  FBorder := ABorder;
end;

function TdxCellBorder.GetColor: TColor;
begin
  if Cell <> nil then
    Result := Cell.Style.Borders[FBorder].Color
  else
    Result := SpreadSheet.DefaultCellStyle.Borders[FBorder].Color;
end;

function TdxCellBorder.GetStyle: TdxSpreadSheetCellBorderStyle;
begin
  if Cell <> nil then
    Result := Cell.Style.Borders[FBorder].Style
  else
    Result := SpreadSheet.DefaultCellStyle.Borders[FBorder].Style;
end;

procedure TdxCellBorder.SetColor(const Value: TColor);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Borders[FBorder].Color := Value;
end;

procedure TdxCellBorder.SetStyle(const Value: TdxSpreadSheetCellBorderStyle);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Borders[FBorder].Style := Value;
end;

{ TdxCellBrush }

function TdxCellBrush.GetBackgroundColor: TColor;
begin
  if Cell <> nil then
    Result := Cell.Style.Brush.BackgroundColor
  else
    Result := SpreadSheet.DefaultCellStyle.Brush.BackgroundColor;
end;

function TdxCellBrush.GetForegroundColor: TColor;
begin
  if Cell <> nil then
    Result := Cell.Style.Brush.ForegroundColor
  else
    Result := SpreadSheet.DefaultCellStyle.Brush.ForegroundColor;
end;

function TdxCellBrush.GetStyle: TdxSpreadSheetCellFillStyle;
begin
  if Cell <> nil then
    Result := Cell.Style.Brush.Style
  else
    Result := SpreadSheet.DefaultCellStyle.Brush.Style;
end;

procedure TdxCellBrush.SetBackgroundColor(const Value: TColor);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Brush.BackgroundColor := Value;
end;

procedure TdxCellBrush.SetForegroundColor(const Value: TColor);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Brush.ForegroundColor := Value;
end;

procedure TdxCellBrush.SetStyle(const Value: TdxSpreadSheetCellFillStyle);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Brush.Style := Value;
end;

{ TdxCellDataFormat }

function TdxCellDataFormat.GetFormatCode: string;
begin
  if Cell <> nil then
    Result := Cell.Style.DataFormat.FormatCode
  else
    Result := SpreadSheet.DefaultCellStyle.DataFormat.FormatCode;
end;

function TdxCellDataFormat.GetFormatCodeID: Integer;
begin
  if Cell <> nil then
    Result := Cell.Style.DataFormat.FormatCodeID
  else
    Result := SpreadSheet.DefaultCellStyle.DataFormat.FormatCodeID;
end;

procedure TdxCellDataFormat.SetFormatCode(const Value: string);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.DataFormat.FormatCode := Value;
end;

procedure TdxCellDataFormat.SetFormatCodeID(const Value: Integer);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.DataFormat.FormatCodeID := Value;
end;

{ TdxCellFont }

function TdxCellFont.GetCharset: TFontCharset;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Charset
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Charset;
end;

function TdxCellFont.GetColor: TColor;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Color
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Color;
end;

function TdxCellFont.GetHeight: Integer;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Height
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Height;
end;

function TdxCellFont.GetName: TFontName;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Name
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Name;
end;

function TdxCellFont.GetPitch: TFontPitch;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Pitch
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Pitch;
end;

function TdxCellFont.GetSize: Integer;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Size
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Size;
end;

function TdxCellFont.GetStyle: TFontStyles;
begin
  if Cell <> nil then
    Result := Cell.Style.Font.Style
  else
    Result := SpreadSheet.DefaultCellStyle.Font.Style;
end;

procedure TdxCellFont.SetCharset(const Value: TFontCharset);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Charset := Value;
end;

procedure TdxCellFont.SetColor(const Value: TColor);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Color := Value;
end;

procedure TdxCellFont.SetHeight(const Value: Integer);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Height := Value;
end;

procedure TdxCellFont.SetName(const Value: TFontName);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Name := Value;
end;

procedure TdxCellFont.SetPitch(const Value: TFontPitch);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Pitch := Value;
end;

procedure TdxCellFont.SetSize(const Value: Integer);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Size := Value;
end;

procedure TdxCellFont.SetStyle(const Value: TFontStyles);
begin
  SpreadSheet.ActiveSheetAsTable.CreateCell(FocusedRow, FocusedColumn).Style.Font.Style := Value;
end;

initialization

TfrmCellPropertiesViewer.Register;

finalization

end.
