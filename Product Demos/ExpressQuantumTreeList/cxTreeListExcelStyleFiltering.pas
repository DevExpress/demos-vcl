unit cxTreeListExcelStyleFiltering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxDBTreeListBaseFormUnit, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxTLdxBarBuiltInMenu, dxLayoutContainer, Vcl.ActnList,
  cxClasses, dxLayoutLookAndFeels, cxInplaceContainer, cxTLData, cxDBTL,
  dxLayoutControl, cxMaskEdit, cxCalendar, cxDBLookupComboBox,
  cxCurrencyEdit, cxSpinEdit,
  cxDataControllerConditionalFormattingRulesManagerDialog,
  dxLayoutcxEditAdapters, cxContainer, cxEdit, cxCheckBox, cxTextEdit,
  cxDropDownEdit, dxScrollbarAnnotations, System.Actions, cxFilter;

type
  TfrmExcelStyleFiltering = class(TcxDBTreeListDemoUnitForm)
    tlDBRecId: TcxDBTreeListColumn;
    tlDBID: TcxDBTreeListColumn;
    tlDBParentID: TcxDBTreeListColumn;
    tlDBName: TcxDBTreeListColumn;
    tlDBModification: TcxDBTreeListColumn;
    tlDBPrice: TcxDBTreeListColumn;
    tlDBMPGCity: TcxDBTreeListColumn;
    tlDBMPGHighway: TcxDBTreeListColumn;
    tlDBBodyStyleID: TcxDBTreeListColumn;
    tlDBCylinders: TcxDBTreeListColumn;
    tlDBSalesDate: TcxDBTreeListColumn;
    tlDBBodyStyle: TcxDBTreeListColumn;
    tlDBDiscount: TcxDBTreeListColumn;
    liNumericValuesPageType: TdxLayoutItem;
    cbNumericValuesPageType: TcxComboBox;
    liDateValuesPageType: TdxLayoutItem;
    cbDateValuesPageType: TcxComboBox;
    liApplyChanges: TdxLayoutItem;
    cbApplyChanges: TcxComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    acFilteredItemsList: TAction;
    cbFilteredItemsList: TdxLayoutCheckBoxItem;
    cbCriteriaDisplayStyle: TcxComboBox;
    liCriteriaDisplayStyle: TdxLayoutItem;
    acItemDeleting: TAction;
    procedure cbNumericValuesPageTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbDateValuesPageTypePropertiesEditValueChanged(Sender: TObject);
    procedure cbApplyChangesPropertiesEditValueChanged(Sender: TObject);
    procedure acFilteredItemsListExecute(Sender: TObject);
    procedure cbCriteriaDisplayTypePropertiesEditValueChanged(Sender: TObject);
    procedure acItemDeletingExecute(Sender: TObject);
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

var
  frmExcelStyleFiltering: TfrmExcelStyleFiltering;

implementation

{$R *.dfm}

uses
  cxTreeListDataModule, dxFilterValueContainer, dxFilterBox;

{ TfrmExcelStyleFiltering }

procedure TfrmExcelStyleFiltering.acFilteredItemsListExecute(Sender: TObject);
begin
  tlDB.Filtering.ColumnExcelPopup.FilteredItemsList := acFilteredItemsList.Checked;
end;

procedure TfrmExcelStyleFiltering.cbCriteriaDisplayTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    tlDB.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    tlDB.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

procedure TfrmExcelStyleFiltering.acItemDeletingExecute(Sender: TObject);
begin
  tlDB.FilterBox.TokenCriteria.ItemRemoval := acItemDeleting.Checked;
end;

procedure TfrmExcelStyleFiltering.cbApplyChangesPropertiesEditValueChanged(Sender: TObject);
begin
  if cbApplyChanges.ItemIndex = 0 then
    tlDB.Filtering.ColumnExcelPopup.ApplyChanges := efacImmediately
  else
    tlDB.Filtering.ColumnExcelPopup.ApplyChanges := efacOnTabOrOKButtonClick;
end;

procedure TfrmExcelStyleFiltering.cbDateValuesPageTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbDateValuesPageType.ItemIndex = 0 then
    tlDB.Filtering.ColumnExcelPopup.DateTimeValuesPageType := dvptTree
  else
    tlDB.Filtering.ColumnExcelPopup.DateTimeValuesPageType := dvptList;
end;

procedure TfrmExcelStyleFiltering.cbNumericValuesPageTypePropertiesEditValueChanged(Sender: TObject);
begin
  if cbNumericValuesPageType.ItemIndex = 0 then
    tlDB.Filtering.ColumnExcelPopup.NumericValuesPageType := nvptRange
  else
    tlDB.Filtering.ColumnExcelPopup.NumericValuesPageType := nvptList;
end;

procedure TfrmExcelStyleFiltering.FrameActivated;
var
  AEditValue: Variant;
  ADisplayText: string;
  AList: TcxFilterCriteriaItemList;
begin
  inherited FrameActivated;
  tlDB.Filter.Active := False;
  AEditValue := 46000;
  ADisplayText := tlDBPrice.Properties.GetDisplayText(AEditValue);
  tlDB.Filter.AddItem(nil, tlDBPrice, foGreaterEqual, AEditValue, ADisplayText);
  AEditValue := 55000;
  ADisplayText := tlDBPrice.Properties.GetDisplayText(AEditValue);
  tlDB.Filter.AddItem(nil, tlDBPrice, foLessEqual, AEditValue, ADisplayText);
  AList := tlDB.Filter.Root.AddItemList(fboOr);
  tlDB.Filter.AddItem(AList, tlDBSalesDate, foLastYear, Null, '');
  tlDB.Filter.AddItem(AList, tlDBSalesDate, foThisYear, Null, '');
  tlDB.Filter.Active := True;
  TreeList.FullExpand;
end;

class function TfrmExcelStyleFiltering.GetID: Integer;
begin
  Result := 59;
end;

initialization
  TfrmExcelStyleFiltering.Register;

end.
