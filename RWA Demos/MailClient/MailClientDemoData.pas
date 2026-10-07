unit MailClientDemoData;

{$I cxVer.inc}

interface

uses
  System.SysUtils, System.Classes, Winapi.Messages, Vcl.ImgList, Vcl.Controls, cxGraphics, Data.DB, System.UITypes,
  dxCore, dxmdaset, cxStyles, cxClasses, cxEdit, cxEditRepositoryItems, cxGridCustomTableView,
  cxTL, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, dxScreenTip, dxBar,
  cxExtEditRepositoryItems, cxSchedulerStorage, Vcl.ExtCtrls, cxLookAndFeelPainters,
  dxSkinsCore, dxAlertWindow, MidasLib, cxImageList, cxLocalization, dxBarStrs, dxGDIPlusClasses, System.ImageList;

type
  TDM = class(TDataModule)
    dsContacts: TDataSource;
    dsMails: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    stUnreadStyle: TcxStyle;
    edrepMain: TcxEditRepository;
    edrepMainImagesPriority: TcxEditRepositoryImageComboBoxItem;
    edrepMainImagesStatus: TcxEditRepositoryImageComboBoxItem;
    cxGridsImageList_16: TcxImageList;
    mdMailBoxes: TdxMemData;
    mdMailBoxesID: TIntegerField;
    mdMailBoxesParentID: TIntegerField;
    mdMailBoxesImageIndex: TIntegerField;
    mdMailBoxesCountUnread: TIntegerField;
    mdMailBoxesBoxKind: TIntegerField;
    mdMailBoxesBoxNumber: TIntegerField;
    mdAttachments: TdxMemData;
    AutoIncField2: TAutoIncField;
    StringField3: TStringField;
    mdAttachmentsAttachment: TBlobField;
    dsCalendar: TDataSource;
    mdCalendar: TdxMemData;
    mdCalendarCaption: TStringField;
    mdCalendarLabel: TIntegerField;
    mdCalendarColor: TIntegerField;
    mdCalendarResourceID: TIntegerField;
    clPersons: TClientDataSet;
    clContacts: TClientDataSet;
    pvdContacts: TDataSetProvider;
    edrepMainImagesAttachment: TcxEditRepositoryImageComboBoxItem;
    clMails: TClientDataSet;
    clMailsBoxID: TIntegerField;
    clMailsPriority: TIntegerField;
    clMailsAttachmentID: TIntegerField;
    clMailsSubject: TStringField;
    clMailsContent: TBlobField;
    clMailsIsAttachment: TBooleanField;
    clMailsID: TIntegerField;
    edrepMainImagesGender: TcxEditRepositoryImageComboBoxItem;
    dsTasks: TDataSource;
    clPersonsCustomerId: TIntegerField;
    clPersonsMiddleName: TStringField;
    clPersonsEmail: TStringField;
    clPersonsPhone: TStringField;
    clPersonsComments: TMemoField;
    clPersonsPhoto: TBlobField;
    clPersonsDiscountLevel: TIntegerField;
    clPersonsFirstName: TStringField;
    clPersonsLastName: TStringField;
    clPersonsGender: TIntegerField;
    clPersonsBirthDate: TDateField;
    clPersonsAddressLine: TStringField;
    clPersonsCity: TStringField;
    clPersonsState: TStringField;
    clPersonsZipCode: TStringField;
    clPersonsNotes: TBlobField;
    clPersonsTitle: TIntegerField;
    clContactsCustomerId: TIntegerField;
    clContactsMiddleName: TStringField;
    clContactsEmail: TStringField;
    clContactsPhone: TStringField;
    clContactsComments: TMemoField;
    clContactsPhoto: TBlobField;
    clContactsDiscountLevel: TIntegerField;
    clContactsFirstName: TStringField;
    clContactsLastName: TStringField;
    clContactsGender: TIntegerField;
    clContactsBirthDate: TDateField;
    clContactsAddressLine: TStringField;
    clContactsCity: TStringField;
    clContactsState: TStringField;
    clContactsZipCode: TStringField;
    clContactsNotes: TBlobField;
    clContactsTitle: TIntegerField;
    clPersonsName: TStringField;
    clContactsName: TStringField;
    clTasks: TClientDataSet;
    clTaskEmployees: TClientDataSet;
    dsTaskEmployees: TDataSource;
    pvdTaskEmployees: TDataSetProvider;
    clTaskEmployeesCustomerId: TIntegerField;
    clTaskEmployeesMiddleName: TStringField;
    clTaskEmployeesEmail: TStringField;
    clTaskEmployeesPhone: TStringField;
    clTaskEmployeesComments: TMemoField;
    clTaskEmployeesPhoto: TBlobField;
    clTaskEmployeesDiscountLevel: TIntegerField;
    clTaskEmployeesFirstName: TStringField;
    clTaskEmployeesLastName: TStringField;
    clTaskEmployeesGender: TIntegerField;
    clTaskEmployeesBirthDate: TDateField;
    clTaskEmployeesAddressLine: TStringField;
    clTaskEmployeesCity: TStringField;
    clTaskEmployeesState: TStringField;
    clTaskEmployeesZipCode: TStringField;
    clTaskEmployeesNotes: TBlobField;
    clTaskEmployeesTitle: TIntegerField;
    clTaskEmployeesName: TStringField;
    clTasksID: TIntegerField;
    clTasksEmployeeID: TIntegerField;
    clTasksDateCreated: TDateField;
    clTasksPriority: TIntegerField;
    clTasksSubject: TStringField;
    clTasksStatus: TIntegerField;
    clTasksCompleted: TIntegerField;
    clTasksDateStart: TDateField;
    clTasksDateDue: TDateField;
    clTasksDateCompleted: TDateField;
    clTasksCategory: TIntegerField;
    clTasksDescription: TBlobField;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    stBold: TdxBarScreenTip;
    stItalic: TdxBarScreenTip;
    stNew: TdxBarScreenTip;
    stUnderline: TdxBarScreenTip;
    stBullets: TdxBarScreenTip;
    stFind: TdxBarScreenTip;
    stPaste: TdxBarScreenTip;
    stCut: TdxBarScreenTip;
    stReplace: TdxBarScreenTip;
    stCopy: TdxBarScreenTip;
    stAlignLeft: TdxBarScreenTip;
    stAlignRight: TdxBarScreenTip;
    stAlignCenter: TdxBarScreenTip;
    stAppMenu: TdxBarScreenTip;
    stOpen: TdxBarScreenTip;
    stPrint: TdxBarScreenTip;
    stBlue: TdxBarScreenTip;
    stBlack: TdxBarScreenTip;
    stSilver: TdxBarScreenTip;
    stRibbonForm: TdxBarScreenTip;
    stAppButton: TdxBarScreenTip;
    stQAT: TdxBarScreenTip;
    stQATBelow: TdxBarScreenTip;
    stQATAbove: TdxBarScreenTip;
    stFontDialog: TdxBarScreenTip;
    stSymbol: TdxScreenTip;
    edrepCustomerTitle: TcxEditRepositoryImageComboBoxItem;
    clPersonsIsEmployee: TIntegerField;
    clContactsIsEmployee: TIntegerField;
    stDateOut: TcxStyle;
    stDateOutHighPriority: TcxStyle;
    stDeferred: TcxStyle;
    stDeferredHighPriority: TcxStyle;
    stWaiting: TcxStyle;
    stWaitingHighPriority: TcxStyle;
    stCompleted: TcxStyle;
    clContactsName1: TStringField;
    clTasksFlagStatus: TIntegerField;
    clContactsFullAddress: TStringField;
    clMailsDate: TDateTimeField;
    clMailsDateOnly: TDateField;
    edrepMainImagesStatusSwitch: TcxEditRepositoryImageComboBoxItem;
    clMailsTo: TStringField;
    clMailsFrom: TStringField;
    clMailsIsUnread: TBooleanField;
    clNewMails: TClientDataSet;
    clNewMailsID: TAutoIncField;
    clNewMailsBoxID: TIntegerField;
    clNewMailsFrom: TStringField;
    clNewMailsTo: TStringField;
    clNewMailsPriority: TIntegerField;
    clNewMailsIsUnread: TBooleanField;
    clNewMailsAttachmentID: TIntegerField;
    clNewMailsSubject: TStringField;
    clNewMailsContent: TBlobField;
    ilToolbarsSmall: TcxImageList;
    ilToolbarsLarge: TcxImageList;
    bstRepository: TdxBarScreenTipRepository;
    stMailNew: TdxBarScreenTip;
    stMailReply: TdxScreenTip;
    stMailReplyAll: TdxScreenTip;
    stMailForward: TdxScreenTip;
    stMailDeleteMail: TdxScreenTip;
    stMailUnread: TdxScreenTip;
    stMailPriority: TdxScreenTip;
    stRotate: TdxScreenTip;
    stFlip: TdxScreenTip;
    stCalendarNew: TdxScreenTip;
    stCalendarNewRecurring: TdxScreenTip;
    stCalendarBack: TdxScreenTip;
    stCalendarForward: TdxScreenTip;
    stCalendarGoToToday: TdxScreenTip;
    stCalendarZoomIn: TdxScreenTip;
    stCalendarZoomOut: TdxScreenTip;
    stCalendarViewDay: TdxScreenTip;
    stCalendarViewWeekWork: TdxScreenTip;
    stCalendarViewWeek: TdxScreenTip;
    stCalendarViewMonth: TdxScreenTip;
    stCalendarViewTimeline: TdxScreenTip;
    stCalendarGroupDate: TdxScreenTip;
    stCalendarGroupNone: TdxScreenTip;
    stCalendarGroupResource: TdxScreenTip;
    stCalendarLayoutCompressWeekend: TdxScreenTip;
    stCalendarLayoutWorkingHours: TdxScreenTip;
    stCalendarLayoutTimeScales: TdxScreenTip;
    stAppointmentOpen: TdxScreenTip;
    stAppointmentDelete: TdxScreenTip;
    stAppointmentShowTimeAs: TdxScreenTip;
    stAppointmentLabelAs: TdxScreenTip;
    stAppointmentRecurrence: TdxScreenTip;
    stAppointmentReminder: TdxScreenTip;
    stContactNew: TdxScreenTip;
    stContactEdit: TdxScreenTip;
    stContactDelete: TdxScreenTip;
    stFeedRefresh: TdxScreenTip;
    stTaskNew: TdxScreenTip;
    stTaskEdit: TdxScreenTip;
    stTaskDelete: TdxScreenTip;
    stTaskFollowToday: TdxScreenTip;
    stTaskFollowTomorrow: TdxScreenTip;
    stTaskFollowThisWeek: TdxScreenTip;
    stTaskFollowNextWeek: TdxScreenTip;
    stTaskFollowNoDate: TdxScreenTip;
    stTaskFollowCustom: TdxScreenTip;
    stViewNavigation: TdxScreenTip;
    SchedulerUnboundStorage: TcxSchedulerStorage;
    TimerNewMails: TTimer;
    awmAlert: TdxAlertWindowManager;
    ilAlert: TcxImageList;
    mdAlertHelper: TdxMemData;
    mdAlertHelperIdentifier: TIntegerField;
    dsMailBoxes: TDataSource;
    stCalendarViewAgenda: TdxScreenTip;
    mdMailBoxesNameW: TWideStringField;
    mdMailBoxesNameArabic: TWideStringField;
    mdMailBoxesNameHebrew: TWideStringField;
    cxLocalizer1: TcxLocalizer;
    ilToolbarsSmallSVG: TcxImageList;
    ilToolBarsLargeSVG: TcxImageList;
    icImages: TcxImageCollection;
    AppButton: TcxImageCollectionItem;
    icImagesSVG: TcxImageCollection;
    AppButtonSVG: TcxImageCollectionItem;
    dsAttachments: TDataSource;
    dsPersons: TDataSource;
    dsNewMails: TDataSource;
    procedure clPersonsCalcFields(ADataSet: TDataSet);
    procedure clMailsCalcFields(DataSet: TDataSet);
    procedure clTaskEmployeesCalcFields(DataSet: TDataSet);
    procedure clTasksCalcFields(DataSet: TDataSet);
    procedure clMailsFromGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure TimerNewMailsTimer(Sender: TObject);
    procedure awmAlertMouseDown(Sender: TObject; AAlertWindow: TdxAlertWindow; AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
    procedure awmAlertMouseLeave(Sender: TObject; AAlertWindow: TdxAlertWindow);
    procedure awmAlertMouseMove(Sender: TObject; AAlertWindow: TdxAlertWindow; AShift: TShiftState; X, Y: Integer);
    procedure clTasksStatusChange(Sender: TField);
    procedure clTasksCompletedChange(Sender: TField);
  private
    FMailMaxID: Integer;
    FContactMaxID: Integer;
    FTaskMaxID: Integer;

    procedure GenerateRandomEvents;
    procedure DoCorrectDates(ADataSet: TClientDataSet; const AFieldsNames: array of string);
    function GenerateMailID: Integer;
    function GetMaxValue(AClientDataSet: TClientDataSet; const ANumber: Integer = 0): Variant;
    procedure Initialize;
    function IsAvailableNewMails: Boolean;
    procedure LoadToBlob(ABlob: TBlobField; AStream: TMemoryStream);
    procedure ReceiveNewMail;
    procedure SetDateCompleted;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function AddMail(const AFrom, ASubject: string; AIsUnread: Boolean; ASavedMailID, APriority, ABoxID, AAttachmentID: Integer; ADate: TDateTime; AContent: TMemoryStream): Integer;
    procedure CreateAlert(const AFrom, ASubject: string; AMailBoxID, AMailID: Integer);
    function GetEmployeeName(const ATitleIndex: Integer; const AFirstName, AMiddleName, ALastName: string): string;
    procedure PinAllAlertWindows;
    function ReplaceEmailWithContact(const AEmail: string): string;
    function ReplaceEmailsWithContacts(const AEmails: string): string;
    function GetTaskFlagStatus(const AStatus: Integer; const ADateDue: Variant): Integer;
    procedure OpenCustomerChildClientDataSet(AParentDataSet, AChildDataSet: TClientDataSet; AFilter: string);
    procedure ReopenTaskEmployees;
    procedure UnreadMailsOffset(AMailBoxID, AUnreadOffset: Integer);

    procedure SetLocale(ALocale: Cardinal);
    procedure Translate;
  end;

function GetBeginOfTheWeek(const ADate: TDate): TDate; // #TODO: !!!
function GetFullName(const AFirstName, AMiddleName, ALastName: string): string;
procedure RemoveExt(var AFileName: string);

const
  WM_FOCUSMAILMESSAGE = WM_USER + 1;
  WM_BACKSTAGEVISIBILITYCHANGED = WM_USER + 2;

var
  DM: TDM;

implementation

uses
  System.DateUtils, System.Types, Winapi.Windows, Vcl.Forms, System.Variants, System.Math, Vcl.Graphics, cxDateUtils,
  cxRichEdit, dxMailClientDemoUtils, cxSchedulerUtils, cxSchedulerRecurrence, LocalizationStrs;

{$R *.dfm}

const
  dxUnfoundedValue = MaxInt;

function GetBeginOfTheWeek(const ADate: TDate): TDate;
begin
  Result := Trunc(ADate) - DayOfTheWeek(ADate) + 1;
end;

function GetFullName(const AFirstName, AMiddleName, ALastName: string): string;
begin
  if AMiddleName = '' then
    Result := Format('%s %s', [AFirstName, ALastName])
  else
    Result := Format('%s %s %s', [AFirstName, AMiddleName, ALastName]);
end;

function GetPriority(const ABoxKind: Integer): Integer;
begin
  Result := 1;
  if ABoxKind in [bkSent, bkDeleted, bkDrafts] then
    Exit;
  Result := Random(10);
  if (Result > 2) then
    Result := 1;
end;

function GetTempDirectory: string;
begin
  SetLength(Result, MAX_PATH);
  SetLength(Result, GetTempPath(Length(Result), PChar(Result)));
end;

procedure RemoveExt(var AFileName: string);
begin
  AFileName := ChangeFileExt(AFileName, '');
end;

{ TDM }

constructor TDM.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Initialize;
end;

destructor TDM.Destroy;
begin
  inherited Destroy;
end;

procedure TDM.awmAlertMouseDown(Sender: TObject; AAlertWindow: TdxAlertWindow;
  AButton: TMouseButton; AShift: TShiftState; X, Y: Integer);
var
  AMailBoxID, AMailID: Integer;
begin
  AAlertWindow.HitTest.HitPoint := Point(X, Y);
  if (AButton = mbLeft) and AAlertWindow.HitTest.HitAtMessageText then
  begin
    ShowWindow(Application.Handle, SW_RESTORE);
    SetForegroundWindow(Application.Handle);
    AMailBoxID := AAlertWindow.Tag mod 100;
    AMailID := AAlertWindow.Tag div 100;
    SendMessage(Application.MainForm.Handle, WM_FOCUSMAILMESSAGE, AMailBoxID, AMailID);
    AAlertWindow.Close;
  end;
end;

procedure TDM.awmAlertMouseLeave(Sender: TObject; AAlertWindow: TdxAlertWindow);
var
  AFontStyles: TFontStyles;
begin
  AFontStyles := AAlertWindow.OptionsMessage.Text.Font.Style;
  Exclude(AFontStyles, fsUnderline);
  AAlertWindow.OptionsMessage.Text.Font.Style := AFontStyles;
  AAlertWindow.Cursor := crDefault;
end;

procedure TDM.awmAlertMouseMove(Sender: TObject; AAlertWindow: TdxAlertWindow;
  AShift: TShiftState; X, Y: Integer);
const
  BooleanToCursor: array[Boolean] of TCursor = (crDefault, crHandPoint);
var
  AFontStyles: TFontStyles;
  AHitTest: Boolean;
begin
  AFontStyles := AAlertWindow.OptionsMessage.Text.Font.Style;
  AAlertWindow.HitTest.HitPoint := Point(X, Y);
  AHitTest := AAlertWindow.HitTest.HitAtMessageText;
  AAlertWindow.Cursor := BooleanToCursor[AHitTest];
  if AHitTest then
    Include(AFontStyles, fsUnderline)
  else
    Exclude(AFontStyles, fsUnderline);
  AAlertWindow.OptionsMessage.Text.Font.Style := AFontStyles;
end;

procedure TDM.clMailsCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('IsAttachment').AsBoolean := DataSet.FieldByName('AttachmentID').AsInteger > 0;
  DataSet.FieldByName('DateOnly').AsDateTime := Int(DataSet.FieldByName('Date').AsDateTime);
end;

procedure TDM.clMailsFromGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if DisplayText then
    Text := ReplaceEmailsWithContacts(Sender.AsString);
end;

procedure TDM.TimerNewMailsTimer(Sender: TObject);
begin
  TimerNewMails.Enabled := False;
    TimerNewMails.Interval := 2 * TimerNewMails.Interval;
  if IsAvailableNewMails then
  begin
    clNewMails.First;
    ReceiveNewMail;
    clNewMails.Delete;
  end;
  TimerNewMails.Enabled := IsAvailableNewMails;
end;

procedure TDM.Translate;
begin
  stMailNew.Header.Text := cxGetResourceString(@stMailNewHeader);
  stMailNew.Description.Text := cxGetResourceString(@stMailNewDescription);
  stMailReply.Header.Text := cxGetResourceString(@stMailReplyHeader);
  stMailReplyAll.Header.Text := cxGetResourceString(@stMailReplyAllHeader);
  stMailReplyAll.Description.Text := cxGetResourceString(@stMailReplyAllDescription);
  stMailForward.Header.Text := cxGetResourceString(@stMailForwardHeader);
  stMailDeleteMail.Header.Text := cxGetResourceString(@dxSBAR_DELETE);
  stMailPriority.Header.Text := cxGetResourceString(@stMailPriorityHeader);
  stRotate.Header.Text := cxGetResourceString(@stRotateHeader);
  stRotate.Description.Text := cxGetResourceString(@stRotateDescription);
  stFlip.Header.Text := cxGetResourceString(@stFlipHeader);
  stFlip.Description.Text := cxGetResourceString(@stFlipDescription);
  stCalendarNew.Header.Text := cxGetResourceString(@stCalendarNewHeader);
  stCalendarNew.Description.Text := cxGetResourceString(@stCalendarNewDescription);
  stCalendarNewRecurring.Header.Text := cxGetResourceString(@stCalendarNewRecurringHeader);
  stCalendarNewRecurring.Description.Text := cxGetResourceString(@stCalendarNewRecurringDescription);
  stCalendarBack.Header.Text := cxGetResourceString(@stCalendarBackHeader);
  stCalendarBack.Description.Text := cxGetResourceString(@stCalendarBackDescription);
  stCalendarForward.Header.Text := cxGetResourceString(@stCalendarForwardHeader);
  stCalendarForward.Description.Text := cxGetResourceString(@stCalendarForwardDescription);
  stCalendarGoToToday.Header.Text := cxGetResourceString(@stCalendarGoToTodayHeader);
  stCalendarGoToToday.Description.Text := cxGetResourceString(@stCalendarGoToTodayDescription);
  stCalendarZoomIn.Header.Text := cxGetResourceString(@stCalendarZoomInHeader);
  stCalendarZoomIn.Description.Text := cxGetResourceString(@stCalendarZoomInDescription);
  stCalendarZoomOut.Header.Text := cxGetResourceString(@stCalendarZoomOutHeader);
  stCalendarZoomOut.Description.Text := cxGetResourceString(@stCalendarZoomOutDescription);
  stCalendarViewAgenda.Header.Text := cxGetResourceString(@stCalendarViewAgendaHeader);
  stCalendarViewAgenda.Description.Text := cxGetResourceString(@stCalendarViewAgendaDescription);
  stCalendarViewDay.Header.Text := cxGetResourceString(@stCalendarViewDayHeader);
  stCalendarViewDay.Description.Text := cxGetResourceString(@stCalendarViewDayDescription);
  stCalendarViewWeekWork.Header.Text := cxGetResourceString(@stCalendarViewWeekWorkHeader);
  stCalendarViewWeek.Header.Text := cxGetResourceString(@stCalendarViewWeekHeader);
  stCalendarViewWeek.Description.Text := cxGetResourceString(@stCalendarViewWeekDescription);
  stCalendarViewMonth.Header.Text := cxGetResourceString(@stCalendarViewMonthHeader);
  stCalendarViewMonth.Description.Text := cxGetResourceString(@stCalendarViewMonthDescription);
  stCalendarViewTimeline.Header.Text := cxGetResourceString(@stCalendarViewTimelineHeader);
  stCalendarViewTimeline.Description.Text := cxGetResourceString(@stCalendarViewTimelineDescription);
  stCalendarGroupDate.Header.Text := cxGetResourceString(@stCalendarGroupDateHeader);
  stCalendarGroupDate.Description.Text := cxGetResourceString(@stCalendarGroupDateDescription);
  stCalendarGroupNone.Header.Text := cxGetResourceString(@stCalendarGroupNoneHeader);
  stCalendarGroupNone.Description.Text := cxGetResourceString(@stCalendarGroupNoneDescription);
  stCalendarGroupResource.Header.Text := cxGetResourceString(@stCalendarGroupResourceHeader);
  stCalendarGroupResource.Description.Text := cxGetResourceString(@stCalendarGroupResourceDescription);
  stCalendarLayoutCompressWeekend.Header.Text := cxGetResourceString(@stCalendarLayoutCompressWeekendHeader);
  stCalendarLayoutCompressWeekend.Description.Text := cxGetResourceString(@stCalendarLayoutCompressWeekendDescription);
  stCalendarLayoutWorkingHours.Header.Text := cxGetResourceString(@stCalendarLayoutWorkingHoursHeader);
  stCalendarLayoutWorkingHours.Description.Text := cxGetResourceString(@stCalendarLayoutWorkingHoursDescription);
  stCalendarLayoutTimeScales.Header.Text := cxGetResourceString(@stCalendarLayoutTimeScalesHeader);
  stCalendarLayoutTimeScales.Description.Text := cxGetResourceString(@stCalendarLayoutTimeScalesDescription);
  stAppointmentOpen.Header.Text := cxGetResourceString(@stAppointmentOpenHeader);
  stAppointmentOpen.Description.Text := cxGetResourceString(@stAppointmentOpenDescription);
  stAppointmentDelete.Header.Text := cxGetResourceString(@dxSBAR_DELETE);
  stAppointmentRecurrence.Header.Text := cxGetResourceString(@stAppointmentRecurrenceHeader);
  stAppointmentReminder.Header.Text := cxGetResourceString(@stAppointmentReminderHeader);
  stContactNew.Header.Text := cxGetResourceString(@stContactNewHeader);
  stContactNew.Description.Text := cxGetResourceString(@stContactNewDescription);
  stContactEdit.Header.Text := cxGetResourceString(@stContactEditHeader);
  stContactEdit.Description.Text := cxGetResourceString(@stContactEditDescription);
  stContactDelete.Header.Text := cxGetResourceString(@dxSBAR_DELETE);
  stContactDelete.Description.Text := cxGetResourceString(@stContactDeleteDescription);
  stFeedRefresh.Header.Text := cxGetResourceString(@stFeedRefreshHeader);
  stFeedRefresh.Description.Text := cxGetResourceString(@stFeedRefreshDescription);
  stTaskNew.Header.Text := cxGetResourceString(@stTaskNewHeader);
  stTaskNew.Description.Text := cxGetResourceString(@stTaskNewDescription);
  stTaskEdit.Header.Text := cxGetResourceString(@stTaskEditHeader);
  stTaskEdit.Description.Text := cxGetResourceString(@stTaskEditDescription);
  stTaskDelete.Header.Text := cxGetResourceString(@dxSBAR_DELETE);
  stTaskDelete.Description.Text := cxGetResourceString(@stTaskDeleteDescription);
  stTaskFollowToday.Header.Text := cxGetResourceString(@dxSBAR_DATETODAY);
  stTaskFollowToday.Description.Text := cxGetResourceString(@stTaskFollowTodayDescription);
  stTaskFollowTomorrow.Header.Text := cxGetResourceString(@stTaskFollowTomorrowHeader);
  stTaskFollowTomorrow.Description.Text := cxGetResourceString(@stTaskFollowTomorrowDescription);
  stTaskFollowThisWeek.Header.Text := cxGetResourceString(@stTaskFollowThisWeekHeader);
  stTaskFollowThisWeek.Description.Text := cxGetResourceString(@stTaskFollowThisWeekDescription);
  stTaskFollowNextWeek.Header.Text := cxGetResourceString(@stTaskFollowNextWeekHeader);
  stTaskFollowNextWeek.Description.Text := cxGetResourceString(@stTaskFollowNextWeekDescription);
  stTaskFollowNoDate.Header.Text := cxGetResourceString(@stTaskFollowNoDateHeader);
  stTaskFollowNoDate.Description.Text := cxGetResourceString(@stTaskFollowNoDateDescription);
  stTaskFollowCustom.Header.Text := cxGetResourceString(@stTaskFollowCustomHeader);
  stTaskFollowCustom.Description.Text := cxGetResourceString(@stTaskFollowCustomDescription);
  stViewNavigation.Header.Text := cxGetResourceString(@stViewNavigationHeader);
  stViewNavigation.Description.Text := cxGetResourceString(@stViewNavigationDescription);
  stMailDeleteMail.Description.Text := cxGetResourceString(@sDeleteItemDescription);
  stMailForward.Description.Text := cxGetResourceString(@sForwardDescription);
  stMailPriority.Description.Text := cxGetResourceString(@sPriorityDescription);
  stMailReply.Description.Text := cxGetResourceString(@sReplyDescription);
  stMailUnread.Header.Text := cxGetResourceString(@stMailUnreadHeader);
  stMailUnread.Description.Text := cxGetResourceString(@sUnreadReadDescription);
//
  stBold.Header.Text := cxGetResourceString(@sbBold);
  stBold.Description.Text := cxGetResourceString(@sBoldHintDescription);
  stItalic.Header.Text := cxGetResourceString(@sbItalic);
  stItalic.Description.Text := cxGetResourceString(@sItalicHintDescription);
  stUnderline.Header.Text := cxGetResourceString(@sbUnderline);
  stUnderline.Description.Text := cxGetResourceString(@sUnderlineHintDescription);
  stFind.Header.Text := cxGetResourceString(@sBarButtonFindHint);
  stFind.Description.Text := cxGetResourceString(@sFindHintDescription);
  stPaste.Header.Text := cxGetResourceString(@sBarButtonPasteHint);
  stPaste.Description.Text := cxGetResourceString(@sPasteHintDescription);
  stCut.Header.Text := cxGetResourceString(@sBarButtonCutHint);
  stCut.Description.Text := cxGetResourceString(@sCutHintDescription);
  stReplace.Header.Text := cxGetResourceString(@sBarButtonReplaceHint);
  stReplace.Description.Text := cxGetResourceString(@sReplaceHintDescription);
  stCopy.Header.Text := cxGetResourceString(@sBarButtonCopyHint);
  stCopy.Description.Text := cxGetResourceString(@sCopyHintDescription);
  stAlignLeft.Header.Text := cxGetResourceString(@sAlignTextLeft);
  stAlignLeft.Description.Text := cxGetResourceString(@sAlignTextLeftHintDescription);
  stAlignRight.Header.Text := cxGetResourceString(@sAlignTextRight);
  stAlignRight.Description.Text := cxGetResourceString(@sAlignTextRightDescription);
  stAlignCenter.Header.Text := cxGetResourceString(@sAlignTextCenter);
  stAlignCenter.Description.Text := cxGetResourceString(@sAlignTextCenterHintDescription);
  stOpen.Header.Text := cxGetResourceString(@sOpen);
  stPrint.Header.Text := cxGetResourceString(@sPrintButton);
  stQATBelow.Description.Text := cxGetResourceString(@dxSBAR_SHOWBELOWRIBBON);
  stQATAbove.Description.Text := cxGetResourceString(@dxSBAR_SHOWABOVERIBBON);
  stFontDialog.Header.Text := cxGetResourceString(@stFontDialogHeader);
//
  edrepMainImagesPriority.Properties.Items[0].Description := cxGetResourceString(@sMailPriorityLow);
  edrepMainImagesPriority.Properties.Items[1].Description := cxGetResourceString(@sMailPriorityMedium);
  edrepMainImagesPriority.Properties.Items[2].Description := cxGetResourceString(@sMailPriorityHigh);
//
  edrepCustomerTitle.Properties.Items[1].Description := cxGetResourceString(@sDr);
  edrepCustomerTitle.Properties.Items[2].Description := cxGetResourceString(@sMiss) + '.';
  edrepCustomerTitle.Properties.Items[3].Description := cxGetResourceString(@sMr) + '.';
  edrepCustomerTitle.Properties.Items[4].Description := cxGetResourceString(@sMrs) + '.';
  edrepCustomerTitle.Properties.Items[5].Description := cxGetResourceString(@sMs) + '.';
  edrepCustomerTitle.Properties.Items[6].Description := cxGetResourceString(@sTitleProf);
end;

function TDM.AddMail(const AFrom, ASubject: string; AIsUnread: Boolean;
  ASavedMailID, APriority, ABoxID, AAttachmentID: Integer; ADate: TDateTime; AContent: TMemoryStream): Integer;
var
  ADataSet: TClientDataSet;
begin
  ADataSet := TClientDataSet.Create(nil);
  try
    ADataSet.CloneCursor(clMails, True);
    if (ASavedMailID <> -1) and (ADataSet.Locate('ID', ASavedMailID, [])) then
    begin
      Result := ASavedMailID;
      ADataSet.Edit;
    end
    else
    begin
      Result := GenerateMailID;
      ADataSet.Insert;
    end;
    ADataSet.FieldByName('ID').AsInteger := Result;
    ADataSet.FieldByName('Priority').AsInteger := APriority;
    ADataSet.FieldByName('From').Value := AFrom;
    ADataSet.FieldByName('BoxID').AsInteger := ABoxID;
    ADataSet.FieldByName('IsUnread').AsBoolean := AIsUnread;
    ADataSet.FieldByName('AttachmentID').AsInteger := AAttachmentID;
    ADataSet.FieldByName('Subject').AsString := ASubject;
    ADataSet.FieldByName('Date').AsDateTime := ADate;
    if AContent <> nil then
      LoadToBlob(TBlobField(ADataSet.FieldByName('Content')), AContent);
    ADataSet.Post;
  finally
    ADataSet.Free;
  end;
end;

procedure TDM.CreateAlert(const AFrom, ASubject: string; AMailBoxID, AMailID: Integer);
var
  AImage: TdxSmartImage;
  ABitmap: TBitmap;
  ACaption: string;
begin
  ACaption := ReplaceEmailWithContact(AFrom);
  if clPersons.Locate('Email', AFrom, [loCaseInsensitive]) then
  begin
    AImage := TdxSmartImage.Create;
    try
      AImage.LoadFromFieldValue(clPersonsPhoto.Value);
      AImage.Resize(ilAlert.Width, ilAlert.Height);
      if awmAlert.Count = 0 then
        ilAlert.Clear;
      ABitmap := AImage.GetAsBitmap;
      try
        ilAlert.Add(ABitmap, nil);
      finally
        FreeAndNil(ABitmap);
      end;
    finally
      FreeAndNil(AImage);
    end;
  end;
  awmAlert.Show(ACaption, ASubject, ilAlert.Count - 1);
  awmAlert.Items[awmAlert.Count - 1].Tag := AMailID * 100 + AMailBoxID;
end;

function TDM.GetEmployeeName(const ATitleIndex: Integer; const AFirstName, AMiddleName,
  ALastName: string): string;
begin
  Result := edrepCustomerTitle.Properties.Items[ATitleIndex].Description;
  if AFirstName <> '' then
    Result := Result + AFirstName + ' ';
  if AMiddleName <> '' then
    Result := Result + AMiddleName + ' ';
  if ALastName <> '' then
    Result := Result + ALastName;
  Result := Trim(Result);
end;

procedure TDM.PinAllAlertWindows;
var
  I: Integer;
begin
  for I := 0 to awmAlert.Count - 1 do
    awmAlert[I].Pinned := True;
end;

function TDM.ReplaceEmailWithContact(const AEmail: string): string;
begin
  Result := AEmail;
  if clPersons.Locate('Email', Result, [loCaseInsensitive]) then
    Result := clPersons.FieldByName('Name').AsString;
end;

function TDM.ReplaceEmailsWithContacts(const AEmails: string): string;
var
  AList: TStringList;
  I: Integer;
  S: string;
begin
  Result := Trim(AEmails);
  if Result > '' then
    if Pos(dxAddressDelimiter, AEmails) > 0 then
    begin
      AList := TStringList.Create;
      try
        ExtractStrings([dxAddressDelimiter], [' '], PChar(AEmails), AList);
        for I := 0 to AList.Count - 1 do
        begin
          S := ReplaceEmailWithContact(Trim(AList[I]));
          if I > 0 then
            Result := Result + '; ' + S
          else
            Result := S;
        end;
      finally
        AList.Free;
      end;
    end
    else
      Result := ReplaceEmailWithContact(Result);
end;

function TDM.GetTaskFlagStatus(const AStatus: Integer; const ADateDue: Variant): Integer;
var
  ANow, ACheckDate: Integer;
begin
  Result := tfsCompleted;
  if AStatus = tstCompleted then
    Exit;
  Result := tfsNoDate;
  if not VarIsNull(ADateDue) then
  begin
    ANow := Trunc(Date);
    ACheckDate := Trunc(ADateDue);
    Result := tfsCustom;
    case ACheckDate - ANow of
      0:
        Result := tfsToday;
      1:
        Result := tfsTomorrow;
    else
      case ACheckDate - Trunc(GetBeginOfTheWeek(ANow)) of
        0..6:
          Result := tfsThisWeek;
        7..13:
          Result := tfsNextWeek;
      end;
    end;
  end;
end;

procedure TDM.GenerateRandomEvents;

  function CreateEvent(AResourceID: Variant; const ACaption: string;
    AStart, AFinish: TDateTime; AAllDayEvent: Boolean;
    AState, AColor: TColor): TcxSchedulerEvent;
  begin
    Result := SchedulerUnboundStorage.CreateEvent;
    Result.ResourceID := AResourceID;
    Result.Caption := ACaption;
    if AAllDayEvent then
      AStart := DateOf(AStart);
    Result.Start := AStart;
    Result.Finish := AFinish;
    Result.AllDayEvent := AAllDayEvent;
    Result.State := AState;
    Result.LabelColor := AColor;
  end;

  function GetStart(AResourceID: Integer): TDateTime;
  const
    MaxRandomPeriod = 365;
  var
    AWorkStart, AWorkFinish: TTime;
  begin
    repeat
      Result := Date - MaxRandomPeriod div 2 + Random(MaxRandomPeriod);
      if (AResourceID = 3) or not(dxDayOfWeek(Result) in [dSunday, dSaturday])
        then
        Break;
    until False;
    AWorkStart := SchedulerUnboundStorage.Resources.Items[AResourceID].WorkStart;
    AWorkFinish := SchedulerUnboundStorage.Resources.Items[AResourceID].WorkFinish;
    if AResourceID = 3 then
    begin
      if dxDayOfWeek(Result) in [dSunday, dSaturday] then
        Result := Result + AWorkStart + Random(12) * HourToTime
      else
        Result := Result + AWorkFinish + Random(4) * HourToTime;
    end
    else
      Result := Result + AWorkStart + Random(8) * HourToTime;
  end;

  procedure GenerateBirthdays;
  var
    AName: string;
    AEvent: TcxSchedulerEvent;
  begin
    clPersons.First;
    while not clPersons.Eof do
    begin
      if clPersonsBirthDate.IsNull then
      begin
        clPersons.Next;
        Continue;
      end;
      AName := GetFullName(clPersonsFirstName.AsString,
        clPersonsMiddleName.AsString,
        clPersonsLastName.AsString);
      AEvent := CreateEvent(2, AName, clPersonsBirthDate.Value,
        clPersonsBirthDate.Value, True, 3, EventLabelColors[8]);
      AEvent.EventType := etPattern;
      AEvent.RecurrenceInfo.Recurrence := cxreYearly;
      AEvent.RecurrenceInfo.Periodicity := MonthOf(AEvent.Start);
      AEvent.RecurrenceInfo.DayNumber := DayOf(AEvent.Start);
      AEvent.RecurrenceInfo.Start := AEvent.Start;
      AEvent.RecurrenceInfo.Count := -1;
      AEvent.Post;
      clPersons.Next;
    end;
  end;

  procedure GenerateDailyMeeting;
  var
    AEvent: TcxSchedulerEvent;
    AStart: TDateTime;
  begin
    AStart := Today + 10 * HourToTime;
    AEvent := CreateEvent(0, 'Daily Meeting', AStart,
      AStart + 15 * MinuteToTime, False, 2, EventLabelColors[2]);
    AEvent.EventType := etPattern;
    AEvent.RecurrenceInfo.Recurrence := cxreDaily;
    AEvent.RecurrenceInfo.Count := -1;
    AEvent.RecurrenceInfo.DayType := cxdtDay;
    AEvent.RecurrenceInfo.OccurDays := [dMonday, dTuesday, dWednesday,
      dThursday, dFriday];
    AEvent.Post;
  end;

  procedure GenerateEvents;
  var
    AResourceID, AState, AColor: Integer;
    ACaption: string;
    AStart, AFinish: TDateTime;
  begin
    mdCalendar.First;
    while not mdCalendar.Eof do
    begin
      AResourceID := mdCalendarResourceID.Value - 1;
      ACaption := mdCalendarCaption.AsString;
      AState := mdCalendarLabel.Value;
      AColor := mdCalendarColor.Value;
      AStart := GetStart(AResourceID);
      AFinish := AStart + ((Random(5) + 1) * 30) * MinuteToTime;
      CreateEvent(AResourceID, ACaption, AStart, AFinish, False, AState,
        EventLabelColors[AColor]).Post;
      mdCalendar.Next;
    end;
  end;

begin
  SchedulerUnboundStorage.BeginUpdate;
  try
    GenerateDailyMeeting;
    GenerateEvents;
    GenerateBirthdays;
  finally
    SchedulerUnboundStorage.EndUpdate;
  end;
end;

procedure TDM.DoCorrectDates(ADataSet: TClientDataSet; const AFieldsNames: array of string);

  procedure IncDateTimeField(AField: TDateTimeField; ADaysCount: Integer);
  begin
    if not AField.IsNull and (AField.AsDateTime > 0) then
      AField.AsDateTime := AField.AsDateTime + ADaysCount;
  end;

var
  I, ADiffDays: Integer;
begin
  ADiffDays := Trunc(Date - GetMaxValue(ADataSet, 1));
  ADataSet.DisableControls;
  try
    ADataSet.First;
    while not ADataSet.Eof do
    begin
      if not((ADataSet = clMails) and (ADataSet.FieldByName('BoxID').AsInteger = 7)) then
      begin
        ADataSet.Edit;
        for I := Low(AFieldsNames) to High(AFieldsNames) do
          IncDateTimeField(ADataSet.FieldByName(AFieldsNames[I]) as TDateTimeField, ADiffDays);
        if (ADataSet = clTasks) and (ADataSet.FieldByName('Status').AsInteger <> tstCompleted) and
          not ADataSet.FieldByName('DateDue').IsNull and not ADataSet.FieldByName('DateStart').IsNull and
          (Random(100) < 34) then
          ADataSet.FieldByName('DateDue').AsDateTime := ADataSet.FieldByName('DateStart').AsDateTime - 1 - Random(5);
        ADataSet.Post;
      end;
      ADataSet.Next;
    end;
    ADataSet.First;
  finally
    ADataSet.EnableControls;
  end;
end;

function TDM.GenerateMailID: Integer;
begin
  Inc(FMailMaxID);
  Result := FMailMaxID;
end;

function TDM.GetMaxValue(AClientDataSet: TClientDataSet; const ANumber: Integer = 0): Variant;
var
  I: Integer;
begin
  for I := 0 to AClientDataSet.Aggregates.Count - 1 do
    AClientDataSet.Aggregates[I].Active := True;
  AClientDataSet.AggregatesActive := True;
  Result := AClientDataSet.Aggregates[ANumber].Value;
  AClientDataSet.AggregatesActive := False;
  for I := 0 to AClientDataSet.Aggregates.Count - 1 do
    AClientDataSet.Aggregates[I].Active := False;
end;

procedure TDM.Initialize;
var
  AProgramPath: string;
begin
  AProgramPath := GetProgramPath;

  clPersons.LoadFromFile(AProgramPath + 'Data\Contacts.dat');
  OpenCustomerChildClientDataSet(clPersons, clContacts, 'CustomerID > 0');
  FContactMaxID := GetMaxValue(clContacts);

  mdAttachments.LoadFromBinaryFile(AProgramPath + 'Data\Attachments.dat');
  mdMailBoxes.LoadFromBinaryFile(AProgramPath + 'Data\MailBoxes.dat');
  clMails.LoadFromFile(AProgramPath + 'Data\Mails.dat');
  clNewMails.LoadFromFile(AProgramPath + 'Data\NewMails.xml');
  FMailMaxID := GetMaxValue(clMails);
  DoCorrectDates(clMails, ['Date']);

  ReopenTaskEmployees;
  clTasks.LoadFromFile(AProgramPath + 'Data\Tasks.xml');
  FTaskMaxID := GetMaxValue(clTasks);
  DoCorrectDates(clTasks, ['DateCreated', 'DateStart', 'DateDue', 'DateCompleted']);

  mdCalendar.LoadFromTextFile(AProgramPath + 'Data\CalendarData.txt');
  GenerateRandomEvents;
end;

function TDM.IsAvailableNewMails: Boolean;
begin
  Result := (clNewMails.RecordCount > 0);
end;

procedure TDM.LoadToBlob(ABlob: TBlobField; AStream: TMemoryStream);
begin
  AStream.Position := 0;
  ABlob.LoadFromStream(AStream);
end;

procedure TDM.ReceiveNewMail;
var
  AMailBoxID, AMailID: Integer;
  AMailFrom, AMailSubject: string;
  AContent: TMemoryStream;
begin
  AContent := TMemoryStream.Create;
  try
    AMailBoxID := clNewMailsBoxID.Value;
    AMailFrom := clNewMailsFrom.AsString;
    AMailSubject := clNewMailsSubject.AsString;
    clNewMailsContent.SaveToStream(AContent);
    AMailID := AddMail(AMailFrom, AMailSubject, True, -1, clNewMailsPriority.Value, AMailBoxID,
      clNewMailsAttachmentID.Value, Now, AContent);
    UnreadMailsOffset(AMailBoxID, 1);
    CreateAlert(AMailFrom, AMailSubject, AMailBoxID, AMailID);
  finally
    AContent.Free;
  end;
end;

procedure TDM.SetDateCompleted;
begin
  if clTasksCompleted.AsInteger = 100 then
    clTasksDateCompleted.AsDateTime := Now
  else
    clTasksDateCompleted.Clear;
end;

procedure TDM.SetLocale(ALocale: Cardinal);
begin
  cxLocalizer1.Active := True;
  cxLocalizer1.Locale := ALocale;
  if cxLocalizer1.Locale <> 0 then
  begin
    Application.BiDiMode := bdRightToLeft;
    SetThreadLocale(cxLocalizer1.Locale);
  end;
end;

procedure TDM.UnreadMailsOffset(AMailBoxID, AUnreadOffset: Integer);
var
  ADataSet: TDataSet;
  ARecNo: Integer;
begin
  ADataSet := mdMailBoxes;
  ADataSet.DisableControls;
  try
    ARecNo := ADataSet.RecNo;
    while ADataSet.Locate('ID', AMailBoxID, []) do
    begin
      SetFieldValue(ADataSet.FieldByName('UnreadCount'), ADataSet.FieldByName('UnreadCount').AsInteger + AUnreadOffset);
      AMailBoxID := ADataSet.FieldByName('ParentID').AsInteger;
    end;
    ADataSet.RecNo := ARecNo;
  finally
    ADataSet.EnableControls;
  end;
end;

procedure TDM.OpenCustomerChildClientDataSet(AParentDataSet, AChildDataSet: TClientDataSet;
  AFilter: string);
var
  AOldFilter: string;
  AOldFiltered: Boolean;
  AnID: Integer;
begin
  AParentDataSet.DisableControls;
  try
    AnID := AParentDataSet.FieldByName('CustomerID').AsInteger;
    AOldFilter := AParentDataSet.Filter;
    AOldFiltered := AParentDataSet.Filtered;
    AParentDataSet.Filter := AFilter;
    AParentDataSet.Filtered := True;

    AChildDataSet.Close;
    AChildDataSet.Open;

    AParentDataSet.Filter := AOldFilter;
    AParentDataSet.Filtered := AOldFiltered;
    AParentDataSet.Locate('CustomerID', AnID, []);
  finally
    AParentDataSet.EnableControls;
  end;
end;

procedure TDM.ReopenTaskEmployees;
begin
  OpenCustomerChildClientDataSet(clContacts, clTaskEmployees, 'IsEmployee = 1');
  clTaskEmployees.Append;
  clTaskEmployeesCustomerId.AsInteger := 0;
  clTaskEmployeesGender.AsInteger := gvMale;
  clTaskEmployeesTitle.AsInteger := ntMr;
  clTaskEmployeesLastName.AsString := 'Brooks';
  clTaskEmployees.Post;
  clTaskEmployees.First;
end;

procedure TDM.clPersonsCalcFields(ADataSet: TDataSet);
begin
  ADataSet.FieldByName('Name').AsString := GetFullName(ADataSet.FieldByName('FirstName').AsString,
    ADataSet.FieldByName('MiddleName').AsString, ADataSet.FieldByName('LastName').AsString);

  if ADataSet = clContacts then
  begin
    ADataSet.FieldByName('Name1').AsString := ADataSet.FieldByName('Name').AsString[1];
    ADataSet.FieldByName('FullAddress').AsString := GetFullAddress(ADataSet.FieldByName('AddressLine').AsString,
      ADataSet.FieldByName('City').AsString, ADataSet.FieldByName('State').AsString,
      ADataSet.FieldByName('ZipCode').AsString);
  end;
end;

procedure TDM.clTaskEmployeesCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('Name').AsString := GetEmployeeName(DataSet.FieldByName('Title').AsInteger,
    DataSet.FieldByName('FirstName').AsString, DataSet.FieldByName('MiddleName').AsString,
    DataSet.FieldByName('LastName').AsString);
end;

procedure TDM.clTasksCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('FlagStatus').AsInteger := GetTaskFlagStatus(DataSet.FieldByName('Status').AsInteger,
    DataSet.FieldByName('DateDue').Value);
end;

procedure TDM.clTasksCompletedChange(Sender: TField);

  function GetStatus(ACompleted, AStatus: Integer): Integer;
  begin
    Result := AStatus;
    if (ACompleted = 100) and (AStatus <> tstCompleted) then
      Result := tstCompleted
    else
    if (ACompleted = 0) and ((AStatus <> tstNotStarted)) then
      Result := tstNotStarted
    else
    if (ACompleted > 0) and (ACompleted < 100) and (AStatus in [tstNotStarted, tstCompleted]) then
      Result := tstInProgress;
  end;

var
  ANewStatus: Integer;
begin
  ANewStatus := GetStatus(Sender.AsInteger, clTasks.FieldByName('Status').AsInteger);
  if ANewStatus <> clTasks.FieldByName('Status').AsInteger then
    clTasks.FieldByName('Status').AsInteger := ANewStatus;
end;

procedure TDM.clTasksStatusChange(Sender: TField);

  function GetCompleted(ACompleted, AStatus: Integer): Integer;
  begin
    Result := ACompleted;
    if ACompleted = 100 then
    case AStatus of
      tstNotStarted:
        Result := 0;
      tstInProgress:
        Result := 25;
      tstWaiting:
        Result := 70;
      tstDeferred:
        Result := 90;
    end
    else
    if AStatus = tstCompleted then
      Result := 100;
  end;

var
  ANewCompleted: Integer;
begin
  ANewCompleted := GetCompleted(clTasks.FieldByName('Completed').AsInteger, Sender.AsInteger);
  if ANewCompleted <> clTasks.FieldByName('Completed').AsInteger then
    clTasks.FieldByName('Completed').AsInteger := ANewCompleted;
  SetDateCompleted;
end;

end.
