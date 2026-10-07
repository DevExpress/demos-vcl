unit uShellBreadcrumbEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.ComCtrls, Winapi.ShlObj,
  cxShellCommon, dxLayoutContainer, dxBreadcrumbEdit, dxShellBreadcrumbEdit, Vcl.ActnList, cxClasses, dxLayoutControl,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, dxTreeView, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxShellComboBox, cxCheckBox, dxListView,
  dxShellControls, dxUIAdorners;

type
  TfrmShellBreadcrumbEdit = class(TfrmCustomControl)
    ShellBreadcrumbEdit: TdxShellBreadcrumbEdit;
    dxLayoutItem1: TdxLayoutItem;
    lgPathEditor: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup5: TdxLayoutGroup;
    lgShellComboBox: TdxLayoutGroup;
    lgShellListView: TdxLayoutGroup;
    lgShellTreeView: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    cbUseShellComboBox: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbUseShellListView: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbUseShellTreeView: TcxCheckBox;
    ShellComboBox: TcxShellComboBox;
    liShellComboBox: TdxLayoutItem;
    liShellListView: TdxLayoutItem;
    liShellTreeView: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    cbpeAutoComplete: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbpeEnabled: TcxCheckBox;
    dxLayoutItem7: TdxLayoutItem;
    cbpeReadOnly: TcxCheckBox;
    acAutoComplete: TAction;
    acEnabled: TAction;
    acReadOnly: TAction;
    acUseShellComboBox: TAction;
    acUseShellListView: TAction;
    acUseShellTreeView: TAction;
    ShellListView: TdxShellListView;
    ShellTreeView: TdxShellTreeView;
    procedure ShellComboBoxPropertiesChange(Sender: TObject);
    procedure acAutoCompleteExecute(Sender: TObject);
    procedure acUseShellComboBoxExecute(Sender: TObject);
    procedure acUseShellListViewExecute(Sender: TObject);
    procedure acUseShellTreeViewExecute(Sender: TObject);
    procedure ShellListViewChange(Sender: TdxCustomListView; AItem: TdxListItem;
      AChange: TdxListItemChange);
    procedure ShellTreeViewSelectionChanged(Sender: TObject);
  private
    FShellChanged: Boolean;
    procedure SetPathEditorProperties;
    procedure SynchronizeShellCombobox(APIDL: PItemIDList);
    procedure SynchronizeShellListView(APIDL: PItemIDList);
    procedure SynchronizeShellTreeView(APIDL: PItemIDList);
  protected
    procedure CheckControlStartProperties; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

procedure TfrmShellBreadcrumbEdit.acUseShellComboBoxExecute(Sender: TObject);
begin
  if acUseShellComboBox.Checked then
    ShellBreadcrumbEdit.ShellComboBox := ShellComboBox
  else
    ShellBreadcrumbEdit.ShellComboBox := nil;
  SynchronizeShellCombobox(ShellBreadcrumbEdit.SelectedPidl);
end;

procedure TfrmShellBreadcrumbEdit.acUseShellListViewExecute(Sender: TObject);
begin
  if acUseShellListView.Checked then
    ShellBreadcrumbEdit.ShellListView := ShellListView
  else
    ShellBreadcrumbEdit.ShellListView := nil;
  SynchronizeShellListView(ShellBreadcrumbEdit.SelectedPidl);
end;

procedure TfrmShellBreadcrumbEdit.acUseShellTreeViewExecute(Sender: TObject);
begin
  if acUseShellTreeView.Checked then
    ShellBreadcrumbEdit.ShellTreeView := ShellTreeView
  else
    ShellBreadcrumbEdit.ShellTreeView := nil;
  SynchronizeShellTreeView(ShellBreadcrumbEdit.SelectedPidl);
end;

procedure TfrmShellBreadcrumbEdit.CheckControlStartProperties;
begin
  acUseShellComboBoxExecute(nil);
  acUseShellListViewExecute(nil);
  acUseShellTreeViewExecute(nil);
  SetPathEditorProperties;
end;

function TfrmShellBreadcrumbEdit.GetDescription: string;
begin
  Result := sdxFrameShellBreadcrumbEditDescription;
end;

function TfrmShellBreadcrumbEdit.GetInspectedObject: TPersistent;
begin
  Result := ShellBreadcrumbEdit;
end;

procedure TfrmShellBreadcrumbEdit.acAutoCompleteExecute(Sender: TObject);
begin
  SetPathEditorProperties;
end;

procedure TfrmShellBreadcrumbEdit.ShellComboBoxPropertiesChange(Sender: TObject);
begin
  if FShellChanged then
    Exit;
  FShellChanged := True;
  try
    SynchronizeShellListView(ShellComboBox.AbsolutePIDL);
    SynchronizeShellTreeView(ShellComboBox.AbsolutePIDL);
  finally
    FShellChanged := False;
  end;
end;

procedure TfrmShellBreadcrumbEdit.ShellListViewChange(Sender: TdxCustomListView;
  AItem: TdxListItem; AChange: TdxListItemChange);
begin
  if FShellChanged then
    Exit;
  FShellChanged := True;
  try
    SynchronizeShellCombobox(ShellListView.AbsolutePIDL);
    SynchronizeShellTreeView(ShellListView.AbsolutePIDL);
  finally
    FShellChanged := False;
  end;
end;

procedure TfrmShellBreadcrumbEdit.ShellTreeViewSelectionChanged(
  Sender: TObject);
begin
  if FShellChanged then
    Exit;
  FShellChanged := True;
  try
    SynchronizeShellCombobox(ShellTreeView.AbsolutePIDL);
    SynchronizeShellListView(ShellTreeView.AbsolutePIDL);
  finally
    FShellChanged := False;
  end;
end;

procedure TfrmShellBreadcrumbEdit.SetPathEditorProperties;
begin
  ShellBreadcrumbEdit.Properties.PathEditor.AutoComplete := acAutoComplete.Checked;
  ShellBreadcrumbEdit.Properties.PathEditor.Enabled := acEnabled.Checked;
  ShellBreadcrumbEdit.Properties.PathEditor.ReadOnly := acReadOnly.Checked;
end;

procedure TfrmShellBreadcrumbEdit.SynchronizeShellCombobox(APIDL: PItemIDList);
begin
  liShellComboBox.Enabled := acUseShellComboBox.Checked;
  if liShellComboBox.Enabled then
    ShellComboBox.AbsolutePIDL := APIDL;
end;

procedure TfrmShellBreadcrumbEdit.SynchronizeShellListView(APIDL: PItemIDList);
begin
  liShellListView.Enabled := acUseShellListView.Checked;
  if liShellListView.Enabled then
    ShellListView.AbsolutePIDL := APIDL;
end;

procedure TfrmShellBreadcrumbEdit.SynchronizeShellTreeView(APIDL: PItemIDList);
begin
  liShellTreeView.Enabled := acUseShellTreeView.Checked;
  if liShellTreeView.Enabled then
    ShellTreeView.AbsolutePIDL := APIDL;
end;

initialization
  dxFrameManager.RegisterFrame(ShellBreadcrumbEditFrameID, TfrmShellBreadcrumbEdit, ShellBreadcrumbEditFrameName, -1,
    EditorsWithDropDownGroupIndex, -1, -1);

end.
