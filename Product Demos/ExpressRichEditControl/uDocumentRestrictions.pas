unit uDocumentRestrictions;

interface

uses
  System.Classes, Vcl.Controls, dxRichEditFrame, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxCoreClasses,
  dxGDIPlusAPI, dxGDIPlusClasses, dxRichEdit.Types, dxRichEdit.Utils.Types, dxRichEdit.Options,
  dxRichEdit.Control, dxHttpIndyRequest, dxBarBuiltInMenu,
  dxRichEdit.Platform.Win.Control, cxLabel, Vcl.ExtCtrls, cxCheckBox, cxClasses,
  dxBar, cxGroupBox, cxFontNameComboBox, cxDropDownEdit, dxBarExtItems,
  dxRibbonGallery, cxBarEditItem, Vcl.ImgList, dxRichEdit.Actions, dxActions,
  Vcl.ActnList, dxRibbon, ColorPicker, MainData, dxSkinsdxBarPainter,
  dxRichEdit.NativeApi, dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  dxLayoutContainer, dxLayoutLookAndFeels,
  dxRichEdit.Control.Core, dxLayoutControl, System.Actions;

type
  TfrmRichEditDocumentRestrictions = class(TfrmRichEditFrame)
    ActionList: TActionList;
    acBold: TdxRichEditControlToggleFontBold;
    acItalic: TdxRichEditControlToggleFontItalic;
    acUnderline: TdxRichEditControlToggleFontUnderline;
    acAlignLeft: TdxRichEditControlToggleParagraphAlignmentLeft;
    acAlignRight: TdxRichEditControlToggleParagraphAlignmentRight;
    acAlignCenter: TdxRichEditControlToggleParagraphAlignmentCenter;
    acJustify: TdxRichEditControlToggleParagraphAlignmentJustify;
    acBullets: TdxRichEditControlToggleBulletedList;
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
    acFont: TdxRichEditControlShowFontForm;
    acShowTablePropertiesForm: TdxRichEditControlShowTablePropertiesForm;
    acFindNext: TdxRichEditControlSearchFindNext;
    acInsertTableForm: TdxRichEditControlShowInsertTableForm;
    acFontColor: TdxRichEditControlChangeFontColor;
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
    acInsertPicture: TdxRichEditControlInsertPicture;
    acAutoFitContents: TdxRichEditControlToggleTableAutoFitContents;
    acAutoFitWindow: TdxRichEditControlToggleTableAutoFitWindow;
    acFixedColumnWidth: TdxRichEditControlToggleTableFixedColumnWidth;
    acSplitTable: TdxRichEditControlSplitTable;
    acMergeCells: TdxRichEditControlMergeTableCells;
    acTextHighlight: TdxRichEditControlTextHighlight;
    acPageBreak: TdxRichEditControlInsertPageBreak;
    acDeleteTable: TdxRichEditControlDeleteTable;
    acDeleteTableRows: TdxRichEditControlDeleteTableRows;
    acDeleteTableColumns: TdxRichEditControlDeleteTableColumns;
    acLowerCase: TdxRichEditControlTextLowerCase;
    acUpperCase: TdxRichEditControlTextUpperCase;
    acToggleCase: TdxRichEditControlToggleTextCase;
    acSectionOneColumn: TdxRichEditControlSetSectionOneColumn;
    acSectionThreeColumns: TdxRichEditControlSetSectionThreeColumns;
    acSectionTwoColumns: TdxRichEditControlSetSectionTwoColumns;
    acMoreColumns: TdxRichEditControlShowColumnsSetupForm;
    acSectionBreakNextPage: TdxRichEditControlInsertSectionBreakNextPage;
    acSectionBreakOddPage: TdxRichEditControlInsertSectionBreakOddPage;
    acSectionBreakEvenPage: TdxRichEditControlInsertSectionBreakEvenPage;
    acColumnBreak: TdxRichEditControlInsertColumnBreak;
    acPageColor: TdxRichEditControlChangePageColor;
    acLineNumberingNone: TdxRichEditControlSetSectionLineNumberingNone;
    acLineNumberingContinuous: TdxRichEditControlSetSectionLineNumberingContinuous;
    acLineNumberingRestartNewPage: TdxRichEditControlSetSectionLineNumberingRestartNewPage;
    acLineNumberingRestartNewSection: TdxRichEditControlSetSectionLineNumberingRestartNewSection;
    acShowPageSetupForm: TdxRichEditControlShowPageSetupForm;
    BarManager: TdxBarManager;
    bmbParagraph: TdxBar;
    bmbFont: TdxBar;
    bmbIllustrations: TdxBar;
    bmbtLinks: TdxBar;
    bmbPage: TdxBar;
    bmbTables: TdxBar;
    beFontName: TcxBarEditItem;
    beFontSize: TcxBarEditItem;
    bbBold: TdxBarButton;
    bbItalic: TdxBarButton;
    bbUnderline: TdxBarButton;
    bbAlignLeft: TdxBarButton;
    bbAlignCenter: TdxBarButton;
    bbAlignRight: TdxBarButton;
    bbBullets: TdxBarButton;
    rgiColorTheme: TdxRibbonGalleryItem;
    rgiPageColorTheme: TdxRibbonGalleryItem;
    rgiFontColor: TdxRibbonGalleryItem;
    rgiPageColor: TdxRibbonGalleryItem;
    bbFontSuperscript: TdxBarButton;
    bbFontSubscript: TdxBarButton;
    bbIncreaseFontSize: TdxBarButton;
    bbDecreaseFontSize: TdxBarButton;
    bsiLineSpacing: TdxBarSubItem;
    bbSingleLineSpacing: TdxBarButton;
    bbSesquialteralLineSpacing: TdxBarButton;
    bbDoubleLineSpacing: TdxBarButton;
    bbAlignJustify: TdxBarButton;
    bbNumbering: TdxBarButton;
    bbMultiLevelList: TdxBarButton;
    bbDoubleUnderline: TdxBarButton;
    bbStrikeout: TdxBarButton;
    bbDoubleStrikeout: TdxBarButton;
    bbShowWhitespace: TdxBarButton;
    bbDecrementIndent: TdxBarButton;
    bbIncrementIndent: TdxBarButton;
    bbParagraph: TdxBarButton;
    bbTableProperties: TdxBarButton;
    bbInsertTable: TdxBarButton;
    bsiBorders: TdxBarSubItem;
    bbBottomBorder: TdxBarButton;
    bbTopBorder: TdxBarButton;
    bbLeftBorder: TdxBarButton;
    bbRightBorder: TdxBarButton;
    bbNoBorder: TdxBarButton;
    bbAllBorder: TdxBarButton;
    bbOutsideBorder: TdxBarButton;
    bbInsideBorders: TdxBarButton;
    bbInsideHorizontalBorder: TdxBarButton;
    bbInsideVerticalBorder: TdxBarButton;
    bbCellsAlignTopLeft: TdxBarButton;
    bbCellsAlignCenterLeft: TdxBarButton;
    bbCellsAlignBottomLeft: TdxBarButton;
    bbCellsAlignTopCenter: TdxBarButton;
    bbCellsAlignCenter: TdxBarButton;
    bbCellsBottomCenterAlign: TdxBarButton;
    bbCellsTopRightAlign: TdxBarButton;
    bbCellsCenterRightAlign: TdxBarButton;
    bbBottomRightAlign: TdxBarButton;
    bbSplitCells: TdxBarButton;
    bbInsertRowAbove: TdxBarButton;
    bbInsertRowBelow: TdxBarButton;
    bbInsertColumnToTheLeft: TdxBarButton;
    bbInsertColumnToTheRight: TdxBarButton;
    bsiDelete: TdxBarSubItem;
    bbDeleteCells: TdxBarButton;
    bbHyperlink: TdxBarButton;
    bbInsertPicture: TdxBarButton;
    bsiAutoFit: TdxBarSubItem;
    bbAutoFitContents: TdxBarButton;
    bbFixedColumnWidth: TdxBarButton;
    bbAutoFitWindow: TdxBarButton;
    bbSplitTable: TdxBarButton;
    bbMergeCells: TdxBarButton;
    bbTextHighlight: TdxBarButton;
    bbPage: TdxBarButton;
    bbDeleteTable: TdxBarButton;
    bbDeleteRows: TdxBarButton;
    bbDeleteColumns: TdxBarButton;
    bsiChangeCase: TdxBarSubItem;
    bbUpperCase: TdxBarButton;
    bbToggleCase: TdxBarButton;
    bbLowerCase: TdxBarButton;
    sbiColumns: TdxBarSubItem;
    bbOneColumn: TdxBarButton;
    bbTwoColumns: TdxBarButton;
    bbThreeColumn: TdxBarButton;
    bbFontColor: TdxBarButton;
    rgiTextHighlightColorTheme: TdxRibbonGalleryItem;
    rgiTextHighlightColor: TdxRibbonGalleryItem;
    bbMoreColumns: TdxBarButton;
    bsiBreaks: TdxBarSubItem;
    bbColumn: TdxBarButton;
    bbSectionNext: TdxBarButton;
    bbSectionEvenPage: TdxBarButton;
    bbSectionOdd: TdxBarButton;
    bsiPageColor: TdxBarSubItem;
    bsiLineNumbers: TdxBarSubItem;
    bbLineNumberingNone: TdxBarButton;
    bbacLineNumberingRestartNewSection: TdxBarButton;
    bbLineNumberingRestartNewPage: TdxBarButton;
    bbLineNumberingContinuous: TdxBarButton;
    biHintContainer: TdxBarControlContainerItem;
    bsiAlign: TdxBarSubItem;
    ppmFontColor: TdxRibbonPopupMenu;
    ppmTextHighlightColor: TdxRibbonPopupMenu;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    lgParagraph: TdxLayoutGroup;
    lgNumbering: TdxLayoutGroup;
    lgContent: TdxLayoutGroup;
    lgLinks: TdxLayoutGroup;
    lgOther: TdxLayoutGroup;
    cbFormatting: TdxLayoutCheckBoxItem;
    cbStyle: TdxLayoutCheckBoxItem;
    cbInsertNew: TdxLayoutCheckBoxItem;
    cbParagraphFormatting: TdxLayoutCheckBoxItem;
    cbTabs: TdxLayoutCheckBoxItem;
    cbParagraphStyle: TdxLayoutCheckBoxItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    cbBulleted: TdxLayoutCheckBoxItem;
    cbMultiLevel: TdxLayoutCheckBoxItem;
    cbSimple: TdxLayoutCheckBoxItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    cbPictures: TdxLayoutCheckBoxItem;
    cbContentTabs: TdxLayoutCheckBoxItem;
    cbHyperlinks: TdxLayoutCheckBoxItem;
    cbBookmarks: TdxLayoutCheckBoxItem;
    cbSections: TdxLayoutCheckBoxItem;
    cbHeadersFooters: TdxLayoutCheckBoxItem;
    cbTables: TdxLayoutCheckBoxItem;
    cbHideDisabledBarItems: TdxLayoutCheckBoxItem;
    dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    procedure bbFontColorClick(Sender: TObject);
    procedure bbTextHighlightClick(Sender: TObject);
    procedure OptionsChanged(Sender: TObject);
  private
    FFontColorPicker: TPopupColorPickerController;
    FPageColorPicker: TSubItemColorPickerController;
    FTextHighlightColorPicker: TPopupColorPickerController;

    procedure PageColorChangedHandler(Sender: TObject);
    procedure UpdateFontColor;
    procedure UpdateFontColorImage;
    procedure UpdateTextHighlight;
    procedure UpdateTextHighlightImage;
  protected
    function GetOptionValue(AValue: Boolean): TdxDocumentCapability;
    procedure UpdateBookmarks;
    procedure UpdateBulleted;
    procedure UpdateCharacterFormatting;
    procedure UpdateCharacterStyle;
    procedure UpdateContentTabs;
    procedure UpdateHeadersFooters;
    procedure UpdateHyperlinks;
    procedure UpdateInsertNew;
    procedure UpdateMultiLevel;
    procedure UpdateOptions;
    procedure UpdateParagraphFormatting;
    procedure UpdateParagraphStyle;
    procedure UpdateParagraphTabs;
    procedure UpdatePicture;
    procedure UpdateSections;
    procedure UpdateSimple;
    procedure UpdateTables;

    function GetDescription: string; override;
    function GetStartDocumentName: string; override;
  public
    constructor Create(AOwner: TComponent; ARibbon: TdxRibbon); override;
    destructor Destroy; override;
  end;

var
  frmRichEditDocumentRestrictions: TfrmRichEditDocumentRestrictions;

implementation

{$R *.dfm}

uses
  Vcl.Graphics, System.SysUtils, dxCoreGraphics, dxFrames, FrameIDs, uStrsConst, dxDPIAwareUtils;

{ TfrmRichEditDocumentRestriction }

constructor TfrmRichEditDocumentRestrictions.Create(AOwner: TComponent;
  ARibbon: TdxRibbon);
begin
  inherited Create(AOwner, ARibbon);
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

destructor TfrmRichEditDocumentRestrictions.Destroy;
begin
  FreeAndNil(FTextHighlightColorPicker);
  FreeAndNil(FPageColorPicker);
  FreeAndNil(FFontColorPicker);
  inherited Destroy;
end;

function TfrmRichEditDocumentRestrictions.GetDescription: string;
begin
  Result := sdxFrameDocumentRestrictions;
end;

function TfrmRichEditDocumentRestrictions.GetOptionValue(AValue: Boolean): TdxDocumentCapability;
begin
  if AValue then
    Result := TdxDocumentCapability.Default
  else
    if cbHideDisabledBarItems.Checked then
      Result := TdxDocumentCapability.Hidden
    else
      Result := TdxDocumentCapability.Disabled;
end;

procedure TfrmRichEditDocumentRestrictions.UpdateBookmarks;
begin
  RichEditControl.Options.DocumentCapabilities.Bookmarks := GetOptionValue(cbBookmarks.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateBulleted;
begin
  RichEditControl.Options.DocumentCapabilities.Numbering.Bulleted := GetOptionValue(cbBulleted.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateCharacterFormatting;
begin
  RichEditControl.Options.DocumentCapabilities.CharacterFormatting := GetOptionValue(cbFormatting.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateCharacterStyle;
begin
  RichEditControl.Options.DocumentCapabilities.CharacterStyle := GetOptionValue(cbStyle.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateContentTabs;
begin
//  RichEditControl.Options.DocumentCapabilities.
end;

procedure TfrmRichEditDocumentRestrictions.UpdateHeadersFooters;
begin
  RichEditControl.Options.DocumentCapabilities.HeadersFooters := GetOptionValue(cbHeadersFooters.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateHyperlinks;
begin
  RichEditControl.Options.DocumentCapabilities.Hyperlinks := GetOptionValue(cbHyperlinks.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateInsertNew;
begin
  RichEditControl.Options.DocumentCapabilities.Paragraphs := GetOptionValue(cbInsertNew.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateMultiLevel;
begin
  RichEditControl.Options.DocumentCapabilities.Numbering.MultiLevel := GetOptionValue(cbMultiLevel.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateOptions;
begin
  UpdateBookmarks;
  UpdateBulleted;
  UpdateCharacterFormatting;
  UpdateCharacterStyle;
  UpdateContentTabs;
  UpdateHeadersFooters;
  UpdateHyperlinks;
  UpdateInsertNew;
  UpdateMultiLevel;
  UpdateParagraphFormatting;
  UpdateParagraphStyle;
  UpdateParagraphTabs;
  UpdatePicture;
  UpdateSections;
  UpdateSimple;
  UpdateTables;
  ReloadDocument;
end;

procedure TfrmRichEditDocumentRestrictions.UpdateParagraphFormatting;
begin
  RichEditControl.Options.DocumentCapabilities.ParagraphFormatting := GetOptionValue(cbParagraphFormatting.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateParagraphStyle;
begin
  RichEditControl.Options.DocumentCapabilities.ParagraphStyle := GetOptionValue(cbParagraphStyle.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateParagraphTabs;
begin
  RichEditControl.Options.DocumentCapabilities.ParagraphTabs := GetOptionValue(cbTabs.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdatePicture;
begin
  RichEditControl.Options.DocumentCapabilities.InlinePictures := GetOptionValue(cbPictures.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateSections;
begin
  RichEditControl.Options.DocumentCapabilities.Sections := GetOptionValue(cbSections.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateSimple;
begin
  RichEditControl.Options.DocumentCapabilities.Numbering.Simple := GetOptionValue(cbSimple.Checked);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateTables;
begin
  RichEditControl.Options.DocumentCapabilities.Tables := GetOptionValue(cbTables.Checked);
end;

function TfrmRichEditDocumentRestrictions.GetStartDocumentName: string;
begin
  Result := sdxDocumentRestrictionsStartDocumentName;
end;

procedure TfrmRichEditDocumentRestrictions.PageColorChangedHandler(
  Sender: TObject);
begin
  acPageColor.UpdateTarget(ActiveRichEdit);
  acPageColor.Value := dxColorToAlphaColor(FPageColorPicker.Color);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateFontColor;
begin
  acFontColor.UpdateTarget(ActiveRichEdit);
  UpdateFontColorImage;
  acFontColor.Value := dxColorToAlphaColor(FFontColorPicker.Color);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateFontColorImage;
begin
  DrawHelpedColorLine(dxGetScaleFactor(Self), bbFontColor.Glyph, FFontColorPicker.Color, dmMain.ilBarSmall,
    acFontColor.ImageIndex);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateTextHighlight;
begin
  acTextHighlight.UpdateTarget(ActiveRichEdit);
  UpdateTextHighlightImage;
  acTextHighlight.Value := dxColorToAlphaColor(FTextHighlightColorPicker.Color);
end;

procedure TfrmRichEditDocumentRestrictions.UpdateTextHighlightImage;
begin
  DrawHelpedColorLine(dxGetScaleFactor(Self), bbTextHighlight.Glyph, FTextHighlightColorPicker.Color, dmMain.ilBarSmall,
    acTextHighlight.ImageIndex);
end;

procedure TfrmRichEditDocumentRestrictions.bbFontColorClick(Sender: TObject);
begin
  UpdateFontColor;
end;

procedure TfrmRichEditDocumentRestrictions.bbTextHighlightClick(
  Sender: TObject);
begin
  UpdateTextHighlight;
end;

procedure TfrmRichEditDocumentRestrictions.OptionsChanged(
  Sender: TObject);
begin
  UpdateOptions;
end;

initialization
  dxFrameManager.RegisterFrame(RichEditDocumentRestrictionsID, TfrmRichEditDocumentRestrictions,
    RichEditDocumentRestrictionsFrameName,  RestrictionsGroupIndex, -1, -1);

finalization

end.
