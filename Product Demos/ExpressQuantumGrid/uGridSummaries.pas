unit uGridSummaries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uGridCustomSummaries, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, Data.DB, cxDBData, cxClasses, cxDataStorage, cxSpinEdit, cxLabel,
  cxContainer, cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, cxNavigator, Vcl.Menus, dxLayoutControlAdapters,
  dxLayoutContainer, cxButtons, dxLayoutControl, dxLayoutcxEditAdapters, dxToggleSwitch, Vcl.ActnList, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridSummaries = class(TfrmCustomGridSummaries)
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    acColumnsQuickCustomizing: TAction;
    cbColumnsQuickCustomizing: TdxLayoutCheckBoxItem;
    procedure acColumnsQuickCustomizingExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  end;

implementation

{$R *.dfm}
uses
  dxFrames, FrameIDs, mainData, uStrsConst;

{ TfrmGridSummaries }

function TfrmGridSummaries.GetDescription: string;
begin
  Result := sdxFrameSummariesDescription;
end;

function TfrmGridSummaries.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridSummaries.acColumnsQuickCustomizingExecute(Sender: TObject);
begin
  GridDBTableView.OptionsCustomize.ColumnsQuickCustomization := acColumnsQuickCustomizing.Checked;
  GridDBTableView.OptionsView.Indicator := acColumnsQuickCustomizing.Checked;
end;

initialization
  dxFrameManager.RegisterFrame(GridSummaryFrameID, TfrmGridSummaries,
    GridDataSummariesFrameName, GridSummaryImageIndex, -1, -1, SummariesGroupIndex);

end.
