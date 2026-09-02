unit Main;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  System.Types, dxHashUtils, dxSpreadSheetCustomFormUnit, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels, 
  cxLookAndFeelPainters, dxRibbonSkins, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxPSGlbl, dxPSUtl, 
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, 
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxLayoutLookAndFeels, Vcl.ActnList, Vcl.ImgList, dxBar, dxBarApplicationMenu,
  dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore, dxBarExtItems, dxLayoutContainer, cxTextEdit, dxLayoutControl, dxNavBar,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxSplitter, cxClasses, dxDemoUtils, dxNavBarBase, dxNavBarCollns, cxBarEditItem,
  cxFontNameComboBox, cxDropDownEdit, dxScreenTip, dxRibbonGallery, cxCheckBox, dxSpreadSheetCore, dxSpreadSheetClasses,
  dxSpreadSheetTypes, dxSpreadSheet, dxCustomSpreadSheetBaseFormUnit, dxStatusBar, dxRibbonStatusBar, cxTrackBar,
  dxZoomTrackBar, dxSpreadSheetCoreHelpers, cxColorComboBox, dxColorPicker, dxColorEdit, cxCheckGroup, cxImageComboBox,
  cxImage, dxSpreadSheetGraphics, dxRibbonCustomizationForm, dxRibbonBackstageView, cxLabel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxScrollBox, dxGallery, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel, cxGroupBox, Vcl.ExtDlgs,
  dxColorDialog, dxPSdxSpreadSheetLnk, dxPSBaseGridLnk, dxSpreadSheetEditHyperlinkDialog, dxActions, dxPasswordDialog,
  dxSpreadSheetActions, dxRibbonColorGallery, dxCustomHint, cxHint, dxPSActions, dxSpreadSheetPasswordDialog,
  dxSpreadSheetConditionalFormattingRulesActions, dxPrinting, dxSkinsdxRibbonPainter,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  dxSpreadSheetReportDesigner, dxSpreadSheetReportDesignerActions, ReportPreviewFormUnit,
  SortedFieldsEditor, SelectDatasetForm, dxLayoutControlAdapters, cxImageList, dxNavBarStyles, cxRichEdit,
  System.Actions, dxOfficeSearchBox, dxPSdxSpreadSheetLnkCore,
  dxPSdxSpreadSheetDocumentBasedLnk, dxCore, dxShellDialogs, cxGeometry,
  dxFramedControl, dxPanel, System.ImageList, dxSkinsCore;

type
  TdxSpreadSheetDemoUnitInfo = class;

  TfrmMain = class(TfrmMainBase)
    actEncryptWithPassword: TAction;
    barSearchOptions: TdxBar;
    bbAbout: TdxBarButton;
    bbAlignTextLeft: TdxBarButton;
    bbAlignTextRight: TdxBarButton;
    bbAllBorders: TdxBarButton;
    bbAutoFitColumnWidth: TdxBarButton;
    bbAutoFitRowHeight: TdxBarButton;
    bbBottomAlign: TdxBarButton;
    bbBottomBorder: TdxBarButton;
    bbBottomDoubleBorder: TdxBarButton;
    bbBringToFront: TdxBarLargeButton;
    bbCenter: TdxBarButton;
    bbChinese: TdxBarButton;
    bbClearAll: TdxBarButton;
    bbClearComments: TdxBarButton;
    bbClearContents: TdxBarButton;
    bbClearFormats: TdxBarButton;
    bbClearHyperlinks: TdxBarButton;
    bbCommaStyle: TdxBarButton;
    bbCreateName: TdxBarButton;
    bbCreateNamesFromSelection: TdxBarButton;
    bbDecreaseDecimal: TdxBarButton;
    bbDecreaseIndent: TdxBarButton;
    bbDeleteComment: TdxBarLargeButton;
    bbDeleteSheet: TdxBarButton;
    bbDeleteSheetColumns: TdxBarButton;
    bbDeleteSheetRows: TdxBarButton;
    bbEditComment: TdxBarLargeButton;
    bbEncryptWithPassword: TdxBarLargeButton;
    bbEnglishUK: TdxBarButton;
    bbEnglishUS: TdxBarButton;
    bbFillDown: TdxBarButton;
    bbFillLeft: TdxBarButton;
    bbFillRight: TdxBarButton;
    bbFillUp: TdxBarButton;
    bbFreezeFirstColumn: TdxBarButton;
    bbFreezePanes: TdxBarButton;
    bbFreezeTopRow: TdxBarButton;
    bbFrench: TdxBarButton;
    bbGroupColumns: TdxBarButton;
    bbGroupRows: TdxBarButton;
    bbGrowFont: TdxBarButton;
    bbHideColumns: TdxBarButton;
    bbHideRows: TdxBarButton;
    bbHideSheet: TdxBarButton;
    bbIncreaseDecimal: TdxBarButton;
    bbIncreaseIndent: TdxBarButton;
    bbInsertSheet: TdxBarButton;
    bbInsertSheetRows: TdxBarButton;
    bbLeftBorder: TdxBarButton;
    bbLineStyleBorderMore: TdxBarButton;
    bbMergeAcross: TdxBarButton;
    bbMergeCells: TdxBarButton;
    bbMergeCenter: TdxBarButton;
    bbMiddleAlign: TdxBarButton;
    bbNameManager: TdxBarLargeButton;
    bbNew: TdxBarLargeButton;
    bbNewComment: TdxBarLargeButton;
    bbNextComment: TdxBarLargeButton;
    bbNoBorder: TdxBarButton;
    bbOutsideBorders: TdxBarButton;
    bbPercentStyle: TdxBarButton;
    bbPrevComment: TdxBarLargeButton;
    bbRemoveHyperlinks: TdxBarButton;
    bbRenameSheet: TdxBarButton;
    bbRightBorder: TdxBarButton;
    bbSendToBack: TdxBarLargeButton;
    bbShowHideComments: TdxBarLargeButton;
    bbShrinkFont: TdxBarButton;
    bbThickBottomBorder: TdxBarButton;
    bbThickBoxBorder: TdxBarButton;
    bbTopAlign: TdxBarButton;
    bbTopAndBottomBorder: TdxBarButton;
    bbTopAndDoubleBottomBorder: TdxBarButton;
    bbTopAndThickBottomBorder: TdxBarButton;
    bbTopBorder: TdxBarButton;
    bbUnfreezePanes: TdxBarButton;
    bbUngroupColumns: TdxBarButton;
    bbUngroupRows: TdxBarButton;
    bbUnhideColumns: TdxBarButton;
    bbUnhideRows: TdxBarButton;
    bbUnhideSheet: TdxBarButton;
    bbUnmergeCells: TdxBarButton;
    bbWrapText: TdxBarButton;
    beiFontName: TcxBarEditItem;
    beiFontSize: TcxBarEditItem;
    beiGridlines: TcxBarEditItem;
    beiHeadings: TcxBarEditItem;
    beiShowFormulas: TcxBarEditItem;
    biOfficeSearchBox: TcxBarEditItem;
    biRecursiveSearch: TdxBarLargeButton;
    biShowPaths: TdxBarLargeButton;
    blb100Percent: TdxBarLargeButton;
    blbBold: TdxBarLargeButton;
    blbBorders: TdxBarLargeButton;
    blbCopy: TdxBarButton;
    blbCut: TdxBarButton;
    blbFindReplace: TdxBarLargeButton;
    blbHyperlink: TdxBarLargeButton;
    blbItalic: TdxBarLargeButton;
    blbPaste: TdxBarLargeButton;
    blbPasteSpecial: TdxBarButton;
    blbPicture: TdxBarLargeButton;
    blbPrint: TdxBarLargeButton;
    blbQuickPrint: TdxBarLargeButton;
    blbRedo: TdxBarLargeButton;
    blbSave: TdxBarLargeButton;
    blbSaveAs: TdxBarLargeButton;
    blbShapeFill: TdxBarLargeButton;
    blbShowPageSetupForm: TdxBarLargeButton;
    blbShowPrintForm: TdxBarLargeButton;
    blbShowPrintPreviewForm: TdxBarLargeButton;
    blbSortAinZ: TdxBarLargeButton;
    blbSortZInA: TdxBarLargeButton;
    blbStrikethrough: TdxBarLargeButton;
    blbUnderline: TdxBarLargeButton;
    blbUndo: TdxBarLargeButton;
    blbZoomIn: TdxBarLargeButton;
    blbZoomOut: TdxBarLargeButton;
    bliShapes: TdxBarListItem;
    bmbAlignment: TdxBar;
    bmbCells: TdxBar;
    bmbClipboard: TdxBar;
    bmbComments: TdxBar;
    bmbConditionalFormatting: TdxBar;
    bmbContainerArrange: TdxBar;
    bmbDefinedNames: TdxBar;
    bmbEditing: TdxBar;
    bmbFont: TdxBar;
    bmbFreezePanes: TdxBar;
    bmbFunctionLibrary: TdxBar;
    bmbGrouping: TdxBar;
    bmbIllustration: TdxBar;
    bmbLinks: TdxBar;
    bmbNumber: TdxBar;
    bmbProtect: TdxBar;
    bmbShapeStyles: TdxBar;
    bmbShow: TdxBar;
    bmbSortFilter: TdxBar;
    bmbStyles: TdxBar;
    bmbZoom: TdxBar;
    bsbDelete: TdxBarSubItem;
    bsbInsert: TdxBarSubItem;
    bsiAccountingNumberFormat: TdxBarSubItem;
    bsiClear: TdxBarSubItem;
    bsiClearRules: TdxBarSubItem;
    bsiConditionalFormatting: TdxBarSubItem;
    bsiFill: TdxBarSubItem;
    bsiFormat: TdxBarSubItem;
    bsiFreezePanes: TdxBarSubItem;
    bsiGroup: TdxBarSubItem;
    bsiHideAndUnhide: TdxBarSubItem;
    bsiMergeCells: TdxBarSubItem;
    bsiMore: TdxBarSubItem;
    bsiShapes: TdxBarSubItem;
    bsiUngroup: TdxBarSubItem;
    bsLineStyleBorders: TdxBarSubItem;
    btnBrowsePath: TcxButton;
    bvBackstageView: TdxRibbonBackstageView;
    bvgcCurrentFolder: TdxRibbonBackstageViewGalleryControl;
    bvgcLocations: TdxRibbonBackstageViewGalleryControl;
    bvgcLocationsComputerItem: TdxRibbonBackstageViewGalleryItem;
    bvgcLocationsGroup1: TdxRibbonBackstageViewGalleryGroup;
    bvgcLocationsRecentDocumentsGroup: TdxRibbonBackstageViewGalleryGroup;
    bvgcLocationsRecentDocumentsItem: TdxRibbonBackstageViewGalleryItem;
    bvgcRecentDocuments: TdxRibbonBackstageViewGalleryControl;
    bvgcRecentPaths: TdxRibbonBackstageViewGalleryControl;
    bvgcRecentPathsGroup: TdxRibbonBackstageViewGalleryGroup;
    bvSpacer5: TBevel;
    bvSpacer6: TBevel;
    bvSpacer8: TBevel;
    bvtsOpen: TdxRibbonBackstageViewTabSheet;
    bvtsSaveAs: TdxRibbonBackstageViewTabSheet;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButtonFooter: TdxBarButton;
    dxBarButtonGroupFooter: TdxBarButton;
    dxBarButtonGroupHeader: TdxBarButton;
    dxBarButtonHeader: TdxBarButton;
    dxBarButtonMultipleDocuments: TdxBarButton;
    dxBarButtonMultipleSheets: TdxBarButton;
    dxBarButtonSingleSheet: TdxBarButton;
    dxBarChanges: TdxBar;
    dxBarDesign: TdxBar;
    dxBarFilter: TdxBar;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButtonClearPrintArea: TdxBarLargeButton;
    dxBarLargeButtonClearRulesFromEntireSheet: TdxBarLargeButton;
    dxBarLargeButtonClearRulesFromSelectedCells: TdxBarLargeButton;
    dxBarLargeButtonDataMember: TdxBarLargeButton;
    dxBarLargeButtonDesignView: TdxBarLargeButton;
    dxBarLargeButtonDetail: TdxBarLargeButton;
    dxBarLargeButtonDetailLevel: TdxBarLargeButton;
    dxBarLargeButtonEditFilter: TdxBarLargeButton;
    dxBarLargeButtonHorizontal: TdxBarLargeButton;
    dxBarLargeButtonInsertPageBreak: TdxBarLargeButton;
    dxBarLargeButtonManageRules: TdxBarLargeButton;
    dxBarLargeButtonMorePageMargins: TdxBarLargeButton;
    dxBarLargeButtonMorePaperSizes: TdxBarLargeButton;
    dxBarLargeButtonMoreRules: TdxBarLargeButton;
    dxBarLargeButtonNewRule: TdxBarLargeButton;
    dxBarLargeButtonPrintTitles: TdxBarLargeButton;
    dxBarLargeButtonProtectSheet: TdxBarLargeButton;
    dxBarLargeButtonProtectWorkbook: TdxBarLargeButton;
    dxBarLargeButtonRemovePageBreak: TdxBarLargeButton;
    dxBarLargeButtonReportPreview: TdxBarLargeButton;
    dxBarLargeButtonReset: TdxBarLargeButton;
    dxBarLargeButtonResetAllPageBreaks: TdxBarLargeButton;
    dxBarLargeButtonResetFilter: TdxBarLargeButton;
    dxBarLargeButtonSetPrintArea: TdxBarLargeButton;
    dxBarLargeButtonSortFields: TdxBarLargeButton;
    dxBarLargeButtonVertical: TdxBarLargeButton;
    dxBarManagerBar1: TdxBar;
    dxBarMode: TdxBar;
    dxBarPageSetup: TdxBar;
    dxBarScreenTipRepository1: TdxBarScreenTipRepository;
    dxBarSortGroup: TdxBar;
    dxBarStatic1: TdxBarStatic;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarTabAreaSearchToolbar: TdxBar;
    dxBarTemplateRanges: TdxBar;
    dxBevel3: TdxBevel;
    dxbtnFieldChoser: TdxBarLargeButton;
    dxColorDialog: TdxColorDialog;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    dxRibbonGalleryItem1Group1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItem1Group1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItem1Group1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSum: TdxRibbonGalleryItem;
    dxRibbonGalleryItemAutoSumGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemAutoSumGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemAutoSumGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScales: TdxRibbonGalleryItem;
    dxRibbonGalleryItemColorScalesGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemColorScalesGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemColorScalesGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibility: TdxRibbonGalleryItem;
    dxRibbonGalleryItemCompatibilityGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemCompatibilityGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemCompatibilityGroup1Item25: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBars: TdxRibbonGalleryItem;
    dxRibbonGalleryItemDataBarsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDataBarsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDataBarsGroup2Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDataBarsGroup2Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTime: TdxRibbonGalleryItem;
    dxRibbonGalleryItemDateandTimeGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemDateandTimeGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemDateandTimeGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancial: TdxRibbonGalleryItem;
    dxRibbonGalleryItemFinancialGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemFinancialGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemFinancialGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSets: TdxRibbonGalleryItem;
    dxRibbonGalleryItemIconSetsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup2Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup2Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup3Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup3Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemIconSetsGroup4Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemIconSetsGroup4Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformation: TdxRibbonGalleryItem;
    dxRibbonGalleryItemInformationGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemInformationGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemInformationGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogical: TdxRibbonGalleryItem;
    dxRibbonGalleryItemLogicalGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemLogicalGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLogicalGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReference: TdxRibbonGalleryItem;
    dxRibbonGalleryItemLookupandReferenceGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemLookupandReferenceGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemLookupandReferenceGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMargins: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMarginsGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMarginsGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMarginsGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrig: TdxRibbonGalleryItem;
    dxRibbonGalleryItemMathandTrigGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemMathandTrigGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item25: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item26: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item27: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item28: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item29: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item30: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item31: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item32: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item33: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item34: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item35: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item36: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item37: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item38: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item39: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item40: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item41: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item42: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item43: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item44: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item45: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item46: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item47: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item48: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item49: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item50: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item51: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item52: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item53: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item54: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item55: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item56: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item57: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item58: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item59: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item60: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item61: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item62: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item63: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item64: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item65: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item66: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item67: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item68: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemMathandTrigGroup1Item69: TdxRibbonGalleryGroupItem;
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
    dxRibbonGalleryItemStatistical: TdxRibbonGalleryItem;
    dxRibbonGalleryItemStatisticalGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemStatisticalGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item24: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item25: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item26: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item27: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item28: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item29: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item30: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item31: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item32: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item33: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item34: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item35: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item36: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item37: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item38: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item39: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item40: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item41: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item42: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item43: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item44: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item45: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item46: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item47: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item48: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item49: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item50: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item51: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item52: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item53: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item54: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item55: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item56: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item57: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item58: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item59: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item60: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item61: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item62: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item63: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item64: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item65: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item66: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item67: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item68: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item69: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item70: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item71: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item72: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemStatisticalGroup1Item73: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemText: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTextGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemTextGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item7: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item8: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item9: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item10: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item11: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item12: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item13: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item14: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item15: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item16: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item17: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item18: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item19: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item20: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item21: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item22: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTextGroup1Item23: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRules: TdxRibbonGalleryItem;
    dxRibbonGalleryItemTopBottomRulesGroup1: TdxRibbonGalleryGroup;
    dxRibbonGalleryItemTopBottomRulesGroup1Item1: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item2: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item3: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item4: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item5: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemTopBottomRulesGroup1Item6: TdxRibbonGalleryGroupItem;
    dxRibbonGalleryItemUseinFormula: TdxRibbonGalleryItem;
    dxRibbonGalleryItemUseinFormulaGroup1: TdxRibbonGalleryGroup;
    dxSpreadSheetAlignHorizontalCenter1: TdxSpreadSheetAlignHorizontalCenter;
    dxSpreadSheetAlignHorizontalLeft1: TdxSpreadSheetAlignHorizontalLeft;
    dxSpreadSheetAlignHorizontalRight1: TdxSpreadSheetAlignHorizontalRight;
    dxSpreadSheetAlignVerticalBottom1: TdxSpreadSheetAlignVerticalBottom;
    dxSpreadSheetAlignVerticalCenter1: TdxSpreadSheetAlignVerticalCenter;
    dxSpreadSheetAlignVerticalTop1: TdxSpreadSheetAlignVerticalTop;
    dxSpreadSheetAutoFitColumnWidth1: TdxSpreadSheetAutoFitColumnWidth;
    dxSpreadSheetAutoFitRowHeight1: TdxSpreadSheetAutoFitRowHeight;
    dxSpreadSheetAutoSumGallery: TdxSpreadSheetAutoSumGallery;
    dxSpreadSheetBordersAll1: TdxSpreadSheetBordersAll;
    dxSpreadSheetBordersBottom1: TdxSpreadSheetBordersBottom;
    dxSpreadSheetBordersBottomDouble1: TdxSpreadSheetBordersBottomDouble;
    dxSpreadSheetBordersBottomThick1: TdxSpreadSheetBordersBottomThick;
    dxSpreadSheetBordersLeft1: TdxSpreadSheetBordersLeft;
    dxSpreadSheetBordersMore1: TdxSpreadSheetBordersMore;
    dxSpreadSheetBordersNone1: TdxSpreadSheetBordersNone;
    dxSpreadSheetBordersOutside1: TdxSpreadSheetBordersOutside;
    dxSpreadSheetBordersOutsideThick1: TdxSpreadSheetBordersOutsideThick;
    dxSpreadSheetBordersRight1: TdxSpreadSheetBordersRight;
    dxSpreadSheetBordersTop1: TdxSpreadSheetBordersTop;
    dxSpreadSheetBordersTopAndBottom1: TdxSpreadSheetBordersTopAndBottom;
    dxSpreadSheetBordersTopAndBottomDouble1: TdxSpreadSheetBordersTopAndBottomDouble;
    dxSpreadSheetBordersTopAndBottomThick1: TdxSpreadSheetBordersTopAndBottomThick;
    dxSpreadSheetChangeFillColor: TdxSpreadSheetChangeFillColor;
    dxSpreadSheetChangeFontColor: TdxSpreadSheetChangeFontColor;
    dxSpreadSheetChangeFontName1: TdxSpreadSheetChangeFontName;
    dxSpreadSheetChangeFontSize1: TdxSpreadSheetChangeFontSize;
    dxSpreadSheetClearAll1: TdxSpreadSheetClearAll;
    dxSpreadSheetClearContents1: TdxSpreadSheetClearContents;
    dxSpreadSheetClearFormats1: TdxSpreadSheetClearFormats;
    dxSpreadSheetClearPrintArea: TdxSpreadSheetClearPrintArea;
    dxSpreadSheetCompatibilityFormulasGallery: TdxSpreadSheetCompatibilityFormulasGallery;
    dxSpreadSheetConditionalFormattingClearRulesFromEntireSheet: TdxSpreadSheetConditionalFormattingClearRulesFromEntireSheet;
    dxSpreadSheetConditionalFormattingClearRulesFromSelectedCells: TdxSpreadSheetConditionalFormattingClearRulesFromSelectedCells;
    dxSpreadSheetConditionalFormattingColorScalesGallery: TdxSpreadSheetConditionalFormattingColorScalesGallery;
    dxSpreadSheetConditionalFormattingDataBarsGallery: TdxSpreadSheetConditionalFormattingDataBarsGallery;
    dxSpreadSheetConditionalFormattingIconSetsGallery: TdxSpreadSheetConditionalFormattingIconSetsGallery;
    dxSpreadSheetConditionalFormattingMoreRules: TdxSpreadSheetConditionalFormattingMoreRules;
    dxSpreadSheetConditionalFormattingNewRule: TdxSpreadSheetConditionalFormattingNewRule;
    dxSpreadSheetConditionalFormattingTopBottomRulesGallery: TdxSpreadSheetConditionalFormattingTopBottomRulesGallery;
    dxSpreadSheetCopySelection1: TdxSpreadSheetCopySelection;
    dxSpreadSheetCreateDefinedName: TdxSpreadSheetCreateDefinedName;
    dxSpreadSheetCreateDefinedNamesFromSelection: TdxSpreadSheetCreateDefinedNamesFromSelection;
    dxSpreadSheetCutSelection1: TdxSpreadSheetCutSelection;
    dxSpreadSheetDateAndTimeFormulasGallery: TdxSpreadSheetDateAndTimeFormulasGallery;
    dxSpreadSheetDecreaseFontSize1: TdxSpreadSheetDecreaseFontSize;
    dxSpreadSheetDeleteColumns1: TdxSpreadSheetDeleteColumns;
    dxSpreadSheetDeleteComments1: TdxSpreadSheetDeleteComments;
    dxSpreadSheetDeleteRows1: TdxSpreadSheetDeleteRows;
    dxSpreadSheetDeleteSheet1: TdxSpreadSheetDeleteSheet;
    dxSpreadSheetEditComment1: TdxSpreadSheetEditComment;
    dxSpreadSheetFinancialFormulasGallery: TdxSpreadSheetFinancialFormulasGallery;
    dxSpreadSheetFindAndReplace1: TdxSpreadSheetFindAndReplace;
    dxSpreadSheetFreezeFirstColumn1: TdxSpreadSheetFreezeFirstColumn;
    dxSpreadSheetFreezePanes1: TdxSpreadSheetFreezePanes;
    dxSpreadSheetFreezeTopRow1: TdxSpreadSheetFreezeTopRow;
    dxSpreadSheetGroupColumns1: TdxSpreadSheetGroupColumns;
    dxSpreadSheetGroupRows1: TdxSpreadSheetGroupRows;
    dxSpreadSheetHideColumns1: TdxSpreadSheetHideColumns;
    dxSpreadSheetHideRows1: TdxSpreadSheetHideRows;
    dxSpreadSheetHideSheet1: TdxSpreadSheetHideSheet;
    dxSpreadSheetIncreaseFontSize1: TdxSpreadSheetIncreaseFontSize;
    dxSpreadSheetInformationFormulasGallery: TdxSpreadSheetInformationFormulasGallery;
    dxSpreadSheetInsertColumns1: TdxSpreadSheetInsertColumns;
    dxSpreadSheetInsertPageBreak: TdxSpreadSheetInsertPageBreak;
    dxSpreadSheetInsertPicture1: TdxSpreadSheetInsertPicture;
    dxSpreadSheetInsertRows1: TdxSpreadSheetInsertRows;
    dxSpreadSheetInsertSheet1: TdxSpreadSheetInsertSheet;
    dxSpreadSheetLogicalFormulasGallery: TdxSpreadSheetLogicalFormulasGallery;
    dxSpreadSheetLookupAndReferenceFormulasGallery: TdxSpreadSheetLookupAndReferenceFormulasGallery;
    dxSpreadSheetMathAndTrigFormulasGallery: TdxSpreadSheetMathAndTrigFormulasGallery;
    dxSpreadSheetMergeCells1: TdxSpreadSheetMergeCells;
    dxSpreadSheetMergeCellsAcross1: TdxSpreadSheetMergeCellsAcross;
    dxSpreadSheetMergeCellsAndCenter1: TdxSpreadSheetMergeCellsAndCenter;
    dxSpreadSheetMorePageMargins: TdxSpreadSheetMorePageMargins;
    dxSpreadSheetMorePaperSizes: TdxSpreadSheetMorePaperSizes;
    dxSpreadSheetNewComment1: TdxSpreadSheetNewComment;
    dxSpreadSheetNewDocument1: TdxSpreadSheetNewDocument;
    dxSpreadSheetNextComment1: TdxSpreadSheetNextComment;
    dxSpreadSheetPageMarginsGallery: TdxSpreadSheetPageMarginsGallery;
    dxSpreadSheetPaperSizeGallery: TdxSpreadSheetPaperSizeGallery;
    dxSpreadSheetPasteSelection1: TdxSpreadSheetPasteSelection;
    dxSpreadSheetPreviousComment1: TdxSpreadSheetPreviousComment;
    dxSpreadSheetPrintTitles: TdxSpreadSheetPrintTitles;
    dxSpreadSheetProtectSheet: TdxSpreadSheetProtectSheet;
    dxSpreadSheetProtectWorkbook: TdxSpreadSheetProtectWorkbook;
    dxSpreadSheetRedo1: TdxSpreadSheetRedo;
    dxSpreadSheetRemovePageBreak: TdxSpreadSheetRemovePageBreak;
    dxSpreadSheetReportDesignerDataMember: TdxSpreadSheetReportDesignerDataMember;
    dxSpreadSheetReportDesignerDesignView: TdxSpreadSheetReportDesignerDesignView;
    dxSpreadSheetReportDesignerDetailLevel: TdxSpreadSheetReportDesignerDetailLevel;
    dxSpreadSheetReportDesignerDetailSection: TdxSpreadSheetReportDesignerDetailSection;
    dxSpreadSheetReportDesignerEditFilter: TdxSpreadSheetReportDesignerEditFilter;
    dxSpreadSheetReportDesignerFooterSection: TdxSpreadSheetReportDesignerFooterSection;
    dxSpreadSheetReportDesignerGroupFooterSection: TdxSpreadSheetReportDesignerGroupFooterSection;
    dxSpreadSheetReportDesignerGroupHeaderSection: TdxSpreadSheetReportDesignerGroupHeaderSection;
    dxSpreadSheetReportDesignerHeaderSection: TdxSpreadSheetReportDesignerHeaderSection;
    dxSpreadSheetReportDesignerHorizontalOrientation: TdxSpreadSheetReportDesignerHorizontalOrientation;
    dxSpreadSheetReportDesignerMultipleDocumentsReportMode: TdxSpreadSheetReportDesignerMultipleDocumentsReportMode;
    dxSpreadSheetReportDesignerMultipleSheetsReportMode: TdxSpreadSheetReportDesignerMultipleSheetsReportMode;
    dxSpreadSheetReportDesignerReportPreview: TdxSpreadSheetReportDesignerReportPreview;
    dxSpreadSheetReportDesignerResetFilter: TdxSpreadSheetReportDesignerResetFilter;
    dxSpreadSheetReportDesignerResetSection: TdxSpreadSheetReportDesignerResetSection;
    dxSpreadSheetReportDesignerSingleSheetReportMode: TdxSpreadSheetReportDesignerSingleSheetReportMode;
    dxSpreadSheetReportDesignerSortFields: TdxSpreadSheetReportDesignerSortFields;
    dxSpreadSheetReportDesignerVerticalOrientation: TdxSpreadSheetReportDesignerVerticalOrientation;
    dxSpreadSheetResetAllPageBreaks: TdxSpreadSheetResetAllPageBreaks;
    dxSpreadSheetSaveDocumentAs1: TdxSpreadSheetSaveDocumentAs;
    dxSpreadSheetSetLandscapePageOrientation: TdxSpreadSheetSetLandscapePageOrientation;
    dxSpreadSheetSetPortraitPageOrientation: TdxSpreadSheetSetPortraitPageOrientation;
    dxSpreadSheetSetPrintArea: TdxSpreadSheetSetPrintArea;
    dxSpreadSheetShowConditionalFormattingRulesManager: TdxSpreadSheetShowConditionalFormattingRulesManager;
    dxSpreadSheetShowDefinedNameManager: TdxSpreadSheetShowDefinedNameManager;
    dxSpreadSheetShowHideComments1: TdxSpreadSheetShowHideComments;
    dxSpreadSheetShowHyperlinkEditor1: TdxSpreadSheetShowHyperlinkEditor;
    dxSpreadSheetShowPageSetupForm1: TdxSpreadSheetShowPageSetupForm;
    dxSpreadSheetShowPrintForm1: TdxSpreadSheetShowPrintForm;
    dxSpreadSheetShowPrintPreviewForm1: TdxSpreadSheetShowPrintPreviewForm;
    dxSpreadSheetSortAscending1: TdxSpreadSheetSortAscending;
    dxSpreadSheetSortDescending1: TdxSpreadSheetSortDescending;
    dxSpreadSheetStatisticalFormulasGallery: TdxSpreadSheetStatisticalFormulasGallery;
    dxSpreadSheetTextFormulasGallery: TdxSpreadSheetTextFormulasGallery;
    dxSpreadSheetTextIndentDecrease1: TdxSpreadSheetTextIndentDecrease;
    dxSpreadSheetTextIndentIncrease1: TdxSpreadSheetTextIndentIncrease;
    dxSpreadSheetTextWrap1: TdxSpreadSheetTextWrap;
    dxSpreadSheetToggleFontBold1: TdxSpreadSheetToggleFontBold;
    dxSpreadSheetToggleFontItalic1: TdxSpreadSheetToggleFontItalic;
    dxSpreadSheetToggleFontStrikeout1: TdxSpreadSheetToggleFontStrikeout;
    dxSpreadSheetToggleFontUnderline1: TdxSpreadSheetToggleFontUnderline;
    dxSpreadSheetUndo1: TdxSpreadSheetUndo;
    dxSpreadSheetUnfreezePanes1: TdxSpreadSheetUnfreezePanes;
    dxSpreadSheetUngroupColumns1: TdxSpreadSheetUngroupColumns;
    dxSpreadSheetUngroupRows1: TdxSpreadSheetUngroupRows;
    dxSpreadSheetUnhideColumns1: TdxSpreadSheetUnhideColumns;
    dxSpreadSheetUnhideRows1: TdxSpreadSheetUnhideRows;
    dxSpreadSheetUnhideSheet1: TdxSpreadSheetUnhideSheet;
    dxSpreadSheetUnmergeCells1: TdxSpreadSheetUnmergeCells;
    dxSpreadSheetZoomDefault1: TdxSpreadSheetZoomDefault;
    dxSpreadSheetZoomIn1: TdxSpreadSheetZoomIn;
    dxSpreadSheetZoomOut1: TdxSpreadSheetZoomOut;
    gbLocationsMain: TcxGroupBox;
    gbLocationsPane: TcxGroupBox;
    gbRecentDocumentsPane: TcxScrollBox;
    gbRecentPathsPane: TcxScrollBox;
    gbRecentPathsPaneBottom: TcxGroupBox;
    gbRecentPathsPaneCurrentFolder: TcxGroupBox;
    ilBackstageView: TcxImageList;
    ilNavBar: TcxImageList;
    lbbvtsOpen: TcxLabel;
    lbbvtsSaveAs: TcxLabel;
    lbComputer: TcxLabel;
    lbCurrentFolder: TcxLabel;
    lbRecentDocuments: TcxLabel;
    lbRecentFolders: TcxLabel;
    nbgAPI: TdxNavBarGroup;
    nbgCustomization: TdxNavBarGroup;
    nbgHighlightedFeatures: TdxNavBarGroup;
    nbgMiscellaneous: TdxNavBarGroup;
    nbgOverview: TdxNavBarGroup;
    nbgReportDesigner: TdxNavBarGroup;
    nbiCellPropertiesViewer: TdxNavBarItem;
    nbiComments: TdxNavBarItem;
    nbiConditionalFormatting: TdxNavBarItem;
    nbiCustomDraw: TdxNavBarItem;
    nbiCustomFunction: TdxNavBarItem;
    nbiEmbeddedImages: TdxNavBarItem;
    nbiEmployeeInformation: TdxNavBarItem;
    nbiExpenseReport: TdxNavBarItem;
    nbiHyperlinks: TdxNavBarItem;
    nbiInvoice: TdxNavBarItem;
    nbiInvoiceReport: TdxNavBarItem;
    nbiLoanAmortizationSchedule: TdxNavBarItem;
    nbiMasterDetailReport: TdxNavBarItem;
    nbiOutlines: TdxNavBarItem;
    nbiPrintOptions: TdxNavBarItem;
    nbiRightToLeftLayout: TdxNavBarItem;
    nbiShiftSchedule: TdxNavBarItem;
    nbiSimpleReport: TdxNavBarItem;
    pnSpreadSheetSite: TPanel;
    rcgiFillColor: TdxRibbonColorGalleryItem;
    rcgiFontColor: TdxRibbonColorGalleryItem;
    rgiFillColor: TdxRibbonGalleryItem;
    rgiFontColor: TdxRibbonGalleryItem;
    rgiStyles: TdxRibbonGalleryItem;
    rtContainerFormat: TdxRibbonTab;
    rtData: TdxRibbonTab;
    rtEdit: TdxRibbonTab;
    rtFormulas: TdxRibbonTab;
    rtInsert: TdxRibbonTab;
    rtPageLayout: TdxRibbonTab;
    rtProtection: TdxRibbonTab;
    rtReport: TdxRibbonTab;
    rtReview: TdxRibbonTab;
    rtView: TdxRibbonTab;
    stAlignCenter: TdxBarScreenTip;
    stAlignLeft: TdxBarScreenTip;
    stAlignRight: TdxBarScreenTip;
    stAppButton: TdxBarScreenTip;
    stAppMenu: TdxBarScreenTip;
    stBlack: TdxBarScreenTip;
    stBlue: TdxBarScreenTip;
    stBold: TdxBarScreenTip;
    stBullets: TdxBarScreenTip;
    stCopy: TdxBarScreenTip;
    stCut: TdxBarScreenTip;
    stFind: TdxBarScreenTip;
    stFontDialog: TdxBarScreenTip;
    stItalic: TdxBarScreenTip;
    stNew: TdxBarScreenTip;
    stOpen: TdxBarScreenTip;
    stPageSetup: TdxScreenTip;
    stPaste: TdxBarScreenTip;
    stPasteSpecial: TdxScreenTip;
    stPrint: TdxBarScreenTip;
    stQAT: TdxBarScreenTip;
    stQATAbove: TdxBarScreenTip;
    stQATBelow: TdxBarScreenTip;
    stReplace: TdxBarScreenTip;
    stRibbonForm: TdxBarScreenTip;
    stSave: TdxScreenTip;
    stSaveAs: TdxScreenTip;
    stSilver: TdxBarScreenTip;
    stSymbol: TdxScreenTip;
    stUnderline: TdxBarScreenTip;
    dxSpreadSheetUseDefinedNameInFormula1: TdxSpreadSheetUseDefinedNameInFormula;

    procedure actEncryptWithPasswordExecute(Sender: TObject);
    procedure actEncryptWithPasswordUpdate(Sender: TObject);
    procedure bbAboutClick(Sender: TObject);
    procedure bbBringToFrontClick(Sender: TObject);
    procedure bbRenameSheetClick(Sender: TObject);
    procedure bbSendToBackClick(Sender: TObject);
    procedure beiGridlinesChange(Sender: TObject);
    procedure beiHeadingsChange(Sender: TObject);
    procedure beiLineStylePropertiesDrawItem(AControl: TcxCustomComboBox;
      ACanvas: TcxCanvas; AIndex: Integer; const ARect: TRect; AState: TOwnerDrawState);
    procedure beiShowFormulasChange(Sender: TObject);
    procedure blbSaveAsClick(Sender: TObject);
    procedure blbSaveClick(Sender: TObject);
    procedure blbShapeFillClick(Sender: TObject);
    procedure bliShapesClick(Sender: TObject);
    procedure btnBrowsePathClick(Sender: TObject);
    procedure bvBackstageViewPopup(Sender: TObject);
    procedure bvBackstageViewTabChanged(Sender: TObject);
    procedure bvgcLocationsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure bvgcRecentDocumentsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure bvgcRecentPathsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bmbGroupingCaptionButtons0Click(Sender: TObject);
    procedure ShowExpressPrintingMessage(Sender: TObject);
    procedure dxSpreadSheetReportDesignerReportPreviewExecute(Sender: TObject);
    procedure dxSpreadSheetReportDesignerSortFieldsExecute(Sender: TObject);
    procedure dxSpreadSheetReportDesignerEditFilterExecute(Sender: TObject);
    procedure dxSpreadSheetReportDesignerDataMemberExecute(Sender: TObject);
    procedure dxbtnFieldChoserClick(Sender: TObject);
    procedure dxBarPageSetupCaptionButtons0Click(Sender: TObject);
    procedure biRecursiveSearchClick(Sender: TObject);
    procedure biShowPathsClick(Sender: TObject);
  strict private
    FDemoUnit: TdxSpreadSheetDemoUnitInfo;
    FFilterForm: TForm;
    FRecentDocumentsController: TdxRibbonRecentDocumentsController;
    FSpreadSheetReportLink: TdxSpreadSheetAbstractReportLink;
    FUpdateRibbonEditors: Integer;

	  function AddContainer(AClass: TdxSpreadSheetContainerClass; AWidth, AHeight: Integer): TdxSpreadSheetContainer;
    function GetActiveFrameID: Integer;
    function GetActiveSpreadSheet: TdxCustomSpreadSheet;
    function GetActiveSpreadSheetTable: TdxSpreadSheetTableView;
    function SaveSpreadSheetFile(ASaveAs: Boolean; var AFileName: string): Boolean;
    procedure SelectUnit(AUnit: TdxSpreadSheetDemoUnitInfo);
    procedure SetActiveFrameID(AValue: Integer);
    procedure SynchronizeMenuItems;
    procedure SynchronizeSpreadSheetEvents;
    procedure UpdateRibbonFromFocusedCell;
    procedure UpdateSpreadSheetReportLink;
  protected
    procedure ActivateDemo(AID: Integer); override;
    procedure CustomizeSetupRibbonGroups; override;
    procedure SwitchFullWindowMode; override;

    procedure DemoUnitChanged;
    procedure LayoutChangedHandler(Sender: TObject);
    procedure PreviewDestroyHandler(Sender: TObject);
    procedure SelectionChangedHandler(Sender: TObject);

    function GetDemoCaption: string; override;
    function GetMainFormCaption: string; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetActiveObject: TPersistent; override;
  public
    function FindDemoByID(ID: Integer; out ADemo: TdxSpreadSheetDemoUnitInfo): Boolean;
    function OpenFile(const AFileName: string): Boolean; overload;
    function OpenFile: Boolean; overload;
    function SaveFile(ASaveAs: Boolean): Boolean;

    property ActiveFrameID: Integer read GetActiveFrameID write SetActiveFrameID;
    property ActiveSpreadSheet: TdxCustomSpreadSheet read GetActiveSpreadSheet;
    property ActiveSpreadSheetTable: TdxSpreadSheetTableView read GetActiveSpreadSheetTable;
    property DemoUnit: TdxSpreadSheetDemoUnitInfo read FDemoUnit write SelectUnit;
    property RecentDocumentsController: TdxRibbonRecentDocumentsController read FRecentDocumentsController;
  end;

  { TdxSpreadSheetDemoUnitInfo }

  TdxSpreadSheetDemoUnitInfo = class
  protected
    UnitClass: TdxCustomSpreadSheetDemoUnitFormClass;
    UnitInstance: TdxCustomSpreadSheetDemoUnitForm;
  public
    constructor Create(AClass: TdxCustomSpreadSheetDemoUnitFormClass);
    destructor Destroy; override;
    procedure SetParent(AParent: TWinControl);
  end;

var
  frmMain: TfrmMain;

procedure dxSpreadSheetRegisterDemoUnit(ADemoClass: TdxCustomSpreadSheetDemoUnitFormClass);

implementation

{$R *.dfm}

uses
  System.Math, dxSpreadSheetBaseFormUnit, RenameSheetFormUnit, cxMemo, dxSpreadSheetFunctions,
  dxAboutDemo, dxSpreadSheetFormatCellsDialog, dxSpreadSheetUtils, dxCoreGraphics, dxSpreadSheetFormulas,
  dxSpreadSheetContainers, GroupingOptionsFormUnit, cxCustomData, dxSpreadSheetReportFilterForm, ReportDesignerBaseUnit,
  dxSpreadSheetPageSetupDialog;

type
  TdxSpreadSheetTableViewAccess = class(TdxSpreadSheetTableView);
  TEditingControllerAccess = class(TcxCustomEditingController);
  TdxSpreadSheetHistoryAccess = class(TdxSpreadSheetHistory);
  TdxSpreadSheetReportDesignerAccess = class(TdxSpreadSheetReportDesigner);
  TcxCustomDataControllerAcceess = class(TcxCustomDataController);

var
  ADemoUnits: TcxObjectList;

function GetRecentDocumentsFileName: string;
begin
  Result := ExtractFilePath(Application.ExeName) + 'RecentDocuments.ini';
end;

procedure dxSpreadSheetRegisterDemoUnit(ADemoClass: TdxCustomSpreadSheetDemoUnitFormClass);
var
  ADemoInfo: TdxSpreadSheetDemoUnitInfo;
begin
  ADemoInfo := TdxSpreadSheetDemoUnitInfo.Create(ADemoClass);
  ADemoInfo.SetParent(nil);
  ADemoUnits.Add(ADemoInfo);
end;

{ TfrmMain }

procedure TfrmMain.ActivateDemo(AID: Integer);
begin
  ActiveFrameID := AID;
end;

procedure TfrmMain.CustomizeSetupRibbonGroups;
begin
  biFullWindowMode.Visible := ivAlways;
  biCustomProperties.Visible := ivNever;
end;

procedure TfrmMain.SwitchFullWindowMode;
begin
  inherited SwitchFullWindowMode;
  (FDemoUnit.UnitInstance as TdxCustomSpreadSheetDemoUnitForm).lgFeedback.Visible := not FullWindowModeOn;
end;

procedure TfrmMain.bbAboutClick(Sender: TObject);
begin
  dxShowAboutForm;
end;

procedure TfrmMain.bbBringToFrontClick(Sender: TObject);
begin
  ActiveSpreadSheetTable.Selection.FocusedContainer.BringToFront;
end;

procedure TfrmMain.bbRenameSheetClick(Sender: TObject);
var
  ARenameSheetForm: TfrmRenameSheet;
begin
  ARenameSheetForm := TfrmRenameSheet.Create(Self);
  try
    ARenameSheetForm.teSheetName.EditValue := ActiveSpreadSheet.ActiveSheet.Caption;
    if ARenameSheetForm.ShowModal = mrOk then
      ActiveSpreadSheet.ActiveSheet.Caption := ARenameSheetForm.teSheetName.EditValue;
  finally
    ARenameSheetForm.Free;
  end;
end;

procedure TfrmMain.bbSendToBackClick(Sender: TObject);
begin
  ActiveSpreadSheetTable.Selection.FocusedContainer.SendToBack;
end;

procedure TfrmMain.beiGridlinesChange(Sender: TObject);
begin
  if beiGridlines.EditValue then
    ActiveSpreadSheetTable.Options.GridLines := bTrue
  else
    ActiveSpreadSheetTable.Options.GridLines := bFalse;
end;

procedure TfrmMain.beiHeadingsChange(Sender: TObject);
begin
  if beiHeadings.EditValue then
    ActiveSpreadSheetTable.Options.Headers := bTrue
  else
    ActiveSpreadSheetTable.Options.Headers := bFalse;
end;

procedure TfrmMain.beiLineStylePropertiesDrawItem(AControl: TcxCustomComboBox;
  ACanvas: TcxCanvas; AIndex: Integer; const ARect: TRect;
  AState: TOwnerDrawState);
var
  ADrawRect: TRect;
begin
  ACanvas.FillRect(ARect, ACanvas.Brush.Color);
  if AIndex = 0 then
    cxDrawText(ACanvas, 'No Border', ARect, DT_VCENTER or DT_CENTER)
  else
    if AIndex <= 6 then
    begin
      ADrawRect := Rect(ARect.Left + 10, ARect.Top + Round(cxRectHeight(ARect) / 2), ARect.Right - 10, ARect.Top + Round(cxRectHeight(ARect) / 2 + 1));
      dxSpreadSheetDrawBorder(ACanvas, ADrawRect, ACanvas.Pen.Color, ACanvas.Brush.Color, TdxSpreadSheetCellBorderStyle(AIndex), True);
    end
    else
      if AIndex <= 11 then
      begin
        ADrawRect := Rect(ARect.Left + 10, ARect.Top + Round(cxRectHeight(ARect) / 2) - 1, ARect.Right - 10, ARect.Top + Round(cxRectHeight(ARect) / 2 + 1));
        dxSpreadSheetDrawBorder(ACanvas, ADrawRect, ACanvas.Pen.Color, ACanvas.Brush.Color, TdxSpreadSheetCellBorderStyle(AIndex), True);
      end
      else
      begin
        ADrawRect := Rect(ARect.Left + 10, ARect.Top + Round(cxRectHeight(ARect) / 2) - 2, ARect.Right - 10, ARect.Top + Round(cxRectHeight(ARect) / 2 + 2));
        dxSpreadSheetDrawBorder(ACanvas, ADrawRect, ACanvas.Pen.Color, ACanvas.Brush.Color, TdxSpreadSheetCellBorderStyle(AIndex), True);
      end;
end;

procedure TfrmMain.beiShowFormulasChange(Sender: TObject);
begin
  if beiShowFormulas.EditValue then
    ActiveSpreadSheetTable.Options.ShowFormulas := bTrue
  else
    ActiveSpreadSheetTable.Options.ShowFormulas := bFalse;
end;

procedure TfrmMain.biRecursiveSearchClick(Sender: TObject);
begin
  if biRecursiveSearch.Down then
    (biOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bTrue
  else
    (biOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).RecursiveSearch := bFalse;
end;

procedure TfrmMain.biShowPathsClick(Sender: TObject);
begin
  (biOfficeSearchBox.Properties as TdxOfficeSearchBoxProperties).ShowResultPaths := biShowPaths.Down;
end;

procedure TfrmMain.blbSaveAsClick(Sender: TObject);
begin
  SaveFile(True);
end;

procedure TfrmMain.blbSaveClick(Sender: TObject);
begin
  SaveFile(False);
end;

procedure TfrmMain.blbShapeFillClick(Sender: TObject);
var
  AContainer: TdxSpreadSheetShapeContainer;
begin
  AContainer := ActiveSpreadSheetTable.Selection.FocusedContainer as TdxSpreadSheetShapeContainer;
  dxColorDialog.Color := AContainer.Shape.Brush.Color;
  if dxColorDialog.Execute(Handle) then
    AContainer.Shape.Brush.Color := dxColorDialog.Color;
end;

procedure TfrmMain.bliShapesClick(Sender: TObject);
var
  AContainer: TdxSpreadSheetShapeContainer;
begin
  ActiveSpreadSheet.History.BeginAction(TdxSpreadSheetHistoryChangeContainerAction);
  try
    AContainer := TdxSpreadSheetShapeContainer(AddContainer(TdxSpreadSheetShapeContainer, 200, 200));
    AContainer.Shape.Brush.Color := dxColorToAlphaColor(clSkyBlue);
    AContainer.Shape.Pen.Brush.Color := dxColorToAlphaColor($9C7141);
    AContainer.Shape.Pen.Width := 2;
    AContainer.Shape.ShapeType := TdxSpreadSheetShapeType(bliShapes.ItemIndex);
    AContainer.Focused := True;
  finally
    ActiveSpreadSheet.History.EndAction;
  end;
end;

procedure TfrmMain.bmbGroupingCaptionButtons0Click(Sender: TObject);
begin
  with TfrmGroupingOptions.Create(nil) do
  try
    Load(ActiveSpreadSheetTable);
    if ShowModal = mrOk then
      Save(ActiveSpreadSheetTable);
  finally
    Free;
  end;
end;

procedure TfrmMain.btnBrowsePathClick(Sender: TObject);
var
  AHandled: Boolean;
begin
  if bvtsSaveAs.Active then
    AHandled := SaveFile(True)
  else
    AHandled := OpenFile;

  if AHandled then
    bvBackstageView.Hide;
end;

procedure TfrmMain.bvBackstageViewPopup(Sender: TObject);
begin
  gbRecentPathsPaneCurrentFolder.Visible := bvgcCurrentFolder.Gallery.Groups.Count > 0;
  bvBackstageViewTabChanged(Sender);
end;

procedure TfrmMain.bvBackstageViewTabChanged(Sender: TObject);
begin
  if not (csReading in ComponentState) then
  begin
    if bvtsOpen.Active or bvtsSaveAs.Active then
    begin
      bvgcLocationsRecentDocumentsGroup.Visible := bvBackstageView.ActiveTab = bvtsOpen;
      if bvgcLocationsRecentDocumentsGroup.Visible and not bvgcLocationsComputerItem.Checked then
        bvgcLocationsRecentDocumentsItem.Checked := True
      else
        bvgcLocationsComputerItem.Checked := True;

      gbLocationsMain.Parent := bvBackstageView.ActiveTab;
    end;
  end;
end;

procedure TfrmMain.bvgcLocationsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  gbRecentDocumentsPane.Visible := bvgcLocationsRecentDocumentsItem.Checked;
  gbRecentPathsPane.Visible := bvgcLocationsComputerItem.Checked;
  bvBackstageView.InvalidateWithChildren;
end;

procedure TfrmMain.bvgcRecentDocumentsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
begin
  OpenFile(AItem.Hint);
  bvBackstageView.Hide;
end;

procedure TfrmMain.bvgcRecentPathsItemClick(Sender: TObject; AItem: TdxRibbonBackstageViewGalleryItem);
var
  AHandled: Boolean;
  APrevInitialDir: string;
begin
  if bvtsSaveAs.Active then
  begin
    APrevInitialDir := SaveDialog.InitialDir;
    try
      SaveDialog.InitialDir := AItem.Hint;
      AHandled := SaveFile(True);
    finally
      SaveDialog.InitialDir := APrevInitialDir;
    end;
  end
  else
  begin
    APrevInitialDir := OpenDialog.InitialDir;
    try
      OpenDialog.InitialDir := AItem.Hint;
      AHandled := OpenFile;
    finally
      OpenDialog.InitialDir := APrevInitialDir;
    end;
  end;
  if AHandled then
    bvBackstageView.Hide;
end;

function TfrmMain.AddContainer(AClass: TdxSpreadSheetContainerClass; AWidth, AHeight: Integer): TdxSpreadSheetContainer;
begin
  Result := ActiveSpreadSheetTable.Containers.Add(AClass);
  Result.AnchorType := catAbsolute;
  Result.AnchorPoint2.Offset := Point(AWidth, AHeight);
end;

procedure TfrmMain.DemoUnitChanged;
begin
  UpdateInspectedObject;
  Caption := GetMainFormCaption;
  if ActiveSpreadSheet <> nil then
  begin
    ActiveSpreadSheet.BeginUpdate;
    try
      SynchronizeSpreadSheetEvents;
    finally
      ActiveSpreadSheet.EndUpdate;
    end;
  end;
end;

procedure TfrmMain.dxSpreadSheetReportDesignerDataMemberExecute(
  Sender: TObject);
begin
  if not (GetActiveSpreadSheet is TdxSpreadSheetReportDesigner) or
    (TdxSpreadSheetReportDesignerAccess(GetActiveSpreadSheet).CurrentDataController = nil) then
    Exit;
  with TfrmSelectDataset.Create(nil) do
    SelectDataset(TdxSpreadSheetReportDesigner(GetActiveSpreadSheet), TdxSpreadSheetReportDesignerAccess(GetActiveSpreadSheet).CurrentSection);
end;

procedure TfrmMain.dxSpreadSheetReportDesignerEditFilterExecute(
  Sender: TObject);
var
  ADataController: TdxSpreadSheetReportDataController;
begin
  if not (GetActiveSpreadSheet is TdxSpreadSheetReportDesigner) or
    (TdxSpreadSheetReportDesignerAccess(GetActiveSpreadSheet).CurrentDataController = nil) then
    Exit;
  FFilterForm := TfrmFilter.Create(nil);
  try
    ADataController := TdxSpreadSheetReportDesignerAccess(GetActiveSpreadSheet).CurrentDataController;
    TfrmFilter(FFilterForm).Filter.LinkComponent := TcxCustomDataControllerAcceess(ADataController).Owner;
    if FFilterForm.ShowModal = mrOk then
    begin
      TfrmFilter(FFilterForm).Filter.ApplyFilter;
      ADataController.Filter.Active := ADataController.Filter.FilterText <> '';
    end;
  finally
    FFilterForm.Free;
  end;
end;

procedure TfrmMain.dxSpreadSheetReportDesignerReportPreviewExecute(Sender: TObject);

begin
  if not (GetActiveSpreadSheet is TdxSpreadSheetReportDesigner) then
    Exit;
  if Preview = nil then
  begin
    Preview := TfrmPreview.Create(nil);
    Preview.InitializeRibbon(dxRibbon1);
    Preview.OnDestroy := PreviewDestroyHandler;
    Preview.Report.ClearAll;
    TdxSpreadSheetReportDesigner(GetActiveSpreadSheet).Build(Preview.Report);
  end;
  Preview.Show;
  dxSpreadSheetReportDesignerReportPreview.Checked := Preview <> nil;
end;

procedure TfrmMain.dxSpreadSheetReportDesignerSortFieldsExecute(
  Sender: TObject);
var
  ASortedFields: TdxSpreadSheetReportSortedFields;
  ADataController: TdxSpreadSheetReportDataController;
begin
  if not (GetActiveSpreadSheet is TdxSpreadSheetReportDesigner) then
    Exit;
  ASortedFields := TdxSpreadSheetReportDesigner(GetActiveSpreadSheet).DataBinding.SortedFields;
  ADataController := TdxSpreadSheetReportDesignerAccess(GetActiveSpreadSheet).CurrentDataController;
  if TcxCustomDataControllerAcceess(ADataController).Owner <> GetActiveSpreadSheet then
    ASortedFields := TdxSpreadSheetReportDetail(TcxCustomDataControllerAcceess(ADataController).Owner).SortedFields;
  with TfrmSortedFieldsEditor.Create(nil) do
    DoEdit(ADataController, ASortedFields);
end;

procedure TfrmMain.dxBarPageSetupCaptionButtons0Click(Sender: TObject);
begin
  ShowPageSetupDialog(GetActiveSpreadSheetTable, 0);
end;

procedure TfrmMain.dxbtnFieldChoserClick(Sender: TObject);
begin
  if GetActiveSpreadSheet is TdxSpreadSheetReportDesigner then
    TdxSpreadSheetReportBaseForm(DemoUnit.UnitInstance).SetFieldChooserVisibility(dxbtnFieldChoser.Down);
end;

function TfrmMain.FindDemoByID(ID: Integer; out ADemo: TdxSpreadSheetDemoUnitInfo): Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to ADemoUnits.Count - 1 do
  begin
    ADemo := TdxSpreadSheetDemoUnitInfo(ADemoUnits[I]);
    if ID = ADemo.UnitClass.GetID then
      Exit;
  end;
  Result := False;
end;

function TfrmMain.OpenFile(const AFileName: string): Boolean;
begin
  ActiveSpreadSheet.LoadFromFile(AFileName);
  RecentDocumentsController.Add(AFileName);
  RecentDocumentsController.SetCurrentFileName(AFileName);
  blbSave.Enabled := False;
  Result := True;
end;

function TfrmMain.OpenFile: Boolean;
begin
  OpenDialog.Filter := dxSpreadSheetFormatsRepository.GetOpenDialogFilter;
  OpenDialog.FileName := '';
  Result := OpenDialog.Execute;
  if Result then
    OpenFile(OpenDialog.FileName)
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  inherited;
  TdxRibbonSearchToolbarController.TryCreateWithExistingToolbar(dxRibbon1, True);
  FRecentDocumentsController := TdxRibbonRecentDocumentsController.Create(bvgcRecentDocuments, bvgcRecentPaths, bvgcCurrentFolder);
  FRecentDocumentsController.LoadFromIniFile(GetRecentDocumentsFileName);

  DisableAero := True;
  ActiveFrameID := nbgHighlightedFeatures.Links[0].Item.Tag;
  SynchronizeFrameNavigation(ActiveFrameID);
  nbgHighlightedFeatures.Links[0].Selected := True;
  rtEdit.Active := True;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Preview);
  FRecentDocumentsController.SaveToIniFile(GetRecentDocumentsFileName);
  FreeAndNil(FRecentDocumentsController);
  DemoUnit.SetParent(nil);
  DemoUnit := nil;
  inherited;
end;

function TfrmMain.GetActiveFrameID: Integer;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitClass.GetID
  else
    Result := - MaxInt;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := ActiveSpreadSheet;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  Result := FSpreadSheetReportLink;
end;

function TfrmMain.GetActiveSpreadSheet: TdxCustomSpreadSheet;
begin
  Result := nil;
  if (DemoUnit <> nil) and (DemoUnit.UnitInstance <> nil) then
    Result := DemoUnit.UnitInstance.SpreadSheet;
end;

function TfrmMain.GetActiveSpreadSheetTable: TdxSpreadSheetTableView;
begin
  Result := ActiveSpreadSheet.ActiveSheetAsTable;
end;

function TfrmMain.GetDemoCaption: string;
begin
  if DemoUnit <> nil then
    Result := DemoUnit.UnitInstance.Caption
  else
    Result := inherited GetDemoCaption;
end;

function TfrmMain.GetMainFormCaption: string;
begin
  Result := inherited + ' - ' + GetDemoCaption;
end;

procedure TfrmMain.LayoutChangedHandler(Sender: TObject);
begin
  blbSave.Enabled := blbSave.Enabled or (ActiveSpreadSheet.History.UndoActionCount > 0);
  beiHeadings.EditValue := dxDefaultBooleanToBoolean(ActiveSpreadSheetTable.Options.Headers, ActiveSpreadSheet.OptionsView.Headers);
  beiGridlines.EditValue := dxDefaultBooleanToBoolean(ActiveSpreadSheetTable.Options.GridLines, ActiveSpreadSheet.OptionsView.GridLines);
  beiShowFormulas.EditValue := dxDefaultBooleanToBoolean(ActiveSpreadSheetTable.Options.ShowFormulas, ActiveSpreadSheet.OptionsView.ShowFormulas);
  UpdateRibbonFromFocusedCell;
end;

procedure TfrmMain.PreviewDestroyHandler(Sender: TObject);
begin
   dxSpreadSheetReportDesignerReportPreview.Checked := False;
end;

function TfrmMain.SaveFile(ASaveAs: Boolean): Boolean;
var
  AFileName: string;
begin
  AFileName := DemoUnit.UnitInstance.SpreadSheetFileName;
  Result := SaveSpreadSheetFile(ASaveAs, AFileName);
  if Result then
  begin
    DemoUnit.UnitInstance.SpreadSheetFileName := AFileName;
    FRecentDocumentsController.Add(AFileName);
    blbSave.Enabled := False;
  end;
end;

function TfrmMain.SaveSpreadSheetFile(ASaveAs: Boolean; var AFileName: string): Boolean;
begin
  Result := not ASaveAs and (AFileName <> '');
  if not Result then
  begin
    SaveDialog.FileName := ChangeFileExt(ExtractFileName(AFileName), '');
    SaveDialog.Filter := dxSpreadSheetFormatsRepository.GetSaveDialogFilter;
    Result := SaveDialog.Execute;
    if Result then
      AFileName := SaveDialog.FileName;
  end;

  if Result then
    ActiveSpreadSheet.SaveToFile(AFileName);
end;

procedure TfrmMain.SelectionChangedHandler(Sender: TObject);
begin
  UpdateRibbonFromFocusedCell;
end;

procedure TfrmMain.SelectUnit(AUnit: TdxSpreadSheetDemoUnitInfo);
var
  APrevUnit: TdxSpreadSheetDemoUnitInfo;
begin
  if DemoUnit <> AUnit then
  begin
    APrevUnit := FDemoUnit;
    FDemoUnit := AUnit;
    if FDemoUnit <> nil then
      DemoUnit.SetParent(pnSpreadSheetSite);
    if APrevUnit <> nil then
      APrevUnit.SetParent(nil);
    UpdateSpreadSheetReportLink;
    SynchronizeMenuItems;
    DemoUnitChanged;
  end;
end;

procedure TfrmMain.SetActiveFrameID(AValue: Integer);
var
  ADemo: TdxSpreadSheetDemoUnitInfo;
begin
  if (ActiveFrameID <> AValue) and FindDemoByID(AValue, ADemo) then
    DemoUnit := ADemo;
end;

procedure TfrmMain.SynchronizeMenuItems;
var
  AExtendedMenuShow: Boolean;
begin
  AExtendedMenuShow := (DemoUnit <> nil) and DemoUnit.UnitInstance.ShowExtendedMenu;
  rtEdit.Visible := AExtendedMenuShow;
  rtInsert.Visible := AExtendedMenuShow;
  rtFormulas.Visible := AExtendedMenuShow;
  rtView.Visible := AExtendedMenuShow;
  rtReport.Visible := GetActiveSpreadSheet is TdxSpreadSheetReportDesigner;
  rtReport.Active := rtReport.Visible;
  if GetActiveSpreadSheet is TdxSpreadSheetReportDesigner then
    dxbtnFieldChoser.Down := TdxSpreadSheetReportBaseForm(DemoUnit.UnitInstance).liFieldChooserSite.Visible;
end;

procedure TfrmMain.SynchronizeSpreadSheetEvents;
begin
  DemoUnit.UnitInstance.OnSpreadSheetLayoutChanged := LayoutChangedHandler;
  DemoUnit.UnitInstance.OnSpreadSheetSelectionChanged := SelectionChangedHandler;
end;

procedure TfrmMain.UpdateRibbonFromFocusedCell;
var
  AContainer: TdxSpreadSheetContainer;
begin
  Inc(FUpdateRibbonEditors);
  try
    AContainer := ActiveSpreadSheetTable.Selection.FocusedContainer;

    if (AContainer <> nil) and not (AContainer is TdxSpreadSheetCommentContainer) then
      dxRibbon1.Contexts[0].Activate
    else
      dxRibbon1.Contexts[0].Visible := False;
  finally
    Dec(FUpdateRibbonEditors);
  end;
end;

procedure TfrmMain.UpdateSpreadSheetReportLink;
var
  AClass: TdxReportLinkClass;
begin
  if (DemoUnit <> nil) and DemoUnit.UnitInstance.UseDocumentPrintOptions then
    AClass := TdxSpreadSheetDocumentBasedReportLink
  else
    AClass := TdxSpreadSheetReportLnk;

  if (FSpreadSheetReportLink = nil) or (FSpreadSheetReportLink.ClassType <> AClass) then
  begin
    FreeAndNil(FSpreadSheetReportLink);
    FSpreadSheetReportLink := TdxSpreadSheetAbstractReportLink(dxComponentPrinter.AddEmptyLink(AClass));
    FSpreadSheetReportLink.Component := ActiveSpreadSheet;
  end;

  rtPageLayout.Visible := FSpreadSheetReportLink is TdxSpreadSheetDocumentBasedReportLink;
end;

procedure TfrmMain.ShowExpressPrintingMessage(Sender: TObject);
begin
  dxDemoUtils.ShowExpressPrintingMessage;
  (Sender as TdxBarLargeButton).Action.Execute;
end;

{ TdxSpreadSheetDemoUnitInfo }

constructor TdxSpreadSheetDemoUnitInfo.Create(AClass: TdxCustomSpreadSheetDemoUnitFormClass);
begin
  UnitClass := AClass;
end;

destructor TdxSpreadSheetDemoUnitInfo.Destroy;
begin
  SetParent(nil);
  inherited Destroy;
end;

procedure TdxSpreadSheetDemoUnitInfo.SetParent(AParent: TWinControl);
begin
  if (AParent <> nil) and (UnitInstance = nil) then
  begin
    UnitInstance := UnitClass.Create(AParent);
    UnitInstance.Visible := False;
  end;
  if (AParent <> nil) and (UnitInstance.SpreadSheet <> nil) then
    UnitInstance.SpreadSheet.BeginUpdate;
  if UnitInstance <> nil then
    UnitInstance.Parent := AParent;
  if AParent = nil then
  begin
    FreeAndNil(UnitInstance)
  end
  else
  begin
    UnitInstance.SendToBack;
    UnitInstance.Visible := True;
    if UnitInstance.SpreadSheet <> nil then
      UnitInstance.SpreadSheet.EndUpdate;
    UnitInstance.FrameActivated;
    UnitInstance.BringToFront;
  end;
end;

procedure TfrmMain.actEncryptWithPasswordExecute(Sender: TObject);
var
  APassword: string;
begin
  APassword := GetActiveSpreadSheet.Password;
  if ShowPasswordDialog(GetActiveSpreadSheet, pdmNew, APassword) then
    GetActiveSpreadSheet.Password := APassword;
end;

procedure TfrmMain.actEncryptWithPasswordUpdate(Sender: TObject);
begin
  actEncryptWithPassword.Checked := GetActiveSpreadSheet.Password <> '';
  bbEncryptWithPassword.Down := actEncryptWithPassword.Checked;
end;

initialization
  dxMegaDemoProductIndex := dxSpreadSheet2Index;
  ADemoUnits := TcxObjectList.Create;

finalization
  ADemoUnits.Free;

end.
