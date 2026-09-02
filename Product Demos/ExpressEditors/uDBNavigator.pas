unit uDBNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  cxNavigator, cxDBNavigator, Vcl.ActnList, cxClasses, dxLayoutControl, maindata, dxLayoutcxEditAdapters, cxContainer,
  cxEdit, cxCheckBox, cxTextEdit, cxMemo, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TfrmDBNavigator = class(TfrmCustomControl)
    DBNavigator: TcxDBNavigator;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cbInfoPanelVisible: TcxCheckBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    cbShowEditingButtons: TcxCheckBox;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem4: TdxLayoutItem;
    cbShowInsertAndDeleteButtons: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowAppendButton: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbShowPageButtons: TcxCheckBox;
    dxLayoutGroup5: TdxLayoutGroup;
    mmLog: TcxMemo;
    dxLayoutItem7: TdxLayoutItem;
    btnClearLog: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    cbShowFirstAndLastButtons: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cbShowFilterButton: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cbShowBookmarkButton: TcxCheckBox;
    dxLayoutItem12: TdxLayoutItem;
    cbShowRefreshButton: TcxCheckBox;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    acInfoPanelVisible: TAction;
    acShowAppendButton: TAction;
    acShowInsertAndDeleteButtons: TAction;
    acShowEditingButtons: TAction;
    acShowFirstAndLastButtons: TAction;
    acShowPageButtons: TAction;
    acShowRefreshButton: TAction;
    acShowBookmarkButton: TAction;
    acShowFilterButton: TAction;
    procedure DBNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
    procedure cbInfoPanelVisiblePropertiesChange(Sender: TObject);
    procedure btnClearLogClick(Sender: TObject);
  private
    function GetButtonName(AButtonIndex: Integer): string;
    procedure SetNavigatorProperties;
  protected
    procedure CheckControlStartProperties; override;
    procedure DoCheckActualTouchMode; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, cxGeometry;

{$R *.dfm}

procedure TfrmDBNavigator.CheckControlStartProperties;
begin
  dmMain.OpenEmployeesDataset;
  SetNavigatorProperties;
end;

procedure TfrmDBNavigator.DoCheckActualTouchMode;
const
  ShowButtonsWidth: array[Boolean] of Integer = (200, 260);
begin
  inherited DoCheckActualTouchMode;
  dxLayoutGroup3.SizeOptions.Width := ScaleFactor.Apply(ShowButtonsWidth[ActualTouchMode]);
end;

function TfrmDBNavigator.GetDescription: string;
begin
  Result := sdxFrameDBNavigatorDescription;
end;

function TfrmDBNavigator.GetInspectedObject: TPersistent;
begin
  Result := DBNavigator;
end;

procedure TfrmDBNavigator.btnClearLogClick(Sender: TObject);
begin
  mmLog.Clear;
end;

procedure TfrmDBNavigator.cbInfoPanelVisiblePropertiesChange(Sender: TObject);
begin
  SetNavigatorProperties;
end;

procedure TfrmDBNavigator.SetNavigatorProperties;
begin
  DBNavigator.InfoPanel.Visible := acInfoPanelVisible.Checked;
  DBNavigator.Buttons.Append.Visible := acShowAppendButton.Checked;
  DBNavigator.Buttons.Insert.Visible := acShowInsertAndDeleteButtons.Checked;
  DBNavigator.Buttons.Delete.Visible := acShowInsertAndDeleteButtons.Checked;
  DBNavigator.Buttons.Edit.Visible := acShowEditingButtons.Checked;
  DBNavigator.Buttons.Post.Visible := acShowEditingButtons.Checked;
  DBNavigator.Buttons.Cancel.Visible := acShowEditingButtons.Checked;
  DBNavigator.Buttons.First.Visible := acShowFirstAndLastButtons.Checked;
  DBNavigator.Buttons.Last.Visible := acShowFirstAndLastButtons.Checked;
  DBNavigator.Buttons.PriorPage.Visible := acShowPageButtons.Checked;
  DBNavigator.Buttons.NextPage.Visible := acShowPageButtons.Checked;
  DBNavigator.Buttons.Refresh.Visible := acShowRefreshButton.Checked;
  DBNavigator.Buttons.SaveBookmark.Visible := acShowBookmarkButton.Checked;
  DBNavigator.Buttons.GotoBookmark.Visible := acShowBookmarkButton.Checked;
  DBNavigator.Buttons.Filter.Visible := acShowFilterButton.Checked;
end;

function TfrmDBNavigator.GetButtonName(AButtonIndex: Integer): string;
begin
  case AButtonIndex of
    0: Result := 'First record';
    1: Result := 'Prior page';
    2: Result := 'Prior record';
    3: Result := 'Next record';
    4: Result := 'Next page';
    5: Result := 'Last record';
    6: Result := 'Insert record';
    7: Result := 'Append record';
    8: Result := 'Delete record';
    9: Result := 'Edit record';
    10: Result := 'Post edit';
    11: Result := 'Cancel edit';
    12: Result := 'Refresh data';
    13: Result := 'Save Bookmark';
    14: Result := 'Goto Bookmark';
  else
    Result := 'Filter data';
  end;
end;

procedure TfrmDBNavigator.DBNavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  mmLog.Lines.Add('ButtonClick: ' + GetButtonName(AButtonIndex));
  ADone := AButtonIndex in [6, 7, 8, 12];
end;

initialization
  dxFrameManager.RegisterFrame(DBNavigatorFrameID, TfrmDBNavigator, DBNavigatorFrameName, -1,
    MultiPurposeGroupIndex, -1, -1);

end.
