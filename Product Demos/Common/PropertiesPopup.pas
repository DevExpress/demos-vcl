unit PropertiesPopup;

interface
{$I cxVer.Inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.ImgList, System.UITypes, System.ImageList,
  cxTL, cxTextEdit, cxInplaceContainer, cxControls, cxGraphics, cxDropDownEdit, cxStyles,
  cxCustomData, cxLookAndFeels, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu, cxClasses, dxForms,
  cxFilter, dxScrollbarAnnotations, dxSkinsCore;

type
  TfmPopupTree = class(TdxForm)
    Image16: TImageList;
    pnPopupControl: TPanel;
    cxTreeList: TcxTreeList;
    colText1: TcxTreeListColumn;
    StyleRepository: TcxStyleRepository;
    styleSelection: TcxStyle;
    styleHotTrack: TcxStyle;
    procedure FormCreate(Sender: TObject);
    procedure cxTreeListGetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
      AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
    procedure cxTreeListClick(Sender: TObject);
    procedure cxTreeListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTreeListMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cxTreeListHotTrackNode(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AShift: TShiftState;
      var ACursor: TCursor);
  private
     FPopupEdit: TcxPopupEdit;
     AOldHitNode: TcxTreeListNode;
     procedure ClosePopupForm(Accept: Boolean);
  public
    property PopupEdit: TcxPopupEdit read FPopupEdit write FPopupEdit;
  end;

implementation


{$R *.DFM}

procedure TfmPopupTree.FormCreate(Sender: TObject);
begin
  cxTreeList.FullExpand;
  styleSelection.Color := cxTreeList.Color;
  styleSelection.TextColor := cxTreeList.Font.Color;
end;

procedure TfmPopupTree.ClosePopupForm(Accept: Boolean);
begin
  if PopupEdit <> nil then
  begin
    PopupEdit.DroppedDown := False;
    if Accept then
    begin
      if cxTreeList.FocusedNode <> nil then
        PopupEdit.Text := cxTreeList.FocusedNode.Values[0];
    end;
  end;
end;


procedure TfmPopupTree.cxTreeListGetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
  AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
const
  RootImageIndex = 0;
  ChildImageIndex = 4;
begin
  if ANode.Level = 0 then
  begin
    AIndex := RootImageIndex;
    if ANode.Expanded then Inc(AIndex);
  end
  else
    AIndex := ChildImageIndex;

  if ANode = cxTreeList.HitTest.HitNode then
    if ANode.Level = 0 then
      Inc(AIndex, 2)
    else
      Inc(AIndex);
end;

procedure TfmPopupTree.cxTreeListClick(Sender: TObject);
begin
  if (cxTreeList.FocusedNode <> nil) and (cxTreeList.FocusedNode.Level = 1) then
    ClosePopupForm(True);
end;

procedure TfmPopupTree.cxTreeListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    ClosePopupForm(False);
  if Key = VK_RETURN then
    cxTreeListClick(nil);
end;

procedure TfmPopupTree.cxTreeListMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);

  function GetNodeRect(ANode: TcxTreeListNode): TRect;
  begin
    Result := cxTreeList.GetEditRect(ANode, colText1);
    Result.Left := 0;
    Result.Right := ClientWidth;
  end;
begin
  if AOldHitNode <> cxTreeList.HitTest.HitNode then
  begin
    if AOldHitNode <> nil then
      cxTreeList.InvalidateRect(GetNodeRect(AOldHitNode), True);
    AOldHitNode := cxTreeList.HitTest.HitNode;
    if AOldHitNode <> nil then
      cxTreeList.InvalidateRect(GetNodeRect(AOldHitNode), True);
  end;
end;

procedure TfmPopupTree.cxTreeListHotTrackNode(Sender: TcxCustomTreeList; ANode: TcxTreeListNode; AShift: TShiftState;
  var ACursor: TCursor);
begin
  ACursor := crHandPoint;
end;

end.

