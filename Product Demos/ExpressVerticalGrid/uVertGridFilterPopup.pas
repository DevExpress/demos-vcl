unit uVertGridFilterPopup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxVertGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxStyles, cxEdit, cxFindPanel,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxInplaceContainer,
  cxVGrid, cxDBVGrid, dxLayoutcxEditAdapters, cxContainer,
  Vcl.ActnList, cxCheckBox, cxImageComboBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  cxFilter;

type
  TfrmVerticalGridFilterPopup = class(TVerticalGridFrame)
    VerticalGrid: TcxDBVerticalGrid;
    dxLayoutItem1: TdxLayoutItem;
    VerticalGridRecId: TcxDBEditorRow;
    VerticalGridId: TcxDBEditorRow;
    VerticalGridParentId: TcxDBEditorRow;
    VerticalGridJobTitle: TcxDBEditorRow;
    VerticalGridFirstName: TcxDBEditorRow;
    VerticalGridLastName: TcxDBEditorRow;
    VerticalGridCity: TcxDBEditorRow;
    VerticalGridStateProvinceName: TcxDBEditorRow;
    VerticalGridPhone: TcxDBEditorRow;
    VerticalGridEmailAddress: TcxDBEditorRow;
    VerticalGridAddressLine1: TcxDBEditorRow;
    VerticalGridPostalCode: TcxDBEditorRow;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cbApplyMultiSelectChanges: TcxComboBox;
    dxLayoutItem5: TdxLayoutItem;
    seMRUItemListCount: TcxSpinEdit;
    dxLayoutItem6: TdxLayoutItem;
    seMaxDropDownItemCount: TcxSpinEdit;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    alCustomCheckBoxes: TActionList;
    acMultiSelect: TAction;
    acFilteredItemList: TAction;
    acMRUItemsList: TAction;
    acIncrementalFiltering: TAction;
    cbIncrementalFiltering: TdxLayoutCheckBoxItem;
    cxMultiSelect: TdxLayoutCheckBoxItem;
    cbFilteredItemList: TdxLayoutCheckBoxItem;
    cbMRUItemsList: TdxLayoutCheckBoxItem;
    procedure acFilteredItemListExecute(Sender: TObject);
    procedure acIncrementalFilteringExecute(Sender: TObject);
    procedure acMRUItemsListExecute(Sender: TObject);
    procedure acMultiSelectExecute(Sender: TObject);
    procedure cbApplyMultiSelectChangesPropertiesEditValueChanged(
      Sender: TObject);
    procedure seMRUItemListCountPropertiesChange(Sender: TObject);
    procedure seMaxDropDownItemCountPropertiesEditValueChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
  end;

implementation

{$R *.dfm}

uses
  maindata, dxFrames, FrameIDs, uStrsConst, dxFilterValueContainer;

{ TfrmVerticalGridFindPanel }

procedure TfrmVerticalGridFilterPopup.acFilteredItemListExecute(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.FilteredItemsList := acFilteredItemList.Checked;
end;

procedure TfrmVerticalGridFilterPopup.acIncrementalFilteringExecute(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to VerticalGrid.Rows.Count - 1 do
    TcxDBEditorRow(VerticalGrid.Rows[I]).Properties.Options.FilterPopup.IncrementalFiltering.Enabled := acIncrementalFiltering.Checked;
end;

procedure TfrmVerticalGridFilterPopup.acMRUItemsListExecute(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.MRUItemsList := acMRUItemsList.Checked;
  seMRUItemListCount.Enabled := not VerticalGrid.Filtering.RowPopup.MultiSelect and VerticalGrid.Filtering.RowPopup.MRUItemsList;
end;

procedure TfrmVerticalGridFilterPopup.acMultiSelectExecute(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.MultiSelect := acMultiSelect.Checked;
  cbApplyMultiSelectChanges.Enabled := VerticalGrid.Filtering.RowPopup.MultiSelect;
  acMRUItemsList.Enabled := not VerticalGrid.Filtering.RowPopup.MultiSelect;
  seMRUItemListCount.Enabled := not VerticalGrid.Filtering.RowPopup.MultiSelect and VerticalGrid.Filtering.RowPopup.MRUItemsList;
end;

procedure TfrmVerticalGridFilterPopup.cbApplyMultiSelectChangesPropertiesEditValueChanged(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.ApplyMultiSelectChanges := TdxFilterApplyChangesMode(cbApplyMultiSelectChanges.ItemIndex);
end;

function TfrmVerticalGridFilterPopup.GetDescription: string;
begin
  Result := sdxFrameVerticalGridFilterPopupDescription;
end;

procedure TfrmVerticalGridFilterPopup.seMaxDropDownItemCountPropertiesEditValueChanged(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.MaxDropDownItemCount := seMaxDropDownItemCount.Value;
end;

procedure TfrmVerticalGridFilterPopup.seMRUItemListCountPropertiesChange(Sender: TObject);
begin
  VerticalGrid.Filtering.RowPopup.MRUItemsListCount := seMRUItemListCount.Value;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridFilterPopupFrameID, TfrmVerticalGridFilterPopup,
    VerticalGridFilterPopupName, -1, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);

end.
