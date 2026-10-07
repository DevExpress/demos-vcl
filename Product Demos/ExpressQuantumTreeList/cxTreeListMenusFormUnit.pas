unit cxTreeListMenusFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListCarsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxCurrencyEdit, cxDropDownEdit, cxCheckBox, cxSpinEdit,
  cxBlobEdit, cxHyperLinkEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit, cxGroupBox,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxLookAndFeels, dxLayoutContainer, Vcl.ActnList, cxClasses,
  dxLayoutLookAndFeels, dxLayoutControl, dxLayoutcxEditAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmMenus = class(TfrmCars)
    Timer: TTimer;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    acHeader: TAction;
    acGroupFooter: TAction;
    acFooter: TAction;
    chkHeader: TdxLayoutCheckBoxItem;
    chkGroupFooter: TdxLayoutCheckBoxItem;
    chkFooter: TdxLayoutCheckBoxItem;
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure acHeaderExecute(Sender: TObject);
    procedure acGroupFooterExecute(Sender: TObject);
    procedure acFooterExecute(Sender: TObject);
  public
    procedure DoInspectedObjectChanged; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoUtils, cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

{ TfrmMenus }

procedure TfrmMenus.acFooterExecute(Sender: TObject);
begin
  TreeList.PopupMenus.FooterMenu.UseBuiltInMenu := acFooter.Checked;
end;

procedure TfrmMenus.acGroupFooterExecute(Sender: TObject);
begin
  TreeList.PopupMenus.GroupFooterMenu.UseBuiltInMenu := acGroupFooter.Checked;
end;

procedure TfrmMenus.acHeaderExecute(Sender: TObject);
begin
  TreeList.PopupMenus.ColumnHeaderMenu.UseBuiltInMenu := acHeader.Checked;
end;

procedure TfrmMenus.FormCreate(Sender: TObject);
begin
  acHeader.Checked := True;
  acGroupFooter.Checked := True;
  acFooter.Checked := True;
  acHeaderExecute(acHeader);
  acGroupFooterExecute(acGroupFooter);
  acFooterExecute(acFooter);
end;

procedure TfrmMenus.DoInspectedObjectChanged;
begin
  acFooter.Checked := TreeList.PopupMenus.FooterMenu.UseBuiltInMenu;
  acGroupFooter.Checked := TreeList.PopupMenus.GroupFooterMenu.UseBuiltInMenu;
  acHeader.Checked := TreeList.PopupMenus.ColumnHeaderMenu.UseBuiltInMenu;
end;

class function TfrmMenus.GetId: Integer;
begin
  Result := 12;
end;

type
  TcxTreeListColumnAccess = class(TcxTreeListColumn);

procedure TfrmMenus.TimerTimer(Sender: TObject);
var
  HeaderCell: TcxTreeListColumnHeaderCellViewInfo;
  R: TRect;
  P: TPoint;
begin
  Timer.Enabled := False;
  HeaderCell := TcxTreeListColumnAccess(clnModel).HeaderCell;
  R := HeaderCell.VisibleRect;
  P := R.CenterPoint;
  MouseMoveAndRightClick(TreeList, R.Left + 50, P.Y);
end;

initialization
  TfrmMenus.Register;

end.
