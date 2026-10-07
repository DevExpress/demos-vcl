unit uGridCustomSummaries;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, Data.DB,
  cxGridCommon, cxGridCustomView, cxGridLevel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxEdit, cxDBData, cxClasses, cxDataStorage,
  cxSpinEdit, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxLabel,
  cxNavigator, Vcl.Menus, cxSplitter, cxButtons, dxGDIPlusClasses, cxImage, cxGroupBox, dxLayoutControlAdapters,
  dxLayoutContainer, dxLayoutControl, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmCustomGridSummaries = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    GridDBTableView: TcxGridDBTableView;
    GridDBTableViewFIRSTNAME: TcxGridDBColumn;
    GridDBTableViewLASTNAME: TcxGridDBColumn;
    GridDBTableViewCOMPANYNAME: TcxGridDBColumn;
    GridDBTableViewPAYMENTTYPE: TcxGridDBColumn;
    GridDBTableViewPRODUCTID: TcxGridDBColumn;
    GridDBTableViewCUSTOMER: TcxGridDBColumn;
    GridDBTableViewPURCHASEDATE: TcxGridDBColumn;
    GridDBTableViewPAYMENTAMOUNT: TcxGridDBColumn;
    GridDBTableViewCOPIES: TcxGridDBColumn;
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

constructor TfrmCustomGridSummaries.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DoFullExpand;
end;

end.
