unit CustomFunctionFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSpreadSheetBaseFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSpreadSheetCore, dxSpreadSheetFormulas, cxVariants,
  dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetClasses, dxSpreadSheetTypes, dxBarBuiltInMenu, cxEdit,
  cxContainer, Vcl.Menus, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.StdCtrls, cxButtons, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheet, dxLayoutControl, dxCore, dxCoreClasses, dxHashUtils,
  dxSpreadSheetCoreHistory, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetPrinting, cxClasses, dxSpreadSheetUtils, cxDateUtils, dxSpreadSheetContainers,
  dxSpreadSheetHyperlinks, Vcl.ExtCtrls, dxSpreadSheetCoreFormulas, dxSpreadSheetCoreFormulasTokens;

type
  TfrmCustomFunction = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

procedure fpiTriangleArea(var AParamCount: Integer; var AParamKind: TdxSpreadSheetFunctionParamKindInfo);
procedure fnTriangleArea(Sender: TdxSpreadSheetFormulaResult; const AParams: TdxSpreadSheetFormulaToken);

resourcestring
  sTriangleArea = 'TriangleArea';

implementation

{$R *.dfm}

procedure fnTriangleArea(Sender: TdxSpreadSheetFormulaResult; const AParams: TdxSpreadSheetFormulaToken);
var
  P1, P2, P3: Variant;
begin
  if Sender.GetParamsCount(AParams) <> 3 then
    Sender.SetError(ecValue)
  else

    if Sender.ExtractNumericParameter(P1, AParams) then
      if Sender.ExtractNumericParameter(P2, AParams, 1) then
        if Sender.ExtractNumericParameter(P3, AParams, 2) then
          Sender.AddValue(0.5 * P1 * P2 * SIN(P3 * Pi / 180));
end;

procedure fpiTriangleArea(var AParamCount: Integer; var AParamKind: TdxSpreadSheetFunctionParamKindInfo);
begin
  AParamCount := 3;
  SetLength(AParamKind, AParamCount);
  AParamKind[0] := fpkValue;
  AParamKind[1] := fpkValue;
  AParamKind[2] := fpkValue;
end;

{ TfrmCustomFunction }

function TfrmCustomFunction.GetCaption: string;
begin
  Result := 'Custom Function';
end;

class function TfrmCustomFunction.GetID: Integer;
begin
  Result := 9;
end;

procedure TfrmCustomFunction.InitializeBook;
begin
  inherited;
  SpreadSheet.BeginUpdate;
  try
    LoadFromFile('Data\CustomFunction.xlsx');
    dxSpreadSheetFunctionsRepository.Add(@sTriangleArea, fnTriangleArea, fpiTriangleArea, frkValue, 2048, ftMath);
    SpreadSheet.ActiveSheetAsTable.CreateCell(12, 5).SetText(StringReplace('=TriangleArea(F9,F10,F11)',
      ',', SpreadSheet.FormulaController.FormatSettings.Data.ListSeparator, [rfReplaceAll, rfIgnoreCase]), True);
  finally
    SpreadSheet.EndUpdate;
  end;
end;

function TfrmCustomFunction.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TfrmCustomFunction.GetDescription: string;
begin
  Result := 'This demo illustrates how to implement a custom function in a spreadsheet.';
end;

initialization

TfrmCustomFunction.Register;

finalization

end.
