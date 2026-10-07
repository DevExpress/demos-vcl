unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxSchedulerLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, Vcl.ActnList, Vcl.ImgList, dxBar, dxBarApplicationMenu,
  dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore, dxBarExtItems, cxLabel, cxTextEdit,
  dxNavBar, dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses, dxCore,
  cxPCdxBarPopupMenu, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerTreeListBrowser, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxGroupBox, cxColorComboBox, cxMaskEdit, cxDropDownEdit, cxCheckBox,
  Vcl.StdCtrls, cxButtons, cxPC, cxSchedulercxGridConnection,
  cxSchedulerAggregateStorage, cxExtEditRepositoryItems, cxEditRepositoryItems,
  Data.Win.ADODB, cxSchedulerDBStorage, dxNavBarBase, dxNavBarCollns, System.DateUtils,
  cxDateNavigator, cxDateUtils, dxPScxCommon, dxDemoUtils, cxExportSchedulerLink,
  cxSchedulerDialogs, cxSchedulerEventEditor, cxSchedulerOutlookExchange,
  dxPScxPivotGridLnk, dxLayoutcxEditAdapters, dxLayoutLookAndFeels, dxSkinscxSchedulerPainter,
  dxLayoutContainer, dxLayoutControl, cxSchedulerRecurrence, cxSchedulerRibbonStyleEventEditor,
  dxRibbonCustomizationForm, dxActions, dxPSActions, cxSchedulerActions, cxSchedulerAgendaView, dxScreenTip,
  dxBarBuiltInMenu, dxCustomHint, cxHint, dxPrinting, dxRangeControl,
  cxSchedulerRangeControlClientProperties, cxSpinEdit, cxImageList, cxImage, dxLayoutControlAdapters, dxNavBarStyles,
  dxRibbonBackstageView, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, dxGallery,
  cxDataControllerConditionalFormattingRulesManagerDialog, 
  cxTL, cxInplaceContainer, cxSchedulerWebServiceStorage,
  dxAuthorizationAgents, System.Generics.Collections, dxDateRanges, dxScrollbarAnnotations, cxTLdxBarBuiltInMenu,
  System.Actions, System.ImageList, dxShellDialogs, cxGeometry, dxFramedControl, dxPanel;

type
  { TcxDialogStylesMenuController }

  TcxDialogStylesMenuController = class(TdxBarMenuItemClickController)
  private
    FStandardOnly: Boolean;
    FSubItem: TdxBarSubItem;

    function GetItemLinks: TdxBarItemLinks;
  protected
    procedure ActivateFirstItem;
    procedure DownItem(ATag: Integer);
    function GetItem(AIndex: Integer): TdxBarButton;
    procedure MenuItemClickHandler(Sender: TObject); override;
    procedure PopulateItems;
    procedure SetStandardOnly(AValue: Boolean);
    procedure UpdateEnables;

    property SubItem: TdxBarSubItem read FSubItem;
    property ItemLinks: TdxBarItemLinks read GetItemLinks;
  public
    constructor Create(ASubItem: TdxBarSubItem); virtual;

    procedure BuildMenuEx;

    property Items[AIndex: Integer]: TdxBarButton read GetItem;
    property StandardOnly: Boolean read FStandardOnly write SetStandardOnly;
  end;

  TcxSchedulerDemo = (scdNone, scdDay, scdWorkWeek, scdWeek, scdMonth, scdTimeGrid, scdYearView, scdGanttView, scdAgenda,
    scdRangeControl, scdReminders, scdTimeZones, scdVisualStyles, scdCustomDraw, scdCustomEditors,
    scdHolidays, scdGridConnection, scdWebServiceStorage);

  { TfrmMain }

  TfrmMain = class(TfrmMainBase)
    lcClientGroup_Root: TdxLayoutGroup;
    lcClient: TdxLayoutControl;
    liRange: TdxLayoutItem;
    grdEventsTable: TcxGrid;
    grdEventsTableTableView: TcxGridDBTableView;
    grdEventsTableTableViewID: TcxGridDBColumn;
    grdEventsTableTableViewParentID: TcxGridDBColumn;
    grdEventsTableTableViewType: TcxGridDBColumn;
    grdEventsTableTableViewStart: TcxGridDBColumn;
    grdEventsTableTableViewFinish: TcxGridDBColumn;
    grdEventsTableTableViewOptions: TcxGridDBColumn;
    grdEventsTableTableViewCaption: TcxGridDBColumn;
    grdEventsTableTableViewRecurrenceIndex: TcxGridDBColumn;
    grdEventsTableTableViewLocation: TcxGridDBColumn;
    grdEventsTableTableViewMessage: TcxGridDBColumn;
    grdEventsTableTableViewReminderDate: TcxGridDBColumn;
    grdEventsTableTableViewReminderMinutes: TcxGridDBColumn;
    grdEventsTableTableViewState: TcxGridDBColumn;
    grdEventsTableTableViewLabelColor: TcxGridDBColumn;
    grdEventsTableTableViewActualStart: TcxGridDBColumn;
    grdEventsTableTableViewActualFinish: TcxGridDBColumn;
    grdEventsTableTableViewConnection: TcxGridTableView;
    grdEventsTableLevel1: TcxGridLevel;
    grdEventsTableLevel2: TcxGridLevel;
    lstSchedulerActions: TActionList;
    acUnbound: TAction;
    acBound: TAction;
    acCustomDialogs: TAction;
    acCustomDraw: TAction;
    acVisualStyles: TAction;
    acXML: TAction;
    acExcel: TAction;
    acText: TAction;
    acOutlookWithScheduler: TAction;
    acSchedulerWithOutlook: TAction;
    acPrintPreview: TAction;
    acPrint: TAction;
    acHolidays: TAction;
    acAggregate: TAction;
    acGridConnection: TAction;
    SaveDialog1: TdxSaveFileDialog;
    cxEditRepository1: TcxEditRepository;
    ComboBoxItem: TcxEditRepositoryComboBoxItem;
    RichItem: TcxEditRepositoryRichItem;
    dxBarPopupMenu: TdxBarPopupMenu;
    pmGenerateHolidaysEvents: TPopupMenu;
    miGenerateHolidaysEventsForAllResources: TMenuItem;
    miGenerateHolidaysEventsOnlyESPN: TMenuItem;
    miGenerateHolidaysEventsForEUROSPORTNEWSandFOXFOOTY: TMenuItem;
    Scheduler: TcxScheduler;
    mmTemplate: TMemo;
    btnGenerateMoreEvents: TcxButton;
    cbxBoundDataBase: TcxComboBox;
    btnDeleteAllEvents: TcxButton;
    btnShowHolidaysEditor: TcxButton;
    btnGenerateHolidaysEvents: TcxButton;
    ccbHolidaysColor: TcxColorComboBox;
    btnGanttExpandAll: TcxButton;
    btnGanttCollapseAll: TcxButton;
    cbxEventsStyle: TcxComboBox;
    cbxCurrentZone: TcxComboBox;
    cbxAdditionalTimeZone: TcxComboBox;
    cbxYearViewScale: TcxComboBox;
    imgMain: TcxImageList;
    imgResources: TcxImageList;
    imgParts: TImageList;
    imgEventImages: TImageList;
    srEventStyles: TcxStyleRepository;
    stEventStyle1: TcxStyle;
    stEventStyle2: TcxStyle;
    stEventStyle3: TcxStyle;
    stEventStyle4: TcxStyle;
    stRed: TcxStyle;
    stCustomDrawContainer: TcxStyle;
    stCustomDrawSelectedContainer: TcxStyle;
    stCustomDrawVSeparator: TcxStyle;
    stCustomDrawHSeparator: TcxStyle;
    GridConnection: TcxSchedulerGridConnection;
    imgSports_svg: TcxImageList;
    UnboundStorageTwo: TcxSchedulerStorage;
    SchedulerGanttStorage: TcxSchedulerStorage;
    SchedulerHolidaysStorage: TcxSchedulerStorage;
    SchedulerHolidays: TcxSchedulerHolidays;
    AggregateStorage: TcxSchedulerAggregateStorage;
    EventsTable: TADOTable;
    EventsDataSource: TDataSource;
    DBStorage: TcxSchedulerDBStorage;
    UnboundStorage: TcxSchedulerStorage;
    EventsCommand: TADOCommand;
    DBConnection: TADOConnection;
    cxStylesRepository: TcxStyleRepository;
    stEvents: TcxStyle;
    stHeaders: TcxStyle;
    stContent: TcxStyle;
    stContentSelection: TcxStyle;
    stResources: TcxStyle;
    stGroupSeparator: TcxStyle;
    stContainer: TcxStyle;
    stBackground: TcxStyle;
    stDateContent: TcxStyle;
    stVertSplitter: TcxStyle;
    stTimeRuler: TcxStyle;

    nbgLayoutFeatures: TdxNavBarGroup;
    nbgOtherFeatures: TdxNavBarGroup;
    nbiAgenda: TdxNavBarItem;
    nbiDay: TdxNavBarItem;
    nbiWorkWeek: TdxNavBarItem;
    nbiWeek: TdxNavBarItem;
    nbiMonth: TdxNavBarItem;
    nbiTimeGrid: TdxNavBarItem;
    nbiYear: TdxNavBarItem;
    nbiReminders: TdxNavBarItem;
    nbiCustomDraw: TdxNavBarItem;
    nbiDifferentTimeZones: TdxNavBarItem;
    nbiStyles: TdxNavBarItem;
    nbiCustomEditors: TdxNavBarItem;
    nbgNew: TdxNavBarGroup;
    nbiGanttView: TdxNavBarItem;
    nbiHolidays: TdxNavBarItem;
    nbiGridConnection: TdxNavBarItem;
    pslnkScheduler: TcxSchedulerReportLink;
    dxBarManagerBar1: TdxBar;
    dxbtnAgendaView: TdxBarButton;
    biView: TdxBarSubItem;
    biEvents: TdxBarSubItem;
    biResources: TdxBarSubItem;
    biOptions: TdxBarSubItem;
    dxbci: TdxBarContainerItem;
    dxBarSeparator1: TdxBarSeparator;
    dxbtnGanttViewSnapEventsToTimeSlots: TdxBarButton;
    dxbtnTimeGridSnapEventsToTimeSlots: TdxBarButton;
    dxbtnSync: TdxBarSubItem;
    dxbtnSchedulerWithOutlook: TdxBarButton;
    dxbtnOutlookWithScheduler: TdxBarButton;
    dxbtnControlBox: TdxBarButton;
    dxbtnNavigator: TdxBarButton;
    dxbtnCreating: TdxBarButton;
    dxbtnDeleting: TdxBarButton;
    dxbtnRecurrence: TdxBarButton;
    dxbtnDialogEditing: TdxBarButton;
    dxbtnInplaceEditing: TdxBarButton;
    dxbtnReadOnly: TdxBarButton;
    dxbtnSizing: TdxBarButton;
    dxbtnMoving: TdxBarButton;
    dxbtnMovingBetweenResource: TdxBarButton;
    dxbtnIntersection: TdxBarButton;
    dxbtnSharing: TdxBarButton;
    dxbtnGroupBy: TdxBarSubItem;
    dxbtnResourcePerPage: TdxBarSubItem;
    dxbtnLayoutEditor: TdxBarButton;
    dxbtnByNone: TdxBarButton;
    dxbtnByDate: TdxBarButton;
    dxbtnByResource: TdxBarButton;
    dxptnAllPerPage: TdxBarButton;
    dxbtnOnePerPage: TdxBarButton;
    dxbtnTwoPerPage: TdxBarButton;
    dxbtnThreePerPage: TdxBarButton;
    dxbtnAgendaViewOptions: TdxBarSubItem;
    dxbtnDayViewOptions: TdxBarSubItem;
    dxbtnWeekViewOptions: TdxBarSubItem;
    dxbtnMonthViewOptions: TdxBarSubItem;
    dxbtnTimeGridViewOptions: TdxBarSubItem;
    dxbtnYearViewOptions: TdxBarSubItem;
    dxbtnAllDayEventsContainer: TdxBarButton;
    dxbtnTimeRulerMinutes: TdxBarButton;
    dxbtnWorkTimeOnly: TdxBarButton;
    dxbtnSingleColumn: TdxBarButton;
    dxbtnWeekTimeAsClock: TdxBarButton;
    dxbtnWeekCompressWeekends: TdxBarButton;
    dxbtnMonthTimeAsClock: TdxBarButton;
    dxbtnMonthCompressWeekends: TdxBarButton;
    dxbtnDetailInfo: TdxBarButton;
    dxbtnTimeGridWorkTimeOnly: TdxBarButton;
    dxbtnWorkDaysOnly: TdxBarButton;
    dxbtnAllDayEventsOnly: TdxBarButton;
    dxbtnMajorUnit: TdxBarCombo;
    dxbtnMinorUnit: TdxBarCombo;
    dxbtnDayHeader: TdxBarButton;
    dxbtnShowEvents: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxbtnAllDayAreaHeightDefault: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxbtnAllDayAreaHeight3: TdxBarButton;
    dxbtnAllDayAreaHeight5: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxbtnAllDayAreaScrollBarDefault: TdxBarButton;
    dxbtnAllDayAreaScrollBarNever: TdxBarButton;
    dxbtnAllDayAreaScrollBarAlways: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxbtnGanttHotTrack: TdxBarButton;
    dxbtnGanttShowAsProgress: TdxBarButton;
    dxbtnGanttViewShowExpandButton: TdxBarButton;
    dxbarEventsGroup: TdxBarGroup;
    dxbarResourcesGroup: TdxBarGroup;
    bsiStylesEditor: TdxBarSubItem;
    dxbtnShowPrintForm: TdxBarLargeButton;
    dxbtnShowPrintPreviewForm: TdxBarLargeButton;
    dxbtnShowPageSetupForm: TdxBarLargeButton;
    dxSchedulerShowPrintForm1: TdxSchedulerShowPrintForm;
    dxSchedulerShowPrintPreviewForm1: TdxSchedulerShowPrintPreviewForm;
    dxSchedulerShowPageSetupForm1: TdxSchedulerShowPageSetupForm;
    dxSchedulerDateNavigator1: TdxSchedulerDateNavigator;
    dxSchedulerResourcesLayoutEditor1: TdxSchedulerResourcesLayoutEditor;
    dxSchedulerGroupByNone1: TdxSchedulerGroupByNone;
    dxSchedulerGroupByDate1: TdxSchedulerGroupByDate;
    dxSchedulerGroupByResource1: TdxSchedulerGroupByResource;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxbtnAgendaShowLocation: TdxBarButton;
    dxbtnAgendaShowMessages: TdxBarButton;
    dxbtnAgendaShowResources: TdxBarButton;
    dxbtnAgendaShowTimeAsClock: TdxBarButton;
    dxbtnAgendaHorizontal: TdxBarButton;
    dxbtnAgendaVertical: TdxBarButton;
    dxbtnAgendaAllDays: TdxBarButton;
    dxbtnAgendaSelectedDays: TdxBarButton;
    dxbtnAgendaSelectedNonEmptyDays: TdxBarButton;
    biDataBinding: TdxBarSubItem;
    dxbtnDataBindingBound: TdxBarButton;
    dxbtnDataBindingUnbound: TdxBarButton;
    dxbtnDataBindingAggregate: TdxBarButton;
    dxRangeControl: TdxRangeControl;
    nbiRangeControl: TdxNavBarItem;
    cbxRangeDisplayEventsAs: TcxComboBox;
    seRangeThumbnailHeight: TcxSpinEdit;
    seRangeScaleIntervalMinimalWidth: TcxSpinEdit;
    dxSchedulerDayView: TdxSchedulerDayView;
    dxBarArrange: TdxBar;
    dxBarLargeButtonDay: TdxBarLargeButton;
    dxSchedulerWorkWeekView: TdxSchedulerWorkWeekView;
    dxBarLargeButtonWorkWeek: TdxBarLargeButton;
    dxSchedulerWeekView: TdxSchedulerWeekView;
    dxBarLargeButtonWeek: TdxBarLargeButton;
    dxSchedulerMonthView: TdxSchedulerMonthView;
    dxBarLargeButtonMonth: TdxBarLargeButton;
    dxSchedulerTimeGridView: TdxSchedulerTimeGridView;
    dxBarLargeButtonTimeline: TdxBarLargeButton;
    dxSchedulerYearView: TdxSchedulerYearView;
    dxBarLargeButtonYear: TdxBarLargeButton;
    dxSchedulerGanttView: TdxSchedulerGanttView;
    dxBarLargeButtonGanttView: TdxBarLargeButton;
    dxSchedulerAgendaView: TdxSchedulerAgendaView;
    dxBarLargeButtonAgenda: TdxBarLargeButton;
    bvtSynchronize: TdxRibbonBackstageViewTabSheet;
    gbbvTabSynchronizeCaption: TcxGroupBox;
    lbbvTabSynchronizeCaption: TcxLabel;
    gbSynchronizeItems: TcxGroupBox;
    gbSynchronizePane: TcxGroupBox;
    dxBevel2: TdxBevel;
    bvgcSynchronize: TdxRibbonBackstageViewGalleryControl;
    bvgcSynchronizeGroup1: TdxRibbonBackstageViewGalleryGroup;
    bvgcSchedulerWithOutlook: TdxRibbonBackstageViewGalleryItem;
    bvgcOutlookWithScheduler: TdxRibbonBackstageViewGalleryItem;
    dxbtnDayHeaderModernDisplayMode: TdxBarSubItem;
    dxbtnViewStyle: TdxBarSubItem;
    dxbtnViewStyleModern: TdxBarButton;
    dxbtnViewStyleClassic: TdxBarButton;
    dxbtnDayHeaderModernDisplayDefault: TdxBarButton;
    dxbtnDayHeaderModernDisplayClassic: TdxBarButton;
    dxbtnDayHeaderModernDisplayDayAndDate: TdxBarButton;
    lliDescription: TdxLayoutLabeledItem;
    dnWebService: TcxDateNavigator;
    tlWebServiceCalendars: TcxTreeList;
    tcName: TcxTreeListColumn;
    tcId: TcxTreeListColumn;
    btnWebServiceAddAccount: TcxButton;
    btnWebServiceReloadEvents: TcxButton;
    actReloadEvents: TAction;
    WebServiceStorage: TcxSchedulerWebServiceStorage;
    pmAddAccount: TPopupMenu;
    nbiWebService: TdxNavBarItem;
    miMicrosoftOfficeCalendar: TMenuItem;
    miGoogleCalendar: TMenuItem;
    btnWebServiceShowAuthorizationSettingsForm: TcxButton;
    dxRibbon1Tab3: TdxRibbonTab;
    dxLayoutSkinTimeZoneGroup: TdxLayoutSkinLookAndFeel;
    dxbtnViewModernStyleHintShowResources: TdxBarButton;
    dxbtnViewModernStyleHintInformation: TdxBarSubItem;
    dxbtnViewModernStyleHintShowStart: TdxBarButton;
    dxbtnViewModernStyleHintShowLocation: TdxBarButton;
    dxbtnViewModernStyleHintShowFinish: TdxBarButton;
    dxbtnViewModernStyleHintShowReminder: TdxBarButton;
    dxbtnViewModernStyleHintShowTaskComplete: TdxBarButton;
    lsiRange: TdxLayoutSplitterItem;
    liEventsTable: TdxLayoutItem;
    lsiEventsTable: TdxLayoutSplitterItem;
    lgScheduler: TdxLayoutGroup;
    lgWebService: TdxLayoutGroup;
    liWebServiceNavigator: TdxLayoutItem;
    liWebServiceAddAccount: TdxLayoutItem;
    liWebServiceCalendars: TdxLayoutItem;
    liWebServiceShowAuthorizationSettingsForm: TdxLayoutItem;
    liWebServiceReloadEvents: TdxLayoutItem;
    lsiWebService: TdxLayoutSplitterItem;
    liSchedulerControl: TdxLayoutItem;
    lcControlBoxGroup_Root: TdxLayoutGroup;
    lcControlBox: TdxLayoutControl;
    lgTemplate: TdxLayoutGroup;
    liTemplateMemo: TdxLayoutItem;
    lgBound: TdxLayoutGroup;
    liBoundDataBase: TdxLayoutItem;
    liBoundGenerateMoreEvents: TdxLayoutItem;
    liBoundDeleteAllEvents: TdxLayoutItem;
    lcbBoundSmartRefresh: TdxLayoutCheckBoxItem;
    lgHolidays: TdxLayoutGroup;
    liHolidaysShowEditor: TdxLayoutItem;
    liHolidayGenerateEvents: TdxLayoutItem;
    lcbHolidaysDatesHints: TdxLayoutCheckBoxItem;
    liHolidaysColor: TdxLayoutItem;
    lgGanttView: TdxLayoutGroup;
    liGanttViewCollapseAll: TdxLayoutItem;
    liGanttViewExpandAll: TdxLayoutItem;
    liGanttViewEventsStyle: TdxLayoutItem;
    lcbGanttViewExpandButtons: TdxLayoutCheckBoxItem;
    lcbGanttViewProgressLine: TdxLayoutCheckBoxItem;
    lcbGanttViewSnapEvents: TdxLayoutCheckBoxItem;
    lcbGanttViewTreeBrowser: TdxLayoutCheckBoxItem;
    lgTimeZones: TdxLayoutGroup;
    liCurrentTimeZone: TdxLayoutItem;
    lcbCurrentTimeZoneDST: TdxLayoutCheckBoxItem;
    liAdditionalTimeZone: TdxLayoutItem;
    lcbAdditionalTimeZoneDST: TdxLayoutCheckBoxItem;
    lgAggregated: TdxLayoutGroup;
    lgAggregatedStorages: TdxLayoutGroup;
    lcbAggregatedStoragesBound: TdxLayoutCheckBoxItem;
    lcbAggregatedStoragesUnbound: TdxLayoutCheckBoxItem;
    lgYearView: TdxLayoutGroup;
    liYearViewScale: TdxLayoutItem;
    lcbYearViewAllDayOnly: TdxLayoutCheckBoxItem;
    lgTimeGridView: TdxLayoutGroup;
    lcbTimeGridViewSnapEvents: TdxLayoutCheckBoxItem;
    lcbTimeGridViewShowDetailInfo: TdxLayoutCheckBoxItem;
    lgMonthView: TdxLayoutGroup;
    lcbMonthViewHideWeekends: TdxLayoutCheckBoxItem;
    lgReminders: TdxLayoutGroup;
    lcbReminderByResource: TdxLayoutCheckBoxItem;
    lgRange: TdxLayoutGroup;
    lcbRangeAutoChangeSchedulerView: TdxLayoutCheckBoxItem;
    lcbRangeAutoAdjustRangeControlSettings: TdxLayoutCheckBoxItem;
    lcbRangeAutoFormatCaptions: TdxLayoutCheckBoxItem;
    liRangeDisplayEventsAs: TdxLayoutItem;
    liRangeThumbnailHeight: TdxLayoutItem;
    liRangeScaleIntervalMinimalWidth: TdxLayoutItem;
    procedure SchedulerGetEventEditProperties(Sender: TObject;
      AEvent: TcxSchedulerControlEvent; var AProperties: TcxCustomEditProperties);
    procedure SchedulerInitEventImages(Sender: TcxCustomScheduler;
      AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
    procedure SchedulerLayoutChanged(Sender: TObject);
    procedure SchedulerShowDateHint(Sender: TObject;
      const ADate: TDateTime; var AHintText: string; var AAllow: Boolean);
    procedure SchedulerResourceNavigatorCustomDrawButton(Sender: TcxSchedulerResourceNavigator;
      ACanvas: TcxCanvas; AButton: TcxSchedulerNavigatorButton; var ADone: Boolean);
    procedure SchedulerCustomDrawEvent(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
    procedure SchedulerCustomDrawContent(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerContentCellViewInfo; var ADone: Boolean);
    procedure SchedulerCustomDrawGroupSeparator(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerGroupSeparatorCellViewInfo; var ADone: Boolean);
    procedure SchedulerCustomDrawDayHeader(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDayHeaderCellViewInfo; var ADone: Boolean);
    procedure SchedulerCustomDrawResourceHeader(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerHeaderCellViewInfo; var ADone: Boolean);
    procedure SchedulerStylesGetEventStyle(Sender: TObject;
      AEvent: TcxSchedulerEvent; var AStyle: TcxStyle);
    procedure SchedulerViewDayCustomDrawTimeRuler(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerTimeRulerCellViewInfo; var ADone: Boolean);
    procedure SchedulerDateNavigatorCustomDrawHeader(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorMonthHeaderViewInfo; var ADone: Boolean);
    procedure SchedulerDateNavigatorCustomDrawDayCaption(Sender: TObject;
      ACanvas: TcxCanvas;AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo; var ADone: Boolean);
    procedure SchedulerDateNavigatorCustomDrawDayNumber(Sender: TObject;
      ACanvas: TcxCanvas; AViewInfo:TcxSchedulerDateNavigatorDayNumberViewInfo; var ADone: Boolean);
    procedure SchedulerDateNavigatorCustomDrawContent(Sender: TObject; ACanvas: TcxCanvas;
      AViewInfo: TcxSchedulerDateNavigatorMonthContentViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDeleteAllEventsClick(Sender: TObject);
    procedure btnGenerateMoreEventsClick(Sender: TObject);
    procedure cbxBoundDataBaseClick(Sender: TObject);
    procedure YearScaleChanged(Sender: TObject);
    procedure cbxEventsStylePropertiesChange(Sender: TObject);
    procedure OnDataBindingClick(Sender: TObject);
    procedure SynchronizeWithExecute(Sender: TObject);
    procedure acGridConnectionExecute(Sender: TObject);
    procedure ShowHolidaysEditorClick(Sender: TObject);
    procedure btnGenerateHolidaysEventsClick(Sender: TObject);
    procedure ccbHolidayColorPropertiesChange(Sender: TObject);
    procedure OptionsClick(Sender: TObject);
    procedure GanttCollapseEvents(Sender: TObject);
    procedure cbxZonePropertiesChange(Sender: TObject);
    procedure GenerateHolidaysEventsClick(Sender: TObject);
    procedure EventsClick(Sender: TObject);
    procedure ResPerPageClick(Sender: TObject);
    procedure dxbtnAllDayAreaHeightDefaultClick(Sender: TObject);
    procedure dxbtnMajorUnitChange(Sender: TObject);
    procedure dxbtnMinorUnitChange(Sender: TObject);
    procedure ShowExpressPrintingMessage(Sender: TObject);
    procedure dxbtnControlBoxClick(Sender: TObject);
    procedure lstSchedulerActionsUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure cbxRangeDisplayEventsAsPropertiesEditValueChanged(Sender: TObject);
    procedure seRangeThumbnailHeightPropertiesEditValueChanged(Sender: TObject);
    procedure seRangeScaleIntervalMinimalWidthPropertiesEditValueChanged(Sender: TObject);
    procedure bvgcSynchronizeItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure actReloadEventsExecute(Sender: TObject);
    procedure AddAccountClick(Sender: TObject);
    procedure tlWebServiceCalendarsNodeCheckChanged(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AState: TcxCheckBoxState);
    procedure btnWebServiceShowAuthorizationSettingsFormClick(Sender: TObject);
    procedure SchedulerGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent;
      AInfo: TcxSchedulerEventModernStyleHintInfo);
    procedure lcbBoundSmartRefreshClick(Sender: TObject);
    procedure lcbGanttViewExpandButtonsClick(Sender: TObject);
    procedure lcbGanttViewProgressLineClick(Sender: TObject);
    procedure lcbGanttViewSnapEventsClick(Sender: TObject);
    procedure lcbGanttViewTreeBrowserClick(Sender: TObject);
    procedure lcbAdditionalTimeZoneDSTClick(Sender: TObject);
    procedure lcbYearViewAllDayOnlyClick(Sender: TObject);
    procedure lcbTimeGridViewSnapEventsClick(Sender: TObject);
    procedure lcbMonthViewHideWeekendsClick(Sender: TObject);
    procedure lcbReminderByResourceClick(Sender: TObject);
    procedure lcbRangeAutoChangeSchedulerViewClick(Sender: TObject);
    procedure lcbRangeAutoAdjustRangeControlSettingsClick(Sender: TObject);
    procedure lcbRangeAutoFormatCaptionsClick(Sender: TObject);
  private
    FActiveDemo: TcxSchedulerDemo;
    FAgents: TObjectList<TdxOAuth2AuthorizationAgent>;
    FDaysOffIndexes: array [1 .. 2] of Byte;
    FDialogStylesMenuController: TcxDialogStylesMenuController;
    FStartDate: TDateTime;

    procedure CalcDaysOff;
    procedure CheckTemporaryBitmapSize(AImages: TImageList);
    function GetCaptionText: string;
    function GetSyncField: TcxCustomSchedulerStorageField;
    procedure GridConnectionState(AActive: Boolean);
    procedure DrawParts(ACanvas: TcxCanvas; const R: TRect; AImages: TImageList; AState: Integer);
  protected
    AppDir: string;

    procedure CreateDialogStylesMenuItem(ASubItem: TdxBarSubItem);
    procedure DestroyDialogStylesMenuItem;

    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    function GetActiveObject: TPersistent; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetExportFileName: string; override;
    procedure InspectedObjectChanged(ASender: TObject); override;

    function CanSchedulerFocus: Boolean;
    procedure CorrectEventsDates(AStorage: TcxSchedulerStorage; AStartDate: TDateTime);
    procedure DeleteEvents(ARefresh: Boolean);
    procedure GenerateEvents(ACount: Integer);
    procedure GetResourceStream(const AName: string; AStream: TStream);
    procedure LinkTabs;
    procedure LoadUnboundData;
    procedure LoadDataFromFile;
    // inspector notifications
    // procedure OnHideInspector(Sender: TObject);
    // procedure OnInspectorChanged(Sender: TObject);
    //
    procedure SelectDataBase(AIndex: Integer);
    procedure SelectStorage(AIndex: Integer);
    procedure SetSchedulerFocused;
    procedure SetupTimeZonesInfo;
    procedure SyncCustomDraw(ASetHandlers: Boolean);
    procedure SyncDBMode;
    procedure SyncEventsMenuItemsVisibility;
    procedure SyncEventsMenuWithScheduler;
    procedure SyncMenus;
    procedure SyncOptionsWithScheduler;
    procedure SyncScales;
    procedure SyncScheduler;
    procedure SyncSchedulerWithEventsMenu;
    procedure SyncSchedulerWithOptions;
    procedure SyncStyles(ASelect: Boolean);
    procedure SyncViewMenuItemsWithScheduler;

    function WebServiceDemoAddAccount(AClass: TdxOAuth2AuthorizationAgentClass; AProviderClass: TcxSchedulerWebServiceStorageCustomProviderClass): TcxTreeListNode;
    procedure WebServiceDemoAddResource(AAuthIndex, ACalendarIndex: Integer);
    procedure WebServiceDemoRemoveResource(AAuthIndex: Integer; const ACalendarId: string);
    procedure WebServiceDemoPopulateAccountNode(ANode: TcxTreeListNode; AProviderClass: TcxSchedulerWebServiceStorageCustomProviderClass);
    procedure WebServiceDemoShowSpecifyAuthorizationSettingsForm;
  public
    property SyncField: TcxCustomSchedulerStorageField read GetSyncField;
    property CaptionText: string read GetCaptionText;
    function RangeControlProperties: TcxSchedulerRangeControlClientProperties;
  end;

var
  frmMain: TfrmMain;

const
  GenerateCount: Integer = 10000;

implementation

uses
  dxXMLDoc,
  dxProgress, Winapi.ShellAPI, cxFormats, System.Win.Registry,
  dxCustomEditor, SelectStorageUnit, dxOffice11, System.Math,
  dxDemoObjectInspector, cxSchedulerEditorFormManager,
  cxSchedulerWebServiceStorageGoogleProvider,
  cxSchedulerWebServiceStorageOfficeProvider, WebServiceDemoSetupForm;
{$R *.dfm}
{$R cxSchedulerResources.res}

const
  StartIndexes: array [0 .. 21] of Integer = (0, 12, 30, 44, 58, 80, 90, 106,
    126, 157, 174, 196, 208, 220, 226, 234, 238, 242, 249, 260, 267, 272);

  EventsCount: array [0 .. 21] of Integer = (12, 18, 14, 14, 22, 10, 16, 20,
    31, 17, 22, 12, 12, 6, 8, 4, 4, 7, 11, 7, 5, 8);

var
  SportEvents: array of string;

  dxSchedulerDemoDescriptions: array[TcxSchedulerDemo] of string = (
    '',
    'This example demonstrates the scheduler control''s Day View, which provides the most detailed view of the appointments for a particular day.',
    'This example demonstrates the scheduler control''s Work Week View. This view displays appointments for the working days in a particular week.',
    'This example demonstrates the Scheduler control''s Full Week View. It displays all the appointments for a specific week.',
    'This example demonstrates the scheduler control''s Month View. This view provides end-users with an overview of all the appointments in a specific month.',
    'This example demonstrates the scheduler control''s Timeline View. This view displays appointments as horizontal bars along the timescales, and provides end-users with an overview for scheduling purposes',
    'This example demonstrates the scheduler control''s Year View. This view provides an overview of appointments, and allows you to review appointments for a year, half year, or quarter.',
    'This demo introduces the Gantt View to display appointment data.',
    'This example demonstrates the scheduler control''s Agenda View. This view displays a list of appointments in chronological order' +
      ' grouped by day. Appointment labels are shown as color circles. You can use the date navigator to specify the number of displayed days, and drag and drop appointments to rearrange them.',
    'This example demonstrates how to use the RangeControl to scroll and navigate through different periods in the Scheduler control.',
    'This example demonstrates appointment reminders in the Scheduler control.',
    'This example demonstrates how users can switch between different time zones.',
    'This example demonstrates how to paint the scheduler using Styles.',
    'This example demonstrates how to use a custom drawing to modify or enhance the scheduler''s appearance.',
    'This example demonstrates how different editors can be used to edit and display the appointment''s content. Custom editors can be used in the appointment editing dialog and for in-place editing.',
    'This example demonstrates how to add statutory holidays to the scheduler and display their appointments.',
    'This example demonstrates a connection between ExpressScheduler and ExpressQuantumGrid controls that allows ExpressQuantumGrid to mimic the Tasks pane in Microsoft Office® applications.',
    'This example demonstrates how to access online calendar data using the scheduler. Click the "Specify Authorization Settings" button to' +
      ' provide client application credentials for this demo. Then, click the "Add Calendar..." button to choose an online calendar service, sign in to the account registered on this service, and select one or more calendars to display them in the scheduler.');

  // ------------------------------------------------------
  // custom draw
  // ------------------------------------------------------
var
  TemporaryBitmap: TBitmap;
  GradientBitmap: TBitmap;
  W1, H1, C1, C2: Integer;

procedure FillGradientRect(ACanvas: TcxCanvas; const ARect: TRect;
  AColor1, AColor2: TColor; AHorizontal: Boolean);
begin
  with ARect do
  begin
    W1 := Right - Left;
    H1 := Bottom - Top;
    if (W1 < 1) or (H1 < 1) then
      Exit;
    if (GradientBitmap.Height <> H1) or (GradientBitmap.Width <> W1) or
      (AColor1 <> C1) or (AColor2 <> C2) then
    begin
      C1 := AColor1;
      C2 := AColor2;
      GradientBitmap.Height := H1;
      GradientBitmap.Width := W1;
      Office11FillTubeGradientRect(GradientBitmap.Canvas.Handle, Rect(0, 0, W1, H1),
        AColor1, AColor2, AHorizontal);
    end;
    BitBlt(ACanvas.Handle, Left, Top, W1, H1, GradientBitmap.Canvas.Handle, 0,
      0, srcCopy);
  end;
end;

{ TcxDialogStylesMenuController }

constructor TcxDialogStylesMenuController.Create(ASubItem: TdxBarSubItem);
begin
  inherited Create;
  FSubItem := ASubItem;
end;

procedure TcxDialogStylesMenuController.BuildMenuEx;
begin
  PopulateItems;
//  ActivateFirstItem;
  Items[FSubItem.ItemLinks.Count - 2].Click;
end;

procedure TcxDialogStylesMenuController.ActivateFirstItem;
begin
  Items[0].Click;
end;

procedure TcxDialogStylesMenuController.DownItem(ATag: Integer);
var
  I: Integer;
begin
  for I := 0 to ItemLinks.Count - 1 do
    Items[I].Down := Items[I].Tag = ATag;
end;

function TcxDialogStylesMenuController.GetItem(AIndex: Integer): TdxBarButton;
begin
  Result := TdxBarButton(ItemLinks.VisibleItems[AIndex].Item);
end;

procedure TcxDialogStylesMenuController.MenuItemClickHandler(Sender: TObject);
var
  AButton: TdxBarButton;
begin
  AButton := TdxBarButton(Sender);
  cxSchedulerEditorManager.ItemIndex := AButton.Tag;
  DownItem(AButton.Tag);
end;

procedure TcxDialogStylesMenuController.PopulateItems;
var
  I: Integer;
  AItem: TdxBarButton;
begin
  for I := 0 to cxSchedulerEditorManager.Count - 1 do
  begin
    AItem := AddButton(ItemLinks.BarManager, SubItem, Self, cxSchedulerEditorManager.Names[I], I, True);
    AItem.ButtonStyle := bsChecked;
  end;
end;

procedure TcxDialogStylesMenuController.SetStandardOnly(AValue: Boolean);
begin
  if StandardOnly <> AValue then
  begin
    FStandardOnly := AValue;
    if StandardOnly then
      ActivateFirstItem;
    UpdateEnables;
  end;
end;

procedure TcxDialogStylesMenuController.UpdateEnables;
var
  I: Integer;
begin
  for I := 1 to ItemLinks.Count - 1 do
    Items[I].Enabled := not StandardOnly;
end;

function TcxDialogStylesMenuController.GetItemLinks: TdxBarItemLinks;
begin
  Result := SubItem.ItemLinks;
end;

{ TfrmMain }

procedure TfrmMain.lstSchedulerActionsUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  dxSchedulerDateNavigator1.Enabled := FActiveDemo <> scdRangeControl;
  acBound.Checked := Scheduler.Storage = DBStorage;
  acAggregate.Checked := Scheduler.Storage = AggregateStorage;
  acUnbound.Checked := Scheduler.Storage = UnboundStorage;
end;

procedure TfrmMain.SelectDataBase(AIndex: Integer);
var
  AConnection: string;
const
  ABaseName: array [0 .. 1] of string = ('Data\cxScheduler.mdb', 'Data\Temporary.mdb');
begin
  EventsTable.Active := False;
  DBConnection.Connected := False;
  AConnection :=
    'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + AppDir + ABaseName[AIndex] + ';Persist Security Info=False';
  DBConnection.ConnectionString := AConnection;
  DBConnection.Connected := True;
  EventsTable.Active := True;
  if not grdEventsTableTableView.IsDestroying then
    grdEventsTableTableView.ApplyBestFit;
end;

procedure TfrmMain.cbxBoundDataBaseClick(Sender: TObject);
begin
  liBoundGenerateMoreEvents.Enabled := cbxBoundDataBase.ItemIndex <> 0;
  liBoundDeleteAllEvents.Enabled := cbxBoundDataBase.ItemIndex <> 0;
  lcbBoundSmartRefresh.Enabled := cbxBoundDataBase.ItemIndex <> 0;
  SyncDBMode;
  SelectDataBase(cbxBoundDataBase.ItemIndex);
end;

procedure TfrmMain.SelectStorage(AIndex: Integer);
var
  AVisible: Boolean;
begin
  case AIndex of
    0:
      Scheduler.Storage := UnboundStorage;
    1:
      Scheduler.Storage := DBStorage;
  else
    Scheduler.Storage := AggregateStorage;
    UnboundStorage.Reminders.Active := False;
    DBStorage.Reminders.Active := False;
  end;
  lgBound.Visible := AIndex = 1;
  if lgBound.Visible then
    lgTemplate.Visible := False;
  AVisible := (AIndex <> 0) or (FActiveDemo = scdGridConnection);
  liEventsTable.Visible := AVisible;
  lsiEventsTable.Visible := AVisible;
  lcbReminderByResource.Checked := Scheduler.Storage.Reminders.ReminderByResource;
end;

procedure TfrmMain.OnDataBindingClick(Sender: TObject);
begin
  with AggregateStorage.Links do
  begin
    Clear;
    if TAction(Sender).Tag = 2 then
    begin
      DefaultLink := AddStorageLink(UnboundStorage);
      AddStorageLink(DBStorage);
    end;
  end;
  SelectStorage(TAction(Sender).Tag);
end;

procedure TfrmMain.GridConnectionState(AActive: Boolean);
begin
  Scheduler.BeginUpdate;
  try
    acUnbound.Execute;
    if AActive then
      grdEventsTableLevel2.Active := True
    else
      grdEventsTableLevel1.Active := True;
    lsiEventsTable.Visible := AActive;
    liEventsTable.Visible := AActive;
    GridConnection.Active := AActive;
  finally
    Scheduler.EndUpdate;
  end;
end;

procedure TfrmMain.ActivateDemo(AID: Integer);
var
  ADemo, APrevDemo: TcxSchedulerDemo;
  ADate: TDateTime;
  AHasOfficeWebServiceCredentials: Boolean;
  AHasGoogleWebServiceCredentials: Boolean;
  I: Integer;
begin
  ADemo := TcxSchedulerDemo(AID);
  if FActiveDemo = ADemo then
    Exit;
  APrevDemo := FActiveDemo;
  FActiveDemo := ADemo;
  lliDescription.Caption := dxSchedulerDemoDescriptions[FActiveDemo];
  liRange.Visible := FActiveDemo = scdRangeControl;
  lsiRange.Visible := FActiveDemo = scdRangeControl;
  if lsiRange.Visible then
    lsiRange.IsClosed := False;
  lgWebService.Visible := FActiveDemo = scdWebServiceStorage;
  lsiWebService.Visible := lgWebService.Visible;
  if lsiWebService.Visible then
    lsiWebService.IsClosed := False;
  if APrevDemo = scdGridConnection then
    GridConnectionState(False);
  Scheduler.BeginUpdate;
  try
    Scheduler.DateNavigator.Visible := not (FActiveDemo in [scdRangeControl, scdWebServiceStorage]);
    Scheduler.ControlBox.Visible := FActiveDemo <> scdWebServiceStorage;
    biDataBinding.Enabled := (FActiveDemo <> scdGanttView) and (FActiveDemo <> scdCustomEditors) and
      (FActiveDemo <> scdHolidays) and (FActiveDemo <> scdWebServiceStorage) and (FActiveDemo <> scdGridConnection);
    if (APrevDemo = scdGanttView) or (APrevDemo = scdCustomEditors) or
      (APrevDemo = scdHolidays) or (APrevDemo = scdWebServiceStorage)  then
      acUnbound.Execute;
    if APrevDemo = scdRangeControl then
      dxRangeControl.Client := nil;
    ADate := Trunc(Scheduler.SelStart);
    if (FActiveDemo in [scdDay..scdRangeControl]) and (ADate > FStartDate) or (ADate < FStartDate - 30) then
      ADate := FStartDate;

    FDialogStylesMenuController.StandardOnly := FActiveDemo = scdCustomEditors;
    SyncStyles(FActiveDemo = scdVisualStyles);
    SyncCustomDraw(FActiveDemo = scdCustomDraw);
    Scheduler.OptionsView.ShowAdditionalTimeZone := FActiveDemo = scdTimeZones;
    if Scheduler.OptionsView.ShowAdditionalTimeZone then
    begin
      Scheduler.ViewDay.Active := True;
      Scheduler.SelectDays(Trunc(Scheduler.SelStart), Trunc(Scheduler.SelStart), True);
    end;
    if APrevDemo = scdCustomEditors then
      Scheduler.DialogsStyle := TcxShedulerRibbon2016StyleEventEditorFormStyleInfo.GetName;

    Scheduler.Storage.Reminders.Active := FActiveDemo = scdReminders;
    dxBarArrange.Visible := FActiveDemo = scdRangeControl;

    for I := 0 to lcControlBoxGroup_Root.Count - 1 do
      lcControlBoxGroup_Root.Items[I].Visible := False;
    case FActiveDemo of
      scdDay:
        begin
          Scheduler.ViewDay.Active := True;
          Scheduler.GoToDate(ADate, vmDay);
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdWorkWeek:
        begin
          Scheduler.GoToDate(ADate, vmWorkWeek);
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdWeek:
        begin
          Scheduler.GoToDate(ADate, vmWeek);
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdMonth:
        begin
          Scheduler.GoToDate(ADate, vmMonth);
          lgMonthView.Visible := True;
        end;
      scdTimeGrid:
        begin
          Scheduler.ViewTimeGrid.Active := True;
          Scheduler.SelectedDays.Clear;
          Scheduler.SelectedDays.Add(ADate);
          lgTimeGridView.Visible := True;
        end;
      scdYearView:
        begin
          Scheduler.ViewYear.Active := True;
          lgYearView.Visible := True;
        end;
      scdGanttView:
        begin
          if Scheduler.ViewGantt.VisibleStart = NullDate then
            ADate := Today - 10
          else
            ADate := Scheduler.ViewGantt.VisibleStart;
          Scheduler.SelectDays(ADate, ADate);
          Scheduler.ViewGantt.Active := True;
          SelectStorage(0);
          Scheduler.Storage := SchedulerGanttStorage;
          lgGanttView.Visible := True;
        end;
      scdAgenda:
        begin
          Scheduler.ViewAgenda.Active := True;
          Scheduler.GoToDate(ADate);
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdRangeControl:
        begin
          Scheduler.ViewDay.Active := True;
          Scheduler.GoToDate(ADate);
          dxRangeControl.BeginUpdate;
          dxRangeControl.Client := Scheduler;
          lgRange.Visible := True;
          dxRangeControl.VisibleRangeMinValue := ADate - 10;
          dxRangeControl.VisibleRangeMaxValue := ADate + 10;
          dxRangeControl.SelectedRangeMaxValue := ADate;
          dxRangeControl.SelectedRangeMinValue := ADate;
          dxRangeControl.EndUpdate;
        end;
      scdReminders:
        begin
          lgReminders.Visible := True;
        end;
      scdTimeZones:
        begin
          lgTimeZones.Visible := True;
        end;
      scdVisualStyles:
        begin
          acVisualStyles.Execute;
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdCustomDraw:
        begin
          acCustomDraw.Execute;
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdCustomEditors:
        begin
          SelectStorage(0);
          Scheduler.Storage := UnboundStorageTwo;
          Scheduler.DialogsStyle := TcxSchedulerDemoEventEditorFormStyleInfo.GetName;
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
      scdHolidays:
        begin
          SelectStorage(0);
          Scheduler.Storage := SchedulerHolidaysStorage;
          lgHolidays.Visible := True;
        end;
      scdWebServiceStorage:
        begin
          SelectStorage(0);
          Scheduler.Storage := WebServiceStorage;
          actReloadEvents.Enabled := WebServiceStorage.ResourceCount > 0;
          lgTemplate.Visible := not dxbtnDataBindingBound.Down;
        end;
    end;
    lgBound.Visible := dxbtnDataBindingBound.Down and (Scheduler.Storage = DBStorage);
  finally
    Scheduler.EndUpdate;
  end;
  if ADemo = scdGridConnection then
    GridConnectionState(True);
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
  Realign;

  if FActiveDemo = scdWebServiceStorage then
  begin
    AHasOfficeWebServiceCredentials := (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
    AHasGoogleWebServiceCredentials := (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
    if not AHasOfficeWebServiceCredentials or not AHasGoogleWebServiceCredentials then
    begin
      WebServiceDemoShowSpecifyAuthorizationSettingsForm;
      AHasOfficeWebServiceCredentials := (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
      AHasGoogleWebServiceCredentials := (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
    end;
    btnWebServiceAddAccount.Enabled := AHasOfficeWebServiceCredentials or AHasGoogleWebServiceCredentials;
    miMicrosoftOfficeCalendar.Enabled := AHasOfficeWebServiceCredentials;
    miGoogleCalendar.Enabled := AHasGoogleWebServiceCredentials;
  end;
end;

procedure TfrmMain.OptionsClick(Sender: TObject);
begin
  lcbYearViewAllDayOnly.Checked := dxbtnAllDayEventsOnly.Down;
  dxbtnViewModernStyleHintInformation.Enabled := dxbtnViewStyleModern.Down;
  SyncSchedulerWithOptions;
end;

function TfrmMain.RangeControlProperties: TcxSchedulerRangeControlClientProperties;
begin
  Result := dxRangeControl.ClientProperties as TcxSchedulerRangeControlClientProperties;
end;

procedure TfrmMain.ResPerPageClick(Sender: TObject);
begin
  Scheduler.OptionsView.ResourcesPerPage := TdxBarButton(Sender).Tag;
  if TdxBarButton(Sender).Tag = 0 then
    Scheduler.ResourceNavigator.Visibility := snvNever
  else
    Scheduler.ResourceNavigator.Visibility := snvAuto;
end;

procedure TfrmMain.SchedulerCustomDrawContent(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerContentCellViewInfo; var ADone: Boolean);
var
  I: Integer;
begin
  AViewInfo.Transparent := True;
  ACanvas.Brush.Color := dxGetLighterColor(AViewInfo.Color, 30);
  ACanvas.FillRect(AViewInfo.Bounds);
  ACanvas.Pen.Color := dxGetLighterColor(AViewInfo.Color, 70);
  for I := 0 to cxRectHeight(AViewInfo.Bounds) div 2 do
  begin
    ACanvas.MoveTo(AViewInfo.Bounds.Left, AViewInfo.Bounds.Top + I * 2);
    ACanvas.LineTo(AViewInfo.Bounds.Right, AViewInfo.Bounds.Top + I * 2);
  end;
end;

procedure TfrmMain.SchedulerCustomDrawDayHeader(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDayHeaderCellViewInfo; var ADone: Boolean);
begin
  DrawParts(ACanvas, AViewInfo.Bounds, imgParts,
    2 - Ord((DateOf(AViewInfo.DateTime) <> Date)));
  AViewInfo.Transparent := True;
end;

procedure TfrmMain.SchedulerCustomDrawEvent(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerEventCellViewInfo; var ADone: Boolean);
var
  AIsDetail: Boolean;
  AState: Integer;
  AColor: TColor;
begin
  if AViewInfo.Selected then Exit;
  AIsDetail := Scheduler.ViewDay.Active and not IsHeaderEvent(AViewInfo.Event);
  AState := AViewInfo.Event.Index mod 4;
  AColor := dxGetDarkerColor(TcxStyle(srEventStyles.Items[AState]).Color, 70);
  if cxRectWidth(AViewInfo.Bounds) < 3 then
  begin
    ACanvas.Brush.Color := AColor;
    ACanvas.FillRect(AViewInfo.Bounds);
  end
  else
    DrawParts(ACanvas, AViewInfo.Bounds, imgEventImages, AState);
  if AIsDetail then
  begin
    AViewInfo.TimeLineRect := cxNullRect;
    ACanvas.Brush.Color := AColor;
    ACanvas.FillRect(cxRectInflate(AViewInfo.EventTimeRect, -2, 0));
  end;
  AViewInfo.Transparent := True;
  AViewInfo.Borders := [];
end;

procedure TfrmMain.SchedulerCustomDrawGroupSeparator(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerGroupSeparatorCellViewInfo; var ADone: Boolean);
begin
  ACanvas.FrameRect(AViewInfo.Bounds, Scheduler.OptionsView.DayBorderColor);
  FillGradientRect(ACanvas, cxRectInflate(AViewInfo.Bounds, -1, -1), $E7D7A5, $D6C594, True);
  ADone := True;
end;

procedure TfrmMain.SchedulerCustomDrawResourceHeader(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerHeaderCellViewInfo; var ADone: Boolean);
begin
  DrawParts(ACanvas, AViewInfo.Bounds, imgEventImages, 4);
  AViewInfo.Transparent := True;
end;

procedure TfrmMain.SchedulerDateNavigatorCustomDrawContent(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorMonthContentViewInfo; var ADone: Boolean);
var
  AColor: TColor;
  R: TRect;
begin
  R := AViewInfo.Bounds;
  case AViewInfo.Month of
    3..5: AColor := $D0FFD0;
    6..8: AColor := $D0D0FF;
    9..11: AColor := $D0FFFF;
  else
    AColor := $FFE7E7;
  end;
  with ACanvas do
  begin
    Brush.Color := AColor;
    FillRect(R);
    Font.Height := R.Bottom - R.Top;
    Font.Color := dxGetMiddleRGB(AColor, 0, 85);
    DrawText(IntToStr(AViewInfo.Month), R, cxAlignCenter);
  end;
  ACanvas.Font := AViewInfo.ViewParams.Font;
  AViewInfo.Transparent := True;
  ADone := True;
end;

procedure TfrmMain.SchedulerDateNavigatorCustomDrawDayCaption(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorDayCaptionViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Index in [FDaysOffIndexes[1], FDaysOffIndexes[2]] then
    ACanvas.Font := stRed.Font;
end;

procedure TfrmMain.SchedulerDateNavigatorCustomDrawDayNumber(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo; var ADone: Boolean);
begin
  if AViewInfo.Selected then
    ACanvas.Brush.Color := clAppWorkSpace
  else
    if DayOfWeek(AViewInfo.Date) in [1, 7] then
      ACanvas.Font := stRed.Font;
end;

procedure TfrmMain.SchedulerDateNavigatorCustomDrawHeader(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorMonthHeaderViewInfo; var ADone: Boolean);
begin
  DrawParts(ACanvas, AViewInfo.Bounds, imgParts, 0);
  AViewInfo.Transparent := True;
end;

procedure TfrmMain.SchedulerGetEventEditProperties(Sender: TObject;
  AEvent: TcxSchedulerControlEvent; var AProperties: TcxCustomEditProperties);
begin
  if Scheduler.Storage <> UnboundStorageTwo then Exit;
  if AEvent.IsEditing then
    AProperties := ComboboxItem.Properties
  else
    AProperties := RichItem.Properties;
end;

procedure TfrmMain.SchedulerGetEventModernStyleHintInfo(Sender: TObject; AEvent: TcxSchedulerControlEvent;
  AInfo: TcxSchedulerEventModernStyleHintInfo);
begin
  AInfo.ShowStart := AInfo.ShowStart and dxbtnViewModernStyleHintShowStart.Down;
  AInfo.ShowFinish := AInfo.ShowFinish and dxbtnViewModernStyleHintShowFinish.Down;
  AInfo.ShowLocation := AInfo.ShowLocation and dxbtnViewModernStyleHintShowLocation.Down;
  AInfo.ShowResources := (AInfo.Resources <> '') and dxbtnViewModernStyleHintShowResources.Down;
  AInfo.ShowReminder := AInfo.ShowReminder and dxbtnViewModernStyleHintShowReminder.Down;
  AInfo.ShowTaskComplete := AInfo.ShowTaskComplete and dxbtnViewModernStyleHintShowTaskComplete.Down;
end;

procedure TfrmMain.SchedulerInitEventImages(Sender: TcxCustomScheduler;
  AEvent: TcxSchedulerControlEvent; AImages: TcxSchedulerEventImages);
var
  AField: TcxCustomSchedulerStorageField;
begin
  AField := Scheduler.Storage.GetFieldByName('SportID');
  if AField <> nil then
  begin
    if not VarIsNull(AEvent.Values[AField.Index]) and not VarIsEmpty(AEvent.Values[AField.Index]) then
      AImages.Add(AEvent.Values[AField.Index]);
  end;
end;

procedure TfrmMain.SchedulerLayoutChanged(Sender: TObject);
begin
  if Scheduler.ViewYear.Scale = 12 then
    cbxYearViewScale.ItemIndex := 0
  else
    if Scheduler.ViewYear.Scale = 6 then
      cbxYearViewScale.ItemIndex := 1
    else
      cbxYearViewScale.ItemIndex := 2;
  SetSchedulerFocused;
  UpdateInspectedObject;
end;

procedure TfrmMain.SchedulerResourceNavigatorCustomDrawButton(Sender: TcxSchedulerResourceNavigator;
  ACanvas: TcxCanvas; AButton: TcxSchedulerNavigatorButton; var ADone: Boolean);
var
  AcxOffice11LookAndFeelPainter: TcxOffice11LookAndFeelPainter;
begin
  with AButton do
  begin
    Office11FillTubeGradientRect(ACanvas.Handle, Bounds, $E7D7A5, $D6C594, Rotated);
    if State in [cxbsHot, cxbsPressed] then
    begin
      AcxOffice11LookAndFeelPainter := TcxOffice11LookAndFeelPainter.Create;
      try
        AcxOffice11LookAndFeelPainter.DrawButton(ACanvas, Bounds, '', State);
      finally
        AcxOffice11LookAndFeelPainter.Free;
      end;
    end;
    if ActualImageList <> nil then
      ActualImageList.Draw(ACanvas.Canvas, Bounds.Left + 4 - 2 * Byte(Rotated),
        Bounds.Top + 3 + Byte(Rotated), ActualImageIndex, Enabled);
    ADone := True;
  end;
end;

procedure TfrmMain.SchedulerShowDateHint(Sender: TObject; const ADate: TDateTime; var AHintText: string; var AAllow: Boolean);
begin
  AAllow := lcbHolidaysDatesHints.Checked;
end;

procedure TfrmMain.SchedulerStylesGetEventStyle(Sender: TObject; AEvent: TcxSchedulerEvent; var AStyle: TcxStyle);
begin
  if (AEvent <> nil) and (AEvent.Index >= 0) then
    AStyle := TcxStyle(srEventStyles.Items[AEvent.Index mod 4]);
end;

procedure TfrmMain.SchedulerViewDayCustomDrawTimeRuler(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerTimeRulerCellViewInfo; var ADone: Boolean);
begin
  AViewInfo.Transparent := True;
  FillGradientRect(ACanvas, AViewInfo.Bounds[True], $FFF9D6, $ECDDAD, True);
end;

procedure TfrmMain.CreateDialogStylesMenuItem(ASubItem: TdxBarSubItem);
begin
  FDialogStylesMenuController := TcxDialogStylesMenuController.Create(ASubItem);
  FDialogStylesMenuController.BuildMenuEx;
end;

procedure TfrmMain.DestroyDialogStylesMenuItem;
begin
  FreeAndNil(FDialogStylesMenuController);
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  case AExportType of
    exHTML:
      cxExportSchedulerToHTML(AFileName, Scheduler, False, False, 'Event %d', NullDate, NullDate, '', AHandler);
    exXML:
      cxExportSchedulerToXML(AFileName, Scheduler, False, False, 'Event %d', NullDate, NullDate, '', AHandler);
    exExcel97:
      cxExportSchedulerToExcel(AFileName, Scheduler, False, False, 'Event %d', NullDate, NullDate, '', AHandler);
    exExcel:
      cxExportSchedulerToXLSX(AFileName, Scheduler, False, False, 'Event %d', NullDate, NullDate, '', AHandler);
    exText:
      cxExportSchedulerToText(AFileName, Scheduler, False, False, NullDate, NullDate, '', AHandler);
  end;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := Scheduler;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  Result := pslnkScheduler;
end;

function TfrmMain.GetDemoCaption: string;
begin
  Result := CaptionText;
end;

function TfrmMain.GetExportFileName: string;
begin
  Result := 'ExpressScheduler';
end;

procedure TfrmMain.InspectedObjectChanged(ASender: TObject);
begin
  SyncMenus;
end;

function TfrmMain.CanSchedulerFocus: Boolean;
begin
  with Scheduler, Storage.Reminders do
    Result := CanFocusEx and not(IsReminderWindowShown and (ReminderWindow = Screen.ActiveForm));
end;

procedure TfrmMain.lcbAdditionalTimeZoneDSTClick(Sender: TObject);
begin
  inherited;
  if TComponent(Sender).Tag = 0 then
    Scheduler.OptionsView.CurrentTimeZoneDaylightSaving := TdxLayoutCheckBoxItem(Sender).Checked
  else
    Scheduler.OptionsView.AdditionalTimeZoneDaylightSaving := TdxLayoutCheckBoxItem(Sender).Checked;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.lcbGanttViewExpandButtonsClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewGantt.ShowExpandButtons := TdxLayoutCheckBoxItem(Sender).Checked;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.lcbGanttViewProgressLineClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewGantt.ShowTotalProgressLine := TdxLayoutCheckBoxItem(Sender).Checked;
  SetSchedulerFocused;
end;

procedure TfrmMain.lcbGanttViewSnapEventsClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewGantt.SnapEventsToTimeSlots := TdxLayoutCheckBoxItem(Sender).Checked;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.lcbGanttViewTreeBrowserClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewGantt.TreeBrowser.Visible := lcbGanttViewTreeBrowser.Checked;
end;

procedure TfrmMain.lcbMonthViewHideWeekendsClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewWeeks.HideWeekEnd := TdxLayoutCheckBoxItem(Sender).Checked;
  SetSchedulerFocused;
end;

procedure TfrmMain.lcbRangeAutoAdjustRangeControlSettingsClick(Sender: TObject);
begin
  inherited;
  if lcbRangeAutoAdjustRangeControlSettings.Checked then
    RangeControlProperties.AutoAdjustments := RangeControlProperties.AutoAdjustments + [aaRangeControl]
  else
    RangeControlProperties.AutoAdjustments := RangeControlProperties.AutoAdjustments - [aaRangeControl];
end;

procedure TfrmMain.lcbRangeAutoChangeSchedulerViewClick(Sender: TObject);
begin
  inherited;
  if lcbRangeAutoChangeSchedulerView.Checked then
    RangeControlProperties.AutoAdjustments := RangeControlProperties.AutoAdjustments + [aaClient]
  else
    RangeControlProperties.AutoAdjustments := RangeControlProperties.AutoAdjustments - [aaClient];
end;

procedure TfrmMain.lcbReminderByResourceClick(Sender: TObject);
begin
  inherited;
  Scheduler.Storage.Reminders.ReminderByResource := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TfrmMain.lcbBoundSmartRefreshClick(Sender: TObject);
begin
  inherited;
  SyncDBMode;
end;

procedure TfrmMain.lcbYearViewAllDayOnlyClick(Sender: TObject);
begin
  inherited;
  Scheduler.ViewYear.AllDayEventsOnly := TdxLayoutCheckBoxItem(Sender).Checked;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.cbxEventsStylePropertiesChange(Sender: TObject);
begin
  Scheduler.ViewGantt.EventsStyle := TcxSchedulerGanttViewEventStyle(TcxComboBox(Sender).ItemIndex);
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.cbxZonePropertiesChange(Sender: TObject);
begin
  with Scheduler.OptionsView do
  begin
    if TComponent(Sender).Tag = 0 then
    begin
      CurrentTimeZone := Integer(TcxCombobox(Sender).ItemObject);
      CurrentTimeZoneLabel := '';
    end
    else
    begin
      AdditionalTimeZone := Integer(TcxCombobox(Sender).ItemObject);
      AdditionalTimeZoneLabel := 'Zone 2';
    end;
  end;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.ccbHolidayColorPropertiesChange(Sender: TObject);
begin
  SyncSchedulerWithOptions;
end;

procedure TfrmMain.CorrectEventsDates(AStorage: TcxSchedulerStorage; AStartDate: TDateTime);
var
  I: Integer;
  ADate: TDateTime;
begin
  ADate := MaxInt;
  AStorage.BeginUpdate;
  try
    for I := 0 to AStorage.EventCount - 1 do
      ADate := Min(AStorage.Events[I].Start, ADate);
    ADate := Int(AStartDate - ADate - 10);
    for I := AStorage.EventCount - 1 downto 0 do
      with AStorage.Events[I] do
        MoveTo(Start + ADate);
  finally
    AStorage.EndUpdate;
  end;
end;

procedure TfrmMain.cbxRangeDisplayEventsAsPropertiesEditValueChanged(Sender: TObject);
begin
  RangeControlProperties.DataDisplayType := TcxSchedulerRangeControlDataDisplayType(cbxRangeDisplayEventsAs.ItemIndex);
end;

procedure TfrmMain.seRangeThumbnailHeightPropertiesEditValueChanged(Sender: TObject);
begin
  RangeControlProperties.ThumbnailHeight := seRangeThumbnailHeight.EditingValue;
end;

procedure TfrmMain.seRangeScaleIntervalMinimalWidthPropertiesEditValueChanged(Sender: TObject);
begin
  RangeControlProperties.ScaleIntervalMinWidth := seRangeScaleIntervalMinimalWidth.EditingValue;
end;

procedure TfrmMain.DeleteEvents(ARefresh: Boolean);
begin
  try
    EventsCommand.CommandText := 'DELETE FROM Events';
    EventsCommand.Execute;
  finally
    SelectDataBase(1);
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  LoadDataFromFile;
  dxRibbonBackstageViewMinMenuWidth := ScaleFactor.Apply(150);
  CreateDialogStylesMenuItem(bsiStylesEditor);
  lcControlBoxGroup_Root.LayoutDirection := ldVertical;
  LinkTabs;
  SelectStorage(0);
  AppDir := GetCurrentDir + '\';
  SelectDataBase(0);
  FStartDate := Date;
  Scheduler.GoToDate(FStartDate);
  FStartDate := FStartDate + Scheduler.OptionsView.WorkStart;
  Scheduler.SelectTime(FStartDate, FStartDate, nil);
  LoadUnboundData;
  SyncCustomDraw(False);
  CalcDaysOff;
  Scheduler.FullRefresh;
  SetupTimeZonesInfo;
  ActivateDemo(Ord(scdDay));
  SynchronizeFrameNavigation(Ord(scdDay));
  UpdateBaseMenuOptions;
  SchedulerHolidays.RestoreFromIniFile('Data\Holidays.ini');
  FAgents := TObjectList<TdxOAuth2AuthorizationAgent>.Create;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
var
  AFileStream: TFileStream;
begin
  FAgents.Free;
  DBConnection.Connected := False;
  try
    AFileStream := TFileStream.Create(AppDir + 'Data\Temporary.mdb', fmCreate);
    try
      GetResourceStream('DATABASETEMPLATE', AFileStream);
    finally
      AFileStream.Free;
    end;
  except
    on EFCreateError do
      ;
  end;
  DestroyDialogStylesMenuItem;
  inherited;
end;

procedure TfrmMain.GanttCollapseEvents(Sender: TObject);
var
  I: Integer;
begin
  with SchedulerGanttStorage do
    for I := 0 to EventCount - 1 do
      if TcxButton(Sender).Tag = 0 then
        Events[I].TaskLinks.Expanded := False
      else
        Events[I].TaskLinks.Expanded := True;
end;

procedure TfrmMain.GenerateEvents(ACount: Integer);
var
  I: Integer;
  ADate: TDateTime;
  AType: Integer;
  AEvent: TcxSchedulerEvent;
begin
  Randomize;
  Scheduler.Storage.Clear;
  Scheduler.Storage.BeginUpdate;
  try
    for I := 0 to ACount - 1 do
    begin
      AEvent := Scheduler.Storage.createEvent;
      ADate := FStartDate + EncodeTime(Random(10), Random(60), 0,
        0) + (Random(30) - 15);
      AEvent.Start := ADate + Scheduler.OptionsView.WorkStart;
      if not(I mod 10 = 0) then
        AEvent.Duration := Random(120) * MinuteToTime
      else
      begin
        AEvent.Start := Trunc(ADate);
        AEvent.Finish := Trunc(ADate) + 1;
        AEvent.AllDayEvent := True;
      end;
      AEvent.State := Random(4);
      AEvent.LabelColor := EventLabelColors[Random(11)];
      AType := Random(Length(StartIndexes));
      AEvent.Caption := SportEvents[StartIndexes[AType] + Random
        (EventsCount[AType])];
      AEvent.ResourceID := Random(Scheduler.Storage.ResourceCount);
      AEvent.Reminder := I mod 5 = 0;
      AEvent.SetCustomFieldValueByName('SportID', AType);
    end;
  finally
    Scheduler.Storage.EndUpdate;
  end;
end;

procedure TfrmMain.GenerateHolidaysEventsClick(Sender: TObject);
var
  I: Integer;
  AArrayVariant: array of Variant;
begin
  case TMenuItem(Sender).Tag of
    0:
      begin
        SetLength(AArrayVariant, SchedulerHolidaysStorage.ResourceCount);
        try
          for I := 0 to SchedulerHolidaysStorage.ResourceCount - 1 do
            AArrayVariant[I] := SchedulerHolidaysStorage.ResourceIDs[I];
          SchedulerHolidaysStorage.GenerateHolidayEvents(VarArrayOf(AArrayVariant));
        finally
          SetLength(AArrayVariant, 0);
        end;
      end;
    1:
      SchedulerHolidaysStorage.GenerateHolidayEvents(0);
    2:
      SchedulerHolidaysStorage.GenerateHolidayEvents(VarArrayOf([1, 2]));
  end;
end;

procedure TfrmMain.GetResourceStream(const AName: string; AStream: TStream);
var
  ASize: Integer;
  AHandle: HGLOBAL;
  AResInfo: HRSRC;
  AResPtr: Pointer;
  AResInstance: Integer;
begin
  AResInstance := FindResourceHInstance(hInstance);
  AResInfo := FindResource(AResInstance, PChar(AName), RT_RCDATA);
  ASize := SizeOfResource(AResInstance, AResInfo);
  if (AResInfo <> 0) and (ASize <> 0) then
  begin
    AHandle := LoadResource(AResInstance, AResInfo);
    AResPtr := LockResource(AHandle);
    AStream.WriteBuffer(AResPtr^, ASize);
  end;
end;

procedure TfrmMain.LinkTabs;
begin
  lgBound.Tag := 1;
  lgAggregated.Tag := 2;

  lgHolidays.Tag := Integer(scdHolidays);
  lgGanttView.Tag := Integer(scdGanttView);
  lgTimeZones.Tag := Integer(scdTimeZones);
  lgTimeGridView.Tag := Integer(scdTimeGrid);
  lgYearView.Tag := Integer(scdYearView);
  lgMonthView.Tag := Integer(scdMonth);
  lgReminders.Tag := Integer(scdReminders);
end;

procedure TfrmMain.LoadDataFromFile;
var
  ADoc: TdxXMLDocument;
  ASportEventsNode, APeopleNode: TdxXMLNode;
  I: Integer;
begin
  ADoc := TdxXMLDocument.Create();
  try
    ADoc.LoadFromFile('Data\Data.xml');
    if ADoc.FindChild(['Root', 'SportEvents'], ASportEventsNode) then
    begin
      SetLength(SportEvents, ASportEventsNode.Count);
      for I := 0 to ASportEventsNode.Count - 1 do
        SportEvents[I] := ASportEventsNode.Items[I].TextAsString;
    end;
    if ADoc.FindChild(['Root', 'People'], APeopleNode) then
    begin
      ComboBoxItem.Properties.Items.Clear;
      for I := 0 to APeopleNode.Count - 1 do
        ComboBoxItem.Properties.Items.Add(APeopleNode.Items[I].TextAsString);
    end;
  finally
    ADoc.Free;
  end;
end;

procedure TfrmMain.LoadUnboundData;
var
  I: Integer;
  AMemStream: TMemoryStream;
begin
  AMemStream := TMemoryStream.Create();
  try
    GetResourceStream('SCHEDULEREVENTS', AMemStream);
    AMemStream.Position := 0;
    UnboundStorage.LoadFromStream(AMemStream);
    AMemStream.Clear;
    GetResourceStream('SCHEDULERNICEEVENTS', AMemStream);
    AMemStream.Position := 0;
    UnboundStorageTwo.LoadFromStream(AMemStream);
    AMemStream.Clear;
    GetResourceStream('GANTTEVENTS', AMemStream);
    AMemStream.Position := 0;
    SchedulerGanttStorage.LoadFromStream(AMemStream);
    SchedulerGanttStorage.BeginUpdate;
    try
      for I := 1 to SchedulerGanttStorage.EventCount - 1 do
        SchedulerGanttStorage.Events[I].ParentGroup :=
          SchedulerGanttStorage.Events[0];
    finally
      SchedulerGanttStorage.EndUpdate;
    end;
  finally
    AMemStream.Free;
  end;
  CorrectEventsDates(UnboundStorage, FStartDate);
  CorrectEventsDates(UnboundStorageTwo, FStartDate);
  CorrectEventsDates(SchedulerGanttStorage, Today);
end;

procedure TfrmMain.SetSchedulerFocused;
begin
  if CanSchedulerFocus then
    Scheduler.SetFocus;
end;

procedure TfrmMain.SetupTimeZonesInfo;
var
  ATimeZones: TStringList;
  I: Integer;
begin
  ATimeZones := TStringList.Create;
  try
    for I := 0 to TcxSchedulerDateTimeHelper.TimeZoneCount - 1 do
      ATimeZones.AddObject(TcxSchedulerDateTimeHelper.TimeZoneInfo(I).Display, TObject(I));
    ATimeZones.Sort;

    cbxCurrentZone.Properties.Items.AddObject('System Default', TObject(-1));
    for I := 0 to ATimeZones.Count - 1 do
      cbxCurrentZone.Properties.Items.AddObject(ATimeZones[I], ATimeZones.Objects[I]);
    cbxCurrentZone.ItemObject := TObject(Scheduler.OptionsView.CurrentTimeZone);

    cbxAdditionalTimeZone.Properties.Items.AddObject('None', TObject(-1));
    for I := 0 to TcxSchedulerDateTimeHelper.TimeZoneCount - 1 do
      cbxAdditionalTimeZone.Properties.Items.AddObject(ATimeZones[I], ATimeZones.Objects[I]);
    cbxAdditionalTimeZone.ItemObject := TObject(Scheduler.OptionsView.AdditionalTimeZone);

    lcbAdditionalTimeZoneDST.Checked := Scheduler.OptionsView.AdditionalTimeZoneDaylightSaving;
    lcbCurrentTimeZoneDST.Checked := Scheduler.OptionsView.CurrentTimeZoneDaylightSaving;
  finally
    ATimeZones.Free;
  end;
end;

procedure TfrmMain.ShowHolidaysEditorClick(Sender: TObject);
var
  AHolidays: TcxSchedulerHolidays;
begin
  AHolidays := SchedulerHolidays;
  cxShowHolidaysEditor(AHolidays, Scheduler.LookAndFeel);
end;

procedure TfrmMain.SyncCustomDraw(ASetHandlers: Boolean);
begin
  if not ASetHandlers then
  begin
    Scheduler.OptionsView.DayBorderColor := clBlack;
    Scheduler.OptionsView.VertSplitterWidth := 5;
    Scheduler.Styles.VertSplitter := nil;
    Scheduler.Styles.HorzSplitter := nil;
    Scheduler.Styles.OnGetEventStyle := nil;
    Scheduler.ViewDay.Styles.HeaderContainer := nil;
    Scheduler.ViewDay.Styles.SelectedHeaderContainer := nil;
    Scheduler.ViewDay.EventShadows := True;
    Scheduler.OnCustomDrawBackground := nil;
    Scheduler.OnCustomDrawButton := nil;
    Scheduler.OnCustomDrawContent := nil;
    Scheduler.OnCustomDrawDayHeader := nil;
    Scheduler.OnCustomDrawEvent := nil;
    Scheduler.OnCustomDrawGroupSeparator := nil;
    Scheduler.OnCustomDrawResourceHeader := nil;
    Scheduler.ViewDay.OnCustomDrawContainer := nil;
    Scheduler.ViewDay.OnCustomDrawTimeRuler := nil;
    Scheduler.DateNavigator.OnCustomDrawBackground := nil;
    Scheduler.DateNavigator.OnCustomDrawContent := nil;
    Scheduler.DateNavigator.OnCustomDrawDayCaption := nil;
    Scheduler.DateNavigator.OnCustomDrawDayNumber := nil;
    Scheduler.DateNavigator.OnCustomDrawHeader := nil;
    Scheduler.ResourceNavigator.OnCustomDrawButton := nil;
  end
  else
  begin
    Scheduler.OptionsView.DayBorderColor := $B2A365;
    Scheduler.OptionsView.VertSplitterWidth := 8;
    Scheduler.Styles.VertSplitter := stCustomDrawVSeparator;
    Scheduler.Styles.HorzSplitter := stCustomDrawHSeparator;
    Scheduler.ViewDay.EventShadows := False;
    Scheduler.ViewDay.Styles.HeaderContainer := stCustomDrawContainer;
    Scheduler.ViewDay.Styles.SelectedHeaderContainer := stCustomDrawSelectedContainer;
    Scheduler.Styles.OnGetEventStyle := SchedulerStylesGetEventStyle;
    Scheduler.OnCustomDrawContent := SchedulerCustomDrawContent;
    Scheduler.OnCustomDrawEvent := SchedulerCustomDrawEvent;
    Scheduler.OnCustomDrawGroupSeparator := SchedulerCustomDrawGroupSeparator;
    Scheduler.OnCustomDrawDayHeader := SchedulerCustomDrawDayHeader;
    Scheduler.OnCustomDrawResourceHeader := SchedulerCustomDrawResourceHeader;
    Scheduler.DateNavigator.OnCustomDrawHeader := SchedulerDateNavigatorCustomDrawHeader;
    Scheduler.DateNavigator.OnCustomDrawDayCaption := SchedulerDateNavigatorCustomDrawDayCaption;
    Scheduler.DateNavigator.OnCustomDrawDayNumber := SchedulerDateNavigatorCustomDrawDayNumber;
    Scheduler.DateNavigator.OnCustomDrawContent := SchedulerDateNavigatorCustomDrawContent;
    Scheduler.ViewDay.OnCustomDrawTimeRuler := SchedulerViewDayCustomDrawTimeRuler;
    Scheduler.ResourceNavigator.OnCustomDrawButton := SchedulerResourceNavigatorCustomDrawButton;
  end;
end;

procedure TfrmMain.SyncDBMode;
begin
  DBStorage.SmartRefresh := lcbBoundSmartRefresh.Checked or (cbxBoundDataBase.ItemIndex = 0);
end;

procedure TfrmMain.SyncEventsMenuItemsVisibility;
begin
   dxbarResourcesGroup.Enabled := Scheduler.Storage.ResourceCount > 0;
   dxbarEventsGroup.Enabled := not dxbtnReadOnly.Down;
end;

procedure TfrmMain.SyncEventsMenuWithScheduler;
begin
  with Scheduler.EventOperations do
  begin
     dxbtnCreating.Down := Creating;
     dxbtnDeleting.Down := Deleting;
     dxbtnDialogEditing.Down := DialogEditing and DialogShowing;
     dxbtnInplaceEditing.Down := InplaceEditing;
     dxbtnIntersection.Down := Intersection;
     dxbtnMoving.Down := Moving;
     dxbtnMovingBetweenResource.Down := MovingBetweenResources;
     dxbtnReadOnly.Down := ReadOnly;
     dxbtnRecurrence.Down := Recurrence;
     dxbtnSharing.Down := SharingBetweenResources;
     dxbtnSizing.Down := Sizing;
  end;
  SyncEventsMenuItemsVisibility;
end;

procedure TfrmMain.SynchronizeWithExecute(Sender: TObject);
begin
  if TAction(Sender).Tag = 0 then
    cxSchedulerSynchronizeOutlookWithStorage(Scheduler.Storage, SyncField)
  else
    cxSchedulerSynchronizeStorageWithOutlook(Scheduler.Storage, SyncField);
end;

procedure TfrmMain.SyncMenus;
begin
  SyncEventsMenuWithScheduler;
  SyncOptionsWithScheduler;
  SyncScales;
end;

procedure TfrmMain.SyncOptionsWithScheduler;
begin
  dxbtnAgendaHorizontal.Down := Scheduler.ViewAgenda.DayHeaderOrientation = dhoHorizontal;
  dxbtnAgendaVertical.Down := Scheduler.ViewAgenda.DayHeaderOrientation = dhoVertical;
  dxbtnAgendaAllDays.Down := Scheduler.ViewAgenda.DisplayMode = avmAllDays;
  dxbtnAgendaSelectedDays.Down := Scheduler.ViewAgenda.DisplayMode = avmSelectedDays;
  dxbtnAgendaSelectedNonEmptyDays.Down := Scheduler.ViewAgenda.DisplayMode = avmSelectedNonEmptyDays;
  dxbtnAgendaShowLocation.Down := Scheduler.ViewAgenda.ShowLocations;
  dxbtnAgendaShowResources.Down := Scheduler.ViewAgenda.ShowResources;
  dxbtnAgendaShowTimeAsClock.Down := Scheduler.ViewAgenda.ShowTimeAsClock;
  dxbtnAllDayEventsContainer.Down := Scheduler.ViewDay.HeaderContainer;
  dxbtnWorkTimeOnly.Down := Scheduler.ViewDay.WorkTimeOnly;
  dxbtnTimeRulerMinutes.Down := Scheduler.ViewDay.TimeRulerMinutes;
  dxbtnDayHeader.Down := Scheduler.ViewDay.DayHeaderArea;
  dxbtnDayHeaderModernDisplayDefault.Down := Scheduler.ViewDay.DayHeaderModernStyleDisplayMode = hdmDefault;
  dxbtnDayHeaderModernDisplayClassic.Down := Scheduler.ViewDay.DayHeaderModernStyleDisplayMode = hdmClassic;
  dxbtnDayHeaderModernDisplayDayAndDate.Down := Scheduler.ViewDay.DayHeaderModernStyleDisplayMode = hdmDayAndDate;
  dxbtnSingleColumn.Down := Boolean(Scheduler.ViewWeek.DaysLayout);
  dxbtnWeekCompressWeekends.Down := Scheduler.ViewWeek.CompressWeekEnd;
  dxbtnWeekTimeAsClock.Down := Scheduler.ViewWeek.ShowTimeAsClock;
  dxbtnMonthCompressWeekends.Down := Scheduler.ViewWeeks.CompressWeekEnd;
  dxbtnMonthTimeAsClock.Down := Scheduler.ViewWeeks.ShowTimeAsClock;
  dxbtnWorkDaysOnly.Down := Scheduler.ViewTimeGrid.WorkDaysOnly;
  dxbtnTimeGridWorkTimeOnly.Down := Scheduler.ViewTimeGrid.WorkTimeOnly;
  dxbtnDetailInfo.Down := Scheduler.ViewTimeGrid.EventDetailInfo;
  dxbtnTimeGridSnapEventsToTimeSlots.Down := Scheduler.ViewTimeGrid.SnapEventsToTimeSlots;
  dxbtnAllDayEventsOnly.Down := Scheduler.ViewYear.AllDayEventsOnly;
  dxbtnAllDayAreaScrollBarDefault.Down := Scheduler.ViewDay.AllDayAreaScrollBar = adsbDefault;
  dxbtnAllDayAreaScrollBarNever.Down := Scheduler.ViewDay.AllDayAreaScrollBar = adsbNever;
  dxbtnAllDayAreaScrollBarAlways.Down := Scheduler.ViewDay.AllDayAreaScrollBar = adsbAlways;
  dxbtnGanttHotTrack.Down := Scheduler.OptionsBehavior.HotTrack;
  dxbtnGanttShowAsProgress.Down := Scheduler.ViewGantt.EventsStyle = esProgress;
  dxbtnShowEvents.Down := not Scheduler.ViewDay.ShowAllDayEventsInContentArea;
  dxbtnGanttViewShowExpandButton.Down := Scheduler.ViewGantt.ShowExpandButtons;
  dxbtnGanttViewSnapEventsToTimeSlots.Down := Scheduler.ViewGantt.SnapEventsToTimeSlots;
  ccbHolidaysColor.ColorValue := Scheduler.DateNavigator.HolidayColor;
  cbxEventsStyle.ItemIndex := Integer(Scheduler.ViewGantt.EventsStyle);
  dxbtnViewStyleModern.Down := Scheduler.OptionsView.Style = svsModern;
  dxbtnViewStyleClassic.Down := Scheduler.OptionsView.Style = svsClassic;
end;

procedure TfrmMain.SyncScheduler;
begin
  SyncSchedulerWithEventsMenu;
  UpdateInspectedObject;
end;

procedure TfrmMain.SyncScales;
const
  AMajorUnits: array [TcxSchedulerTimeGridScaleUnit] of Integer = (0, 0, 1, 2, 3, 4);
  AMinorUnits: array [TcxSchedulerTimeGridScaleUnit] of Integer = (0, 1, 2, 2, 3, 3);
begin
  with Scheduler.ViewTimeGrid.Scales do
  begin
    dxbtnMajorUnit.ItemIndex := AMajorUnits[MajorUnit];
    dxbtnMinorUnit.ItemIndex := AMinorUnits[MinorUnit];
  end;
end;

procedure TfrmMain.SyncSchedulerWithEventsMenu;
begin
  with Scheduler.EventOperations do
  begin
    Creating := dxbtnCreating.Down;
    Deleting := dxbtnDeleting.Down;
    DialogEditing := dxbtnDialogEditing.Down;
    DialogShowing := dxbtnDialogEditing.Down;
    InplaceEditing := dxbtnInplaceEditing.Down;
    Intersection := dxbtnIntersection.Down;
    Moving := dxbtnMoving.Down;
    MovingBetweenResources := dxbtnMovingBetweenResource.Down;
    ReadOnly := dxbtnReadOnly.Down;
    Recurrence := dxbtnRecurrence.Down;
    SharingBetweenResources := dxbtnSharing.Down;
    Sizing := dxbtnSizing.Down;
  end;
  SyncEventsMenuItemsVisibility;
end;

procedure TfrmMain.SyncSchedulerWithOptions;
const
  cxEventsStyle: array [Boolean] of TcxSchedulerGanttViewEventStyle =
    (esDefault, esProgress);

  cxAgendaDayHeaderOrientation: array[Boolean] of TcxSchedulerAgendaViewDayHeaderOrientation =
    (dhoHorizontal, dhoVertical);

  cxSchedulerViewStyle: array[Boolean] of TcxSchedulerViewStyle =
    (svsClassic, svsModern);

  function GetAgendaDisplayMode: TcxSchedulerAgendaViewDisplayMode;
  begin
    if dxbtnAgendaAllDays.Down then
      Result := avmAllDays
    else
    if dxbtnAgendaSelectedDays.Down then
      Result := avmSelectedDays
    else
      Result := avmSelectedNonEmptyDays;
  end;

  function GetAllDayAreaScrollBarMenuState: TcxSchedulerAllDayAreaScrollBar;
  begin
    if dxbtnAllDayAreaScrollBarDefault.Down then
      Result := adsbDefault
    else
    if dxbtnAllDayAreaScrollBarNever.Down then
      Result := adsbNever
    else
      Result := adsbAlways;
  end;

  function GetDayHeaderModernStyleDisplayMode: TcxSchedulerDayHeaderModernStyleDisplayMode;
  begin
    if dxbtnDayHeaderModernDisplayDefault.Down then
      Result := hdmDefault
    else
    if dxbtnDayHeaderModernDisplayClassic.Down then
      Result := hdmClassic
    else
      Result := hdmDayAndDate;
  end;

begin
  Scheduler.ViewAgenda.DayHeaderOrientation := cxAgendaDayHeaderOrientation[dxbtnAgendaVertical.Down];
  Scheduler.ViewAgenda.DisplayMode := GetAgendaDisplayMode;
  Scheduler.ViewAgenda.ShowLocations := dxbtnAgendaShowLocation.Down;
  Scheduler.ViewAgenda.ShowMessages := dxbtnAgendaShowMessages.Down;
  Scheduler.ViewAgenda.ShowResources := dxbtnAgendaShowResources.Down;
  Scheduler.ViewAgenda.ShowTimeAsClock := dxbtnAgendaShowTimeAsClock.Down;
  Scheduler.ViewDay.HeaderContainer := dxbtnAllDayEventsContainer.Down;
  Scheduler.ViewDay.AllDayAreaScrollBar := GetAllDayAreaScrollBarMenuState;
  Scheduler.ViewDay.DayHeaderArea := dxbtnDayHeader.Down;
  Scheduler.ViewDay.DayHeaderModernStyleDisplayMode := GetDayHeaderModernStyleDisplayMode;
  Scheduler.ViewDay.WorkTimeOnly := dxbtnWorkTimeOnly.Down;
  Scheduler.ViewDay.TimeRulerMinutes := dxbtnTimeRulerMinutes.Down;
  Scheduler.ViewDay.ShowAllDayEventsInContentArea := not dxbtnShowEvents.Down;
  Scheduler.ViewWeek.DaysLayout :=  TcxSchedulerWeekViewDaysLayout(dxbtnSingleColumn.Down);
  Scheduler.ViewWeek.CompressWeekEnd := dxbtnWeekCompressWeekends.Down;
  Scheduler.ViewWeek.ShowTimeAsClock := dxbtnWeekTimeAsClock.Down;
  Scheduler.ViewWeeks.CompressWeekEnd := dxbtnMonthCompressWeekends.Down;
  Scheduler.ViewWeeks.ShowTimeAsClock := dxbtnMonthTimeAsClock.Down;
  Scheduler.ViewTimeGrid.WorkDaysOnly := dxbtnWorkDaysOnly.Down;
  Scheduler.ViewTimeGrid.WorkTimeOnly := dxbtnTimeGridWorkTimeOnly.Down;
  Scheduler.ViewTimeGrid.EventDetailInfo := dxbtnDetailInfo.Down;
  Scheduler.ViewTimeGrid.SnapEventsToTimeSlots := dxbtnTimeGridSnapEventsToTimeSlots.Down;
  Scheduler.ViewYear.AllDayEventsOnly :=  dxbtnAllDayEventsOnly.Down;
  Scheduler.OptionsBehavior.HotTrack := dxbtnGanttHotTrack.Down;
  Scheduler.ViewGantt.ShowExpandButtons := dxbtnGanttViewShowExpandButton.Down;
  Scheduler.ViewGantt.EventsStyle := cxEventsStyle[dxbtnGanttShowAsProgress.Down];
  Scheduler.ViewGantt.SnapEventsToTimeSlots := dxbtnGanttViewSnapEventsToTimeSlots.Down;
  Scheduler.DateNavigator.HolidayColor := ccbHolidaysColor.ColorValue;
  Scheduler.OptionsView.Style := cxSchedulerViewStyle[dxbtnViewStyleModern.Down];
end;

procedure TfrmMain.SyncStyles(ASelect: Boolean);

  function GetStyle(AStyle: TcxStyle): TcxStyle;
  begin
    Result := nil;
    if ASelect then
      Result := AStyle
  end;

begin
  Scheduler.Styles.Event := GetStyle(stEvents);
  Scheduler.Styles.DayHeader := GetStyle(stHeaders);
  Scheduler.Styles.Content := GetStyle(stContent);
  Scheduler.Styles.Selection := GetStyle(stContentSelection);
  Scheduler.Styles.ResourceHeader := GetStyle(stResources);
  Scheduler.Styles.GroupSeparator := GetStyle(stGroupSeparator);
  Scheduler.ViewDay.Styles.HeaderContainer := GetStyle(stContainer);
  Scheduler.ViewDay.Styles.TimeRuler := GetStyle(stTimeRuler);
  Scheduler.DateNavigator.Styles.Header := GetStyle(stHeaders);
  Scheduler.DateNavigator.Styles.Background := GetStyle(stBackground);
  Scheduler.DateNavigator.Styles.Content := GetStyle(stDateContent);
  Scheduler.ViewTimeGrid.Styles.MajorScale := GetStyle(stDateContent);
  Scheduler.ViewTimeGrid.Styles.MinorScale := GetStyle(stHeaders);
  Scheduler.ViewTimeGrid.Styles.MajorScaleUnitSeparator := GetStyle(stTimeRuler);
  Scheduler.ViewYear.Styles.MonthHeader := GetStyle(stHeaders);
  Scheduler.ViewYear.Styles.UnusedContent := GetStyle(stTimeRuler);
end;

procedure TfrmMain.SyncViewMenuItemsWithScheduler;
begin
  dxbtnControlBox.Down := Scheduler.ControlBox.Visible;
  dxbtnNavigator.Down := Scheduler.DateNavigator.Visible;
end;

function TfrmMain.WebServiceDemoAddAccount(AClass: TdxOAuth2AuthorizationAgentClass; AProviderClass: TcxSchedulerWebServiceStorageCustomProviderClass): TcxTreeListNode;
var
  AAgent: TdxOAuth2AuthorizationAgent;
  AMicrosoftAgent: TdxMicrosoftGraphAPIOAuth2AuthorizationAgent;
begin
  AAgent := AClass.Create(nil);
  // This RedirectUri used to identify out-of-browser applications (desktop, mobile, command line, etc.)
  if Safe.Cast<TdxMicrosoftGraphAPIOAuth2AuthorizationAgent>(AAgent, AMicrosoftAgent) then
    AMicrosoftAgent.RedirectUri := 'urn:ietf:wg:oauth:2.0:oob';
  FAgents.Add(AAgent);
  Result := tlWebServiceCalendars.Add;
  Result.Values[0] := '';
  Result.Values[1] := AProviderClass.ClassName;
  Result.AllowGrayed := False;
  Result.CheckGroupType := ncgCheckGroup;
end;

procedure TfrmMain.WebServiceDemoAddResource(AAuthIndex, ACalendarIndex: Integer);
begin
  with WebServiceStorage.Resources.Items.Add do
  begin
    ProviderClassName := tlWebServiceCalendars.Root.Items[AAuthIndex].Values[1];
    Provider.AuthorizationAgent := FAgents[AAuthIndex];
    Provider.CalendarId := tlWebServiceCalendars.Root.Items[AAuthIndex].Items[ACalendarIndex].Values[1];
    Name := Format('%s: %s', [Provider.GetDisplayName, Provider.Calendar.Name]);
    Provider.Connected := True;
  end;
  actReloadEvents.Enabled := True;
end;

procedure TfrmMain.WebServiceDemoRemoveResource(AAuthIndex: Integer; const ACalendarId: string);
var
  I: Integer;
begin
  for I := WebServiceStorage.Resources.Items.Count - 1 downto 0 do
    if WebServiceStorage.Resources.Items[I].ResourceID = ACalendarId then
      if WebServiceStorage.Resources.Items[I].Provider.AuthorizationAgent = FAgents[AAuthIndex] then
        WebServiceStorage.Resources.Items.Delete(I);
  actReloadEvents.Enabled := WebServiceStorage.ResourceCount > 0;
end;

procedure TfrmMain.WebServiceDemoPopulateAccountNode(ANode: TcxTreeListNode; AProviderClass: TcxSchedulerWebServiceStorageCustomProviderClass);
var
  AProvider: TcxSchedulerWebServiceStorageCustomProvider;
  AList: TdxWebServiceCalendarList;
  I: Integer;
  AUserInfo: TdxAuthorizationAgentUserInfo;
begin
  AProvider := AProviderClass.Create(WebServiceStorage);
  try
    AProvider.AuthorizationAgent := FAgents[ANode.Index];
    AUserInfo := TdxAuthorizationAgentUserInfo.GetUserInfo(FAgents.Last);
    try
      AList := AProvider.GetCalendarList;
      try
        if not AProvider.AuthorizationAgent.IsAuthorized then
          Exit;

        AUserInfo.UpdateInfo;
        ANode.Values[0] := Format('%s (%s)', [AUserInfo.DisplayName, AUserInfo.Mail]);
        for I := 0 to AList.Count - 1 do
        begin
          with ANode.AddChild do
          begin
            Values[0] := AList[I].Name;
            Values[1] := AList[I].Id;
          end;
        end;
      finally
        AList.Free;
      end;
    finally
      AUserInfo.Free;
    end;
  finally
    AProvider.Free;
  end;
  ANode.Expand(False);
end;

procedure TfrmMain.WebServiceDemoShowSpecifyAuthorizationSettingsForm;
var
  AWizard: TWebServiceDemoSetupWizard;
begin
  AWizard := TWebServiceDemoSetupWizard.Create(Application);
  try
    AWizard.btnStart.Caption := 'OK';
    AWizard.teMSGraphClientID.Text := TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientId;
    AWizard.teMSGraphClientSecret.Text := TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientSecret;
    AWizard.teGoogleApiClientID.Text := TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientId;
    AWizard.teGoogleApiClientSecret.Text := TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientSecret;
    if AWizard.ShowModal = mrOk then
    begin
      TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientId := AWizard.teMSGraphClientID.Text;
      TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientSecret := AWizard.teMSGraphClientSecret.Text;
      TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientId := AWizard.teGoogleApiClientID.Text;
      TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientSecret := AWizard.teGoogleApiClientSecret.Text;
    end;
  finally
    AWizard.Free;
  end;
end;

procedure TfrmMain.tlWebServiceCalendarsNodeCheckChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AState: TcxCheckBoxState);
var
  AAuthIndex: Integer;
  ACalIndex: Integer;
begin
  if ANode.Level = 0 then
    Exit;
  AAuthIndex := ANode.Parent.Index;
  ACalIndex := ANode.Index;
  if AState = cbsChecked then
    WebServiceDemoAddResource(AAuthIndex, ACalIndex)
  else
    WebServiceDemoRemoveResource(AAuthIndex, ANode.Values[1]);
end;

procedure TfrmMain.YearScaleChanged(Sender: TObject);
const
  Scales: array[0..2] of Integer = (12, 6, 3);
begin
  Scheduler.ViewYear.Scale := Scales[TcxComboBox(Sender).ItemIndex];
  SetSchedulerFocused;
end;

procedure TfrmMain.acGridConnectionExecute(Sender: TObject);
begin
  GridConnectionState(True);
end;

procedure TfrmMain.actReloadEventsExecute(Sender: TObject);
begin
  inherited;
  WebServiceStorage.FullRefresh;
end;

procedure TfrmMain.btnDeleteAllEventsClick(Sender: TObject);
begin
  DeleteEvents(True);
end;

procedure TfrmMain.btnGenerateHolidaysEventsClick(Sender: TObject);
var
  APoint: TPoint;
begin
  APoint := btnGenerateHolidaysEvents.ClientToScreen(Point(0, 0));
  pmGenerateHolidaysEvents.Popup(APoint.X, APoint.Y);
end;

procedure TfrmMain.btnGenerateMoreEventsClick(Sender: TObject);
var
  I: Integer;
  ADate: TDateTime;
  AType: Integer;
  AEvent: TcxSchedulerEvent;
begin
  frmProgress := TfrmProgress.Create(nil);
  try
    frmProgress.Show;
    EventsTable.DisableControls;
    DBConnection.BeginTrans;
    try
      AEvent := TcxSchedulerControlEvent.Create(DBStorage);
      EventsCommand.CommandText := 'Insert Into Events ([Start], [Finish], [Caption],' +
         '[State], [LabelColor], [ActualStart], [ActualFinish], [SportID], [ResourceID]) Values(:Start, :Finish,' +
         ' :Caption, :State, :LabelColor, :ActualStart, :ActualFinish, :SportID, :ResourceID);';
      EventsCommand.Parameters.CreateParameter('Start', ftDateTime, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('Finish', ftDateTime, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('Caption', ftWideString, pdInput, 255, varNull);
      EventsCommand.Parameters.CreateParameter('State', ftInteger, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('LabelColor', ftInteger, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('ActualStart', ftDateTime, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('ActualFinish', ftDateTime, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('SportID', ftInteger, pdInput, 4, varNull);
      EventsCommand.Parameters.CreateParameter('ResourceID', ftInteger, pdInput, 4, varNull);
      EventsCommand.Prepared := True;
      Randomize;
      for I := 0 to GenerateCount - 1 do
      begin
        ADate := FStartDate + EncodeTime(Random(11), Random(60), 0, 0) + Random(365 * 10);
        AEvent.Start := ADate;
        if not (I mod 100 = 0) then
           AEvent.Duration := Random(120) * MinuteToTime
        else
        begin
           AEvent.Start := Trunc(ADate);
           AEvent.Finish := Trunc(ADate) + 1;
           AEvent.AllDayEvent := True;
        end;
        AEvent.State := Random(4);
        AEvent.LabelColor := EventLabelColors[Random(11)];
        AType := Random(Length(StartIndexes));
        AEvent.Caption := SportEvents[StartIndexes[AType] + Random(EventsCount[AType])];
        EventsCommand.Parameters[0].Value := Double(AEvent.Start);
        EventsCommand.Parameters[1].Value := Double(AEvent.Finish);
        EventsCommand.Parameters[2].Value := AEvent.Caption;
        EventsCommand.Parameters[3].Value :=  AEvent.State;
        EventsCommand.Parameters[4].Value := AEvent.LabelColor;
        EventsCommand.Parameters[5].Value := Trunc(ADate);
        EventsCommand.Parameters[6].Value := Trunc(ADate) + 1;
        EventsCommand.Parameters[7].Value := AType;
        EventsCommand.Parameters[8].Value := Random(DBStorage.ResourceCount);
        EventsCommand.Execute;
        frmProgress.UpdateProgress(MulDiv(I, 100, GenerateCount));
      end;
      AEvent.Free;
    finally
      DBConnection.CommitTrans;
      EventsTable.EnableControls;
      SelectDataBase(1);
    end;
  finally
    Scheduler.SetFocus;
    frmProgress.Free;
  end;
end;

procedure TfrmMain.btnWebServiceShowAuthorizationSettingsFormClick(Sender: TObject);
var
  AHasOfficeWebServiceCredentials: Boolean;
  AHasGoogleWebServiceCredentials: Boolean;
begin
  WebServiceDemoShowSpecifyAuthorizationSettingsForm;
  AHasOfficeWebServiceCredentials := (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxMicrosoftGraphAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
  AHasGoogleWebServiceCredentials := (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientId <> '') and (TdxGoogleAPIOAuth2AuthorizationAgent.DefaultClientSecret <> '');
  btnWebServiceAddAccount.Enabled := AHasOfficeWebServiceCredentials or AHasGoogleWebServiceCredentials;
  miMicrosoftOfficeCalendar.Enabled := AHasOfficeWebServiceCredentials;
  miGoogleCalendar.Enabled := AHasGoogleWebServiceCredentials;
end;

procedure TfrmMain.bvgcSynchronizeItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  SynchronizeWithExecute(AItem);
end;

procedure TfrmMain.CalcDaysOff;
var
  I, J: Integer;
begin
  I := Ord(cxFormatController.StartOfWeek) + Ord(dSunday);
  J := Ord(dSunday) - I;
  if J < 0 then
    Inc(J, 7);
  FDaysOffIndexes[1] := J;
  J := Ord(dSaturday) - I;
  if J < 0 then
    Inc(J, 7);
  FDaysOffIndexes[2] := J;
end;

procedure TfrmMain.CheckTemporaryBitmapSize(AImages: TImageList);
begin
  if (TemporaryBitmap.Width <> AImages.Width) or (TemporaryBitmap.Height <> AImages.Height) then
  begin
    TemporaryBitmap.Width := AImages.Width;
    TemporaryBitmap.Height := AImages.Height;
  end;
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biFullWindowMode.Visible := ivAlways;
  biCustomProperties.Visible := ivNever;
end;

function TfrmMain.GetCaptionText: string;
const
  Captions: array [TcxSchedulerDemo] of string = ('Unknown', 'Day View', 'Work Week View', 'Week View', 'Month View',
    'TimeGrid View', 'Year View', 'Gantt View', 'Agenda View', 'Range Control', 'Active Reminders',
    'Different Time Zones', 'Custom Visual Styles', 'Custom Draw',
    'Custom Editors', 'Holidays', 'Grid Connection', 'Web Service Storage');
begin
  Result := Captions[FActiveDemo] + ' Demo';
end;

function TfrmMain.GetSyncField: TcxCustomSchedulerStorageField;
begin
  Result := Scheduler.Storage.GetFieldByName('SyncID');
end;

procedure TfrmMain.AddAccountClick(Sender: TObject);
var
  ANode: TcxTreeListNode;
  AProviderClass: TcxSchedulerWebServiceStorageCustomProviderClass;
begin
  inherited;
  tlWebServiceCalendars.BeginUpdate;
  try
    if Sender = miMicrosoftOfficeCalendar then
    begin
      ANode := WebServiceDemoAddAccount(TdxMicrosoftGraphAPIOAuth2AuthorizationAgent, TcxSchedulerWebServiceStorageOfficeProvider);
      AProviderClass := TcxSchedulerWebServiceStorageOfficeProvider;
    end
    else
    begin
      ANode := WebServiceDemoAddAccount(TdxGoogleAPIOAuth2AuthorizationAgent, TcxSchedulerWebServiceStorageGoogleProvider);
      AProviderClass := TcxSchedulerWebServiceStorageGoogleProvider;
    end;
    WebServiceDemoPopulateAccountNode(ANode, AProviderClass);

    if not FAgents.Last.IsAuthorized then
    begin
      ANode.Free;
      FAgents.Remove(FAgents.Last);
    end;
  finally
    tlWebServiceCalendars.EndUpdate;
  end;
end;

procedure TfrmMain.DrawParts(ACanvas: TcxCanvas; const R: TRect; AImages: TImageList; AState: Integer);

  procedure DrawPart(AIndex: Integer; ABounds: TRect;
    const ACheckBounds: TcxBorders = []; AHStretch: Boolean = False; AVStretch: Boolean = False);
  var
    ARgn: TcxRegion;
    ALeft, ATop: Integer;
  begin
    if (bLeft in ACheckBounds) then
      ABounds.Left := Max(ABounds.Left, R.Left + (R.Right - R.Left) div 2);
    if (bTop in ACheckBounds) then
      ABounds.Top := Max(ABounds.Top, R.Top + (R.Bottom - R.Top) div 2);
    if (bRight in ACheckBounds) then
      ABounds.Right := Min(ABounds.Right, R.Left + (R.Right - R.Left) div 2);
    if (bBottom in ACheckBounds) then
      ABounds.Bottom := Min(ABounds.Bottom, R.Top + (R.Bottom - R.Top) div 2);
    if not cxRectIsEmpty(ABounds) then
    begin
      ARgn := ACanvas.GetClipRegion;
      ACanvas.IntersectClipRect(ABounds);
      if AHStretch or AVStretch then
      begin
        if not AVStretch then
        begin
          if (bTop in ACheckBounds) then
            ABounds.Top := ABounds.Bottom - AImages.Height
          else
            ABounds.Bottom := ABounds.Top + AImages.Height;
        end;
        if not AHStretch then
        begin
          if (bLeft in ACheckBounds) then
            ABounds.Left := ABounds.Right - AImages.Width
          else
            ABounds.Right := ABounds.Left + AImages.Width;
        end;
        TemporaryBitmap.Canvas.Brush.Color := TemporaryBitmap.TransparentColor;
        TemporaryBitmap.Canvas.FillRect(cxRect(0, 0, AImages.Width,
            AImages.Height));
        AImages.GetBitmap(AIndex + (AState * 9), TemporaryBitmap);
        ACanvas.Canvas.StretchDraw(ABounds, TemporaryBitmap)
      end
      else
      begin
        if (bLeft in ACheckBounds) then
          ALeft := ABounds.Right - AImages.Width
        else
          ALeft := ABounds.Left;
        if (bTop in ACheckBounds) then
          ATop := ABounds.Bottom - AImages.Height
        else
          ATop := ABounds.Top;
        ACanvas.DrawImage(AImages, ALeft, ATop, AIndex + (AState * 9));
      end;
      ACanvas.SetClipRegion(ARgn, roSet);
    end;
  end;

begin
  CheckTemporaryBitmapSize(AImages);
  DrawPart(0, cxRect(R.Left, R.Top, R.Left + AImages.Width, R.Top + AImages.Height), [bRight, bBottom]);
  DrawPart(6, cxRect(R.Left, R.Bottom - AImages.Height, R.Left + AImages.Width, R.Bottom), [bRight, bTop]);
  DrawPart(2, cxRect(R.Right - AImages.Width, R.Top, R.Right, R.Top + AImages.Height), [bLeft, bBottom]);
  DrawPart(4, cxRect(R.Right - AImages.Width, R.Bottom - AImages.Height, R.Right, R.Bottom), [bLeft, bTop]);
  DrawPart(1, cxRect(R.Left + AImages.Width, R.Top, R.Right - AImages.Width, R.Top + AImages.Height),
    [bBottom], True, False);
  DrawPart(5, cxRect(R.Left + AImages.Width, R.Bottom - AImages.Height, R.Right - AImages.Width, R.Bottom),
    [bTop], True, False);
  DrawPart(8, cxRect(R.Left + AImages.Width, R.Top + AImages.Height, R.Right - AImages.Width, R.Bottom - AImages.Height),
    [], True, True);
  DrawPart(7, cxRect(R.Left, R.Top + AImages.Height, R.Left + AImages.Width, R.Bottom - AImages.Height),
    [bRight], False, True);
  DrawPart(3, cxRect(R.Right - AImages.Width, R.Top + AImages.Height, R.Right, R.Bottom - AImages.Height),
    [bLeft], False, True);
end;

procedure TfrmMain.dxbtnAllDayAreaHeightDefaultClick(Sender: TObject);
begin
  cxSchedulerAllDayEventContainerMaxLineCount := TdxBarButton(Sender).Tag;
  Scheduler.ViewDay.Refresh;
end;

procedure TfrmMain.dxbtnControlBoxClick(Sender: TObject);
begin
  Scheduler.ControlBox.Visible := dxbtnControlBox.Down;
end;

procedure TfrmMain.dxbtnMajorUnitChange(Sender: TObject);
const
  AUnits: array[0..4] of TcxSchedulerTimeGridScaleUnit = (suDay, suWeek, suMonth, suQuarter, suYear);
begin
  Scheduler.ViewTimeGrid.Scales.MajorUnit := AUnits[(Sender as TdxBarCombo).ItemIndex];
  SyncScales;
end;

procedure TfrmMain.dxbtnMinorUnitChange(Sender: TObject);
const
  AUnits: array[0..3] of TcxSchedulerTimeGridScaleUnit = (suHour, suDay, suMonth, suQuarter);
begin
  Scheduler.ViewTimeGrid.Scales.MinorUnit := AUnits[(Sender as TdxBarCombo).ItemIndex];
  SyncScales;
end;

procedure TfrmMain.lcbRangeAutoFormatCaptionsClick(Sender: TObject);
begin
  inherited;
  RangeControlProperties.AutoFormatScaleCaptions := lcbRangeAutoFormatCaptions.Checked;
end;

procedure TfrmMain.lcbTimeGridViewSnapEventsClick(Sender: TObject);
begin
  inherited;
  if TdxLayoutCheckBoxItem(Sender).Tag = 0 then
    Scheduler.ViewTimeGrid.SnapEventsToTimeSlots := TdxLayoutCheckBoxItem(Sender).Checked
  else
    Scheduler.ViewTimeGrid.EventDetailInfo := TdxLayoutCheckBoxItem(Sender).Checked;
  SyncOptionsWithScheduler;
  SetSchedulerFocused;
end;

procedure TfrmMain.EventsClick(Sender: TObject);
begin
  SyncScheduler;
end;

procedure TfrmMain.ShowExpressPrintingMessage(Sender: TObject);
begin
  dxDemoUtils.ShowExpressPrintingMessage;
  (Sender as TdxBarLargeButton).Action.Execute;
end;

const
  REG_KEY = 'Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION';
  REG_KEY_64 = 'SOFTWARE\Wow6432Node\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION';

procedure SetIE11KeyForWebBrowser;
var
  ARegistry: TRegistry;
  AKey: string;
begin
  ARegistry := TRegistry.Create;
  try
    ARegistry.RootKey := HKEY_CURRENT_USER;
    AKey := {$IFDEF CPUX64}REG_KEY_64{$ELSE}REG_KEY{$ENDIF};
    if ARegistry.OpenKey(AKey, True) then
      ARegistry.WriteInteger(ExtractFileName(Application.ExeName), 11001);
  finally
    ARegistry.Free;
  end;
end;

procedure RemoveIE11KeyForWebBrowser;
var
  ARegistry: TRegistry;
  AKey: string;
begin
  ARegistry := TRegistry.Create;
  try
    ARegistry.RootKey := HKEY_CURRENT_USER;
    AKey := {$IFDEF CPUX64}REG_KEY_64{$ELSE}REG_KEY{$ENDIF};
    if ARegistry.OpenKey(AKey, True) then
      ARegistry.DeleteValue(ExtractFileName(Application.ExeName));
  finally
    ARegistry.Free;
  end;
end;

initialization
  dxMegaDemoProductIndex := dxSchedulerIndex;
  TemporaryBitmap := TBitmap.Create;
  TemporaryBitmap.Width := 16;
  TemporaryBitmap.Height := 16;
  TemporaryBitmap.TransparentMode := tmFixed;
  TemporaryBitmap.TransparentColor := clFuchsia;
  TemporaryBitmap.Transparent := True;
  GradientBitmap := TBitmap.Create;
  SetIE11KeyForWebBrowser;

finalization
  RemoveIE11KeyForWebBrowser;
  TemporaryBitmap.Free;
  GradientBitmap.Free;

end.
