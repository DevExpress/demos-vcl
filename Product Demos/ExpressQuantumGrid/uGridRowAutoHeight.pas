unit uGridRowAutoHeight;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxGridFrame, cxControls, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridDBTableView, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxEdit, Data.DB, cxDBData, cxClasses, cxDataStorage, cxMemo, cxImage,
  cxLookAndFeelPainters, cxCheckBox, cxButtons, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxSpinEdit, cxLabel, dxPSCore,
  cxLookAndFeels, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxCustomDemoFrameUnit,
  dxPScxCommon, cxNavigator, cxGroupBox, Vcl.Menus, dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl,
  dxLayoutcxEditAdapters, cxRadioGroup, Vcl.ActnList, dxDateRanges, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  System.Actions, dxPanel, cxGeometry, dxFramedControl;

type
  TfrmGridAutoHeight = class(TdxGridFrame)
    GridLevel: TcxGridLevel;
    DBTableView: TcxGridDBTableView;
    liImageHeight: TdxLayoutItem;
    edImageHeight: TcxSpinEdit;
    DBTableViewEmployeeID: TcxGridDBColumn;
    DBTableViewLastName: TcxGridDBColumn;
    DBTableViewFirstName: TcxGridDBColumn;
    DBTableViewTitle: TcxGridDBColumn;
    DBTableViewTitleOfCourtesy: TcxGridDBColumn;
    DBTableViewBirthDate: TcxGridDBColumn;
    DBTableViewHireDate: TcxGridDBColumn;
    DBTableViewAddress: TcxGridDBColumn;
    DBTableViewCity: TcxGridDBColumn;
    DBTableViewRegion: TcxGridDBColumn;
    DBTableViewPostalCode: TcxGridDBColumn;
    DBTableViewCountry: TcxGridDBColumn;
    DBTableViewHomePhone: TcxGridDBColumn;
    DBTableViewExtension: TcxGridDBColumn;
    DBTableViewPhoto: TcxGridDBColumn;
    DBTableViewNotes: TcxGridDBColumn;
    DBTableViewReportsTo: TcxGridDBColumn;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    rbAutoHeight: TdxLayoutRadioButtonItem;
    rbMemoAutoHeight: TdxLayoutRadioButtonItem;
    rbScaleImage: TdxLayoutRadioButtonItem;
    procedure DBTableViewGetCellHeight(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure edImageHeightPropertiesChange(Sender: TObject);
    procedure rbScaleImageClick(Sender: TObject);
  private
    RowHeights: array[0..1000] of Integer;
    procedure ReportLinkGetCellHeight(Sender: TdxGridReportLink;
      AView: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      ATableItem: TcxCustomGridTableItem; var AHeight: Integer);
  protected
    function GetDescription: string; override;
    function NeedSetup: Boolean; override;
    procedure PrepareLink(AReportLink: TBasedxReportLink); override;
  end;

implementation

{$R *.dfm}

uses maindata, dxFrames, FrameIDs, uStrsConst;

procedure TfrmGridAutoHeight.rbScaleImageClick(Sender: TObject);
begin
  liImageHeight.Enabled := rbScaleImage.Checked;
  if not rbAutoHeight.Checked then
  begin
    DBTableView.OnGetCellHeight := DBTableViewGetCellHeight;
    edImageHeightPropertiesChange(edImageHeight);
  end
  else
    DBTableView.OnGetCellHeight := nil;
  DBTableView.OptionsCustomize.DataRowSizing := rbAutoHeight.Checked;
  DBTableView.SizeChanged;
end;

procedure TfrmGridAutoHeight.DBTableViewGetCellHeight(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem;
  ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
begin
  if rbMemoAutoHeight.Checked and (AItem = DBTableViewNotes) then
    RowHeights[ARecord.RecordIndex] := AHeight
  else
    if (AItem = DBTableViewPHOTO) then
      if not TcxImageProperties(DBTableViewPHOTO.Properties).Stretch and rbScaleImage.Checked then
      begin
        AHeight := AHeight * edImageHeight.Value div 100;
        RowHeights[ARecord.RecordIndex] := AHeight;
      end
      else
        AHeight := RowHeights[ARecord.RecordIndex];
end;

procedure TfrmGridAutoHeight.edImageHeightPropertiesChange(Sender: TObject);
begin
   TcxImageProperties(DBTableViewPHOTO.Properties).Stretch := False;
   DBTableView.SizeChanged;
   TcxImageProperties(DBTableViewPHOTO.Properties).Stretch := True;
end;

function TfrmGridAutoHeight.GetDescription: string;
begin
  Result := sdxFrameAutoRowHeightDescription;
end;

function TfrmGridAutoHeight.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridAutoHeight.PrepareLink(AReportLink: TBasedxReportLink);
begin
  inherited;
  TdxGridReportLink(AReportLink).OnGetCellHeight := ReportLinkGetCellHeight;
end;

procedure TfrmGridAutoHeight.ReportLinkGetCellHeight(Sender: TdxGridReportLink;
  AView: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; 
  ATableItem: TcxCustomGridTableItem; var AHeight: Integer);
begin
  AHeight := RowHeights[ARecord.RecordIndex];
end;

initialization
  dxFrameManager.RegisterFrame(GridAutoHeightFrameID, TfrmGridAutoHeight,
    GridRowHeightFrameName, GridAutoHeightImageIndex, TableBandedTableGroupIndex, -1, -1);

end.
