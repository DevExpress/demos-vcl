unit uGridCardView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxStyles, cxControls, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxCustomData, cxGraphics, cxFilter, cxData, cxEdit, Data.DB, cxDBData,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridCardView,
  cxGridDBCardView, cxGridLevel, cxDataStorage, cxLabel, cxContainer,
  cxCheckBox, cxLookAndFeels, cxLookAndFeelPainters, cxGridCustomLayoutView,
  cxNavigator, dxGDIPlusClasses, cxImage, cxGroupBox, dxCustomDemoFrameUnit, Vcl.Menus, dxLayoutControlAdapters, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxButtons, dxLayoutControl, cxMemo, cxCurrencyEdit, cxTextEdit, cxImageComboBox, cxHyperLinkEdit,
  cxBlobEdit, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, System.Actions, dxLayoutLookAndFeels,
  dxPanel, cxGeometry, dxFramedControl;

type
  TfrmCardViewGrid = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    DBCardView: TcxGridDBCardView;
    DBCardViewName: TcxGridDBCardViewRow;
    DBCardViewModification: TcxGridDBCardViewRow;
    DBCardViewCategory: TcxGridDBCardViewRow;
    DBCardViewPrice: TcxGridDBCardViewRow;
    DBCardViewBodyStyle: TcxGridDBCardViewRow;
    DBCardViewPhoto: TcxGridDBCardViewRow;
    DBCardViewInStock: TcxGridDBCardViewRow;
    DBCardViewHyperlink: TcxGridDBCardViewRow;
    DBCardViewTrademarkID: TcxGridDBCardViewRow;
    cvRowCaption: TcxGridDBCardViewRow;
    DBCardViewDescription: TcxGridDBCardViewRow;
    acIndividualCardExpansion: TAction;
    acRowLevelFiltering: TAction;
    acMoveIndividualRows: TAction;
    cbCardExpanding: TdxLayoutCheckBoxItem;
    cbFiltering: TdxLayoutCheckBoxItem;
    cbRowMoving: TdxLayoutCheckBoxItem;
    procedure cvRowCaptionGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: string);
    procedure acIndividualCardExpansionExecute(Sender: TObject);
    procedure acRowLevelFilteringExecute(Sender: TObject);
    procedure acMoveIndividualRowsExecute(Sender: TObject);
  private
    { Private declarations }
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  dxFrames, FrameIDs, maindata, uStrsConst;

{ TfrmCardViewGrid }

procedure TfrmCardViewGrid.acIndividualCardExpansionExecute(Sender: TObject);
begin
  DBCardView.OptionsCustomize.CardExpanding := acIndividualCardExpansion.Checked;
end;

procedure TfrmCardViewGrid.acRowLevelFilteringExecute(Sender: TObject);
begin
  DBCardView.OptionsCustomize.RowFiltering := acRowLevelFiltering.Checked;
end;

procedure TfrmCardViewGrid.acMoveIndividualRowsExecute(Sender: TObject);
begin
  DBCardView.OptionsCustomize.RowMoving := acMoveIndividualRows.Checked;
end;

procedure TfrmCardViewGrid.cvRowCaptionGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  AText := Format('Record ¹ %d', [ARecord.Index + 1]);
end;

function TfrmCardViewGrid.GetDescription: string;
begin
  Result := sdxFrameCardViewDescription;
end;

function TfrmCardViewGrid.NeedSetup: Boolean;
begin
  Result := True;
end;

initialization
  dxFrameManager.RegisterFrame(GridCardViewFrameID, TfrmCardViewGrid, GridCardViewFrameName,
    GridCardViewImageIndex, GridViewGroupIndex, -1, -1);

end.
