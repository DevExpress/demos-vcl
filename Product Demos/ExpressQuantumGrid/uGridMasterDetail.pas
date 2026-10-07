unit uGridMasterDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridLevel, cxGridCommon, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, Data.DB, cxGridDBDataDefinitions,
  Vcl.Grids, Vcl.DBGrids, cxGridCardView, cxGridDBCardView, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxClasses, cxDataStorage,
  dxPSCore, cxTextEdit, cxImage, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters,
  cxGridCustomLayoutView, cxContainer, cxLabel, cxNavigator, cxProgressBar, dxGDIPlusClasses, cxGroupBox, cxCurrencyEdit,
  Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, cxMaskEdit,
  cxSpinEdit, dxCustomDemoFrameUnit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  dxLayoutLookAndFeels, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridMasterDetail = class(TdxGridFrame)
    glCategories: TcxGridLevel;
    tvCategories: TcxGridDBTableView;
    glFoods: TcxGridLevel;
    tvFoods: TcxGridDBTableView;
    tvCategoriesCategoryID: TcxGridDBColumn;
    tvCategoriesCategoryName: TcxGridDBColumn;
    tvCategoriesDescription: TcxGridDBColumn;
    tvCategoriesPicture: TcxGridDBColumn;
    tvCategoriesIcon_17: TcxGridDBColumn;
    tvCategoriesIcon_25: TcxGridDBColumn;
    tvFoodsProductID: TcxGridDBColumn;
    tvFoodsProductName: TcxGridDBColumn;
    tvFoodsSupplierID: TcxGridDBColumn;
    tvFoodsCategoryID: TcxGridDBColumn;
    tvFoodsQuantityPerUnit: TcxGridDBColumn;
    tvFoodsUnitPrice: TcxGridDBColumn;
    tvFoodsUnitsInStock: TcxGridDBColumn;
    tvFoodsUnitsOnOrder: TcxGridDBColumn;
    tvFoodsReorderLevel: TcxGridDBColumn;
    tvFoodsDiscontinued: TcxGridDBColumn;
    tvFoodsEAN13: TcxGridDBColumn;
    liExpandAll: TdxLayoutItem;
    bExpandAll: TcxButton;
    seRowHeight: TcxSpinEdit;
    liRowHeight: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    acCanDetail: TAction;
    acRowAutoHeight: TAction;
    cbCanDetail: TdxLayoutCheckBoxItem;
    cbRowAutoHeight: TdxLayoutCheckBoxItem;
    procedure tvCategoriesDataControllerDetailExpanded(ADataController: TcxCustomDataController; ARecordIndex: Integer);
    procedure seRowHeightPropertiesChange(Sender: TObject);
    procedure bExpandAllClick(Sender: TObject);
    procedure acCanDetailExecute(Sender: TObject);
    procedure acRowAutoHeightExecute(Sender: TObject);
  protected
    procedure ExpandFirstMasterRow;
    function GetDescription: string; override;
    function IsFooterEnabled(AView: TcxCustomGridView): Boolean; override;
    function IsFooterMenuEnabled: Boolean; override;
    function NeedSetup: Boolean; override;
    procedure PrepareLink(AReportLink: TBasedxReportLink); override;
  public
    procedure AfterShow; override;
  end;

implementation

{$R *.dfm}

uses
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxCommon, dxFrames, FrameIDs, uStrsConst;

procedure TfrmGridMasterDetail.AfterShow;
begin
  inherited AfterShow;
  if ShowingCounter = 1 then
    ExpandFirstMasterRow;
end;

procedure TfrmGridMasterDetail.ExpandFirstMasterRow;
begin
  tvCategories.ViewData.Rows[0].Expanded := True;
end;

function TfrmGridMasterDetail.GetDescription: string;
begin
  Result := sdxFrameMasterDetailDescription;
end;

function TfrmGridMasterDetail.IsFooterEnabled(AView: TcxCustomGridView): Boolean;
begin
  Result := False;
end;

function TfrmGridMasterDetail.IsFooterMenuEnabled: Boolean;
begin
  Result := False;
end;

function TfrmGridMasterDetail.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridMasterDetail.PrepareLink(AReportLink: TBasedxReportLink);
begin
  inherited;
  TdxGridReportLink(AReportLink).OptionsOnEveryPage.UnsetAll;
end;

procedure TfrmGridMasterDetail.tvCategoriesDataControllerDetailExpanded(ADataController: TcxCustomDataController;
  ARecordIndex: Integer);
begin
  tvCategories.DataController.GetDetailDataController(ARecordIndex, 0).Groups.FullExpand;
end;

procedure TfrmGridMasterDetail.bExpandAllClick(Sender: TObject);
begin
  tvCategories.ViewData.Expand(False);
end;

procedure TfrmGridMasterDetail.acRowAutoHeightExecute(Sender: TObject);
var
  AIsAutoHeight: Boolean;
begin
  AIsAutoHeight := acRowAutoHeight.Checked;
  liRowHeight.Enabled := not AIsAutoHeight;
  tvCategories.OptionsView.CellAutoHeight := AIsAutoHeight;
  if AIsAutoHeight then
    tvCategories.OptionsView.DataRowHeight := 0
  else
    seRowHeightPropertiesChange(seRowHeight);
end;

procedure TfrmGridMasterDetail.acCanDetailExecute(Sender: TObject);
var
  ACanDetail: Boolean;
begin
  ACanDetail := acCanDetail.Checked;
  if not ACanDetail then
    tvCategories.ViewData.Collapse(True);
  glFoods.Visible := ACanDetail;
  liExpandAll.Enabled := ACanDetail;
end;

procedure TfrmGridMasterDetail.seRowHeightPropertiesChange(Sender: TObject);
begin
  tvCategories.OptionsView.DataRowHeight := seRowHeight.Value;
end;

initialization
  dxFrameManager.RegisterFrame(GridMasterDetailFrameID, TfrmGridMasterDetail,
    GridMasterDetailFrameName, GridMasterDetailImageIndex, MasterDetailGroupIndex, -1, -1);

end.
