unit HyperlinksUnit;

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
  dxSpreadSheetHyperlinks;

type

  { TfrmConditionalFormatting }

  TfrmHyperlinks = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

var
  frmHyperlinks: TfrmHyperlinks;

implementation

{$R *.dfm}

{ TfrmConditionalFormatting }

function TfrmHyperlinks.GetCaption: string;
begin
  Result := 'Hyperlinks';
end;

class function TfrmHyperlinks.GetID: Integer;
begin
  Result := 13;
end;

procedure TfrmHyperlinks.InitializeBook;
begin
  inherited InitializeBook;
  LoadFromFile('Data\Hyperlinks_template.xlsx');
end;

function TfrmHyperlinks.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TfrmHyperlinks.GetDescription: string;
begin
  Result := 'This demo shows local and external hyperlinks in a workbook. Browse through the first sheet and' +
  ' click an underlined album title (for example, "Animals") to navigate to the sheet with detailed information on this' +
  ' album. Click "Back to Top Albums" to return to the first sheet. At the bottom of the first sheet, there is an' +
  ' external hyperlink that refers to the Web page.'
end;

initialization
  TfrmHyperlinks.Register;
end.
