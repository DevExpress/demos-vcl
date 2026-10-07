unit cxTreeListNodeVisibilityFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListCarsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxCurrencyEdit, cxDropDownEdit, cxSpinEdit, cxBlobEdit,
  cxHyperLinkEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, cxCheckBox, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxLookAndFeels, cxClasses, dxLayoutContainer,
  dxLayoutControl, Vcl.ActnList, dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmNodeVisibility = class(TfrmCars)
    acManual: TAction;
    acAutomatic: TAction;
    chkManual: TdxLayoutCheckBoxItem;
    chkAutomatic: TdxLayoutCheckBoxItem;
    procedure acManualExecute(Sender: TObject);
  private
    procedure SetNodesVisibility;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListFeaturesDemoStrConsts;

{ TfrmNodeVisibility }

procedure TfrmNodeVisibility.acManualExecute(Sender: TObject);
begin
  SetNodesVisibility;
end;

procedure TfrmNodeVisibility.FrameActivated;
begin
  inherited FrameActivated;
  SetNodesVisibility;
end;

class function TfrmNodeVisibility.GetID: Integer;
begin
  Result := 10;
end;

procedure TfrmNodeVisibility.SetNodesVisibility;

  procedure ShowParents;
  var
    I: Integer;
    ANode: TcxTreeListNode;
  begin
    for I := 0 to TreeList.AbsoluteCount  - 1 do
    begin
      ANode := TreeList.AbsoluteItems[I];
      if ANode.Level < 2 then
        ANode.Visible := True;
    end;
  end;

  procedure HideParents;
  var
    I: Integer;
    ANode: TcxTreeListNode;
  begin
    for I := 0 to TreeList.AbsoluteCount  - 1 do
    begin
      ANode := TreeList.AbsoluteItems[I];
      if ANode.Level < 2 then
        ANode.Visible := ANode.HasChildren;
      if ANode.Parent <> nil then
        ANode.Parent.Visible := ANode.Parent.HasChildren;
    end;
  end;

var
  I: Integer;
  ANode: TcxTreeListNode;
begin
  ShowParents;
  for I := 0 to TreeList.AbsoluteCount  - 1 do
  begin
    ANode := TreeList.AbsoluteItems[I];
    if ANode.Level < 2 then
      Continue;
    if clnAutomatic.Values[ANode] = True then
      ANode.Visible := acAutomatic.Checked
    else
      ANode.Visible := acManual.Checked;
  end;
  HideParents;
end;

initialization
  TfrmNodeVisibility.Register;

end.
