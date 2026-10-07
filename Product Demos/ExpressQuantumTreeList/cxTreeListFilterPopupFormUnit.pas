unit cxTreeListFilterPopupFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, cxDBTreeListBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxLayoutContainer,
  Vcl.ActnList, cxClasses, dxLayoutLookAndFeels, cxInplaceContainer, cxTLData,
  cxDBTL, dxLayoutControl, cxMaskEdit, cxCalendar,
  dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxCheckBox, cxImageComboBox, cxSpinEdit, cxTextEdit, cxDropDownEdit, cxFindPanel, dxScrollbarAnnotations,
  System.Actions, cxFilter, System.ImageList, Vcl.ImgList, cxImageList;

type
  TfrmFilterPopup = class(TcxDBTreeListDemoUnitForm)
    tlDBRecId: TcxDBTreeListColumn;
    tlDBId: TcxDBTreeListColumn;
    tlDBParentId: TcxDBTreeListColumn;
    tlDBJobTitle: TcxDBTreeListColumn;
    tlDBFirstName: TcxDBTreeListColumn;
    tlDBLastName: TcxDBTreeListColumn;
    tlDBCity: TcxDBTreeListColumn;
    tlDBStateProvinceName: TcxDBTreeListColumn;
    tlDBPhone: TcxDBTreeListColumn;
    tlDBEmailAddress: TcxDBTreeListColumn;
    tlDBAddressLine1: TcxDBTreeListColumn;
    tlDBPostalCode: TcxDBTreeListColumn;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lgCheckBoxes: TdxLayoutGroup;
    acMultiSelect: TAction;
    acFilteredItemList: TAction;
    acMRUItemsList: TAction;
    cbApplyMultiSelectChanges: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    seMRUItemListCount: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    seMaxDropDownItemCount: TcxSpinEdit;
    dxLayoutItem8: TdxLayoutItem;
    acIncrementalFiltering: TAction;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    cxMultiSelect: TdxLayoutCheckBoxItem;
    cbFilteredItemList: TdxLayoutCheckBoxItem;
    cbMRUItemsList: TdxLayoutCheckBoxItem;
    cbIncrementalFiltering: TdxLayoutCheckBoxItem;
    dxImageList1: TcxImageList;
    tlDBSalaryCurrency: TcxDBTreeListColumn;
    procedure acMultiSelectExecute(Sender: TObject);
    procedure acFilteredItemListExecute(Sender: TObject);
    procedure acMRUItemsListExecute(Sender: TObject);
    procedure cbApplyMultiSelectChangesPropertiesEditValueChanged(
      Sender: TObject);
    procedure seMRUItemListCountPropertiesEditValueChanged(Sender: TObject);
    procedure seMaxDropDownItemCountPropertiesEditValueChanged(Sender: TObject);
    procedure acIncrementalFilteringExecute(Sender: TObject);
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListDataModule, dxFilterValueContainer;

{ TfrmFindPanel }

procedure TfrmFilterPopup.acFilteredItemListExecute(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.FilteredItemsList := acFilteredItemList.Checked;
end;

procedure TfrmFilterPopup.acIncrementalFilteringExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to tlDB.ColumnCount - 1 do
    tlDB.Columns[I].Options.FilterPopup.IncrementalFiltering.Enabled := acIncrementalFiltering.Checked;
end;

procedure TfrmFilterPopup.acMRUItemsListExecute(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.MRUItemsList := acMRUItemsList.Checked;
  seMRUItemListCount.Enabled := not tlDB.Filtering.ColumnPopup.MultiSelect and tlDB.Filtering.ColumnPopup.MRUItemsList;
end;

procedure TfrmFilterPopup.acMultiSelectExecute(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.MultiSelect := acMultiSelect.Checked;
  cbApplyMultiSelectChanges.Enabled := tlDB.Filtering.ColumnPopup.MultiSelect;
  acMRUItemsList.Enabled := not tlDB.Filtering.ColumnPopup.MultiSelect;
  seMRUItemListCount.Enabled := not tlDB.Filtering.ColumnPopup.MultiSelect and tlDB.Filtering.ColumnPopup.MRUItemsList;
end;

procedure TfrmFilterPopup.cbApplyMultiSelectChangesPropertiesEditValueChanged(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.ApplyMultiSelectChanges := TdxFilterApplyChangesMode(cbApplyMultiSelectChanges.ItemIndex);
end;

procedure TfrmFilterPopup.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.FullExpand;
end;

class function TfrmFilterPopup.GetID: Integer;
begin
  Result := 58;
end;

procedure TfrmFilterPopup.seMaxDropDownItemCountPropertiesEditValueChanged(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.MaxDropDownItemCount := seMaxDropDownItemCount.Value;
end;

procedure TfrmFilterPopup.seMRUItemListCountPropertiesEditValueChanged(Sender: TObject);
begin
  tlDB.Filtering.ColumnPopup.MRUItemsListCount := seMRUItemListCount.Value;
end;

initialization
  TfrmFilterPopup.Register;

end.
