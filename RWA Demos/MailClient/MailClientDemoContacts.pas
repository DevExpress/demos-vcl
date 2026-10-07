unit MailClientDemoContacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxGroupBox, cxSplitter,
  cxTextEdit, cxMemo, cxRichEdit, MailClientDemoBase, cxLabel, dxBar,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControl, dxBevel,
  MailClientDemoBaseGrid, MailClientDemoData, cxImage, cxDBEdit,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView,
  cxGridLayoutView, cxGridDBLayoutView, dxMailClientDemoUtils,
  dxLayoutControlAdapters, cxMRUEdit, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, Vcl.ActnList, dxRibbonGallery, cxRadioGroup,
  dxPScxExtComCtrlsLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxCommon,
  dxPScxSchedulerLnk, cxScrollBox, dxLayoutLookAndFeels, dxCore, dxDateRanges,
  cxGeometry, dxFramedControl, dxScrollbarAnnotations, System.Actions,
  dxPanel;

type
  TMailClientDemoContactsFrame = class(TMailClientDemoBaseGridFrame)
    dbcCustomerID: TcxGridDBColumn;
    dbcMiddleName: TcxGridDBColumn;
    dbcEmail: TcxGridDBColumn;
    dbcState: TcxGridDBColumn;
    dbcPhone: TcxGridDBColumn;
    dbcComments: TcxGridDBColumn;
    dbcPhoto: TcxGridDBColumn;
    dbcDiscountLevel: TcxGridDBColumn;
    dbcFirstName: TcxGridDBColumn;
    dbcLastName: TcxGridDBColumn;
    dbcGender: TcxGridDBColumn;
    dbcBirthDate: TcxGridDBColumn;
    dbcName: TcxGridDBColumn;
    dbcCity: TcxGridDBColumn;
    dbcNameFirstSymbol: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    stName: TcxStyle;
    cvContacts: TcxGridDBCardView;
    ciPhoto: TcxGridDBCardViewRow;
    ciName: TcxGridDBCardViewRow;
    ciPhone: TcxGridDBCardViewRow;
    ciEmail: TcxGridDBCardViewRow;
    ciAddress: TcxGridDBCardViewRow;
    cxdbImagePhoto: TcxDBImage;
    lciPhoto: TdxLayoutItem;
    actContactNew: TAction;
    actContactEdit: TAction;
    actContactDelete: TAction;
    actContactViewList: TAction;
    actContactViewAlphabetical: TAction;
    actContactViewByState: TAction;
    actContactViewCard: TAction;
    bmFrameBar1: TdxBar;
    bmFrameBar2: TdxBar;
    bmFrameBar3: TdxBar;
    lbContactNew: TdxBarLargeButton;
    lbContactDelete: TdxBarLargeButton;
    lbContactEdit: TdxBarLargeButton;
    lbContactFlip: TdxBarLargeButton;
    lcCurrentViewGroup_Root: TdxLayoutGroup;
    lcCurrentView: TdxLayoutControl;
    rbViewList: TcxRadioButton;
    lcCurrentViewItem1: TdxLayoutItem;
    rbViewAlphabetical: TcxRadioButton;
    lcCurrentViewItem2: TdxLayoutItem;
    rbViewByState: TcxRadioButton;
    lcCurrentViewItem3: TdxLayoutItem;
    rbViewCard: TcxRadioButton;
    lcCurrentViewItem4: TdxLayoutItem;
    lcCurrentViewSeparatorItem1: TdxLayoutSeparatorItem;
    lbViewList: TdxBarLargeButton;
    lbViewCard: TdxBarLargeButton;
    lbViewByState: TdxBarLargeButton;
    lbViewAlphabetical: TdxBarLargeButton;
    ComponentPrinterLink1: TdxGridReportLink;
    procedure tvMain1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dbcGenderCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvMainDblClick(Sender: TObject);
    procedure cvContactsStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure cvContactsGetCellHeight( Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo; var AHeight: Integer);
    procedure actContactNewExecute(Sender: TObject);
    procedure actContactEditExecute(Sender: TObject);
    procedure actContactDeleteExecute(Sender: TObject);
    procedure actContactViewExecute(Sender: TObject);
    procedure CustomDrawHighlightingCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    FFocusedCustomer: Integer;
    procedure SetViewAlphabetical;
    procedure SetViewByState;
    procedure SetViewList;
    procedure SetViewCard;
    procedure StoreFocusedCustomer;
    procedure RestoreFocusedCustomer;
  protected
    procedure AddLikeFilter; override;
    procedure AfterActivate; override;
    procedure ChangeView(AView: TdxContactsView);
    procedure DeleteCurrentContact;
    procedure EditContact(AIsNew: Boolean);
    function GetCaption: string; override;
    function GetContentZoomPosition: Integer; override;
    class function GetFrameID: Integer; override;
    procedure RepairLostOwingInheritanceSettings; override;
    procedure SetContentZoomPosition(Value: Integer); override;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Translate; override;
  end;

implementation

{$R *.dfm}

uses
  System.Math, dxGDIPlusClasses, MailClientDemoMain, fmContactUnit, LocalizationStrs, dxBarStrs;

{ TMailClientDemoContactsFrame }

constructor TMailClientDemoContactsFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  actContactViewExecute(actContactViewCard);
  actContactViewCard.Checked := True;
  cxdbImagePhoto.DataBinding.DataSource := DataController.DataSource;
end;

procedure TMailClientDemoContactsFrame.CustomDrawHighlightingCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited CustomDrawHighlightingCell(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TMailClientDemoContactsFrame.actContactNewExecute(Sender: TObject);
begin
  EditContact(True);
end;

procedure TMailClientDemoContactsFrame.actContactEditExecute(Sender: TObject);
begin
  EditContact(False);
end;

procedure TMailClientDemoContactsFrame.actContactDeleteExecute(Sender: TObject);
begin
  DeleteCurrentContact;
end;

procedure TMailClientDemoContactsFrame.actContactViewExecute(Sender: TObject);
begin
  ChangeView(TdxContactsView(TComponent(Sender).Tag));
end;

procedure TMailClientDemoContactsFrame.AddLikeFilter;
var
  ALike: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  ALike := mrueSearch.Text;
  if Trim(ALike) = '' then Exit;
  AItemList := DataController.Filter.Root.AddItemList(fboOr);
  if grMain.ActiveView = tvMain then
  begin
    AddLikeCondition(AItemList, dbcName, ALike);
    AddLikeCondition(AItemList, dbcEMail, ALike);
    AddLikeCondition(AItemList, dbcState, ALike);
    AddLikeCondition(AItemList, dbcCity, ALike);
    AddLikeCondition(AItemList, dbcPhone, ALike);
  end
  else
  begin
    AddLikeCondition(AItemList, ciName, ALike);
    AddLikeCondition(AItemList, ciPhone, ALike);
    AddLikeCondition(AItemList, ciEMail, ALike);
    AddLikeCondition(AItemList, ciAddress, ALike);
  end;
end;

procedure TMailClientDemoContactsFrame.AfterActivate;
begin
  if grMain.ActiveView = tvMain then
    tvMain1FocusedRecordChanged(tvMain, nil, tvMain.Controller.FocusedRecord, True)
  else
    tvMain1FocusedRecordChanged(cvContacts, nil, cvContacts.Controller.FocusedRecord, True);
  inherited AfterActivate;
end;

procedure TMailClientDemoContactsFrame.ChangeView(AView: TdxContactsView);
var
  APriorView: TcxCustomGridView;
begin
  StoreFocusedCustomer;
  grMain.BeginUpdate;
  try
    APriorView := grMain.ActiveView;
    case AView of
      cvList:
        SetViewList;
      cvAlphabetical:
        SetViewAlphabetical;
      cvByState:
        SetViewByState;
    else
      SetViewCard;
    end;
    if APriorView <> grMain.ActiveView then
      cxbSearch.Click;
  finally
    RestoreFocusedCustomer;
    grMain.EndUpdate;
  end;
  lcgRich.Visible := AView <> cvCard;
//  liRootSplitter.Visible := lgRich.Visible;
  actLayoutFlip.Enabled := AView <> cvCard;
  DoUpdateContentZoomState;
end;

procedure TMailClientDemoContactsFrame.DeleteCurrentContact;
var
  AIndex: Integer;
begin
  AIndex := DataController.FocusedRowIndex;
  DataSet.Delete;
  DataController.FocusedRowIndex := Min(AIndex, DataController.RowCount - 1);
end;

procedure TMailClientDemoContactsFrame.EditContact(AIsNew: Boolean);
var
  AContactForm: TfmContact;
begin
  DM.PinAllAlertWindows;
  AContactForm := TfmContact.Create(Application.MainForm, AIsNew);
  grMain.ActiveView.BeginUpdate(lsimImmediate);
  try
    AContactForm.ShowModal;
  finally
    AContactForm.Free;
    grMain.ActiveView.EndUpdate;
  end;
end;

function TMailClientDemoContactsFrame.GetCaption: string;
begin
  Result := cxGetResourceString(@sContactsColumn);
end;

function TMailClientDemoContactsFrame.GetContentZoomPosition: Integer;
begin
  if cxdbImagePhoto.Picture.Height > 0 then
    Result := Trunc(cxdbImagePhoto.Height / cxdbImagePhoto.Picture.Height * 100)
  else
    Result := 100;
end;

class function TMailClientDemoContactsFrame.GetFrameID: Integer;
begin
  Result := IDContacts;
end;

procedure TMailClientDemoContactsFrame.tvMain1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  AIsDataRow: Boolean;
begin
  AIsDataRow := (AFocusedRecord <> nil) and (AFocusedRecord is TcxGridDataRow);
  actContactEdit.Enabled := AIsDataRow;
  actContactDelete.Enabled := AIsDataRow;
  if AIsDataRow then
    PopulateCustomerInfoRich(cxreMain, DataSet)
  else
    cxreMain.Clear;
end;

procedure TMailClientDemoContactsFrame.StoreFocusedCustomer;
begin
  FFocusedCustomer := DataSet.FieldByName('CustomerID').AsInteger;
end;

procedure TMailClientDemoContactsFrame.RestoreFocusedCustomer;
begin
  DataSet.Locate('CustomerID', FFocusedCustomer, []);
end;

procedure TMailClientDemoContactsFrame.SetViewAlphabetical;
begin
  grMainLevel1.GridView := tvMain;
  dbcState.GroupIndex := -1;
  dbcNameFirstSymbol.GroupIndex := 0;
  DataController.Groups.FullExpand;
end;

procedure TMailClientDemoContactsFrame.SetViewByState;
begin
  grMainLevel1.GridView := tvMain;
  dbcNameFirstSymbol.GroupIndex := -1;
  dbcState.GroupIndex := 0;
  DataController.Groups.FullExpand;
end;

procedure TMailClientDemoContactsFrame.SetViewList;
begin
  grMainLevel1.GridView := tvMain;
  dbcState.GroupIndex := -1;
  dbcNameFirstSymbol.GroupIndex := -1;
end;

procedure TMailClientDemoContactsFrame.SetViewCard;
begin
  grMainLevel1.GridView := cvContacts;
end;

procedure TMailClientDemoContactsFrame.RepairLostOwingInheritanceSettings;
begin
  inherited RepairLostOwingInheritanceSettings;
  if DataController.DataSource = nil then
    DataController.DataSource := DM.dsContacts;
end;

procedure TMailClientDemoContactsFrame.SetContentZoomPosition(Value: Integer);
begin
end;

procedure TMailClientDemoContactsFrame.dbcGenderCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ANeedImages: array [0..1] of Integer = (6, 8);
begin
  ADone := CustomDrawImageOnCell(AViewInfo, ACanvas, DM.cxGridsImageList_16,
    ANeedImages, AViewInfo.GridRecord.Values[dbcGender.Index]);
end;

procedure TMailClientDemoContactsFrame.tvMainDblClick(Sender: TObject);
begin
  EditContact(False);
end;

procedure TMailClientDemoContactsFrame.cvContactsStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if AItem = ciName then
    AStyle := stName;
end;

procedure TMailClientDemoContactsFrame.cvContactsGetCellHeight(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; ACellViewInfo: TcxGridTableDataCellViewInfo;
  var AHeight: Integer);
begin
  inherited;
  if AItem = ciPhoto then
    AHeight := 150;
end;

procedure TMailClientDemoContactsFrame.Translate;
begin
  inherited;
  actContactNew.Caption := cxGetResourceString(@sContactNew);
  actContactEdit.Caption := cxGetResourceString(@sContactEdit);
  actContactDelete.Caption := cxGetResourceString(@dxSBAR_DELETE);
  actContactViewList.Caption := cxGetResourceString(@sContactViewList);
  actContactViewAlphabetical.Caption := cxGetResourceString(@sContactViewAlphabetical);
  actContactViewByState.Caption := cxGetResourceString(@sContactViewByState);
  actContactViewCard.Caption := cxGetResourceString(@sContactViewCard);
  actLayoutFlip.Caption := cxGetResourceString(@sFlip);
  bmFrameBar1.Caption := cxGetResourceString(@sNewEdit);
  bmFrameBar2.Caption := cxGetResourceString(@sCurrentView);
  bmFrameBar3.Caption := cxGetResourceString(@sLayout);
  dbcName.Caption := cxGetResourceString(@sName);
  dbcEmail.Caption := cxGetResourceString(@sEmail);
  dbcState.Caption := cxGetResourceString(@sStateColumn);
  dbcCity.Caption := cxGetResourceString(@sCityColumn);
  dbcPhone.Caption := cxGetResourceString(@sPhoneColumn);
end;

initialization
  dxMailClientDemoFrameManager.RegisterFrame(TMailClientDemoContactsFrame);

end.
