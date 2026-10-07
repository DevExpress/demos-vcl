unit uGridBuildInNavigator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uGridCustomSummaries, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls, cxNavigator,
  cxLookAndFeels, cxLookAndFeelPainters, cxDataStorage, cxSpinEdit,
  cxContainer, cxLabel, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, Vcl.ActnList,
  dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridBuildInNavigator = class(TfrmCustomGridSummaries)
    PanelNavigator: TdxPanel;
    dxLayoutControl1: TdxLayoutControl;
    cxNavigator2: TcxNavigator;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure SetupLayoutsLookAndFeel; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure TuneWorkArea(AMarginsNeeded: Boolean); override;
  end;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, mainData, uStrsConst, dxDemoBaseMainForm;

type
  TcxGroupBoxAccess = class(TcxGroupBox);


{ TfrmGridBuildInNavigator }

constructor TfrmGridBuildInNavigator.Create(AOwner: TComponent);
begin
  inherited;
  TcxGroupBoxAccess(gbSetupTools).AutoSize := True;
end;

function TfrmGridBuildInNavigator.GetDescription: string;
begin
  Result := sdxFrameBuildInNavigatorDescription;
end;

function TfrmGridBuildInNavigator.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridBuildInNavigator.SetupLayoutsLookAndFeel;
begin
  inherited;
  dxLayoutControl1.LayoutLookAndFeel := TfrmMainBase(Application.MainForm).dxLayoutSkinLookAndFeel1;
end;

procedure TfrmGridBuildInNavigator.TuneWorkArea(AMarginsNeeded: Boolean);
begin
  inherited;
  if AMarginsNeeded then
    PanelNavigator.Frame.Borders := [bLeft, bRight, bTop]
  else
    PanelNavigator.Frame.Borders := [bBottom];
end;

initialization
  dxFrameManager.RegisterFrame(GridBuildInNavigatorFrameID, TfrmGridBuildInNavigator,
    GridBuildInNavigatorFrameName, GridBuildInNavigatorImageIndex, TableBandedTableGroupIndex,
    -1, -1);


end.
