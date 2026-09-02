unit uGridFilterRow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxContainer, cxEdit, cxLabel, cxGrid,
  Vcl.ExtCtrls, maindata, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxClasses, cxGridLevel,
  cxDBLookupComboBox, cxCurrencyEdit, Vcl.StdCtrls, cxCheckBox, dxToggleSwitch,
  cxGroupBox, dxGDIPlusClasses, cxImage, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, cxButtons, dxLayoutControl,
  dxLayoutcxEditAdapters, dxCustomDemoFrameUnit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, System.Actions,
  dxLayoutLookAndFeels, dxPanel, cxGeometry,
  dxFramedControl;

type
  TfrmGridFilterRow = class(TdxGridFrame)
    TableView: TcxGridDBTableView;
    TableViewTrademark: TcxGridDBColumn;
    TableViewName: TcxGridDBColumn;
    TableViewModification: TcxGridDBColumn;
    TableViewPrice: TcxGridDBColumn;
    TableViewDoors: TcxGridDBColumn;
    TableViewBodyStyle: TcxGridDBColumn;
    TableViewCylinders: TcxGridDBColumn;
    TableViewHorsepower: TcxGridDBColumn;
    lgSetupThroughCheckBoxes: TdxLayoutGroup;
    acShowFilterRow: TAction;
    acAllowOperatorCustomization: TAction;
    cbAllowOperatorCustomization: TdxLayoutCheckBoxItem;
    cbShowFilterRow: TdxLayoutCheckBoxItem;
    procedure acShowFilterRowExecute(Sender: TObject);
    procedure acAllowOperatorCustomizationExecute(Sender: TObject);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmGridFilterRow: TfrmGridFilterRow;

implementation

{$R *.dfm}

uses
  dxCore, dxFrames, FrameIDs, uStrsConst, cxGridDemoUtils;

{ TfrmGridFilterRow }

constructor TfrmGridFilterRow.Create(AOwner: TComponent);
var
  AFilterRow: TcxGridFilterRow;
begin
  inherited Create(AOwner);
  AFilterRow := TableView.ViewData.FilterRow;
  AFilterRow.Values[TableViewTrademark.Index] := 1;
  TableViewTrademark.Options.FilterRowOperator := foNotEqual;
  AFilterRow.Values[TableViewDoors.Index] := 2;
  TableViewDoors.Options.FilterRowOperator := foGreater;
  AFilterRow.Values[TableViewCylinders.Index] := 4;
  AFilterRow.Values[TableViewPrice.Index] := 30000;
  TableViewPrice.Options.FilterRowOperator := foLess;
  TableViewName.Options.FilterRowOperator := foContains;
  TableViewModification.Options.FilterRowOperator := foContains;
  TableViewHorsepower.Options.FilterRowOperator := foContains;
end;

function TfrmGridFilterRow.GetDescription: string;
begin
  Result := sdxFrameFilterRowDescription;
end;

function TfrmGridFilterRow.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridFilterRow.acAllowOperatorCustomizationExecute(Sender: TObject);
begin
  TableView.FilterRow.OperatorCustomization := acAllowOperatorCustomization.Checked;
end;

procedure TfrmGridFilterRow.acShowFilterRowExecute(Sender: TObject);
begin
  TableView.FilterRow.Visible := acShowFilterRow.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(GridFilterRowFrameID, TfrmGridFilterRow,
    GridFilterRowFrameName, GridFindPanelImageIndex, -1, FilteringGroupIndex, -1);

end.
