unit fmWhomSelectUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  cxContainer, cxTextEdit, Vcl.StdCtrls, cxButtons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, MailClientDemoData, dxLayoutContainer,
  dxLayoutControlAdapters, dxLayoutcxEditAdapters, dxLayoutControl, dxTokenEdit, dxForms;

type
  TfmWhomSelect = class(TdxForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    tvContacts: TcxGridDBTableView;
    dbcCustomerId: TcxGridDBColumn;
    dbcName: TcxGridDBColumn;
    dbcMiddleName: TcxGridDBColumn;
    dbcEmail: TcxGridDBColumn;
    dbcAddress: TcxGridDBColumn;
    dbcPhone: TcxGridDBColumn;
    dbcComments: TcxGridDBColumn;
    dbcPhoto: TcxGridDBColumn;
    dbcDiscountLevel: TcxGridDBColumn;
    dbcFirstName: TcxGridDBColumn;
    dbcLastName: TcxGridDBColumn;
    dbcGender: TcxGridDBColumn;
    dbcBirthDate: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item1: TdxLayoutItem;
    cxbTo: TcxButton;
    dxLayoutControl1Item2: TdxLayoutItem;
    cxButton1: TcxButton;
    dxLayoutControl1Item4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    teTo: TdxTokenEdit;
    dxLayoutItem1: TdxLayoutItem;
    procedure cxbToClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmWhomSelect: TfmWhomSelect;

implementation

{$R *.dfm}
uses
  dxMailClientDemoUtils, MailClientDemoMain;

procedure TfmWhomSelect.FormShow(Sender: TObject);
begin
  dxLayoutControl1.LookAndFeel := fmMailClientDemoMain.LookAndFeel;
end;

procedure TfmWhomSelect.cxbToClick(Sender: TObject);
var
  AEmail: string;
begin
  AEmail := tvContacts.DataController.DataSource.DataSet.FieldByName('Email').AsString;
  if Pos(AEmail, teTo.Text) = 0 then
  begin
    if LastDelimiter(teTo.Properties.EditValueDelimiter, teTo.Text) <> Length(teTo.Text) then
      teTo.Text := teTo.Text + teTo.Properties.EditValueDelimiter;
    teTo.Text := teTo.Text + AEmail + teTo.Properties.EditValueDelimiter;
  end;
end;

end.
