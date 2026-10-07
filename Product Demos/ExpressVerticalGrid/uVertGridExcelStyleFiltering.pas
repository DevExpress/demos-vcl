unit uVertGridExcelStyleFiltering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxVertGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxStyles, cxEdit, cxInplaceContainer,
  cxVGrid, cxDBVGrid, cxCurrencyEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutcxEditAdapters, cxContainer, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxScrollbarAnnotations, dxLayoutLookAndFeels;

type
  TfrmExcelStyleFiltering = class(TVerticalGridFrame)
    VerticalGrid: TcxDBVerticalGrid;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGridRecId: TcxDBEditorRow;
    VerticalGridID: TcxDBEditorRow;
    VerticalGridTrademark: TcxDBEditorRow;
    VerticalGridName: TcxDBEditorRow;
    VerticalGridModification: TcxDBEditorRow;
    VerticalGridPrice: TcxDBEditorRow;
    VerticalGridMPGCity: TcxDBEditorRow;
    VerticalGridMPGHighway: TcxDBEditorRow;
    VerticalGridBodyStyleID: TcxDBEditorRow;
    VerticalGridCylinders: TcxDBEditorRow;
    VerticalGridSalesDate: TcxDBEditorRow;
    VerticalGridBodyStyle: TcxDBEditorRow;
    VerticalGridDiscount: TcxDBEditorRow;
    VerticalGridCategoryRowModel: TcxCategoryRow;
    VerticalGridCategoryRowOrderInfo: TcxCategoryRow;
    VerticalGridCategoryRowPerformance: TcxCategoryRow;
    liNumericValuesPageType: TdxLayoutItem;
    cbNumericValuesPageType: TcxComboBox;
    liDateValuesPageType: TdxLayoutItem;
    cbDateValuesPageType: TcxComboBox;
    liApplyChanges: TdxLayoutItem;
    cbApplyChanges: TcxComboBox;
    liFilteredItemsList: TdxLayoutItem;
    cbFilteredItemsList: TcxCheckBox;
    dxLayoutGroup1: TdxLayoutGroup;
    cbCriteriaDisplayStyle: TcxComboBox;
    liCriteriaDisplayStyle: TdxLayoutItem;
    procedure cbNumericValuesPageTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbDateValuesPageTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbApplyChangesPropertiesEditValueChanged(Sender: TObject);
    procedure cbFilteredItemsListPropertiesEditValueChanged(Sender: TObject);
    procedure cbCriteriaDisplayStylePropertiesEditValueChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmExcelStyleFiltering: TfrmExcelStyleFiltering;

implementation

{$R *.dfm}

uses
  maindata, dxFrames, FrameIDs, uStrsConst, dxFilterValueContainer, cxFilter, dxFilterBox;

procedure TfrmExcelStyleFiltering.cbApplyChangesPropertiesEditValueChanged(Sender: TObject);
begin
  if cbApplyChanges.ItemIndex = 0 then
    VerticalGrid.Filtering.RowExcelPopup.ApplyChanges := efacImmediately
  else
    VerticalGrid.Filtering.RowExcelPopup.ApplyChanges := efacOnTabOrOKButtonClick;
end;

procedure TfrmExcelStyleFiltering.cbCriteriaDisplayStylePropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    VerticalGrid.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    VerticalGrid.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

procedure TfrmExcelStyleFiltering.cbDateValuesPageTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbDateValuesPageType.ItemIndex = 0 then
    VerticalGrid.Filtering.RowExcelPopup.DateTimeValuesPageType := dvptTree
  else
    VerticalGrid.Filtering.RowExcelPopup.DateTimeValuesPageType := dvptList;
end;

procedure TfrmExcelStyleFiltering.cbFilteredItemsListPropertiesEditValueChanged(Sender: TObject);
begin
  VerticalGrid.Filtering.RowExcelPopup.FilteredItemsList := cbFilteredItemsList.Checked;
end;

procedure TfrmExcelStyleFiltering.cbNumericValuesPageTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbNumericValuesPageType.ItemIndex = 0 then
    VerticalGrid.Filtering.RowExcelPopup.NumericValuesPageType := nvptRange
  else
    VerticalGrid.Filtering.RowExcelPopup.NumericValuesPageType := nvptList;
end;

constructor TfrmExcelStyleFiltering.Create(AOwner: TComponent);
var
  AEditValue: Variant;
  ADisplayText: string;
  AList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);
  VerticalGrid.DataController.Filter.Active := False;
  AEditValue := 46000;
  ADisplayText := VerticalGridPrice.Properties.EditProperties.GetDisplayText(AEditValue);
  VerticalGrid.DataController.Filter.AddItem(nil, VerticalGridPrice.Properties.ItemLink, foGreaterEqual, AEditValue, ADisplayText);
  AEditValue := 55000;
  ADisplayText := VerticalGridPrice.Properties.EditProperties.GetDisplayText(AEditValue);
  VerticalGrid.DataController.Filter.AddItem(nil, VerticalGridPrice.Properties.ItemLink, foLessEqual, AEditValue, ADisplayText);
  AList := VerticalGrid.DataController.Filter.Root.AddItemList(fboOr);
  VerticalGrid.DataController.Filter.AddItem(AList, VerticalGridSalesDate.Properties.ItemLink, foLastYear, Null, '');
  VerticalGrid.DataController.Filter.AddItem(AList, VerticalGridSalesDate.Properties.ItemLink, foThisYear, Null, '');
  VerticalGrid.DataController.Filter.Active := True;
end;

function TfrmExcelStyleFiltering.GetDescription: string;
begin
  Result := sdxFrameVerticalGridExcelStyleFilteringDescription;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridExcelStyleFilteringFrameID, TfrmExcelStyleFiltering,
    VerticalGridExcelStyleFilteringName, -1, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);

end.
