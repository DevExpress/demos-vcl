unit cxVirtualTreeListBaseFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxCustomTreeListBaseFormUnit, cxLookAndFeelPainters, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, cxGroupBox, cxGraphics, cxCustomData, cxStyles, cxTL, cxLibraryConsts,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxCheckBox, Vcl.Menus,
  dxSkinscxPCPainter, cxButtons, cxTextEdit, cxCalendar, cxSpinEdit,
  dxSkinsdxStatusBarPainter, dxStatusBar, cxLookAndFeels, dxLayoutContainer, cxClasses, dxLayoutControl, Vcl.ActnList,
  dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxScrollbarAnnotations, System.Actions,
  cxFilter;

const
  WM_TREELISTEXPANDED = WM_USER + 1;
  WM_SMARTLOADCHANGED = WM_USER + 2;

type
  TcxVirtualTreeListDemoUnitForm = class(TcxCustomTreeListDemoUnitForm)
    acSmartLoadMode: TAction;
    dxLayoutItem1: TdxLayoutItem;
    cxVirtualTreeList: TcxVirtualTreeList;
    clnID: TcxTreeListColumn;
    clnName: TcxTreeListColumn;
    clnDate: TcxTreeListColumn;
    dxLayoutItem2: TdxLayoutItem;
    chkSmartLoadMode: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    btFullExpand: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    sbMain: TdxStatusBar;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxVirtualTreeListExpanding(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; var Allow: Boolean);
    procedure WMSmartLoadChanged(var AMessage: TMessage); message WM_SMARTLOADCHANGED;
    procedure WMTreeListExpanded(var AMessage: TMEssage); message WM_TREELISTEXPANDED;
    procedure btFullExpandClick(Sender: TObject);
    procedure acSmartLoadModeExecute(Sender: TObject);
  private
    FNodeCount: Integer;
    FStartExpanding: Boolean;
    FStartExpandingTick: Cardinal;
    function GetVirtualTreeList: TcxVirtualTreeList;
    procedure SetSmartLoad(AValue: Boolean);
    procedure ShowPerformance(AExpanded: Boolean);
    function MsecToStr(AMsec: Integer): string;
  protected
    procedure DoSmartLoadChanged(AValue: Boolean); virtual;
    function GetTreeList: TcxCustomTreeList; override;
    function GetSmartLoad: Boolean;
    procedure ShowLoadingTime(ALoadingTime: Integer);
  public
    function HasOptions: Boolean; override;
    procedure ActivateDataSet; override;
    procedure DoInspectedObjectChanged; override;
    procedure FrameActivated; override;
    class function GetID: Integer; override;
    property SmartLoad: Boolean read GetSmartLoad write SetSmartLoad;
    property VirtualTreeList: TcxVirtualTreeList read GetVirtualTreeList;
  end;

implementation

{$R *.dfm}

uses
  cxProviderModeDemoClasses, cxTreeListFeaturesDemoStrConsts;

function TcxVirtualTreeListDemoUnitForm.HasOptions: Boolean;
begin
  Result := False;
end;

procedure TcxVirtualTreeListDemoUnitForm.ActivateDataset;
{var
  ALoadingTime: Cardinal;}
begin
  SmartLoad := True;
{  sbMain.AutoHint := False;
  TreeList.OptionsData.SmartLoad := True;
  ALoadingTime := GetTickCount;
  RecreateDemoDataSource(TreeList);
  ShowLoadingTime(GetTickCount - ALoadingTime);}
//  chkSmartLoadMode.Checked := True;
end;

procedure TcxVirtualTreeListDemoUnitForm.DoInspectedObjectChanged;
begin
  acSmartLoadMode.Checked := VirtualTreeList.OptionsData.SmartLoad;
end;

procedure TcxVirtualTreeListDemoUnitForm.FrameActivated;
begin
  inherited FrameActivated;
//  chkSmartLoadMode.Checked := True;
end;

class function TcxVirtualTreeListDemoUnitForm.GetID: Integer;
begin
  Result := 22;
end;

procedure TcxVirtualTreeListDemoUnitForm.btFullExpandClick(Sender: TObject);
begin
  TreeList.FullExpand;
end;

procedure TcxVirtualTreeListDemoUnitForm.acSmartLoadModeExecute(Sender: TObject);
begin
  SetCursor(Screen.Cursors[crcxHandPoint]);
  try
    Application.ProcessMessages;
    SmartLoad := acSmartLoadMode.Checked;
  finally
    SetCursor(Screen.Cursors[crDefault]);
  end;
end;

procedure TcxVirtualTreeListDemoUnitForm.FormCreate(Sender: TObject);
{var
  ALoadingTime: Cardinal;}
begin
  acSmartLoadMode.Checked := True;
  //sbMain.AutoHint := False;
  {VirtualTreeList.OptionsData.SmartLoad := True;
  ALoadingTime := GetTickCount;
  RecreateDemoDataSource(VirtualTreeList);
  ShowLoadingTime(GetTickCount - ALoadingTime);}
end;

procedure TcxVirtualTreeListDemoUnitForm.FormDestroy(Sender: TObject);
begin
  VirtualTreeList.DataController.CustomDataSource.Free;
  VirtualTreeList.DataController.CustomDataSource := nil;
end;

procedure TcxVirtualTreeListDemoUnitForm.DoSmartLoadChanged(AValue: Boolean);
var
  ALoadingTime: Cardinal;
begin
  VirtualTreeList.OptionsData.SmartLoad := AValue;
  ALoadingTime := GetTickCount;
  RecreateDemoDataSource(VirtualTreeList);
  ShowLoadingTime(GetTickCount - ALoadingTime);
end;

function TcxVirtualTreeListDemoUnitForm.GetTreeList: TcxCustomTreeList;
begin
  Result := cxVirtualTreeList;
end;

function TcxVirtualTreeListDemoUnitForm.GetSmartLoad: Boolean;
begin
  Result := VirtualTreeList.OptionsData.SmartLoad;
end;

procedure TcxVirtualTreeListDemoUnitForm.SetSmartLoad(AValue: Boolean);
begin
  PostMessage(Handle, WM_SMARTLOADCHANGED, Integer(AValue), 0);
end;

procedure TcxVirtualTreeListDemoUnitForm.ShowLoadingTime(ALoadingTime: Integer);
begin
  sbMain.Panels[1].Text := 'Loaded in ' + MsecToStr(ALoadingTime) + ' s';
  ShowPerformance(False);
end;

function TcxVirtualTreeListDemoUnitForm.GetVirtualTreeList: TcxVirtualTreeList;
begin
  Result := cxVirtualTreeList;
end;

procedure TcxVirtualTreeListDemoUnitForm.ShowPerformance(AExpanded: Boolean);
begin
  sbMain.Panels[0].Text := 'Total nodes: ' + IntToStr(TreeList.AbsoluteCount);
  if AExpanded then
  begin
    sbMain.Panels[2].Text := 'Expanded in ' + MsecToStr(FStartExpandingTick) + ' s';
    if SmartLoad then
      sbMain.Panels[2].Text := sbMain.Panels[2].Text + ', ' +
        IntToStr(TreeList.AbsoluteCount - FNodeCount) +
        ' nodes have been created'
  end
  else
    SbMain.Panels[2].Text := '';
end;

procedure TcxVirtualTreeListDemoUnitForm.cxVirtualTreeListExpanding(
  Sender: TcxCustomTreeList; ANode: TcxTreeListNode; var Allow: Boolean);
begin
  if not FStartExpanding then
  begin
    FStartExpanding := True;
    FNodeCount := TreeList.AbsoluteCount;
    FStartExpandingTick := GetTickCount;
    PostMessage(Handle, WM_TREELISTEXPANDED, 0, 0);
  end;
end;

procedure TcxVirtualTreeListDemoUnitForm.WMSmartLoadChanged(var AMessage: TMEssage);
begin
  DoSmartLoadChanged(Boolean(AMessage.WParam));
end;

procedure TcxVirtualTreeListDemoUnitForm.WMTreeListExpanded(var AMessage: TMessage);
begin
  FStartExpanding := False;
  FStartExpandingTick := GetTickCount - FStartExpandingTick;
  ShowPerformance(True);
end;

function TcxVirtualTreeListDemoUnitForm.MsecToStr(AMsec: Integer): string;
begin
  Result := Format('%2.3f', [AMsec / 1000]);
end;

initialization
  TcxVirtualTreeListDemoUnitForm.Register;

end.

