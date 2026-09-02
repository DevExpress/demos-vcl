unit SelectDatasetForm;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, dxSpreadSheetReportDesigner,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxLayoutContainer, dxLayoutControlAdapters, cxClasses, Vcl.StdCtrls,
  cxButtons, cxContainer, cxEdit, cxListBox, dxLayoutControl, dxForms, dxLayoutcxEditAdapters, cxCustomListBox;

type
  TfrmSelectDataset = class(TdxForm)
    lbxDataSet: TcxListBox;
    btnApply: TcxButton;
    btnClear: TcxButton;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
  private
    FDetail: TdxSpreadSheetReportDetail;
    FSection: TdxSpreadSheetReportSection;
    procedure AddItem(ADetail: TdxSpreadSheetReportDetail);
    procedure PopulateDetails;
  public
    procedure SelectDataset(ADesigner: TdxSpreadSheetReportDesigner; ASection: TdxSpreadSheetReportSection);
  end;

var
  frmSelectDataset: TfrmSelectDataset;

implementation

{$R *.dfm}
type
  TdxSpreadSheetReportSectionAccess = class(TdxSpreadSheetReportSection);
  TdxSpreadSheetReportDataControllerAccess = class(TdxSpreadSheetReportDataController);

procedure TfrmSelectDataset.AddItem(ADetail: TdxSpreadSheetReportDetail);
begin
  if TdxSpreadSheetReportDataControllerAccess(ADetail.DataController).DisplayName <> '' then
  begin
    lbxDataSet.AddItem(TdxSpreadSheetReportDataControllerAccess(ADetail.DataController).DisplayName, ADetail);
    if ADetail.SectionID = TdxSpreadSheetReportSectionAccess(FSection).Index then
      lbxDataSet.ItemIndex := lbxDataSet.Count - 1;
  end;
end;

procedure TfrmSelectDataset.PopulateDetails;

  procedure DoProcessDetails(ADetails: TdxSpreadSheetReportDetails);
  var
    I: Integer;
  begin
    for I := 0 to ADetails.Count - 1 do
    begin
      AddItem(ADetails[I]);
      DoProcessDetails(ADetails[I].Details);
    end;
  end;

begin
  DoProcessDetails(FDetail.Details);
end;

procedure TfrmSelectDataset.SelectDataset(ADesigner: TdxSpreadSheetReportDesigner; ASection: TdxSpreadSheetReportSection);
begin
  FSection := ASection;
  if TdxSpreadSheetReportDataControllerAccess(TdxSpreadSheetReportSectionAccess(FSection).DataController).Owner is TdxSpreadSheetReportDetail then
    FDetail := TdxSpreadSheetReportDetail(TdxSpreadSheetReportDataControllerAccess(TdxSpreadSheetReportSectionAccess(FSection).DataController).Owner);
  if FDetail <> nil then
  begin
    AddItem(FDetail);
    PopulateDetails;
    if (ShowModal = mrOk) and (lbxDataSet.ItemObject <> nil) then
    begin
      if TdxSpreadSheetReportDetail(lbxDataSet.ItemObject) <> FDetail then
      begin
        FDetail.SectionID := -1;
        TdxSpreadSheetReportDetail(lbxDataSet.ItemObject).SectionID := TdxSpreadSheetReportSectionAccess(FSection).Index;
      end;
    end;
  end;
  Free;
end;

end.


