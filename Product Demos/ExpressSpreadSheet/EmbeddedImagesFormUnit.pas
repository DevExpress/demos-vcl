unit EmbeddedImagesFormUnit;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, ReportDesignerBaseUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutContainer, cxClasses, Vcl.StdCtrls, cxButtons, cxMemo,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSpreadSheetCore, dxSpreadSheetReportDesigner, Vcl.ExtCtrls, dxLayoutControl, Data.DB,
  dxmdaset;

type
  TfrmEmbeddedImages = class(TdxSpreadSheetReportBaseForm)
    dsEmployees: TDataSource;
    mdsEmployees: TdxMemData;
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
  end;

implementation

{$R *.dfm}

{ TdxSpreadSheetReportBaseForm2 }

function TfrmEmbeddedImages.GetCaption: string;
begin
  Result := 'Embedded Images Report'
end;

function TfrmEmbeddedImages.GetDescription: string;
begin
  Result := 'This demo shows how to create a horizontally oriented spreadsheet-based report using data from a bound dataset.';
end;

class function TfrmEmbeddedImages.GetID: Integer;
begin
  Result := 15;
end;

procedure TfrmEmbeddedImages.InitializeBook;
begin
  LoadDataset(mdsEmployees, 'Data\Employees.mds');
  LoadFromFile('Data\HorizontalReportTemplate.xlsx');
  ReportDesigner.Options.Orientation := roHorizontal;
  LoadFilter(ReportDesigner.DataBinding.DataController, 'Data\Employees.flt');
end;

initialization
  TfrmEmbeddedImages.Register;

end.
