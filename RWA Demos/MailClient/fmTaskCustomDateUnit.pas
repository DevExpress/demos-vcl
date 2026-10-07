unit fmTaskCustomDateUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxLabel, cxGroupBox, Data.DB,
  MailClientDemoData, dxLayoutcxEditAdapters, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutControl, dxForms, cxClasses;

type
  TfmTaskCustomDate = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edDateStart: TcxDBDateEdit;
    liStartDate: TdxLayoutItem;
    edDateDue: TcxDBDateEdit;
    liDueDate: TdxLayoutItem;
    cxButton3: TcxButton;
    liOK: TdxLayoutItem;
    cxButton4: TcxButton;
    liCancel: TdxLayoutItem;
    lgButtons: TdxLayoutGroup;
    liSpace: TdxLayoutEmptySpaceItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetDataSet: TDataSet;

    property DataSet: TDataSet read GetDataSet;
  public
    { Public declarations }
  end;

implementation

uses MailClientDemoMain;

{$R *.dfm}

function TfmTaskCustomDate.GetDataSet: TDataSet;
begin
  Result := edDateStart.DataBinding.DataSource.DataSet;
end;

procedure TfmTaskCustomDate.FormShow(Sender: TObject);
begin
  dxLayoutControl1.LookAndFeel := fmMailClientDemoMain.LookAndFeel;
  DataSet.Edit;
end;

procedure TfmTaskCustomDate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult <> mrOk then
    DataSet.Cancel
  else
    DataSet.Post;
end;

end.
