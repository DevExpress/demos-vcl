unit dxDemoUtils;

{$I cxVer.inc}
{$I dxDemoSkins.inc}

interface

uses
{$IFNDEF USESKINRESFILE}
  dxSkinWXI,
{$ENDIF}
  System.UITypes, System.Classes, System.SysUtils, System.Variants, System.Math, System.Types, System.Generics.Collections,
  Data.DB,
  Winapi.Windows, Winapi.ShellAPI, Winapi.Messages,
  Vcl.Graphics, Vcl.Forms, Vcl.Dialogs,
  dxCore, cxClasses, dxBar, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxNavBar, dxNavBarConsts, dxRibbon, dxSkinsForm, dxSkinsDefaultPainters, dxSkinsLookAndFeelPainter, dxSkinsStrs,
  System.IniFiles, dxRibbonBackstageViewGalleryControl, dxGalleryControl, dxBarApplicationMenu, dxSkinChooserGallery,
  dxRibbonGallery, cxGeometry, dxOfficeSearchBox, cxBarEditItem, cxControls, dxGDIPlusClasses, dxAnimation, dxRibbonForm;

const
  UM_CUSTOMAFTERSHOW = WM_USER + 100;

  sdxFirstSelectedSkinName = 'WXI';

  dxStartURL = 'http://www.devexpress.com/';
  dxDownloadURL = 'Downloads';
  dxSupportURL = 'Support/Center';
  dxProductsURL: string = 'Products/VCL/';
  dxMyDXURL = 'ClientCenter';
  dxMegaDemoProductIndex: Integer = -1;

  // Product features relative paths
  dxBarsPath = 'ExBars';
  dxRibbonPath = 'ExBars/Ribbon.xml';
  dxDockingPath = 'ExBars/DockingLib.xml';
  dxDBTreeViewPath = 'ExDBTree';
  dxFlowChartPath = 'ExFlowChart';
  dxGridPath = 'ExQuantumGrid';
  dxLayoutControlPath = 'ExLayoutControl';
  dxLocalizerPath = 'Subscription/WhatsNewBuild40/index.xml#autolist1';
  dxMasterViewPath = 'ExMasterView';
  dxNavBarPath = 'ExNavBar';
  dxOrgChartPath = 'ExOrgChart';
  dxPivotGridPath = 'ExPivotGrid';
  dxPrintingSystemPath = 'ExPrintingSystem';
  dxSchedulerPath = 'ExScheduler';
  dxSkinsPath = 'ExSkins';
  dxSpellCheckerPath = 'ExSpellChecker';
  dxSpreadSheetPath = 'ExSpreadSheet';
  dxTreeListPath = 'ExQuantumTreeList';
  dxVerticalGridPath = 'ExVerticalGrid';
  dxTileControlPath = 'ExTileControl';
  dxSpreadSheet2Path = 'ExSpreadSheet';
  dxMapControlPath = 'ExMapControl';
  dxGaugeControlPath = 'ExGauges';
  dxRichEditControlPath = 'Rich_Editor';
  dxPDFViewerPath = 'PDFViewer';
  dxEditorsPath = 'ExEditors';
  dxEMFPath = '#Pricing';
  dxWizardControlPath = 'ExWizardControl';
  dxCloudStoragePath = 'CloudStorage';
  dxGanttControlPath = 'GanttControl';
  dxChartControlPath = 'ChartControl';
  dxReportsPath = 'Reports';
  dxDashboardPath = 'Dashboards';

  // Product names
  dxBarsProductName = 'ExpressBars';
  dxRibbonProductName = 'ExpressRibbon';
  dxDockingProductName = 'ExpressDocking';
  dxDBTreeViewProductName = 'ExpressDBTreeView';
  dxFlowChartProductName = 'ExpressFlowChart';
  dxGridProductName = 'ExpressQuantumGrid';
  dxLayoutControlProductName = 'ExpressLayoutControl';
  dxLocalizerProductName = 'ExpressLocalizer';
  dxMasterViewProductName = 'ExpressMasterView';
  dxNavBarProductName = 'ExpressNavBar';
  dxOrgChartProductName = 'ExpressOrgChart';
  dxPivotGridProductName = 'ExpressPivotGrid';
  dxPrintingSystemProductName = 'ExpressPrintingSystem';
  dxSchedulerProductName = 'ExpressScheduler';
  dxSkinsProductName = 'ExpressSkinsLibrary';
  dxSpellCheckerProductName = 'ExpressSpellChecker';
  dxSpreadSheetProductName = 'ExpressSpreadSheet';
  dxTreeListProductName = 'ExpressQuantumTreeList';
  dxVerticalGridProductName = 'ExpressVerticalGrid';
  dxTileControlProductName = 'ExpressTileControl';
  dxSpreadSheet2ProductName = 'ExpressSpreadSheet';
  dxMapControlProductName = 'ExpressMapControl';
  dxGaugeControlProductName = 'ExpressGaugeControl';
  dxRichEditControlProductName = 'ExpressRichEditControl';
  dxPDFViewerProductName = 'ExpressPDFViewer';
  dxEditorsName = 'ExpressEditors';
  dxEMFName = 'ExpressEntityMappingFramework';
  dxWizardControlName = 'ExpressWizardControl';
  dxCloudStorageName = 'Cloud Data Access';
  dxGanttControlProductName = 'ExpressGanttControl';
  dxChartControlName = 'ExpressChartControl';
  dxReportName = 'ExpressReports';
  dxDashboardName = 'ExpressDashboards';

  // Product indices
  dxBarsIndex =             0;
  dxRibbonIndex =           1;
  dxDockingIndex =          2;
  dxDBTreeViewIndex =       3;
  dxFlowChartIndex =        4;
  dxGridIndex =             5;
  dxLayoutControlIndex =    6;
  dxLocalizerIndex =        7;
  dxMasterViewIndex =       8;
  dxNavBarIndex =           9;
  dxOrgChartIndex =        10;
  dxPivotGridIndex =       11;
  dxPrintingSystemIndex =  12;
  dxSchedulerIndex =       13;
  dxSkinsIndex =           14;
  dxSpellCheckerIndex =    15;
  dxSpreadSheetIndex =     16;
  dxTreeListIndex =        17;
  dxVerticalGridIndex =    18;
  dxTileControlIndex =     19;
  dxSpreadSheet2Index =    20;
  dxMapControlIndex =      21;
  dxGaugeControlIndex =    22;
  dxRichEditControlIndex = 23;
  dxPDFViewerIndex       = 24;
  dxEditorsIndex         = 25;
  dxEMFIndex             = 26;
  dxWizardControlIndex   = 27;
  dxCloudStorageIndex    = 28;
  dxGanttControlIndex    = 29;
  dxChartControlIndex    = 30;
  dxReportsIndex         = 31;
  dxDashboardsIndex      = 32;
  dxLastProductIndex     = dxDashboardsIndex;

  dxProductNames: array [0..dxLastProductIndex] of string = (
    dxBarsProductName, dxRibbonProductName, dxDockingProductName, dxDBTreeViewProductName,
    dxFlowChartProductName, dxGridProductName, dxLayoutControlProductName,
    dxLocalizerProductName, dxMasterViewProductName, dxNavBarProductName,
    dxOrgChartProductName, dxPivotGridProductName, dxPrintingSystemProductName,
    dxSchedulerProductName, dxSkinsProductName, dxSpellCheckerProductName,
    dxSpreadSheetProductName, dxTreeListProductName, dxVerticalGridProductName,
    dxTileControlProductName, dxSpreadSheet2ProductName, dxMapControlProductName,
    dxGaugeControlProductName, dxRichEditControlProductName, dxPDFViewerProductName,
    dxEditorsName, dxEMFName, dxWizardControlName, dxCloudStorageName, dxGanttControlProductName, dxChartControlName,
    dxReportName, dxDashboardName);

  dxProductRelativeURLs: array [0..dxLastProductIndex] of string = (
    dxBarsPath, dxRibbonPath, dxDockingPath, dxDBTreeViewPath, dxFlowChartPath,
    dxGridPath, dxLayoutControlPath, dxLocalizerPath, dxMasterViewPath, dxNavBarPath,
    dxOrgChartPath, dxPivotGridPath, dxPrintingSystemPath, dxSchedulerPath, dxSkinsPath,
    dxSpellCheckerPath, dxSpreadSheetPath, dxTreeListPath, dxVerticalGridPath,
    dxTileControlPath, dxSpreadSheet2Path, dxMapControlPath, dxGaugeControlPath,
    dxRichEditControlPath, dxPDFViewerPath, dxEditorsPath, dxEMFPath, dxWizardControlPath, dxCloudStoragePath,
    dxGanttControlPath, dxChartControlPath, dxReportsPath, dxDashboardPath);

  ThereIsNoMDACMessage =
    'Unable to execute this application. You do not have ' +
    'the most recent version of MDAC and Jet 4 installed. ' +
    'Please visit microsoft.com to obtain the most recent libraries.';

  sdxExpressPrintingMessage = 'The ' + dxPrintingSystemProductName + ' allows you to render and ' +
    'print the contents of the %0:s, as well as a number of' +
    ' other Developer Express controls. This component library is not part of ' +
    'the %0:s Suite and can be acquired separately via our site at: www.devexpress.com.';

resourcestring
  sHTMLFile = 'Export to &HTML';
  sHTMLFileDescription = 'Web Page';
  sXLSFile = 'Export to X&LS';
  sXLSFileDescription = 'Microsoft Excel 97-2003';
  sXLSXFile = 'Export to XL&SX';
  sXLSXFileDescription = 'Microsoft Excel 2007 or later';
  sXMLFile = 'Export to &XML';
  sXMLFileDescription = 'XML File';
  sPDFFile = 'Export to &PDF';
  sPDFFileDescription = 'Adobe Portable Document Format';
  sTextFile = 'Export to &Text File';
  sTextFileDescription = 'Plain Text';
  sDOCFile = 'Export to &DOC';
  sDOCFileDescription = 'Microsoft Word 97-2003';
  sDOCXFile = 'Export to DO&CX';
  sDOCXFileDescription = 'Microsoft Word 2007 or later';
  sRTFFile = 'Export to &RTF';
  sRTFFileDescription = 'Rich Text Format File';
  sSVGFile = 'Export to &SVG';
  sSVGFileDescription = 'Scalable Vector Graphics';
  sRasterImage = 'Export to &Image';
  sRasterImageDescription = 'Raster Image Formats';
  sMetafile = 'Export to &Metafile';
  sMetafileDescription = 'Windows Metafile Formats';

type
  dxSitePage = (spFeatures, spDownloads, spSupport, spStart, spProducts, spMyDX);
  TSupportedExportType = (exHTML, exXML, exExcel97, exExcel, exPDF, exText, exDOC, exDOCX, exRTF,
    exSVG, exRasterImage, exMetaFile);
  TSupportedExportTypes = set of TSupportedExportType;
  TExportEvent = procedure(AExportType: TSupportedExportType; ADataOnly: Boolean) of object;

const
  dxExportDataOnlyFirstTypeIndex = Ord(High(TSupportedExportType)) + 1;

  SupportedExportNames: array [TSupportedExportType] of Pointer = (@sHTMLFile,
    @sXMLFile, @sXLSFile, @sXLSXFile, @sPDFFile, @sTextFile, @sDOCFile, @sDOCXFile, @sRTFFile,
    @sSVGFile, @sRasterImage, @sMetaFile);
  SupportedExportDescriptions: array [TSupportedExportType] of Pointer =
    (@sHTMLFileDescription, @sXMLFileDescription, @sXLSFileDescription, @sXLSXFileDescription,
    @sPDFFileDescription, @sTextFileDescription, @sDOCFileDescription, @sDOCXFileDescription,
    @sRTFFileDescription, @sSVGFileDescription, @sRasterImageDescription, @sMetafileDescription);
  SupportedExportImageNames: array [TSupportedExportType] of string =
    ('ExportToHTML', 'ExportToXML', 'ExportToXLS', 'ExportToXLSX', 'ExportToPDF', 'ExportToText',
     'ExportToDOC', 'ExportToDOCX', 'ExportToRTF', 'ExportToSVG', 'ExportToRasterImage', 'ExportToMetafile');
  SupportedExportHints: array [TSupportedExportType] of string =
    ('', '', 'Export to Excel 97-2003', 'Export to Excel 2007 or later',
     '', 'Export to Plain Text', 'Export to Word 97-2003', 'Export to Word 2007 or later',
     '', '', '', '');
  SupportedExportExtensions: array [TSupportedExportType] of string =
    ('.html', '.xml', '.xls', '.xlsx', '.pdf', '.txt', '.doc', '.docx', '.rtf',
     '.svg', '.bmp', '.emf');
  SupportedExportSaveDialogFilters: array [TSupportedExportType] of string = (
    'HTML Files (*.html)|*.html',
    'XML Files (*.xml)|*.xml',
    'Microsoft Excel 97-2003 Files (*.xls)|*.xls',
    'Microsoft Excel 2007 (or later) Files (*.xlsx)|*.xlsx',
    'PDF Documents (*.pdf)|*.pdf;',
    'Plain Text Files (*.txt)|*.txt',
    'Microsoft Word 97-2003 Files (*.doc)|*.doc',
    'Microsoft Word 2007 (or later) Files (*.docx)|*.docx',
    'Rich Text Format Files (*.rtf)|*.rtf',
    'Scalable Vector Graphics (*.svg)|*.svg',
    'Images (*.bmp;*.jpeg;*.jpg;*.png;*.tiff;*.tif;*.gif)|*.bmp;*.jpeg;*.jpg;*.png;*.tiff;*.tif;*.gif',
    'Windows Metafile (*.emf;*.wmf)|*.emf;*.wmf');

type

  { TdxBarMenuItemClickController }

  TdxBarMenuItemClickController = class
  protected
    function AddButton(ABarManager: TdxBarManager; ASubItem: TdxBarSubItem;
      AController: TdxBarMenuItemClickController; ACaption: string; ATag: Integer;
      AHasSeparator: Boolean = False): TdxBarButton; virtual;
    procedure MenuItemClickHandler(Sender: TObject); virtual; abstract;
  end;

  { TRecentDocumentsController }

  TRecentDocumentsController = class(TObject)
  protected
    procedure DoLoad(AConfig: TCustomIniFile); virtual;
    procedure DoSave(AConfig: TCustomIniFile); virtual;
  public
    procedure Add(const AFileName: string); virtual;
    procedure SetCurrentFileName(const AFileName: string); virtual;
    //
    procedure LoadFromIniFile(const AFileName: string);
    procedure SaveToIniFile(const AFileName: string);
  end;

  { TdxRibbonRecentDocumentsController }

  TdxRibbonRecentDocumentsController = class(TRecentDocumentsController)
  private
    FApplicationMenu: TdxBarApplicationMenu;
    FCurrentFolder: TdxRibbonBackstageViewGalleryControl;
    FRecentDocuments: TdxRibbonBackstageViewGalleryControl;
    FRecentPaths: TdxRibbonBackstageViewGalleryControl;

    function GetItemByValue(AGroup: TdxRibbonBackstageViewGalleryGroup; const AValue: string): TdxRibbonBackstageViewGalleryItem;
    function InternalAdd(AGroup: TdxRibbonBackstageViewGalleryGroup; const AValue: string): TdxRibbonBackstageViewGalleryItem;
    procedure InternalLoad(AGroup: TdxRibbonBackstageViewGalleryGroup; AIniFile: TCustomIniFile; const ASection: string);
    procedure InternalSave(AGroup: TdxRibbonBackstageViewGalleryGroup; AIniFile: TCustomIniFile; const ASection: string);
    procedure UpdateApplicationMenu;
  protected
    procedure DoLoad(AConfig: TCustomIniFile); override;
    procedure DoSave(AConfig: TCustomIniFile); override;
  public
    constructor Create(
      ARecentDocuments, ARecentPaths, ACurrentFolder: TdxRibbonBackstageViewGalleryControl;
      AApplicationMenu: TdxBarApplicationMenu = nil);
    procedure Add(const AFileName: string); override;
    procedure SetCurrentFileName(const AFileName: string); override;
  end;

  TdxRibbonSearchToolbarController = class
  protected class var
    FInstance: TdxRibbonSearchToolbarController;
  strict private
    FSearchToolbar: TdxBar;
    FRibbon: TdxRibbon;
    FOwnToolbar: Boolean;
    function GetSearchBoxItem: TcxBarEditItem;
    function GetSearchBoxProperties: TdxOfficeSearchBoxProperties;
  protected
    procedure FreeToolbar;
    procedure BuildToolBar;
    procedure SetupSearchBoxProperties;
    class function CanCreateWithExistingToolbar(ARibbon: TdxRibbon): Boolean;
    class function CanCreateWithOwnToolbar(ARibbon: TdxRibbon): Boolean;
  public
    constructor CreateWithExistingToolbar(ARibbon: TdxRibbon; ASearchToolbar: TdxBar; ANeedSetupSearchBoxProperties: Boolean = False);
    constructor CreateWithOwnToolbar(ARibbon: TdxRibbon);
    destructor Destroy; override;
    class procedure Finalize;
    class function TryCreateWithOwnToolbar(ARibbon: TdxRibbon): Boolean;
    class function TryCreateWithExistingToolbar(ARibbon: TdxRibbon; ANeedSetupSearchBoxProperties: Boolean = False): Boolean;
    class procedure LoadGlyph(AProperties: TdxOfficeSearchBoxProperties);
    class function  GetNullstring: string;
    class procedure SetDefaultNullstringToInstance;
    function IsSearchToolbarInCaption: Boolean;
    property OwnToolbar: Boolean read FOwnToolbar;
    property SearchToolbar: TdxBar read FSearchToolbar;
    property SearchBoxItem: TcxBarEditItem read GetSearchBoxItem;
    property SearchBoxProperties: TdxOfficeSearchBoxProperties read GetSearchBoxProperties;
    class property Instance: TdxRibbonSearchToolbarController read FInstance;
  end;

function HasJet: Boolean;
procedure ActualizeDateTimesFields(ADataSet: TDataSet; const AParams: array of Variant);
function AddLargeButton(AItemLinks: TdxBarItemLinks; ACaption: string;
  ATag: Integer; AUseSVGImages: Boolean; AGlyphName: string = ''; const ALargeGlyphName: string = '';
  const ADescription: string = ''; AHasSeparator: Boolean = False): TdxBarLargeButton;
function AddSubItem(AItemLinks: TdxBarItemLinks; ACaption: string;
  ATag: Integer; AUseSVGImages: Boolean; AGlyphName: string = ''; const ALargeGlyphName: string = '';
  const ADescription: string = ''; AHasSeparator: Boolean = False): TdxBarSubItem;
procedure InitSitePagesURLs;
procedure Browse(ASitePage: dxSitePage);
procedure CreateExportMenuItems(ABarManager: TdxBarManager; ABar: TdxBar; ASubItem: TdxBarSubItem;
  AExportMethod: TExportEvent; ASupportedExport: TList<TSupportedExportType>; ADataOnlySupportedExport: TSupportedExportTypes;
  AGallery: TdxRibbonBackstageViewGalleryControl; out AGalleryItemClickHelper: TNotifyEvent; AUseSVGImages: Boolean = False);
procedure CreateHelpMenuItems(ABarManager: TdxBarManager; ARibbon: TdxRibbon; ABar: TdxBar; AUseSVGImages: Boolean = False); overload;
procedure CreateHelpMenuItems(ABarManager: TdxBarManager; AHelpSubItem: TdxBarSubItem); overload;
procedure CreateSkinsMenuItems(ABarManager: TdxBarManager; AViewSubItem: TdxBarSubItem;
  ASkinController: TdxSkinController; ANavBar: TdxNavBar = nil; AUseSVGImages: Boolean = False); overload;
procedure CreateSkinsMenuItems(ABarManager: TdxBarManager; ABar: TdxBar; ASkinController: TdxSkinController;
  ARibbon: TdxRibbon; AUseSVGImages: Boolean = False); overload;
procedure CreateSkinsCompactModeButton(ABar: TdxBar; AAction: TBasicAction);
function CreateSkinSelector(ABar: TdxBar): TdxRibbonSkinSelector;
function GetCaptionWithoutAmpersand(const ACaption: string): string;
function GetSkinResFileName: string;
procedure SetNavBarStyle(ANavBar: TdxNavBar; ASkinController: TdxSkinController);
procedure ToggleBetweenCheckBoxesAndToggleSwitches(AOwner: TComponent; const AActualTouchMode: Boolean);
procedure ShowExpressPrintingMessage;
procedure PopulateSkinColorPalettes(AList: TdxBarListItem);
function GetRibbonGalleryScaleFactor(ARibbonGallery: TdxRibbonGalleryItem): TdxScaleFactor;

var
  SitePageURLsInitialized: Boolean = False;
  SitePageURLs: array [dxSitePage] of string;

implementation

{$R *.res}

uses
  System.StrUtils, System.Win.Registry, Vcl.Controls, dxAboutDemo, dxRibbonSkins,
  dxToggleSwitch, cxCheckBox, dxLayoutContainer, dxSkinInfo, dxMessageDialog,
  dxGDIPlusAPI, dxDPIAwareUtils, dxSkinNames, dxThreading, dxStringHelper;

const
  dxSkinMenuCategory = 3;

type
  TdxBarItemLinksAccess = class(TdxBarItemLinks);
  TdxRibbonGalleryItemAccess = class(TdxRibbonGalleryItem);
  TcxCustomControlAccess = class(TcxCustomControl);
  TdxOfficeSearchBoxPropertiesAccess = class(TdxOfficeSearchBoxProperties);

type

  { TdxHelpMenuClickController }

  TdxHelpMenuClickController = class(TdxBarMenuItemClickController)
  protected
    procedure MenuItemClickHandler(Sender: TObject); override;
  end;

  { TdxRibbonHelpMenuClickController }

  TdxRibbonHelpMenuClickController = class(TdxHelpMenuClickController)
  protected
    procedure RibbonHelpButtonHandler(ASender: TdxCustomRibbon);
  end;

  { TdxExportMenuItemClickController }

  TdxExportMenuItemClickController = class(TdxBarMenuItemClickController)
  private
    FOnExport: TExportEvent;
  protected
    procedure MenuItemClickHandler(Sender: TObject); override;
  end;

  { TdxSkinMenuController }

  TdxSkinMenuController = class(TdxBarMenuItemClickController)
  private
    FBarManager: TdxBarManager;
    FNavBar: TdxNavBar;
    FSkinChooser: TdxSkinChooserGalleryItem;
    FSkinController: TdxSkinController;
    FSkinPaletteChooser: TdxBarListItem;
    FSkinPaletteChooserSubItem: TdxBarSubItem;
    FUseSVGImages: Boolean;

    procedure InternalBuildMenu(ALinks: TdxBarItemLinks);
  protected
    procedure MenuItemClickHandler(Sender: TObject); override;
    procedure SkinChooserClickHandler(Sender: TObject; const ASkinName: string);
    procedure SkinChooserPopulateHandler(Sender: TObject);
    procedure SkinPaletteChooserClickHandler(Sender: TObject);
    procedure SkinPaletteChooserGetDataHandler(Sender: TObject);

    procedure UpdateStyle; virtual;
  public
    procedure BuildMenu(AViewSubItem: TdxBarSubItem);
  end;

  { TdxRibbonSkinMenuController }

  TdxRibbonSkinMenuController = class(TdxSkinMenuController)
  private
    FRibbon: TdxRibbon;
  protected
    procedure UpdateStyle; override;
  public
    procedure BuildMenuEx(ABar: TdxBar);
  end;

var
  FExportMenuItemClickController: TdxExportMenuItemClickController;
  FExpressPrintingMessageWasShown: Boolean;
  FHelpClickController: TdxHelpMenuClickController;
  FRibbonHelpClickController: TdxRibbonHelpMenuClickController;
  FSkinMenuController: TdxSkinMenuController;
  FSkinResFileName: string = '';
  dxMegaDemoFeaturesItemCaption: string = '&Features';
  dxMegaDemoGettingStartedCaption: string = 'Getting Started';
  dxMegaDemoGetFreeSupportCaption: string = 'Get Free Support';
  dxMegaDemoBuyNowCaption: string = 'Buy Now';


function GetMegaDemosFolder: string;
var
  ARegistry: TRegistry;
begin
  Result := '';
  ARegistry := TRegistry.Create;
  try
    ARegistry.Access := ARegistry.Access or KEY_WOW64_32KEY;
    ARegistry.RootKey := HKEY_LOCAL_MACHINE;
    if ARegistry.OpenKeyReadOnly('SOFTWARE\DevExpress\VCL Demos') then
      Result := ARegistry.ReadString('Path') + 'MegaDemos\';
  finally
    ARegistry.Free;
  end;
end;

procedure FindSkinResFile;
const
  SkinsResFileName = 'AllSkins.skinres';
begin
  FSkinResFileName := ExtractFilePath(Application.ExeName) + SkinsResFileName;
  if not FileExists(FSkinResFileName) then
  begin
    FSkinResFileName := GetMegaDemosFolder + 'Binary Skin Files\' + SkinsResFileName;
    if not FileExists(FSkinResFileName) then
      FSkinResFileName := '';
  end;
end;

function HasJet: Boolean;

  function GetMajorVersion(const ASt: string): Integer;
  var
    ANumbers: string;
    I: Integer;
  begin
    Result := 0;
    if ASt <> '' then
    begin
      ANumbers := '';
      I := 1;
      while (I <= Length(ASt)) and dxCharInSet(ASt[I], ['0' .. '9']) do
      begin
        ANumbers := ANumbers + ASt[I];
        Inc(I);
      end;
      if ANumbers <> '' then
        Result := StrToInt(ANumbers);
    end;
  end;

var
  ARegistry: TRegistry;
  AKeys: TStrings;
  I: Integer;
  AMajorVersion: Integer;
begin
  Result := False;
  ARegistry := TRegistry.Create;
  AKeys := TStringList.Create;
  try
    ARegistry.RootKey := HKEY_LOCAL_MACHINE;
    if ARegistry.OpenKeyReadOnly('\SOFTWARE\Microsoft\Jet') then
    begin
      ARegistry.GetKeyNames(AKeys);
      for I := 0 to AKeys.Count - 1 do
      begin
        AMajorVersion := GetMajorVersion(AKeys[I]);
        if (AMajorVersion >= 4) then
        begin
          Result := True;
          break;
        end;
      end;
    end;
  finally
    AKeys.Free;
    ARegistry.Free;
  end;
end;

procedure ShowExpressPrintingMessage;
begin
  if not FExpressPrintingMessageWasShown then
  begin
    dxMessageDlg(Format(sdxExpressPrintingMessage, [dxProductNames[dxMegaDemoProductIndex]]), dxPrintingSystemProductName, TMsgDlgType.mtInformation, [mbOK]);
    FExpressPrintingMessageWasShown := True;
  end;
end;

procedure PopulateSkinColorPalettes(AList: TdxBarListItem);
var
  AData: TdxSkinInfo;
  AItemIndex: Integer;
begin
  TdxSkinController.PopulateSkinColorPalettes(AList.Items);
  if RootLookAndFeel.Painter.GetPainterData(AData) then
  begin
    AItemIndex := AList.Items.IndexOf(AData.Skin.ActiveColorPaletteName);
    if AItemIndex < 0 then
      AItemIndex := AList.Items.IndexOf(sdxDefaultColorPaletteName);
    AList.ItemIndex := AItemIndex;
  end;
end;

procedure ActualizeDateTimesFields(ADataSet: TDataSet; const AParams: array of Variant);
var
  I, ACount, APeriodSinceOfNewMaxDateToToday: Integer;
  AFieldName: string;
  AMaxDates: array of TDateTime;
begin
  ACount := Length(AParams) div 2;
  SetLength(AMaxDates, ACount);
  for I := 0 to ACount - 1 do
    AMaxDates[I] := 0;

  ADataSet.DisableControls;
  try
    ADataSet.First;
    while not ADataSet.Eof do
    begin
      for I := 0 to ACount - 1 do
      begin
        AFieldName := VarToStr(AParams[2 * I]);
        if not VarIsNull(ADataSet.FieldByName(AFieldName).AsVariant) then
          AMaxDates[I] := Max(AMaxDates[I], ADataSet.FieldByName(AFieldName).AsDateTime);
      end;
      ADataSet.Next;
    end;

    ADataSet.First;
    while not ADataSet.Eof do
    begin
      ADataSet.Edit;
      for I := 0 to ACount - 1 do
      begin
        AFieldName := VarToStr(AParams[2 * I]);
        APeriodSinceOfNewMaxDateToToday := AParams[2 * I + 1];
        if (AMaxDates[I] > 0) and not VarIsNull(ADataSet.FieldByName(AFieldName).AsVariant)  then
          ADataSet.FieldByName(AFieldName).AsDateTime := ADataSet.FieldByName(AFieldName).AsDateTime + Date - APeriodSinceOfNewMaxDateToToday - AMaxDates[I];
      end;
      ADataSet.Post;
      ADataSet.Next;
    end;
    ADataSet.First;
  finally
    ADataSet.EnableControls;
  end;
end;

procedure InitSitePagesURLs;
begin
  SitePageURLs[spFeatures] := dxStartURL + dxProductsURL + dxProductRelativeURLs[dxMegaDemoProductIndex];
  SitePageURLs[spDownloads] := dxStartURL + dxDownloadURL;
  SitePageURLs[spSupport] := dxStartURL + dxSupportURL;
  SitePageURLs[spStart] := dxStartURL;
  SitePageURLs[spProducts] := dxStartURL + dxProductsURL;
  SitePageURLs[spMyDX] := dxStartURL + dxMyDXURL;
  SitePageURLsInitialized := True;
end;

procedure Browse(ASitePage: dxSitePage);
var
  AURL: string;
begin
  if not SitePageURLsInitialized then
    InitSitePagesURLs;
  AURL := SitePageURLs[ASitePage];
  ShellExecute(0, 'OPEN', PChar(AURL), nil, nil, SW_SHOW);
end;

function AddButton(ABarManager: TdxBarManager; ASubItem: TdxBarSubItem;
  AController: TdxBarMenuItemClickController; ACaption: string; ATag: Integer;
  AHasSeparator: Boolean = False): TdxBarButton;
begin
  Result := ABarManager.AddButton;
  with Result do
  begin
    Caption := ACaption;
    OnClick := AController.MenuItemClickHandler;
    Tag := ATag;
  end;
  ASubItem.ItemLinks.Add(Result).BeginGroup := AHasSeparator;
end;

function GetImageSuffix(AUseSVGImages: Boolean; ALargeImage: Boolean): string;
begin
  if AUseSVGImages then
    Result := ''
  else
    if ALargeImage then
      Result := '_32X32'
    else
      Result := '_16X16';
end;

function GetImageResourceType(AUseSVGImages: Boolean): string;
begin
  if AUseSVGImages then
    Result := 'SVG'
  else
    Result := 'PNG';
end;

procedure InitBarItem(ABarItem: TdxBarItem; AItemLinks: TdxBarItemLinks; ACaption: string;
  ATag: Integer; AUseSVGImages: Boolean; AGlyphName: string = ''; const ALargeGlyphName: string = '';
  const ADescription: string = ''; AHasSeparator: Boolean = False);
var
  AResType: PWideChar;
begin
  with ABarItem do
  begin
    Caption := ACaption;
    Description := ADescription;
    AResType := PWideChar(GetImageResourceType(AUseSVGImages));
    if AGlyphName <> '' then
    begin
      if AUseSVGImages then
      begin
        Glyph.SourceHeight := 16;
        Glyph.SourceWidth := 16;
      end;
      Glyph.LoadFromResource(HInstance, AGlyphName, AResType);
    end;
    if ALargeGlyphName <> '' then
      LargeGlyph.LoadFromResource(HInstance, ALargeGlyphName, AResType);
    Tag := ATag;
  end;
  AItemLinks.Add(ABarItem).BeginGroup := AHasSeparator;
end;

function AddSubItem(AItemLinks: TdxBarItemLinks; ACaption: string;
  ATag: Integer; AUseSVGImages: Boolean; AGlyphName: string = ''; const ALargeGlyphName: string = '';
  const ADescription: string = ''; AHasSeparator: Boolean = False): TdxBarSubItem;
begin
  Result := AItemLinks.BarManager.AddItem(TdxBarSubItem) as TdxBarSubItem;
  InitBarItem(Result, AItemLinks, ACaption, ATag, AUseSVGImages, AGlyphName, ALargeGlyphName, ADescription, AHasSeparator);
end;

function AddLargeButton(AItemLinks: TdxBarItemLinks; ACaption: string;
  ATag: Integer; AUseSVGImages: Boolean; AGlyphName: string = ''; const ALargeGlyphName: string = '';
  const ADescription: string = ''; AHasSeparator: Boolean = False): TdxBarLargeButton;
begin
  Result := AItemLinks.BarManager.AddItem(TdxBarLargeButton) as TdxBarLargeButton;
  InitBarItem(Result, AItemLinks, ACaption, ATag, AUseSVGImages, AGlyphName, ALargeGlyphName, ADescription, AHasSeparator);
end;

procedure CreateExportMenuItems(ABarManager: TdxBarManager; ABar: TdxBar; ASubItem: TdxBarSubItem;
  AExportMethod: TExportEvent; ASupportedExport: TList<TSupportedExportType>; ADataOnlySupportedExport: TSupportedExportTypes;
  AGallery: TdxRibbonBackstageViewGalleryControl; out AGalleryItemClickHelper: TNotifyEvent; AUseSVGImages: Boolean = False);

  procedure AddGalleryItem(AGroup: TdxRibbonBackstageViewGalleryGroup; AButton: TdxBarLargeButton; const AImageName: string);
  var
    AItem: TdxRibbonBackstageViewGalleryItem;
  begin
    if AGroup = nil then
    begin
      AGroup := AGallery.Gallery.Groups.Add;
      AGroup.ShowCaption := False;
    end;
    AItem := AGroup.Items.Add;
    AItem.Caption := GetCaptionWithoutAmpersand(AButton.Caption);
    AItem.Glyph.LoadFromResource(HInstance, AImageName, PWideChar(GetImageResourceType(AUseSVGImages)));
    AItem.Tag := AButton.Tag;
  end;

var
  I: Integer;
  AExportType: TSupportedExportType;
  AButton: TdxBarLargeButton;
  ABarSubItem: TdxBarSubItem;
  ALinks1, ALinks2: TdxBarItemLinks;
  AGroup: TdxRibbonBackstageViewGalleryGroup;
  ALargeImageSuffix, ASmallImageSuffix: string;
begin
  FExportMenuItemClickController := TdxExportMenuItemClickController.Create;
  FExportMenuItemClickController.FOnExport := AExportMethod;
  ALargeImageSuffix := GetImageSuffix(AUseSVGImages, True);
  ASmallImageSuffix := GetImageSuffix(AUseSVGImages, False);
  if (ABar <> nil) or (ASubItem <> nil) then
  begin
    ALinks2 := nil;
    if ABar <> nil then
    begin
      ALinks1 := ABar.ItemLinks;
      if ASubItem <> nil then
        ALinks2 := ASubItem.ItemLinks;
    end
    else
      ALinks1 := ASubItem.ItemLinks;
    for I := 0 to ASupportedExport.Count - 1 do
    begin
      AExportType := ASupportedExport[I];
      if AExportType in ADataOnlySupportedExport then
      begin
        ABarSubItem := AddSubItem(ALinks1, cxGetResourceString(SupportedExportNames[AExportType]), Ord(I), AUseSVGImages,
          SupportedExportImageNames[AExportType] + ASmallImageSuffix, SupportedExportImageNames[AExportType] + ALargeImageSuffix,
          cxGetResourceString(SupportedExportDescriptions[AExportType]));
        AGroup := nil;
        if AGallery <> nil then
        begin
          AGroup := AGallery.Gallery.Groups.Add;
          AGroup.Caption := GetCaptionWithoutAmpersand(ABarSubItem.Caption);
          AGalleryItemClickHelper := FExportMenuItemClickController.MenuItemClickHandler;
        end;
        if ALinks2 <> nil then
           ALinks2.Add(ABarSubItem);
        AButton := AddLargeButton(ABarSubItem.ItemLinks, 'Full', Ord(AExportType), AUseSVGImages);
        AButton.OnClick := FExportMenuItemClickController.MenuItemClickHandler;
        if AGallery <> nil then
          AddGalleryItem(AGroup, AButton, SupportedExportImageNames[AExportType] + ALargeImageSuffix);
        AButton := AddLargeButton(ABarSubItem.ItemLinks, 'Data Only', dxExportDataOnlyFirstTypeIndex + Ord(AExportType), AUseSVGImages);
        AButton.OnClick := FExportMenuItemClickController.MenuItemClickHandler;
        if AGallery <> nil then
          AddGalleryItem(AGroup, AButton, SupportedExportImageNames[AExportType] + ALargeImageSuffix);
      end
      else
      begin
        AButton := AddLargeButton(ALinks1, cxGetResourceString(SupportedExportNames[AExportType]), Ord(AExportType), AUseSVGImages,
          SupportedExportImageNames[AExportType] + ASmallImageSuffix,
          SupportedExportImageNames[AExportType] + ALargeImageSuffix, cxGetResourceString(SupportedExportDescriptions[AExportType]));
        if ALinks2 <> nil then
           ALinks2.Add(AButton);
        AButton.OnClick := FExportMenuItemClickController.MenuItemClickHandler;
        AButton.Hint := SupportedExportHints[AExportType];
        if AGallery <> nil then
        begin
          AddGalleryItem(nil, AButton, SupportedExportImageNames[AExportType] + ALargeImageSuffix);
          AGalleryItemClickHelper := FExportMenuItemClickController.MenuItemClickHandler;
        end;
      end;
    end;
  end;
end;

procedure CreateHelpMenuItems(ABarManager: TdxBarManager; ARibbon: TdxRibbon; ABar: TdxBar; AUseSVGImages: Boolean = False);
var
  AButton: TdxBarLargeButton;
  ALargeImageSuffix, ASmallImageSuffix: string;
begin
  FRibbonHelpClickController := TdxRibbonHelpMenuClickController.Create;
  ARibbon.OnHelpButtonClick := FRibbonHelpClickController.RibbonHelpButtonHandler;
  ALargeImageSuffix := GetImageSuffix(AUseSVGImages, True);
  ASmallImageSuffix := GetImageSuffix(AUseSVGImages, False);
  if AUseSVGImages then
  begin
    AButton := AddLargeButton(ABar.ItemLinks, dxMegaDemoGettingStartedCaption, Integer(spFeatures), True,
      'GETSTARTED', 'GETSTARTED');
    AButton.OnClick := FRibbonHelpClickController.MenuItemClickHandler;
    AButton := AddLargeButton(ABar.ItemLinks, dxMegaDemoGetFreeSupportCaption, Integer(spSupport), True,
      'GETSUPPORT', 'GETSUPPORT');
    AButton.OnClick := FRibbonHelpClickController.MenuItemClickHandler;
    AButton := AddLargeButton(ABar.ItemLinks, dxMegaDemoBuyNowCaption, Integer(spProducts), True,
      'BUYNOW', 'BUYNOW');
    AButton.OnClick := FRibbonHelpClickController.MenuItemClickHandler;
  end
  else
    if dxMegaDemoProductIndex > 0 then
    begin
      AButton := AddLargeButton(ABar.ItemLinks, dxProductNames[dxMegaDemoProductIndex] + ' ' +
        dxMegaDemoFeaturesItemCaption, 0, AUseSVGImages, 'Feature' + ASmallImageSuffix, 'Feature' + ALargeImageSuffix);
      AButton.OnClick := FRibbonHelpClickController.MenuItemClickHandler;
    end;
  AButton := AddLargeButton(ABar.ItemLinks, '&About', 6, AUseSVGImages, 'Index' + ASmallImageSuffix, 'Index' + ALargeImageSuffix);
  AButton.OnClick := FRibbonHelpClickController.MenuItemClickHandler;
end;

procedure CreateHelpMenuItems(ABarManager: TdxBarManager; AHelpSubItem: TdxBarSubItem);
begin
  FHelpClickController := TdxHelpMenuClickController.Create;
  AddButton(ABarManager, AHelpSubItem, FHelpClickController,
    dxProductNames[dxMegaDemoProductIndex] + ' ' + dxMegaDemoFeaturesItemCaption, 0);
  AddButton(ABarManager, AHelpSubItem, FHelpClickController,'&About', 6, True);
end;

procedure CreateSkinsMenuItems(ABarManager: TdxBarManager;
  AViewSubItem: TdxBarSubItem; ASkinController: TdxSkinController;
  ANavBar: TdxNavBar = nil; AUseSVGImages: Boolean = False);
begin
  FSkinMenuController := TdxSkinMenuController.Create;
  FSkinMenuController.FSkinController := ASkinController;
  FSkinMenuController.FBarManager := ABarManager;
  FSkinMenuController.FNavBar := ANavBar;
  FSkinMenuController.FUseSVGImages := AUseSVGImages;
  FSkinMenuController.BuildMenu(AViewSubItem);
end;

procedure CreateSkinsMenuItems(ABarManager: TdxBarManager; ABar: TdxBar;
  ASkinController: TdxSkinController; ARibbon: TdxRibbon; AUseSVGImages: Boolean = False);
begin
  CreateSkinSelector(ABar);
end;

procedure CreateSkinsCompactModeButton(ABar: TdxBar; AAction: TBasicAction);
var
  AButton: TdxBarLargeButton;
begin
  ABar.BarManager.BeginUpdate;
  try
    AButton := ABar.BarManager.AddItem(TdxBarLargeButton) as TdxBarLargeButton;
    AButton.ButtonStyle := bsChecked;
    AButton.Action := AAction;
    AButton.LargeGlyph.LoadFromResource(HInstance, 'COMPACTMODE', 'SVG');
    ABar.ItemLinks.Add(AButton);
  finally
    ABar.BarManager.EndUpdate(True);
  end;
end;

function CreateSkinSelector(ABar: TdxBar): TdxRibbonSkinSelector;
begin
  Result := TdxRibbonSkinSelector.CreateSkinSelector(ABar, GetSkinResFileName);
  Result.PaletteChooserOptions.InRibbon.ShowCurrentPalette := True;
end;

function GetCaptionWithoutAmpersand(const ACaption: string): string;
begin
  Result := TdxStringHelper.RemoveAmpersand(ACaption);
end;

function GetSkinResFileName: string;
begin
  Result := FSkinResFileName;
end;

procedure SetNavBarStyle(ANavBar: TdxNavBar; ASkinController: TdxSkinController);
begin
  if ASkinController.NativeStyle then
    if IsWinVista then
      ANavBar.View := dxNavBarVistaExplorerBarView
    else
      ANavBar.View := dxNavBarXPExplorerBarView
    else if ASkinController.UseSkins then
      ANavBar.View := dxNavBarAccordionView
    else
      case ASkinController.Kind of
        lfStandard, lfFlat:
          ANavBar.View := dxNavBarExplorerBarView;
        lfUltraFlat:
          ANavBar.View := dxNavBarUltraFlatExplorerView;
        lfOffice11:
          ANavBar.View := dxNavBarOffice11ExplorerBarView;
      end;
end;

procedure ToggleBetweenCheckBoxesAndToggleSwitches(AOwner: TComponent; const AActualTouchMode: Boolean);

  function IsExchangePossible(AControl: TControl): Boolean;
  begin
    Result := (AActualTouchMode and (AControl is TcxCheckBox) and (TcxCheckBox(AControl).Action <> nil)) or
      (not AActualTouchMode and (AControl is TdxToggleSwitch) and (TdxToggleSwitch(AControl).Action <> nil));
  end;

const
  AAlignment: array[Boolean] of TAlignment = (taRightJustify, taLeftJustify);
var
  I: Integer;
  ASourceSwitch, ANewSwitch: TcxCustomCheckBox;
  ASourceSwitches: TcxObjectList;
  ALayoutItem: TdxLayoutItem;
begin
  I := 0;
  ASourceSwitches := TcxObjectList.Create(True);
  try
    while I < AOwner.ComponentCount do
    begin
      if AOwner.Components[I] is TdxLayoutItem then
      begin
        ALayoutItem := TdxLayoutItem(AOwner.Components[I]);
        if (ALayoutItem.Control is TcxCustomCheckBox) and IsExchangePossible(ALayoutItem.Control) then
        begin
          if AActualTouchMode then
          begin
            ASourceSwitch := ALayoutItem.Control as TcxCheckBox;
            ANewSwitch := TdxToggleSwitch.Create(ASourceSwitch.Owner);
          end
          else
          begin
            ASourceSwitch := ALayoutItem.Control as TdxToggleSwitch;
            ANewSwitch := TcxCheckBox.Create(ASourceSwitch.Owner);
          end;
          ANewSwitch.Left := ASourceSwitch.Left;
          ANewSwitch.Top := ASourceSwitch.Top;
          ANewSwitch.Style.BorderColor := ASourceSwitch.Style.BorderColor;
          ANewSwitch.Style.BorderStyle := ASourceSwitch.Style.BorderStyle;
          ANewSwitch.Style.HotTrack := ASourceSwitch.Style.HotTrack;
          ANewSwitch.Style.TransparentBorder := ASourceSwitch.Style.TransparentBorder;
          ANewSwitch.TabOrder := ASourceSwitch.TabOrder;
          ANewSwitch.Transparent := ASourceSwitch.Transparent;
          ANewSwitch.Enabled := ASourceSwitch.Enabled;
          ANewSwitch.Action := ASourceSwitch.Action;
          ANewSwitch.Properties.Alignment := AAlignment[(ANewSwitch is TcxCheckBox) or (ANewSwitch.Action.Tag = 1)];
          ALayoutItem.Control := ANewSwitch;
          ASourceSwitches.Add(ASourceSwitch);
        end;
      end;
      Inc(I);
    end;
  finally
    FreeAndNil(ASourceSwitches);
  end;
end;

procedure DestroyMenuItems;
begin
  FreeAndNil(FSkinMenuController);
  FreeAndNil(FHelpClickController);
  FreeAndNil(FRibbonHelpClickController);
  FreeAndNil(FExportMenuItemClickController);
end;

{ TdxHelpMenuClickController }

procedure TdxHelpMenuClickController.MenuItemClickHandler(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    0 .. 5:
      Browse(dxSitePage(TComponent(Sender).Tag));
    6:
      dxShowAboutForm;
  end;
end;

{ TdxRibbonHelpMenuClickController }

procedure TdxRibbonHelpMenuClickController.RibbonHelpButtonHandler
  (ASender: TdxCustomRibbon);
begin
  dxShowAboutForm;
end;

{ TdxExportMenuItemClickController }

procedure TdxExportMenuItemClickController.MenuItemClickHandler(Sender: TObject);
var
  ATag: Integer;
  ADataOnly: Boolean;
begin
  ATag := TComponent(Sender).Tag;
  ADataOnly := False;
  if ATag >= dxExportDataOnlyFirstTypeIndex then
  begin
    Dec(ATag, dxExportDataOnlyFirstTypeIndex);
    ADataOnly := True;
  end;
  FOnExport(TSupportedExportType(ATag), ADataOnly);
end;

{ TdxSkinMenuController }

procedure TdxSkinMenuController.BuildMenu(AViewSubItem: TdxBarSubItem);
begin
  InternalBuildMenu(AViewSubItem.ItemLinks);
end;

procedure TdxSkinMenuController.MenuItemClickHandler(Sender: TObject);
begin
  // do nothing
end;

procedure TdxSkinMenuController.SkinChooserClickHandler(Sender: TObject; const ASkinName: string);
begin
  if FSkinResFileName <> '' then
  begin
    RootLookAndFeel.NativeStyle := False;
    dxSkinsUserSkinLoadFromFile(FSkinResFileName, ASkinName);
    RootLookAndFeel.SkinName := sdxSkinsUserSkinName;
  end
  else
    FSkinChooser.SelectedGroupItem.ApplyToRootLookAndFeel;
  UpdateStyle;
end;

procedure TdxSkinMenuController.SkinChooserPopulateHandler(Sender: TObject);
begin
  FSkinChooser.AddSkinsFromFile(FSkinResFileName);
end;

procedure TdxSkinMenuController.SkinPaletteChooserClickHandler(Sender: TObject);
begin
  if FSkinPaletteChooser.ItemIndex >= 0 then
    FSkinController.SkinPaletteName := FSkinPaletteChooser.Items[FSkinPaletteChooser.ItemIndex];
end;

procedure TdxSkinMenuController.SkinPaletteChooserGetDataHandler(Sender: TObject);
begin
  PopulateSkinColorPalettes(FSkinPaletteChooser);
end;

procedure TdxSkinMenuController.UpdateStyle;
var
  AData: TdxSkinInfo;
begin
  if FSkinResFileName = '' then
    FSkinChooser.SelectedSkinName := RootLookAndFeel.Painter.LookAndFeelName;
  if FNavBar <> nil then
    SetNavBarStyle(FNavBar, FSkinController);

  if RootLookAndFeel.Painter.GetPainterData(AData) and (AData.Skin.ColorPalettes.Count > 1) then
    FSkinPaletteChooserSubItem.Visible := ivAlways
  else
    FSkinPaletteChooserSubItem.Visible := ivNever;
end;

procedure TdxSkinMenuController.InternalBuildMenu(ALinks: TdxBarItemLinks);
begin
  FSkinPaletteChooser := TdxBarListItem(FBarManager.AddItem(TdxBarListItem));
  FSkinPaletteChooser.Caption := 'Skin Color Palette';
  FSkinPaletteChooser.ShowNumbers := False;
  FSkinPaletteChooser.ShowCheck := True;
  FSkinPaletteChooser.OnGetData := SkinPaletteChooserGetDataHandler;
  FSkinPaletteChooser.OnClick := SkinPaletteChooserClickHandler;

  FSkinPaletteChooserSubItem := TdxBarSubItem(FBarManager.AddItem(TdxBarSubItem));
  FSkinPaletteChooserSubItem.Caption := 'Color Palette';
  FSkinPaletteChooserSubItem.LargeGlyph.LoadFromResource(HInstance, 'COLORMIXER' + GetImageSuffix(FUseSVGImages, True),
    PWideChar(GetImageResourceType(FUseSVGImages)));
  FSkinPaletteChooserSubItem.ItemLinks.Add.Item := FSkinPaletteChooser;

  FSkinChooser := TdxSkinChooserGalleryItem(FBarManager.AddItem(TdxSkinChooserGalleryItem));
  if FSkinResFileName <> '' then
    FSkinChooser.OnPopulate := SkinChooserPopulateHandler;
  FSkinChooser.OnSkinChanged := SkinChooserClickHandler;
  FSkinChooser.Caption := 'Look And Feel';
  FSkinChooser.GalleryInRibbonOptions.ItemSize.Size := cxSize(24, 24);
  FSkinChooser.GalleryOptions.ColumnCount := 7;
  FSkinChooser.VisibleLookAndFeelStyles := [lfsFlat..lfsSkin];
  if FSkinResFileName <> '' then
    FSkinChooser.SelectedSkinName := sdxFirstSelectedSkinName
  else
    FSkinChooser.SelectedSkinName := 'Native';

  ALinks.Add(FSkinChooser);
  ALinks.Add(FSkinPaletteChooserSubItem);
end;

{ TdxRibbonSkinMenuController }

procedure TdxRibbonSkinMenuController.BuildMenuEx(ABar: TdxBar);
begin
  InternalBuildMenu(ABar.ItemLinks);
end;

procedure TdxRibbonSkinMenuController.UpdateStyle;
const
  Prefixes: array[TdxRibbonStyle] of string = (
    'Office2007', 'Office2010', 'Office2013', 'Office2016', 'Office2016Tablet', 'Office2019Colorful', 'Office365Colorful'
  );
var
  ASkinName: string;
begin
  inherited UpdateStyle;
  if RootLookAndFeel.Painter.LookAndFeelStyle <> lfsSkin then
    FRibbon.ColorSchemeName := 'Blue'
  else
  begin
    if Copy(FSkinController.SkinName, 1, Length(Prefixes[FRibbon.Style])) = Prefixes[FRibbon.Style] then
    begin
      ASkinName := Copy(FSkinController.SkinName, Length(Prefixes[FRibbon.Style]) + 1, MaxInt);
      FRibbon.ColorSchemeName := ASkinName;
      if FRibbon.ColorSchemeName = ASkinName then
        Exit;
    end;
    FRibbon.ColorSchemeName := FSkinController.SkinName;
  end;
end;

{ TdxBarMenuItemClickController }

function TdxBarMenuItemClickController.AddButton(ABarManager: TdxBarManager; ASubItem: TdxBarSubItem;
  AController: TdxBarMenuItemClickController; ACaption: string; ATag: Integer; AHasSeparator: Boolean = False): TdxBarButton;
begin
  Result := dxDemoUtils.AddButton(ABarManager, ASubItem, AController, ACaption, ATag, AHasSeparator);
end;

{ TRecentDocumentsController }

procedure TRecentDocumentsController.Add(const AFileName: string);
begin
  // do nothing
end;

procedure TRecentDocumentsController.SetCurrentFileName(const AFileName: string);
begin
  // do nothing
end;

procedure TRecentDocumentsController.LoadFromIniFile(const AFileName: string);
var
  AIniFile: TIniFile;
begin
  AIniFile := TIniFile.Create(AFileName);
  try
    DoLoad(AIniFile);
  finally
    AIniFile.Free;
  end;
end;

procedure TRecentDocumentsController.SaveToIniFile(const AFileName: string);
var
  AIniFile: TIniFile;
begin
  AIniFile := TIniFile.Create(AFileName);
  try
    DoSave(AIniFile);
  finally
    AIniFile.Free;
  end;
end;

procedure TRecentDocumentsController.DoLoad(AConfig: TCustomIniFile);
begin
  // do nothing
end;

procedure TRecentDocumentsController.DoSave(AConfig: TCustomIniFile);
begin
  // do nothing
end;

{ TdxRibbonRecentDocumentsController }

constructor TdxRibbonRecentDocumentsController.Create(
  ARecentDocuments, ARecentPaths, ACurrentFolder: TdxRibbonBackstageViewGalleryControl;
  AApplicationMenu: TdxBarApplicationMenu = nil);
begin
  inherited Create;
  FApplicationMenu := AApplicationMenu;

  FCurrentFolder := ACurrentFolder;
  FCurrentFolder.Tag := 1;

  FRecentDocuments := ARecentDocuments;
  FRecentDocuments.Gallery.Groups.Add;
  FRecentDocuments.Tag := 0;

  FRecentPaths := ARecentPaths;
  FRecentPaths.Gallery.Groups.Add;
  FRecentPaths.Tag := 1;
end;

procedure TdxRibbonRecentDocumentsController.Add(const AFileName: string);
begin
  InternalAdd(FRecentDocuments.Gallery.Groups[0], AFileName);
  InternalAdd(FRecentPaths.Gallery.Groups[0], ExtractFileDir(AFileName));
  UpdateApplicationMenu;
end;

procedure TdxRibbonRecentDocumentsController.SetCurrentFileName(const AFileName: string);
begin
  FCurrentFolder.Gallery.Groups.BeginUpdate;
  try
    FCurrentFolder.Gallery.Groups.Clear;
    if ExtractFileDir(AFileName) <> '' then
      InternalAdd(FCurrentFolder.Gallery.Groups.Add, ExtractFileDir(AFileName));
  finally
    FCurrentFolder.Gallery.Groups.EndUpdate;
  end;
end;

procedure TdxRibbonRecentDocumentsController.DoLoad(AConfig: TCustomIniFile);
begin
  InternalLoad(FRecentDocuments.Gallery.Groups[0], AConfig, 'RecentDocuments');
  InternalLoad(FRecentPaths.Gallery.Groups[0], AConfig, 'RecentPaths');
  UpdateApplicationMenu;
end;

procedure TdxRibbonRecentDocumentsController.DoSave(AConfig: TCustomIniFile);
begin
  InternalSave(FRecentDocuments.Gallery.Groups[0], AConfig, 'RecentDocuments');
  InternalSave(FRecentPaths.Gallery.Groups[0], AConfig, 'RecentPaths');
end;

function TdxRibbonRecentDocumentsController.GetItemByValue(
  AGroup: TdxRibbonBackstageViewGalleryGroup; const AValue: string): TdxRibbonBackstageViewGalleryItem;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to AGroup.Items.Count - 1 do
    if SameText(AGroup.Items[I].Hint, AValue) then
    begin
      Result := AGroup.Items[I];
      Break;
    end;
end;

function TdxRibbonRecentDocumentsController.InternalAdd(
  AGroup: TdxRibbonBackstageViewGalleryGroup; const AValue: string): TdxRibbonBackstageViewGalleryItem;
begin
  Result := GetItemByValue(AGroup, AValue);
  if Result = nil then
  begin
    Result := AGroup.Items.Add;
    Result.Caption := ExtractFileName(AValue);
    Result.Hint := AValue;
    Result.Description := StringReplace(AValue, '\', ' '#187' ', [rfReplaceAll]);
    Result.ImageIndex := AGroup.GetParentComponent.Tag;
  end;
  Result.Index := 0;

  while AGroup.Items.Count > 10 do
    AGroup.Items.Delete(9);
end;

procedure TdxRibbonRecentDocumentsController.InternalLoad(
  AGroup: TdxRibbonBackstageViewGalleryGroup; AIniFile: TCustomIniFile; const ASection: string);
var
  AItem: TdxRibbonBackstageViewGalleryItem;
  I: Integer;
begin
  AGroup.Items.BeginUpdate;
  try
    AGroup.Items.Clear;
    for I := AIniFile.ReadInteger(ASection, 'Count', 0) - 1 downto 0 do
    begin
      AItem := InternalAdd(AGroup, AIniFile.ReadString(ASection, IntToStr(I), ''));
      AItem.Pinned := AIniFile.ReadBool(ASection, IntToStr(I) + 'Pinned', False);
    end;
  finally
    AGroup.Items.EndUpdate;
  end;
end;

procedure TdxRibbonRecentDocumentsController.InternalSave(
  AGroup: TdxRibbonBackstageViewGalleryGroup; AIniFile: TCustomIniFile; const ASection: string);
var
  AItem: TdxRibbonBackstageViewGalleryItem;
  I: Integer;
begin
  AIniFile.EraseSection(ASection);
  AIniFile.WriteInteger(ASection, 'Count', AGroup.Items.Count);
  for I := 0 to AGroup.Items.Count - 1 do
  begin
    AItem := AGroup.Items[I];
    AIniFile.WriteString(ASection, IntToStr(I), AItem.Hint);
    AIniFile.WriteBool(ASection, IntToStr(I) + 'Pinned', AItem.Pinned);
  end;
end;

procedure TdxRibbonRecentDocumentsController.UpdateApplicationMenu;
var
  AGroup: TdxRibbonBackstageViewGalleryGroup;
  AItem: TdxBarExtraPaneItem;
  I: Integer;
begin
  if FApplicationMenu = nil then
    Exit;

  FApplicationMenu.ExtraPaneItems.BeginUpdate;
  try
    FApplicationMenu.ExtraPaneItems.Clear;
    AGroup := FRecentDocuments.Gallery.Groups[0];
    for I := 0 to AGroup.ItemCount - 1 do
    begin
      AItem := FApplicationMenu.ExtraPaneItems.Add;
      AItem.DisplayText := AGroup.Items[I].Caption;
      AItem.Pin := AGroup.Items[I].Pinned;
      AItem.Text := AGroup.Items[I].Hint;
    end;
  finally
    FApplicationMenu.ExtraPaneItems.EndUpdate;
  end;
end;

procedure AddResourceStringNames(AProduct: TdxProductResourceStrings);
begin
  AProduct.Add('sHTMLFile', @sHTMLFile);
  AProduct.Add('sHTMLFileDescription', @sHTMLFileDescription);
  AProduct.Add('sXMLFile', @sXMLFile);
  AProduct.Add('sXMLFileDescription', @sXMLFileDescription);
  AProduct.Add('sXLSFile', @sXLSFile);
  AProduct.Add('sXLSFileDescription', @sXLSFileDescription);
  AProduct.Add('sXLSXFile', @sXLSXFile);
  AProduct.Add('sXLSXFileDescription', @sXLSXFileDescription);
  AProduct.Add('sPDFFile', @sPDFFile);
  AProduct.Add('sPDFFileDescription', @sPDFFileDescription);
  AProduct.Add('sTextFile', @sTextFile);
  AProduct.Add('sTextFileDescription', @sTextFileDescription);
  AProduct.Add('sDOCFile', @sDOCFile);
  AProduct.Add('sDOCFileDescription', @sDOCFileDescription);
  AProduct.Add('sDOCXFile', @sDOCXFile);
  AProduct.Add('sDOCXFileDescription', @sDOCXFileDescription);
  AProduct.Add('sRTFFile', @sRTFFile);
  AProduct.Add('sRTFFileDescription', @sRTFFileDescription);
  AProduct.Add('sSVGFile', @sSVGFile);
  AProduct.Add('sSVGFileDescription', @sSVGFileDescription);
  AProduct.Add('sRasterImage', @sRasterImage);
  AProduct.Add('sRasterImageDescription', @sRasterImageDescription);
  AProduct.Add('sMetafile', @sMetafile);
  AProduct.Add('sMetafileDescription', @sMetafileDescription);
end;

function GetRibbonGalleryScaleFactor(ARibbonGallery: TdxRibbonGalleryItem): TdxScaleFactor;
begin
  Result := TdxBarItemLinksAccess(TdxRibbonGalleryItemAccess(ARibbonGallery).GetItemLinks).ScaleFactor;
end;

{ TdxRibbonCaptionAreaSearchToolbarController }

constructor TdxRibbonSearchToolbarController.CreateWithExistingToolbar(ARibbon: TdxRibbon; ASearchToolbar: TdxBar; ANeedSetupSearchBoxProperties: Boolean = False);
begin
  inherited Create;
  FRibbon := ARibbon;
  FSearchToolbar := ASearchToolbar;
  FOwnToolbar := False;
  FRibbon.Style := rsOffice365;
  if ANeedSetupSearchBoxProperties then
    SetupSearchBoxProperties;
end;

constructor TdxRibbonSearchToolbarController.CreateWithOwnToolbar(ARibbon: TdxRibbon);
begin
  inherited Create;
  FRibbon := ARibbon;
  FSearchToolbar := nil;
  FInstance := Self;
  FOwnToolbar := True;
  FRibbon.Style := rsOffice365;
  BuildToolBar;
end;

destructor TdxRibbonSearchToolbarController.Destroy;
begin
  if FOwnToolbar then
    FreeToolbar;
  inherited Destroy;
end;

class procedure TdxRibbonSearchToolbarController.Finalize;
begin
  FreeAndNil(FInstance);
end;

class function TdxRibbonSearchToolbarController.TryCreateWithOwnToolbar(ARibbon: TdxRibbon): Boolean;
begin
  Result := CanCreateWithOwnToolbar(ARibbon);
  if Result then
    FInstance := TdxRibbonSearchToolbarController.CreateWithOwnToolbar(ARibbon);
end;

class function TdxRibbonSearchToolbarController.CanCreateWithOwnToolbar(ARibbon: TdxRibbon): Boolean;
begin
  Result := (FInstance = nil) and (ARibbon <> nil) and (ARibbon.CaptionAreaSearchToolbar.Toolbar = nil) and
   (ARibbon.TabAreaSearchToolbar.Toolbar = nil)
end;

class function TdxRibbonSearchToolbarController.CanCreateWithExistingToolbar(ARibbon: TdxRibbon): Boolean;
var
  ABar1, ABar2: TObject;
begin
  Result := (FInstance = nil) and (ARibbon <> nil);
  if not Result then
    Exit;
  ABar1 := ARibbon.TabAreaSearchToolbar.Toolbar;
  ABar2 := ARibbon.CaptionAreaSearchToolbar.Toolbar;
  Result := (ABar1 <> nil) and (ABar2 = nil) or (ABar1 = nil) and (ABar2 <> nil);
end;

class function TdxRibbonSearchToolbarController.TryCreateWithExistingToolbar(ARibbon: TdxRibbon; ANeedSetupSearchBoxProperties: Boolean = False): Boolean;

  function GetBar: TdxBar;
  begin
    if ARibbon.TabAreaSearchToolbar.Toolbar <> nil then
      Result := ARibbon.TabAreaSearchToolbar.Toolbar
    else
      Result := ARibbon.TabAreaSearchToolbar.Toolbar;
  end;

begin
  Result := CanCreateWithExistingToolbar(ARibbon);
  if Result then
    FInstance := TdxRibbonSearchToolbarController.CreateWithExistingToolbar(ARibbon, GetBar, ANeedSetupSearchBoxProperties);
end;

procedure TdxRibbonSearchToolbarController.BuildToolBar;
var
  ALink: TdxBarItemLink;
begin
  FRibbon.BarManager.BeginUpdate;
  try
    FSearchToolbar := FRibbon.BarManager.Bars.Add;
    if FRibbon.Style = rsOffice365 then
      FRibbon.CaptionAreaSearchToolbar.Toolbar := FSearchToolbar
    else
      FRibbon.TabAreaSearchToolbar.Toolbar := FSearchToolbar;
    FSearchToolbar.Visible := True;
    ALink := FSearchToolbar.ItemLinks.AddItem(TcxBarEditItem);
    ALink.UserWidth := TcxCustomControlAccess(FRibbon).ScaleFactor.Apply(200);
    (ALink.Item as TcxBarEditItem).PropertiesClass := TdxOfficeSearchBoxProperties;
    SetupSearchBoxProperties;
  finally
    FRibbon.BarManager.EndUpdate;
  end;
end;

procedure TdxRibbonSearchToolbarController.SetupSearchBoxProperties;
var
  AProperties: TdxOfficeSearchBoxProperties;
begin
  AProperties := SearchBoxProperties;
  if AProperties = nil then
    Exit;
  AProperties.BeginUpdate;
  try
    AProperties.BarManager := FRibbon.BarManager;
    AProperties.Ribbon := FRibbon;
    AProperties.SearchSource := FRibbon;
    LoadGlyph(AProperties);
    AProperties.Nullstring := GetNullstring;
    AProperties.UseNullString  := True;
  finally
    AProperties.EndUpdate;
  end;
end;

class procedure TdxRibbonSearchToolbarController.LoadGlyph(AProperties: TdxOfficeSearchBoxProperties);
begin
  TdxOfficeSearchBoxPropertiesAccess(AProperties).UseStrokeColorForGlyphPalette := True;
  AProperties.Glyph.LoadFromResource(HInstance, 'OFFICESEARCHBOX', PWideChar(GetImageResourceType(True)));
  AProperties.Glyph.SourceDPI := dxDefaultDPI;
  AProperties.Glyph.SourceHeight := 16;
  AProperties.Glyph.SourceWidth := 16;
end;

class function TdxRibbonSearchToolbarController.GetNullstring: string;
begin
  Result := 'Search';
end;

class procedure TdxRibbonSearchToolbarController.SetDefaultNullstringToInstance;
begin
  if (Instance <> nil) and (Instance.SearchBoxProperties <> nil) then
   Instance.SearchBoxProperties.Nullstring := GetNullstring;
end;

procedure TdxRibbonSearchToolbarController.FreeToolbar;
var
  I: Integer;
  AList: TList;
begin
  if (FSearchToolbar = nil) or (FRibbon = nil) or (csDestroying in FRibbon.ComponentState) or
    (csDestroying in FRibbon.BarManager.ComponentState) then
      Exit;
  FRibbon.BarManager.BeginUpdate;
  try
    AList := TList.Create;
    try
      for I := 0 to  FSearchToolbar.ItemLinks.Count - 1 do
        AList.Add(FSearchToolbar.ItemLinks[I].Item);
      for I := 0 to  AList.Count - 1 do
        TObject(AList.List[I]).Free;
    finally
      AList.Free;
    end;
    FreeAndNil(FSearchToolbar);
  finally
    FRibbon.BarManager.EndUpdate;
  end;
end;

function TdxRibbonSearchToolbarController.GetSearchBoxItem: TcxBarEditItem;
var
  I: Integer;
  ALink: TdxBarItemLink;
begin
  Result := nil;
  if FSearchToolbar = nil then
    Exit;
  for I := 0 to  FSearchToolbar.ItemLinks.Count - 1 do
  begin
    ALink := FSearchToolbar.ItemLinks[I];
    if (ALink.Item is TcxBarEditItem) and (TcxBarEditItem(ALink.Item).Properties is TdxOfficeSearchBoxProperties) then
      Exit(TcxBarEditItem(ALink.Item));
  end;
end;

function TdxRibbonSearchToolbarController.GetSearchBoxProperties: TdxOfficeSearchBoxProperties;
var
  AItem: TcxBarEditItem;
begin
  AItem := SearchBoxItem;
  if AItem <> nil then  
    Result := TdxOfficeSearchBoxProperties(AItem.Properties)
  else
    Result := nil;
end;

function TdxRibbonSearchToolbarController.IsSearchToolbarInCaption: Boolean;
begin
  Result := FRibbon.CaptionAreaSearchToolbar.Toolbar = FSearchToolbar;
end;

initialization
  dxResourceStringsRepository.RegisterProduct('Custom Resource Strings', @AddResourceStringNames);
  RootLookAndFeel.ScrollbarMode := sbmClassic;
  TcxRootLookAndFeel.LockFormDrawingOnUpdate := True;
  FindSkinResFile;
  TdxRibbonAutoHideMode.DefaultAnimationEffect := TdxAnimationTransitionEffect.ateSine;
  TdxRibbonSkinSelector.AlwaysDisplayCurrentSkin := False;
finalization
  dxResourceStringsRepository.UnRegisterProduct('Custom Resource Strings');
  DestroyMenuItems;
end.
