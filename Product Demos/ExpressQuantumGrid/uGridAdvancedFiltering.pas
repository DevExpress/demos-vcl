unit uGridAdvancedFiltering;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uGridCustomSummaries, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxEdit, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxLookAndFeelPainters, cxFilterControl, cxButtons, cxDataStorage,
  cxSpinEdit, cxLookAndFeels, Vcl.Menus, cxContainer, cxLabel, cxNavigator, dxLayoutControlAdapters, dxLayoutContainer,
  dxLayoutControl, dxCustomDemoFrameUnit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, dxLayoutcxEditAdapters, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, dxShellDialogs, cxGroupBox, dxPanel,
  cxGeometry, dxFramedControl;

type
  TfrmAdvancedFilteringGrid = class(TfrmCustomGridSummaries)
    SaveDialog: TdxSaveFileDialog;
    OpenDialog: TdxOpenFileDialog;
    dxLayoutItem1: TdxLayoutItem;
    FilterControl: TcxFilterControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem2: TdxLayoutItem;
    btnApply: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    btnReset: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btOpen: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btSave: TcxButton;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    cbCriteriaDisplayStyle: TcxComboBox;
    dxLayoutItem6: TdxLayoutItem;
    procedure btnApplyClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btOpenClick(Sender: TObject);
    procedure btSaveClick(Sender: TObject);
    procedure cxComboBox1PropertiesEditValueChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}
uses
  FrameIDs, dxFrames, maindata, uStrsConst, cxFilterControlStrs, dxCore;


{ TfrmAdvancedFilteringGrid }

constructor TfrmAdvancedFilteringGrid.Create(AOwner: TComponent);
var
  AList: TcxFilterCriteriaItemList;
begin
  inherited Create(AOwner);

  OpenDialog.Title := cxGetResourceString(@cxSFilterControlDialogOpenDialogCaption);
  OpenDialog.DefaultExt := cxGetResourceString(@cxSFilterControlDialogFileExt);
  OpenDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);
  SaveDialog.Title := cxGetResourceString(@cxSFilterControlDialogSaveDialogCaption);
  SaveDialog.DefaultExt := OpenDialog.DefaultExt;
  SaveDialog.Filter := cxGetResourceString(@cxSFilterControlDialogFileFilter);

  GridDBTableView.DataController.Filter.Active := False;
  GridDBTableView.DataController.Filter.AddItem(nil, GridDBTableViewCOPIES, foGreaterEqual, 3, '3');
  GridDBTableView.DataController.Filter.AddItem(nil, GridDBTableViewCOPIES, foLessEqual, 7, '7');
  AList := GridDBTableView.DataController.Filter.Root.AddItemList(fboOr);
  GridDBTableView.DataController.Filter.AddItem(AList, GridDBTableViewPURCHASEDATE, foToday, Null, '');
  GridDBTableView.DataController.Filter.AddItem(AList, GridDBTableViewPURCHASEDATE, foInPast, Null, '');
  GridDBTableView.DataController.Filter.Active := True;

  FilterControl.UpdateFilter;
end;

procedure TfrmAdvancedFilteringGrid.cxComboBox1PropertiesEditValueChanged(Sender: TObject);
begin
  if cbCriteriaDisplayStyle.ItemIndex = 0 then
    GridDBTableView.FilterBox.CriteriaDisplayStyle := fcdsTokens
  else
    GridDBTableView.FilterBox.CriteriaDisplayStyle := fcdsText;
end;

function TfrmAdvancedFilteringGrid.GetDescription: string;
begin
  Result := sdxFrameAdvancedFilteringDescription;
end;

function TfrmAdvancedFilteringGrid.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmAdvancedFilteringGrid.btnApplyClick(Sender: TObject);
begin
  FilterControl.ApplyFilter;
end;

procedure TfrmAdvancedFilteringGrid.btnResetClick(Sender: TObject);
begin
  FilterControl.UpdateFilter;
  FilterControl.FilterText
end;

procedure TfrmAdvancedFilteringGrid.btOpenClick(Sender: TObject);
begin
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
    FilterControl.LoadFromFile(OpenDialog.FileName);
end;

procedure TfrmAdvancedFilteringGrid.btSaveClick(Sender: TObject);
begin
  if SaveDialog.Execute then
    FilterControl.SaveToFile(SaveDialog.FileName);
end;

initialization
  dxFrameManager.RegisterFrame(GridAdvancedFilteringFrameID, TfrmAdvancedFilteringGrid, GridDataAdvancedFilteringFrameName,
    GridAdvancedFilteringImageIndex, FilteringGroupIndex, SummariesGroupIndex, NewUpdatedGroupIndex);


end.
