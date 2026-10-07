unit MailClientDemoTasks;

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
  MailClientDemoBaseGrid, MailClientDemoData, cxCalendar, cxImageComboBox,
  dxNavBar, dxNavBarCollns, cxProgressBar, cxSpinEdit, dxCore, dxScreenTip,
  cxExtEditRepositoryItems, cxCheckBox, cxEditRepositoryItems,
  dxLayoutControlAdapters, cxMRUEdit, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxRibbonPainter, dxPSCore, Vcl.ActnList, dxRibbonGallery, dxPScxExtComCtrlsLnk, 
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxSchedulerLnk, dxPScxCommon,
  dxLayoutLookAndFeels, cxGeometry, dxFramedControl, dxDateRanges,
  dxScrollbarAnnotations, System.Actions, dxPanel, dxNavBarBase;

type
  TdxTaskFilterCondition = (tfcCompleted, tfcToday);
  TdxTaskFilterConditions = set of TdxTaskFilterCondition;

  TMailClientDemoTasksFrame = class(TMailClientDemoBaseGridFrame)
    edrepTask: TcxEditRepository;
    edrepTaskCategory: TcxEditRepositoryImageComboBoxItem;
    edrepTaskStatus: TcxEditRepositoryImageComboBoxItem;
    edrepTaskCompletedTrackBar: TcxEditRepositoryTrackBar;
    dbcEmployeeID: TcxGridDBColumn;
    dbcDateCreated: TcxGridDBColumn;
    dbcPriority: TcxGridDBColumn;
    dbcSubject: TcxGridDBColumn;
    dbcStatus: TcxGridDBColumn;
    dbcCompleted: TcxGridDBColumn;
    dbcDateStart: TcxGridDBColumn;
    dbcDateDue: TcxGridDBColumn;
    dbcDateCompleted: TcxGridDBColumn;
    dbcCategory: TcxGridDBColumn;
    dbcID: TcxGridDBColumn;
    dbcIsCompleted: TcxGridDBColumn;
    dbcFlagStatus: TcxGridDBColumn;
    dbcCheckCompleted: TcxGridDBColumn;
    actTaskNew: TAction;
    actTaskEdit: TAction;
    actTaskDelete: TAction;
    actFollowToday: TAction;
    actFollowTomorrow: TAction;
    actFollowThisWeek: TAction;
    actFollowNextWeek: TAction;
    actFollowNoDate: TAction;
    actFollowCustom: TAction;
    actTaskViewByDate: TAction;
    actTaskViewToDo: TAction;
    actTaskViewCompleted: TAction;
    actTaskViewToday: TAction;
    bmFrameBar1: TdxBar;
    bmFrameBar2: TdxBar;
    bmFrameBar3: TdxBar;
    lbNewTask: TdxBarLargeButton;
    lbDeleteTask: TdxBarLargeButton;
    lbEditTask: TdxBarLargeButton;
    bFollowToday: TdxBarButton;
    bFollowCustom: TdxBarButton;
    bFollowNoDate: TdxBarButton;
    bFollowNextWeek: TdxBarButton;
    bFollowThisWeek: TdxBarButton;
    bFollowTomorrow: TdxBarButton;
    lbViewByDate: TdxBarLargeButton;
    lbViewToday: TdxBarLargeButton;
    lbViewCompleted: TdxBarLargeButton;
    lbViewToDo: TdxBarLargeButton;
    ComponentPrinterLink1: TdxGridReportLink;
    dxNavBar1: TdxNavBar;
    nbgrTasks: TdxNavBarGroup;
    edrepTaskFlagStatus: TcxEditRepositoryImageComboBoxItem;
    procedure tvMainDblClick(Sender: TObject);
    procedure dbcPriorityCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dbcCompletedGetPropertiesForEdit(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
    procedure dbcFlagStatusCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tvMainMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure tvMainFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure dbcIsCompletedCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure dbcIsCompletedCheckPropertiesChange(Sender: TObject);
    procedure tvMainColumn1PropertiesEditValueChanged(Sender: TObject);
    procedure dbcDateDueValidateDrawValue(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      const AValue: Variant; AData: TcxEditValidateInfo);
    procedure tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean; var AText: String);
    procedure actTaskNewExecute(Sender: TObject);
    procedure actTaskEditExecute(Sender: TObject);
    procedure actTaskDeleteExecute(Sender: TObject);
    procedure actFollowExecute(Sender: TObject);
    procedure actTaskViewExecute(Sender: TObject);
    procedure tvMainCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    FFilterConditions: TdxTaskFilterConditions;
    FIsFilterConditionsChanged: Boolean;
    FSelectedEmployee: Integer;
    procedure AddEmployeesItems;
    procedure AdjustButtonsEnabled;
    procedure AdjustFollowGroup(AFlagStatus: Variant);
    procedure DoFilterTasks;
    procedure DoViewListByDate;
    procedure DoViewToDoList;
    procedure DoViewCompleted;
    procedure DoViewToday;
    function GetCurrentCompleted: Integer;
    function GetCurrentStatus: Integer;
    function GetNavBarGroupTask: TdxNavBarGroup;
    procedure SetCurrentStatus(AStatus: Integer);
    procedure SetFilterConditions(AValue: TdxTaskFilterConditions);
    procedure SetOrderOnly(AColumn: TcxGridDBColumn; AOrder: TdxSortOrder);
  protected
    procedure AddLikeFilter; override;
    procedure AfterActivate; override;
    procedure CheckFilterConditions;
    procedure DeleteTask;
    procedure EditTask(AIsNew: Boolean);
    procedure FollowToDay;
    procedure FollowTomorrow;
    procedure FollowThisWeek;
    procedure FollowNextWeek;
    procedure FollowNoDate;
    procedure FollowCustom;
    function GetCaption: string; override;
    class function GetFrameID: Integer; override;
    procedure OnEmployeeClick(Sender: TObject);
    procedure RefreshMenu; override;
    procedure RepairLostOwingInheritanceSettings; override;

    property CurrentCompleted: Integer read GetCurrentCompleted;
    property CurrentStatus: Integer read GetCurrentStatus;
    property FilterConditions: TdxTaskFilterConditions read FFilterConditions write SetFilterConditions;
    property NavBarGroupTask: TdxNavBarGroup read GetNavBarGroupTask;
  public
    constructor Create(AOwner: TComponent); override;
    procedure GetLinkHint(Sender: TObject; ALink: TdxNavBarItemLink; AScreenTip: TdxScreenTip; var AHint: String);
    function IsContentZoomSupport: Boolean; override;
    procedure Translate; override;
  end;

implementation

{$R *.dfm}

uses
  Vcl.ComCtrls, System.Math, System.TypInfo, System.DateUtils, dxGDIPlusClasses, dxMailClientDemoUtils, MailClientDemoMain,
  fmTaskUnit, fmTaskCustomDateUnit, dxDPIAwareUtils, LocalizationStrs, cxGridPopupMenuConsts, dxBarStrs;

constructor TMailClientDemoTasksFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  actTaskViewExecute(actTaskViewByDate);
  actTaskViewByDate.Checked := True;
end;

procedure TMailClientDemoTasksFrame.AddLikeFilter;
var
  ALike: string;
  AItemList: TcxFilterCriteriaItemList;
begin
  ALike := mrueSearch.Text;
  if Trim(ALike) = '' then Exit;
  AItemList := DataController.Filter.Root.AddItemList(fboOr);
  AddLikeCondition(AItemList, dbcSubject, ALike);
end;

procedure TMailClientDemoTasksFrame.AfterActivate;
var
  AIndex, ARecordIndex: Integer;

  procedure StorePriorState;
  begin
    AIndex := Max(0, NavBarGroupTask.SelectedLinkIndex);
    ARecordIndex := DataController.FocusedRowIndex;
  end;

  procedure RestorePriorState;
  begin
    NavBarGroupTask.SelectedLinkIndex := AIndex;
    OnEmployeeClick(NavBarGroupTask.Links[AIndex].Item);
    DataController.FocusedRowIndex :=
      Min(ARecordIndex, DataController.RowCount - 1);
  end;

begin
  StorePriorState;
  AddEmployeesItems;
  RestorePriorState;
  inherited AfterActivate;
  RefreshMenu;
end;

procedure TMailClientDemoTasksFrame.actTaskNewExecute(Sender: TObject);
begin
  EditTask(True);
end;

procedure TMailClientDemoTasksFrame.actTaskEditExecute(Sender: TObject);
begin
  EditTask(False);
end;

procedure TMailClientDemoTasksFrame.actTaskDeleteExecute(Sender: TObject);
begin
  DeleteTask;
end;

procedure TMailClientDemoTasksFrame.actFollowExecute(Sender: TObject);
begin
  case TAction(Sender).Tag of
    0:
      FollowToDay;
    1:
      FollowTomorrow;
    2:
      FollowThisWeek;
    3:
      FollowNextWeek;
    4:
      FollowNoDate;
    5:
      FollowCustom;
  end;
end;

procedure TMailClientDemoTasksFrame.actTaskViewExecute(Sender: TObject);
begin
  tvMain.BeginUpdate;
  try
    case TAction(Sender).Tag of
      0:
        DoViewListByDate;
      1:
        DoViewToDoList;
      2:
        DoViewCompleted;
      3:
        DoViewToday;
    end;
    dbcDateCompleted.Visible := TAction(Sender).Tag = 0;
  finally
    tvMain.EndUpdate;
  end;
  DataController.Groups.FullExpand;
end;

procedure TMailClientDemoTasksFrame.AddEmployeesItems;
const
  AImageIndex: array [Boolean] of Integer = (5, 6);
var
  ANavBar: TdxNavBar;
  AItem: TdxNavBarItem;
  I: Integer;
begin
  for I := NavBarGroupTask.LinkCount - 1 downto 0 do
  begin
    AItem := NavBarGroupTask.Links[I].Item;
    FreeAndNil(AItem);
  end;
  ANavBar := {fmMailClientDemoMain.}dxNavBar1;
  ANavBar.BeginUpdate;
  try
    DM.ReopenTaskEmployees;
    DM.clTaskEmployees.DisableControls;
    try
      with DM.clTaskEmployees do
      while not EOF do
      begin
        AItem := ANavBar.Items.Add;
        AItem.Tag := FieldByName('CustomerID').AsInteger;
        AItem.Caption := DM.GetEmployeeName(FieldByName('Title').AsInteger,
          FieldByName('FirstName').AsString, FieldByName('MiddleName').AsString,
          FieldByName('LastName').AsString);
        AItem.SmallImageIndex := AImageIndex[FieldByName('Gender').AsInteger = gvFemale];
        AItem.OnClick := OnEmployeeClick;
        AItem.Hint := ' ';
        NavBarGroupTask.CreateLink(AItem);
        Next;
      end;
    finally
      DM.clTaskEmployees.EnableControls;
    end;
  finally
    ANavBar.EndUpdate;
  end;
end;

procedure TMailClientDemoTasksFrame.AdjustButtonsEnabled;
begin
  actTaskEdit.Enabled := Controller.FocusedRecord is TcxGridDataRow;
  actTaskDelete.Enabled := actTaskEdit.Enabled;
  actFollowToday.Enabled := actTaskEdit.Enabled;
  actFollowTomorrow.Enabled := actTaskEdit.Enabled;
  actFollowThisWeek.Enabled := actTaskEdit.Enabled;
  actFollowNextWeek.Enabled := actTaskEdit.Enabled;
  actFollowNoDate.Enabled := actTaskEdit.Enabled;
  actFollowCustom.Enabled := actTaskEdit.Enabled;
end;

procedure TMailClientDemoTasksFrame.AdjustFollowGroup(AFlagStatus: Variant);

  procedure SetDown(AButton: TdxBarButton; AAction: TAction);
  begin
    AButton.Down := AAction.Enabled and (AFlagStatus <> Null) and
      (AAction.Tag = AFlagStatus);
  end;

begin
  SetDown(bFollowToday, actFollowToday);
  SetDown(bFollowTomorrow, actFollowTomorrow);
  SetDown(bFollowThisWeek, actFollowThisWeek);
  SetDown(bFollowNextWeek, actFollowNextWeek);
  SetDown(bFollowNoDate, actFollowNoDate);
  SetDown(bFollowCustom, actFollowCustom);
end;

procedure TMailClientDemoTasksFrame.CheckFilterConditions;
begin
  if FIsFilterConditionsChanged then DoFilterTasks;
end;

function TMailClientDemoTasksFrame.GetCurrentCompleted: Integer;
begin
  Result := GetCurrentRecordItemValue(dbcCompleted.Index);
end;

function TMailClientDemoTasksFrame.GetCurrentStatus: Integer;
begin
  Result := GetCurrentRecordItemValue(dbcStatus.Index);
end;

function TMailClientDemoTasksFrame.GetNavBarGroupTask: TdxNavBarGroup;
begin
  Result := {fmMailClientDemoMain.}nbgrTasks;
end;

procedure TMailClientDemoTasksFrame.DeleteTask;
begin
  DataController.DeleteFocused;
end;

procedure TMailClientDemoTasksFrame.EditTask(AIsNew: Boolean);
begin
  fmTask := TfmTask.Create(Self, AIsNew, FSelectedEmployee);
  tvMain.BeginUpdate(lsimImmediate);
  try
    fmTask.ShowModal;
  finally
    FreeAndNil(fmTask);
    tvMain.EndUpdate;
  end;
end;

procedure TMailClientDemoTasksFrame.DoFilterTasks;
begin
  DataSet.DisableControls;
  DataSet.Filter := Format('EmployeeID = %d', [FSelectedEmployee]);
  if tfcCompleted in FFilterConditions then
    DataSet.Filter := DataSet.Filter + ' and Status = 2';
  if tfcToday in FFilterConditions then
    DataSet.Filter := DataSet.Filter + ' and DateDue = ''' + DateToStr(Date) + '''';
  DataSet.Filtered := True;
  DataSet.EnableControls;
  FIsFilterConditionsChanged := False;
end;

procedure TMailClientDemoTasksFrame.DoViewListByDate;
begin
  dbcDateCreated.GroupBy(0, False);
  dbcDateDue.GroupBy(-1);
  dbcDateCompleted.GroupBy(-1);
  FilterConditions := [];
  SetOrderOnly(dbcDateCreated, soDescending);
end;

procedure TMailClientDemoTasksFrame.DoViewToDoList;
begin
  dbcDateCreated.GroupBy(-1);
  dbcDateCreated.SortOrder := soNone;
  dbcDateDue.GroupBy(0, False);
  dbcDateCompleted.GroupBy(-1);
  FilterConditions := [];
  SetOrderOnly(dbcDateDue, soAscending);
end;

procedure TMailClientDemoTasksFrame.DoViewCompleted;
begin
  dbcDateCreated.GroupBy(-1);
  dbcDateCreated.SortOrder := soNone;
  dbcDateDue.GroupBy(-1);
  dbcDateCompleted.GroupBy(0 ,False);
  FilterConditions := [tfcCompleted];
  SetOrderOnly(dbcDateCompleted, soDescending);
  DataController.Groups.FullExpand;
  DataController.SetFocus;
end;

procedure TMailClientDemoTasksFrame.DoViewToday;
begin
  dbcDateCreated.GroupBy(-1);
  dbcDateCreated.SortOrder := soNone;
  dbcDateDue.GroupBy(-1);
  dbcDateCompleted.GroupBy(-1 ,False);
  FilterConditions := [tfcToday];
  SetOrderOnly(dbcPriority, soDescending);
  DataController.SetFocus;
end;

procedure TMailClientDemoTasksFrame.FollowToDay;
begin
  SetCurrentRecordItemValue(dbcDateDue.Index, Date);
end;

procedure TMailClientDemoTasksFrame.FollowTomorrow;
begin
  SetCurrentRecordItemValue(dbcDateDue.Index, Date + 1);
end;

procedure TMailClientDemoTasksFrame.FollowThisWeek;
begin
  SetCurrentRecordItemValue(dbcDateDue.Index, GetBeginOfTheWeek(Int(Date)) + 6);
end;

procedure TMailClientDemoTasksFrame.FollowNextWeek;
begin
  SetCurrentRecordItemValue(dbcDateDue.Index, GetBeginOfTheWeek(Int(Date)) + 13);
end;

procedure TMailClientDemoTasksFrame.FollowNoDate;
begin
  SetCurrentRecordItemValue(dbcDateDue.Index, Null);
end;

procedure TMailClientDemoTasksFrame.FollowCustom;
var
  fmTaskCustomDate: TfmTaskCustomDate;
begin
  fmTaskCustomDate := TfmTaskCustomDate.Create(Self);
  tvMain.BeginUpdate(lsimImmediate);
  try
    fmTaskCustomDate.ShowModal;
  finally
    tvMain.EndUpdate;
    FreeAndNil(fmTaskCustomDate);
  end;
  RefreshMenu;
end;

function TMailClientDemoTasksFrame.GetCaption: string;
begin
  Result := cxGetResourceString(@sTasks);
end;

class function TMailClientDemoTasksFrame.GetFrameID: Integer;
begin
  Result := IDTasks;
end;

procedure TMailClientDemoTasksFrame.GetLinkHint(Sender: TObject;
  ALink: TdxNavBarItemLink; AScreenTip: TdxScreenTip; var AHint: String);
var
  ARich: TcxRichEdit;
  AStringStream: TStringStream;
  AImage: TdxSmartImage;
begin
  if ALink.Item.Tag = 0 then
  begin
    AHint := '';
    Exit;
  end;
  DM.clTaskEmployees.Locate('CustomerID', ALink.Item.Tag, []);
  AImage := TdxSmartImage.Create;
  ARich := TcxRichEdit.Create(Self);
  AStringStream := TStringStream.Create('');
  try
    AImage.LoadFromFieldValue(DM.clTaskEmployees.FieldByName('Photo').Value);
    AScreenTip.Description.Glyph.Assign(AImage);
    ARich.Visible := False;
    ARich.Parent := Self;
    PopulateCustomerInfoRich(ARich, DM.clTaskEmployees);
    TRichEdit(ARich.InnerControl).Lines.SaveToStream(AStringStream);
    AScreenTip.Description.Text := AStringStream.DataString;
  finally
    FreeAndNil(AStringStream);
    FreeAndNil(ARich);
    FreeAndNil(AImage);
  end;
end;

function TMailClientDemoTasksFrame.IsContentZoomSupport: Boolean;
begin
  Result := False;
end;

procedure TMailClientDemoTasksFrame.OnEmployeeClick(Sender: TObject);
begin
  FSelectedEmployee := TdxNavBarItem(Sender).Tag;
  DoFilterTasks;
  if DataController.Groups <> nil then
    DataController.Groups.FullExpand;
end;

procedure TMailClientDemoTasksFrame.RefreshMenu;
begin
  AdjustButtonsEnabled;
  AdjustFollowGroup(GetCurrentRecordItemValue(dbcFlagStatus.Index));
end;

procedure TMailClientDemoTasksFrame.RepairLostOwingInheritanceSettings;
begin
  inherited RepairLostOwingInheritanceSettings;
  if DataController.DataSource = nil then
    DataController.DataSource := DM.dsTasks;
end;

procedure TMailClientDemoTasksFrame.SetCurrentStatus(AStatus: Integer);
begin
  if CurrentStatus <> AStatus then
    SetCurrentRecordItemValue(dbcStatus.Index, AStatus, True);
end;

procedure TMailClientDemoTasksFrame.SetFilterConditions(AValue: TdxTaskFilterConditions);
begin
  if FFilterConditions <> AValue then
  begin
    FFilterConditions := AValue;
    FIsFilterConditionsChanged := True;
    CheckFilterConditions;
  end;
end;

procedure TMailClientDemoTasksFrame.SetOrderOnly(AColumn: TcxGridDBColumn;
  AOrder: TdxSortOrder);
var
  AOrders: array[Boolean] of TdxSortOrder;
begin
  AOrders[False] := soNone;
  AOrders[True] := AOrder;
  dbcDateCreated.SortOrder := AOrders[dbcDateCreated = AColumn];
  dbcDateDue.SortOrder := AOrders[dbcDateDue = AColumn];
  dbcDateCompleted.SortOrder := AOrders[dbcDateCompleted = AColumn];
  dbcPriority.SortOrder := AOrders[dbcPriority = AColumn];
end;

procedure TMailClientDemoTasksFrame.tvMainDblClick(Sender: TObject);
begin
  EditTask(False);
end;

procedure TMailClientDemoTasksFrame.dbcIsCompletedCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ANeedImages: array [0..1] of Integer = (11, 12);
  AValues: array[Boolean] of Integer = (0, 1);
begin
  ADone := CustomDrawImageOnCell(AViewInfo, ACanvas, DM.cxGridsImageList_16,
    ANeedImages, AValues[AViewInfo.GridRecord.Values[dbcStatus.Index] = tstCompleted]);
end;

procedure TMailClientDemoTasksFrame.dbcPriorityCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ANeedImages: array [0..2] of Integer = (0, -1, 1);
begin
  ADone := CustomDrawImageOnCell(AViewInfo, ACanvas, DM.cxGridsImageList_16,
    ANeedImages, AViewInfo.GridRecord.Values[dbcPriority.Index]);
end;

procedure TMailClientDemoTasksFrame.dbcFlagStatusCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ANeedImages: array [0..6] of Integer = (20, 21, 19, 17, 18, 16, 52);
begin
  ADone := CustomDrawImageOnCell(AViewInfo, ACanvas, DM.ilToolbarsSmallSVG,
    ANeedImages, AViewInfo.GridRecord.Values[dbcFlagStatus.Index]);
end;

procedure TMailClientDemoTasksFrame.dbcCompletedGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  inherited;
  AProperties := edrepTaskCompletedTrackBar.Properties;
end;

procedure TMailClientDemoTasksFrame.tvMainStylesGetContentStyle(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
  if ARecord is TcxGridGroupRow then
    AStyle := DM.stUnreadStyle;
end;

procedure TMailClientDemoTasksFrame.tvMainMouseUp(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  AStatuses: array[Boolean] of Integer = (tstNotStarted, tstCompleted);
var
  AHitTest: TcxCustomGridHitTest;
begin
  if (Button = mbLeft) and (Sender is TcxGridSite) then
  begin
    AHitTest := TcxGridSite(Sender).ViewInfo.GetHitTest(X, Y);
    if (AHitTest.HitTestCode = htCell) and
       (TcxGridRecordCellHitTest(AHitTest).Item = dbcFlagStatus) then
      SetCurrentStatus(AStatuses[GetCurrentRecordItemValue(dbcStatus.Index) <> tstCompleted]);
  end;
end;

procedure TMailClientDemoTasksFrame.tvMainFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  RefreshMenu;
end;

procedure TMailClientDemoTasksFrame.dbcIsCompletedCheckPropertiesChange(Sender: TObject);
const
  AStatuses: array[Boolean] of Integer = (tstNotStarted, tstCompleted);
begin
  SetCurrentStatus(AStatuses[CurrentStatus <> tstCompleted]);
end;

procedure TMailClientDemoTasksFrame.tvMainColumn1PropertiesEditValueChanged(Sender: TObject);
begin
  inherited;
  DataController.Post;
end;

procedure TMailClientDemoTasksFrame.tvMainCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

  procedure StyleAssignToCanvas(AStyle: TcxStyle);
  begin
    ACanvas.Font.Assign(AStyle.Font);
    ACanvas.Font.Color := AStyle.TextColor;
    if ACanvas.Font.Color = clDefault then
      ACanvas.Font.Color := AViewInfo.LookAndFeelPainter.DefaultContentTextColor;
    ACanvas.Font.Height := AViewInfo.ScaleFactor.Apply(ACanvas.Font.Height, dxGetScaleFactor(AStyle.StyleRepository));
  end;

  function IsHighPriority: Boolean;
  begin
    Result := AViewInfo.GridRecord.Values[dbcPriority.Index] = 2;
  end;

var
  ARecord: TcxCustomGridRecord;
begin
  ARecord := AViewInfo.GridRecord;
  if not (ARecord is TcxGridGroupRow) then
  begin
    case ARecord.Values[dbcStatus.Index] of
      tstCompleted:
        StyleAssignToCanvas(DM.stCompleted);
      tstWaiting:
        if IsHighPriority then
          StyleAssignToCanvas(DM.stWaitingHighPriority)
        else
          StyleAssignToCanvas(DM.stWaiting);
      tstDeferred:
        if IsHighPriority then
          StyleAssignToCanvas(DM.stDeferredHighPriority)
        else
          StyleAssignToCanvas(DM.stDeferred);
    else
      if (ARecord.Values[dbcDateDue.Index] <> Null) and (ARecord.Values[dbcDateDue.Index] < Date) then
      begin
        if IsHighPriority then
          StyleAssignToCanvas(DM.stDateOutHighPriority)
        else
          StyleAssignToCanvas(DM.stDateOut);
      end
      else
        if IsHighPriority then
          StyleAssignToCanvas(DM.stUnreadStyle);
    end;
  end;
end;

procedure TMailClientDemoTasksFrame.dbcDateDueValidateDrawValue(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  const AValue: Variant; AData: TcxEditValidateInfo);
begin
  if VarIsNull(AValue) then
  begin
    AData.ErrorType := eetWarning;
    DM.ilToolbarsSmallSVG.GetImage(98, AData.ErrorIcon);
    AData.ErrorText := 'Set a Due Date, please';
  end
  else
    if not VarIsNull(ARecord.Values[dbcDateStart.Index]) and
      (AValue < ARecord.Values[dbcDateStart.Index]) then
    begin
      AData.ErrorType := eetError;
      DM.ilToolbarsSmallSVG.GetImage(13, AData.ErrorIcon);
      AData.ErrorText := 'Due Date can''t be less than Start Date';
    end;
end;

procedure TMailClientDemoTasksFrame.Translate;
begin
  inherited;
  actTaskNew.Caption := cxGetResourceString(@sTaskNew);
  actTaskEdit.Caption := cxGetResourceString(@sTaskEdit);
  actTaskDelete.Caption := cxGetResourceString(@dxSBAR_DELETE);
  actFollowToday.Caption := cxGetResourceString(@dxSBAR_DATETODAY);
  actFollowTomorrow.Caption := cxGetResourceString(@sFollowTomorrow);
  actFollowThisWeek.Caption := cxGetResourceString(@sFollowThisWeek);
  actFollowNextWeek.Caption := cxGetResourceString(@sFollowNextWeek);
  actFollowNoDate.Caption := cxGetResourceString(@sFollowNoDate);
  actFollowCustom.Caption := cxGetResourceString(@sFollowCustom);
  actTaskViewCompleted.Caption := cxGetResourceString(@sCompleted);
  actTaskViewToday.Caption := cxGetResourceString(@dxSBAR_DATETODAY);
  bmFrameBar1.Caption := cxGetResourceString(@sNewEdit);
  bmFrameBar2.Caption := cxGetResourceString(@sFollowUp);
  bmFrameBar3.Caption := cxGetResourceString(@sCurrentView);
  dbcSubject.Caption := cxGetResourceString(@sSubjectColumn);
  dbcStatus.Caption := cxGetResourceString(@sStatusColumn);
  dbcCompleted.Caption := cxGetResourceString(@sPercentComplete);
  dbcDateStart.Caption := cxGetResourceString(@sStartDate);
  dbcDateDue.Caption := cxGetResourceString(@sDueDateColumn);
  dbcDateCreated.Caption := cxGetResourceString(@sDateCreated);
  dbcDateCompleted.Caption := cxGetResourceString(@sDateCompleted);
  dbcCategory.Caption := cxGetResourceString(@sCategory);
  dbcIsCompleted.HeaderHint := cxGetResourceString(@sComplete);
  dbcCheckCompleted.HeaderHint := cxGetResourceString(@sComplete);
  dbcPriority.HeaderHint := cxGetResourceString(@sImportance);
  dbcFlagStatus.HeaderHint := cxGetResourceString(@sFlagStatus);
  edrepTaskStatus.Properties.Items[0].Description := cxGetResourceString(@sTaskStatusNotStarted);
  edrepTaskStatus.Properties.Items[1].Description := cxGetResourceString(@sTaskStatusInProgress);
  edrepTaskStatus.Properties.Items[2].Description := cxGetResourceString(@sCompleted);
  edrepTaskStatus.Properties.Items[3].Description := cxGetResourceString(@sTaskStatusWaitingOnSomeoneElse);
  edrepTaskStatus.Properties.Items[4].Description := cxGetResourceString(@sTaskStatusDeferred);
  edrepTaskCategory.Properties.Items[0].Description := cxGetResourceString(@sTaskCategoryHouseChores);
  edrepTaskCategory.Properties.Items[1].Description := cxGetResourceString(@sTaskCategoryShopping);
  edrepTaskCategory.Properties.Items[2].Description := cxGetResourceString(@sTaskCategoryOffice);
  (dbcDateStart.Properties as TcxDateEditProperties).NullString := cxGetResourceString(@cxSGridNone);
  (dbcDateDue.Properties as TcxDateEditProperties).NullString := cxGetResourceString(@cxSGridNone);
  (dbcDateCompleted.Properties as TcxDateEditProperties).NullString := cxGetResourceString(@cxSGridNone);
  tvMain.DataController.Summary.SummaryGroups[0].SummaryItems[0].Format := Format('# %s', [cxGetResourceString(@sTasks)]);
end;

procedure TMailClientDemoTasksFrame.tvMainTcxGridDBDataControllerTcxDataSummarySummaryGroups0SummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: String);
begin
  if AValue = 1 then
    AText := '1 task';
end;

initialization
  dxMailClientDemoFrameManager.RegisterFrame(TMailClientDemoTasksFrame);

end.


