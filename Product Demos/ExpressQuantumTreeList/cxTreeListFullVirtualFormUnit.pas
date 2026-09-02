unit cxTreeListFullVirtualFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxVirtualTreeListBaseFormUnit, cxLookAndFeelPainters, dxSkinsCore,
  cxGraphics, cxCustomData, cxStyles, cxTL, cxSpinEdit,
  cxTextEdit, cxCalendar, cxTLdxBarBuiltInMenu, Vcl.Menus,
  dxSkinsdxStatusBarPainter, dxStatusBar, Vcl.StdCtrls, cxButtons, cxCheckBox,
  cxInplaceContainer, cxTLData, Vcl.ExtCtrls, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxLookAndFeels, dxLayoutContainer, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.ActnList, cxClasses,
  dxLayoutLookAndFeels, dxLayoutControl, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmFullVirtual = class(TcxVirtualTreeListDemoUnitForm)
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    procedure cxVirtualTreeListGetChildCount(Sender: TcxCustomTreeList;
      AParentNode: TcxTreeListNode; var ACount: Integer);
    procedure cxVirtualTreeListGetNodeValue(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AColumn: TcxTreeListColumn; var AValue: Variant);
  protected
    procedure DoSmartLoadChanged(AValue: Boolean); override;
  public
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

{ TcxVirtualTreeListDemoUnitForm1 }

procedure TfrmFullVirtual.cxVirtualTreeListGetChildCount(
  Sender: TcxCustomTreeList; AParentNode: TcxTreeListNode; var ACount: Integer);
begin
  if AParentNode.Level < 5 then
    ACount := 10;
end;

procedure TfrmFullVirtual.cxVirtualTreeListGetNodeValue(
  Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AColumn: TcxTreeListColumn;
  var AValue: Variant);
begin
  case AColumn.ItemIndex of
    0:
      AValue := ANode.VisibleIndex;
    1:
      AValue := 'Level:' + IntToStr(ANode.Level);
    2:
      AValue := Now + ANode.VisibleIndex * 0.001
  else
    AValue := Null
  end;
end;

class function TfrmFullVirtual.GetID: Integer;
begin
  Result := 13;
end;

procedure TfrmFullVirtual.DoSmartLoadChanged(AValue: Boolean);
var
  ALoadingTime: Cardinal;
begin
  VirtualTreeList.OnGetChildCount := nil;
  VirtualTreeList.OptionsData.SmartLoad := AValue;
  VirtualTreeList.OnGetChildCount := cxVirtualTreeListGetChildCount;
  ALoadingTime := GetTickCount;
  VirtualTreeList.FullRefresh;
  ShowLoadingTime(GetTickCount - ALoadingTime);
end;

initialization
  TfrmFullVirtual.Register;

end.
