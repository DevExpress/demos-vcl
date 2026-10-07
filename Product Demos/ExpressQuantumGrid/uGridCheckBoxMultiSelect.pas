unit uGridCheckBoxMultiSelect;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, Vcl.ImgList, dxmdaset,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, cxImageComboBox,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxGroupBox, maindata,
  cxCurrencyEdit, cxDBLookupComboBox, dxToggleSwitch, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  cxCalendar, dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxCustomDemoFrameUnit, dxLayoutcxEditAdapters,
  cxRadioGroup, dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridCheckBoxMultiSelect = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewPaymentAmount: TcxGridDBColumn;
    TableViewQuantity: TcxGridDBColumn;
    TableViewCompany: TcxGridDBColumn;
    TableViewModel: TcxGridDBColumn;
    TableViewPrice: TcxGridDBColumn;
    lgCheckBoxPosition: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    TableViewTrademarkLogo: TcxGridDBColumn;
    acGroupRowCheckBoxVisible: TAction;
    acColumnHeaderCheckBoxVisible: TAction;
    acShowCheckBoxesDynamically: TAction;
    acClearSelectionOnClickOutsideSelection: TAction;
    acDataRowCheckBoxVisible: TAction;
    dxLayoutGroup4: TdxLayoutGroup;
    lgCheckBoxVisibility: TdxLayoutGroup;
    acPersistentSelection: TAction;
    cbGroupRowCheckBoxVisible: TdxLayoutCheckBoxItem;
    cbShowCheckBoxesDynamically: TdxLayoutCheckBoxItem;
    cbColumnHeaderCheckBoxVisible: TdxLayoutCheckBoxItem;
    cbClearSelectionOnClickOutsideSelection: TdxLayoutCheckBoxItem;
    cbDataRowCheckBoxVisible: TdxLayoutCheckBoxItem;
    cbPersistentSelection: TdxLayoutCheckBoxItem;
    rbFirstColumn: TdxLayoutRadioButtonItem;
    rbIndicator: TdxLayoutRadioButtonItem;
    procedure CheckBoxPositionChanged(Sender: TObject);
    procedure acGroupRowCheckBoxVisibleExecute(Sender: TObject);
    procedure acColumnHeaderCheckBoxVisibleExecute(Sender: TObject);
    procedure acShowCheckBoxesDynamicallyExecute(Sender: TObject);
    procedure acClearSelectionOnClickOutsideSelectionExecute(Sender: TObject);
    procedure acDataRowCheckBoxVisibleExecute(Sender: TObject);
    procedure acPersistentSelectionExecute(Sender: TObject);
  private
    FFirstShow: Boolean;
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure UpdateCheckBoxesVisibility(AOption: TcxGridCheckBoxVisibilityOption; AInclude: Boolean);
    procedure UpdateShowCheckBoxesDynamicallyEnabled;
  public
    constructor Create(AOwner: TComponent); override;

    procedure AfterShow; override;
  end;

var
  frmGridCheckBoxMultiSelect: TfrmGridCheckBoxMultiSelect;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridCheckBoxMultiSelect.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFirstShow := True;
  TableView.Controller.FocusedRowIndex := 0;
  TableView.ViewData.Expand(True);
end;

procedure TfrmGridCheckBoxMultiSelect.AfterShow;
begin
  if FFirstShow then
  begin
    TableView.Controller.FocusRecord(2, True);
    TableView.DataController.SelectRows(4, 6);
    TableView.DataController.ChangeRowSelection(8, True);
    FFirstShow := False;
  end;
end;

function TfrmGridCheckBoxMultiSelect.GetDescription: string;
begin
  Result := sdxFrameCheckBoxMultiSelectDescription;
end;

function TfrmGridCheckBoxMultiSelect.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridCheckBoxMultiSelect.UpdateCheckBoxesVisibility(AOption: TcxGridCheckBoxVisibilityOption; AInclude: Boolean);
begin
  if AInclude then
    TableView.OptionsSelection.CheckBoxVisibility := TableView.OptionsSelection.CheckBoxVisibility + [AOption]
  else
    TableView.OptionsSelection.CheckBoxVisibility := TableView.OptionsSelection.CheckBoxVisibility - [AOption];
  UpdateShowCheckBoxesDynamicallyEnabled;
end;

procedure TfrmGridCheckBoxMultiSelect.UpdateShowCheckBoxesDynamicallyEnabled;
begin
  acShowCheckBoxesDynamically.Enabled := rbFirstColumn.Checked and
    (TableView.OptionsSelection.CheckBoxVisibility * [cbvDataRow, cbvGroupRow] <> []);
end;

procedure TfrmGridCheckBoxMultiSelect.CheckBoxPositionChanged(Sender: TObject);
begin
  if rbFirstColumn.Checked then
    TableView.OptionsSelection.CheckBoxPosition := cbpFirstColumn
  else
    TableView.OptionsSelection.CheckBoxPosition := cbpIndicator;
  UpdateShowCheckBoxesDynamicallyEnabled
end;

procedure TfrmGridCheckBoxMultiSelect.acShowCheckBoxesDynamicallyExecute(Sender: TObject);
begin
  TableView.OptionsSelection.ShowCheckBoxesDynamically := acShowCheckBoxesDynamically.Checked;
end;

procedure TfrmGridCheckBoxMultiSelect.acClearSelectionOnClickOutsideSelectionExecute(Sender: TObject);
begin
  TableView.OptionsSelection.ClearPersistentSelectionOnOutsideClick := acClearSelectionOnClickOutsideSelection.Checked;
end;

procedure TfrmGridCheckBoxMultiSelect.acColumnHeaderCheckBoxVisibleExecute(Sender: TObject);
begin
  UpdateCheckBoxesVisibility(cbvColumnHeader, acColumnHeaderCheckBoxVisible.Checked);
end;

procedure TfrmGridCheckBoxMultiSelect.acDataRowCheckBoxVisibleExecute(Sender: TObject);
begin
  UpdateCheckBoxesVisibility(cbvDataRow, acDataRowCheckBoxVisible.Checked);
end;

procedure TfrmGridCheckBoxMultiSelect.acGroupRowCheckBoxVisibleExecute(Sender: TObject);
begin
  UpdateCheckBoxesVisibility(cbvGroupRow, acGroupRowCheckBoxVisible.Checked);
end;

procedure TfrmGridCheckBoxMultiSelect.acPersistentSelectionExecute(Sender: TObject);
begin
  if acPersistentSelection.Checked then
    TableView.OptionsSelection.MultiSelectMode := msmPersistent
  else
    TableView.OptionsSelection.MultiSelectMode := msmStandard;
end;

initialization
  dxFrameManager.RegisterFrame(GridCheckBoxMultiSelectFrameID, TfrmGridCheckBoxMultiSelect,
    GridCheckBoxMultiSelectFrameName, GridFixedGroupsImageIndex, -1, TableBandedTableGroupIndex, -1);

end.
