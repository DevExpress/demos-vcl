unit uGridWinExplorerView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels, dxCore,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxGridCustomView, cxGridCustomTableView,
  cxGridWinExplorerView, cxGridDBWinExplorerView, cxClasses, cxGridLevel,
  cxLabel, cxGrid, Vcl.ExtCtrls, maindata, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxGallery, dxGalleryControl, cxGroupBox, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxCustomDemoFrameUnit, dxLayoutcxEditAdapters, dxToggleSwitch, Vcl.ActnList,
  dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridWinExplorerView = class(TdxGridFrame)
    Level: TcxGridLevel;
    WinExplorerView: TcxGridDBWinExplorerView;
    WinExplorerViewTrademark: TcxGridDBWinExplorerViewItem;
    WinExplorerViewName: TcxGridDBWinExplorerViewItem;
    WinExplorerViewCategory: TcxGridDBWinExplorerViewItem;
    WinExplorerViewBodyStyle: TcxGridDBWinExplorerViewItem;
    WinExplorerViewTransmissionTypeName: TcxGridDBWinExplorerViewItem;
    WinExplorerViewDescription: TcxGridDBWinExplorerViewItem;
    WinExplorerViewImage: TcxGridDBWinExplorerViewItem;
    WinExplorerViewPhoto: TcxGridDBWinExplorerViewItem;
    WinExplorerViewInStock: TcxGridDBWinExplorerViewItem;
    dxLayoutItem1: TdxLayoutItem;
    gcDisplayModes: TdxGalleryControl;
    gcgGroup: TdxGalleryControlGroup;
    gciExtraLargeIcons: TdxGalleryControlItem;
    gciLargeIcons: TdxGalleryControlItem;
    gciMediumIcons: TdxGalleryControlItem;
    gciSmallIcons: TdxGalleryControlItem;
    gciList: TdxGalleryControlItem;
    gciTiles: TdxGalleryControlItem;
    gciContent: TdxGalleryControlItem;
    dxLayoutItem2: TdxLayoutItem;
    cbHotTrack: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    cbMultiSelect: TcxCheckBox;
    dxLayoutItem4: TdxLayoutItem;
    cbShowCheckBoxes: TcxCheckBox;
    dxLayoutItem5: TdxLayoutItem;
    cbShowExpandButtons: TcxCheckBox;
    dxLayoutItem6: TdxLayoutItem;
    cbSortBy: TcxComboBox;
    dxLayoutItem7: TdxLayoutItem;
    cbGroupBy: TcxComboBox;
    lgCheckBoxes: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    acHotTrack: TAction;
    acMultiSelect: TAction;
    acShowCheckBoxes: TAction;
    acShowExpandButtons: TAction;
    procedure cbGroupByPropertiesEditValueChanged(Sender: TObject);
    procedure cbSortByPropertiesEditValueChanged(Sender: TObject);
    procedure gcDisplayModesItemClick(Sender: TObject; AItem: TdxGalleryControlItem);
    procedure acHotTrackExecute(Sender: TObject);
    procedure acMultiSelectExecute(Sender: TObject);
    procedure acShowCheckBoxesExecute(Sender: TObject);
    procedure acShowExpandButtonsExecute(Sender: TObject);
  private
    function GetGroupItemByTag(AValue: Integer): TcxGridWinExplorerViewItem;
    function GetSortOrderByText(AValue: string): TdxSortOrder;
    function GetDisplayModeByTag(AValue: Integer): TcxGridWinExplorerViewDisplayMode;
    procedure SetGroupItem(AValue: TcxGridWinExplorerViewItem);
    procedure SetGroupItemSortOrder(ASortOrder: TdxSortOrder);
    procedure SetTextItemSortOrder(ASortOrder: TdxSortOrder);
    procedure SetDisplayMode(AValue: TcxGridWinExplorerViewDisplayMode);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure ShowCheckBoxes(AValue: Boolean);
    procedure ShowExpandButtons(AValue: Boolean);
    procedure UpdateGroup;
    procedure UpdateSortOrder;
  end;

var
  frmGridWinExplorerView: TfrmGridWinExplorerView;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, uStrsConst;

{ TfrmGridWinExplorerView }

procedure TfrmGridWinExplorerView.acHotTrackExecute(Sender: TObject);
begin
  WinExplorerView.OptionsBehavior.HotTrack := acHotTrack.Checked;
end;

procedure TfrmGridWinExplorerView.acMultiSelectExecute(Sender: TObject);
begin
  WinExplorerView.OptionsSelection.MultiSelect := acMultiSelect.Checked;
end;

procedure TfrmGridWinExplorerView.acShowCheckBoxesExecute(Sender: TObject);
begin
  ShowCheckBoxes(acShowCheckBoxes.Checked);
end;

procedure TfrmGridWinExplorerView.acShowExpandButtonsExecute(Sender: TObject);
begin
  ShowExpandButtons(acShowExpandButtons.Checked);
end;

procedure TfrmGridWinExplorerView.cbGroupByPropertiesEditValueChanged(Sender: TObject);
begin
  UpdateGroup;
end;

procedure TfrmGridWinExplorerView.cbSortByPropertiesEditValueChanged(Sender: TObject);
begin
  UpdateSortOrder;
end;

procedure TfrmGridWinExplorerView.gcDisplayModesItemClick(Sender: TObject; AItem: TdxGalleryControlItem);
var
  ADisplayMode: TcxGridWinExplorerViewDisplayMode;
begin
  ADisplayMode := GetDisplayModeByTag(AItem.Tag);
  SetDisplayMode(ADisplayMode);
end;

procedure TfrmGridWinExplorerView.ShowCheckBoxes(AValue: Boolean);
begin
  WinExplorerView.OptionsView.ShowItemCheckBoxes := AValue;
end;

procedure TfrmGridWinExplorerView.ShowExpandButtons(AValue: Boolean);
begin
  WinExplorerView.OptionsView.ShowExpandButtons := AValue;
end;

procedure TfrmGridWinExplorerView.UpdateGroup;
var
  AGroupItemTag: Integer;
  AGroupItem: TcxGridWinExplorerViewItem;
begin
  WinExplorerView.BeginGroupingUpdate;
  try
    SetGroupItemSortOrder(soNone);
    AGroupItemTag := cbGroupBy.Properties.Items.IndexOf(cbGroupBy.Text);
    AGroupItem := GetGroupItemByTag(AGroupItemTag);
    SetGroupItem(AGroupItem);
    UpdateSortOrder;
    WinExplorerView.Controller.FocusNextRecord(cxRecordIndexNone, True, False, False, False);
  finally
    WinExplorerView.EndGroupingUpdate;
  end;
end;

procedure TfrmGridWinExplorerView.UpdateSortOrder;
var
  ASortOrder: TdxSortOrder;
begin
  WinExplorerView.BeginSortingUpdate;
  try
    ASortOrder := GetSortOrderByText(cbSortBy.Text);
    SetGroupItemSortOrder(ASortOrder);
    SetTextItemSortOrder(ASortOrder);
  finally
    WinExplorerView.EndSortingUpdate;
  end;
end;

function TfrmGridWinExplorerView.GetGroupItemByTag(AValue: Integer): TcxGridWinExplorerViewItem;
var
  AItem: TcxCustomGridTableItem;
begin
  AItem := WinExplorerView.FindItemByTag(AValue);
  Result := TcxGridWinExplorerViewItem(AItem);
end;

function TfrmGridWinExplorerView.GetSortOrderByText(AValue: string): TdxSortOrder;
begin
  if AValue = 'Ascending' then
    Result := soAscending
  else
    if AValue = 'Descending' then
      Result := soDescending
    else
      Result := soNone;
end;

function TfrmGridWinExplorerView.GetDescription: string;
begin
  Result := sdxFrameWinExplorerDescription;
end;

function TfrmGridWinExplorerView.NeedSetup: Boolean;
begin
  Result := True;
end;

function TfrmGridWinExplorerView.GetDisplayModeByTag(AValue: Integer): TcxGridWinExplorerViewDisplayMode;
begin
  Result := TcxGridWinExplorerViewDisplayMode(AValue);
end;

procedure TfrmGridWinExplorerView.SetGroupItem(AValue: TcxGridWinExplorerViewItem);
begin
  WinExplorerView.ItemSet.GroupItem := AValue;
end;

procedure TfrmGridWinExplorerView.SetGroupItemSortOrder(ASortOrder: TdxSortOrder);
begin
  if WinExplorerView.ItemSet.GroupItem <> nil then
    WinExplorerView.ItemSet.GroupItem.SortOrder := ASortOrder;
end;

procedure TfrmGridWinExplorerView.SetTextItemSortOrder(ASortOrder: TdxSortOrder);
begin
  if WinExplorerView.ItemSet.TextItem <> nil then
    WinExplorerView.ItemSet.TextItem.SortOrder := ASortOrder;
end;

procedure TfrmGridWinExplorerView.SetDisplayMode(AValue: TcxGridWinExplorerViewDisplayMode);
begin
  WinExplorerView.ActiveDisplayMode := AValue;
end;

initialization
  dxFrameManager.RegisterFrame(GridWinExplorerViewFrameID, TfrmGridWinExplorerView,
    GridWinExplorerViewFrameName, GridWinExplorerViewImageIndex, GridViewGroupIndex, -1, -1);

end.
