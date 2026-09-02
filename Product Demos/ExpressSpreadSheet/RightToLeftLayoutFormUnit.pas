unit RightToLeftLayoutFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSpreadSheetBaseFormUnit,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxCore, dxCoreClasses, dxHashUtils, dxSpreadSheetCore,
  dxSpreadSheetCoreHistory, dxSpreadSheetPrinting, dxSpreadSheetFormulas, dxSpreadSheetFunctions, dxSpreadSheetGraphics,
  dxSpreadSheetClasses, dxSpreadSheetTypes, cxContainer, cxEdit, Vcl.Menus, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, cxClasses, Vcl.StdCtrls, cxButtons, cxMemo, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdActns,
  dxSpreadSheet, dxLayoutControl, dxSpreadSheetConditionalFormatting, dxSpreadSheetConditionalFormattingRules,
  dxSpreadSheetContainers, dxSpreadSheetHyperlinks, dxSpreadSheetUtils, Vcl.ExtCtrls, dxSpreadSheetCoreFormulas,
  dxSpreadSheetCoreStyles, dxSpreadSheetCoreStrs, dxSpreadSheetStyles, Vcl.ExtActns, Vcl.ActnList, cxSplitter,
  dxSpreadSheetFormulaBar, cxTrackBar, dxZoomTrackBar, dxSpreadSheetFormattedTextUtils, dxBarBuiltInMenu, System.Actions;

type
  { TfrmRightToLeftLayout }

  TfrmRightToLeftLayout = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

var
  frmRightToLeftLayout: TfrmRightToLeftLayout;

implementation

{$R *.dfm}

{ TfrmRightToLeftLayout }

function TfrmRightToLeftLayout.GetCaption: string;
begin
  Result := 'Right-to-Left Layout';
end;

function TfrmRightToLeftLayout.GetDescription: string;
begin
  Result := 'In this demo, you can switch between two worksheets that use Right-to-Left and Left-to-Right layout directions. ' +
  'Click tabs to switch between the worksheets and modify their content to see how the Spreadsheet Control ' +
  'adapts its UI and content management capabilities in response.';
end;

class function TfrmRightToLeftLayout.GetID: Integer;
begin
  Result := 19;
end;

procedure TfrmRightToLeftLayout.InitializeBook;
begin
  inherited InitializeBook;
  LoadFromFile('Data\RightToLeftLayout.xlsx');
end;

function TfrmRightToLeftLayout.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

initialization
  TfrmRightToLeftLayout.Register;
end.
