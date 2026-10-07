unit uGridExcelStyleFiltering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxLayoutContainer,
  System.Actions, Vcl.ActnList, cxClasses, cxGrid,
  dxLayoutControl, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, dxDateRanges, Data.DB, cxDBData, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, maindata, cxCurrencyEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutControlAdapters, Vcl.StdCtrls, cxRadioGroup, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckBox, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridExcelStyleFiltering = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    BandedView: TcxGridDBBandedTableView;
    BandedViewTrademark: TcxGridDBBandedColumn;
    BandedViewName: TcxGridDBBandedColumn;
    BandedViewModification: TcxGridDBBandedColumn;
    BandedViewPrice: TcxGridDBBandedColumn;
    BandedViewMPGCity: TcxGridDBBandedColumn;
    BandedViewMPGHighway: TcxGridDBBandedColumn;
    BandedViewCylinders: TcxGridDBBandedColumn;
    BandedViewSalesDate: TcxGridDBBandedColumn;
    BandedViewDiscount: TcxGridDBBandedColumn;
    cbDateValuesPageType: TcxComboBox;
    liDateValuesPageType: TdxLayoutItem;
    cbNumericValuesPageType: TcxComboBox;
    liNumericValuesPageType: TdxLayoutItem;
    cbApplyChanges: TcxComboBox;
    liApplyChanges: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    acFilteredItemsList: TAction;
    cbFilteredItemsList: TdxLayoutCheckBoxItem;
    cbCriteriaDisplayStyle: TcxComboBox;
    liCriteriaDisplayStyle: TdxLayoutItem;
    acItemDeleting: TAction;
    procedure cbNumericValuesPageTypePropertiesEditValueChanged(
      Sender: TObject);
    procedure cbDateValuesPageTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbApplyChangesPropertiesEditValueChanged(Sender: TObject);
    procedure acFilteredItemsListExecute(Sender: TObject);
    procedure cbCriteriaDisplayTypePropertiesEditValueChanged(Sender: TObject);
    procedure acItemDeletingExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridExcelStyleFiltering: TfrmGridExcelStyleFiltering;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst, dxFilterValueContainer, dxFilterBox;

type
  TcxGridBandHeaderViewInfoAccess = class(TcxGridBandHeaderViewInfo);

{ TfrmGridExcelStyleFiltering }

procedure TfrmGridExcelStyleFiltering.acFilteredItemsListExecute(
  Sender: TObject);
begin
  BandedView.Filtering.ColumnFilteredItemsListShowFilteredItemsOnly := acFilteredItemsList.Checked;
end;

procedure TfrmGridExcelStyleFiltering.acItemDeletingExecute(Sender: TObject);
begin
  BandedView.FilterBox.TokenCriteria.ItemRemoval := acItemDeleting.Checked;
end;

procedure TfrmGridExcelStyleFiltering.cbApplyChangesPropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbApplyChanges.ItemIndex = 0 then
    BandedView.Filtering.ColumnExcelPopup.ApplyChanges := efacImmediately
  else
    BandedView.Filtering.ColumnExcelPopup.ApplyChanges := efacOnTabOrOKButtonClick;
end;

procedure TfrmGridExcelStyleFiltering.cbCriteriaDisplayTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    BandedView.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    BandedView.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

procedure TfrmGridExcelStyleFiltering.cbDateValuesPageTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbDateValuesPageType.ItemIndex = 0 then
    BandedView.Filtering.ColumnExcelPopup.DateTimeValuesPageType := dvptTree
  else
    BandedView.Filtering.ColumnExcelPopup.DateTimeValuesPageType := dvptList;
end;

procedure TfrmGridExcelStyleFiltering.cbNumericValuesPageTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  if cbNumericValuesPageType.ItemIndex = 0 then
    BandedView.Filtering.ColumnExcelPopup.NumericValuesPageType := nvptRange
  else
    BandedView.Filtering.ColumnExcelPopup.NumericValuesPageType := nvptList;
end;

constructor TfrmGridExcelStyleFiltering.Create(AOwner: TComponent);
var
  AEditValue: Variant;
  ADisplayText: string;
  AList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);
  BandedView.DataController.Filter.Active := False;
  AEditValue := 46000;
  ADisplayText := BandedViewPrice.Properties.GetDisplayText(AEditValue);
  BandedView.DataController.Filter.AddItem(nil, BandedViewPrice, foGreaterEqual, AEditValue, ADisplayText);
  AEditValue := 55000;
  ADisplayText := BandedViewPrice.Properties.GetDisplayText(AEditValue);
  BandedView.DataController.Filter.AddItem(nil, BandedViewPrice, foLessEqual, AEditValue, ADisplayText);
  AList := BandedView.DataController.Filter.Root.AddItemList(fboOr);
  BandedView.DataController.Filter.AddItem(AList, BandedViewSalesDate, foLastYear, Null, '');
  BandedView.DataController.Filter.AddItem(AList, BandedViewSalesDate, foThisYear, Null, '');
  BandedView.DataController.Filter.Active := True;
end;

function TfrmGridExcelStyleFiltering.GetDescription: string;
begin
  Result := sdxFrameExcelStyleFilteringDescription;
end;

function TfrmGridExcelStyleFiltering.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridExcelStyleFilteringFrameID, TfrmGridExcelStyleFiltering,
    GridExcelStyleFilteringFrameName, -1, NewUpdatedGroupIndex, FilteringGroupIndex, -1);

end.
