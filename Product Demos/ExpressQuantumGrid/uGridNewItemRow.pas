unit uGridNewItemRow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, uGridCustomSummaries, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxControls, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, Vcl.StdCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, Data.DB, cxDBData, cxClasses, cxLookAndFeels, cxLookAndFeelPainters,
  cxDataStorage, cxSpinEdit, cxContainer, cxLabel, Vcl.Menus, cxNavigator, dxLayoutControlAdapters, dxLayoutContainer,
  cxButtons, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels, System.Actions,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmNewItemRowGrid = class(TfrmCustomGridSummaries)
  protected
    function GetDescription: string; override;
  end;

implementation

{$R *.dfm}
uses
  dxFrames, FrameIDs, uStrsConst;

function TfrmNewItemRowGrid.GetDescription: string;
begin
  Result := sdxFrameNewItemRowDescription;
end;

initialization
  dxFrameManager.RegisterFrame(GridNewItemRowFrameID, TfrmNewItemRowGrid,
    GridNewItemRowFrameName, GridNewItemRowImageIndex, TableBandedTableGroupIndex, -1, -1);

end.
