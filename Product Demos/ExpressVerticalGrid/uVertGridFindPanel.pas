unit uVertGridFindPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxVertGridFrame, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses,
  dxLayoutControl, cxStyles, cxEdit, cxFindPanel,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxInplaceContainer,
  cxVGrid, cxDBVGrid, dxLayoutcxEditAdapters, cxContainer,
  Vcl.ActnList, cxCheckBox, cxImageComboBox, cxSpinEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxLayoutLookAndFeels, cxCustomData, dxScrollbarAnnotations, System.Actions,
  cxFilter;

type
  TfrmVerticalGridFindPanel = class(TVerticalGridFrame)
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
    alCustomCheckBoxes: TActionList;
    dxLayoutItem9: TdxLayoutItem;
    cbeBehavior: TcxComboBox;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    actShowPrevAndNextButtons: TAction;
    cbeLayout: TcxComboBox;
    dxLayoutItem12: TdxLayoutItem;
    cbClearFindOnClose: TdxLayoutCheckBoxItem;
    cbHighlightSearchResults: TdxLayoutCheckBoxItem;
    cbUseDelayedSearch: TdxLayoutCheckBoxItem;
    cbUseExtendedSyntax: TdxLayoutCheckBoxItem;
    cbShowCloseButton: TdxLayoutCheckBoxItem;
    cbShowFindButton: TdxLayoutCheckBoxItem;
    cbShowClearButton: TdxLayoutCheckBoxItem;
    cxCheckBox1: TdxLayoutCheckBoxItem;
    procedure actClearFindOnCloseExecute(Sender: TObject);
    procedure actHighlightSearchResultsExecute(Sender: TObject);
    procedure actShowClearButtonExecute(Sender: TObject);
    procedure actShowCloseButtonExecute(Sender: TObject);
    procedure actShowFindButtonExecute(Sender: TObject);
    procedure actUseDelayedSearchExecute(Sender: TObject);
    procedure actUseExtendedSyntaxExecute(Sender: TObject);
    procedure cbeDisplayModePropertiesChange(Sender: TObject);
    procedure cbeFindPanelPositionPropertiesChange(Sender: TObject);
    procedure icbFindFilterColumnsPropertiesChange(Sender: TObject);
    procedure seFindDelayPropertiesChange(Sender: TObject);
    procedure cbeBehaviorPropertiesChange(Sender: TObject);
    procedure actShowPrevAndNextButtonsExecute(Sender: TObject);
    procedure cbeLayoutPropertiesEditValueChanged(Sender: TObject);
  private
    procedure UpdateFindFilterColumns;
  protected
    function GetDescription: string; override;
    function GetFirstControl: TWinControl; override;
  public
    constructor Create(AOwner: TComponent); override;

    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

{$R *.dfm}

uses
  maindata, dxFrames, FrameIDs, uStrsConst;

{ TfrmVerticalGridFindPanel }

constructor TfrmVerticalGridFindPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  VerticalGrid.DataController.FindCriteria.Text := 'cali +manager';
  VerticalGrid.ShowFindPanel;
  UpdateFindFilterColumns;
end;

procedure TfrmVerticalGridFindPanel.ChangeVisibility(AShow: Boolean);
begin
  inherited;
  if AShow then
    cbeBehaviorPropertiesChange(nil);
end;

function TfrmVerticalGridFindPanel.GetDescription: string;
begin
  Result := sdxFrameVerticalGridFindPanelDescription;
end;

function TfrmVerticalGridFindPanel.GetFirstControl: TWinControl;
begin
  Result := VerticalGrid;
end;

procedure TfrmVerticalGridFindPanel.UpdateFindFilterColumns;
var
  I, J: Integer;
  AFindFilterColumnsDescription: string;
  AFindFilterColumnsValue: string;
  AImageComboBoxItem: TcxImageComboBoxItem;
  ARow: TcxDBEditorRow;
begin
  icbFindFilterColumns.Properties.Items.Clear;
  AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
  AImageComboBoxItem.Description := 'All';
  AImageComboBoxItem.Value := 'All';
  for I := 0 to VerticalGrid.Rows.Count - 1 do
  begin
    ARow := TcxDBEditorRow(VerticalGrid.Rows[I]);
    if not ARow.Visible then
      Continue;
    AFindFilterColumnsDescription := ARow.Properties.Caption;
    AFindFilterColumnsValue := ARow.Name;
    for J := I to VerticalGrid.Rows.Count - 1 do
    begin
      ARow := TcxDBEditorRow(VerticalGrid.Rows[J]);
      if not ARow.Visible then
        Continue;
      if J <> I then
      begin
        AFindFilterColumnsDescription := AFindFilterColumnsDescription + '; ' + ARow.Properties.Caption;
        AFindFilterColumnsValue := AFindFilterColumnsValue + ';' + ARow.Name;
      end;
      AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
      AImageComboBoxItem.Description := AFindFilterColumnsDescription;
      AImageComboBoxItem.Value := AFindFilterColumnsValue;
    end;
  end;
  icbFindFilterColumns.ItemIndex := 0;
end;

procedure TfrmVerticalGridFindPanel.actClearFindOnCloseExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.ClearFindFilterTextOnClose := actClearFindOnClose.Checked;
end;

procedure TfrmVerticalGridFindPanel.actHighlightSearchResultsExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.HighlightSearchResults := actHighlightSearchResults.Checked;
end;

procedure TfrmVerticalGridFindPanel.actShowClearButtonExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.ShowClearButton := actShowClearButton.Checked;
end;

procedure TfrmVerticalGridFindPanel.actShowCloseButtonExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.ShowCloseButton := actShowCloseButton.Checked;
end;

procedure TfrmVerticalGridFindPanel.actShowFindButtonExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.ShowFindButton := actShowFindButton.Checked;
end;

procedure TfrmVerticalGridFindPanel.actShowPrevAndNextButtonsExecute(
  Sender: TObject);
begin
  VerticalGrid.FindPanel.ShowPreviousButton := actShowPrevAndNextButtons.Checked;
  VerticalGrid.FindPanel.ShowNextButton := actShowPrevAndNextButtons.Checked;
end;

procedure TfrmVerticalGridFindPanel.actUseDelayedSearchExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.UseDelayedFind := actUseDelayedSearch.Checked;
end;

procedure TfrmVerticalGridFindPanel.actUseExtendedSyntaxExecute(Sender: TObject);
begin
  VerticalGrid.FindPanel.UseExtendedSyntax := actUseExtendedSyntax.Checked;
end;

procedure TfrmVerticalGridFindPanel.cbeBehaviorPropertiesChange(Sender: TObject);
begin
  VerticalGrid.FindPanel.Behavior := TcxDataFindCriteriaBehavior(cbeBehavior.ItemIndex + 1);
  VerticalGrid.ScrollbarAnnotations.Active := VerticalGrid.FindPanel.Behavior = fcbSearch;
  actShowClearButton.Enabled := cbeBehavior.ItemIndex = 0;
  actShowFindButton.Enabled := actShowClearButton.Enabled;
  actShowPrevAndNextButtons.Enabled := not actShowClearButton.Enabled;
end;

procedure TfrmVerticalGridFindPanel.cbeDisplayModePropertiesChange(Sender: TObject);
begin
  if cbeDisplayMode.ItemIndex = 0 then
    VerticalGrid.FindPanel.DisplayMode := fpdmNever
  else
    if cbeDisplayMode.ItemIndex = 1 then
      VerticalGrid.FindPanel.DisplayMode := fpdmManual
    else
      VerticalGrid.FindPanel.DisplayMode := fpdmAlways;
  cbShowCloseButton.Enabled := not (VerticalGrid.FindPanel.DisplayMode = fpdmAlways);
end;

procedure TfrmVerticalGridFindPanel.cbeFindPanelPositionPropertiesChange(Sender: TObject);
begin
  if cbeFindPanelPosition.Text = 'Top' then
    VerticalGrid.FindPanel.Position := fppTop
  else
    VerticalGrid.FindPanel.Position := fppBottom;
end;

procedure TfrmVerticalGridFindPanel.cbeLayoutPropertiesEditValueChanged(Sender: TObject);
begin
  if cbeLayout.ItemIndex = 1 then
    VerticalGrid.FindPanel.Layout := fplCompact
  else
    VerticalGrid.FindPanel.Layout := fplDefault;
end;

procedure TfrmVerticalGridFindPanel.icbFindFilterColumnsPropertiesChange(Sender: TObject);
var
  I: Integer;
  ARow: TcxDBEditorRow;
begin
  for I := 0 to VerticalGrid.Rows.Count - 1 do
  begin
    ARow := TcxDBEditorRow(VerticalGrid.Rows[I]);
    if (icbFindFilterColumns.EditValue = 'All') or
      (Pos(ARow.Name, icbFindFilterColumns.EditValue) > 0) then
      ARow.Properties.Options.FilteringWithFindPanel := True
    else
      ARow.Properties.Options.FilteringWithFindPanel := False;
  end;
end;

procedure TfrmVerticalGridFindPanel.seFindDelayPropertiesChange(Sender: TObject);
begin
  VerticalGrid.FindPanel.ApplyInputDelay := seFindDelay.Value;
end;

initialization
  dxFrameManager.RegisterFrame(VerticalGridFindPanelFrameID, TfrmVerticalGridFindPanel,
    VerticalGridFindPanelName, -1, NewAndHighlightedGroupIndex, VerticalGridSideBarGroupIndex);

end.
