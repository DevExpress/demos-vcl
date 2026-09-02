unit uGridViews;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxGridLevel, cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, Data.DB,
  cxDataStorage,  cxDBData, cxGridCardView, cxGridDBCardView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxLookAndFeels, cxLookAndFeelPainters,
  cxGridCustomLayoutView, cxContainer, cxLabel, cxNavigator, dxLayoutContainer,
  cxGridLayoutView, cxGridDBLayoutView, cxImage, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridChartView,
  cxGridDBChartView, cxDBLookupComboBox, dxGDIPlusClasses, cxGroupBox, Vcl.Menus, dxLayoutControlAdapters, cxButtons,
  dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmViewsGrid = class(TdxGridFrame)
    lvlMain: TcxGridLevel;
    vMaster: TcxGridDBTableView;
    lvlTableDetail: TcxGridLevel;
    lvlCardDetail: TcxGridLevel;
    lvlChartDetail: TcxGridLevel;
    vTableDetail: TcxGridDBTableView;
    vCardDetail: TcxGridDBCardView;
    vChartDetail: TcxGridDBChartView;
    vMasterCompany: TcxGridDBColumn;
    vCardDetailCarName: TcxGridDBCardViewRow;
    vCardDetailHyperlink: TcxGridDBCardViewRow;
    vChartDetailSeries1: TcxGridDBChartSeries;
    vTableDetailPurchaseDate: TcxGridDBColumn;
    vTableDetailPaymentType: TcxGridDBColumn;
    vTableDetailQuantity: TcxGridDBColumn;
    vTableDetailCarName: TcxGridDBColumn;
    vTableDetailUnitPrice: TcxGridDBColumn;
  protected
    function GetDescription: string; override;
    function IsFooterEnabled(AView: TcxCustomGridView): Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;


implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, maindata, uStrsConst;

type
  TViewDataSource = class(TcxCustomDataSource)
  private
    FGrid: TcxGrid;
  protected
    function GetRecordCount: Integer; override;
    function GetValue(ARecordHandle: TcxDataRecordHandle;
      AItemHandle: TcxDataItemHandle): Variant; override;
  public
    constructor Create(AGrid: TcxGrid);
  end;


{ TcxStyleRepositoryDataSource }
constructor TViewDataSource.Create(AGrid: TcxGrid);
begin
  inherited Create;
  FGrid := AGrid;
end;

function TViewDataSource.GetRecordCount: Integer;
begin
  Result := FGrid.ViewCount;
end;

function TViewDataSource.GetValue(ARecordHandle: TcxDataRecordHandle;
  AItemHandle: TcxDataItemHandle): Variant;
begin
  Result := FGrid.Views[Integer(ARecordHandle)].Name;
end;

{ TfrmViewsGrid }

constructor TfrmViewsGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  vMaster.BeginUpdate;
  try
    vMaster.ViewData.Records[0].Expand(False);
    (vMaster.ViewData.Records[0] as TcxGridMasterDataRow).ActiveDetailLevel := lvlChartDetail;
    vMaster.ViewData.Records[1].Expand(False);
    ((vMaster.ViewData.Records[1] as TcxGridMasterDataRow).ActiveDetailGridView as TcxGridTableView).ViewData.Records[1].Expand(False);
    vMaster.ViewData.Records[2].Expand(False);
    (vMaster.ViewData.Records[2] as TcxGridMasterDataRow).ActiveDetailLevel := lvlCardDetail;
  finally
    vMaster.EndUpdate;
  end;
end;

destructor TfrmViewsGrid.Destroy;
begin

  inherited Destroy;
end;

function TfrmViewsGrid.GetDescription: string;
begin
  Result := sdxFrameViewsDescription;
end; 


function TfrmViewsGrid.IsFooterEnabled(AView: TcxCustomGridView): Boolean;
begin
  Result := False;
end;

initialization
  dxFrameManager.RegisterFrame(GridViewsFrameID, TfrmViewsGrid,
    GridViewsFrameName, GridViewsImageIndex, -1, MasterDetailGroupIndex, -1);
end.
