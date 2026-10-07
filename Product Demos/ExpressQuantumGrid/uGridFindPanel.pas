unit uGridFindPanel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, Vcl.ImgList, dxmdaset,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, cxImageComboBox, cxFindPanel,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxGroupBox, maindata,
  cxCurrencyEdit, cxDBLookupComboBox, cxCalendar, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, dxCustomDemoFrameUnit, dxToggleSwitch,
  dxDateRanges, dxLayoutLookAndFeels, dxScrollbarAnnotations, System.Actions,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridFindPanel = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    dxLayoutItem1: TdxLayoutItem;
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
    actSearchInGroupRows: TAction;
    actSearchInPreview: TAction;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutItem10: TdxLayoutItem;
    cbeBehavior: TcxComboBox;
    TableViewCompanyName: TcxGridDBColumn;
    TableViewContactName: TcxGridDBColumn;
    TableViewContactTitle: TcxGridDBColumn;
    TableViewCity: TcxGridDBColumn;
    TableViewCountry: TcxGridDBColumn;
    TableViewAddress: TcxGridDBColumn;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    cbeLocation: TcxComboBox;
    dxLayoutItem14: TdxLayoutItem;
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
    cxCheckBox2: TdxLayoutCheckBoxItem;
    cxCheckBox3: TdxLayoutCheckBoxItem;
    procedure icbFindFilterColumnsPropertiesChange(Sender: TObject);
    procedure GridFocusedViewChanged(Sender: TcxCustomGrid; APrevFocusedView,
      AFocusedView: TcxCustomGridView);
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
    procedure actSearchInGroupRowsExecute(Sender: TObject);
    procedure actSearchInPreviewExecute(Sender: TObject);
    procedure cbeLocationEditValueChanged(Sender: TObject);
    procedure cbeLayoutPropertiesEditValueChanged(Sender: TObject);
  private
    procedure UpdateFindFilterColumns;
  protected
    function GetDescription: string; override;
    function GetFirstControl: TWinControl; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure ChangeVisibility(AShow: Boolean); override;
  end;

var
  frmGridFindPanel: TfrmGridFindPanel;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridFindPanel.Create(AOwner: TComponent);
begin
  inherited;
  UpdateFindFilterColumns;
  TableView.DataController.FindCriteria.Text := 'ana +tr';
  TableView.Controller.ShowFindPanel;
end;

procedure TfrmGridFindPanel.cbeLayoutPropertiesEditValueChanged(Sender: TObject);
begin
  if cbeLayout.ItemIndex = 1 then
    TableView.FindPanel.Layout := fplCompact
  else
    TableView.FindPanel.Layout := fplDefault;
end;

procedure TfrmGridFindPanel.cbeLocationEditValueChanged(Sender: TObject);
begin
  if cbeLocation.ItemIndex = 1 then
  begin
    TableView.FindPanel.Location := fplGroupByBox;
    cbeLayout.ItemIndex := 1;
  end
  else
  begin
    TableView.FindPanel.Location := fplSeparatePanel;
    cbeLayout.ItemIndex := 0;
  end;
  liLayout.Enabled := TableView.FindPanel.Location = fplSeparatePanel;
end;

procedure TfrmGridFindPanel.ChangeVisibility(AShow: Boolean);
begin
  inherited;
  if AShow then
    cbeBehaviorPropertiesChange(nil);
end;

procedure TfrmGridFindPanel.actClearFindOnCloseExecute(Sender: TObject);
begin
  TableView.FindPanel.ClearFindFilterTextOnClose := actClearFindOnClose.Checked;
end;

procedure TfrmGridFindPanel.actHighlightSearchResultsExecute(Sender: TObject);
begin
  TableView.FindPanel.HighlightSearchResults := actHighlightSearchResults.Checked;
end;

procedure TfrmGridFindPanel.actSearchInGroupRowsExecute(Sender: TObject);
begin
  TableView.FindPanel.SearchInGroupRows := actSearchInGroupRows.Checked;
  if TableView.FindPanel.SearchInGroupRows and (TableView.GroupedItemCount = 0) then
  begin
    TableViewCountry.GroupIndex := 0;
    TableViewCountry.Visible := False;
    DoFullExpand;
    TableView.DataController.FindCriteria.Text := 'tr';
  end;

end;

procedure TfrmGridFindPanel.actSearchInPreviewExecute(Sender: TObject);
begin
  TableView.Preview.Visible := actSearchInPreview.Checked;
  TableView.FindPanel.SearchInPreview := actSearchInPreview.Checked;
end;

procedure TfrmGridFindPanel.actShowClearButtonExecute(Sender: TObject);
begin
  TableView.FindPanel.ShowClearButton := actShowClearButton.Checked;
end;

procedure TfrmGridFindPanel.actShowCloseButtonExecute(Sender: TObject);
begin
  TableView.FindPanel.ShowCloseButton := actShowCloseButton.Checked;
end;

procedure TfrmGridFindPanel.actShowFindButtonExecute(Sender: TObject);
begin
  TableView.FindPanel.ShowFindButton := actShowFindButton.Checked;
end;

procedure TfrmGridFindPanel.actShowPrevAndNextButtonsExecute(Sender: TObject);
begin
  TableView.FindPanel.ShowNextButton := actShowPrevAndNextButtons.Checked;
  TableView.FindPanel.ShowPreviousButton := actShowPrevAndNextButtons.Checked;
end;

procedure TfrmGridFindPanel.actUseDelayedSearchExecute(Sender: TObject);
begin
  TableView.FindPanel.UseDelayedFind := actUseDelayedSearch.Checked;
end;

procedure TfrmGridFindPanel.actUseExtendedSyntaxExecute(Sender: TObject);
begin
  TableView.FindPanel.UseExtendedSyntax := actUseExtendedSyntax.Checked;
end;

function TfrmGridFindPanel.GetDescription: string;
begin
  Result := sdxFrameFindPanelDescription;
end;

function TfrmGridFindPanel.GetFirstControl: TWinControl;
begin
  Result := Grid;
end;

function TfrmGridFindPanel.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridFindPanel.cbeBehaviorPropertiesChange(Sender: TObject);
begin
  TableView.FindPanel.Behavior := TcxDataFindCriteriaBehavior(cbeBehavior.ItemIndex + 1);
  TableView.ScrollbarAnnotations.Active := TableView.FindPanel.Behavior = fcbSearch;
  actShowClearButton.Enabled := cbeBehavior.ItemIndex = 0;
  actShowFindButton.Enabled := actShowClearButton.Enabled;
  actShowPrevAndNextButtons.Enabled := not actShowClearButton.Enabled;
end;

procedure TfrmGridFindPanel.cbeDisplayModePropertiesChange(Sender: TObject);
begin
  if cbeDisplayMode.ItemIndex = 0 then
    TableView.FindPanel.DisplayMode := fpdmNever
  else
    if cbeDisplayMode.ItemIndex = 1 then
      TableView.FindPanel.DisplayMode := fpdmManual
    else
      TableView.FindPanel.DisplayMode := fpdmAlways;
  cbShowCloseButton.Enabled := not (TableView.FindPanel.DisplayMode = fpdmAlways);
end;

procedure TfrmGridFindPanel.cbeFindPanelPositionPropertiesChange(
  Sender: TObject);
begin
  if cbeFindPanelPosition.Text = 'Top' then
    TableView.FindPanel.Position := fppTop
  else
    TableView.FindPanel.Position := fppBottom;
end;

procedure TfrmGridFindPanel.GridFocusedViewChanged(Sender: TcxCustomGrid;
  APrevFocusedView, AFocusedView: TcxCustomGridView);
begin
  if AFocusedView = TableView then
    TableView.Controller.ShowFindPanel;
end;

procedure TfrmGridFindPanel.icbFindFilterColumnsPropertiesChange(
  Sender: TObject);
var
  I: Integer;
begin
  TableView.BeginUpdate;
  try
    for I := 0 to TableView.ColumnCount - 1 do
    if (icbFindFilterColumns.EditValue = 'All') or
      (Pos(TableView.Columns[I].Name, icbFindFilterColumns.EditValue) > 0) then
      TableView.Columns[I].Options.FilteringWithFindPanel := True
    else
      TableView.Columns[I].Options.FilteringWithFindPanel := False;
  finally
    TableView.EndUpdate;
  end;
end;

procedure TfrmGridFindPanel.seFindDelayPropertiesChange(Sender: TObject);
begin
  TableView.FindPanel.ApplyInputDelay := seFindDelay.Value;
end;

procedure TfrmGridFindPanel.UpdateFindFilterColumns;
var
  I, J: Integer;
  AFindFilterColumnsDescription: string;
  AFindFilterColumnsValue: string;
  AImageComboBoxItem: TcxImageComboBoxItem;
  AColumn: TcxGridColumn;
begin
  icbFindFilterColumns.Properties.Items.Clear;
  AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
  AImageComboBoxItem.Description := 'All';
  AImageComboBoxItem.Value := 'All';
  for I := 0 to TableView.ColumnCount - 1 do
  begin
    AColumn := TableView.Columns[I];
    if not AColumn.Visible then
      Continue;
    AFindFilterColumnsDescription := AColumn.Caption;
    AFindFilterColumnsValue := AColumn.Name;
    for J := I to TableView.ColumnCount - 1 do
    begin
      AColumn := TableView.Columns[J];
      if not AColumn.Visible then
        Continue;
      if J <> I then
      begin
        AFindFilterColumnsDescription := AFindFilterColumnsDescription + '; ' + AColumn.Caption;
        AFindFilterColumnsValue := AFindFilterColumnsValue + ';' + AColumn.Name;
      end;
      AImageComboBoxItem := icbFindFilterColumns.Properties.Items.Add;
      AImageComboBoxItem.Description := AFindFilterColumnsDescription;
      AImageComboBoxItem.Value := AFindFilterColumnsValue;
    end;
  end;
  icbFindFilterColumns.ItemIndex := 0;
end;

initialization
  dxFrameManager.RegisterFrame(GridFindPanelFrameID, TfrmGridFindPanel,
    GridFindPanelFrameName, GridFindPanelImageIndex, FilteringGroupIndex, -1, -1);

end.
