unit cxTreeListFindPanelFormUnit;

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
  System.Actions, cxFilter;

type
  TfrmFindPanel = class(TcxDBTreeListDemoUnitForm)
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
    liDisplayMode: TdxLayoutItem;
    cbeDisplayMode: TcxComboBox;
    dxLayoutItem2: TdxLayoutItem;
    cbeFindPanelPosition: TcxComboBox;
    dxLayoutItem3: TdxLayoutItem;
    seFindDelay: TcxSpinEdit;
    dxLayoutItem4: TdxLayoutItem;
    icbFindFilterColumns: TcxImageComboBox;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutGroup3: TdxLayoutGroup;
    lgCheckBoxes: TdxLayoutGroup;
    actClearFindOnClose: TAction;
    actHighlightSearchResults: TAction;
    actUseDelayedSearch: TAction;
    actUseExtendedSyntax: TAction;
    actShowCloseButton: TAction;
    actShowFindButton: TAction;
    actShowClearButton: TAction;
    actShowPrevAndNextButtons: TAction;
    dxLayoutItem10: TdxLayoutItem;
    cbeBehavior: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    cbeLayout: TcxComboBox;
    liLayout: TdxLayoutItem;
    cbClearFindOnClose: TdxLayoutCheckBoxItem;
    cbHighlightSearchResults: TdxLayoutCheckBoxItem;
    cbUseDelayedSearch: TdxLayoutCheckBoxItem;
    cbUseExtendedSyntax: TdxLayoutCheckBoxItem;
    cbShowCloseButton: TdxLayoutCheckBoxItem;
    cbShowFindButton: TdxLayoutCheckBoxItem;
    cbShowClearButton: TdxLayoutCheckBoxItem;
    cxCheckBox1: TdxLayoutCheckBoxItem;
    procedure icbFindFilterColumnsPropertiesChange(Sender: TObject);
    procedure cbeFindPanelPositionPropertiesChange(Sender: TObject);
    procedure seFindDelayPropertiesChange(Sender: TObject);
    procedure cbeDisplayModePropertiesChange(Sender: TObject);
    procedure actClearFindOnCloseExecute(Sender: TObject);
    procedure actHighlightSearchResultsExecute(Sender: TObject);
    procedure actUseDelayedSearchExecute(Sender: TObject);
    procedure actUseExtendedSyntaxExecute(Sender: TObject);
    procedure actShowCloseButtonExecute(Sender: TObject);
    procedure actShowFindButtonExecute(Sender: TObject);
    procedure actShowClearButtonExecute(Sender: TObject);
    procedure actShowPrevAndNextButtonsExecute(Sender: TObject);
    procedure cbeBehaviorPropertiesChange(Sender: TObject);
    procedure cbeLayoutPropertiesEditValueChanged(Sender: TObject);
  private
    procedure UpdateFindFilterColumns;
  public
    procedure FrameActivated; override;
    class function GetID: Integer; override;
  end;

implementation

{$R *.dfm}

uses
  cxTreeListDataModule;

{ TfrmFindPanel }

procedure TfrmFindPanel.FrameActivated;
begin
  inherited FrameActivated;
  TreeList.FindCriteria.Text := 's +Ma';
  TreeList.ShowFindPanel;
  TreeList.FullExpand;
  UpdateFindFilterColumns;
  cbeBehaviorPropertiesChange(nil);
end;

class function TfrmFindPanel.GetID: Integer;
begin
  Result := 56;
end;

procedure TfrmFindPanel.UpdateFindFilterColumns;
var
  I, J: Integer;
  AFindFilterColumnsDescription: string;
  AFindFilterColumnsValue: string;
  AImageComboBoxItem: TcxImageComboBoxItem;
  AColumn: TcxTreeListColumn;
begin
  icbFindFilterColumns.Properties.Items.Clear;
  AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
  AImageComboBoxItem.Description := 'All';
  AImageComboBoxItem.Value := 'All';
  for I := 0 to TreeList.ColumnCount - 1 do
  begin
    AColumn := TreeList.Columns[I];
    if not AColumn.Visible then
      Continue;
    AFindFilterColumnsDescription := AColumn.Caption.Text;
    AFindFilterColumnsValue := AColumn.Name;
    for J := I to TreeList.ColumnCount - 1 do
    begin
      AColumn := TreeList.Columns[J];
      if not AColumn.Visible then
        Continue;
      if J <> I then
      begin
        AFindFilterColumnsDescription := AFindFilterColumnsDescription + '; ' + AColumn.Caption.Text;
        AFindFilterColumnsValue := AFindFilterColumnsValue + ';' + AColumn.Name;
      end;
      AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
      AImageComboBoxItem.Description := AFindFilterColumnsDescription;
      AImageComboBoxItem.Value := AFindFilterColumnsValue;
    end;
  end;
  icbFindFilterColumns.ItemIndex := 0;
end;

procedure TfrmFindPanel.icbFindFilterColumnsPropertiesChange(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to TreeList.ColumnCount - 1 do
    if (icbFindFilterColumns.EditValue = 'All') or
      (Pos(TreeList.Columns[I].Name, icbFindFilterColumns.EditValue) > 0) then
      TreeList.Columns[I].Options.FilteringWithFindPanel := True
    else
      TreeList.Columns[I].Options.FilteringWithFindPanel := False;
end;

procedure TfrmFindPanel.cbeFindPanelPositionPropertiesChange(Sender: TObject);
begin
  if cbeFindPanelPosition.Text = 'Top' then
    TreeList.FindPanel.Position := fppTop
  else
    TreeList.FindPanel.Position := fppBottom;
end;

procedure TfrmFindPanel.cbeLayoutPropertiesEditValueChanged(Sender: TObject);
begin
  if cbeLayout.ItemIndex = 1 then
    tlDB.FindPanel.Layout := fplCompact
  else
    tlDB.FindPanel.Layout := fplDefault;
end;

procedure TfrmFindPanel.seFindDelayPropertiesChange(Sender: TObject);
begin
  TreeList.FindPanel.ApplyInputDelay := seFindDelay.Value;
end;

procedure TfrmFindPanel.cbeBehaviorPropertiesChange(Sender: TObject);
begin
  TreeList.FindPanel.Behavior := TcxDataFindCriteriaBehavior(cbeBehavior.ItemIndex + 1);
  TreeList.ScrollbarAnnotations.Active := TreeList.FindPanel.Behavior = fcbSearch;
  actShowClearButton.Enabled := cbeBehavior.ItemIndex = 0;
  actShowFindButton.Enabled := actShowClearButton.Enabled;
  actShowPrevAndNextButtons.Enabled := not actShowClearButton.Enabled;
end;

procedure TfrmFindPanel.cbeDisplayModePropertiesChange(Sender: TObject);
begin
  if cbeDisplayMode.ItemIndex = 0 then
    TreeList.FindPanel.DisplayMode := fpdmNever
  else
    if cbeDisplayMode.ItemIndex = 1 then
      TreeList.FindPanel.DisplayMode := fpdmManual
    else
      TreeList.FindPanel.DisplayMode := fpdmAlways;
  cbShowCloseButton.Enabled := not (TreeList.FindPanel.DisplayMode = fpdmAlways);
end;

procedure TfrmFindPanel.actClearFindOnCloseExecute(Sender: TObject);
begin
  TreeList.FindPanel.ClearFindFilterTextOnClose := actClearFindOnClose.Checked;
end;

procedure TfrmFindPanel.actHighlightSearchResultsExecute(Sender: TObject);
begin
  TreeList.FindPanel.HighlightSearchResults := actHighlightSearchResults.Checked;
end;

procedure TfrmFindPanel.actUseDelayedSearchExecute(Sender: TObject);
begin
  TreeList.FindPanel.UseDelayedFind := actUseDelayedSearch.Checked;
end;

procedure TfrmFindPanel.actUseExtendedSyntaxExecute(Sender: TObject);
begin
  TreeList.FindPanel.UseExtendedSyntax := actUseExtendedSyntax.Checked;
end;

procedure TfrmFindPanel.actShowCloseButtonExecute(Sender: TObject);
begin
  TreeList.FindPanel.ShowCloseButton := actShowCloseButton.Checked;
end;

procedure TfrmFindPanel.actShowFindButtonExecute(Sender: TObject);
begin
  TreeList.FindPanel.ShowFindButton := actShowFindButton.Checked;
end;

procedure TfrmFindPanel.actShowPrevAndNextButtonsExecute(Sender: TObject);
begin
  TreeList.FindPanel.ShowPreviousButton := actShowPrevAndNextButtons.Checked;
  TreeList.FindPanel.ShowNextButton := actShowPrevAndNextButtons.Checked;
end;

procedure TfrmFindPanel.actShowClearButtonExecute(Sender: TObject);
begin
  TreeList.FindPanel.ShowClearButton := actShowClearButton.Checked;
end;

initialization
  TfrmFindPanel.Register;

end.
