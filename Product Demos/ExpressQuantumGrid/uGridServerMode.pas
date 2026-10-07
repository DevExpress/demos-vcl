unit uGridServerMode;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit,
  cxLabel, cxGrid, Vcl.ExtCtrls, dxServerModeData, cxCustomData, cxFilter, cxData, cxDataStorage, cxCalendar,
  cxImageComboBox, Vcl.ImgList, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridServerModeTableView, cxClasses, cxGridCustomView, uServerModeConnection, Data.DB, cxButtons, cxNavigator,
  cxGroupBox, cxCheckBox, cxGridBandedTableView, cxGridServerModeBandedTableView,
  Vcl.Menus, Vcl.StdCtrls, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl, dxCustomDemoFrameUnit, dxLayoutcxEditAdapters,
  Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridServerMode = class(TdxGridFrame)
    cxGridPopupMenu: TcxGridPopupMenu;
    cxGrid1ServerModeTableView1: TcxGridServerModeTableView;
    cxGrid1ServerModeTableView1OID: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Subject: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1From: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Sent: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Size: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1HasAttachment: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Priority: TcxGridServerModeColumn;
    cxGrid1ServerModeBandedTableView1: TcxGridServerModeBandedTableView;
    cxGrid1ServerModeBandedTableView1OID: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Subject: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1From: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Sent: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Size: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1HasAttachment: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Priority: TcxGridServerModeBandedColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    dxLayoutItem6: TdxLayoutItem;
    btConfigureConnection: TcxButton;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    acEditing: TAction;
    acInserting: TAction;
    acDeleting: TAction;
    acDeletingConfirmation: TAction;
    acCancelOnExit: TAction;
    cbInserting: TdxLayoutCheckBoxItem;
    cbEditing: TdxLayoutCheckBoxItem;
    cbDeleting: TdxLayoutCheckBoxItem;
    cbDeletingConfirmation: TdxLayoutCheckBoxItem;
    cbCancelOnExit: TdxLayoutCheckBoxItem;
    procedure btConfigureConnectionClick(Sender: TObject);
    procedure UpdateOptionsDataView(Sender: TObject);
    procedure GridActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
  private
    FDataSource: TdxServerModeDataSource;
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    procedure AfterShow; override;
    procedure Initialize(AServerModeDataSource: TdxServerModeDataSource);
  end;

implementation

{$R *.dfm}

uses
  dxFrames, mainData, FrameIDs, uStrsConst;

{ TfrmGridServerMode }

procedure TfrmGridServerMode.AfterShow;
begin
  inherited AfterShow;
  if (FDataSource = nil) and GetServerModeDataSource(Self, FDataSource) then
    Initialize(FDataSource);
end;

function TfrmGridServerMode.GetDescription: string;
begin
  Result := sdxFrameServerModeDescription;
end;

function TfrmGridServerMode.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridServerMode.btConfigureConnectionClick(Sender: TObject);
var
  ADataSource: TdxServerModeDataSource;
begin
  ADataSource := FDataSource;
  if GetServerModeDataSource(Self, FDataSource) then
  begin
    ADataSource.Free;
    if FDataSource <> nil then
      Initialize(FDataSource);
  end;
end;

procedure TfrmGridServerMode.GridActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
var
  AServerModeDataSource: TdxServerModeCustomDataSource;
begin
  if ALevel.GridView is TcxGridServerModeBandedTableView then
  begin
    AServerModeDataSource := cxGrid1ServerModeTableView1.DataController.DataSource;
    cxGrid1ServerModeTableView1.DataController.DataSource := nil;
    cxGrid1ServerModeBandedTableView1.DataController.DataSource := AServerModeDataSource;
    if AServerModeDataSource <> nil then
      cxGrid1ServerModeBandedTableView1.DataController.DataSource.Active := True;
  end
  else
  begin
    AServerModeDataSource := cxGrid1ServerModeBandedTableView1.DataController.DataSource;
    cxGrid1ServerModeBandedTableView1.DataController.DataSource := nil;
    cxGrid1ServerModeTableView1.DataController.DataSource := AServerModeDataSource;
    if AServerModeDataSource <> nil then
      cxGrid1ServerModeTableView1.DataController.DataSource.Active := True;
  end;
end;

procedure TfrmGridServerMode.UpdateOptionsDataView(Sender: TObject);
begin
  with cxGrid1ServerModeTableView1.OptionsData do
  begin
    CancelOnExit := acCancelOnExit.Checked;
    Deleting := acDeleting.Checked;
    DeletingConfirmation := acDeletingConfirmation.Checked;
    Editing := acEditing.Checked;
    Inserting := acInserting.Checked;
  end;
  with cxGrid1ServerModeBandedTableView1.OptionsData do
  begin
    CancelOnExit := acCancelOnExit.Checked;
    Deleting := acDeleting.Checked;
    DeletingConfirmation := acDeletingConfirmation.Checked;
    Editing := acEditing.Checked;
    Inserting := acInserting.Checked;
  end;
end;

procedure TfrmGridServerMode.Initialize(AServerModeDataSource: TdxServerModeDataSource);
begin
  if Grid.ActiveLevel = cxGrid1Level1 then
    cxGrid1ServerModeTableView1.DataController.DataSource := AServerModeDataSource
  else
    cxGrid1ServerModeBandedTableView1.DataController.DataSource := AServerModeDataSource;
  AServerModeDataSource.Active := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridServerModeFrameID, TfrmGridServerMode,
    GridServerModeFrameName, GridServerModeImageIndex, -1, DataBindingGroupIndex, -1);

end.
