unit SimpleReportFormUnit;

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
  dxmdaset, cxRichEdit;

type
  TfrmSimpleReport = class(TdxSpreadSheetReportBaseForm)
    mdsOrderDetails: TdxMemData;
    dsOrderDetails: TDataSource;
  protected
    function GetDescription: string; override;
  public
    function GetCaption: string; override;
    class function GetID: Integer; override;
    procedure InitializeBook; override;
  end;

implementation

{$R *.dfm}

function TfrmSimpleReport.GetCaption: string;
begin
  Result := 'Simple Report';
end;

class function TfrmSimpleReport.GetID: Integer;
begin
  Result := 14;
end;

procedure TfrmSimpleReport.InitializeBook;
begin
  LoadDataset(mdsOrderDetails, 'Data\OrderDetails.mds');
  LoadFromFile('Data\SimpleReportTemplate.xlsx');
  LoadFilter(ReportDesigner.DataBinding.DataController, 'Data\OrderDetails.flt');
end;

function TfrmSimpleReport.GetDescription: string;
begin
  Result := 'In this demo, we use a spreadsheet to generate a detailed report for customer orders. A template with mail' +
  ' merge fields is bound to a database and opened in the Spreadsheet Control.';
end;

initialization
  TfrmSimpleReport.Register;

end.
