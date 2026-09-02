unit uBreadcrumbEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxBreadcrumbEdit, Vcl.ActnList, cxClasses, dxLayoutControl, Vcl.ComCtrls, cxContainer, cxEdit, Vcl.ImgList,
  cxImageList, dxLayoutcxEditAdapters, dxLayoutControlAdapters, Vcl.Menus, cxCheckBox, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, dxUIAdorners, dxTreeView, dxSkinsCore, System.Actions;

type
  TfrmBreadcrumbEdit = class(TfrmCustomControl)
    dxLayoutItem2: TdxLayoutItem;
    cxImageList1: TcxImageList;
    dxLayoutItem3: TdxLayoutItem;
    cbCancelEffect: TcxComboBox;
    dxLayoutItem4: TdxLayoutItem;
    btnProgressStart: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btnProgressStop: TcxButton;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    lgPathEditorOptions: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    lipeEnabled: TdxLayoutItem;
    cbpeEnabled: TcxCheckBox;
    lipeAutoComplete: TdxLayoutItem;
    cbpeAutoComplete: TcxCheckBox;
    lipeReadOnly: TdxLayoutItem;
    cbpeReadOnly: TcxCheckBox;
    lipeResentPathsAutoPopulate: TdxLayoutItem;
    cbpeRecentsAutoPopulate: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    BreadcrumbEdit: TdxBreadcrumbEdit;
    tmProgress: TTimer;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    acEnabled: TAction;
    acAutoComplete: TAction;
    acReadOnly: TAction;
    acRecentsAutoPopulate: TAction;
    tvTree: TdxTreeViewControl;
    procedure cbCancelEffectPropertiesChange(Sender: TObject);
    procedure BreadcrumbEditPathSelected(Sender: TObject);
    procedure BreadcrumbEditPopulateChildren(Sender: TObject; ANode: TdxBreadcrumbEditNode);
    procedure tmProgressTimer(Sender: TObject);
    procedure btnProgressStartClick(Sender: TObject);
    procedure btnProgressStopClick(Sender: TObject);
    procedure tvTreeSelectionChanged(Sender: TObject);
  private
    FWasSynchronization: Boolean;
    procedure EnablePathEditorOptions;
    function GetPath(ANode: TdxTreeViewNode): string;
    procedure SetBreadcrumbProperties;
    procedure SynchronizeNodes(ANode: TdxBreadcrumbEditNode; ATreeNode: TdxTreeViewNode);
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxCustomTree, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmBreadcrumbEdit.CheckControlStartProperties;
begin
  SetBreadcrumbProperties;
  tvTree.FullExpand;
  SynchronizeNodes(BreadcrumbEdit.Root, tvTree.Items.Item[0]);
end;

function TfrmBreadcrumbEdit.GetDescription: string;
begin
  Result := sdxFrameBreadcrumbEditDescription;
end;

function TfrmBreadcrumbEdit.GetInspectedObject: TPersistent;
begin
  Result := BreadcrumbEdit;
end;

procedure TfrmBreadcrumbEdit.BreadcrumbEditPathSelected(Sender: TObject);
begin
  tvTree.Selected := TObject(BreadcrumbEdit.Selected.Data) as TdxTreeViewNode;
end;

procedure TfrmBreadcrumbEdit.BreadcrumbEditPopulateChildren(Sender: TObject; ANode: TdxBreadcrumbEditNode);
var
  ATreeNode: TdxTreeViewNode;
  I: Integer;
begin
  ATreeNode := TObject(ANode.Data) as TdxTreeViewNode;
  for I := 0 to ATreeNode.Count - 1 do
    SynchronizeNodes(ANode.AddChild, ATreeNode[I]);
end;

procedure TfrmBreadcrumbEdit.btnProgressStartClick(Sender: TObject);
begin
  btnProgressStop.Enabled := True;
  btnProgressStart.Enabled := False;
  tmProgress.Enabled := True;
end;

procedure TfrmBreadcrumbEdit.btnProgressStopClick(Sender: TObject);
begin
  tmProgress.Enabled := False;
  btnProgressStop.Enabled := False;
  btnProgressStart.Enabled := True;
  BreadcrumbEdit.Properties.ProgressBar.Position := 0;
end;

procedure TfrmBreadcrumbEdit.cbCancelEffectPropertiesChange(Sender: TObject);
begin
  SetBreadcrumbProperties;
end;

procedure TfrmBreadcrumbEdit.tmProgressTimer(Sender: TObject);
begin
  BreadcrumbEdit.Properties.ProgressBar.Position := BreadcrumbEdit.Properties.ProgressBar.Position + 1;
end;

procedure TfrmBreadcrumbEdit.tvTreeSelectionChanged(Sender: TObject);
begin
  if FWasSynchronization then
  begin
    BreadcrumbEdit.SelectedPath := GetPath(tvTree.Selected);
  end;
end;

procedure TfrmBreadcrumbEdit.EnablePathEditorOptions;
var
  AEnabled: Boolean;
begin
  AEnabled := acEnabled.Checked;
  lipeAutoComplete.Enabled := AEnabled;
  lipeReadOnly.Enabled := AEnabled;
  lipeResentPathsAutoPopulate.Enabled := AEnabled;
end;

function TfrmBreadcrumbEdit.GetPath(ANode: TdxTreeViewNode): string;
begin
  if (ANode = nil) or (ANode = tvTree.Root) then
    Exit('');
  if ANode.Parent <> nil then
    Result := GetPath(ANode.Parent)
  else
    Result := '';
  Result := Result + ANode.Caption + PathDelim;
end;

procedure TfrmBreadcrumbEdit.SetBreadcrumbProperties;
begin
  EnablePathEditorOptions;
  BreadcrumbEdit.Properties.ProgressBar.CancelEffect := TdxBreadcrumbEditProgressBarCancelEffect(cbCancelEffect.ItemIndex);
  BreadcrumbEdit.Properties.PathEditor.AutoComplete := acAutoComplete.Checked;
  BreadcrumbEdit.Properties.PathEditor.Enabled := acEnabled.Checked;
  BreadcrumbEdit.Properties.PathEditor.ReadOnly := acReadOnly.Checked;
  BreadcrumbEdit.Properties.PathEditor.RecentPathsAutoPopulate := acRecentsAutoPopulate.Checked;
end;

procedure TfrmBreadcrumbEdit.SynchronizeNodes(ANode: TdxBreadcrumbEditNode; ATreeNode: TdxTreeViewNode);
begin
  ANode.BeginUpdate;
  try
    ANode.ImageIndex := ATreeNode.ImageIndex;
    ANode.HasChildren := ATreeNode.HasChildren;
    ANode.Name := ATreeNode.Caption;
    ANode.Data := ATreeNode;
  finally
    ANode.EndUpdate;
  end;
  FWasSynchronization := True;
end;

initialization
  dxFrameManager.RegisterFrame(BreadcrumbEditFrameID, TfrmBreadcrumbEdit, BreadcrumbEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
