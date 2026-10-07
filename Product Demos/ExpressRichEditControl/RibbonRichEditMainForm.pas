unit RibbonRichEditMainForm;

interface

{$I cxVer.Inc}

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Vcl.Dialogs, System.Classes, Vcl.ActnList, Vcl.ImgList, Vcl.Controls, Vcl.Menus, Vcl.StdCtrls,
  dxDemoBaseMainForm, dxRibbonCustomizationForm, dxRibbonSkins, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore,
  dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, ColorPicker,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers, dxCustomFrame,
  dxPScxExtEditorProducers, cxFontNameComboBox, cxDropDownEdit, dxRibbon, Vcl.Graphics,
  dxScreenTip, dxRichEdit.Actions, dxActions, dxBarExtItems, dxRibbonGallery,
  dxBar, cxBarEditItem, dxNavBarBase, dxNavBarCollns, dxLayoutLookAndFeels,
  dxBarApplicationMenu, dxRichEdit.Control,
  dxSkinsForm, dxPgsDlg, dxPSCore, dxLayoutContainer, cxTextEdit, dxRichEdit.Types,
  dxLayoutControl, dxNavBar, dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses,
  RibbonRichEditDemoOptions, MainData, dxCustomHint, cxHint, dxPSRichEditControlLnk,
  dxRibbonColorGallery, cxImageComboBox, dxRichEditFrame, cxCheckBox,
  dxLayoutControlAdapters, dxPrinting, cxImageList, cxImage, cxButtons, dxNavBarStyles,
  dxOfficeSearchBox, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl,
  dxBevel, cxLabel, cxGroupBox, dxRibbonBackstageView, dxRichEdit.DocumentModel.Styles.Core, dxShellDialogs,
  System.Actions, dxSkinsCore, System.ImageList;

type
  { TfrmRibbonRichEditMain }

  TfrmRibbonRichEditMain = class(TfrmMainBase)
    bmbHomeClipboard: TdxBar;
    bmbHomeEditing: TdxBar;
    bmbHomeParagraph: TdxBar;
    bmbHomeFont: TdxBar;
    dxbSelectionTools: TdxBar;
    dxbRibbonOptions: TdxBar;
    dxbQATOptions: TdxBar;
    dxbColorScheme: TdxBar;
    bmbFileCommon: TdxBar;
    bmbInsertPages: TdxBar;
    bmbInsertTables: TdxBar;
    bmbInsertIllustrations: TdxBar;
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
    bbRibbonForm: TdxBarLargeButton;
    bbQATVisible: TdxBarLargeButton;
    bbQATAboveRibbon: TdxBarButton;
    bbQATBelowRibbon: TdxBarButton;
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
    bbRadialMenuAligns: TdxBarSubItem;
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
    acQATAboveRibbon: TAction;
    acQATBelowRibbon: TAction;
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
    rtFile: TdxRibbonTab;
    rtHome: TdxRibbonTab;
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
    rtAppearance: TdxRibbonTab;
    stBarScreenTips: TdxScreenTipRepository;
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
    stRibbonForm: TdxScreenTip;
    stAppButton: TdxScreenTip;
    stQAT: TdxScreenTip;
    stQATBelow: TdxScreenTip;
    stQATAbove: TdxScreenTip;
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
    ilSmallColorSchemesGlyphs: TcxImageList;
    ilLargeColorSchemesGlyphs: TcxImageList;
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
    nvgHighlightedFeatures: TdxNavBarGroup;
    nvgEditingFeatures: TdxNavBarGroup;
    nvgLayoutAndNavigation: TdxNavBarGroup;
    nvgRestriction: TdxNavBarGroup;
    nvgMailMerge: TdxNavBarGroup;
    nvgDocumentManagement: TdxNavBarGroup;
    acShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    acShowAllFieldResults: TdxRichEditControlShowAllFieldResults;
    acShowAllFieldCodes: TdxRichEditControlShowAllFieldCodes;
    acShowInsertMergeFieldForm: TdxRichEditControlShowInsertMergeFieldForm;
    acToggleViewMergedData: TdxRichEditControlToggleViewMergedData;
    bbInsertMergeField: TdxBarLargeButton;
    bbShowAllFieldCodes: TdxBarLargeButton;
    bbShowAllFieldResults: TdxBarLargeButton;
    bbViewMergedData: TdxBarLargeButton;
    acInsertFloatingObjectPicture: TdxRichEditControlInsertFloatingObjectPicture;
    bbFloatingObjectPicture: TdxBarLargeButton;
    acFloatingObjectLayoutOptionsForm: TdxRichEditControlShowFloatingObjectLayoutOptionsForm;
    acFloatingObjectSquareTextWrapType: TdxRichEditControlSetFloatingObjectSquareTextWrapType;
    acFloatingObjectBehindTextWrapType: TdxRichEditControlSetFloatingObjectBehindTextWrapType;
    acFloatingObjectInFrontOfTextWrapType: TdxRichEditControlSetFloatingObjectInFrontOfTextWrapType;
    acFloatingObjectThroughTextWrapType: TdxRichEditControlSetFloatingObjectThroughTextWrapType;
    acFloatingObjectTightTextWrapType: TdxRichEditControlSetFloatingObjectTightTextWrapType;
    acFloatingObjectTopAndBottomTextWrapType: TdxRichEditControlSetFloatingObjectTopAndBottomTextWrapType;
    acFloatingObjectTopLeftAlignment: TdxRichEditControlSetFloatingObjectTopLeftAlignment;
    acFloatingObjectTopCenterAlignment: TdxRichEditControlSetFloatingObjectTopCenterAlignment;
    acFloatingObjectTopRightAlignment: TdxRichEditControlSetFloatingObjectTopRightAlignment;
    acFloatingObjectMiddleLeftAlignment: TdxRichEditControlSetFloatingObjectMiddleLeftAlignment;
    acFloatingObjectMiddleCenterAlignment: TdxRichEditControlSetFloatingObjectMiddleCenterAlignment;
    acFloatingObjectMiddleRightAlignment: TdxRichEditControlSetFloatingObjectMiddleRightAlignment;
    acFloatingObjectBottomLeftAlignment: TdxRichEditControlSetFloatingObjectBottomLeftAlignment;
    acFloatingObjectBottomCenterAlignment: TdxRichEditControlSetFloatingObjectBottomCenterAlignment;
    acFloatingObjectBottomRightAlignment: TdxRichEditControlSetFloatingObjectBottomRightAlignment;
    acFloatingObjectBringForward: TdxRichEditControlFloatingObjectBringForward;
    acFloatingObjectBringToFront: TdxRichEditControlFloatingObjectBringToFront;
    acFloatingObjectBringInFrontOfText: TdxRichEditControlFloatingObjectBringInFrontOfText;
    acFloatingObjectSendBackward: TdxRichEditControlFloatingObjectSendBackward;
    acFloatingObjectSendToBack: TdxRichEditControlFloatingObjectSendToBack;
    acFloatingObjectSendBehindText: TdxRichEditControlFloatingObjectSendBehindText;
    bsiWrapText: TdxBarSubItem;
    bsiPosition: TdxBarSubItem;
    bsiBringToFront: TdxBarSubItem;
    bsiSendToBack: TdxBarSubItem;
    bbSquare: TdxBarLargeButton;
    bbTight: TdxBarLargeButton;
    bbThrough: TdxBarLargeButton;
    bbTopAndBottom: TdxBarLargeButton;
    bbBehindText: TdxBarLargeButton;
    bbInFrontOfText: TdxBarLargeButton;
    bbFloatingObjectTopLeft: TdxBarLargeButton;
    bbFloatingObjectTopCenter: TdxBarLargeButton;
    bbFloatingObjectTopRight: TdxBarLargeButton;
    bbFloatingObjectMiddleLeft: TdxBarLargeButton;
    bbFloatingObjectMiddleCenter: TdxBarLargeButton;
    bbFloatingObjectMiddleRight: TdxBarLargeButton;
    bbFloatingObjectBottomLeft: TdxBarLargeButton;
    bbFloatingObjectBottomCenter: TdxBarLargeButton;
    bbFloatingObjectBottomRight: TdxBarLargeButton;
    bbBringForward: TdxBarLargeButton;
    bbBringToFront: TdxBarLargeButton;
    bbBringInFrontOfText: TdxBarLargeButton;
    bbSendBackward: TdxBarLargeButton;
    bbSendToBack: TdxBarLargeButton;
    bbSendBehindText: TdxBarLargeButton;
    bbTextBox: TdxBarLargeButton;
    acTextBox: TdxRichEditControlInsertTextBox;
    acShowBookmarkForm: TdxRichEditControlShowBookmarkForm;
    bbBookmarks: TdxBarLargeButton;
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
    bbLineNumberingOptions: TdxBarLargeButton;
    acLineNumbering: TdxRichEditControlShowLineNumberingForm;
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
    bmbMergeTo: TdxBar;
    acMergeDatabaseRecords: TdxRichEditControlShowMergeDatabaseRecordsForm;
    bbMailMerge: TdxBarLargeButton;
    bbSpelling: TdxBarLargeButton;
    acCheckSpelling: TdxRichEditControlCheckSpelling;
    bmbAutoCorrect: TdxBar;
    acShowPrintForm: TdxRichEditControlShowPrintForm;
    acShowPrintPreviewForm: TdxRichEditControlShowPrintPreviewForm;
    bbShowPrintForm: TdxBarLargeButton;
    bbShowPrintPreviewForm: TdxBarLargeButton;
    bbPageSetup: TdxBarLargeButton;
    bbViewGridLines: TdxBarLargeButton;
    acShowTableGridLines: TdxRichEditControlToggleShowTableGridLines;
    acChangeFloatingObjectFillColor: TdxRichEditControlChangeFloatingObjectFillColor;
    acChangeFloatingObjectOutlineColor: TdxRichEditControlChangeFloatingObjectOutlineColor;
    bbWidthLines: TcxBarEditItem;
    ilWidthLines: TcxImageList;
    acOutlineWidth: TdxRichEditControlChangeFloatingObjectOutlineWidth;
    ppmFloatingObjectFillColor: TdxRibbonPopupMenu;
    ppmFloatingObjectOutlineColor: TdxRibbonPopupMenu;
    bbFloatingObjectFillColor: TdxBarButton;
    bbFloatingObjectOutlineColor: TdxBarButton;
    rgiFloatingObjectFillColor: TdxRibbonGalleryItem;
    rgiFloatingObjectOutlineColor: TdxRibbonGalleryItem;
    rgiFloatingObjectFillColorTheme: TdxRibbonGalleryItem;
    rgiFloatingObjectOutlineColorTheme: TdxRibbonGalleryItem;
    bbTableOfContents: TdxBarLargeButton;
    bbUpdateTable: TdxBarLargeButton;
    acTableOfContents: TdxRichEditControlInsertTableOfContents;
    acUpdateTableOfContents: TdxRichEditControlUpdateTableOfContents;
    acTableOfContentsSetParagraphBodyTextLevel: TdxRichEditControlTableOfContentsSetParagraphBodyTextLevel;
    acTableOfContentsSetParagraphHeading1Level1: TdxRichEditControlTableOfContentsSetParagraphHeading1Level;
    acTableOfContentsSetParagraphHeading2Level1: TdxRichEditControlTableOfContentsSetParagraphHeading2Level;
    acTableOfContentsSetParagraphHeading3Level1: TdxRichEditControlTableOfContentsSetParagraphHeading3Level;
    acTableOfContentsSetParagraphHeading4Level1: TdxRichEditControlTableOfContentsSetParagraphHeading4Level;
    acTableOfContentsSetParagraphHeading5Level1: TdxRichEditControlTableOfContentsSetParagraphHeading5Level;
    acTableOfContentsSetParagraphHeading6Level1: TdxRichEditControlTableOfContentsSetParagraphHeading6Level;
    acTableOfContentsSetParagraphHeading7Level1: TdxRichEditControlTableOfContentsSetParagraphHeading7Level;
    acTableOfContentsSetParagraphHeading8Level1: TdxRichEditControlTableOfContentsSetParagraphHeading8Level;
    acTableOfContentsSetParagraphHeading9Level1: TdxRichEditControlTableOfContentsSetParagraphHeading9Level;
    bsiAddText: TdxBarSubItem;
    bbTableOfContentNoShow: TdxBarLargeButton;
    bbTableOfContentLevel1: TdxBarLargeButton;
    bbTableOfContentLevel2: TdxBarLargeButton;
    bbTableOfContentLevel3: TdxBarLargeButton;
    bbTableOfContentLevel4: TdxBarLargeButton;
    bbTableOfContentLevel5: TdxBarLargeButton;
    bbTableOfContentLevel6: TdxBarLargeButton;
    bbTableOfContentLevel7: TdxBarLargeButton;
    bbTableOfContentLevel8: TdxBarLargeButton;
    bbTableOfContentLevel9: TdxBarLargeButton;
    acInsertFiguresCaption: TdxRichEditControlInsertFigureCaption;
    acInsertTablesCaption: TdxRichEditControlInsertTableCaption;
    acInsertEquationsCaption: TdxRichEditControlInsertEquationCaption;
    acInsertTableOfFigures: TdxRichEditControlInsertTableOfFigures;
    acInsertTableOfTables: TdxRichEditControlInsertTableOfTables;
    acInsertTableOfEquations: TdxRichEditControlInsertTableOfEquations;
    acUpdateTableOfFigures: TdxRichEditControlUpdateTableOfFigures;
    bsiInsertCaption: TdxBarSubItem;
    bsiInsertTableOfFigures: TdxBarSubItem;
    bbFiguresCaption: TdxBarLargeButton;
    bbTablesCaption: TdxBarLargeButton;
    bbEquationsCaption: TdxBarLargeButton;
    bbTableOfFigures: TdxBarLargeButton;
    bbTableOfTables: TdxBarLargeButton;
    bbTableOfEquations: TdxBarLargeButton;
    bbUpdateTableOfFigures: TdxBarLargeButton;
    bmbProtect: TdxBar;
    bmbComment: TdxBar;
    bbProtectDocument: TdxBarLargeButton;
    bbRangeEditingPermissions: TdxBarLargeButton;
    bbUnprotectDocument: TdxBarLargeButton;
    bbNewComment: TdxBarLargeButton;
    bbDelete: TdxBarLargeButton;
    bbPrevious: TdxBarLargeButton;
    bbNext: TdxBarLargeButton;
    acProtectDocument: TdxRichEditControlProtectDocument;
    acUnprotectDocument: TdxRichEditControlUnprotectDocument;
    acRangeEditingPermissions: TdxRichEditControlShowRangeEditingPermissions;
    acEncryptDocument: TdxRichEditControlEncryptDocument;
    bbEncrypt: TdxBarLargeButton;
    bbCheckAsYouType: TdxBarLargeButton;
    beiReplaceAsYouType: TcxBarEditItem;
    beiCorrectInitialCaps: TcxBarEditItem;
    beiUseSpellCheckerSuggestions: TcxBarEditItem;
    beiCorrectSentenceCaps: TcxBarEditItem;
    beiCorrectCapsLock: TcxBarEditItem;
    bmbTabAreaSearchToolbar: TdxBar;
    beOfficeSearchBox: TcxBarEditItem;
    dxRichEditControlQuickStylesGallery: TdxRichEditControlQuickStylesGallery;
    dxBarStyles: TdxBar;
    dxRibbonGalleryItemQuickStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemQuickStylesGroup1: TdxRibbonGalleryGroup;
    dxRichEditControlPageMarginsGallery: TdxRichEditControlPageMarginsGallery;
    dxRibbonGalleryItemMargins: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRichEditControlPaperSizeGallery: TdxRichEditControlPaperSizeGallery;
    dxRibbonGalleryItemSize: TdxRibbonGalleryItem;
    dxRibbonGalleryItemSizeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemSizeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemSizeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRichEditControlTableStylesGallery: TdxRichEditControlTableStylesGallery;
    dxRibbonGalleryItemTableStyles: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTableStylesGroup1: TdxRibbonGalleryGroup;
    barSearchOptions: TdxBar;
    biRecursiveSearch: TdxBarLargeButton;
    biShowPaths: TdxBarLargeButton;
    rgiOrientation: TdxRibbonGalleryItem;
    rgiOrientationGroup1: TdxRibbonGalleryGroup;
    rgiOrientationGroup1Item1: TdxRibbonGalleryGroupItem;
    rgiOrientationGroup1Item2: TdxRibbonGalleryGroupItem;
    ppmQuickStyles: TdxRibbonPopupMenu;
    bbModifyStyle: TdxBarButton;
    bbRenameStyle: TdxBarButton;
    bcUser: TcxBarEditItem;
    procedure bbOptionsClick(Sender: TObject);
    procedure bbQATVisibleClick(Sender: TObject);
    procedure bbRibbonFormClick(Sender: TObject);
    procedure bmbHomeFontClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acQATBelowRibbonExecute(Sender: TObject);
    procedure acQATAboveRibbonUpdate(Sender: TObject);
    procedure bmbHomeParagraphClick(Sender: TObject);
    procedure bmbTableToolsCellSizeClick(Sender: TObject);
    procedure RowsAndColumnsCaptionButtonsClick(Sender: TObject);
    procedure bbFontColorClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure recRichEditControlSelectionChanged(Sender: TObject);
    procedure bbTextHighlightClick(Sender: TObject);
    procedure dxRibbon1HelpButtonClick(Sender: TdxCustomRibbon);
    procedure recRichEditControlHyperlinkClick(Sender: TObject; const Args: TdxRichEditHyperlinkClickEventArgs);
    procedure ComponentPrinterBeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
    procedure FormShow(Sender: TObject);
    procedure bmbPageLayoutPageSetupCaptionButtons0Click(Sender: TObject);
    procedure bmbPictureToolsArrangeCaptionButtons0Click(Sender: TObject);
    procedure bbFloatingObjectOutlineColorClick(Sender: TObject);
    procedure bbFloatingObjectFillColorClick(Sender: TObject);
    procedure ShowExpressPrintingMessage(Sender: TObject);
    procedure bcUserChange(Sender: TObject);
    procedure bbCheckAsYouTypeClick(Sender: TObject);
    procedure AutoCorrectChange(Sender: TObject);
    procedure bmbAutoCorrectCaptionButtons0Click(Sender: TObject);
    procedure biRecursiveSearchClick(Sender: TObject);
    procedure biShowPathsClick(Sender: TObject);
    procedure bbModifyStyleClick(Sender: TObject);
    procedure bbRenameStyleClick(Sender: TObject);
    procedure dxRibbonGalleryItemQuickStylesShowPopupMenu(Sender: TObject; var APopupMenu: TdxBarCustomPopupMenu;
      var APopupPoint: TPoint; AHotGroupItem: TdxRibbonGalleryGroupItem);
  private
    FFontColorPicker: TPopupColorPickerController;
    FPageColorPicker: TSubItemColorPickerController;
    FTextHighlightColorPicker: TPopupColorPickerController;
    FFloatingObjectFillColorPicker: TPopupColorPickerController;
    FFloatingObjectOutlineColorPicker: TPopupColorPickerController;
    FFrameUpdating: Boolean;
    FSpellingOptionsUpdateCount: Integer;

    function GetActiveFrame: TfrmCustomFrame;
    function GetActiveFrameID: Integer;
    function GetActiveRichEdit: TdxRichEditControl;
    function GetRibbonDemoStyle: TRibbonDemoStyle;
    procedure PageColorChangedHandler(Sender: TObject);
    procedure SetRibbonDemoStyle(AStyle: TRibbonDemoStyle);

    //update options
    procedure UpdateBarButtonsVisibility;
    procedure UpdateBarsVisibility;
    procedure UpdateFloatingObjectFillColor;
    procedure UpdateFloatingObjectFillColorImage;
    procedure UpdateFloatingObjectOutlineColor;
    procedure UpdateFloatingObjectOutlineColorImage;
    procedure UpdateFontColor;
    procedure UpdateFontColorImage;
    procedure UpdateDocumentUsers;
    procedure UpdateRibbonContextsStates;
    procedure UpdateTabFileVisibility;
    procedure UpdateTabHomeVisibility;
    procedure UpdateTabInsertVisibility;
    procedure UpdateTabMailMergeVisibility;
    procedure UpdateTabPageLayoutVisibility;
    procedure UpdateTabReferencesVisibility;
    procedure UpdateTabReviewVisibility;
    procedure UpdateTabsVisibility;
    procedure UpdateTabViewVisibility;
    procedure UpdateTextHighlight;
    procedure UpdateTextHighlightImage;
    procedure UpdateSpellingOptionsStates;
    procedure UpdateOfficeSearchBoxProperties;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure DocumentUsersUpdatedHandler(AUsers: TStrings); virtual;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetDemoCaption: string; override;
    function GetProtectUserProperties: TcxComboBoxProperties;
    function GetSkinsMenuItemsBar: TdxBar; override;
    function GetTextStyleByQuickStyleItem(AItem: TdxRibbonGalleryGroupItem): TdxStyleBase; virtual;
    procedure InitNavBar; override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsBarOptionsVisible: Boolean; override;
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;
    function IsSpellingOptionsUpdating: Boolean;
    procedure ShowFrame(FrameID: Integer);
    procedure SynchronizeFrameChoosers(FrameID: Integer);
    procedure UpdateQuickStyleItemByStyle(AItem: TdxRibbonGalleryGroupItem; AStyle: TdxStyleBase); virtual;

    property ActiveFrame: TfrmCustomFrame read GetActiveFrame;
    property ActiveFrameID: Integer read GetActiveFrameID;
    property ActiveReportLink: TBasedxReportLink read GetActiveReportLink;
    property ActiveRichEdit: TdxRichEditControl read GetActiveRichEdit;
    property RibbonDemoStyle: TRibbonDemoStyle read GetRibbonDemoStyle write SetRibbonDemoStyle;
  public
    procedure UpdateBaseMenuOptions; override;
    procedure AfterConstruction; override;
  end;

var
  frmRibbonRichEditMain: TfrmRibbonRichEditMain;

implementation

uses
  System.Types, Vcl.Forms, System.Variants, System.SysUtils, cxGeometry, dxSkinsdxBarPainter, dxSpellCheckerDialogs,
  dxSkinscxPCPainter, dxRichEdit.Commands.ChangeProperties, dxBarSkinConsts,
  dxCoreGraphics, dxAboutDemo, Winapi.ShellAPI, dxFrames, FrameIDs, dxDemoUtils, uDocumentProtection,
  dxRichEdit.Commands.Dialogs, dxRichEdit.DocumentModel.Styles, dxInputDialogs;

{$R *.dfm}

type
  TdxNavBarViewInfoAccess = class(TdxNavBarViewInfo);
  TdxShowEditStyleFormCommandAccess = class(TdxShowEditStyleFormCommand);
  TdxRibbonGalleryGroupItemAccess = class(TdxRibbonGalleryGroupItem);
  TdxRichEditControlQuickStylesGalleryAccess = class(TdxRichEditControlQuickStylesGallery);

{ TfrmRibbonRichEditMain }

procedure TfrmRibbonRichEditMain.UpdateBaseMenuOptions;
begin
  inherited UpdateBaseMenuOptions;
  //use rich actions
  biPrintPreview.Visible := ivNever;
  biPrint.Visible := ivNever;
  biPageSetup.Visible := ivNever;

  if dxFrameManager.ActiveFrame <> nil then
  begin
    UpdateSpellingOptionsStates;
    //bsUsers update - need before update ribbon
    UpdateDocumentUsers;
    //Ribbon update
    UpdateTabsVisibility;
    UpdateBarsVisibility;
    UpdateBarButtonsVisibility;
  end;
end;

function TfrmRibbonRichEditMain.GetSkinsMenuItemsBar: TdxBar;
begin
  Result := dxbColorScheme;
end;

function TfrmRibbonRichEditMain.GetTextStyleByQuickStyleItem(AItem: TdxRibbonGalleryGroupItem): TdxStyleBase;
var
  ACommand: TdxShowEditStyleFormCommandAccess;
  AStyleName: string;
begin
  ACommand := TdxShowEditStyleFormCommandAccess.Create(ActiveRichEdit);
  try
    AStyleName := VarToStr(TdxRibbonGalleryGroupItemAccess(AItem).FActionIndex);
    if TdxStyleType(AItem.Tag) = TdxStyleType.ParagraphStyle then
      Result := ActiveRichEdit.DocumentModel.ParagraphStyles.GetStyleByName(AStyleName)
    else
      if TdxStyleType(AItem.Tag) = TdxStyleType.CharacterStyle then
        Result := ActiveRichEdit.DocumentModel.CharacterStyles.GetStyleByName(AStyleName)
      else
        Result := nil;
  finally
    ACommand.Free;
  end;
end;

procedure TfrmRibbonRichEditMain.InitNavBar;
var
  I: Integer;
  AFrameInfo: TdxFrameInfo;
  AItem: TdxNavBarItem;

  procedure CheckSideBarGroup(AGroupIndex: Integer);
  begin
    if (AGroupIndex < NavBar.Groups.Count) and (AGroupIndex > -1) then
      NavBar.Groups[AGroupIndex].CreateLink(AItem);
  end;

begin
  inherited InitNavBar;
  for I := 0 to dxFrameManager.Count - 1 do
  begin
    AFrameInfo := dxFrameManager[I];
    AItem := NavBar.Items.Add;
    AItem.Caption := AFrameInfo.Caption;
    AItem.Tag := AFrameInfo.ID;
    AItem.CustomStyles.Item := nbsItemStyle;
    AItem.CustomStyles.ItemDisabled := nbsItemStyle;
    AItem.CustomStyles.ItemHotTracked := nbsItemStyle;
    AItem.CustomStyles.ItemPressed := nbsItemStyle;
    CheckSideBarGroup(AFrameInfo.SideBarGroupIndex);
    CheckSideBarGroup(AFrameInfo.SideBarFirstAdditionalGroupIndex);
    CheckSideBarGroup(AFrameInfo.SideBarSecondAdditionalGroupIndex);
  end;
  for I := NavBar.Groups.Count - 1 downto 0 do
    if not NavBar.Groups[I].Visible then
      NavBar.Groups[I].Free;
  NavBar.ActiveGroupIndex := 0;
end;

function TfrmRibbonRichEditMain.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
end;

function TfrmRibbonRichEditMain.IsBarOptionsVisible: Boolean;
begin
  Result := True;
end;

function TfrmRibbonRichEditMain.IsExportOptionsAvailable: Boolean;
begin
  Result := False;
end;

function TfrmRibbonRichEditMain.IsPrintOptionsAvailable: Boolean;
begin
  Result := ActiveReportLink <> nil;
end;

function TfrmRibbonRichEditMain.IsSpellingOptionsUpdating: Boolean;
begin
  Result := FSpellingOptionsUpdateCount > 0;
end;

procedure TfrmRibbonRichEditMain.DocumentUsersUpdatedHandler(AUsers: TStrings);
begin
  GetProtectUserProperties.Items.Assign(AUsers);
  if GetProtectUserProperties.Items.Count > 0 then
    bcUser.ItemIndex := 0
  else
    bcUser.ItemIndex := -1;
end;

procedure TfrmRibbonRichEditMain.ShowFrame(FrameID: Integer);
var
  ANavBarDragDropFlags: TdxNavBarDragDropFlags;
begin
  if FFrameUpdating or (ActiveFrame <> nil) and not ActiveFrame.CanDeactivate then
    Exit;
  FFrameUpdating := True;
  try
    dxRibbon1.BeginUpdate;
    dxBarManager.BeginUpdate;
    try
      if (dxFrameManager.ActiveFrameInfo = nil) or (dxFrameManager.ActiveFrameInfo.ID <> FrameID) then
      begin
        ANavBarDragDropFlags := NavBar.DragDropFlags;
        NavBar.DragDropFlags := [];
        try
          LockWindowUpdate(Handle);
          dxFrameManager.ShowFrame(FrameID, plClient, dxRibbon1);
        finally
          LockWindowUpdate(0);
          NavBar.DragDropFlags := ANavBarDragDropFlags;
        end;

        if ActiveFrame <> nil then
        begin
          ActiveFrame.OnDocumentUsersUpdated := DocumentUsersUpdatedHandler;
          Application.ProcessMessages;
          ActiveFrame.AfterShow;
        end;
      end;
      UpdateInspectedObject;
    finally
      dxBarManager.EndUpdate;
      dxRibbon1.EndUpdate;
    end;
  finally
    FFrameUpdating := False;
  end;
  Caption := GetMainFormCaption + ' - ' + GetDemoCaption;
end;

procedure TfrmRibbonRichEditMain.SynchronizeFrameChoosers(FrameID: Integer);

  function CheckSelectedLink(AGroup: TdxNavBarGroup): Boolean;
  var
    ALinkIndex: Integer;
    ALink: TdxNavBarItemLink;
  begin
    Result := False;
    for ALinkIndex := 0 to AGroup.LinkCount - 1 do
    begin
      ALink := AGroup.Links[ALinkIndex];
      ALink.Selected := ALink.Item.Tag = FrameID;
      if ALink.Selected then
      begin
        TdxNavBarViewInfoAccess(NavBar.ViewInfo).MakeLinkVisible(ALink, False);
        Result := True;
      end;
    end;
  end;

var
  AGroupIndex: Integer;
begin
  for AGroupIndex := 0 to NavBar.Groups.Count - 1 do
    if CheckSelectedLink(NavBar.Groups[AGroupIndex]) then
      Break;
end;

procedure TfrmRibbonRichEditMain.UpdateQuickStyleItemByStyle(AItem: TdxRibbonGalleryGroupItem; AStyle: TdxStyleBase);
var
  ABitmap: TcxAlphaBitmap;
begin
  AItem.Caption := AStyle.StyleName;
  TdxRibbonGalleryGroupItemAccess(AItem).FActionIndex := AStyle.StyleName;
  ABitmap := TdxRichEditControlQuickStylesGalleryAccess(dxRichEditControlQuickStylesGallery).CreateStylePreview(AStyle);
  try
    AItem.Glyph.Assign(ABitmap);
  finally
    ABitmap.Free;
  end;
end;

function TfrmRibbonRichEditMain.GetActiveFrame: TfrmCustomFrame;
begin
  Result := dxFrameManager.ActiveFrame;
end;

function TfrmRibbonRichEditMain.GetActiveFrameID: Integer;
begin
  Result := dxFrameManager.ActiveFrameID;
end;

procedure TfrmRibbonRichEditMain.ActivateDemo(AID: Integer);
var
  AActiveFrame: TfrmCustomFrame;
begin
  if AID > 0 then
  begin
    AActiveFrame := ActiveFrame;
    ShowFrame(AID);
    if ActiveFrame <> AActiveFrame then
      UpdateBaseMenuOptions;
  end;
end;

procedure TfrmRibbonRichEditMain.AfterConstruction;
begin
  inherited;
  UpdateFloatingObjectFillColorImage;
  UpdateFloatingObjectOutlineColorImage;
  UpdateFontColorImage;
  UpdateTextHighlightImage;
  UpdateOfficeSearchBoxProperties;
end;

procedure TfrmRibbonRichEditMain.CustomizeSetupRibbonGroups;
begin
  inherited;
  biFullWindowMode.Visible := ivAlways;
  biShowInspector.Visible := ivNever;
end;

procedure TfrmRibbonRichEditMain.AutoCorrectChange(Sender: TObject);
begin
  if not IsSpellingOptionsUpdating then
  begin
    dmMain.SpellChecker.AutoCorrectOptions.AutomaticallyUseSuggestions := beiUseSpellCheckerSuggestions.EditValue;
    dmMain.SpellChecker.AutoCorrectOptions.CorrectCapsLock := beiCorrectCapsLock.EditValue;
    dmMain.SpellChecker.AutoCorrectOptions.CorrectInitialCaps := beiCorrectInitialCaps.EditValue;
    dmMain.SpellChecker.AutoCorrectOptions.CorrectSentenceCaps := beiCorrectSentenceCaps.EditValue;
    dmMain.SpellChecker.AutoCorrectOptions.ReplaceTextAsYouType := beiReplaceAsYouType.EditValue;
  end;
  UpdateSpellingOptionsStates;
end;

function TfrmRibbonRichEditMain.GetActiveReportLink: TBasedxReportLink;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.ReportLink
  else
    Result := nil;
end;

function TfrmRibbonRichEditMain.GetDemoCaption: string;
begin
  if ActiveFrame <> nil then
    Result := ActiveFrame.Caption
  else
    Result := inherited GetDemoCaption;
end;

function TfrmRibbonRichEditMain.GetProtectUserProperties: TcxComboBoxProperties;
begin
  Result:= bcUser.Properties as TcxComboBoxProperties;
end;

function TfrmRibbonRichEditMain.GetActiveRichEdit: TdxRichEditControl;
begin
  Result := ActiveFrame.ActiveRichEdit;
end;

procedure TfrmRibbonRichEditMain.ComponentPrinterBeforePreview(Sender: TObject; AReportLink: TBasedxReportLink);
var
  AForm: TCustomForm;
begin
  AForm := GetParentForm(AReportLink.PreviewWindow);
  if AForm is TdxRibbonPrintPreviewForm then
    TdxRibbonPrintPreviewForm(AForm).dxRibbon.ColorSchemeAccent := rcsaBlue;
end;

procedure TfrmRibbonRichEditMain.bbTextHighlightClick(Sender: TObject);
begin
  UpdateTextHighlight;
end;

procedure TfrmRibbonRichEditMain.bcUserChange(Sender: TObject);
var
  S: string;
begin
  if bcUser.ItemIndex >= 0 then
    S := bcUser.EditValue
  else
    S := '';
  ActiveRichEdit.DocumentModel.History.Clear;
  ActiveFrame.UpdateDocumentActiveUser(S);
end;

function TfrmRibbonRichEditMain.GetRibbonDemoStyle: TRibbonDemoStyle;
begin
  case dxRibbon1.Style of
    rs2007:
      Result := rdsOffice2007;
    rs2013:
      Result := rdsOffice2013;
    rs2016:
      Result := rdsOffice2016;
    rs2016Tablet:
      Result := rdsOffice2016Tablet;
    rs2019:
      Result := rdsOffice2019;
    rsOffice365:
      Result := rdsOffice365;
  else
    if dxRibbon1.EnableTabAero then
      Result := rdsOffice2010
    else
      Result := rdsScenic;
  end;
end;

procedure TfrmRibbonRichEditMain.PageColorChangedHandler(Sender: TObject);
begin
  acPageColor.UpdateTarget(ActiveRichEdit);
  acPageColor.Value := dxColorToAlphaColor(FPageColorPicker.Color);
end;

procedure TfrmRibbonRichEditMain.SetRibbonDemoStyle(AStyle: TRibbonDemoStyle);
const
  NamesMap: array[TdxRibbonStyle] of string = (
    'RIBBONAPPGLYPH', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010',
    'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010', 'RIBBONAPPGLYPH2010'
  );
  PreviewWindowMap: array[TRibbonDemoStyle] of string = (
    'Ribbon', 'Ribbon2010', 'Ribbon2013', 'Ribbon2016', 'Ribbon2016Tablet', 'Ribbon2019', 'Ribbon2010', 'RibbonOffice365'
  );
begin
  if RibbonDemoStyle = AStyle then
    Exit;
  dxBarManager.BeginUpdate;
  try
    dxRibbon1.Style := RibbonDemoStyleToRibbonStyle[AStyle];
    dxRibbon1.EnableTabAero := not (AStyle in [rdsOffice2007, rdsScenic]);

    dxRibbon1.ApplicationButton.Glyph.LoadFromResource(HInstance, NamesMap[dxRibbon1.Style], RT_BITMAP);
    dxRibbon1.ApplicationButton.StretchGlyph := dxRibbon1.Style = rs2007;
    dxRibbon1.TabAreaToolbar.Visible := dxRibbon1.Style >= rs2016;
    dxRibbon1.TabAreaSearchToolbar.Visible := dxRibbon1.Style >= rs2016;
    barSearchOptions.Visible := dxRibbon1.Style >= rs2016;
    DisableAero := AStyle in [rdsOffice2013, rdsOffice2016, rdsOffice2016Tablet, rdsOffice2019, rdsOffice365];
  finally
    dxBarManager.EndUpdate;
  end;
end;

procedure TfrmRibbonRichEditMain.UpdateBarButtonsVisibility;
begin
  if ActiveFrameID in [RichEditBulletsAndNumberingID] then
    bsiLineSpacing.Visible := ivNever
  else
    bsiLineSpacing.Visible := ivAlways;

  acAlignLeft.Visible := not (ActiveFrameID in [RichEditBulletsAndNumberingID]);
  acAlignCenter.Visible := acAlignLeft.Visible;
  acAlignRight.Visible := acAlignLeft.Visible;
  acJustify.Visible := acAlignLeft.Visible;

  acShowInsertMergeFieldForm.Visible := not (ActiveFrameID in [RichEditMasterDetailMailMergeID]);
  acToggleViewMergedData.Visible := acShowInsertMergeFieldForm.Visible;

  if ActiveFrameID in [RichEditSpellCheckingID] then
    bbCheckAsYouType.Visible := ivAlways
  else
    bbCheckAsYouType.Visible := ivNever;
end;

procedure TfrmRibbonRichEditMain.UpdateBarsVisibility;
begin
  bmbInsertPages.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditParagraphFormattingID, RichEditHyperlinksAndBookmarksID,
    RichEditMultiColumnContentID]);
  bmbInsertTables.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditParagraphFormattingID, RichEditHyperlinksAndBookmarksID,
    RichEditHeadersAndFootersID, RichEditMultiColumnContentID]);
  bmbInsertLinks.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditParagraphFormattingID, RichEditHeadersAndFootersID,
    RichEditMultiColumnContentID]);
  bmbInsertIllustrations.Visible := not (ActiveFrameID in [RichEditHyperlinksAndBookmarksID,
    RichEditHeadersAndFootersID, RichEditMultiColumnContentID]);
  bmbInsertHeaderAndFooter.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditParagraphFormattingID, RichEditHyperlinksAndBookmarksID]);
  bmbInsertSymbols.Visible := not (ActiveFrameID in [RichEditHyperlinksAndBookmarksID,
    RichEditHeadersAndFootersID, RichEditMultiColumnContentID]);

  bmbHomeEditing.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditParagraphFormattingID, RichEditBulletsAndNumberingID]);
  bmbHomeFont.Visible := not (ActiveFrameID in [RichEditParagraphFormattingID,
    RichEditBulletsAndNumberingID, RichEditFindAndReplaceID]);
  bmbHomeParagraph.Visible := not (ActiveFrameID in [RichEditCharacterFormattingID,
    RichEditFindAndReplaceID]);
  bmbHomeClipboard.Visible := not (ActiveFrameID in [RichEditFindAndReplaceID]);

  bmbViewZoom.Visible := not (ActiveFrameID in [RichEditDocumentViewsAndLayoutsID]);
  bmbViewDocumentViews.Visible := not (ActiveFrameID in [RichEditZoomingID]);
  bmbViewShow.Visible := not (ActiveFrameID in [RichEditZoomingID]);

  bmbMergeTo.Visible := (ActiveFrameID in [RichEditMailMergeRuntimeDataID, RichEditMailMergeDatabaseID]);

  bmbReviewProofing.Visible := (ActiveFrameID in [RichEditRibbonUIID, RichEditSpellCheckingID]);
  bmbAutoCorrect.Visible := (ActiveFrameID in [RichEditSpellCheckingID]);

  bmbProtect.Visible := (ActiveFrameID in [RichEditRibbonUIID, RichEditDocumentProtectionID]) or (GetProtectUserProperties.Items.Count > 0);

  if (ActiveFrameID in [RichEditDocumentProtectionID]) and (GetProtectUserProperties.Items.Count > 0) then
    bcUser.Visible := ivAlways
  else
    bcUser.Visible := ivNever;
end;

procedure TfrmRibbonRichEditMain.UpdateFloatingObjectFillColor;
begin
  acChangeFloatingObjectFillColor.UpdateTarget(ActiveRichEdit);
  UpdateFloatingObjectFillColorImage;
  acChangeFloatingObjectFillColor.Value := dxColorToAlphaColor(FFloatingObjectFillColorPicker.Color);
end;

procedure TfrmRibbonRichEditMain.UpdateFloatingObjectFillColorImage;
begin
  DrawHelpedColorLine(ScaleFactor, bbFloatingObjectFillColor.Glyph, FFloatingObjectFillColorPicker.Color,
    dmMain.ilBarSmall, acChangeFloatingObjectFillColor.ImageIndex);
end;

procedure TfrmRibbonRichEditMain.UpdateFloatingObjectOutlineColor;
begin
  acChangeFloatingObjectOutlineColor.UpdateTarget(ActiveRichEdit);
  UpdateFloatingObjectOutlineColorImage;
  acChangeFloatingObjectOutlineColor.Value := dxColorToAlphaColor(FFloatingObjectOutlineColorPicker.Color);
end;

procedure TfrmRibbonRichEditMain.UpdateFloatingObjectOutlineColorImage;
begin
  DrawHelpedColorLine(ScaleFactor, bbFloatingObjectOutlineColor.Glyph, FFloatingObjectOutlineColorPicker.Color,
    dmMain.ilBarSmall, acChangeFloatingObjectOutlineColor.ImageIndex);
end;

procedure TfrmRibbonRichEditMain.UpdateFontColor;
begin
  acFontColor.UpdateTarget(ActiveRichEdit);
  UpdateFontColorImage;
  acFontColor.Value := dxColorToAlphaColor(FFontColorPicker.Color);
end;

procedure TfrmRibbonRichEditMain.UpdateFontColorImage;
begin
  DrawHelpedColorLine(ScaleFactor, bbFontColor.Glyph, FFontColorPicker.Color, dmMain.ilBarSmall, acFontColor.ImageIndex);
end;

procedure TfrmRibbonRichEditMain.UpdateDocumentUsers;
begin
  ActiveFrame.UpdateDocumentUsers;
end;

procedure TfrmRibbonRichEditMain.UpdateRibbonContextsStates;
var
  AIsSelectionInTable: Boolean;
  ATableToolsContext: TdxRibbonContext;
begin
  AIsSelectionInTable := ActiveRichEdit.IsSelectionInTable;
  ATableToolsContext := dxRibbon1.Contexts.Find('Table Tools');
  ATableToolsContext.Visible := AIsSelectionInTable;
end;

procedure TfrmRibbonRichEditMain.UpdateTabFileVisibility;
begin
  rtFile.Visible := not (ActiveFrameID in [RichEditDocumentProtectionID]);
end;

procedure TfrmRibbonRichEditMain.UpdateTabHomeVisibility;
begin
  rtHome.Visible := not (ActiveFrameID in [RichEditDocumentRestrictionsID,
    RichEditOperationRestrictionsID, RichEditDocumentProtectionID]);
end;

procedure TfrmRibbonRichEditMain.UpdateTabInsertVisibility;
begin
  rtInsert.Visible := not (ActiveFrameID in [RichEditLoadSaveRTFID, RichEditStylesID,
    RichEditBulletsAndNumberingID, RichEditDocumentViewsAndLayoutsID,
    RichEditZoomingID, RichEditFindAndReplaceID,
    RichEditDocumentRestrictionsID, RichEditOperationRestrictionsID,
    RichEditMailMergeRuntimeDataID, RichEditMailMergeDatabaseID, RichEditDocumentProtectionID]);
end;

procedure TfrmRibbonRichEditMain.UpdateTabMailMergeVisibility;
begin
  rtMailings.Visible := ActiveFrameID in [RichEditMailMergeRuntimeDataID,
    RichEditMailMergeDatabaseID, RichEditMasterDetailMailMergeID, RichEditRibbonUIID,
    RichEditLoadSaveRTFID, RichEditConditionalFormattingID];
end;

procedure TfrmRibbonRichEditMain.UpdateTabPageLayoutVisibility;
begin
  rtPageLayout.Visible := ActiveFrameID in [RichEditRibbonUIID, RichEditLoadSaveRTFID,
    RichEditConditionalFormattingID, RichEditMultiColumnContentID, RichEditLineNumberingID,
    RichEditMasterDetailMailMergeID];
end;

procedure TfrmRibbonRichEditMain.UpdateTabReferencesVisibility;
begin
  rtReferences.Visible := ActiveFrameID in [RichEditRibbonUIID,
    RichEditTableOfContentsID, RichEditMasterDetailMailMergeID];
end;

procedure TfrmRibbonRichEditMain.UpdateTabReviewVisibility;
begin
  rtReview.Visible := (ActiveFrameID in [RichEditRibbonUIID, RichEditSpellCheckingID,
    RichEditDocumentProtectionID]) or (GetProtectUserProperties.Items.Count > 0);
end;

procedure TfrmRibbonRichEditMain.UpdateTabsVisibility;
begin
  UpdateTabFileVisibility;
  UpdateTabHomeVisibility;
  UpdateTabInsertVisibility;
  UpdateTabPageLayoutVisibility;
  UpdateTabMailMergeVisibility;
  UpdateTabViewVisibility;
  UpdateTabReviewVisibility;
  UpdateTabReferencesVisibility;
end;

procedure TfrmRibbonRichEditMain.UpdateTabViewVisibility;
begin
  rtView.Visible := ActiveFrameID in [RichEditDocumentViewsAndLayoutsID,
    RichEditRibbonUIID, RichEditLoadSaveRTFID, RichEditConditionalFormattingID,
    RichEditLineNumberingID, RichEditMasterDetailMailMergeID, RichEditZoomingID];
end;

procedure TfrmRibbonRichEditMain.UpdateTextHighlight;
begin
  acTextHighlight.UpdateTarget(ActiveRichEdit);
  UpdateTextHighlightImage;
  acTextHighlight.Value := dxColorToAlphaColor(FTextHighlightColorPicker.Color);
end;

procedure TfrmRibbonRichEditMain.UpdateTextHighlightImage;
begin
  DrawHelpedColorLine(ScaleFactor, bbTextHighlight.Glyph, FTextHighlightColorPicker.Color, dmMain.ilBarSmall, acTextHighlight.ImageIndex);
end;

procedure TfrmRibbonRichEditMain.UpdateSpellingOptionsStates;
begin
  Inc(FSpellingOptionsUpdateCount);
  try
    bbCheckAsYouType.Down := dmMain.SpellChecker.CheckAsYouTypeOptions.Active;
    beiUseSpellCheckerSuggestions.EditValue := dmMain.SpellChecker.AutoCorrectOptions.AutomaticallyUseSuggestions;
    beiCorrectCapsLock.EditValue := dmMain.SpellChecker.AutoCorrectOptions.CorrectCapsLock;
    beiCorrectInitialCaps.EditValue := dmMain.SpellChecker.AutoCorrectOptions.CorrectInitialCaps;
    beiCorrectSentenceCaps.EditValue := dmMain.SpellChecker.AutoCorrectOptions.CorrectSentenceCaps;
    beiReplaceAsYouType.EditValue := dmMain.SpellChecker.AutoCorrectOptions.ReplaceTextAsYouType;
  finally
    Dec(FSpellingOptionsUpdateCount);
  end;
end;

procedure TfrmRibbonRichEditMain.UpdateOfficeSearchBoxProperties;
var
  AProperties: TdxOfficeSearchBoxProperties;
begin
  AProperties := beOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties;
  AProperties.BeginUpdate;
  try
    TdxRibbonSearchToolbarController.LoadGlyph(AProperties);
    AProperties.Nullstring := TdxRibbonSearchToolbarController.GetNullstring;
  finally
    AProperties.EndUpdate;
  end;
end;

procedure TfrmRibbonRichEditMain.acQATAboveRibbonUpdate(Sender: TObject);
begin
  acQATAboveRibbon.Checked := dxRibbon1.QuickAccessToolbar.Position = qtpAboveRibbon;
  acQATBelowRibbon.Checked := dxRibbon1.QuickAccessToolbar.Position = qtpBelowRibbon;
end;

procedure TfrmRibbonRichEditMain.acQATBelowRibbonExecute(Sender: TObject);
begin
  if TAction(Sender).Tag <> 0 then
    dxRibbon1.QuickAccessToolbar.Position := qtpBelowRibbon
  else
    dxRibbon1.QuickAccessToolbar.Position := qtpAboveRibbon;
end;

procedure TfrmRibbonRichEditMain.recRichEditControlHyperlinkClick(Sender: TObject;
  const Args: TdxRichEditHyperlinkClickEventArgs);
begin
  if Args.Control then
  begin
    Args.Handled := True;
    Args.Hyperlink.Visited := True;
    ShellExecute(0, 'OPEN', PChar(Args.Hyperlink.NavigateUri), nil, nil, SW_SHOW);
  end;
end;

procedure TfrmRibbonRichEditMain.recRichEditControlSelectionChanged(Sender: TObject);
begin
  UpdateRibbonContextsStates;
end;

procedure TfrmRibbonRichEditMain.bbCheckAsYouTypeClick(Sender: TObject);
begin
  if not IsSpellingOptionsUpdating then
    dmMain.SpellChecker.CheckAsYouTypeOptions.Active := not dmMain.SpellChecker.CheckAsYouTypeOptions.Active;
  UpdateSpellingOptionsStates;
end;

procedure TfrmRibbonRichEditMain.bbFloatingObjectFillColorClick(Sender: TObject);
begin
  UpdateFloatingObjectFillColor;
end;

procedure TfrmRibbonRichEditMain.bbFloatingObjectOutlineColorClick(Sender: TObject);
begin
  UpdateFloatingObjectOutlineColor;
end;

procedure TfrmRibbonRichEditMain.bbFontColorClick(Sender: TObject);
begin
  UpdateFontColor;
end;

procedure TfrmRibbonRichEditMain.bbOptionsClick(Sender: TObject);
var
  AStyle: TRibbonDemoStyle;
  AScreenTipOptions: TScreenTipOptions;
begin
  AStyle := RibbonDemoStyle;
  AScreenTipOptions.ShowScreenTips := dxBarManager.ShowHint;
  AScreenTipOptions.ShowDescriptions := stBarScreenTips.ShowDescription;
  if ExecuteRibbonDemoOptions(AStyle, AScreenTipOptions) then
  begin
    RibbonDemoStyle := AStyle;
    dxBarManager.ShowHint := AScreenTipOptions.ShowScreenTips;
    stBarScreenTips.ShowDescription := AScreenTipOptions.ShowDescriptions;
  end;
end;

procedure TfrmRibbonRichEditMain.bbQATVisibleClick(Sender: TObject);
begin
  dxRibbon1.QuickAccessToolbar.Visible := bbQATVisible.Down;
end;

procedure TfrmRibbonRichEditMain.bbRibbonFormClick(Sender: TObject);
begin
  dxRibbon1.SupportNonClientDrawing := bbRibbonForm.Down;
end;

procedure TfrmRibbonRichEditMain.bmbTableToolsCellSizeClick(
  Sender: TObject);
begin
  acShowTablePropertiesForm.Execute;
end;

procedure TfrmRibbonRichEditMain.dxRibbon1HelpButtonClick(Sender: TdxCustomRibbon);
begin
  dxShowAboutForm;
end;

procedure TfrmRibbonRichEditMain.RowsAndColumnsCaptionButtonsClick(
  Sender: TObject);
begin
  acInsertTableCellsForm.Execute;
end;

procedure TfrmRibbonRichEditMain.bmbAutoCorrectCaptionButtons0Click(
  Sender: TObject);
begin
  dxShowAutoCorrectOptionsDialog(dmMain.SpellChecker);
  UpdateSpellingOptionsStates;
end;

procedure TfrmRibbonRichEditMain.biRecursiveSearchClick(Sender: TObject);
begin
  if biRecursiveSearch.Down then
    (beOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bTrue
  else
    (beOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bFalse;
end;

procedure TfrmRibbonRichEditMain.biShowPathsClick(Sender: TObject);
begin
  (beOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).ShowResultPaths := biShowPaths.Down;
end;

procedure TfrmRibbonRichEditMain.bbModifyStyleClick(Sender: TObject);

  procedure DoShowEditStyleForm(AStyle: TdxStyleBase);
  var
    ACommand: TdxShowEditStyleFormCommandAccess;
  begin
    ACommand := TdxShowEditStyleFormCommandAccess.Create(ActiveRichEdit);
    try
      if AStyle.StyleType = TdxStyleType.ParagraphStyle then
        ACommand.ShowEditStyleForm(TdxParagraphStyle(AStyle), 0, ACommand.ShowEditStyleFormCallback)
      else
        if AStyle.StyleType = TdxStyleType.CharacterStyle then
          ACommand.ShowEditStyleForm(TdxCharacterStyle(AStyle), 0, ACommand.ShowEditStyleFormCallback);
    finally
      ACommand.Free;
    end;
  end;

var
  AItem: TdxRibbonGalleryGroupItemAccess;
  AStyle: TdxStyleBase;
begin
  if ppmQuickStyles.Tag <> 0 then
  begin
    AItem := TdxRibbonGalleryGroupItemAccess(ppmQuickStyles.Tag);
    AStyle := GetTextStyleByQuickStyleItem(AItem);
    if AStyle <> nil then
    begin
      DoShowEditStyleForm(AStyle);
      UpdateQuickStyleItemByStyle(AItem, AStyle);
    end;
  end;
end;

procedure TfrmRibbonRichEditMain.bbRenameStyleClick(Sender: TObject);
var
  AItem: TdxRibbonGalleryGroupItemAccess;
  AStyle: TdxStyleBase;
begin
  if ppmQuickStyles.Tag <> 0 then
  begin
    AItem := TdxRibbonGalleryGroupItemAccess(ppmQuickStyles.Tag);
    AStyle := GetTextStyleByQuickStyleItem(AItem);
    if AStyle <> nil then
    begin
      AStyle.StyleName := dxInputBox('Rename Style', 'Please type the new name of the style', AStyle.StyleName);
      UpdateQuickStyleItemByStyle(AItem, AStyle);
    end;
  end;
end;

procedure TfrmRibbonRichEditMain.dxRibbonGalleryItemQuickStylesShowPopupMenu(Sender: TObject;
  var APopupMenu: TdxBarCustomPopupMenu; var APopupPoint: TPoint; AHotGroupItem: TdxRibbonGalleryGroupItem);
begin
  ppmQuickStyles.Tag := 0;
  if APopupMenu = ppmQuickStyles then
    APopupMenu.Tag := NativeInt(AHotGroupItem);
end;

procedure TfrmRibbonRichEditMain.bmbHomeFontClick(Sender: TObject);
begin
  acFont.Execute;
end;

procedure TfrmRibbonRichEditMain.bmbHomeParagraphClick(Sender: TObject);
begin
  acParagraph.Execute;
end;

procedure TfrmRibbonRichEditMain.bmbPageLayoutPageSetupCaptionButtons0Click(
  Sender: TObject);
begin
  acShowPageSetupForm.Execute;
end;

procedure TfrmRibbonRichEditMain.FormCreate(Sender: TObject);
begin
  inherited;
  UpdateBaseMenuOptions;
  FFontColorPicker := TPopupColorPickerController.Create(ppmFontColor, rgiFontColor, rgiColorTheme,
    clNone, 'Automatic');
  FFontColorPicker.OnColorChanged := bbFontColorClick;
//  UpdateFontColorImage;
  FPageColorPicker := TSubItemColorPickerController.Create(bsiPageColor, rgiPageColor, rgiPageColorTheme,
    clWindow, 'No Color');
  FPageColorPicker.OnColorChanged := PageColorChangedHandler;
  FTextHighlightColorPicker := TPopupColorPickerController.Create(ppmTextHighlightColor, rgiTextHighlightColor,
    rgiTextHighlightColorTheme, clNone, 'No Color');
  FTextHighlightColorPicker.OnColorChanged := bbTextHighlightClick;
//  UpdateTextHighlightImage;
  FFloatingObjectFillColorPicker := TPopupColorPickerController.Create(ppmFloatingObjectFillColor,
    rgiFloatingObjectFillColor, rgiFloatingObjectFillColorTheme, clNone, 'No Fill');
  FFloatingObjectFillColorPicker.OnColorChanged := bbFloatingObjectFillColorClick;
//  UpdateFloatingObjectFillColorImage;
  FFloatingObjectOutlineColorPicker := TPopupColorPickerController.Create(ppmFloatingObjectOutlineColor,
    rgiFloatingObjectOutlineColor, rgiFloatingObjectOutlineColorTheme, clNone, 'No Outline');
  FFloatingObjectOutlineColorPicker.OnColorChanged := bbFloatingObjectOutlineColorClick;
//  UpdateFloatingObjectOutlineColorImage;
  bbRibbonForm.Down := dxRibbon1.SupportNonClientDrawing;
  bbQATVisible.Down := dxRibbon1.QuickAccessToolbar.Visible;
  RibbonDemoStyle := rdsOffice365;
  TcxFontNameComboBoxProperties(beFontName.Properties).DropDownListStyle := lsEditList;
end;

procedure TfrmRibbonRichEditMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFloatingObjectOutlineColorPicker);
  FreeAndNil(FFloatingObjectFillColorPicker);
  FreeAndNil(FTextHighlightColorPicker);
  FreeAndNil(FPageColorPicker);
  FreeAndNil(FFontColorPicker);
  inherited;
end;

procedure TfrmRibbonRichEditMain.FormShow(Sender: TObject);
begin
  inherited;
  ActivateDemo(StartFrameID);
  SynchronizeFrameChoosers(StartFrameID);
end;

procedure TfrmRibbonRichEditMain.bmbPictureToolsArrangeCaptionButtons0Click(
  Sender: TObject);
begin
  acFloatingObjectLayoutOptionsForm.Execute;
end;

procedure TfrmRibbonRichEditMain.ShowExpressPrintingMessage(Sender: TObject);
begin
  dxDemoUtils.ShowExpressPrintingMessage;
  (Sender as TdxBarLargeButton).Action.Execute;
end;

initialization
  dxMegaDemoProductIndex := dxRichEditControlIndex;
  TdxVisualRefinements.LightBorders := True;
finalization

end.
