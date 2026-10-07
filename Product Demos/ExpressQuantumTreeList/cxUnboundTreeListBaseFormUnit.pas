unit cxUnboundTreeListBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxCustomTreeListBaseFormUnit, cxGraphics, cxCustomData, cxStyles,
  cxTL, dxSkinsCore, cxControls, cxInplaceContainer,
  cxTLdxBarBuiltInMenu, Vcl.StdCtrls, Vcl.ExtCtrls, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxGroupBox, cxLabel, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TcxUnboundTreeListDemoUnitForm = class(TcxCustomTreeListDemoUnitForm)
    dxLayoutItem1: TdxLayoutItem;
    tlUnbound: TcxTreeList;
  private
    function GetShowBands: Boolean;
    procedure SetShowBands(Value: Boolean);
    function GetUnboundTreeList: TcxTreeList;
  protected
    function GetTreeList: TcxCustomTreeList; override;
  public
    function HasOptions: Boolean; override;
    property ShowBands: Boolean read GetShowBands write SetShowBands;
    property UnboundTreeList: TcxTreeList read GetUnboundTreeList;
  end;

implementation

{$R *.dfm}

{ TcxCustomTreeListDemoUnitForm1 }

function TcxUnboundTreeListDemoUnitForm.HasOptions: Boolean;
begin
  Result := False;
end;

function TcxUnboundTreeListDemoUnitForm.GetShowBands: Boolean;
begin
  Result := TreeList.OptionsView.Bands;
end;

procedure TcxUnboundTreeListDemoUnitForm.SetShowBands(Value: Boolean);
begin
  TreeList.OptionsView.Bands := Value;
end;

function TcxUnboundTreeListDemoUnitForm.GetTreeList: TcxCustomTreeList;
begin
  Result := tlUnbound;
end;

function TcxUnboundTreeListDemoUnitForm.GetUnboundTreeList: TcxTreeList;
begin
  Result := tlUnbound;
end;

end.
