unit PrintOptionsUnit;

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
  dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules, dxSpreadSheetContainers,
  dxSpreadSheetHyperlinks, dxSpreadSheetUtils, Vcl.ExtCtrls, dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs,
  dxSpreadSheetStyles, Vcl.ExtActns, System.Actions, Vcl.ActnList, Vcl.StdActns, cxTrackBar, dxZoomTrackBar, cxRichEdit,
  dxSpreadSheetCoreFormulas, dxSpreadSheetFormattedTextUtils, cxSplitter, dxSpreadSheetFormulaBar;

type

  { TfrmPrintOptions }

  TfrmPrintOptions = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
    function UseDocumentPrintOptions: Boolean; override;
  end;

implementation

{$R *.dfm}

{ TfrmPrintOptions }

function TfrmPrintOptions.GetCaption: string;
begin
  Result := 'Print Options';
end;

class function TfrmPrintOptions.GetID: Integer;
begin
  Result := 18;
end;

procedure TfrmPrintOptions.InitializeBook;
begin
  inherited InitializeBook;
  LoadFromFile('Data\PrintOptions_template.xlsx');
end;

function TfrmPrintOptions.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TfrmPrintOptions.UseDocumentPrintOptions: Boolean;
begin
  Result := True;
end;

function TfrmPrintOptions.GetDescription: string;
begin
  Result := 'The Spreadsheet Control allows you to customize a worksheet''s print options, including print area, print titles, page margins, header/footer areas, and many others using the Page Setup dialog. Click PAGE LAYOUT | Print Titles to display the dialog.'
end;

initialization
  TfrmPrintOptions.Register;
end.
