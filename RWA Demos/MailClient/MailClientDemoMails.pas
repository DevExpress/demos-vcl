unit MailClientDemoMails;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Data.DB, dxCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxSplitter, cxTextEdit, cxMemo,
  cxRichEdit, MailClientDemoBase, MailClientDemoBaseGrid, MailClientDemoData, dxMailClientDemoUtils,
  Vcl.Grids, Vcl.DBGrids, cxLabel, dxBar, dxLayoutcxEditAdapters,
  dxLayoutContainer, dxLayoutControl, dxBevel, cxBlobEdit, cxCalendar,
  cxImageComboBox, dxLayoutControlAdapters, cxMRUEdit, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, Vcl.ImgList,
  dxSkinsdxBarPainter, Vcl.ActnList, dxRibbon, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxExtComCtrlsLnk, dxPSRELnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk, dxPScxCommon,
  dxLayoutLookAndFeels, dxUIAdorners, dxGDIPlusClasses, dxCoreGraphics,
  dxDateRanges, dxShellDialogs, cxGeometry, dxFramedControl,
  dxScrollbarAnnotations, System.Actions, dxPanel, dxNavBarCollns, dxNavBarBase, dxNavBar;

type
  TMailClientDemoMailsFrame = class(TMailClientDemoBaseGridFrame)
    actAttachmentOpen: TAction;
    actAttachmentSaveAs: TAction;
    actMailDelete: TAction;
    actMailForward: TAction;
    actMailNew: TAction;
    actMailReply: TAction;
    actMailReplyAll: TAction;
    actMailUnreadState: TAction;
    actPriorityHigh: TAction;
    actPriorityLow: TAction;
    actPriorityMedium: TAction;
    AutoMakeReadTimer: TTimer;
    bAttachmentOpen: TdxBarButton;
    bAttachmentSaveAs: TdxBarButton;
    bChangeUnreadState: TdxBarButton;
    bForward: TdxBarButton;
    bMailPriorityHigh: TdxBarButton;
    bMailPriorityLow: TdxBarButton;
    bMailPriorityMedium: TdxBarButton;
    bmtbMailDelete: TdxBar;
    bmtbMailLayout: TdxBar;
    bmtbMailNew: TdxBar;
    bmtbMailTags: TdxBar;
    bReply: TdxBarButton;
    bReplyAll: TdxBarButton;
    ComponentPrinterLink1: TdxGridReportLink;
    dbcAttachment: TcxGridDBColumn;
    dbcAttachmentID: TcxGridDBColumn;
    dbcBoxID: TcxGridDBColumn;
    dbcContent: TcxGridDBColumn;
    dbcContentFileName: TcxGridDBColumn;
    dbcDate: TcxGridDBColumn;
    dbcDateOnly: TcxGridDBColumn;
    dbcFrom: TcxGridDBColumn;
    dbcID: TcxGridDBColumn;
    dbcIsAttachment: TcxGridDBColumn;
    dbcIsUnread: TcxGridDBColumn;
    dbcIsUnreadSwitch: TcxGridDBColumn;
    dbcPriority: TcxGridDBColumn;
    dbcSubject: TcxGridDBColumn;
    dxBarGroup1: TdxBarGroup;
    lbDeleteMail: TdxBarLargeButton;
    lbMailFlip: TdxBarLargeButton;
    lbMailRotate: TdxBarLargeButton;
    lbNewMail: TdxBarLargeButton;
    pmMails: TdxRibbonPopupMenu;
    pmPriority: TdxRibbonPopupMenu;
    SaveDialog1: TdxSaveFileDialog;
    siAttachment: TdxBarSubItem;
    UpdateMailPreviewTimer: TTimer;
    siMailPriority: TdxBarSubItem;
    amMails: TdxUIAdornerManager;
    bdgUrgent: TdxBadge;
    dxNavBar1: TdxNavBar;
    procedure actAttachmentOpenExecute(Sender: TObject);
    procedure actAttachmentSaveAsExecute(Sender: TObject);
    procedure actMailDeleteExecute(Sender: TObject);
    procedure actMailForwardExecute(Sender: TObject);
    procedure actMailNewExecute(Sender: TObject);
    procedure actMailReplyAllExecute(Sender: TObject);
    procedure actMailReplyExecute(Sender: TObject);
    procedure actMailUnreadStateExecute(Sender: TObject);
    procedure actPriorityExecute(Sender: TObject);
    procedure AutoMakeReadTimerTimer(Sender: TObject);
    procedure CustomDrawHighlightingCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dbcDateOnlyGetFilterValues(Sender: TcxCustomGridTableItem;
      AValueList: TcxDataFilterValueList);
    procedure pmMailsPopup(Sender: TObject);
    procedure pmPriorityPopup(Sender: TObject);
    procedure tvMainCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tvMainCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure tvMainDataControllerGroupingChanged(Sender: TObject);
    procedure tvMainFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure tvMainSelectionChanged(Sender: TcxCustomGridTableView);
    procedure tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      var AStyle: TcxStyle);
    procedure tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: String);
    procedure UpdateMailPreviewTimerTimer(Sender: TObject);
    procedure tvMainKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tvMainDataControllerDataChanged(Sender: TObject);
    procedure bdgUnreadCustomDrawBackground(AManager: TdxUIAdornerManager; AAdorner: TdxCustomAdorner; 
      ACanvas: TdxGPCanvas; AViewInfo: TdxCustomAdornerViewInfo; var ADone: Boolean);
    procedure dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure dxNavBar1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
  private
    FLockFocusedRecordChangedCount: Integer;
    FPreviewRecordID: Integer;
    FTempFiles: TStringList;
    FUnreadRecordID: Integer;
    procedure AddOriginalMessage(AMode: TdxMakeModeType; ABoxKind: Integer; ARecord: TcxCustomGridRecord; ARichTo: TcxRichEdit);
    procedure AddOriginalMessageHeadlines(AMode: TdxMakeModeType; ARich: TcxRichEdit; ADate: TDateTime);
    procedure ChangePriority(APriority: Integer);
    procedure ClearMailCaption(ACount: Integer);
    procedure DeleteMails;
    function DeleteMailsFromTrash(ATrashBoxID: Integer): Integer;
    procedure DeleteTempFiles;
    procedure DoAttachmentOpen;
    procedure DoAttachmentSaveAs;
    procedure DoSelectFocusedRecord;
    procedure DoToggleUnreadState(AID: Integer);
    function GetBoxID(ABoxNumber, ABoxKind: Integer): Integer;
    function GetFocusedMailBoxID: Integer;
    function GetFocusedMailBoxKind: Integer;
    function GetFocusedMailBoxNumber: Integer;
    procedure LockFocusedRecordChanged;
    procedure MakeMail(AMode: TdxMakeModeType);
    function MoveMailsToTrash(AFromBoxID: Integer): Integer;
    procedure PopulateRichWithChildrenMailsList;
    procedure SetColumnsCaptions(ABoxKind: Integer);
    procedure SetEnablePopupAttachment;
    procedure SetFocusedMail(AMailBoxID, AMailID: Integer);
    procedure StartAutoMakeReadTimer(ARecordIndex: Integer);
    procedure StopAutoMakeReadTimer;
    procedure ToggleUnreadState;
    procedure UnlockFocusedRecordChanged;
    procedure UpdateMailPreview;
    procedure UpdateBadges;
    procedure WMFocusMailMessage(var AMessage: TMessage); message WM_FOCUSMAILMESSAGE;
    procedure WMBackstageVisibilityChangedMessage(var AMessage: TMessage); message WM_BACKSTAGEVISIBILITYCHANGED;
  protected
    procedure AddLikeFilter; override;
    procedure AfterActivate; override;
    function GetCaption: string; override;
    class function GetFrameID: Integer; override;
    procedure RepairLostOwingInheritanceSettings; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeforeDestruction; override;
    procedure BeginFiltering; override;
    procedure EndFiltering; override;
    procedure SaveMail(ABoxNumber, ABoxKind, AMailID, APriority, AAttachmentID: Integer;
      const AEmails, ASubject: string; AIsUnread: Boolean; ADate: TDateTime; AContent: TMemoryStream);
    procedure Translate; override;
  end;

implementation

uses
  System.Math, Winapi.ShellAPI, cxDataUtils, dxmdaset, cxVariants, MailClientDemoMain, cxGridDBDataDefinitions, fmMailUnit,
  LocalizationStrs, dxBarStrs;

{$R *.dfm}

{ TMailClientDemoMailsFrame }

constructor TMailClientDemoMailsFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FPreviewRecordID := -1;
  FTempFiles := TStringList.Create;
  DM.TimerNewMails.Enabled := True;
  // This item fixes slow scrolling. 
  cxreMain.Style.LookAndFeel.ScrollbarMode := sbmClassic;
end;

destructor TMailClientDemoMailsFrame.Destroy;
begin
  FreeAndNil(FTempFiles);
  inherited Destroy;
end;

procedure TMailClientDemoMailsFrame.actAttachmentOpenExecute(Sender: TObject);
begin
  DoAttachmentOpen;
end;

procedure TMailClientDemoMailsFrame.actAttachmentSaveAsExecute(Sender: TObject);
begin
  DoAttachmentSaveAs;
end;

procedure TMailClientDemoMailsFrame.actMailDeleteExecute(Sender: TObject);
begin
  DeleteMails;
end;

procedure TMailClientDemoMailsFrame.actMailForwardExecute(Sender: TObject);
begin
  MakeMail(dxmmtForward);
end;

procedure TMailClientDemoMailsFrame.actMailNewExecute(Sender: TObject);
begin
  MakeMail(dxmmtNew);
end;

procedure TMailClientDemoMailsFrame.actMailReplyAllExecute(Sender: TObject);
begin
  MakeMail(dxmmtReplyAll);
end;

procedure TMailClientDemoMailsFrame.actMailReplyExecute(Sender: TObject);
begin
  MakeMail(dxmmtReply);
end;

procedure TMailClientDemoMailsFrame.actMailUnreadStateExecute(Sender: TObject);
begin
  ToggleUnreadState;
end;

procedure TMailClientDemoMailsFrame.actPriorityExecute(Sender: TObject);
begin
  ChangePriority(TComponent(Sender).Tag);
end;

procedure TMailClientDemoMailsFrame.AutoMakeReadTimerTimer(Sender: TObject);
var
  AFocusedRecordIndex: Integer;
begin
  AFocusedRecordIndex := DataController.FocusedRecordIndex;
  if (AFocusedRecordIndex >= 0) and (DataController.Values[AFocusedRecordIndex, dbcID.Index] = FUnreadRecordID) then
    DoToggleUnreadState(FUnreadRecordID);
  StopAutoMakeReadTimer;
end;

procedure TMailClientDemoMailsFrame.bdgUnreadCustomDrawBackground(AManager: TdxUIAdornerManager; 
  AAdorner: TdxCustomAdorner; ACanvas: TdxGPCanvas; AViewInfo: TdxCustomAdornerViewInfo;
  var ADone: Boolean);
var
  ABadge: TdxBadgeViewInfo;
begin
  inherited;
  ABadge := TdxBadgeViewInfo(AViewInfo);
  ACanvas.Rectangle(ABadge.Bounds, dxColorToAlphaColor(ABadge.Color), dxColorToAlphaColor(ABadge.Color));
  ADone := True;
end;

procedure TMailClientDemoMailsFrame.CustomDrawHighlightingCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited CustomDrawHighlightingCell(Sender, ACanvas, AViewInfo, ADone);
end;

procedure TMailClientDemoMailsFrame.dbcDateOnlyGetFilterValues(
  Sender: TcxCustomGridTableItem; AValueList: TcxDataFilterValueList);
var
  I: Integer;
  AFutureFilters: set of 1..255;
  ACurrValue: Integer;
begin
  AFutureFilters := [Integer(foTomorrow), Integer(foNext7Days), Integer(foNextWeek), Integer(foNext14Days),
    Integer(foNextTwoWeeks), Integer(foNext30Days), Integer(foNextMonth), Integer(foNextYear),
     Integer(foInFuture)];

  for I := AValueList.Count - 1 downto 0 do
    if (AValueList[I].Kind = fviSpecial) and (VarType(AValueList[I].Value) = varByte) then
    begin
      ACurrValue := AValueList[I].Value;
      if ACurrValue in AFutureFilters then
        AValueList.Delete(I);
    end;
end;

procedure TMailClientDemoMailsFrame.pmMailsPopup(Sender: TObject);
begin
  SetEnablePopupAttachment;
end;

procedure TMailClientDemoMailsFrame.pmPriorityPopup(Sender: TObject);
begin
  case GetCurrentRecordItemValue(dbcPriority.Index) of
    pvLow:
      bMailPriorityLow.Down := True;
    pvMedium:
      bMailPriorityMedium.Down := True;
  else
    bMailPriorityHigh.Down := True;
  end;
end;

procedure TMailClientDemoMailsFrame.tvMainCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  ARecord: TcxCustomGridRecord;
begin
  AHandled := ACellViewInfo.Item = dbcPriority;
  if AHandled then
    ShowPopupMenuFromCursorPos(tvMain, pmPriority)
  else
    if ACellViewInfo.Item = dbcIsUnreadSwitch then
    begin
      AHandled := True;
      ARecord := ACellViewInfo.GridRecord;
      DoToggleUnreadState(ARecord.Values[dbcID.Index]);
      StopAutoMakeReadTimer;
    end;
end;

procedure TMailClientDemoMailsFrame.tvMainCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  case GetFocusedMailBoxKind of
    bkRoot, bkInbox:
      MakeMail(dxmmtReply);
    bkSent, bkDeleted:
      MakeMail(dxmmtView);
    else
      MakeMail(dxmmtEdit);
  end;
end;

procedure TMailClientDemoMailsFrame.tvMainDataControllerGroupingChanged(Sender: TObject);
begin
  DataController.Groups.FullExpand;
end;

procedure TMailClientDemoMailsFrame.tvMainFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  if FLockFocusedRecordChangedCount > 0 then
    Exit;
  UpdateMailPreviewTimer.Enabled := False;
  UpdateMailPreviewTimer.Enabled := True;
end;

procedure TMailClientDemoMailsFrame.tvMainKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
    actMailDelete.Execute;
end;

procedure TMailClientDemoMailsFrame.tvMainDataControllerDataChanged(Sender: TObject);
begin
  inherited;
  UpdateBadges;
end;

procedure TMailClientDemoMailsFrame.tvMainSelectionChanged(Sender: TcxCustomGridTableView);

  function GetSelectedDataRecordCount: Integer;
  var
    I: Integer;
  begin
    Result := 0;
    for I := 0 to Controller.SelectedRecordCount - 1 do
      if Controller.SelectedRecords[I] is TcxGridDataRow then
        Inc(Result);
  end;

var
  ASelectedDataRecordCount: Integer;
begin
  ASelectedDataRecordCount := GetSelectedDataRecordCount;
  actMailReply.Enabled := ASelectedDataRecordCount = 1;
  actMailReplyAll.Enabled := ASelectedDataRecordCount > 1;
  actMailForward.Enabled := ASelectedDataRecordCount > 0;
  actMailDelete.Enabled := actMailForward.Enabled;
  actMailUnreadState.Enabled := actMailForward.Enabled;
  siMailPriority.Enabled := actMailForward.Enabled;
end;

procedure TMailClientDemoMailsFrame.tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if not (ARecord is TcxGridDataRow) or ARecord.Values[dbcIsUnread.Index] then
    AStyle := DM.stUnreadStyle;
end;

procedure TMailClientDemoMailsFrame.tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
begin
  if AValue = 1 then
    AText := Format('1 %s', [cxGetResourceString(@sMessage)]);
end;

procedure TMailClientDemoMailsFrame.UpdateMailPreviewTimerTimer(Sender: TObject);
begin
  TTimer(Sender).Enabled := False;
  UpdateMailPreview;
end;

procedure TMailClientDemoMailsFrame.BeforeDestruction;
begin
  DeleteTempFiles;
  inherited BeforeDestruction;
end;

procedure TMailClientDemoMailsFrame.BeginFiltering;
begin
  LockFocusedRecordChanged;
  grMain.BeginUpdate;
end;

procedure TMailClientDemoMailsFrame.EndFiltering;
begin
  DataController.FocusedRowIndex := 0;
  DataController.Groups.FullExpand;
  grMain.EndUpdate;
  UnlockFocusedRecordChanged;
  tvMainFocusedRecordChanged(tvMain, nil, Controller.FocusedRecord, True);
  DoSelectFocusedRecord;
  SetColumnsCaptions(DM.mdMailBoxesBoxKind.Value);
end;

procedure TMailClientDemoMailsFrame.SaveMail(ABoxNumber, ABoxKind, AMailID, APriority, AAttachmentID: Integer;
  const AEmails, ASubject: string; AIsUnread: Boolean; ADate: TDateTime; AContent: TMemoryStream);
begin
  if (AMailID <> -1) and (FPreviewRecordID = AMailID) then
    FPreviewRecordID := -1;
  DM.AddMail(AEmails, ASubject, AIsUnread, AMailID, APriority, GetBoxID(ABoxNumber, ABoxKind), AAttachmentID,
    ADate, AContent)
end;

procedure TMailClientDemoMailsFrame.AddLikeFilter;
var
  ALike: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  ALike := mrueSearch.Text;
  if Trim(ALike) = '' then Exit;
  AItemList := DataController.Filter.Root.AddItemList(fboOr);
  AddLikeCondition(AItemList, dbcSubject, ALike);
  AddLikeCondition(AItemList, dbcFrom, ALike);
end;

procedure TMailClientDemoMailsFrame.AfterActivate;
  function FindGroupByTag(ATag: Integer): TdxNavBarGroup;
  var
    I: Integer;
  begin
    Result := nil;
    for I := 0 to dxNavBar1.Groups.Count - 1 do
      if dxNavBar1.Groups[I].Tag = ATag then
        Exit(dxNavBar1.Groups[I]);
  end;
var
  AGroup: TdxNavBarGroup;
  AItem: TdxNavBarItem;
begin
  inherited AfterActivate;
  if FFirstActivate then
  begin
    dxNavBar1.Items.Clear;
    dxNavBar1.Groups.Clear;
    DM.dsMailBoxes.DataSet.DisableControls;
    try
      DM.dsMailBoxes.DataSet.First;
      while not DM.dsMailBoxes.DataSet.Eof do
      begin
        if DM.dsMailBoxes.DataSet.FieldByName('ParentID').AsInteger = 0 then
        begin
          AGroup := dxNavBar1.Groups.Add;
          AGroup.Tag := DM.dsMailBoxes.DataSet.FieldByName('ID').AsInteger;
          AGroup.Caption := DM.dsMailBoxes.DataSet.FieldByName('Name').AsString;
        end
        else
        begin
          AGroup := FindGroupByTag(DM.dsMailBoxes.DataSet.FieldByName('ParentID').AsInteger);
          if AGroup <> nil then
          begin
            AItem := dxNavBar1.Items.Add;
            AItem.Tag := DM.dsMailBoxes.DataSet.FieldByName('ID').AsInteger;
            AItem.Caption := DM.dsMailBoxes.DataSet.FieldByName('Name').AsString;
            AGroup.CreateLink(AItem);
          end;
        end;
        DM.dsMailBoxes.DataSet.Next;
      end;
    finally
      DM.dsMailBoxes.DataSet.First;
      DM.dsMailBoxes.DataSet.EnableControls;
    end;
    dxNavBar1.OnLinkClick(Self, dxNavBar1.Groups[0].Links[0]);
    dxNavBar1.Groups[0].Links[0].Selected := True;
    SetFocusedMail(7, 108);
  end;
end;

function TMailClientDemoMailsFrame.GetCaption: string;
begin
  Result := cxGetResourceString(@sMainMenuMailCaption);
end;

class function TMailClientDemoMailsFrame.GetFrameID: Integer;
begin
  Result := IDMails;
end;

procedure TMailClientDemoMailsFrame.RepairLostOwingInheritanceSettings;
begin
  inherited RepairLostOwingInheritanceSettings;
  if DataController.DataSource = nil then
    DataController.DataSource := DM.dsMails;
  if tvMain.PopupMenu = nil then
    tvMain.PopupMenu := pmMails;
end;

procedure TMailClientDemoMailsFrame.AddOriginalMessage(AMode: TdxMakeModeType; ABoxKind: Integer; ARecord: TcxCustomGridRecord;
  ARichTo: TcxRichEdit);
begin
  ARichTo.Lines.Text := VarToStr(ARecord.Values[dbcContent.Index]);
  if not (AMode in [dxmmtEdit, dxmmtView]) then
    AddOriginalMessageHeadlines(AMode, ARichTo, ARecord.Values[dbcDate.Index]);
end;

procedure TMailClientDemoMailsFrame.AddOriginalMessageHeadlines(AMode: TdxMakeModeType; ARich: TcxRichEdit;
  ADate: TDateTime);
begin
  if AMode = dxmmtForward then
  begin
    ARich.Lines.Insert(0, '');
    ARich.Lines.Insert(0, '================= Original message text ===============');
  end
  else
  begin
    ARich.Lines.Insert(0, '>> ');
    ARich.Lines.Insert(0, DateTimeToStr(ADate) + ', you wrote:');
    ARich.Lines.Insert(0, '------- Your Original Message -------');
  end;
end;

procedure TMailClientDemoMailsFrame.ChangePriority(APriority: Integer);
var
  ARecord: TcxCustomGridRecord;
  I: Integer;
begin
  DataController.BeginUpdate;
  try
    for I := 0 to Controller.SelectedRecordCount - 1 do
    begin
      ARecord := Controller.SelectedRecords[I];
      if ARecord is TcxGridDataRow then
      begin
        DataController.FocusedRecordIndex := ARecord.RecordIndex;
        SetCurrentRecordItemValue(dbcPriority.Index, APriority);
      end;
    end;
  finally
    DataController.EndUpdate;
  end;
end;

procedure TMailClientDemoMailsFrame.ClearMailCaption(ACount: Integer);
var
  ACaption: string;
begin
  if ACount = 1 then
    ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessage)])
  else
    ACaption := Format('%d %s', [ACount, cxGetResourceString(@sMessages)]);
  lblSubject.Caption := ACaption;
  lciFrom.Visible := False;
  lciDate.Visible := False;
end;

procedure TMailClientDemoMailsFrame.DeleteMails;
var
  AIndex, ABoxID, ABoxKind: Integer;
begin
  ABoxID := GetFocusedMailBoxID;
  ABoxKind := DM.mdMailBoxesBoxKind.Value;
  AIndex := Controller.FocusedRow.Index;
  if ABoxKind = bkDeleted then
    AIndex := AIndex - DeleteMailsFromTrash(ABoxID)
  else
    AIndex := AIndex - MoveMailsToTrash(ABoxID) + 1;
  Controller.FocusedRowIndex := AIndex;
  DoSelectFocusedRecord;
end;

function TMailClientDemoMailsFrame.DeleteMailsFromTrash(ATrashBoxID: Integer): Integer;
var
  I, AUnreadCount: Integer;
begin
  Result := Controller.SelectedRecordCount - 1;
  DataController.BeginUpdate;
  try
    AUnreadCount := 0;
    for I := 0 to Controller.SelectedRecordCount - 1 do
      with Controller.SelectedRecords[I] do
        if Values[dbcIsUnread.Index] and IsData then
          Inc(AUnreadCount);
    if AUnreadCount <> 0 then
      DM.UnreadMailsOffset(ATrashBoxID, -AUnreadCount);
    DataController.DeleteSelection;
  finally
    DataController.EndUpdate;
  end;
end;

procedure TMailClientDemoMailsFrame.DeleteTempFiles;
var
  I: Integer;
  AFileName: string;
begin
  for I := 0 to FTempFiles.Count - 1 do
  begin
    AFileName := FTempFiles[I];
    DeleteFile(AFileName);
  end;
end;

procedure TMailClientDemoMailsFrame.DoAttachmentOpen;
var
  ATempFile: string;
begin
  if not DM.mdAttachments.Locate('ID', GetCurrentRecordItemValue(dbcAttachmentID.Index), []) then
    Exit;
  ATempFile := dxCreateTempFile(ExtractFileExt(DM.mdAttachments.FieldByName('FileName').AsString));
  TBlobField(DM.mdAttachments.FieldByName('Attachment')).SaveToFile(ATempFile);
  ShellExecute(Handle, 'OPEN', PChar(ATempFile), nil, nil, SW_SHOWMAXIMIZED);
  FTempFiles.Add(ATempFile);
end;

procedure TMailClientDemoMailsFrame.DoAttachmentSaveAs;

  procedure PrepareSaveDialog(AFileName: string);
  var
    AExt: string;
  begin
    AExt := ExtractFileExt(AFileName);
    if (AFileName <> '') and (AExt <> '') then
      Delete(AFileName, Pos(AExt, AFileName), Length(AExt));
    if (AExt <> '') and (AExt[1] = '.') then
      Delete(AExt, 1, 1);
    SaveDialog1.FileName := AFileName;
    SaveDialog1.Filter := 'All Files (*.*)|*.*';
    if AExt <> '' then
    begin
      SaveDialog1.DefaultExt := AExt;
      SaveDialog1.Filter := SaveDialog1.Filter +
        '|' + AnsiUpperCase(AExt) + ' Files (*.' + AnsiUpperCase(AExt) + ')|*.' + AExt;
      SaveDialog1.FilterIndex := 2;
    end
    else
      SaveDialog1.FilterIndex := 1;
  end;

begin
  if not DM.mdAttachments.Locate('ID', GetCurrentRecordItemValue(dbcAttachmentID.Index), []) then
    Exit;
  PrepareSaveDialog(ExtractFileName(DM.mdAttachments.FieldByName('FileName').AsString));
  if not SaveDialog1.Execute then
    Exit;
  ShowHourglassCursor;
  try
    TBlobField(DM.mdAttachments.FieldByName('Attachment')).SaveToFile(SaveDialog1.FileName);
  finally
    HideHourglassCursor;
  end;
end;

procedure TMailClientDemoMailsFrame.DoSelectFocusedRecord;
begin
  if DataController.RowCount > 0 then
  begin
    DataController.ClearSelection;
    DataController.SelectRows(DataController.FocusedRowIndex, DataController.FocusedRowIndex);
  end
  else
  begin
    ClearMailCaption(0);
    cxreMain.Lines.Clear;
  end;
end;

procedure TMailClientDemoMailsFrame.DoToggleUnreadState(AID: Integer);
var
  AIsUnread: Boolean;
  ABoxID: Integer;
  AFocusedRecordIndex: Integer;
begin
  LockFocusedRecordChanged;
  try
    DataController.LocateByKey(AID);
    AFocusedRecordIndex := DataController.FocusedRecordIndex;
    AIsUnread := DataController.Values[AFocusedRecordIndex, dbcIsUnread.Index];
    ABoxID := DataController.Values[AFocusedRecordIndex, dbcBoxID.Index];
    if not AIsUnread then
      DM.UnreadMailsOffset(ABoxID, 1)
    else
      DM.UnreadMailsOffset(ABoxID, -1);
    SetCurrentRecordItemValue(dbcIsUnread.Index, not AIsUnread);
  finally
    UnlockFocusedRecordChanged;
  end;
end;

procedure TMailClientDemoMailsFrame.dxNavBar1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
  function GetFilter: string;
  var
    I: Integer;
  begin
    Result := '';
    for I := 0 to AGroup.LinkCount - 1 do
      Result := Result + ', ' + AGroup.Links[I].Item.Tag.ToString;
    Delete(Result, 1, 2);
  end;

begin
  dxNavBar1.DeSelectLinks;
  DM.clMails.DisableControls;
  try
    DM.clMails.Filter := Format('BoxID in (%s)', [GetFilter]);
    DM.clMails.Filtered := True;
  finally
    DM.clMails.EnableControls;
  end;
end;

procedure TMailClientDemoMailsFrame.dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  DM.clMails.DisableControls;
  try
    DM.clMails.Filter := Format('BoxID in (%s)', [ALink.Item.Tag.ToString]);
    DM.clMails.Filtered := True;
  finally
    DM.clMails.EnableControls;
  end;
end;

function TMailClientDemoMailsFrame.GetBoxID(ABoxNumber, ABoxKind: Integer): Integer;
var
  ARecNo: Integer;
begin
  ARecNo := DM.mdMailBoxes.RecNo;
  DM.mdMailBoxes.DisableControls;
  try
    DM.mdMailBoxes.Locate('BoxNumber; BoxKind', VarArrayOf([ABoxNumber, ABoxKind]), []);
    Result := DM.mdMailBoxesID.Value;
  finally
    DM.mdMailBoxes.RecNo := ARecNo;
    DM.mdMailBoxes.EnableControls;
  end;
end;

function TMailClientDemoMailsFrame.GetFocusedMailBoxID: Integer;
begin
  Result := DM.mdMailBoxesID.Value;
end;

function TMailClientDemoMailsFrame.GetFocusedMailBoxKind: Integer;
begin
  Result := DM.mdMailBoxesBoxKind.Value;
end;

function TMailClientDemoMailsFrame.GetFocusedMailBoxNumber: Integer;
begin
  Result := DM.mdMailBoxesBoxNumber.Value;
end;

procedure TMailClientDemoMailsFrame.LockFocusedRecordChanged;
begin
  Inc(FLockFocusedRecordChangedCount);
end;

procedure TMailClientDemoMailsFrame.MakeMail(AMode: TdxMakeModeType);

  procedure AddCaption(ARich: TcxRichEdit; AFrom: string);
  begin
    if AMode = dxmmtForward then
      ARich.Lines.Insert(0, 'This is a forwarded message:' + sLineBreak + sLineBreak)
    else
      ARich.Lines.Insert(0, Format('       Hello, %s!%s%s', [AFrom, sLineBreak, sLineBreak]));
    SendMessage(ARich.InnerControl.Handle, WM_KEYDOWN, VK_UP, 0);
    SendMessage(ARich.InnerControl.Handle, WM_KEYDOWN, VK_UP, 0);
  end;

  function GetSubject(const ASubject: string): string;
  const
    S: array[Boolean] of string = ('RE: ', 'FW: ');
  var
    st: string;
  begin
    Result := ASubject;
    st := S[AMode = dxmmtForward];
    if UpperCase(Copy(Result, 1, Length(st))) <> st then
      Result := st + Result;
  end;

  procedure CustomizeMail(ABoxNumber, ABoxKind: Integer; AFmMail: TfmMail; ARecord: TcxCustomGridRecord);
  var
    AFrom, ASubject: string;
  begin
    AFmMail.BoxNumber := ABoxNumber;
    AFrom := '';
    if ARecord <> nil then
      AFrom := VarToStr(ARecord.Values[dbcFrom.Index]);
    AFmMail.teTo.Text := AFrom;
    if AMode <> dxmmtNew then
    begin
      ASubject := ARecord.Values[dbcSubject.Index];
      if AMode in [dxmmtReply, dxmmtReplyAll, dxmmtForward] then
        ASubject := GetSubject(ASubject);
      AFmMail.edtSubject.Text := ASubject;
      AddOriginalMessage(AMode, ABoxKind, ARecord, AFmMail.Editor);
    end;
    if not (AMode in [dxmmtEdit, dxmmtView]) then
      AddCaption(AFmMail.Editor, AFrom);
    AFmMail.SetModified(False);
  end;

  procedure AddMailForm(ABoxNumber, ABoxKind: Integer; ARecord: TcxCustomGridRecord);
  var
    AFmMail: TfmMail;
  begin
    AFmMail := TfmMail.Create(Self);
    AFmMail.EditorUndoController.Lock;
    try
      CustomizeMail(ABoxNumber, ABoxKind, AFmMail, ARecord);
      AFmMail.Mode := AMode;
      if AMode = dxmmtEdit then
        AFmMail.MailID := ARecord.Values[dbcID.Index];
    finally
      AFmMail.EditorUndoController.UnLock;
    end;
    AFmMail.Show;
  end;

var
  I: Integer;
  ABoxNumber, ABoxKind: Integer;
begin
  ShowHourglassCursor;
  try
    ABoxNumber := GetFocusedMailBoxNumber;
    ABoxKind := GetFocusedMailBoxKind;
    if AMode = dxmmtNew then
      AddMailForm(ABoxNumber, ABoxKind, nil)
    else
      for I := 0 to Controller.SelectedRecordCount - 1 do
        if Controller.SelectedRecords[I] is TcxGridDataRow then
          AddMailForm(ABoxNumber, ABoxKind, Controller.SelectedRecords[I]);
  finally
    HideHourglassCursor;
  end;
end;

function TMailClientDemoMailsFrame.MoveMailsToTrash(AFromBoxID: Integer): Integer;
var
  I, ATrashBoxID: Integer;
  ARecord: TcxCustomGridRecord;
  ADataSet: TDataSet;
begin
  ADataSet := DM.clMails;
  ADataSet.DisableControls;
  try
    Result := 0;
    ATrashBoxID := GetBoxID(GetFocusedMailBoxNumber, bkDeleted);
    if ATrashBoxID < 0 then
      Exit;
    for I := Controller.SelectedRecordCount - 1 downto 0 do
    begin
      ARecord := Controller.SelectedRecords[I];
      if ARecord is TcxGridDataRow then
      begin
        Inc(Result);
        DataController.LocateByKey(DataController.GetRecordId(ARecord.RecordIndex));
        ADataSet.Edit;
        if ADataSet.FieldByName('IsUnread').AsBoolean then
        begin
          ADataSet.FieldByName('IsUnread').Value := False;
          DM.UnreadMailsOffset(ADataSet.FieldValues['BoxID'], -1);
        end;
        ADataSet.FieldByName('BoxID').Value := ATrashBoxID;
        ADataSet.Post;
      end;
      ARecord.Selected := False;
    end;
  finally
    ADataSet.EnableControls;
  end;
end;

procedure TMailClientDemoMailsFrame.PopulateRichWithChildrenMailsList;

  procedure PrepareRich(AList: TList);
  var
    I: Integer;
  begin
    cxreMain.Lines.Clear;
    for I := 0 to AList.Count - 1 do
      InitializeRich(cxreMain, GetProgramPath + 'Data\MailsListFmt.rtf', True);
  end;

var
  AList: TList;
  I, AGroupIndex, AIndex: Integer;
  AFrom, ASubject, ADate: string;
begin
  StopAutoMakeReadTimer;
  FPreviewRecordID := -1;
  AList := TList.Create;
  try
    cxreMain.Lines.BeginUpdate;
    try
      AGroupIndex := DataController.Groups.DataGroupIndexByRowIndex[Controller.FocusedRowIndex];
      DataController.Groups.LoadRecordIndexes(AList, AGroupIndex);
      ClearMailCaption(AList.Count);
      PrepareRich(AList);
      for I := 0 to AList.Count - 1 do
      begin
        AIndex := Integer(AList[I]);
        ASubject := DataController.Values[AIndex, dbcSubject.Index];
        AFrom := DataController.GetDisplayText(AIndex, dbcFrom.Index);
        ADate := DateTimeToStr(DataController.Values[AIndex, dbcDate.Index]);
        ReplaceInRich(cxreMain, '__From__', AFrom + ' (' + ADate + ')', True);
        ReplaceInRich(cxreMain, '__Subject__', ASubject, True);
      end;
    finally
      cxreMain.Lines.EndUpdate;
    end;
  finally
    FreeAndNil(AList);
  end;
end;

procedure TMailClientDemoMailsFrame.SetColumnsCaptions(ABoxKind: Integer);

  procedure SetCaptions(AFromCaption, ADateCaption: string);
  begin
    dbcFrom.Caption := AFromCaption;
    dbcDateOnly.Caption := ADateCaption;
  end;

begin
  case ABoxKind of
    bkSent, bkDrafts:
      SetCaptions(cxGetResourceString(@sTo), cxGetResourceString(@sSent));
    bkDeleted:
      SetCaptions(cxGetResourceString(@sTo_From), cxGetResourceString(@sDate))
  else
    SetCaptions(cxGetResourceString(@sFrom), cxGetResourceString(@sReceived));
  end;
  dbcDate.Caption := cxGetResourceString(@sDate);
end;

procedure TMailClientDemoMailsFrame.SetEnablePopupAttachment;
begin
  siAttachment.Enabled := GetCurrentRecordItemValue(dbcIsAttachment.Index) = True;
end;

procedure TMailClientDemoMailsFrame.SetFocusedMail(AMailBoxID, AMailID: Integer);
begin
  DM.mdMailBoxes.Locate('ID', AMailBoxID, []);
  DataController.Groups.FullExpand;
  DataController.FocusedRecordIndex := DataController.FindRecordIndexByKey(AMailID);
  DoSelectFocusedRecord;
  if IsActive then
    grMain.SetFocus;
end;

procedure TMailClientDemoMailsFrame.StartAutoMakeReadTimer(ARecordIndex: Integer);
begin
  AutoMakeReadTimer.Enabled := DataController.Values[ARecordIndex, dbcIsUnread.Index];
  if AutoMakeReadTimer.Enabled then
    FUnreadRecordID := DataController.Values[ARecordIndex, dbcID.Index];
end;

procedure TMailClientDemoMailsFrame.StopAutoMakeReadTimer;
begin
  FUnreadRecordID := -1;
  AutoMakeReadTimer.Enabled := False;
end;

procedure TMailClientDemoMailsFrame.ToggleUnreadState;
var
  I: Integer;
  ARecord: TcxCustomGridRecord;
  AKey: Variant;
begin
  StopAutoMakeReadTimer;
  LockFocusedRecordChanged;
  try
    grMain.BeginUpdate;
    try
      AKey := DataController.GetKeyFieldsValues;
      try
        for I := Controller.SelectedRecordCount - 1 downto 0 do
        begin
          ARecord := Controller.SelectedRecords[I];
          if ARecord is TcxGridDataRow then
            DoToggleUnreadState(ARecord.Values[dbcID.Index]);
        end;
      finally
        DataController.LocateByKey(AKey);
      end;
    finally
      grMain.EndUpdate;
    end;
  finally
    UnlockFocusedRecordChanged;
  end;
end;

procedure TMailClientDemoMailsFrame.Translate;
begin
  inherited Translate;
//  actAttachmentOpen.Caption := cxGetResourceString(@sAttachmentOpen);
//  actAttachmentSaveAs.Caption := cxGetResourceString(@sAttachmentSaveAs);
  actMailDelete.Caption := cxGetResourceString(@dxSBAR_DELETE);
  actMailForward.Caption := cxGetResourceString(@sMailForward);
  actMailNew.Caption := cxGetResourceString(@sMailNew);
  actMailReply.Caption := cxGetResourceString(@sMailReply);
  actMailReplyAll.Caption := cxGetResourceString(@sMailReplyAll);
  actMailUnreadState.Caption := cxGetResourceString(@sMailUnreadState);
  actPriorityHigh.Caption := cxGetResourceString(@sMailPriorityHigh);
  actPriorityLow.Caption := cxGetResourceString(@sMailPriorityLow);
  actPriorityMedium.Caption := cxGetResourceString(@sMailPriorityMedium);
  lbMailFlip.Caption := cxGetResourceString(@sFlip);
  lbMailRotate.Caption := cxGetResourceString(@sRotate);
  siMailPriority.Caption := cxGetResourceString(@sPriorityColumn);
  bmtbMailDelete.Caption := cxGetResourceString(@dxSBAR_DELETE);
  bmtbMailLayout.Caption := cxGetResourceString(@sLayout);
  bmtbMailNew.Caption := cxGetResourceString(@sNewRespondGroup);
  bmtbMailTags.Caption := cxGetResourceString(@sTags);
  dbcSubject.Caption := cxGetResourceString(@sSubjectColumn);
  SetColumnsCaptions(DM.mdMailBoxesBoxKind.Value);
  tvMain.DataController.Summary.SummaryGroups[0].SummaryItems[0].Format := Format('# %s', [cxGetResourceString(@sMessages)]);
end;

procedure TMailClientDemoMailsFrame.UnlockFocusedRecordChanged;
begin
  Dec(FLockFocusedRecordChangedCount);
end;

procedure TMailClientDemoMailsFrame.UpdateMailPreview;
begin
  ShowHourglassCursor;
  try
    if DataController.FocusedRowIndex < 0 then
    begin
      cxreMain.Lines.Clear;
      ClearMailCaption(0);
      StopAutoMakeReadTimer;
      FPreviewRecordID := -1;
    end
    else
    begin
      with DataController do
      begin
        if GetRowInfo(FocusedRowIndex).Level < Groups.GroupingItemCount then
          PopulateRichWithChildrenMailsList
        else
          if FPreviewRecordID <> Values[FocusedRecordIndex, dbcID.Index] then
          begin
            lblSubject.Caption := GetLabelCaption(Values[FocusedRecordIndex, dbcSubject.Index]);
            if not lciFrom.Visible then
            begin
              lciFrom.Visible := True;
              lciDate.Visible := True;
            end;
            lciFrom.CaptionOptions.Text := Format('%s: %s', [dbcFrom.Caption,
              DM.ReplaceEmailsWithContacts(VarToStr(Values[FocusedRecordIndex, dbcFrom.Index]))]);
            lciDate.CaptionOptions.Text := Format('%s: %s', [dbcDate.Caption,
              DateTimeToStr(Values[FocusedRecordIndex, dbcDate.Index])]);
            cxreMain.Text := VarToStr(Values[FocusedRecordIndex, dbcContent.Index]);
            StartAutoMakeReadTimer(FocusedRecordIndex);
            FPreviewRecordID := Values[FocusedRecordIndex, dbcID.Index];
          end;
        DataController.Groups.FullExpand;
        DoSelectFocusedRecord;
      end;
    end;
  finally
    HideHourglassCursor;
  end;
end;

procedure TMailClientDemoMailsFrame.UpdateBadges;
var
  I, AUrgentCount: Integer;
begin
  AUrgentCount := 0;
  for I := 0 to tvMain.DataController.RecordCount - 1 do
    if tvMain.DataController.Values[I, dbcIsUnread.Index] and (tvMain.DataController.Values[I, dbcPriority.Index] = 2) then
      Inc(AUrgentCount);
  bdgUrgent.Visible := AUrgentCount > 0;
  bdgUrgent.Text := cxGetResourceString(@sPriorityUrgent) + ': ' + IntToStr(AUrgentCount);
end;

procedure TMailClientDemoMailsFrame.WMFocusMailMessage(var AMessage: TMessage);
begin
  SetFocusedMail(AMessage.WParam, AMessage.LParam);
end;

procedure TMailClientDemoMailsFrame.WMBackstageVisibilityChangedMessage(var AMessage: TMessage);
begin
  amMails.Badges.Active := not Boolean(AMessage.WParam);
end;

initialization
  dxMailClientDemoFrameManager.RegisterFrame(TMailClientDemoMailsFrame);

end.
