unit MailClientDemoMain;

{$I cxVer.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls, Vcl.Menus,
  Vcl.StdCtrls, Vcl.ImgList, cxGeometry, dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxDBData, dxRibbonBackstageView, dxSkinsCore, dxSkinsdxNavBarPainter, dxCore,
  dxSkinsdxBarPainter, cxCustomData, cxStyles, cxTL, cxTextEdit, cxTLdxBarBuiltInMenu, cxContainer, cxEdit, cxGroupBox,
  cxInplaceContainer, dxNavBarCollns, dxNavBarBase, dxNavBar, dxStatusBar, dxRibbonStatusBar, dxSkinsForm, dxScreenTip,
  dxRibbonGallery, dxBarExtItems, dxZoomTrackBar, cxTrackBar, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator, cxTreeView, cxButtons, cxScheduler, dxSkinChooserGallery, dxSkinsdxRibbonPainter,
  MailClientDemoBase, MailClientDemoMails, MailClientDemoContacts, MailClientDemoCalendar,
  MailClientDemoTasks, cxMaskEdit, cxDropDownEdit, cxSplitter, dxAlertWindow, cxSchedulerUtils, cxRadioGroup, cxLabel,
  dxLayoutControlAdapters, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxImageComboBox, dxCustomHint, cxHint, cxMemo, cxRichEdit, dxNavBarStyles, Vcl.ActnList, fmMailUnit, cxImage,
  dxGDIPlusClasses, dxSkinscxPCPainter, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, cxDBTL,
  cxTLData, MailClientDemoData, dxRibbonCustomizationForm, dxSkinsDefaultPainters, dxNavBarOfficeNavigationBar, cxPC,
  dxDockControl, dxDockPanel, MailClientDateNavigator, dxBarBuiltInMenu, dxLayoutcxEditAdapters, dxPSCore, dxPSPrVw,
  cxSpinEdit, MainClientDemoPrinting, cxImageList, dxUIAdorners, dxOfficeSearchBox, cxBarEditItem,
  cxLocalization, dxShellDialogs, dxScrollbarAnnotations, System.Actions,
  cxFontNameComboBox, dxFramedControl, dxPanel, dxCoreGraphics, dxColorEditor, System.ImageList;

type
  TfmMailClientDemoMain = class(TdxRibbonForm, IdxLocalizerListener, IcxLookAndFeelNotificationListener)
    aclMain: TActionList;
    actPageSetup: TAction;
    actPrintPreview: TAction;
    actQATAboveRibbon: TAction;
    actQATBelowRibbon: TAction;
    bbTouchMode: TdxBarLargeButton;
    bExit: TdxBarButton;
    bmMain: TdxBarManager;
    bNavigationCalendar: TdxBarButton;
    bNavigationContacts: TdxBarButton;
    bNavigationMail: TdxBarButton;
    bNavigationTasks: TdxBarButton;
    btnToday: TcxButton;
    bvgcExport: TdxRibbonBackstageViewGalleryControl;
    bvgcLocationsGroup1: TdxRibbonBackstageViewGalleryGroup;
    bvgcOpen: TdxRibbonBackstageViewGalleryControl;
    bvgcOpenCalendar: TdxRibbonBackstageViewGalleryItem;
    bvtsExport: TdxRibbonBackstageViewTabSheet;
    bvtsInfo: TdxRibbonBackstageViewTabSheet;
    bvtsOpen: TdxRibbonBackstageViewTabSheet;
    bvtsPrint: TdxRibbonBackstageViewTabSheet;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxHintStyleController1: TcxHintStyleController;
    dnScheduler: TcxDateNavigator;
    dsHelper: TDataSource;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxRibbon1: TdxRibbon;
    rtView: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbonStatusBar1Container3: TdxStatusBarContainerControl;
    Frame11: TFrame1;
    gbHelpContent: TcxGroupBox;
    ilNavBarLarge: TcxImageList;
    ilNavBarSmall: TcxImageList;
    ilTreeList: TcxImageList;
    ItemsCountInfo: TdxBarStatic;
    lbAppButton: TdxBarLargeButton;
    lblClientCenter: TcxLabel;
    lblDownloads: TcxLabel;
    lblDxOnWeb: TcxLabel;
    lblGettingStarted: TcxLabel;
    lblKnowledgeBase: TcxLabel;
    lblProducts: TcxLabel;
    lblSupportCenter: TcxLabel;
    lbQuickAccessToolbarAbove: TdxBarLargeButton;
    lbQuickAccessToolbarBelow: TdxBarLargeButton;
    lbQuickAccessToolbarVisible: TdxBarLargeButton;
    lbRibbonForm: TdxBarLargeButton;
    lbViewNormal: TdxBarLargeButton;
    lbViewReading: TdxBarLargeButton;
    liCalendar: TdxLayoutItem;
    odCalendar: TdxOpenFileDialog;
    RibbonBackstageView: TdxRibbonBackstageView;
    rtAppointment: TdxRibbonTab;
    rtFrame: TdxRibbonTab;
    screpNavBar: TdxScreenTipRepository;
    siNavigation: TdxBarSubItem;
    SkinController: TdxSkinController;
    stTaskEmployees: TdxScreenTip;
    tbColorSchemes: TdxBar;
    tbItemsCount: TdxBar;
    tbQuickAccess: TdxBar;
    tbQuickAccessToolbarLayout: TdxBar;
    tbRibbonOptions: TdxBar;
    tbStatusBarView: TdxBar;
    tbViewNavigation: TdxBar;
    ztbContent: TdxZoomTrackBar;
    amMails: TdxUIAdornerManager;
    bdgVCLInbox: TdxBadge;
    bdgAnnouncements: TdxBadge;
    bdgGrid: TdxBadge;
    bdgServerMode: TdxBadge;
    bdgTileControl: TdxBadge;
    bdgMrBrooksInbox: TdxBadge;
    tbTabAreaSearchToolbar: TdxBar;
    beiOfficeSearchBox: TcxBarEditItem;
    tbSearchOptions: TdxBar;
    lbRecursiveSearch: TdxBarLargeButton;
    lbShowPaths: TdxBarLargeButton;
    dxLayoutControl2: TdxLayoutControl;
    dxLayoutControl2Group_Root: TdxLayoutGroup;
    dxLayoutImageItem1: TdxLayoutImageItem;
    liInfo: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    liSupport: TdxLayoutLabeledItem;
    dxLayoutCxLookAndFeel2: TdxLayoutCxLookAndFeel;
    dxLayoutItem3: TdxLayoutItem;
    cxImageList1: TcxImageList;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    liLinks: TdxLayoutLabeledItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutControl3Group_Root: TdxLayoutGroup;
    dxLayoutControl3: TdxLayoutControl;
    liOpen: TdxLayoutLabeledItem;
    dxLayoutItem10: TdxLayoutItem;
    dxLayoutControl4Group_Root: TdxLayoutGroup;
    dxLayoutControl4: TdxLayoutControl;
    liPrint: TdxLayoutLabeledItem;
    dxLayoutControl5Group_Root: TdxLayoutGroup;
    dxLayoutControl5: TdxLayoutControl;
    liExport: TdxLayoutLabeledItem;
    dxLayoutItem11: TdxLayoutItem;
    liPrintReport: TdxLayoutItem;
    bliFormCorners: TdxBarListItem;
    gbFramesDisplay: TdxPanel;
    cxStyleRepository1: TcxStyleRepository;
    stTreeListBackground: TcxStyle;
    bDevMode: TdxBarButton;
    dxNavBarOfficeNavigationBar1: TdxNavBarOfficeNavigationBar;
    rtFile: TdxRibbonTab;
    procedure actPageSetupExecute(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actQATBelowRibbonExecute(Sender: TObject);
    procedure actQATBelowRibbonUpdate(Sender: TObject);
    procedure bbTouchModeClick(Sender: TObject);
    procedure bExitClick(Sender: TObject);
    procedure bNavigationMailClick(Sender: TObject);
    procedure btnTodayClick(Sender: TObject);
    procedure bvgcExportItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure bvgcOpenItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTreeList1StylesGetContentStyle(Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
    procedure dnSchedulerCustomDrawBackground(Sender: TObject; ACanvas: TcxCanvas; const ABounds: TRect; var AViewParams: TcxViewParams; var ADone: Boolean);
    procedure dnSchedulerCustomDrawDayNumber(Sender: TObject; ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo; var ADone: Boolean);
    procedure dsHelperDataChange(Sender: TObject; Field: TField);
    procedure dxNavBar1GetLinkHint(Sender: TObject; ALink: TdxNavBarItemLink; var AHint: String);
    procedure dxZoomTrackBar1PropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbAppButtonClick(Sender: TObject);
    procedure lblClientCenterClick(Sender: TObject);
    procedure lblDownloadsClick(Sender: TObject);
    procedure lblDxOnWebClick(Sender: TObject);
    procedure lblGettingStartedClick(Sender: TObject);
    procedure lblKnowledgeBaseClick(Sender: TObject);
    procedure lblProductsClick(Sender: TObject);
    procedure lblSupportCenterClick(Sender: TObject);
    procedure lbQuickAccessToolbarVisibleClick(Sender: TObject);
    procedure lbRibbonFormClick(Sender: TObject);
    procedure RibbonBackstageViewCloseUp(Sender: TObject);
    procedure RibbonBackstageViewPopup(Sender: TObject);
    procedure lbRecursiveSearchClick(Sender: TObject);
    procedure lbShowPathsClick(Sender: TObject);
    procedure bliFormCornersClick(Sender: TObject);
    procedure bDevModeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dxRibbon1TabChanged(Sender: TdxCustomRibbon);
    procedure dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab; var Allow: Boolean);
    procedure dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon; var AHandled: Boolean);
    procedure dxRibbon1Resize(Sender: TObject);
    procedure lbViewNormalClick(Sender: TObject);
    procedure lbViewReadingClick(Sender: TObject);
    procedure dxNavBarOfficeNavigationBar1SelectionChanged(Sender: TObject);
  private
    FMailFormsManager: TdxMailFormsManager;
    FNavBarHintLink: TdxNavBarItemLink;
    FOldSkinName: string;
    FPrintingFrame: TfrmPrinting;
    FSkinSelector: TdxRibbonSkinSelector;
    FRibbonOldLayout: TdxRibbonLayout;
    FViewStyleNormal: Boolean;

    procedure SkinSelectorPaletteChanged(Sender: TObject; const AArgs: TdxRibbonSkinSelectorPaletteChangedArgs);
    procedure SkinSelectorSkinChanged(Sender: TObject; const AArgs: TdxRibbonSkinSelectorSkinChangedArgs);

    function GetLookAndFeel: TdxCustomLayoutLookAndFeel;

    procedure CheckContentZoomPosition;
    procedure CreateBackstageViewExportGalleryGroup;
    function GetActiveFrame: TMailClientDemoBaseFrame;
    procedure SetEventDialogsStyle;
    procedure UpdateContentZoomState(Sender: TObject);
    procedure UpdateGlyphs(AGlyphs: TcxImageCollection; AImages: TcxImageList);
    procedure UpdateIcons;
    procedure UpdateItemCountInfo;
    procedure WMFocusMailMessage(var AMessage: TMessage); message WM_FOCUSMAILMESSAGE;
    procedure SetViewStyleNormal(const Value: Boolean);
  protected
   { IcxLookAndFeelNotificationListener }
    function GetObject: TObject;
    procedure MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
    procedure MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure OpenFrame(AFrameID: Integer);
    procedure RibbonMinimizeButtonPopulatePopupMenu(Sender: TdxCustomRibbon;
      APopupMenuController: TdxRibbonMinimizeButtonPopupMenuController;
      APopupMenu: TdxRibbonPopupMenu; var AHandled: Boolean);
    function SetNodeCaption(ARootNode: TcxTreeListNode;
      const ASeekID, ACount: Integer; const ACaption: string): Boolean;

    function HasSkinPalette: Boolean;
    procedure Translate;
    procedure TranslationChanged;
    procedure UpdateColorScheme; override; // for internal use

    property ActiveFrame: TMailClientDemoBaseFrame read GetActiveFrame;
    property LookAndFeel: TdxCustomLayoutLookAndFeel read GetLookAndFeel;
    property MailFormsManager: TdxMailFormsManager read FMailFormsManager;
    property ScaleFactor;
    property ViewStyleNormal: Boolean read FViewStyleNormal write SetViewStyleNormal;
  end;

const
  ReminderNone = 'None';

var
  fmMailClientDemoMain: TfmMailClientDemoMain;

implementation

uses
  System.Math, Winapi.ShellAPI, System.Types,
  dxSkinInfo,
  Datasnap.DBClient, dxNavBarSkinBasedViews,
  dxmdaset,
  cxSchedulerCustomResourceView, cxSchedulerDayView, cxSchedulerTimeGridView,
  cxSchedulerICalendar, cxSchedulerStrs, cxSchedulerDialogs, dxDemoUtils,
  cxGridDBDataDefinitions, dxMailClientDemoUtils, MailClientDemoBaseGrid, cxDateUtils,
  cxSchedulerEditorFormManager, dxPrnDev, dxPrnDlg, dxPSUtl, dxPSGlbl,
  LocalizationStrs, dxBarStrs;

{$R *.dfm}

type
  TcxTreeListAccess = class(TcxTreeList);
  TCustomdxBarSubItemAccess = class(TCustomdxBarSubItem);
  TdxLayoutSplitterItemAccess = class(TdxLayoutSplitterItem);
  TcxControlAccess = class(TcxControl);
  TdxCustomRibbonAccess = class(TdxCustomRibbon);

constructor TfmMailClientDemoMain.Create(AOwner: TComponent);
begin
  FRibbonOldLayout := TdxRibbonLayout.Default;
  inherited Create(AOwner);
  FMailFormsManager := TdxMailFormsManager.Create;
//  TdxLayoutSplitterItemAccess(dxLayoutSplitterItem1).DirectAccess := True;
  TdxRibbonSearchToolbarController.TryCreateWithExistingToolbar(dxRibbon1, True);
  dxRibbon1.Style := rsOffice365;
  FRibbonOldLayout := TdxRibbonLayout.Simplified;
  dxRibbon1.Layout := FRibbonOldLayout;
  TdxCustomRibbonAccess(dxRibbon1).OnMinimizeButtonPopulatePopupMenu := RibbonMinimizeButtonPopulatePopupMenu;
  FViewStyleNormal := True;
end;

destructor TfmMailClientDemoMain.Destroy;
begin
  TdxRibbonSearchToolbarController.Finalize;
  inherited Destroy;
end;

procedure TfmMailClientDemoMain.FormCreate(Sender: TObject);
begin
  RootLookAndFeel.AddChangeListener(Self);
  CreateBackstageViewExportGalleryGroup;
  cxGroupBox5.Parent := nil;
  bliFormCorners.ItemIndex := Ord(SkinController.FormCorners);

  FPrintingFrame := TfrmPrinting.Create(Self);
  FPrintingFrame.Align := alClient;
  FPrintingFrame.AlignWithMargins := True;
  FPrintingFrame.Margins.Left := ScaleFactor.Apply(40);
  FPrintingFrame.Margins.Top := ScaleFactor.Apply(8);
  FPrintingFrame.Margins.Bottom := ScaleFactor.Apply(26);
  FPrintingFrame.Margins.Right := ScaleFactor.Apply(40);
  liPrintReport.Control := FPrintingFrame;
  Translate;
  SkinController.ScrollMode := scmSmooth;

  FSkinSelector := CreateSkinSelector(tbColorSchemes);
  FSkinSelector.Links[0].Index := 0;
  FSkinSelector.OnPaletteChanged := SkinSelectorPaletteChanged;
  FSkinSelector.OnSkinChanged := SkinSelectorSkinChanged;
  FSkinSelector.SetSkin('WXI');
  FOldSkinName := 'WXI';
  SkinSelectorPaletteChanged(Self, nil);
  DisableAero := True;
end;

procedure TfmMailClientDemoMain.SkinSelectorPaletteChanged(Sender: TObject; const AArgs: TdxRibbonSkinSelectorPaletteChangedArgs);
begin
  dxLayoutCxLookAndFeel1.ItemOptions.CaptionOptions.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  dxLayoutCxLookAndFeel2.ItemOptions.CaptionOptions.Font.Color := RootLookAndFeel.Painter.DefaultContentTextColor;
  lblClientCenter.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblDownloads.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblDxOnWeb.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblGettingStarted.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblKnowledgeBase.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblProducts.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;
  lblSupportCenter.Style.TextColor := RootLookAndFeel.Painter.DefaultHyperlinkTextColor;

  DM.stCompleted.TextColor            := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Success));
  DM.stWaitingHighPriority.TextColor  := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Warning));
  DM.stWaiting.TextColor              := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Warning));
  DM.stDeferredHighPriority.TextColor := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Hyperlink));
  DM.stDeferred.TextColor             := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Hyperlink));
  DM.stDateOutHighPriority.TextColor  := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Danger));
  DM.stDateOut.TextColor              := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Danger));
  DM.stUnreadStyle.TextColor          := TdxSkinColorDataHelper.GetDisplayColor(TdxColorData.Create(TdxNamedColorKind.Default));
end;

procedure TfmMailClientDemoMain.SkinSelectorSkinChanged(Sender: TObject; const AArgs: TdxRibbonSkinSelectorSkinChangedArgs);
begin
  SetEventDialogsStyle;
  MailFormsManager.SetColorSchemeToRibbons(dxRibbon1.ColorSchemeName);
  FOldSkinName := FSkinSelector.ActiveSkinName;
  for var I: Integer := 0 to dxMailClientDemoFrameManager.FrameCount - 1 do
    dxMailClientDemoFrameManager.Frames[I].SkinChanged(FOldSkinName);
end;

procedure TfmMailClientDemoMain.FormShow(Sender: TObject);
begin
  rtAppointment.Context := dxRibbon1.Contexts[0];
  bbTouchMode.Down := SkinController.TouchMode;
  dxNavBarOfficeNavigationBar1.Items.SelectedItem := dxNavBarOfficeNavigationBar1.Items[0];
  if Height > Monitor.Height - 150 then
  begin
    Height := Monitor.Height - 150;
    Top := 0;
  end;
end;

procedure TfmMailClientDemoMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  MailFormsManager.TryCloseItems;
  CanClose := MailFormsManager.IsEmpty;
end;

procedure TfmMailClientDemoMain.FormDestroy(Sender: TObject);
begin
  RootLookAndFeel.RemoveChangeListener(Self);
  FreeAndNil(FMailFormsManager);
end;

procedure TfmMailClientDemoMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
end;

procedure TfmMailClientDemoMain.dnSchedulerCustomDrawBackground(Sender: TObject; ACanvas: TcxCanvas;
  const ABounds: TRect; var AViewParams: TcxViewParams; var ADone: Boolean);
begin
  ACanvas.FillRect(ABounds, dnScheduler.LookAndFeel.Painter.DefaultContentColor);
  ADone := True;
end;

procedure TfmMailClientDemoMain.dnSchedulerCustomDrawDayNumber(Sender: TObject;
  ACanvas: TcxCanvas; AViewInfo: TcxSchedulerDateNavigatorDayNumberViewInfo; var ADone: Boolean);
begin
  if dxDayOfWeek(AViewInfo.Date) in [dSunday, dSaturday] then
    ACanvas.Font.Color := clRed;
end;

procedure TfmMailClientDemoMain.dsHelperDataChange(Sender: TObject;
  Field: TField);
begin
  UpdateItemCountInfo;
end;

function TfmMailClientDemoMain.GetLookAndFeel: TdxCustomLayoutLookAndFeel;
begin
  Result := dxLayoutSkinLookAndFeel1;
end;

procedure TfmMailClientDemoMain.CheckContentZoomPosition;
begin
  ztbContent.Enabled := ActiveFrame.IsContentZoomSupport;
  if ztbContent.Enabled then
    ztbContent.Position := ActiveFrame.ContentZoomPosition
  else
    ztbContent.Position := 100;
end;

procedure TfmMailClientDemoMain.CreateBackstageViewExportGalleryGroup;

  function GetSupportedExportName(AIndex: TSupportedExportType): string;
  begin
    Result := RemoveAccelChars(cxGetResourceString(SupportedExportNames[AIndex]));
  end;

var
  AGroup: TdxRibbonBackstageViewGalleryGroup;
  AItem: TdxRibbonBackstageViewGalleryItem;
  I: TSupportedExportType;
begin
  AGroup := bvgcExport.Gallery.Groups.Add;
  for I := Low(TSupportedExportType) to High(TSupportedExportType) do
  begin
    AItem := AGroup.Items.Add;
    AItem.Caption := GetSupportedExportName(I);
    AItem.Description := cxGetResourceString(SupportedExportDescriptions[I]);
    AItem.Tag := Integer(I);
    AItem.ImageIndex := 49 + Byte(I);
  end;
end;

function TfmMailClientDemoMain.GetActiveFrame: TMailClientDemoBaseFrame;
begin
  Result := dxMailClientDemoFrameManager.ActiveFrame;
end;

procedure TfmMailClientDemoMain.SetEventDialogsStyle;
var
  ACheckString: string;
begin
  ACheckString := Copy(SkinController.SkinName, 1, 10);
  if ACheckString = 'Office2007' then
    cxSchedulerEditorManager.CurrentEditorFormStyle := 'Ribbon'
  else if ACheckString = 'Office2010' then
    cxSchedulerEditorManager.CurrentEditorFormStyle := 'Ribbon2010'
  else if ACheckString = 'Office2013' then
    cxSchedulerEditorManager.CurrentEditorFormStyle := 'Ribbon2013'
  else
    cxSchedulerEditorManager.CurrentEditorFormStyle := 'Standard';
end;

procedure TfmMailClientDemoMain.UpdateColorScheme;
begin
  inherited;
  if lbQuickAccessToolbarVisible = nil then
    Exit;
  lbQuickAccessToolbarVisible.Down := dxRibbon1.QuickAccessToolbar.Visible;
  lbQuickAccessToolbarAbove.Enabled := dxRibbon1.QuickAccessToolbar.Visible;
  lbQuickAccessToolbarBelow.Enabled := dxRibbon1.QuickAccessToolbar.Visible;
end;

procedure TfmMailClientDemoMain.UpdateContentZoomState(Sender: TObject);
begin
  CheckContentZoomPosition;
end;

procedure TfmMailClientDemoMain.UpdateGlyphs(AGlyphs: TcxImageCollection; AImages: TcxImageList);

   procedure AssignGlyph(ABar: TdxBar; AImageIndex: Integer);
   var
     AImage: TdxSmartImage;
   begin
     AImage := TdxSmartImage.Create;
     try
       AImages.GetImage(AImageIndex, AImage);
       ABar.Glyph.Assign(AImage);
     finally
       AImage.Free;
     end;
   end;

begin
  AssignGlyph(tbViewNavigation, 57);
  AssignGlyph(tbRibbonOptions, 87);
  AssignGlyph(tbColorSchemes, 64);
  AssignGlyph(tbItemsCount, 85);
  AssignGlyph(tbQuickAccess, 87);
  AssignGlyph(tbQuickAccessToolbarLayout, 84);
  AssignGlyph(tbStatusBarView, 82);
  AssignGlyph(tbTabAreaSearchToolbar, 83);
  AssignGlyph(tbSearchOptions, 83);
end;

procedure TfmMailClientDemoMain.UpdateIcons;
var
  AIsVectorSkin: Boolean;
  AGlyphs: TcxImageCollection;
  ALargeImages, ASmallImages: TcxImageList;
begin
  AIsVectorSkin := (RootLookAndFeel.ActiveStyle = lfsSkin) and (RootLookAndFeel.SkinPainter <> nil) and HasSkinPalette;
  ALargeImages := DM.ilToolbarsLarge;
  ASmallImages := DM.ilToolbarsSmallSVG;
  AGlyphs := dm.icImages;
  if AIsVectorSkin then
  begin
    ALargeImages := DM.ilToolbarsLargeSVG;
    ASmallImages := DM.ilToolbarsSmallSVG;
    AGlyphs := dm.icImagesSVG;
  end;
  if ActiveFrame <> nil then
  begin
    ActiveFrame.bmFrame.LargeImages := ALargeImages;
    ActiveFrame.bmFrame.Images := ASmallImages;
  end;
  if FPrintingFrame <> nil then
    FPrintingFrame.Images := ALargeImages;
  bmMain.LargeImages := ALargeImages;
  bvgcExport.Images := bmMain.LargeImages;
  bmMain.Images := ASmallImages;
  UpdateGlyphs(AGlyphs, ASmallImages);
end;

procedure TfmMailClientDemoMain.UpdateItemCountInfo;
begin
  if ActiveFrame <> nil then
    ItemsCountInfo.Caption := ActiveFrame.GetItemCountInfo
  else
    ItemsCountInfo.Caption := '';
end;

procedure TfmMailClientDemoMain.WMFocusMailMessage(var AMessage: TMessage);
begin
  inherited;
  OpenFrame(IDMails);
  ActiveFrame.Perform(AMessage.Msg, AMessage.WParam, AMessage.LParam);
end;

procedure TfmMailClientDemoMain.bNavigationMailClick(Sender: TObject);
begin
  dxNavBarOfficeNavigationBar1.Items.SelectedItem := dxNavBarOfficeNavigationBar1.Items[TdxBarButton(Sender).Tag];
end;

procedure TfmMailClientDemoMain.btnTodayClick(Sender: TObject);
begin
  dnScheduler.InnerDateNavigator.GoToDate(Date, vmDay);
end;

procedure TfmMailClientDemoMain.bvgcExportItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  ActiveFrame.ExportTo(TSupportedExportType(AItem.Tag));
end;

procedure TfmMailClientDemoMain.bvgcOpenItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  odCalendar.InitialDir := GetProgramPath;
  if odCalendar.Execute then
  begin
    ShowHourglassCursor;
    try
      cxSchedulerICalendarImport(DM.SchedulerUnboundStorage, odCalendar.FileName);
      OpenFrame(IDCalendar);
    finally
      HideHourglassCursor;
    end;
  end;
end;

procedure TfmMailClientDemoMain.cxButton1Click(Sender: TObject);
begin
  liCalendar.Visible := False;
end;

procedure TfmMailClientDemoMain.cxButton2Click(Sender: TObject);
begin
  liCalendar.Visible := True;
//  dxNavBarOfficeNavigationBar1.HidePeekForm;
end;

procedure TfmMailClientDemoMain.cxTreeList1StylesGetContentStyle(
  Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
  ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  if Pos('[', ANode.Texts[0]) > 0 then
    AStyle := DM.stUnreadStyle;
end;

procedure TfmMailClientDemoMain.lbRibbonFormClick(Sender: TObject);
begin
  dxRibbon1.SupportNonClientDrawing := not dxRibbon1.SupportNonClientDrawing;
  lbAppButton.Enabled := dxRibbon1.SupportNonClientDrawing;
end;

procedure TfmMailClientDemoMain.lbAppButtonClick(Sender: TObject);
begin
  dxRibbon1.ApplicationButton.Visible := not dxRibbon1.ApplicationButton.Visible;
end;

procedure TfmMailClientDemoMain.lbQuickAccessToolbarVisibleClick(Sender: TObject);
begin
  dxRibbon1.QuickAccessToolbar.Visible := not dxRibbon1.QuickAccessToolbar.Visible;
end;

procedure TfmMailClientDemoMain.OpenFrame(AFrameID: Integer);
begin
  RibbonBackstageView.Visible := False;
  dxNavBarOfficeNavigationBar1.Items.SelectedItem := dxNavBarOfficeNavigationBar1.Items[AFrameID];
end;

function TfmMailClientDemoMain.SetNodeCaption(ARootNode: TcxTreeListNode;
  const ASeekID, ACount: Integer; const ACaption: string): Boolean;
var
  I: Integer;
begin
  Result := Integer(ARootNode.Data) = ASeekID;
  if Result then
    if ACount = 0 then
      ARootNode.Texts[0] := ACaption
    else
      ARootNode.Texts[0] := Format('%s[%d]', [ACaption, ACount])
  else
    for I := 0 to ARootNode.Count - 1 do
    begin
      Result := SetNodeCaption(ARootNode.Items[I], ASeekID, ACount, ACaption);
      if Result then
        Break;
    end
end;

procedure TfmMailClientDemoMain.SetViewStyleNormal(const Value: Boolean);
begin
  if ViewStyleNormal <> Value then
  begin
    FViewStyleNormal := Value;
    ActiveFrame.ViewStyleNormal := Value;
    lbViewNormal.Down := Value;
    lbViewReading.Down := not Value;
  end;
end;

procedure TfmMailClientDemoMain.dxNavBar1GetLinkHint(Sender: TObject; ALink: TdxNavBarItemLink; var AHint: String);
var
  AFrame: TMailClientDemoBaseFrame;
begin
  AFrame := ActiveFrame;
  if AFrame is TMailClientDemoTasksFrame then
  begin
    TMailClientDemoTasksFrame(AFrame).GetLinkHint(Sender, ALink, stTaskEmployees, AHint);
    if AHint <> '' then
      FNavBarHintLink := ALink;
  end;
end;

procedure TfmMailClientDemoMain.actPageSetupExecute(Sender: TObject);
begin
  ActiveFrame.ComponentPrinter.PageSetup;
end;

function TfmMailClientDemoMain.HasSkinPalette: Boolean;
var
  AData: TdxSkinInfo;
begin
  Result := RootLookAndFeel.Painter.GetPainterData(AData) and (AData.Skin.ColorPalettes.Count > 1);
end;

procedure TfmMailClientDemoMain.Translate;

  procedure UpdateNavBarGroupLocale(ANavBarGroup: TdxNavBarGroup; const AStr: string);
  begin
    ANavBarGroup.Caption := AStr;
    ANavBarGroup.Hint := AStr;
  end;

begin
  dxNavBarOfficeNavigationBar1.Items[0].Text := cxGetResourceString(@sMainMenuMailCaption);
  dxNavBarOfficeNavigationBar1.Items[1].Text := cxGetResourceString(@sMainMenuCalendarCaption);
  dxNavBarOfficeNavigationBar1.Items[2].Text := cxGetResourceString(@sContactsColumn);
  dxNavBarOfficeNavigationBar1.Items[3].Text := cxGetResourceString(@sMainMenuTasksCaption);
  bNavigationCalendar.Caption := cxGetResourceString(@sMainMenuCalendarCaption);
  bNavigationContacts.Caption := cxGetResourceString(@sContactsColumn);
  bNavigationMail.Caption := cxGetResourceString(@sMainMenuMailCaption);
  bNavigationTasks.Caption := cxGetResourceString(@sMainMenuTasksCaption);
  siNavigation.Caption := cxGetResourceString(@sNavigation);
  rtFile.Caption := cxGetResourceString(@sdxMenuFile);
  rtView.Groups[0].Caption := cxGetResourceString(@sNavigation);
  rtView.Caption := cxGetResourceString(@sViewButton);
  bvtsInfo.Caption := cxGetResourceString(@sInfo);
  bvtsOpen.Caption := cxGetResourceString(@sOpen);
  bvtsExport.Caption := cxGetResourceString(@sExport);
  bvtsPrint.Caption := cxGetResourceString(@sPrintButton);
  bExit.Caption := cxGetResourceString(@sExit);
  lbViewNormal.Caption := cxGetResourceString(@sNormal);
  lbViewReading.Caption := cxGetResourceString(@sReading);
  UpdateItemCountInfo;
  DM.Translate;
  liInfo.CaptionOptions.Text := cxGetResourceString(@sInfo);
  liSupport.CaptionOptions.Text := cxGetResourceString(@sSupport);
  liLinks.CaptionOptions.Text := cxGetResourceString(@sLinks);
  liOpen.CaptionOptions.Text := cxGetResourceString(@sOpen);
  liPrint.CaptionOptions.Text := cxGetResourceString(@sPrintButton);
  liExport.CaptionOptions.Text := cxGetResourceString(@sExport);
  btnToday.Caption := cxGetResourceString(@dxSBAR_DATETODAY);
  TdxOfficeSearchBoxProperties(beiOfficeSearchBox.Properties).Nullstring := cxGetResourceString(@sOfficeSearchBoxNullString);
  FPrintingFrame.Translate;
end;

procedure TfmMailClientDemoMain.TranslationChanged;
begin
  Translate;
end;

function TfmMailClientDemoMain.GetObject: TObject;
begin
  Result := Self;
end;

procedure TfmMailClientDemoMain.MasterLookAndFeelChanged(Sender: TcxLookAndFeel; AChangedValues: TcxLookAndFeelValues);
begin
  UpdateIcons;
end;

procedure TfmMailClientDemoMain.MasterLookAndFeelDestroying(Sender: TcxLookAndFeel);
begin
end;

procedure TfmMailClientDemoMain.lbRecursiveSearchClick(Sender: TObject);
begin
  if lbRecursiveSearch.Down then
    (beiOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bTrue
  else
    (beiOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bFalse;
end;

procedure TfmMailClientDemoMain.lbShowPathsClick(Sender: TObject);
begin
  (beiOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).ShowResultPaths := lbShowPaths.Down;
end;

procedure TfmMailClientDemoMain.lbViewNormalClick(Sender: TObject);
begin
  ViewStyleNormal := True;
end;

procedure TfmMailClientDemoMain.lbViewReadingClick(Sender: TObject);
begin
  ViewStyleNormal := False;
end;

procedure TfmMailClientDemoMain.actPrintPreviewExecute(Sender: TObject);
begin
  ActiveFrame.ComponentPrinter.Preview;
end;

procedure TfmMailClientDemoMain.actQATBelowRibbonExecute(Sender: TObject);
begin
  if TAction(Sender).Tag <> 0 then
    dxRibbon1.QuickAccessToolbar.Position := qtpBelowRibbon
  else
    dxRibbon1.QuickAccessToolbar.Position := qtpAboveRibbon;
end;

procedure TfmMailClientDemoMain.actQATBelowRibbonUpdate(Sender: TObject);
begin
  actQATAboveRibbon.Checked := dxRibbon1.QuickAccessToolbar.Position = qtpAboveRibbon;
  actQATBelowRibbon.Checked := dxRibbon1.QuickAccessToolbar.Position = qtpBelowRibbon;
end;

procedure TfmMailClientDemoMain.dxNavBarOfficeNavigationBar1SelectionChanged(
  Sender: TObject);
begin
  dxRibbon1.Tabs[1].Active := True;
  dxMailClientDemoFrameManager.ShowFrame(dxNavBarOfficeNavigationBar1.Items.SelectedItem.Index, gbFramesDisplay);
  ActiveFrame.OnUpdateContentZoomState := UpdateContentZoomState;
  dsHelper.DataSet := ActiveFrame.DataSet;
  Caption := ActiveFrame.Caption;
  CheckContentZoomPosition;
  UpdateIcons;
end;

var
  GAppMenuShowing: Boolean = False;
  GActiveTabIndex: Integer = 1;

procedure TfmMailClientDemoMain.dxRibbon1TabChanging(Sender: TdxCustomRibbon; ANewTab: TdxRibbonTab;
  var Allow: Boolean);
begin
  if dxRibbon1.ActiveTab <> nil then
    GActiveTabIndex := Max(dxRibbon1.ActiveTab.Index, 1);
end;

procedure TfmMailClientDemoMain.dxRibbon1ApplicationMenuClick(Sender: TdxCustomRibbon; var AHandled: Boolean);
begin
  AHandled := not GAppMenuShowing;
  if AHandled then
    ViewStyleNormal := not ViewStyleNormal;
end;

procedure TfmMailClientDemoMain.dxRibbon1Resize(Sender: TObject);
begin
  if FRibbonOldLayout <> dxRibbon1.Layout then
  begin
   FRibbonOldLayout := dxRibbon1.Layout;
   if ActiveFrame <> nil then
     ActiveFrame.RibbonLayoutChanged;
  end;
end;

procedure TfmMailClientDemoMain.dxRibbon1TabChanged(Sender: TdxCustomRibbon);
begin
  if not GAppMenuShowing and (ActiveFrame <> nil) and (dxRibbon1.Tabs[0].Active) then
  begin
    GAppMenuShowing := True;
    dxRibbon1.ApplicationMenuPopup;
    dxRibbon1.Tabs[GActiveTabIndex].Active := True;
    GAppMenuShowing := False;
  end;
end;

procedure TfmMailClientDemoMain.RibbonBackstageViewCloseUp(Sender: TObject);
begin
  FPrintingFrame.Initialize(nil, dxRibbon1);
  amMails.Badges.Active := True;
  ActiveFrame.Perform(WM_BACKSTAGEVISIBILITYCHANGED, Integer(False), 0);
end;

procedure TfmMailClientDemoMain.RibbonBackstageViewPopup(Sender: TObject);
begin
  FPrintingFrame.Initialize(ActiveFrame.ComponentPrinter, dxRibbon1);
  if not RibbonBackstageView.IsLoading and bvtsPrint.Active then
    bvtsInfo.Active := True;
  amMails.Badges.Active := False;
  ActiveFrame.Perform(WM_BACKSTAGEVISIBILITYCHANGED, Integer(True), 0);
end;

procedure TfmMailClientDemoMain.RibbonMinimizeButtonPopulatePopupMenu(Sender: TdxCustomRibbon;
  APopupMenuController: TdxRibbonMinimizeButtonPopupMenuController;
  APopupMenu: TdxRibbonPopupMenu; var AHandled: Boolean);
type
  TItemKind = TdxRibbonMinimizeButtonPopupMenuController.TItemKind;
begin
  APopupMenuController.AddItem(TItemKind.RibbonClassic);
  APopupMenuController.AddItem(TItemKind.RibbonSimplified);
  if (Sender = fmMailClientDemoMain.dxRibbon1) or (dxNavBarOfficeNavigationBar1.Items.SelectedItem.Index = IDMails) then
    APopupMenuController.AddItem(TItemKind.QuickAccessToolbarVisibility);
  AHandled := True;
end;

procedure TfmMailClientDemoMain.dxZoomTrackBar1PropertiesChange(Sender: TObject);
begin
  ActiveFrame.ContentZoomPosition := TdxZoomTrackBar(Sender).Position;
end;

procedure TfmMailClientDemoMain.lblGettingStartedClick(Sender: TObject);
begin
  ShellExecute(0, 'OPEN', PChar('https://www.devexpress.com/go/VCL_Get_Started.aspx'), nil, nil, SW_SHOW);
end;

procedure TfmMailClientDemoMain.lblSupportCenterClick(Sender: TObject);
begin
  Browse(spSupport);
end;

procedure TfmMailClientDemoMain.lblKnowledgeBaseClick(Sender: TObject);
begin
  ShellExecute(0, 'OPEN', PChar('http://search.devexpress.com/'), nil, nil, SW_SHOW);
end;

procedure TfmMailClientDemoMain.lblDxOnWebClick(Sender: TObject);
begin
  Browse(spStart);
end;

procedure TfmMailClientDemoMain.lblProductsClick(Sender: TObject);
begin
  Browse(spProducts);
end;

procedure TfmMailClientDemoMain.lblDownloadsClick(Sender: TObject);
begin
  Browse(spDownloads);
end;

procedure TfmMailClientDemoMain.lblClientCenterClick(Sender: TObject);
begin
  Browse(spMyDX);
end;

procedure TfmMailClientDemoMain.bbTouchModeClick(Sender: TObject);
begin
  SkinController.TouchMode := bbTouchMode.Down;
end;

procedure TfmMailClientDemoMain.bDevModeClick(Sender: TObject);
begin
end;

procedure TfmMailClientDemoMain.bExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfmMailClientDemoMain.bliFormCornersClick(Sender: TObject);
begin
  SkinController.FormCorners := TdxFormCorners(bliFormCorners.ItemIndex);
end;

initialization
  TdxVisualRefinements.ApplyLightStyle(True);
  TdxVisualRefinements.Padding := TRect.Create(2, 2, 2, 2);

end.


