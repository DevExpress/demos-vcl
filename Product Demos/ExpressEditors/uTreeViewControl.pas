unit uTreeViewControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxBarBuiltInMenu, dxLayoutContainer,
  cxContainer, cxEdit, dxActivityIndicator, cxDropDownEdit, cxColorComboBox, cxLabel, cxTextEdit, cxMaskEdit,
  cxSpinEdit, cxGroupBox, dxBevel, cxPC, cxClasses, dxLayoutControl, Vcl.ActnList, dxLayoutcxEditAdapters, dxUIAdorners,
  System.Actions, dxLayoutControlAdapters, Vcl.Menus, Vcl.ComCtrls, cxMemo, Vcl.StdCtrls, cxButtons,
  dxTreeView, dxLayoutLookAndFeels;

type
  TdxTreeViewDemoAction = (tdaAdd, tdaClear, tdaExpand, tdaCollapse);

  TfrmTreeViewControl = class(TdxCustomDemoFrame)
    dxNewTreeView: TdxTreeViewControl;
    seFirstLevelNodeCount: TcxSpinEdit;
    btnTreeViewAdd: TcxButton;
    btnTreeViewClear: TcxButton;
    mLog: TcxMemo;
    seDepth: TcxSpinEdit;
    btnTreeViewFullExpand: TcxButton;
    btnTreeViewFullCollapse: TcxButton;
    seChildrenCount: TcxSpinEdit;
    btndxTreeViewClear: TcxButton;
    btndxTreeViewAdd: TcxButton;
    btndxTreeViewFullExpand: TcxButton;
    btndxTreeViewFullCollapse: TcxButton;
    TreeView: TTreeView;
    lidxNewTreeView: TdxLayoutItem;
    liseAddCount: TdxLayoutItem;
    liTreeViewAdd: TdxLayoutItem;
    liTreeViewClear: TdxLayoutItem;
    lgTreeViews: TdxLayoutGroup;
    lgLog: TdxLayoutGroup;
    limLog: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    liNodesCount: TdxLayoutLabeledItem;
    lgdxTreeViewControl: TdxLayoutGroup;
    lgTreeView: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    liTreeViewExpand: TdxLayoutItem;
    liTreeViewCollapse: TdxLayoutItem;
    liChildrenCount: TdxLayoutItem;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    lidxTreeViewClear: TdxLayoutItem;
    lidxTreeViewAdd: TdxLayoutItem;
    lidxTreeViewExpand: TdxLayoutItem;
    lidxTreeViewCollapse: TdxLayoutItem;
    liTreeView: TdxLayoutItem;
    lidxTreeViewNodeCount: TdxLayoutLabeledItem;
    liTreeViewNodeCount: TdxLayoutLabeledItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure seDepthPropertiesChange(Sender: TObject);
    procedure btndxTreeViewAddClick(Sender: TObject);
    procedure btndxTreeViewClearClick(Sender: TObject);
    procedure btndxTreeViewFullExpandClick(Sender: TObject);
    procedure btndxTreeViewFullCollapseClick(Sender: TObject);
    procedure btnTreeViewAddClick(Sender: TObject);
    procedure btnTreeViewClearClick(Sender: TObject);
    procedure btnTreeViewFullExpandClick(Sender: TObject);
    procedure btnTreeViewFullCollapseClick(Sender: TObject);
    procedure lgLogButton0Click(Sender: TObject);
  strict private
    FLevelCount: Integer;
    FNodesCount: Int64;
    FTopLevelNodesCount: Integer;
    FTickCount: Cardinal;

    procedure AdddxTreeViewNodes;
    procedure AdddxTreeViewChildren(AParent: TdxTreeViewNode);
    procedure AddTreeViewNodes;
    procedure AddTreeViewChildren(AParent: TTreeNode);
    procedure BeginTimeCalculation(const AMsg: string);
    procedure ClearTreeViewNodes;
    procedure CleardxTreeViewNodes;
    procedure CollapseTreeViewNodes;
    procedure CollapsedxTreeViewNodes;
    procedure EndTimeCalculation(const AMsg: string);
    procedure ExpandTreeViewNodes;
    procedure ExpanddxTreeViewNodes;
    procedure RefreshTreeViewActions;
    procedure RefreshdxTreeViewActions;
    procedure SettingsChanged;

    function GetActionDescription(AAction: TdxTreeViewDemoAction): string;
    function GetStartActionDescription(AAction: TdxTreeViewDemoAction): string;

    procedure DodxTreeViewControlOperation(AProc: TProc; AAction: TdxTreeViewDemoAction);
    procedure DoTreeViewOperation(AProc: TProc; AAction: TdxTreeViewDemoAction);
    function GetdxTreeViewNodeCountText(AAction: TdxTreeViewDemoAction): string;
    function GetTreeViewNodeCountText(AAction: TdxTreeViewDemoAction): string;
  protected
    function GetInspectedObject: TPersistent; override;
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses
  System.Math, dxCore, dxFrames, FrameIDs, dxCoreGraphics, uStrsConst;

{$R *.dfm}

const
  SAdd = 'Added %s nodes to';
  SClear = 'Removed %s nodes from';
  SExpand = 'Expanded %s nodes in';
  SCollapse = 'Collapsed %s nodes in';

  SStartAdd = 'add nodes to';
  SStartClear = 'remove all nodes from';
  SStartExpand = 'expand all nodes in';
  SStartCollapse = 'collapse all nodes in';

  SNodesCountToAdd = 'Nodes to Add: %s';
  SNodesCount = 'Node Count: %s';

procedure TfrmTreeViewControl.btndxTreeViewAddClick(Sender: TObject);
begin
  DodxTreeViewControlOperation(AdddxTreeViewNodes, tdaAdd);
end;

procedure TfrmTreeViewControl.btndxTreeViewClearClick(Sender: TObject);
begin
  DodxTreeViewControlOperation(CleardxTreeViewNodes, tdaClear);
end;

procedure TfrmTreeViewControl.btndxTreeViewFullCollapseClick(Sender: TObject);
begin
  DodxTreeViewControlOperation(CollapsedxTreeViewNodes, tdaCollapse);
end;

procedure TfrmTreeViewControl.btndxTreeViewFullExpandClick(Sender: TObject);
begin
  DodxTreeViewControlOperation(ExpanddxTreeViewNodes, tdaExpand);
end;

procedure TfrmTreeViewControl.btnTreeViewAddClick(Sender: TObject);
begin
  DoTreeViewOperation(AddTreeViewNodes, tdaAdd);
end;

procedure TfrmTreeViewControl.btnTreeViewClearClick(Sender: TObject);
begin
  DoTreeViewOperation(ClearTreeViewNodes, tdaClear);
end;

procedure TfrmTreeViewControl.btnTreeViewFullCollapseClick(Sender: TObject);
begin
  DoTreeViewOperation(CollapseTreeViewNodes, tdaCollapse);
end;

procedure TfrmTreeViewControl.btnTreeViewFullExpandClick(Sender: TObject);
begin
  DoTreeViewOperation(ExpandTreeViewNodes, tdaExpand);
end;

constructor TfrmTreeViewControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SettingsChanged;
  RefreshTreeViewActions;
  RefreshdxTreeViewActions;
end;

function TfrmTreeViewControl.GetDescription: string;
begin
  Result := sdxFrameTreeViewControlDescription;
end;

function TfrmTreeViewControl.GetInspectedObject: TPersistent;
begin
  Result := dxNewTreeView;
end;

procedure TfrmTreeViewControl.seDepthPropertiesChange(Sender: TObject);
begin
  SettingsChanged;
end;

procedure TfrmTreeViewControl.lgLogButton0Click(Sender: TObject);
begin
  mLog.Lines.Clear;
end;

procedure TfrmTreeViewControl.AdddxTreeViewNodes;
var
  I: Integer;
  ANode: TdxTreeViewNode;
begin
  for I := 0 to FTopLevelNodesCount - 1 do
  begin
    ANode := dxNewTreeView.Items.Add(nil, Format('%d', [I]));
    AdddxTreeViewChildren(ANode);
  end;
end;

procedure TfrmTreeViewControl.AdddxTreeViewChildren(AParent: TdxTreeViewNode);
var
  I: Integer;
  ANode: TdxTreeViewNode;
begin
  if AParent.Level >= FLevelCount - 1 then
    Exit;
  for I := 0 to seChildrenCount.Value - 1 do
  begin
    ANode := dxNewTreeView.Items.AddChild(AParent, Format('%s%d', [AParent.Caption, I]));
    AdddxTreeViewChildren(ANode);
  end;
end;

procedure TfrmTreeViewControl.AddTreeViewNodes;
var
  I: Integer;
  ANode: TTreeNode;
begin
  for I := 0 to FTopLevelNodesCount - 1 do
  begin
    ANode := TreeView.Items.Add(nil, Format('%d', [I]));
    AddTreeViewChildren(ANode);
  end;
end;

procedure TfrmTreeViewControl.AddTreeViewChildren(AParent: TTreeNode);
var
  I: Integer;
  ANode: TTreeNode;
begin
  if AParent.Level >= FLevelCount - 1 then
    Exit;
  for I := 0 to seChildrenCount.Value - 1 do
  begin
    ANode := TreeView.Items.AddChild(AParent, Format('%s%d', [AParent.Text, I]));
    AddTreeViewChildren(ANode);
  end;
end;

procedure TfrmTreeViewControl.BeginTimeCalculation(const AMsg: string);
begin
  mLog.Lines.Add(Format('[%s] Starting to %s...', [TimeToStr(Now), AMsg]));
  FTickCount := GetTickCount;
  ShowHourglassCursor;
end;

procedure TfrmTreeViewControl.ClearTreeViewNodes;
begin
  TreeView.Items.Clear;
end;

procedure TfrmTreeViewControl.CleardxTreeViewNodes;
begin
  dxNewTreeView.Root.Clear;
end;

procedure TfrmTreeViewControl.CollapseTreeViewNodes;
begin
  TreeView.FullCollapse;
end;

procedure TfrmTreeViewControl.CollapsedxTreeViewNodes;
begin
  dxNewTreeView.FullCollapse;
end;

procedure TfrmTreeViewControl.DodxTreeViewControlOperation(AProc: TProc; AAction: TdxTreeViewDemoAction);
var
  AEndDescription: string;
begin
  AEndDescription := Format(GetActionDescription(AAction), [GetdxTreeViewNodeCountText(AAction)]);
  BeginTimeCalculation(Format('%s TdxTreeViewControl', [GetStartActionDescription(AAction)]));
  dxNewTreeView.BeginUpdate;
  try
    AProc;
  finally
    dxNewTreeView.EndUpdate;
    dxNewTreeView.Update;
    EndTimeCalculation(Format('%s TdxTreeViewControl', [AEndDescription]));
    RefreshdxTreeViewActions;
  end;
end;

procedure TfrmTreeViewControl.DoTreeViewOperation(AProc: TProc; AAction: TdxTreeViewDemoAction);
var
  AEndDescription: string;
begin
  AEndDescription := Format(GetActionDescription(AAction), [GetTreeViewNodeCountText(AAction)]);
  BeginTimeCalculation(Format('%s TTreeView', [GetStartActionDescription(AAction)]));
  TreeView.Items.BeginUpdate;
  try
    AProc;
  finally
    TreeView.Items.EndUpdate;
    EndTimeCalculation(Format('%s TTreeView', [AEndDescription]));
    RefreshTreeViewActions;
  end;
end;

procedure TfrmTreeViewControl.EndTimeCalculation(const AMsg: string);
begin
  mLog.Lines.Add(Format('[%s] %s. Time taken: %f seconds', [TimeToStr(Now), AMsg, (GetTickCount - FTickCount) / 1000]));
  HideHourglassCursor;
end;

procedure TfrmTreeViewControl.ExpandTreeViewNodes;
begin
  TreeView.FullExpand;
end;

procedure TfrmTreeViewControl.ExpanddxTreeViewNodes;
begin
  dxNewTreeView.FullExpand;
end;

function TfrmTreeViewControl.GetActionDescription(AAction: TdxTreeViewDemoAction): string;
begin
  case AAction of
    tdaCollapse: Result := SCollapse;
    tdaClear: Result := SClear;
    tdaExpand: Result := SExpand
  else // tdaAdd
    Result := SAdd;
  end;
end;

function TfrmTreeViewControl.GetdxTreeViewNodeCountText(AAction: TdxTreeViewDemoAction): string;
begin
  Result := FormatFloat('#,###0', IfThen(AAction = tdaAdd, FNodesCount, dxNewTreeView.AbsoluteCount));
end;

function TfrmTreeViewControl.GetStartActionDescription(AAction: TdxTreeViewDemoAction): string;
begin
  case AAction of
    tdaCollapse: Result := SStartCollapse;
    tdaClear: Result := SStartClear;
    tdaExpand: Result := SStartExpand
  else // tdaAdd
    Result := SStartAdd;
  end;
end;

function TfrmTreeViewControl.GetTreeViewNodeCountText(AAction: TdxTreeViewDemoAction): string;
begin
  Result := FormatFloat('#,###0', IfThen(AAction = tdaAdd, FNodesCount, TreeView.Items.Count));
end;

procedure TfrmTreeViewControl.RefreshTreeViewActions;
begin
  liTreeViewClear.Enabled := TreeView.Items.GetFirstNode <> nil;
  liTreeViewExpand.Enabled := liTreeViewClear.Enabled;
  liTreeViewCollapse.Enabled := liTreeViewClear.Enabled;
  liTreeViewNodeCount.CaptionOptions.Text := Format(SNodesCount, [GetTreeViewNodeCountText(tdaClear)]);
end;

procedure TfrmTreeViewControl.RefreshdxTreeViewActions;
begin
  lidxTreeViewClear.Enabled := dxNewTreeView.Root.First <> nil;
  lidxTreeViewExpand.Enabled := lidxTreeViewClear.Enabled;
  lidxTreeViewCollapse.Enabled := lidxTreeViewClear.Enabled;
  lidxTreeViewNodeCount.CaptionOptions.Text := Format(SNodesCount, [GetdxTreeViewNodeCountText(tdaClear)]);
end;

procedure TfrmTreeViewControl.SettingsChanged;
var
  I: Integer;
begin
  FNodesCount := 0;
  FLevelCount := seDepth.Value;
  FTopLevelNodesCount := seFirstLevelNodeCount.Value;
  for I := 0 to FLevelCount - 1 do
    FNodesCount := FNodesCount + FTopLevelNodesCount * Round(Power(seChildrenCount.Value, I));
  liNodesCount.CaptionOptions.Text := Format(SNodesCountToAdd, [FormatFloat('#,###', FNodesCount)]);
end;

initialization
  dxFrameManager.RegisterFrame(TreeViewControlFrameID, TfrmTreeViewControl, TreeViewControlFrameName, -1,
    HighlightedFeatureGroupIndex, -1, -1);
end.
