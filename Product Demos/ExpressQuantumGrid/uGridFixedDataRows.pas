unit uGridFixedDataRows;

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
  cxRadioGroup, cxTrackBar, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.Actions,
  dxScrollbarAnnotations, dxLayoutLookAndFeels, dxPanel,
  cxGeometry, dxFramedControl;

type
  TfrmGridFixedDataRows = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewPurchaseDate: TcxGridDBColumn;
    TableViewPaymentType: TcxGridDBColumn;
    TableViewPaymentAmount: TcxGridDBColumn;
    TableViewQuantity: TcxGridDBColumn;
    TableViewCompany: TcxGridDBColumn;
    TableViewTrademark: TcxGridDBColumn;
    TableViewModel: TcxGridDBColumn;
    TableViewPrice: TcxGridDBColumn;
    lgPinClickAction: TdxLayoutGroup;
    TableViewTrademarkLogo: TcxGridDBColumn;
    acPinVisibilityAlways: TAction;
    acPinVisibilityHover: TAction;
    acPinVisibilityNever: TAction;
    lgPinVisibility: TdxLayoutGroup;
    acPinVisibilityRowHover: TAction;
    tbSeparatorWidth: TcxTrackBar;
    liSeparatorWidth: TdxLayoutItem;
    rbShowPopup: TdxLayoutRadioButtonItem;
    rbNone: TdxLayoutRadioButtonItem;
    rbFixRowToTop: TdxLayoutRadioButtonItem;
    rbFixRowToBottom: TdxLayoutRadioButtonItem;
    rbPinVisibilityNever: TdxLayoutRadioButtonItem;
    rbPinVisibilityHover: TdxLayoutRadioButtonItem;
    rbPinVisibilityAlways: TdxLayoutRadioButtonItem;
    rbPinVisibilityRowHover: TdxLayoutRadioButtonItem;
    procedure acPinVisibilityExecute(Sender: TObject);
    procedure rbFixationCapabilityClick(Sender: TObject);
    procedure tbSeparatorWidthPropertiesChange(Sender: TObject);
  private
    FFirstShow: Boolean;
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure UpdateFixationCapability;
    procedure UpdatePinVisibility;
  public
    constructor Create(AOwner: TComponent); override;

    procedure AfterShow; override;
  end;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridFixedDataRows.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFirstShow := True;
end;

procedure TfrmGridFixedDataRows.AfterShow;
begin
  inherited AfterShow;
  if FFirstShow then
  begin
    FFirstShow := False;
    TcxGridDataRow(TableView.ViewData.Rows[0]).FixedState := rfsFixedToTop;
    TcxGridDataRow(TableView.ViewData.Rows[1]).FixedState := rfsFixedToTop;
    TcxGridDataRow(TableView.ViewData.Rows[2]).FixedState := rfsFixedToBottom;
  end;
end;

function TfrmGridFixedDataRows.GetDescription: string;
begin
  Result := sdxFrameFixedDataRowsDescription;
end;

function TfrmGridFixedDataRows.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridFixedDataRows.UpdateFixationCapability;
begin
  if rbShowPopup.Checked then
    TableView.FixedDataRows.PinClickAction := rpcaShowPopup
  else
    if rbFixRowToTop.Checked then
      TableView.FixedDataRows.PinClickAction := rpcaFixToTop
    else
      if rbFixRowToBottom.Checked then
        TableView.FixedDataRows.PinClickAction := rpcaFixToBottom
      else
        TableView.FixedDataRows.PinClickAction := rpcaNone;
end;

procedure TfrmGridFixedDataRows.rbFixationCapabilityClick(Sender: TObject);
begin
  UpdateFixationCapability;
end;

procedure TfrmGridFixedDataRows.tbSeparatorWidthPropertiesChange(Sender: TObject);
begin
  TableView.FixedDataRows.SeparatorWidth := tbSeparatorWidth.Position;
end;

procedure TfrmGridFixedDataRows.UpdatePinVisibility;
begin
  if acPinVisibilityNever.Checked then
    TableView.FixedDataRows.PinVisibility := rpvNever
  else
    if acPinVisibilityAlways.Checked then
      TableView.FixedDataRows.PinVisibility := rpvAlways
    else
      if acPinVisibilityHover.Checked then
        TableView.FixedDataRows.PinVisibility := rpvHotTrack
      else
        TableView.FixedDataRows.PinVisibility := rpvRowHotTrack;
end;

procedure TfrmGridFixedDataRows.acPinVisibilityExecute(Sender: TObject);
begin
  UpdatePinVisibility;
end;

initialization
  dxFrameManager.RegisterFrame(GridFixedDataRowsFrameID, TfrmGridFixedDataRows,
    GridFixedDataRowsFrameName, -1, -1, SortingGroupingGroupIndex, -1);

end.
