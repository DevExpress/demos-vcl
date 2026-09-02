unit cxTreeListSearchFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxTreeListPlanetsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxTextEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, cxLookAndFeelPainters, Vcl.StdCtrls, Vcl.ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, cxInplaceContainer, cxControls, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  cxLabel, Vcl.Menus, cxButtons, cxLookAndFeels, dxLayoutContainer, Vcl.ActnList, cxClasses, dxLayoutLookAndFeels,
  dxLayoutControl, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmSearch = class(TfrmPlanets)
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cbPresent: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    edtText: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    cbMode: TcxComboBox;
    dxLayoutItem10: TdxLayoutItem;
    btnFind: TcxButton;
    acExpandedOnly: TAction;
    acCaseSensitive: TAction;
    acStartFromCurrent: TAction;
    acForward: TAction;
    acIgnoreStart: TAction;
    chkCaseSensitive: TdxLayoutCheckBoxItem;
    chkStartFromCurrent: TdxLayoutCheckBoxItem;
    chkForward: TdxLayoutCheckBoxItem;
    chkIgnoreStart: TdxLayoutCheckBoxItem;
    chkExpandedOnly: TdxLayoutCheckBoxItem;
    procedure btnFindClick(Sender: TObject);
    procedure edtTextKeyPress(Sender: TObject; var Key: Char);
    procedure cbPresetPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExpandedOnlyExecute(Sender: TObject);
  private
    procedure FindNode;
    procedure SetupControls(AText: string; AMode: TcxTreeListFindMode;
      ExpandedOnly, CaseSensitive, StartFromCurrentNode, ForwardDirection,
      IgnoreStartNode: Boolean; AStartNode: TcxTreeListNode = nil);
  public
    function HasOptions: Boolean; override;
    class function GetID: Integer; override;
  end;

implementation

uses
  cxTreeListFeaturesDemoStrConsts;

{$R *.dfm}

procedure TfrmSearch.acExpandedOnlyExecute(Sender: TObject);
begin
//
end;

procedure TfrmSearch.btnFindClick(Sender: TObject);
begin
  FindNode;
end;

procedure TfrmSearch.cbPresetPropertiesChange(Sender: TObject);
begin
  case cbPresent.ItemIndex of
    0: SetupControls(cbPresent.Text, tlfmNormal, False, False, False, True, False);
    1: SetupControls(cbPresent.Text, tlfmLike, False, False, True, True, True);
    2: SetupControls(cbPresent.Text, tlfmExact, False, True, True, False, False,
         TreeList.Root.Items[0].Items[8]);
  end;
end;

procedure TfrmSearch.edtTextKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    FindNode;
end;

procedure TfrmSearch.FindNode;
var
  ACurrentNode, ANode, AParent: TcxTreeListNode;
begin
  ACurrentNode := nil;
  if acStartFromCurrent.Checked then
    ACurrentNode := TreeList.FocusedNode;
  ANode := TreeList.FindNodeByText(edtText.Text, clName, ACurrentNode,
    acExpandedOnly.Checked, acForward.Checked, acCaseSensitive.Checked,
    TcxTreeListFindMode(cbMode.ItemIndex), nil, acIgnoreStart.Checked);
  if ANode <> nil then
  begin
    if not ANode.IsVisible then
    begin
      AParent := ANode.Parent;
      while AParent <> nil do
      begin
        AParent.Expand(False);
        AParent := AParent.Parent;
      end;
    end;
    TreeList.FocusedNode := ANode;
  end;
end;

procedure TfrmSearch.FormCreate(Sender: TObject);
begin
  cbPresent.ItemIndex := 0;
end;

procedure TfrmSearch.SetupControls(AText: string; AMode: TcxTreeListFindMode;
  ExpandedOnly, CaseSensitive, StartFromCurrentNode, ForwardDirection,
  IgnoreStartNode: Boolean; AStartNode: TcxTreeListNode = nil);
begin
  edtText.Text := AText;
  cbMode.ItemIndex := Ord(AMode);
  acExpandedOnly.Checked := ExpandedOnly;
  acCaseSensitive.Checked := CaseSensitive;
  acStartFromCurrent.Checked := StartFromCurrentNode;
  acForward.Checked := ForwardDirection;
  acIgnoreStart.Checked := IgnoreStartNode;
  TreeList.FocusedNode := AStartNode;
end;

function TfrmSearch.HasOptions: Boolean;
begin
  Result := True;
end;

class function TfrmSearch.GetID: Integer;
begin
  Result := 14;
end;

initialization
  TfrmSearch.Register;

end.
