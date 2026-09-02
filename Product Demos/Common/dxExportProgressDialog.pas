unit dxExportProgressDialog;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxExport, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxProgressBar, cxLabel, Vcl.Menus, cxButtons,
  dxForms, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxLayoutContainer, cxClasses, dxLayoutControl,
  dxLayoutLookAndFeels, dxMessageDialog;

type

  { TfrmExportProgress }

  TfrmExportProgress = class(TdxForm, IcxExportProgress)
    btnCancel: TcxButton;
    pbProgress: TcxProgressBar;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;

    procedure btnCancelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    // IcxExportProgress
    procedure OnProgress(Sender: TObject; Percent: Integer);
  end;

implementation

{$R *.dfm}

{ TfrmExportProgress }

procedure TfrmExportProgress.btnCancelClick(Sender: TObject);
begin
  if dxMessageDlg('This will abort the export operation. Do you want to proceed?', mtConfirmation, mbYesNo) = mrYes then
    btnCancel.Enabled := False;
end;

procedure TfrmExportProgress.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  btnCancel.Click;
  CanClose := not btnCancel.Enabled;
end;

procedure TfrmExportProgress.OnProgress(Sender: TObject; Percent: Integer);
begin
  pbProgress.Position := Percent;
  Application.ProcessMessages;
  if not btnCancel.Enabled then
    Abort;
end;

end.
