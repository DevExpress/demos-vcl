unit uGridServerModeQuery;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit,
  cxLabel, cxGrid, Vcl.ExtCtrls, dxServerModeData, cxCustomData, cxFilter, cxData, cxDataStorage, cxCalendar,
  cxImageComboBox, Vcl.ImgList, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  dxScrollbarAnnotations, dxBarBuiltInMenu, dxLayoutLookAndFeels, System.Actions,
  cxGridServerModeTableView, cxClasses, cxGridCustomView, uServerModeQueryConnection, Data.DB, cxButtons, cxNavigator,
  cxGroupBox, cxCheckBox, cxGridBandedTableView, cxGridServerModeBandedTableView, Vcl.Menus, Vcl.StdCtrls, cxSpinEdit,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl, dxCustomDemoFrameUnit, Vcl.ActnList, dxDateRanges,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridServerModeQuery = class(TdxGridFrame)
    cxGridPopupMenu: TcxGridPopupMenu;

    cxGrid1ServerModeTableView1: TcxGridServerModeTableView;
    cxGrid1ServerModeTableView1OrderDate: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Trademark: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Model: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1HP: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1TransmissSpeedCount: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1TransmissAutomatic: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Category: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Price: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1FirstName: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1LastName: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Company: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Prefix: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Title: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Address: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1City: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1State: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Source: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Customer: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1HomePhone: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Description: TcxGridServerModeColumn;
    cxGrid1ServerModeTableView1Email: TcxGridServerModeColumn;

    cxGrid1ServerModeBandedTableView1: TcxGridServerModeBandedTableView;
    cxGrid1ServerModeBandedTableView1OrderDate: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Trademark: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Model: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1HP: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Category: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Price: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1FirstName: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1LastName: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Company: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Prefix: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Title: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Address: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1City: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1State: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Source: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1HomePhone: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Description: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Email: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1TransmissAutomatic: TcxGridServerModeBandedColumn;
    cxGrid1ServerModeBandedTableView1Customer: TcxGridServerModeBandedColumn;

    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    ImageList: TImageList;
    dxLayoutItem1: TdxLayoutItem;
    btConfigureConnection: TcxButton;
    procedure btConfigureConnectionClick(Sender: TObject);
    procedure GridActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
  private
    FDataSource: TdxServerModeQueryDataSource;
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    procedure AfterShow; override;
    procedure Initialize(AServerModeDataSource: TdxServerModeQueryDataSource);
  end;

implementation

{$R *.dfm}

uses
  dxFrames, mainData, FrameIDs, uStrsConst;

{ TfrmGridServerModeQuery }

procedure TfrmGridServerModeQuery.AfterShow;
begin
  inherited AfterShow;
  if (FDataSource = nil) and GetServerModeDataSource(Self, FDataSource) then
    Initialize(FDataSource);
end;

procedure TfrmGridServerModeQuery.btConfigureConnectionClick(Sender: TObject);
var
  ADataSource: TdxServerModeQueryDataSource;
begin
  ADataSource := FDataSource;
  if GetServerModeDataSource(Self, FDataSource) then
  begin
    ADataSource.Free;
    if FDataSource <> nil then
      Initialize(FDataSource);
  end;
end;

procedure TfrmGridServerModeQuery.GridActiveTabChanged(Sender: TcxCustomGrid; ALevel: TcxGridLevel);
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

procedure TfrmGridServerModeQuery.Initialize(AServerModeDataSource: TdxServerModeQueryDataSource);
begin
  if Grid.ActiveLevel = cxGrid1Level1 then
    cxGrid1ServerModeTableView1.DataController.DataSource := AServerModeDataSource
  else
    cxGrid1ServerModeBandedTableView1.DataController.DataSource := AServerModeDataSource;
  AServerModeDataSource.Active := True;
end;

function TfrmGridServerModeQuery.GetDescription: string;
begin
  Result := sdxFrameServerModeQueryDescription;
end;

function TfrmGridServerModeQuery.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridServerModeQueryFrameID, TfrmGridServerModeQuery,
    GridServerModeQueryFrameName, GridServerModeQueryImageIndex, -1, DataBindingGroupIndex, -1);

end.
