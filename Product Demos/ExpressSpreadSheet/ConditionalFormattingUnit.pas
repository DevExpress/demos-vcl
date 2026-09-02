unit ConditionalFormattingUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, 
  dxSpreadSheetBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, 
  dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore, dxSpreadSheetCoreHistory, dxSpreadSheetPrinting, 
  dxSpreadSheetFormulas, dxSpreadSheetFunctions, dxSpreadSheetGraphics, dxSpreadSheetClasses, dxSpreadSheetTypes, 
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, 
  cxClasses, Vcl.StdCtrls, cxButtons, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheet, dxLayoutControl,
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetContainers, dxSpreadSheetHyperlinks, dxSpreadSheetStyles,
  dxSpreadSheetUtils, dxSpreadSheetFormattedTextUtils, Vcl.ExtActns, System.Actions, Vcl.ActnList, Vcl.StdActns,
  cxSplitter, dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar, Vcl.ExtCtrls;

type

  { TfrmConditionalFormatting }

  TfrmConditionalFormatting = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

var
  frmConditionalFormatting: TfrmConditionalFormatting;

implementation

{$R *.dfm}

{ TfrmConditionalFormatting }

function TfrmConditionalFormatting.GetCaption: string;
begin
  Result := 'Conditional Formatting';
end;

class function TfrmConditionalFormatting.GetID: Integer;
begin
  Result := 11;
end;

procedure TfrmConditionalFormatting.InitializeBook;
begin
  inherited InitializeBook;
  LoadFromFile('Data\TopTradingPartners.xlsx');
end;

function TfrmConditionalFormatting.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TfrmConditionalFormatting.GetDescription: string;
begin
  Result := 'The Spreadsheet allows you to apply conditional formatting and change the appearance of individual cells' +
  ' based on specific conditions. This option can highlight critical information or visualize trends within cells using' +
  ' data bars, color scales or built-in icon sets.';
end;

initialization
  TfrmConditionalFormatting.Register;
end.
