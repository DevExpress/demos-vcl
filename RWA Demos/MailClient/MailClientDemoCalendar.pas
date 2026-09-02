unit MailClientDemoCalendar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, MailClientDemoBase, dxCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxStyles, cxEdit, cxScheduler,
  cxSchedulerStorage, cxSchedulerCustomControls, cxDateNavigator,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerAgendaView, dxBar, cxTL,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerTreeListBrowser, dxSkinsCore,
  dxSkinscxSchedulerPainter, Vcl.ActnList, cxClasses, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxRibbon,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, dxSkinsdxRibbonPainter, Vcl.ImgList, 
  dxPScxSchedulerLnk, dxPScxCommon, dxPScxGridLnk, dxPScxGridLayoutViewLnk, 
  dxPScxExtComCtrlsLnk, cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  dxBarBuiltInMenu, cxImageList, cxBarEditItem, cxDropDownEdit, dxOfficeSearchBox, dxNavBar, System.ImageList,
  System.Actions, dxNavBarBase, dxNavBarCollns, cxSchedulerStrs, cxFilterControlStrs, dxLayoutContainer, dxLayoutControl,
  dxLayoutLookAndFeels;

type
  TMailClientDemoCalendarFrame = class(TMailClientDemoBaseFrame)
    bmFrameBar1: TdxBar;
    bmFrameBar2: TdxBar;
    bmFrameBar3: TdxBar;
    bmFrameBar4: TdxBar;
    bmFrameBar5: TdxBar;
    ShowF: TdxBarLargeButton;
    lbCalendarNewRepeatingEvent: TdxBarLargeButton;
    lbCalendarNavigatePrior: TdxBarLargeButton;
    lbCalendarGoToDay: TdxBarLargeButton;
    lbCalendarNavigateNext: TdxBarLargeButton;
    lbCalendarZoomIn: TdxBarLargeButton;
    lbCalendarZoomOut: TdxBarLargeButton;
    lbCalendarViewDay: TdxBarLargeButton;
    lbCalendarViewWorkWeek: TdxBarLargeButton;
    lbCalendarViewTimeline: TdxBarLargeButton;
    lbCalendarViewWeek: TdxBarLargeButton;
    lbCalendarViewMonth: TdxBarLargeButton;
    lbCalendarNoGroup: TdxBarLargeButton;
    lbCalendarGroupByDate: TdxBarLargeButton;
    lbCalendarGroupByResource: TdxBarLargeButton;
    lbCalendarViewDayTimelines: TdxBarSubItem;
    lbCalendarLayoutCompressWeekend: TdxBarLargeButton;
    lbCalendarWorkTime: TdxBarLargeButton;
    bCalendarTimelines60Minutes: TdxBarButton;
    bCalendarTimelines30Minutes: TdxBarButton;
    bCalendarTimelines15Minutes: TdxBarButton;
    bCalendarTimelines10Minutes: TdxBarButton;
    bCalendarTimelines6Minutes: TdxBarButton;
    bCalendarTimelines5Minutes: TdxBarButton;
    bCalendarTimelinesMonth: TdxBarButton;
    bCalendarTimelinesWeek: TdxBarButton;
    bCalendarTimelinesDay: TdxBarButton;
    bCalendarTimelinesTimeStep: TdxBarSubItem;
    tbActions: TdxBar;
    lbOpenEventEditDialog: TdxBarLargeButton;
    lbDeleteEvent: TdxBarLargeButton;
    tbOptions: TdxBar;
    lbRecurrence: TdxBarLargeButton;
    bbFree: TdxBarButton;
    bbTentative: TdxBarButton;
    bbBusy: TdxBarButton;
    bbOutOfOffice: TdxBarButton;
    ilShowTimeAs: TcxImageList;
    siShowTimeAs: TdxBarSubItem;
    ComponentPrinterLink1: TcxSchedulerReportLink;
    siLabelAs: TdxBarSubItem;
    ilLabelAs: TcxImageList;
    lbCalendarViewAgenda: TdxBarLargeButton;
    lbCalendarAgendaOptions: TdxBarSubItem;
    lbCalendarAgendaDayHeaders: TdxBarSubItem;
    lbCalendarAgendaDisplayMode: TdxBarSubItem;
    lbCalendarAgendaDayHeadersHorizontal: TdxBarButton;
    lbCalendarAgendaDayHeadersVertical: TdxBarButton;
    lbCalendarAgendaDisplayModeAllDays: TdxBarButton;
    lbCalendarAgendaDisplayModeSelectedDays: TdxBarButton;
    lbCalendarAgendaDisplayModeSelectedNonEmptyDays: TdxBarButton;
    lbCalendarAgendaShowLocations: TdxBarButton;
    lbCalendarAgendaShowResources: TdxBarButton;
    lbCalendarAgendaShowTimeAsClock: TdxBarButton;
    cbReminder: TcxBarEditItem;
    Scheduler: TcxScheduler;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavBar1Group2: TdxNavBarGroup;
    dxNavBar1Item1: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    dxNavBar1Item3: TdxNavBarItem;
    dxNavBar1Item4: TdxNavBarItem;
    dxNavBar1Item5: TdxNavBarItem;
    dxNavBar1Item6: TdxNavBarItem;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Item7: TdxNavBarItem;
    lcgRoot: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    lciMain: TdxLayoutItem;
    ilLabelAsLarge: TcxImageList;
    ilShowTimeAsLarge: TcxImageList;
    lciNavBar: TdxLayoutItem;
    procedure SchedulerEventSelectionChanged(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent);
    procedure ShowFClick(Sender: TObject);
    procedure lbCalendarNewRepeatingEventClick(Sender: TObject);
    procedure lbCalendarNavigatePriorClick(Sender: TObject);
    procedure lbCalendarNavigateNextClick(Sender: TObject);
    procedure lbCalendarGoToDayClick(Sender: TObject);
    procedure lbCalendarZoomInClick(Sender: TObject);
    procedure bCalendarTimeLinesClick(Sender: TObject);
    procedure lbCalendarChangeViewClick(Sender: TObject);
    procedure lbCalendarZoomOutClick(Sender: TObject);
    procedure GroupByClick(Sender: TObject);
    procedure lbCalendarWorkTimeClick(Sender: TObject);
    procedure lbOpenEventEditDialogClick(Sender: TObject);
    procedure lbDeleteEventClick(Sender: TObject);
    procedure ShowTimeAsClick(Sender: TObject);
    procedure LabelAsClick(Sender: TObject);
    procedure bpmLabelAsPopup(Sender: TObject);
    procedure lbRecurrenceClick(Sender: TObject);
    procedure cbReminderChange(Sender: TObject);
    procedure siShowTimeAsPopup(Sender: TObject);
    procedure lbCalendarLayoutCompressWeekendClick(Sender: TObject);
    procedure lbCalendarAgendaDayHeadersHorizontalClick(Sender: TObject);
    procedure lbCalendarAgendaDisplayModeAllDaysClick(Sender: TObject);
    procedure lbCalendarAgendaShowLocationsClick(Sender: TObject);
    procedure lbCalendarAgendaShowResourcesClick(Sender: TObject);
    procedure lbCalendarAgendaShowTimeAsClockClick(Sender: TObject);
    procedure dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
    procedure dxNavBar1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
  private
    FAnchorDate: TDateTime;

    function GetChangingSelectedEvent(AIndex: Integer): TcxSchedulerEvent;
    function GetViewDayScaleIndex: Integer;
    function GetViewTimeGridScaleIndex: Integer;
    procedure InitializeShowTimeAsMenu;
    procedure InitializeLabelAsMenu;
    procedure InitializeReminderMenu;
    procedure RefreshContextMenu;
    procedure Zoom(ADirection: Integer);

    function GetSelectedDaysCount: Integer;
    function GetSelectedEvent(AIndex: Integer): TcxSchedulerControlEvent;
    function GetSelectedEventCount: Integer;
  protected
    procedure AfterActivate; override;
    function GetCaption: string; override;
    function GetContextRibbonTab: TdxRibbonTab; override;
    class function GetFrameID: Integer; override;
    function GetViewStyleNormal: Boolean; override;
    procedure RefreshMenu; override;

    procedure ExportToHTML(const AFileName: string); override;
    procedure ExportToXLS(const AFileName: string); override;
    procedure ExportToXLSX(const AFileName: string); override;
    procedure ExportToXML(const AFileName: string); override;
    procedure ExportToTXT(const AFileName: string); override;
    procedure SetViewStyleNormal(const Value: Boolean); override;
  public
    constructor Create(AOwner: TComponent); override;

    function CanZoomIn: Boolean;
    function CanZoomOut: Boolean;
    function CanEventEdit(AEvent: TcxSchedulerControlEvent): Boolean;
    function CanSetNonFree(AEvent: TcxSchedulerControlEvent): Boolean;
    procedure CreateAppointment(const ARecurring: Boolean = False);
    procedure IncrementalNavigate(AForward: Boolean);
    function IsCalendarTimeScalesEnable: Boolean;
    function IsCompressedWeekEnd: Boolean;
    function IsViewAgendaActive: Boolean;
    function IsViewDayActive: Boolean;
    function IsViewMonthActive: Boolean;
    function IsViewTimeGridActive: Boolean;
    function IsViewWeekActive: Boolean;
    function IsWorkTimeOnly: Boolean;
    function IsContentZoomSupport: Boolean; override;
    procedure LayoutCompressWeekend;
    procedure LayoutShowWorkingHours;
    procedure NavigateToday;
    procedure RibbonLayoutChanged; override;
    procedure Translate; override;
    procedure ZoomIn;
    procedure ZoomOut;

    property SelectedDaysCount: Integer read GetSelectedDaysCount;
    property SelectedEventCount: Integer read GetSelectedEventCount;
    property SelectedEvents[Index: Integer]: TcxSchedulerControlEvent read GetSelectedEvent;
  end;

implementation

uses
  MailClientDemoMain, MailClientDemoData, cxDateUtils,  cxSchedulerDialogs, cxExportSchedulerLink,
  cxSchedulerRecurrenceSelectionDialog, LocalizationStrs, dxBarStrs;

{$R *.dfm}

const
  ViewDayScales: array [0..5] of Integer = (5, 6, 10, 15, 30, 60);
  ViewTimeGridScales: array [0..2] of TcxSchedulerTimeGridScaleUnit = (suDay, suWeek, suMonth);
  NoReminderText = 'None';

type
  TdxBarLargeButtonAccess = class(TdxBarLargeButton);

constructor TMailClientDemoCalendarFrame.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FAnchorDate := Date;
  Scheduler.SelectWorkDays(Scheduler.SelectedDays[0]);
  Scheduler.ViewWeek.Active := True;

  InitializeShowTimeAsMenu;
  InitializeLabelAsMenu;
  InitializeReminderMenu;
  fmMailClientDemoMain.dnScheduler.Scheduler := Scheduler;
  fmMailClientDemoMain.Frame11.dnScheduler.Scheduler := Scheduler;
end;

procedure TMailClientDemoCalendarFrame.AfterActivate;
begin
  inherited AfterActivate;
  fmMailClientDemoMain.ItemsCountInfo.Caption := '';
  if FFirstActivate then
  begin
    dxNavBar1.Groups[2].Links[0].Selected := True;
    dxNavBar1.OnLinkClick(Self, dxNavBar1.Groups[2].Links[0]);
  end;
end;

function TMailClientDemoCalendarFrame.CanZoomIn: Boolean;
begin
  if IsViewDayActive then
    Result := Scheduler.ViewDay.TimeScale > 5
  else
    if IsViewTimeGridActive then
      Result := Scheduler.ViewTimeGrid.Scales.MajorUnit > suDay
    else
      Result := False;
end;

function TMailClientDemoCalendarFrame.CanZoomOut: Boolean;
begin
  if IsViewDayActive then
    Result := Scheduler.ViewDay.TimeScale < 60
  else
    if IsViewTimeGridActive then
      Result := Scheduler.ViewTimeGrid.Scales.MajorUnit < suMonth
    else
      Result := False;
end;

procedure TMailClientDemoCalendarFrame.cbReminderChange(Sender: TObject);
var
  I: Integer;
  AReminderBefore: Integer;
  AReminder: Boolean;
  AEvent: TcxSchedulerEvent;
  AIndex: Integer;
  AProperties: TcxComboBoxProperties;
begin
  AProperties := TcxComboBoxProperties(cbReminder.Properties);
  AIndex := TcxComboBox(Sender).ItemIndex;
  AReminder := AIndex > 0;
  if AReminder then
    AReminderBefore := Integer(AProperties.Items.Objects[AIndex])
  else
    AReminderBefore := 0;
  for I := 0 to SelectedEventCount - 1 do
  begin
    if (SelectedEvents[I].Reminder <> AReminder) or
      AReminder and (SelectedEvents[I].ReminderMinutesBeforeStart <> AReminderBefore) then
    begin
      AEvent := GetChangingSelectedEvent(I);
      AEvent.Reminder := AReminder;
      AEvent.ReminderMinutesBeforeStart := AReminderBefore;
      AEvent.Post;
    end;
  end;
  RefreshContextMenu;
end;

procedure TMailClientDemoCalendarFrame.bpmLabelAsPopup(Sender: TObject);
var
  I: Integer;
  AButton: TdxBarButton;
begin
  for I := 0 to siLabelAs.ItemLinks.Count - 1 do
  begin
    AButton := siLabelAs.ItemLinks[I].Item as TdxBarButton;
    AButton.Down := (SelectedEventCount = 1) and (SelectedEvents[0].LabelColor = AButton.Tag);
  end;
end;

function TMailClientDemoCalendarFrame.CanEventEdit(AEvent: TcxSchedulerControlEvent): Boolean;
begin
  Result := (AEvent <> nil) and not AEvent.ReadOnly and not Scheduler.EventOperations.ReadOnly;
end;

procedure TMailClientDemoCalendarFrame.RefreshMenu;
const
  AVisibleMap: array[Boolean] of TdxBarItemVisible = (ivNever, ivAlways);

  procedure RefreshGroupBy;
  begin
    lbCalendarNoGroup.Down := IsViewAgendaActive or (Ord(TcxSchedulerCustomResourceView(Scheduler.CurrentView).GroupingKind) - 1 = lbCalendarNoGroup.Tag);
    lbCalendarGroupByResource.Down := Ord(TcxSchedulerCustomResourceView(Scheduler.CurrentView).GroupingKind) - 1 = lbCalendarGroupByResource.Tag;
    lbCalendarGroupByDate.Down := Ord(TcxSchedulerCustomResourceView(Scheduler.CurrentView).GroupingKind) - 1 = lbCalendarGroupByDate.Tag;
  end;

  procedure RefreshArrange;
  begin
    lbCalendarViewAgenda.Down := IsViewAgendaActive;
    lbCalendarViewDay.Down := IsViewDayActive and (SelectedDaysCount = 1);
    lbCalendarViewWorkWeek.Down := IsViewDayActive and (SelectedDaysCount > 1);
    lbCalendarViewWeek.Down := IsViewWeekActive;
    lbCalendarViewMonth.Down := IsViewMonthActive;
    lbCalendarViewTimeline.Down := IsViewTimeGridActive;
  end;

  procedure RefreshLayout;
  var
    I: Integer;
    AItem: TdxBarButton;
  begin
    lbCalendarLayoutCompressWeekend.Enabled := IsViewMonthActive;
    lbCalendarLayoutCompressWeekend.Down := lbCalendarLayoutCompressWeekend.Enabled and
      IsCompressedWeekEnd;
    lbCalendarGroupByDate.Enabled := not(IsViewTimeGridActive or IsViewAgendaActive);
    lbCalendarGroupByResource.Enabled := not IsViewAgendaActive;

    lbCalendarWorkTime.Enabled := IsViewDayActive;
    lbCalendarWorkTime.Down := IsWorkTimeOnly;

    lbCalendarViewDayTimelines.Enabled := IsViewDayActive or IsViewTimeGridActive;
    for I := 0 to lbCalendarViewDayTimelines.ItemLinks.Count - 1 do
    begin
      AItem := TdxBarButton(lbCalendarViewDayTimelines.ItemLinks[I].Item);
      AItem.Visible := AVisibleMap[IsViewDayActive xor (AItem.Category = 2)];
      AItem.Down := ((AItem.Category = 1) and (Scheduler.ViewDay.TimeScale = AItem.Tag)) or
        ((AItem.Category = 2) and (Scheduler.ViewTimeGrid.Scales.MajorUnit = TcxSchedulerTimeGridScaleUnit(AItem.Tag)));
    end;

    lbCalendarAgendaOptions.Enabled := IsViewAgendaActive;
  end;

  procedure RefreshZoomButtons;
  begin
    lbCalendarZoomIn.Enabled := CanZoomIn;
    lbCalendarZoomOut.Enabled := CanZoomOut;
  end;

begin
  RefreshGroupBy;
  RefreshArrange;
  RefreshLayout;
  RefreshZoomButtons;
  RefreshContextMenu;
end;

procedure TMailClientDemoCalendarFrame.RibbonLayoutChanged;
begin
  inherited;
  RefreshMenu;
end;

procedure TMailClientDemoCalendarFrame.bCalendarTimeLinesClick(Sender: TObject);
var
  AStep: Integer;
begin
  AStep := TdxBarItem(Sender).Tag;
  if IsViewDayActive then
    Scheduler.ViewDay.TimeScale := AStep
  else
    Scheduler.ViewTimeGrid.Scales.MajorUnit := TcxSchedulerTimeGridScaleUnit(AStep);
  RefreshMenu;
end;

function TMailClientDemoCalendarFrame.GetViewDayScaleIndex: Integer;
begin
  for Result := 0 to 5 do
    if Scheduler.ViewDay.TimeScale = ViewDayScales[Result] then
      Break;
end;

function TMailClientDemoCalendarFrame.GetViewStyleNormal: Boolean;
begin
  Result := lciNavBar.Visible;
end;

function TMailClientDemoCalendarFrame.GetChangingSelectedEvent(AIndex: Integer): TcxSchedulerEvent;
begin
  if SelectedEvents[AIndex].EventType = etOccurrence then
  begin
    Result := Scheduler.Storage.createEvent;
    Result.Assign(SelectedEvents[AIndex]);
    Result.EventType := etCustom;
  end
  else
    Result := SelectedEvents[AIndex].Source;
end;

function TMailClientDemoCalendarFrame.GetViewTimeGridScaleIndex: Integer;
begin
  for Result := 0 to 2 do
    if Scheduler.ViewTimeGrid.Scales.MajorUnit = ViewTimeGridScales[Result] then
      Break;
end;

procedure TMailClientDemoCalendarFrame.InitializeShowTimeAsMenu;
var
  I: Integer;
  ABitmap: TcxAlphaBitmap;
begin
  siShowTimeAs.Images := TimeLinePatterns;
  ilShowTimeAs.Clear;
  ilShowTimeAs.AddImage(DM.ilToolBarsLargeSVG, 47);
  ilShowTimeAsLarge.Clear;
  ilShowTimeAsLarge.AddImage(DM.ilToolBarsLargeSVG, 47);
  for I := 0 to TimeLinePatterns.Count - 1 do
  begin
    ABitmap := TcxAlphaBitmap.Create;
    try
      ilShowTimeAs.GetImage(0, ABitmap);
      ABitmap.cxCanvas.Brush := StateBrushes[I];
      ABitmap.Canvas.FillRect(Rect(2, 2, 7, 14));
      ABitmap.SetAlphaChannel(0);
      ilShowTimeAs.Add(ABitmap, nil);
    finally
      ABitmap.Free;
    end;
    ABitmap := TcxAlphaBitmap.Create;
    try
      ilShowTimeAsLarge.GetImage(0, ABitmap);
      ABitmap.cxCanvas.Brush := StateBrushes[I];
      ABitmap.Canvas.FillRect(Rect(4, 4, 13, 28));
      ABitmap.SetAlphaChannel(0);
      ilShowTimeAsLarge.Add(ABitmap, nil);
    finally
      ABitmap.Free;
    end;
  end;
end;

procedure TMailClientDemoCalendarFrame.InitializeLabelAsMenu;
var
  AItem: TdxBarButton;
  I: Integer;
  ABitmap: TcxAlphaBitmap;
begin
  siLabelAs.Images := EventLabels.Images;
  ilLabelAs.AddImage(DM.ilToolBarsLargeSVG, 48);
  ilLabelAsLarge.AddImage(DM.ilToolBarsLargeSVG, 48);
  for I := 0 to EventLabels.Count - 1 do
  begin
    AItem := bmFrame.AddItem(TdxBarButton) as TdxBarButton;
    AItem.ButtonStyle := bsChecked;
    AItem.Caption := EventLabels[I].Caption;
    AItem.ImageIndex := I;
    AItem.Tag := EventLabels[I].Color;
    AItem.OnClick := LabelAsClick;
    siLabelAs.ItemLinks.Add.Item := AItem;
    ABitmap := TcxAlphaBitmap.Create;
    try
      ilLabelAs.GetImage(0, ABitmap);
      ABitmap.cxCanvas.FillRect(Rect(2, 2, 14, 14), EventLabels[I].Color);
      ABitmap.SetAlphaChannel(0);
      ilLabelAs.Add(ABitmap, nil);
    finally
      ABitmap.Free;
    end;
    ABitmap := TcxAlphaBitmap.Create;
    try
      ilLabelAsLarge.GetImage(0, ABitmap);
      ABitmap.cxCanvas.FillRect(Rect(4, 4, 28, 28), EventLabels[I].Color);
      ABitmap.SetAlphaChannel(0);
      ilLabelAsLarge.Add(ABitmap, nil);
    finally
      ABitmap.Free;
    end;
  end;
end;

procedure TMailClientDemoCalendarFrame.InitializeReminderMenu;
var
  AProperties: TcxComboBoxProperties;
begin
  AProperties := TcxComboBoxProperties(cbReminder.Properties);
  cxPopulateItemsWithTimeIntervals(AProperties.Items);
  AProperties.Items.Insert(0, NoReminderText);
end;

procedure TMailClientDemoCalendarFrame.RefreshContextMenu;

  procedure RefreshItemBitmap(AItem: TdxBarSubItem; AImageList: TcxImageList; AIndex: Integer);
  var
    ABitmap: TcxBitmap;
  begin
    ABitmap := TcxBitmap.Create;
    try
      AImageList.GetBitmap(AIndex, ABitmap);
      AItem.Glyph.Assign(ABitmap);
    finally
      ABitmap.Free;
    end;
  end;

  function GetSelectedStateIndex: Integer;
  begin
    if SelectedEventCount = 1 then
      Result := SelectedEvents[0].State + 1
    else
      Result := 0;
  end;

  function GetSelectedLabelColorIndex: Integer;
  begin
    if SelectedEventCount = 1 then
      Result := EventLabels.IndexOfColor(SelectedEvents[0].LabelColor) + 1
    else
      Result := 0;
  end;

var
  AProperties: TcxComboBoxProperties;
  AIndex: Integer;
begin
  if fmMailClientDemoMain.dxRibbon1.Layout = TdxRibbonLayout.Simplified then
  begin
    RefreshItemBitmap(siShowTimeAs, ilShowTimeAs, GetSelectedStateIndex);
    RefreshItemBitmap(siLabelAs, ilLabelAs, GetSelectedLabelColorIndex);
  end
  else
  begin
    RefreshItemBitmap(siShowTimeAs, ilShowTimeAsLarge, GetSelectedStateIndex);
    RefreshItemBitmap(siLabelAs, ilLabelAsLarge, GetSelectedLabelColorIndex);
  end;

  lbRecurrence.Down := (SelectedEventCount = 1) and SelectedEvents[0].IsRecurring;
  if SelectedEventCount > 1 then
    cbReminder.EditValue := ''
  else
    if SelectedEventCount = 1 then
    begin
      if not SelectedEvents[0].Reminder then
        cbReminder.EditValue := NoReminderText
      else
      begin
        AProperties := TcxComboBoxProperties(cbReminder.Properties);
        AIndex := AProperties.Items.IndexOfObject(TObject(SelectedEvents[0].ReminderMinutesBeforeStart));
        if AIndex > 0 then
          cbReminder.EditValue := AProperties.Items[AIndex]
        else
          cbReminder.EditValue := '';
      end;
    end;
end;

procedure TMailClientDemoCalendarFrame.GroupByClick(Sender: TObject);
begin
  (Scheduler.CurrentView as TcxSchedulerCustomResourceView).GroupingKind := TcxSchedulerGroupingKind(TComponent(Sender).Tag + 1);
  RefreshMenu;
end;

procedure TMailClientDemoCalendarFrame.Zoom(ADirection: Integer);
begin
  if IsViewDayActive then
    Scheduler.ViewDay.TimeScale := ViewDayScales[GetViewDayScaleIndex + ADirection]
  else
    Scheduler.ViewTimeGrid.Scales.MajorUnit := ViewTimeGridScales[GetViewTimeGridScaleIndex + ADirection];
  RefreshMenu;
end;

function TMailClientDemoCalendarFrame.GetSelectedDaysCount: Integer;
begin
  Result := Scheduler.SelectedDays.Count;
end;

function TMailClientDemoCalendarFrame.GetSelectedEvent(AIndex: Integer): TcxSchedulerControlEvent;
begin
  Result := Scheduler.SelectedEvents[AIndex];
end;

function TMailClientDemoCalendarFrame.GetSelectedEventCount: Integer;
begin
  Result := Scheduler.SelectedEventCount;
end;

procedure TMailClientDemoCalendarFrame.SchedulerEventSelectionChanged(
  Sender: TcxCustomScheduler; AEvent: TcxSchedulerControlEvent);
begin
  RefreshContextMenu;
  if (Scheduler.SelectedEventCount > 0) and not IsViewAgendaActive then
    ContextRibbonTab.Context.Activate(True)
  else
  begin
    ContextRibbonTab.Ribbon.Tabs[1].Active := True;
    ContextRibbonTab.Context.Visible := False;
  end;
end;

procedure TMailClientDemoCalendarFrame.SetViewStyleNormal(const Value: Boolean);
begin
  inherited;
  lciNavBar.Visible := Value;
end;

procedure TMailClientDemoCalendarFrame.ShowFClick(Sender: TObject);
begin
  CreateAppointment;
end;

procedure TMailClientDemoCalendarFrame.ShowTimeAsClick(Sender: TObject);
var
  I: Integer;
  AEvent: TcxSchedulerEvent;
begin
  for I := 0 to SelectedEventCount - 1 do
  begin
    AEvent := GetChangingSelectedEvent(I);
    AEvent.State := TComponent(Sender).Tag;
    AEvent.Post;
  end;
  RefreshContextMenu;
end;

procedure TMailClientDemoCalendarFrame.siShowTimeAsPopup(Sender: TObject);
var
  I: Integer;
  AButton: TdxBarButton;
begin
  for I := 0 to siShowTimeAs.ItemLinks.Count - 1 do
  begin
    AButton := siShowTimeAs.ItemLinks[I].Item as TdxBarButton;
    AButton.Down := (SelectedEventCount = 1) and (SelectedEvents[0].State = AButton.Tag);
  end;
end;

procedure TMailClientDemoCalendarFrame.LabelAsClick(Sender: TObject);
var
  I: Integer;
  AEvent: TcxSchedulerEvent;
begin
  for I := 0 to SelectedEventCount - 1 do
  begin
    AEvent := GetChangingSelectedEvent(I);
    AEvent.LabelColor := TComponent(Sender).Tag;
    AEvent.Post;
  end;
  RefreshContextMenu;
end;

type
  TcxCustomSchedulerAccess = class(TcxCustomScheduler);

function TMailClientDemoCalendarFrame.CanSetNonFree(AEvent: TcxSchedulerControlEvent): Boolean;
var
  APrevState: Integer;
begin
  if AEvent = nil then
  begin
    Result := False;
    Exit;
  end;
  APrevState := AEvent.State;
  AEvent.State := tlsBusy;
  try
    Result := TcxCustomSchedulerAccess(Scheduler).CanIntersect(AEvent);
  finally
    AEvent.State := APrevState;
  end;
end;

procedure TMailClientDemoCalendarFrame.CreateAppointment(const ARecurring: Boolean = False);
begin
  Scheduler.CreateEventUsingDialog(False, ARecurring);
end;

procedure TMailClientDemoCalendarFrame.dxNavBar1GroupClick(Sender: TObject; AGroup: TdxNavBarGroup);
begin
//  dxNavBar1.DeSelectLinks;
  dxNavBar1.OnLinkClick(Self, AGroup.Links[0]);
  AGroup.Links[0].Selected := True;
end;

procedure TMailClientDemoCalendarFrame.dxNavBar1LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  DM.SchedulerUnboundStorage.BeginUpdate;
  try
    DM.SchedulerUnboundStorage.Resources.ResourceItems[0].Visible := ALink.Item.Index in [6, 0, 1];
    DM.SchedulerUnboundStorage.Resources.ResourceItems[1].Visible := ALink.Item.Index in [6, 0, 2];
    DM.SchedulerUnboundStorage.Resources.ResourceItems[2].Visible := ALink.Item.Index in [6, 3, 4];
    DM.SchedulerUnboundStorage.Resources.ResourceItems[3].Visible := ALink.Item.Index in [6, 3, 5];
  finally
    DM.SchedulerUnboundStorage.EndUpdate;
  end;
end;

function TMailClientDemoCalendarFrame.GetCaption: string;
begin
  Result := cxGetResourceString(@sMainMenuCalendarCaption);
end;

function TMailClientDemoCalendarFrame.GetContextRibbonTab: TdxRibbonTab;
begin
  Result := fmMailClientDemoMain.rtAppointment;
end;

class function TMailClientDemoCalendarFrame.GetFrameID: Integer;
begin
  Result := IDCalendar;
end;

procedure TMailClientDemoCalendarFrame.ExportToHTML(const AFileName: string);
begin
  cxExportSchedulerToHTML(AFileName, Scheduler);
end;

procedure TMailClientDemoCalendarFrame.ExportToXLS(const AFileName: string);
begin
  cxExportSchedulerToExcel(AFileName, Scheduler);
end;

procedure TMailClientDemoCalendarFrame.ExportToXLSX(const AFileName: string);
begin
  cxExportSchedulerToXLSX(AFileName, Scheduler);
end;

procedure TMailClientDemoCalendarFrame.ExportToXML(const AFileName: string);
begin
  cxExportSchedulerToXML(AFileName, Scheduler);
end;

procedure TMailClientDemoCalendarFrame.ExportToTXT(const AFileName: string);
begin
  cxExportSchedulerToText(AFileName, Scheduler);
end;

procedure TMailClientDemoCalendarFrame.IncrementalNavigate(AForward: Boolean);
var
  AActualView: TcxSchedulerCustomResourceView;
  AStartDate: TDateTime;
begin
  AActualView := TcxSchedulerCustomResourceView(Scheduler.CurrentView);
  if AForward then
    AStartDate := AActualView.LastVisibleDate + 1
  else
    AStartDate := 2 * AActualView.FirstVisibleDate - AActualView.LastVisibleDate - 1;
  Scheduler.GoToDate(AStartDate);
end;

function TMailClientDemoCalendarFrame.IsCalendarTimeScalesEnable: Boolean;
begin
  Result := Scheduler.ViewDay.Active or Scheduler.ViewTimeGrid.Active;
end;

function TMailClientDemoCalendarFrame.IsCompressedWeekEnd: Boolean;
begin
  Result := Scheduler.ViewWeeks.CompressWeekEnd;
end;

function TMailClientDemoCalendarFrame.IsViewAgendaActive: Boolean;
begin
  Result := Scheduler.ViewAgenda.Active;
end;

function TMailClientDemoCalendarFrame.IsViewDayActive: Boolean;
begin
  Result := Scheduler.ViewDay.Active;
end;

function TMailClientDemoCalendarFrame.IsViewMonthActive: Boolean;
begin
  Result := Scheduler.ViewWeeks.Active;
end;

function TMailClientDemoCalendarFrame.IsViewTimeGridActive: Boolean;
begin
  Result := Scheduler.ViewTimeGrid.Active;
end;

function TMailClientDemoCalendarFrame.IsViewWeekActive: Boolean;
begin
  Result := Scheduler.ViewWeek.Active;
end;

function TMailClientDemoCalendarFrame.IsWorkTimeOnly: Boolean;
begin
  Result := Scheduler.ViewDay.WorkTimeOnly;
end;

function TMailClientDemoCalendarFrame.IsContentZoomSupport: Boolean;
begin
  Result := False;
end;

procedure TMailClientDemoCalendarFrame.LayoutCompressWeekend;
begin
  Scheduler.ViewWeeks.CompressWeekEnd := not Scheduler.ViewWeeks.CompressWeekEnd;
end;

procedure TMailClientDemoCalendarFrame.LayoutShowWorkingHours;
begin
  Scheduler.ViewDay.WorkTimeOnly := not Scheduler.ViewDay.WorkTimeOnly;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarAgendaDayHeadersHorizontalClick(Sender: TObject);
begin
  Scheduler.ViewAgenda.DayHeaderOrientation :=  TcxSchedulerAgendaViewDayHeaderOrientation((Sender as TComponent).Tag);
end;

procedure TMailClientDemoCalendarFrame.lbCalendarAgendaDisplayModeAllDaysClick(Sender: TObject);
begin
  Scheduler.ViewAgenda.DisplayMode := TcxSchedulerAgendaViewDisplayMode((Sender as TComponent).Tag)
end;

procedure TMailClientDemoCalendarFrame.lbCalendarAgendaShowLocationsClick(Sender: TObject);
begin
  Scheduler.ViewAgenda.ShowLocations := lbCalendarAgendaShowLocations.Down;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarAgendaShowResourcesClick(Sender: TObject);
begin
  Scheduler.ViewAgenda.ShowResources := lbCalendarAgendaShowResources.Down;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarAgendaShowTimeAsClockClick(Sender: TObject);
begin
  Scheduler.ViewAgenda.ShowTimeAsClock := lbCalendarAgendaShowTimeAsClock.Down;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarChangeViewClick(Sender: TObject);
begin
  if not Scheduler.ViewWeek.Active then
    FAnchorDate := Scheduler.SelectedDays[0];
  Scheduler.SelectDays([FAnchorDate], TComponent(Sender).Tag in [0, 1]);
  case TComponent(Sender).Tag of
    0:
      Scheduler.ViewDay.Active := True;
    1:
      Scheduler.SelectWorkDays(Scheduler.SelectedDays[0]);
    2:
      Scheduler.ViewWeek.Active := True;
    3:
      Scheduler.GoToDate(Scheduler.SelectedDays[0], vmMonth);
    4:
      Scheduler.ViewTimeGrid.Active := True;
    5:
      Scheduler.ViewAgenda.Active := True;
  end;
  RefreshMenu;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarGoToDayClick(Sender: TObject);
begin
  NavigateToday;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarNavigateNextClick(
  Sender: TObject);
begin
  IncrementalNavigate(True);
end;

procedure TMailClientDemoCalendarFrame.lbCalendarNavigatePriorClick(
  Sender: TObject);
begin
  IncrementalNavigate(False);
end;

procedure TMailClientDemoCalendarFrame.lbCalendarNewRepeatingEventClick(
  Sender: TObject);
begin
  CreateAppointment(True);
end;

procedure TMailClientDemoCalendarFrame.lbCalendarWorkTimeClick(Sender: TObject);
begin
  Scheduler.ViewDay.WorkTimeOnly := lbCalendarWorkTime.Down;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarLayoutCompressWeekendClick(
  Sender: TObject);
begin
  Scheduler.ViewWeeks.CompressWeekEnd := lbCalendarLayoutCompressWeekend.Down;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarZoomInClick(Sender: TObject);
begin
  ZoomIn;
end;

procedure TMailClientDemoCalendarFrame.lbCalendarZoomOutClick(Sender: TObject);
begin
  ZoomOut;
end;

procedure TMailClientDemoCalendarFrame.lbDeleteEventClick(Sender: TObject);
begin
  Scheduler.DeleteSelectedEvents;
end;

procedure TMailClientDemoCalendarFrame.lbOpenEventEditDialogClick(
  Sender: TObject);
begin
  Scheduler.EditEventUsingDialog(SelectedEvents[0]);
  RefreshContextMenu;
end;

procedure TMailClientDemoCalendarFrame.lbRecurrenceClick(Sender: TObject);
var
  AModified: Boolean;
begin
  cxShowEventEditorEx(TcxCustomSchedulerAccess(Scheduler).GetEventEditInfo(Scheduler.SelectedEvents[0], True), AModified);
  RefreshContextMenu;
end;

procedure TMailClientDemoCalendarFrame.NavigateToday;
begin
  if IsViewAgendaActive then
    Scheduler.GoToDate(Date, vmAgenda)
  else
    Scheduler.GoToDate(Date, vmDay);
end;

procedure TMailClientDemoCalendarFrame.Translate;
begin
  inherited;
  ShowF.Caption := cxGetResourceString(@sNewAppointment);
  lbCalendarNewRepeatingEvent.Caption := cxGetResourceString(@slbCalendarNewRepeatingEvent);
  lbCalendarNavigatePrior.Caption := cxGetResourceString(@slbCalendarNavigatePrior);
  lbCalendarNavigateNext.Caption := cxGetResourceString(@slbCalendarNavigateNext);
  lbCalendarGoToDay.Caption := cxGetResourceString(@slbCalendarGoToDay);
  lbCalendarZoomIn.Caption := cxGetResourceString(@slbCalendarZoomIn);
  lbCalendarZoomOut.Caption := cxGetResourceString(@slbCalendarZoomOut);
  lbCalendarViewDay.Caption := cxGetResourceString(@slbCalendarViewDay);
  lbCalendarViewWorkWeek.Caption := cxGetResourceString(@slbCalendarViewWorkWeek);
  lbCalendarViewWeek.Caption := cxGetResourceString(@slbCalendarViewWeek);
  lbCalendarViewMonth.Caption := cxGetResourceString(@slbCalendarViewMonth);
  lbCalendarViewTimeline.Caption := cxGetResourceString(@slbCalendarViewTimeline);
  lbCalendarNoGroup.Caption := cxGetResourceString(@slbCalendarNoGroup);
  lbCalendarGroupByDate.Caption := cxGetResourceString(@slbCalendarGroupByDate);
  lbCalendarGroupByResource.Caption := cxGetResourceString(@slbCalendarGroupByResource);
  lbCalendarLayoutCompressWeekend.Caption := cxGetResourceString(@slbCalendarLayoutCompressWeekend);
  lbCalendarWorkTime.Caption := cxGetResourceString(@slbCalendarWorkTime);
  lbCalendarViewDayTimelines.Caption := cxGetResourceString(@slbCalendarViewDayTimelines);
  lbCalendarAgendaOptions.Caption := cxGetResourceString(@sAgendaOptions);
  bbFree.Caption := cxGetResourceString(@sbbFree);
  bbTentative.Caption := cxGetResourceString(@sbbTentative);
  bbBusy.Caption := cxGetResourceString(@sbbBusy);
  bbOutOfOffice.Caption := cxGetResourceString(@sbbOutOfOffice);
  siShowTimeAs.Caption := cxGetResourceString(@ssiShowTimeAs);
  siLabelAs.Caption := cxGetResourceString(@ssiLabelAs);
  lbCalendarViewAgenda.Caption := cxGetResourceString(@slbCalendarViewAgenda);
  bCalendarTimelines60Minutes.Caption := cxGetResourceString(@sbCalendarTimelines60Minutes);
  bCalendarTimelines30Minutes.Caption := cxGetResourceString(@sbCalendarTimelines30Minutes);
  bCalendarTimelines15Minutes.Caption := cxGetResourceString(@sbCalendarTimelines15Minutes);
  bCalendarTimelines10Minutes.Caption := cxGetResourceString(@sbCalendarTimelines10Minutes);
  bCalendarTimelines6Minutes.Caption := cxGetResourceString(@sbCalendarTimelines6Minutes);
  bCalendarTimelines5Minutes.Caption := cxGetResourceString(@sbCalendarTimelines5Minutes);
  lbOpenEventEditDialog.Caption := cxGetResourceString(@slbOpenEventEditDialog);
  lbDeleteEvent.Caption := cxGetResourceString(@dxSBAR_DELETE);
  lbRecurrence.Caption := cxGetResourceString(@slbRecurrence);
  cbReminder.Caption := cxGetResourceString(@scbReminder);
  bCalendarTimelinesMonth.Caption := cxGetResourceString(@sbCalendarTimelinesMonth);
  bCalendarTimelinesWeek.Caption := cxGetResourceString(@sbCalendarTimelinesWeek);
  bCalendarTimelinesDay.Caption := cxGetResourceString(@sbCalendarTimelinesDay);
  bmFrameBar1.Caption := cxGetResourceString(@sFrameBar1BarCaption);
  bmFrameBar2.Caption := cxGetResourceString(@sFrameBar2BarCaption);
  bmFrameBar3.Caption := cxGetResourceString(@sFrameBar3BarCaption);
  bmFrameBar4.Caption := cxGetResourceString(@sFrameBar4BarCaption);
  bmFrameBar5.Caption := cxGetResourceString(@sFrameBar5BarCaption);
  tbActions.Caption := cxGetResourceString(@sActionsBarCaption);
  tbOptions.Caption := cxGetResourceString(@sOptionsBarCaption);
  if Application.BiDiMode = bdLeftToRight then
  begin
    lbCalendarNavigateNext.ImageIndex := 38;
    lbCalendarNavigateNext.LargeImageIndex := 25;
    lbCalendarNavigatePrior.ImageIndex := 35;
    lbCalendarNavigatePrior.LargeImageIndex := 23;
  end
  else
  begin
    lbCalendarNavigateNext.ImageIndex := 35;
    lbCalendarNavigateNext.LargeImageIndex := 23;
    lbCalendarNavigatePrior.ImageIndex := 38;
    lbCalendarNavigatePrior.LargeImageIndex := 25;
  end;

  dxNavBar1.Groups[2].Caption := cxGetResourceString(@cxSFilterRootButtonCaption);
  dxNavBar1.Items[6].Caption := cxGetResourceString(@sFilterAllCaption);

  dxNavBar1.Groups[0].Caption := cxGetResourceString(@sTaskCategoryOffice);
  dxNavBar1.Items[0].Caption := cxGetResourceString(@sFilterAllCaption);
  dxNavBar1.Items[1].Caption := cxGetResourceString(@sDevelopment);
  dxNavBar1.Items[2].Caption := cxGetResourceString(@sWebinars);

  dxNavBar1.Groups[1].Caption := cxGetResourceString(@scxEventLabel2);
  dxNavBar1.Items[3].Caption := cxGetResourceString(@sFilterAllCaption);
  dxNavBar1.Items[4].Caption := cxGetResourceString(@scxEventLabel7);
  dxNavBar1.Items[5].Caption := cxGetResourceString(@sFamily);
end;

procedure TMailClientDemoCalendarFrame.ZoomIn;
begin
  if CanZoomIn then
    Zoom(-1);
end;

procedure TMailClientDemoCalendarFrame.ZoomOut;
begin
  if CanZoomOut then
    Zoom(1);
end;

initialization
  dxMailClientDemoFrameManager.RegisterFrame(TMailClientDemoCalendarFrame);

end.


