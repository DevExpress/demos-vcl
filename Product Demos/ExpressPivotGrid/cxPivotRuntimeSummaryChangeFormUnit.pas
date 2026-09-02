unit cxPivotRuntimeSummaryChangeFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Menus,
  Vcl.Dialogs, cxPivotSalesPersonFormUnit, cxCustomPivotGrid, cxDBPivotGrid,
  cxControls, cxGraphics, cxCheckBox, cxSpinEdit, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, dxBuiltInPopupMenu,
  cxClasses, cxCustomData, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, dxLayoutcxEditAdapters,
  dxLayoutLookAndFeels, Vcl.ActnList, dxLayoutControl, dxBarBuiltInMenu, System.Actions;

type
  TfrmRuntimeSummaryChange = class(TfrmSalesPerson)
    acTopValuesShowOthers: TAction;
    rbMultipleDataFields: TdxLayoutRadioButtonItem;
    rbOneDataField: TdxLayoutRadioButtonItem;
    dxLayoutGroup2: TdxLayoutGroup;
    lbRadioButton: TdxLayoutLabeledItem;
    pgfOASum: TcxDBPivotGridField;
    pgfOACount: TcxDBPivotGridField;
    pgfOAMin: TcxDBPivotGridField;
    pgfOAMax: TcxDBPivotGridField;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    procedure GetGroupHeaderStyle(Sender: TcxCustomPivotGrid;
      AItem: TcxPivotGridViewDataItem; var AStyle: TcxStyle);
    procedure rbClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBPivotGridLayoutChanged(Sender: TObject);
    procedure DBPivotGridClick(Sender: TObject);
    procedure DBPivotGridPopupMenusPopup(Sender: TcxCustomPivotGrid; ABuiltInMenu: TcxPivotGridCustomPopupMenu;
      var AHandled: Boolean);
  private
    InternalExecute: Boolean;
  protected
    function GetPivotGrid: TcxCustomPivotGrid; override;
    procedure ChangeOptionsVisibility(AValue: Boolean); override;
  public
    class function GetID: Integer; override;
  end;

implementation

uses cxPivotBaseFormUnit, cxPivotDataModule;

{$R *.dfm}

class function TfrmRuntimeSummaryChange.GetID: Integer;
begin
  Result := 36;
end;

function TfrmRuntimeSummaryChange.GetPivotGrid: TcxCustomPivotGrid;
begin
  Result := DBPivotGrid;
end;

procedure TfrmRuntimeSummaryChange.ChangeOptionsVisibility(AValue: Boolean);
begin
  inherited ChangeOptionsVisibility(AValue);
  dxLayoutSplitterItem1.Visible := lgTools.Visible;
end;

procedure TfrmRuntimeSummaryChange.rbClick(Sender: TObject);

  procedure ChangeVisible(AField: TcxPivotGridField; AVisible: Boolean);
  begin
    AField.Hidden := not AVisible;
    AField.Visible := AVisible;
  end;

const
  DataWidth: array[Boolean] of Integer = (550, 190);
begin
  if rbOneDataField.Checked then
    PivotGrid.PopupMenus.FieldHeaderMenu.Items := PivotGrid.PopupMenus.FieldHeaderMenu.Items + [fpmiSummaryType]
  else
    PivotGrid.PopupMenus.FieldHeaderMenu.Items := PivotGrid.PopupMenus.FieldHeaderMenu.Items - [fpmiSummaryType];
  PivotGrid.BeginUpdate;
  try
    lbRadioButton.Visible := rbOneDataField.Checked;
    ChangeVisible(pgfExtendedPrice, rbOneDataField.Checked);
    ChangeVisible(pgfOASum, rbMultipleDataFields.Checked);
    ChangeVisible(pgfOACount, rbMultipleDataFields.Checked);
    ChangeVisible(pgfOAMin, rbMultipleDataFields.Checked);
    ChangeVisible(pgfOAMax, rbMultipleDataFields.Checked);
    pgfCategoryName.Width := DataWidth[rbOneDataField.Checked] + 50;
  finally
    PivotGrid.EndUpdate;
    pgfSalesPerson.ApplyBestFit;
  end;
end;

type
  TPopupMenuAccess = class(TcxPivotGridPopupMenus);
  TBuiltInMenuAccess = class(TcxPivotGridCustomPopupMenu);

procedure TfrmRuntimeSummaryChange.DBPivotGridClick(Sender: TObject);
begin
  if PivotGrid.HitTest.HitAtField and (PivotGrid.HitTest.Field is TcxPivotGridField) and rbOneDataField.Checked then
  begin
    InternalExecute := True;
    try
      PivotGrid.FinishDragAndDrop(False);
      TPopupMenuAccess(PivotGrid.PopupMenus).DoShowPopupMenu(GetMouseCursorPos);
    finally
      InternalExecute := False;
    end;
  end;
end;

procedure TfrmRuntimeSummaryChange.DBPivotGridLayoutChanged(Sender: TObject);
const
  SummaryAsText: array[TcxPivotGridSummaryType] of string =
    ('Count', 'Sum', 'Min', 'Max', 'Average', 'StdDev', 'StdDevP', 'Variance', 'VarianceP', 'Custom', 'CountDistinct');
begin
  pgfExtendedPrice.Caption := 'Order Amount ' + Format('(%s)', [SummaryAsText[pgfExtendedPrice.SummaryType]])
end;

procedure TfrmRuntimeSummaryChange.DBPivotGridPopupMenusPopup(Sender: TcxCustomPivotGrid;
  ABuiltInMenu: TcxPivotGridCustomPopupMenu; var AHandled: Boolean);
var
  AAdapter: TdxCustomBuiltInPopupMenuAdapter;

  procedure PopulateLevelItems(AMenuItem: TMenuItem);
  var
    I: Integer;
    AMenuSubItem: TMenuItem;
    ASubItem: TComponent;
  begin
    if AMenuItem.Visible then
      for I := 0 to AMenuItem.Count - 1 do
      begin
        AMenuSubItem := AMenuItem.Items[I];
        ASubItem := TdxBuiltInPopupMenuAdapterHelper.AddMenuItem(AAdapter, AMenuSubItem,
          TBuiltInMenuAccess(ABuiltInMenu).AdapterClickHandler, TcxTag(AMenuSubItem), nil);
        if AMenuSubItem.SubMenuImages <> nil then
          AAdapter.SetImages(ASubItem, AMenuSubItem.SubMenuImages);
      end;
  end;

begin
  AHandled := InternalExecute;
  if AHandled then
  begin
    AAdapter := TdxBuiltInPopupMenuAdapterManager.GetActualAdapterClass.Create(nil);
    try
      AAdapter.SetImages(ABuiltInMenu.BuiltInMenu.Images);
      AAdapter.SetLookAndFeel(PivotGrid.LookAndFeel);
      PopulateLevelItems(ABuiltInMenu.BuiltInMenu.Items[0]);
      AHandled := AAdapter.Popup(GetMouseCursorPos);
    finally
      AAdapter.Free;
    end;
  end;
end;

procedure TfrmRuntimeSummaryChange.FormShow(Sender: TObject);
begin
  PivotGrid.PopupMenus.FieldHeaderMenu.Items := [fpmiOrder, fpmiFieldList, fpmiSummaryType];
  PivotGrid.PopupMenus.FieldHeaderMenu.SummaryItems := [stCount..stCountDistinct] - [stCustom];
  rbClick(nil);
end;

procedure TfrmRuntimeSummaryChange.GetGroupHeaderStyle(
  Sender: TcxCustomPivotGrid; AItem: TcxPivotGridViewDataItem;
  var AStyle: TcxStyle);
begin
  if AItem.GroupItem.RecordIndex = cxPivotGridOthersRecordIndex then
    AStyle := dmPivot.stBoldFont
end;

initialization
  TfrmRuntimeSummaryChange.Register;

finalization

end.
