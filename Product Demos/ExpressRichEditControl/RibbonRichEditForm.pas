unit RibbonRichEditForm;

interface

uses
  Winapi.Windows, Vcl.Forms, ColorPicker,
  System.IniFiles, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxRibbonCustomizationForm, dxRibbonSkins, Vcl.Menus, dxCore, dxCoreClasses, dxGDIPlusAPI, System.UITypes,
  dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Options, dxRichEdit.Control,
  cxFontNameComboBox, cxDropDownEdit, dxRibbon, dxBar, dxBarApplicationMenu,
  dxScreenTip, Vcl.Dialogs, dxRichEdit.Actions, dxActions, System.Classes, Vcl.ActnList,
  dxBarExtItems, dxRibbonGallery, dxSkinChooserGallery, cxBarEditItem, Vcl.ImgList,
  Vcl.Controls, dxRichEdit.Platform.Win.Control, Vcl.Graphics, Vcl.ExtCtrls, cxTextEdit,
  cxMemo, Vcl.StdCtrls, cxButtons, cxScrollBox, dxGallery, dxGalleryControl,
  dxRibbonBackstageViewGalleryControl, dxBevel, cxLabel, cxGroupBox, dxBarBuiltInMenu,
  dxRibbonBackstageView, dxStatusBar, dxRibbonStatusBar, cxClasses, cxTrackBar,
  dxZoomTrackBar, dxHttpIndyRequest, dxPSEngn, dxPSGlbl, dxPSUtl, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxMessageDialog,
  dxPSRichEditControlLnk, MainData, dxRibbonForm, RichEditControlBase, dxRichEdit.NativeApi,
  dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs, dxRichEdit.Control.Core, System.Actions;

type
  { TfrmRibbonRichEditForm }

  TfrmRibbonRichEditForm = class(TfrmRichEditControlBase)
    dxbQAT: TdxBar;
    bmbHomeClipboard: TdxBar;
    bmbHomeEditing: TdxBar;
    bmbHomeParagraph: TdxBar;
    bmbHomeFont: TdxBar;
    dxbStatusBarToolbar1: TdxBar;
    dxbStatusBarToolbar2: TdxBar;
    dxbStatusBarToolbar3: TdxBar;
    dxbSelectionTools: TdxBar;
    dxbHelp: TdxBar;
    dxbLinks: TdxBar;
    bmbFileCommon: TdxBar;
    bmbInsertPages: TdxBar;
    bmbInsertTables: TdxBar;
    bmbInserIllustrations: TdxBar;
    bmbInsertLinks: TdxBar;
    bmbInsertHeaderAndFooter: TdxBar;
    bmbInsertText: TdxBar;
    bmbInsertSymbols: TdxBar;
    bmbPageLayoutPageSetup: TdxBar;
    bmbPageLayoutPageBackground: TdxBar;
    bmbReferencesTableOfContents: TdxBar;
    bmbReferencesCaptions: TdxBar;
    bmbMailingsMailMerge: TdxBar;
    bmbReviewProofing: TdxBar;
    bmbReviewProtect: TdxBar;
    bmbViewDocumentViews: TdxBar;
    bmbViewShow: TdxBar;
    bmbViewZoom: TdxBar;
    bmbHFTNavigation: TdxBar;
    bmbHFTOptions: TdxBar;
    bmbHFTClose: TdxBar;
    bmbTableToolsTable: TdxBar;
    bmbTableToolsRowsAndColumns: TdxBar;
    bmbTableToolsMerge: TdxBar;
    bmbTableToolsCellSize: TdxBar;
    bmbTableToolsTableStyleOptions: TdxBar;
    bmbTableToolsTableStyles: TdxBar;
    bmbTableToolsBordersShadings: TdxBar;
    bmbPictureToolsShapeStyles: TdxBar;
    bmbPictureToolsArrange: TdxBar;
    bmbTableToolsAlignment: TdxBar;
    bbCursorLine: TdxBarButton;
    bbCursorColumn: TdxBarButton;
    bbLocked: TdxBarButton;
    bbModified: TdxBarButton;
    beFontName: TcxBarEditItem;
    beFontSize: TcxBarEditItem;
    bbNew: TdxBarLargeButton;
    bbOpen: TdxBarLargeButton;
    bbSave: TdxBarLargeButton;
    bbPrint: TdxBarLargeButton;
    bbPaste: TdxBarLargeButton;
    bbCut: TdxBarLargeButton;
    bbCopy: TdxBarLargeButton;
    bbSelectAll: TdxBarLargeButton;
    bbFind: TdxBarLargeButton;
    bbReplace: TdxBarLargeButton;
    bbUndo: TdxBarLargeButton;
    bbBold: TdxBarLargeButton;
    bbItalic: TdxBarLargeButton;
    bbUnderline: TdxBarLargeButton;
    bbAlignLeft: TdxBarLargeButton;
    bbAlignCenter: TdxBarLargeButton;
    bbAlignRight: TdxBarLargeButton;
    bbBullets: TdxBarLargeButton;
    rgiColorTheme: TdxRibbonGalleryItem;
    rgiPageColorTheme: TdxRibbonGalleryItem;
    rgiFontColor: TdxRibbonGalleryItem;
    rgiPageColor: TdxRibbonGalleryItem;
    bccZoom: TdxBarControlContainerItem;
    bbOptions: TdxBarButton;
    bbExit: TdxBarButton;
    bbBarsHelp: TdxBarLargeButton;
    bbDockingHelp: TdxBarLargeButton;
    bbDXOnWeb: TdxBarLargeButton;
    bbDXSupport: TdxBarLargeButton;
    bbDXProducts: TdxBarLargeButton;
    bbDXDownloads: TdxBarLargeButton;
    bbMyDX: TdxBarLargeButton;
    bsZoom: TdxBarStatic;
    bbFontSuperscript: TdxBarLargeButton;
    bbFontSubscript: TdxBarLargeButton;
    bbIncreaseFontSize: TdxBarLargeButton;
    bbDecreaseFontSize: TdxBarLargeButton;
    bsiLineSpacing: TdxBarSubItem;
    bbSingleLineSpacing: TdxBarLargeButton;
    bbSesquialteralLineSpacing: TdxBarLargeButton;
    bbDoubleLineSpacing: TdxBarLargeButton;
    bbLineSpacingOptions: TdxBarLargeButton;
    bbAlignJustify: TdxBarLargeButton;
    bbRedo: TdxBarLargeButton;
    bbNumbering: TdxBarLargeButton;
    bbMultiLevelList: TdxBarLargeButton;
    bbDoubleUnderline: TdxBarLargeButton;
    bbStrikeout: TdxBarLargeButton;
    bbDoubleStrikeout: TdxBarLargeButton;
    bbShowWhitespace: TdxBarLargeButton;
    bbDecrementIndent: TdxBarLargeButton;
    bbIncrementIndent: TdxBarLargeButton;
    bbParagraph: TdxBarButton;
    bbRadialMenuAlligns: TdxBarSubItem;
    bbSaveAs: TdxBarLargeButton;
    bbTableProperties: TdxBarLargeButton;
    bbSymbol: TdxBarLargeButton;
    bbInsertTable: TdxBarLargeButton;
    bbHorizontalRuler: TdxBarLargeButton;
    bbVerticalRuler: TdxBarLargeButton;
    bbZoomOut: TdxBarLargeButton;
    bbZoomIn: TdxBarLargeButton;
    bsiBorders: TdxBarSubItem;
    bbBottomBorder: TdxBarLargeButton;
    bbTopBorder: TdxBarLargeButton;
    bbLeftBorder: TdxBarLargeButton;
    bbRightBorder: TdxBarLargeButton;
    bbNoBorder: TdxBarLargeButton;
    bbAllBorder: TdxBarLargeButton;
    bbOutsideBorder: TdxBarLargeButton;
    bbInsideBorders: TdxBarLargeButton;
    bbInsideHorizontalBorder: TdxBarLargeButton;
    bbInsideVerticalBorder: TdxBarLargeButton;
    bbCellsAlignTopLeft: TdxBarLargeButton;
    bbCellsAlignCenterLeft: TdxBarLargeButton;
    bbCellsAlignBottomLeft: TdxBarLargeButton;
    bbCellsAlignTopCenter: TdxBarLargeButton;
    bbCellsAlignCenter: TdxBarLargeButton;
    bbCellsBottomCenterAlign: TdxBarLargeButton;
    bbCellsTopRightAlign: TdxBarLargeButton;
    bbCellsCenterRightAlign: TdxBarLargeButton;
    bbBottomRightAlign: TdxBarLargeButton;
    bbSplitCells: TdxBarLargeButton;
    bbInsertRowAbove: TdxBarLargeButton;
    bbInsertRowBelow: TdxBarLargeButton;
    bbInsertColumnToTheLeft: TdxBarLargeButton;
    bbInsertColumnToTheRight: TdxBarLargeButton;
    bsiDelete: TdxBarSubItem;
    bbDeleteCells: TdxBarLargeButton;
    bbHyperlink: TdxBarLargeButton;
    acExit: TAction;
    acCut: TdxRichEditControlCutSelection;
    acCopy: TdxRichEditControlCopySelection;
    acPaste: TdxRichEditControlPasteSelection;
    acSelectAll: TdxRichEditControlSelectAll;
    acPrint: TAction;
    acBold: TdxRichEditControlToggleFontBold;
    acItalic: TdxRichEditControlToggleFontItalic;
    acUnderline: TdxRichEditControlToggleFontUnderline;
    acAlignLeft: TdxRichEditControlToggleParagraphAlignmentLeft;
    acAlignRight: TdxRichEditControlToggleParagraphAlignmentRight;
    acAlignCenter: TdxRichEditControlToggleParagraphAlignmentCenter;
    acJustify: TdxRichEditControlToggleParagraphAlignmentJustify;
    acBullets: TdxRichEditControlToggleBulletedList;
    acRedo: TdxRichEditControlRedo;
    acUndo: TdxRichEditControlUndo;
    acParagraph: TdxRichEditControlShowParagraphForm;
    acIncreaseFontSize: TdxRichEditControlIncreaseFontSize;
    acDecreaseFontSize: TdxRichEditControlDecreaseFontSize;
    acFontSuperscript: TdxRichEditControlToggleFontSuperscript;
    acFontSubscript: TdxRichEditControlToggleFontSubscript;
    acSingleLineSpacing: TdxRichEditControlSetSingleParagraphSpacing;
    acDoubleLineSpacing: TdxRichEditControlSetDoubleParagraphSpacing;
    acSesquialteralLineSpacing: TdxRichEditControlSetSesquialteralParagraphSpacing;
    acNumbering: TdxRichEditControlToggleSimpleNumberingList;
    acMultiLevelList: TdxRichEditControlToggleMultiLevelList;
    acDoubleUnderline: TdxRichEditControlToggleFontDoubleUnderline;
    acStrikeout: TdxRichEditControlToggleFontStrikeout;
    acDoubleStrikeout: TdxRichEditControlToggleFontDoubleStrikeout;
    acShowWhitespace: TdxRichEditControlToggleShowWhitespace;
    acIncrementIndent: TdxRichEditControlIncrementIndent;
    acDecrementIndent: TdxRichEditControlDecrementIndent;
    acFontName: TdxRichEditControlChangeFontName;
    acFontSize: TdxRichEditControlChangeFontSize;
    acNewDocument: TdxRichEditControlNewDocument;
    acOpenDocument: TdxRichEditControlLoadDocument;
    acSave: TdxRichEditControlSaveDocument;
    acSaveAs: TdxRichEditControlSaveDocumentAs;
    acFont: TdxRichEditControlShowFontForm;
    acShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm;
    acFind: TdxRichEditControlSearchFind;
    acReplace: TdxRichEditControlSearchReplace;
    acFindNext: TdxRichEditControlSearchFindNext;
    acSymbol: TdxRichEditControlShowSymbolForm;
    acInsertTableForm: TdxRichEditControlShowInsertTableForm;
    acFontColor: TdxRichEditControlChangeFontColor;
    acHorizontalRuler: TdxRichEditControlToggleShowHorizontalRuler;
    acVerticalRuler: TdxRichEditControlToggleShowVerticalRuler;
    acZoomIn: TdxRichEditControlZoomIn;
    acZoomOut: TdxRichEditControlZoomOut;
    acAllBorders: TdxRichEditControlToggleTableCellsAllBorders;
    acNoBorder: TdxRichEditControlResetTableCellsBorders;
    acOutsideBorders: TdxRichEditControlToggleTableCellsOutsideBorder;
    acInsideBorders: TdxRichEditControlToggleTableCellsInsideBorder;
    acLeftBorder: TdxRichEditControlToggleTableCellsLeftBorder;
    acRightBorder: TdxRichEditControlToggleTableCellsRightBorder;
    acTopBorder: TdxRichEditControlToggleTableCellsTopBorder;
    acBottomBorder: TdxRichEditControlToggleTableCellsBottomBorder;
    acHorizontalInsideBorder: TdxRichEditControlToggleTableCellsInsideHorizontalBorder;
    acVerticalInsideBorder: TdxRichEditControlToggleTableCellsInsideVerticalBorder;
    acTableCellsTopLeftAlignment: TdxRichEditControlToggleTableCellsTopLeftAlignment;
    acTableCellsTopCenterAlignment: TdxRichEditControlToggleTableCellsTopCenterAlignment;
    acTableCellsTopRightAlignment: TdxRichEditControlToggleTableCellsTopRightAlignment;
    acTableCellsMiddleLeftAlignment: TdxRichEditControlToggleTableCellsMiddleLeftAlignment;
    acTableCellsMiddleCenterAlignment: TdxRichEditControlToggleTableCellsMiddleCenterAlignment;
    acTableCellsMiddleRightAlignment: TdxRichEditControlToggleTableCellsMiddleRightAlignment;
    acTableCellsBottomLeftAlignment: TdxRichEditControlToggleTableCellsBottomLeftAlignment;
    acTableCellsBottomCenterAlignment: TdxRichEditControlToggleTableCellsBottomCenterAlignment;
    acTableCellsBottomRightAlignment: TdxRichEditControlToggleTableCellsBottomRightAlignment;
    acSplitCells: TdxRichEditControlShowSplitTableCellsForm;
    acInsertTableCellsForm: TdxRichEditControlShowInsertTableCellsForm;
    acDeleteTableCellsForm: TdxRichEditControlShowDeleteTableCellsForm;
    acInsertRowAbove: TdxRichEditControlInsertTableRowAbove;
    acInsertRowBelow: TdxRichEditControlInsertTableRowBelow;
    acInsertColumnToTheLeft: TdxRichEditControlInsertTableColumnToTheLeft;
    acInsertColumnToTheRight: TdxRichEditControlInsertTableColumnToTheRight;
    acHyperlinkForm: TdxRichEditControlShowHyperlinkForm;
    acShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    bbBookmarks: TdxBarLargeButton;
    acShowAllFieldResults: TdxRichEditControlShowAllFieldResults;
    acShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes;
    acShowInsertMergeFieldForm: TdxRichEditControlShowInsertMergeFieldForm;
    acToggleViewMergedData: TdxRichEditControlToggleViewMergedData;
    bbInsertMergeField: TdxBarLargeButton;
    bbShowAllFieldCodes: TdxBarLargeButton;
    bbShowAllFieldResults: TdxBarLargeButton;
    bbViewMergedData: TdxBarLargeButton;
    acPageCount: TdxRichEditControlInsertPageCountField;
    acPageNumber: TdxRichEditControlInsertPageNumberField;
    acPageHeader: TdxRichEditControlEditPageHeader;
    acPageFooter: TdxRichEditControlEditPageFooter;
    bbHeader: TdxBarLargeButton;
    bbFooter: TdxBarLargeButton;
    bbPageNumber: TdxBarLargeButton;
    bbPageCount: TdxBarLargeButton;
    bbMargins: TdxBarLargeButton;
    bbSize: TdxBarLargeButton;
    acMargins: TdxRichEditControlShowPageMarginsSetupForm;
    acSize: TdxRichEditControlShowPagePaperSetupForm;
    acPortrait: TdxRichEditControlSetPortraitPageOrientation;
    acLandscape: TdxRichEditControlSetLandscapePageOrientation;
    bsiOrientation: TdxBarSubItem;
    bbPortrait: TdxBarLargeButton;
    bbLandscape: TdxBarLargeButton;
    bbLineNumberingOptions: TdxBarLargeButton;
    acLineNumbering: TdxRichEditControlShowLineNumberingForm;
    acShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    acClosePageHeaderFooter: TdxRichEditControlClosePageHeaderFooter;
    acGoToPageHeader: TdxRichEditControlGoToPageHeader;
    acGoToPageFooter: TdxRichEditControlGoToPageFooter;
    acLinkToPrevious: TdxRichEditControlToggleHeaderFooterLinkToPrevious;
    acGoToPreviousPageHeaderFooter: TdxRichEditControlGoToPreviousPageHeaderFooter;
    acGoToNextPageHeaderFooter: TdxRichEditControlGoToNextPageHeaderFooter;
    acDifferentFirstPage: TdxRichEditControlToggleDifferentFirstPage;
    acDifferentOddAndEvenPages: TdxRichEditControlToggleDifferentOddAndEvenPages;
    bbGoToHeader: TdxBarLargeButton;
    bbGoToFooter: TdxBarLargeButton;
    bbShowNext: TdxBarLargeButton;
    bbShowPrevious: TdxBarLargeButton;
    bbLinkToPrevious: TdxBarLargeButton;
    bbDifferentFirstPage: TdxBarLargeButton;
    bbDifferentOddAndEvenPages: TdxBarLargeButton;
    bbCloseHeaderAndFooter: TdxBarLargeButton;
    rtFile: TdxRibbonTab;
    tabHome: TdxRibbonTab;
    rtSelection: TdxRibbonTab;
    rtInsert: TdxRibbonTab;
    rtPageLayout: TdxRibbonTab;
    rtReferences: TdxRibbonTab;
    rtMailings: TdxRibbonTab;
    rtReview: TdxRibbonTab;
    rtView: TdxRibbonTab;
    rtHeaderAndFooterTools: TdxRibbonTab;
    rtTableToolsLayout: TdxRibbonTab;
    rtTableToolsDesign: TdxRibbonTab;
    rtPictureTools: TdxRibbonTab;
    rtHelp: TdxRibbonTab;
    tbZoom: TdxZoomTrackBar;
    stBold: TdxScreenTip;
    stItalic: TdxScreenTip;
    stNew: TdxScreenTip;
    stUnderline: TdxScreenTip;
    stBullets: TdxScreenTip;
    stFind: TdxScreenTip;
    stPaste: TdxScreenTip;
    stCut: TdxScreenTip;
    stReplace: TdxScreenTip;
    stCopy: TdxScreenTip;
    stAlignLeft: TdxScreenTip;
    stAlignRight: TdxScreenTip;
    stAlignCenter: TdxScreenTip;
    stAppMenu: TdxScreenTip;
    stOpen: TdxScreenTip;
    stPrint: TdxScreenTip;
    stBlue: TdxScreenTip;
    stBlack: TdxScreenTip;
    stSilver: TdxScreenTip;
    stFontDialog: TdxScreenTip;
    stHelpButton: TdxScreenTip;
    stParagraphDialog: TdxScreenTip;
    stAlignJustify: TdxScreenTip;
    stFontSuperscript: TdxScreenTip;
    stFontSubscript: TdxScreenTip;
    stIncreaseFontSize: TdxScreenTip;
    stDecreaseFontSize: TdxScreenTip;
    stNumbering: TdxScreenTip;
    stLineSpacing: TdxScreenTip;
    stMultiLevelList: TdxScreenTip;
    stDoubleUnderline: TdxScreenTip;
    stStrikethrough: TdxScreenTip;
    stDoubleStrikethrough: TdxScreenTip;
    stFontName: TdxScreenTip;
    stFontSize: TdxScreenTip;
    stFontColor: TdxScreenTip;
    stShowWhitespace: TdxScreenTip;
    stiItemSymbol: TdxScreenTip;
    stIncrementIndent: TdxScreenTip;
    stDecrementIndent: TdxScreenTip;
    ppmFontColor: TdxRibbonPopupMenu;
    acInsertPicture: TdxRichEditControlInsertPicture;
    bbInsertPicture: TdxBarLargeButton;
    stSave: TdxScreenTip;
    stSaveAs: TdxScreenTip;
    stUndo: TdxScreenTip;
    stRedo: TdxScreenTip;
    stSelectAll: TdxScreenTip;
    stInsertTable: TdxScreenTip;
    stInlinePicture: TdxScreenTip;
    stHyperlink: TdxScreenTip;
    stSymbol: TdxScreenTip;
    stHorizontalRuler: TdxScreenTip;
    stVerticalRuler: TdxScreenTip;
    stZoomOut: TdxScreenTip;
    stZoomIn: TdxScreenTip;
    stTableProperties: TdxScreenTip;
    stDelete: TdxScreenTip;
    stInsertRowsAbove: TdxScreenTip;
    stInsertRowsBelow: TdxScreenTip;
    stInsertColumnsToTheLeft: TdxScreenTip;
    stInsertColumnsToTheRight: TdxScreenTip;
    stSplitCells: TdxScreenTip;
    stBorders: TdxScreenTip;
    stCellsAlignTopLeft: TdxScreenTip;
    stCellsAlignCenterLeft: TdxScreenTip;
    stCellsAlignBottomLeft: TdxScreenTip;
    stCellsAlignTopCenter: TdxScreenTip;
    stCellsAlignCenter: TdxScreenTip;
    stCellsAlignBottomCenter: TdxScreenTip;
    stCellsAlignTopRight: TdxScreenTip;
    stCellsAlignCenterRight: TdxScreenTip;
    stCellsAlignBottomRight: TdxScreenTip;
    stInsertCells: TdxScreenTip;
    acAutoFitContents: TdxRichEditControlToggleTableAutoFitContents;
    acAutoFitWindow: TdxRichEditControlToggleTableAutoFitWindow;
    acFixedColumnWidth: TdxRichEditControlToggleTableFixedColumnWidth;
    bsiAutoFit: TdxBarSubItem;
    bbAutoFitContents: TdxBarLargeButton;
    bbFixedColumnWidth: TdxBarLargeButton;
    bbAutoFitWindow: TdxBarLargeButton;
    stAutoFit: TdxScreenTip;
    acSplitTable: TdxRichEditControlSplitTable;
    bbSplitTable: TdxBarLargeButton;
    stSplitTable: TdxScreenTip;
    acMergeCells: TdxRichEditControlMergeTableCells;
    bbMergeCells: TdxBarLargeButton;
    stMergeCells: TdxScreenTip;
    acTextHighlight: TdxRichEditControlTextHighlight;
    bbTextHighlight: TdxBarLargeButton;
    stTextHighlight: TdxScreenTip;
    acPageBreak: TdxRichEditControlInsertPageBreak;
    acDraftView: TdxRichEditControlSwitchToDraftView;
    acPrintLayoutView: TdxRichEditControlSwitchToPrintLayoutView;
    acSimpleView: TdxRichEditControlSwitchToSimpleView;
    bbPage: TdxBarLargeButton;
    bbSimpleView: TdxBarLargeButton;
    bbDraftView: TdxBarLargeButton;
    bbPrintLayoutView: TdxBarLargeButton;
    stPage: TdxScreenTip;
    stSimpleView: TdxScreenTip;
    stDraftView: TdxScreenTip;
    stPrintLayoutView: TdxScreenTip;
    acDeleteTable: TdxRichEditControlDeleteTable;
    acDeleteTableRows: TdxRichEditControlDeleteTableRows;
    acDeleteTableColumns: TdxRichEditControlDeleteTableColumns;
    bbDeleteTable: TdxBarLargeButton;
    bbDeleteRows: TdxBarLargeButton;
    bbDeleteColumns: TdxBarLargeButton;
    acLowerCase: TdxRichEditControlTextLowerCase;
    acUpperCase: TdxRichEditControlTextUpperCase;
    acToggleCase: TdxRichEditControlToggleTextCase;
    bsiChangeCase: TdxBarSubItem;
    bbUpperCase: TdxBarLargeButton;
    bbToggleCase: TdxBarLargeButton;
    bbLowerCase: TdxBarLargeButton;
    stChangeCase: TdxScreenTip;
    sbiColumns: TdxBarSubItem;
    bbOneColumn: TdxBarLargeButton;
    bbTwoColumns: TdxBarLargeButton;
    bbThreeColumn: TdxBarLargeButton;
    acSectionOneColumn: TdxRichEditControlSetSectionOneColumn;
    acSectionThreeColumns: TdxRichEditControlSetSectionThreeColumns;
    acSectionTwoColumns: TdxRichEditControlSetSectionTwoColumns;
    stColumns: TdxScreenTip;
    bbFontColor: TdxBarLargeButton;
    ppmTextHighlightColor: TdxRibbonPopupMenu;
    rgiTextHighlightColorTheme: TdxRibbonGalleryItem;
    rgiTextHighlightColor: TdxRibbonGalleryItem;
    acMoreColumns: TdxRichEditControlShowColumnsSetupForm;
    bbMoreColumns: TdxBarLargeButton;
    bsiBreaks: TdxBarSubItem;
    bbColumn: TdxBarLargeButton;
    bbSectionNext: TdxBarLargeButton;
    bbSectionEvenPage: TdxBarLargeButton;
    bbSectionOdd: TdxBarLargeButton;
    acSectionBreakNextPage: TdxRichEditControlInsertSectionBreakNextPage;
    acSectionBreakOddPage: TdxRichEditControlInsertSectionBreakOddPage;
    acSectionBreakEvenPage: TdxRichEditControlInsertSectionBreakEvenPage;
    acColumnBreak: TdxRichEditControlInsertColumnBreak;
    stBreaks: TdxScreenTip;
    acPageColor: TdxRichEditControlChangePageColor;
    stPageColor: TdxScreenTip;
    bsiPageColor: TdxBarSubItem;
    acLineNumberingNone: TdxRichEditControlSetSectionLineNumberingNone;
    acLineNumberingContinuous: TdxRichEditControlSetSectionLineNumberingContinuous;
    acLineNumberingRestartNewPage: TdxRichEditControlSetSectionLineNumberingRestartNewPage;
    acLineNumberingRestartNewSection: TdxRichEditControlSetSectionLineNumberingRestartNewSection;
    bsiLineNumbers: TdxBarSubItem;
    bbLineNumberingNone: TdxBarLargeButton;
    bbacLineNumberingRestartNewSection: TdxBarLargeButton;
    bbLineNumberingRestartNewPage: TdxBarLargeButton;
    bbLineNumberingContinuous: TdxBarLargeButton;
    stLineNumbers: TdxScreenTip;
    RichEditControl: TdxRichEditControl;
    PrinterEngine: TdxPSEngineController;
    Printer: TdxComponentPrinter;
    RichEditPrinterLink: TdxRichEditControlReportLink;
    acPrintPreview: TAction;
    acPageSetup: TAction;
    bmbPrint: TdxBar;
    bbPrintPreview: TdxBarLargeButton;
    bbPageSetup: TdxBarLargeButton;
    bbPicture: TdxBarLargeButton;
    acPicture: TdxRichEditControlInsertFloatingObjectPicture;
    procedure bmbHomeFontClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbZoomPropertiesChange(Sender: TObject);
    procedure bmbHomeParagraphClick(Sender: TObject);
    procedure bmbTableToolsCellSizeClick(Sender: TObject);
    procedure RowsAndColumnsCaptionButtonsClick(Sender: TObject);
    procedure acFontSizeUpdate(Sender: TObject);
    procedure acFontNameUpdate(Sender: TObject);
    procedure bbFontColorClick(Sender: TObject);
    procedure beFontNameChange(Sender: TObject);
    procedure beFontSizeChange(Sender: TObject);
    procedure acExitExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure recRichEditControlSelectionChanged(Sender: TObject);
    procedure recRichEditControlZoomChanged(Sender: TObject);
    procedure bbTextHighlightClick(Sender: TObject);
    procedure recRichEditControlActiveViewChanged(Sender: TObject);
    procedure beFontNamePropertiesFontPreviewButtonClick(Sender: TObject; ButtonType: TcxFontButtonType);
    procedure recRichEditControlHyperlinkClick(Sender: TObject; const Args: TdxRichEditHyperlinkClickEventArgs);
    procedure recRichEditControlDocumentClosing(Sender: TObject; var CanClose: Boolean);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acPrintExecute(Sender: TObject);
    procedure acPrintPreviewExecute(Sender: TObject);
    procedure acPageSetupExecute(Sender: TObject);
    procedure bmbPageLayoutPageSetupCaptionButtons0Click(Sender: TObject);
  private
    FFontColorPicker: TPopupColorPickerController;
    FPageColorPicker: TSubItemColorPickerController;
    FTextHighlightColorPicker: TPopupColorPickerController;

    procedure CheckDocumentClosing(var CanClose: Boolean);
    procedure PageColorChangedHandler(Sender: TObject);
    procedure UpdateHeaderAndFooterContext;
    procedure UpdateRibbonContextsStates;
    procedure UpdateTableContext;
    procedure UpdateFontColor;
    procedure UpdateFontColorImage;
    procedure UpdateFontNameComboBoxPropertiesFontStyle(AStyle: TFontStyles; AChecked: Boolean);
    procedure UpdateTextHighlight;
    procedure UpdateTextHighlightImage;
    procedure UpdateZoom;
  end;

var
  frmRibbonRichEditForm: TfrmRibbonRichEditForm;

implementation

uses
  System.SysUtils, System.Variants, System.Types, cxGeometry, dxRichEdit.Commands.ChangeProperties,
  dxBarSkinConsts, dxCoreGraphics, Winapi.ShellAPI;

{$R *.dfm}

const
  ASaveDocumentQuery = 'Do you want to save changes to Document?';

procedure DrawHelpedColorLine(AGlyph: TdxSmartGlyph; AColor: TColor;
  AImageBasicGlyph: TcxImageList; AIndexBasicGlyph: Integer);
const
  ALineWidth = 14;
  ALineHeight = 3;
var
  ALineGlyph, ABasicGlyph: TcxAlphaBitmap;
begin
  ALineGlyph := TcxAlphaBitmap.Create;
  ABasicGlyph := TcxAlphaBitmap.Create;
  try
    AImageBasicGlyph.GetImageInfo(AIndexBasicGlyph, ABasicGlyph, nil);

    ALineGlyph.Height := ALineHeight;
    ALineGlyph.Width := ALineWidth;
    ALineGlyph.Canvas.Brush.Color := AColor;
    ALineGlyph.Canvas.FillRect(Rect(0, 0, ALineWidth, ALineHeight));
    ALineGlyph.RecoverAlphaChannel(clNone);

    cxBitBlt(ABasicGlyph.Canvas.Handle, ALineGlyph.Canvas.Handle, cxRectBounds(1, 13, ALineWidth, ALineHeight), Point(0, 0), SRCCOPY);
    AImageBasicGlyph.Draw(ABasicGlyph.Canvas, ABasicGlyph.ClientRect, AIndexBasicGlyph);

    AGlyph.Assign(ABasicGlyph);
  finally
    ABasicGlyph.Free;
    ALineGlyph.Free;
  end;
end;

function GetInitDocumentFileName: string;
begin
  Result := ExtractFilePath(Application.ExeName) + 'InitDocument.ini';
end;

function GetRecentDocumentsFileName: string;
begin
  Result := ExtractFilePath(Application.ExeName) + 'RecentDocuments.ini';
end;

{ TfrmRibbonRichEditForm }

procedure TfrmRibbonRichEditForm.CheckDocumentClosing(var CanClose: Boolean);
begin
  if RichEditControl.DocumentModelModified then
    case dxMessageDlg(ASaveDocumentQuery, mtWarning, mbYesNoCancel) of
      mrYes:
      begin
        acSave.Execute;
        CanClose := not RichEditControl.DocumentModelModified;
      end;
      mrCancel:
        CanClose := False;
    end;
end;

procedure TfrmRibbonRichEditForm.bbTextHighlightClick(Sender: TObject);
begin
  UpdateTextHighlight;
end;

procedure TfrmRibbonRichEditForm.PageColorChangedHandler(Sender: TObject);
begin
  acPageColor.UpdateTarget(RichEditControl);
  acPageColor.Value := dxColorToAlphaColor(FPageColorPicker.Color);
end;

procedure TfrmRibbonRichEditForm.UpdateHeaderAndFooterContext;
var
  AHeaderAndFooterContext: TdxRibbonContext;
begin
  AHeaderAndFooterContext := Ribbon.Contexts.Find('Header & Footer Tools');
  AHeaderAndFooterContext.Visible := RichEditControl.IsSelectionInHeaderOrFooter;
end;

procedure TfrmRibbonRichEditForm.UpdateRibbonContextsStates;
begin
  UpdateHeaderAndFooterContext;
  UpdateTableContext;
end;

procedure TfrmRibbonRichEditForm.UpdateTableContext;
var
  ATableToolsContext: TdxRibbonContext;
begin
  ATableToolsContext := Ribbon.Contexts.Find('Table Tools');
  ATableToolsContext.Visible := RichEditControl.IsSelectionInTable;
end;

procedure TfrmRibbonRichEditForm.UpdateFontColor;
begin
  acFontColor.UpdateTarget(RichEditControl);
  UpdateFontColorImage;
  acFontColor.Value := dxColorToAlphaColor(FFontColorPicker.Color);
end;

procedure TfrmRibbonRichEditForm.UpdateFontColorImage;
begin
  DrawHelpedColorLine(bbFontColor.Glyph, FFontColorPicker.Color,
    dmMain.ilBarSmall, acFontColor.ImageIndex);
end;

procedure TfrmRibbonRichEditForm.UpdateFontNameComboBoxPropertiesFontStyle(AStyle: TFontStyles; AChecked: Boolean);
var
  AFontPreview: TcxFontPreview;
begin
  AFontPreview := TcxCustomFontNameComboBoxProperties(beFontName.Properties).FontPreview;
  if AChecked then
    AFontPreview.FontStyle :=  AFontPreview.FontStyle + AStyle
  else
    AFontPreview.FontStyle := AFontPreview.FontStyle - AStyle;
end;

procedure TfrmRibbonRichEditForm.UpdateTextHighlight;
begin
  acTextHighlight.UpdateTarget(RichEditControl);
  UpdateTextHighlightImage;
  acTextHighlight.Value := dxColorToAlphaColor(FTextHighlightColorPicker.Color);
end;

procedure TfrmRibbonRichEditForm.UpdateTextHighlightImage;
begin
  DrawHelpedColorLine(bbTextHighlight.Glyph, FTextHighlightColorPicker.Color,
    dmMain.ilBarSmall, acTextHighlight.ImageIndex);
end;

procedure TfrmRibbonRichEditForm.UpdateZoom;
begin
  if RichEditControl.ActiveView.ZoomFactor > 5 then
    RichEditControl.ActiveView.ZoomFactor := 5;
  tbZoom.Position := Round(RichEditControl.ActiveView.ZoomFactor * 100);
end;

procedure TfrmRibbonRichEditForm.acExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmRibbonRichEditForm.acFontNameUpdate(Sender: TObject);
begin
  acFontName.UpdateTarget(RichEditControl);
  beFontName.EditValue := acFontName.Value;
  UpdateFontNameComboBoxPropertiesFontStyle([fsBold], acBold.Checked);
  UpdateFontNameComboBoxPropertiesFontStyle([fsItalic], acItalic.Checked);
  UpdateFontNameComboBoxPropertiesFontStyle([fsUnderline], acUnderline.Checked);
  UpdateFontNameComboBoxPropertiesFontStyle([fsStrikeout], acStrikeout.Checked);
end;

procedure TfrmRibbonRichEditForm.acFontSizeUpdate(Sender: TObject);
begin
  acFontSize.UpdateTarget(RichEditControl);
  if acFontSize.Value = TdxChangeFontSizeCommand.InvalidValue then
    beFontSize.EditValue := Null
  else
    beFontSize.EditValue := acFontSize.Value;
end;

procedure TfrmRibbonRichEditForm.acPageSetupExecute(Sender: TObject);
begin
  RichEditPrinterLink.PageSetup;
end;

procedure TfrmRibbonRichEditForm.acPrintExecute(Sender: TObject);
begin
  RichEditPrinterLink.Print(True, nil);
end;

procedure TfrmRibbonRichEditForm.acPrintPreviewExecute(Sender: TObject);
begin
  RichEditPrinterLink.Preview;
end;

procedure TfrmRibbonRichEditForm.recRichEditControlActiveViewChanged(Sender: TObject);
begin
  UpdateZoom;
end;

procedure TfrmRibbonRichEditForm.recRichEditControlDocumentClosing(Sender: TObject; var CanClose: Boolean);
begin
  CheckDocumentClosing(CanClose);
end;

procedure TfrmRibbonRichEditForm.recRichEditControlHyperlinkClick(Sender: TObject;
  const Args: TdxRichEditHyperlinkClickEventArgs);
begin
  if Args.Control then
  begin
    Args.Handled := True;
    Args.Hyperlink.Visited := True;
    ShellExecute(0, 'OPEN', PChar(Args.Hyperlink.NavigateUri), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmRibbonRichEditForm.recRichEditControlSelectionChanged(Sender: TObject);
begin
  UpdateRibbonContextsStates;
end;

procedure TfrmRibbonRichEditForm.recRichEditControlZoomChanged(Sender: TObject);
begin
  UpdateZoom;
end;

procedure TfrmRibbonRichEditForm.bbFontColorClick(Sender: TObject);
begin
  UpdateFontColor;
end;

procedure TfrmRibbonRichEditForm.beFontNameChange(Sender: TObject);
begin
  if IsWindowVisible(RichEditControl.Handle) then
  begin
    RichEditControl.SetFocus;
    acFontName.Value := beFontName.EditValue;
  end;
end;

procedure TfrmRibbonRichEditForm.beFontNamePropertiesFontPreviewButtonClick(
  Sender: TObject; ButtonType: TcxFontButtonType);
begin
  case ButtonType of
    cxfbtBold:
      acBold.Execute;
    cxfbtItalic:
      acItalic.Execute;
    cxfbtUnderline:
      acUnderline.Execute;
    else //cxfbtStrikeOut
      acStrikeout.Execute;
  end;
end;

procedure TfrmRibbonRichEditForm.beFontSizeChange(Sender: TObject);
begin
  if IsWindowVisible(RichEditControl.Handle) then
  begin
    RichEditControl.SetFocus;
    if VarIsNull(beFontSize.EditValue) then
      acFontSize.Value := TdxChangeFontSizeCommand.InvalidValue
    else
      acFontSize.Value := beFontSize.EditValue;
  end;
end;

procedure TfrmRibbonRichEditForm.bmbTableToolsCellSizeClick(
  Sender: TObject);
begin
  acShowTablePropertiesForm.Execute;
end;

procedure TfrmRibbonRichEditForm.RowsAndColumnsCaptionButtonsClick(
  Sender: TObject);
begin
  acInsertTableCellsForm.Execute;
end;

procedure TfrmRibbonRichEditForm.bmbHomeFontClick(Sender: TObject);
begin
  acFont.Execute;
end;

procedure TfrmRibbonRichEditForm.bmbHomeParagraphClick(Sender: TObject);
begin
  acParagraph.Execute;
end;

procedure TfrmRibbonRichEditForm.tbZoomPropertiesChange(Sender: TObject);
begin
  bsZoom.Caption := Format('%3d %%', [tbZoom.Position]);
  RichEditControl.ActiveView.ZoomFactor := tbZoom.Position / 100;
end;

procedure TfrmRibbonRichEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRibbonRichEditForm.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CheckDocumentClosing(CanClose);
end;

procedure TfrmRibbonRichEditForm.FormCreate(Sender: TObject);
begin
  inherited;
  tbZoom.Tag := tbZoom.Height;
  FFontColorPicker := TPopupColorPickerController.Create(ppmFontColor, rgiFontColor, rgiColorTheme,
    clNone, 'No Color');
  FFontColorPicker.OnColorChanged := bbFontColorClick;
  UpdateFontColorImage;
  FPageColorPicker := TSubItemColorPickerController.Create(bsiPageColor, rgiPageColor, rgiPageColorTheme,
    clWindow, 'No Color');
  FPageColorPicker.OnColorChanged := PageColorChangedHandler;
  FTextHighlightColorPicker := TPopupColorPickerController.Create(ppmTextHighlightColor, rgiTextHighlightColor,
    rgiTextHighlightColorTheme, clWindow, 'No Color');
  FTextHighlightColorPicker.OnColorChanged := bbTextHighlightClick;
  UpdateTextHighlightImage;
end;

procedure TfrmRibbonRichEditForm.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FTextHighlightColorPicker);
  FreeAndNil(FPageColorPicker);
  FreeAndNil(FFontColorPicker);
end;

procedure TfrmRibbonRichEditForm.bmbPageLayoutPageSetupCaptionButtons0Click(
  Sender: TObject);
begin
  acShowPageSetupForm.Execute;
end;

end.
