unit CommentsUnit;

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
  dxSpreadSheetHyperlinks, dxSpreadSheetUtils, Vcl.ExtCtrls;

type

  { TfrmComments }

  TfrmComments = class(TdxSpreadSheetDemoUnitForm)
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
    function ShowExtendedMenu: Boolean; override;
  end;

var
  frmComments: TfrmComments;

implementation

{$R *.dfm}

{ TfrmComments }

function TfrmComments.GetCaption: string;
begin
  Result := 'Comments';
end;

class function TfrmComments.GetID: Integer;
begin
  Result := 12;
end;

procedure TfrmComments.InitializeBook;
begin
  inherited InitializeBook;
  LoadFromFile('Data\Comments_template.xlsx');
end;

function TfrmComments.ShowExtendedMenu: Boolean;
begin
  Result := True;
end;

function TfrmComments.GetDescription: string;
begin
  Result := 'This demo illustrates using annotations within a worksheet. The Spreadsheet displays comments in a' +
  ' floating box anchored to a cell. You can add new comments, edit existing comments, move and resize the comment box,' +
  ' and hide or delete comments.'
end;

initialization
  TfrmComments.Register;
end.
