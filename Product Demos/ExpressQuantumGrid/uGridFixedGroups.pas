unit uGridFixedGroups;

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
  dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridFixedGroups = class(TdxGridFrame)
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
    acFixedGroups: TAction;
    cbFixedGroups: TdxLayoutCheckBoxItem;
    procedure acFixedGroupsExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridFixedGroups: TfrmGridFixedGroups;

implementation

uses
  dxCore, dxFrames, FrameIDs, uStrsConst;

{$R *.dfm}

constructor TfrmGridFixedGroups.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  TableView.Controller.FocusedRowIndex := 0;
  TableView.ViewData.Expand(True);
end;

function TfrmGridFixedGroups.GetDescription: string;
begin
  Result := sdxFrameFixedGroupsDescription;
end;

function TfrmGridFixedGroups.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridFixedGroups.acFixedGroupsExecute(Sender: TObject);
begin
  TableView.OptionsBehavior.FixedGroups := acFixedGroups.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(GridFixedGroupsFrameID, TfrmGridFixedGroups,
    GridFixedGroupsFrameName, GridFixedGroupsImageIndex, -1, SortingGroupingGroupIndex, -1);

end.
