program RichEditControlFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  uStrsConst in 'uStrsConst.pas',
  dxFrames in 'dxFrames.pas',
  FrameIDs in 'FrameIDs.pas',
  dxSplashUnit in '..\Common\dxSplashUnit.pas',
  MainData in 'MainData.pas' {dmMain: TDataModule},
  dxDemoBaseMainForm in 'dxDemoBaseMainForm.pas' {frmMainBase},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas',
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  RichEditControlBase in 'RichEditControlBase.pas' {frmRichEditControlBase},
  RibbonRichEditMainForm in 'RibbonRichEditMainForm.pas' {frmRibbonRichEditMain},
  RibbonRichEditDemoGallerySetup in 'RibbonRichEditDemoGallerySetup.pas' {ColorDialogSetupForm},
  uSpellChecking in 'uSpellChecking.pas' {frmRichEditSpellChecking: TFrame},
  dxCustomFrame in 'dxCustomFrame.pas' {frmCustomFrame: TFrame},
  dxRichEditFrame in 'dxRichEditFrame.pas' {frmRichEditFrame: TFrame},
  uRibbonUI in 'uRibbonUI.pas' {frmRichEditRibbonUI: TFrame},
  uFloatingObjects in 'uFloatingObjects.pas' {frmRichEditFloatingObjects: TFrame},  
  uAIAssistant in 'uAIAssistant.pas' {frmRichEditAIAssistant: TFrame},
  uLoadSaveRTF in 'uLoadSaveRTF.pas' {frmRichEditLoadSaveRTF: TFrame},
  uCharacterFormatting in 'uCharacterFormatting.pas' {frmCharacterFormatting: TFrame},
  uParagraphFormatting in 'uParagraphFormatting.pas' {frmParagraphFormatting: TFrame},
  uStyles in 'uStyles.pas' {frmRichEditStyles: TFrame},
  uBulletsAndNumbering in 'uBulletsAndNumbering.pas' {frmRichEditBulletsAndNumbering: TFrame},
  uTables in 'uTables.pas' {frmRichEditTables: TFrame},
  uDocumentViewsAndLayouts in 'uDocumentViewsAndLayouts.pas' {frmRichEditDocumentViewsAndLayouts: TFrame},
  uMultiColumnContent in 'uMultiColumnContent.pas' {frmRichEditMultiColumnContent: TFrame},
  uZooming in 'uZooming.pas' {frmRichEditZooming: TFrame},
  uFindAndReplace in 'uFindAndReplace.pas' {frmRichEditFindAndReplace: TFrame},
  uLineNumbering in 'uLineNumbering.pas' {frmRichEditLineNumbering: TFrame},
  uDocumentRestrictions in 'uDocumentRestrictions.pas' {frmRichEditDocumentRestrictions: TFrame},
  uOperationRestrictions in 'uOperationRestrictions.pas' {frmRichEditOperationRestrictions: TFrame},
  uHyperlinksAndBookmarks in 'uHyperlinksAndBookmarks.pas' {frmRichEditHyperlinksAndBookmarks: TFrame},
  uHeadersAndFooters in 'uHeadersAndFooters.pas' {frmRichEditHeadersAndFooters: TFrame},
  uMailMergeRuntimeData in 'uMailMergeRuntimeData.pas' {frmRichEditMailMergeRuntimeData: TFrame},
  uMailMergeDatabase in 'uMailMergeDatabase.pas' {frmRichEditMailMergeDataBase: TFrame},
  uMasterDetailMailMerge in 'uMasterDetailMailMerge.pas' {frmRichEditMasterDetailMailMerge: TFrame},
  uLoadSaveDOCX in 'uLoadSaveDOCX.pas' {frmRichEditLoadSaveDOCX: TFrame},
  uTableOfContents in 'uTableOfContents.pas' {frmRichEditTableOfContents: TFrame},
  uDocumentProtection in 'uDocumentProtection.pas' {frmRichEditDocumentProtection: TFrame},
  uLoadSaveHTML in 'uLoadSaveHTML.pas' {frmRichEditLoadSaveHTML: TFrame},
  uLoadSaveDOC in 'uLoadSaveDOC.pas' {frmRichEditLoadSaveDOC: TFrame},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoUtils in '..\Common\dxDemoUtils.pas';

{$R *.res}
{$R RichEditControlFeaturesIcon.res}
{$IF defined(VER220) or defined(VER210) or defined(VER185) or defined(VER150)}
  {$R WindowsXP.res}
{$IFEND}
{$R ..\Common\dxDPIAwareManifestPM2.res}
{$R RibbonRichEditDemoAppGlyphs.res}

begin
  dxUIAutomationEnabled := True;
  Application.Title := 'Rich Edit Demo';
  Application.CreateForm(TdmMain, dmMain);
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRibbonRichEditMain, frmRibbonRichEditMain);
  Application.CreateForm(TColorDialogSetupForm, ColorDialogSetupForm);
  Application.Run;
end.
