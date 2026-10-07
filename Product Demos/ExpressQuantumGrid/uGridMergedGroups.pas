unit uGridMergedGroups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ActnList, Vcl.ImgList, dxmdaset,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridLevel, cxLabel, cxGrid, Vcl.ExtCtrls, cxImageComboBox,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, cxGroupBox, maindata,
  cxCurrencyEdit, cxDBLookupComboBox, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, Vcl.StdCtrls, cxButtons, dxLayoutControl, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridMergedGroups = class(TdxGridFrame)
    GridLevel1: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewPurchaseDate: TcxGridDBColumn;
    TableViewPaymentType: TcxGridDBColumn;
    TableViewPaymentAmount: TcxGridDBColumn;
    TableViewQuantity: TcxGridDBColumn;
    TableViewCompany: TcxGridDBColumn;
    TableViewModel: TcxGridDBColumn;
    TableViewPrice: TcxGridDBColumn;
    TableViewTrademark: TcxGridDBColumn;
    procedure TableViewDataControllerGroupingChanged(Sender: TObject);
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridMergedGroups: TfrmGridMergedGroups;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridMergedGroups.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TableView.Controller.FocusedRowIndex := 0;
  TableView.ViewData.Expand(True);
end;

function TfrmGridMergedGroups.GetDescription: string;
begin
  Result := sdxFrameMergedGroupsDescription;
end;

procedure TfrmGridMergedGroups.TableViewDataControllerGroupingChanged(
  Sender: TObject);
begin
  TableView.Controller.FocusedRowIndex := 0;
  TableView.ViewData.Expand(True);
end;

initialization
  dxFrameManager.RegisterFrame(GridMergedGroupsFrameID, TfrmGridMergedGroups,
    GridMergedGroupsFrameName, GridFixedGroupsImageIndex, -1, SortingGroupingGroupIndex, -1);

end.
