program EditorFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  cxFilter,
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxDemosDB in '..\Common\dxDemosDB.pas',
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress},
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {frmSplash},
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  Main in 'Main.pas' {frmMain},
  uStrsConst in 'uStrsConst.pas',
  dxCustomDemoFrameUnit in 'dxCustomDemoFrameUnit.pas' {dxCustomDemoFrame: TFrame},
  dxFrameCustomControl in 'dxFrameCustomControl.pas' {frmCustomControl: TFrame},
  dxFrames in 'dxFrames.pas',
  FrameIDs in 'FrameIDs.pas',
  PropertiesPopup in '..\Common\PropertiesPopup.pas' {fmPopupTree},
  maindata in 'maindata.pas' {dmMain: TDataModule},
  RatingControlDemoImagePicker in 'RatingControlDemoImagePicker.pas' {frmImagePicker},
  uActivityIndicator in 'uActivityIndicator.pas' {frmActivityIndicator: TFrame},
  uBarCode in 'uBarCode.pas' {frmBarCode: TFrame},
  uDBNavigator in 'uDBNavigator.pas' {frmDBNavigator: TFrame},
  uButtonEdit in 'uButtonEdit.pas' {frmButtonEdit: TFrame},
  uBlobEdit in 'uBlobEdit.pas' {frmBlobEdit: TFrame},
  uBreadcrumbEdit in 'uBreadcrumbEdit.pas' {frmBreadcrumbEdit: TFrame},
  uCalcEdit in 'uCalcEdit.pas' {frmCalcEdit: TFrame},
  uCalloutPopup in 'uCalloutPopup.pas' {frmCalloutPopup: TFrame},
  uCheckBox in 'uCheckBox.pas' {frmCheckBox: TFrame},
  uCheckComboBox in 'uCheckComboBox.pas' {frmCheckComboBox: TFrame},
  uCheckGroupBox in 'uCheckGroupBox.pas' {frmCheckGroupBox: TFrame},
  uCheckListBox in 'uCheckListBox.pas' {frmCheckListBox: TFrame},
  uColorComboBox in 'uColorComboBox.pas' {frmColorComboBox: TFrame},
  uColorEdit in 'uColorEdit.pas' {frmColorEdit: TFrame},
  uComboBox in 'uComboBox.pas' {frmComboBox: TFrame},
  uContactDetails in 'uContactDetails.pas' {frmContactDetails: TFrame},
  uDateEdit in 'uDateEdit.pas' {frmDateEdit: TFrame},
  uFontNameComboBox in 'uFontNameComboBox.pas' {frmFontNameComboBox: TFrame},
  uGalleryControl in 'uGalleryControl.pas' {frmGalleryControl: TFrame},
  uGridInplaceEditorsUnit in 'uGridInplaceEditorsUnit.pas' {frmGridInplaceEditors: TFrame},
  uHyperLink in 'uHyperLink.pas' {frmHyperLink: TFrame},
  uImageComboBox in 'uImageComboBox.pas' {frmImageComboBox: TFrame},
  uLookupComboBox in 'uLookupComboBox.pas' {frmLookupComboBox: TFrame},
  uLookupExt in 'uLookupExt.pas' {frmLookupExt: TFrame},
  uMaskEdit in 'uMaskEdit.pas' {frmMaskEdit: TFrame},
  uMCListBox in 'uMCListBox.pas' {frmMCListBox: TFrame},
  uMemoEdit in 'uMemoEdit.pas' {frmMemoEdit: TFrame},
  uMRUEdit in 'uMRUEdit.pas' {frmMRUEdit: TFrame},
  uPictureEditor in 'uPictureEditor.pas' {frmPictureEditor: TFrame},
  uProgressBar in 'uProgressBar.pas' {frmProgressBar: TFrame},
  uRadioGroup in 'uRadioGroup.pas' {frmRadioGroup: TFrame},
  uRangeControl in 'uRangeControl.pas' {frmRangeControl: TFrame},
  uRangeTrackBar in 'uRangeTrackBar.pas' {frmRangeTrackBar: TFrame},
  uRating in 'uRating.pas' {frmRating: TFrame},
  uShellBreadcrumbEdit in 'uShellBreadcrumbEdit.pas' {frmShellBreadcrumbEdit: TFrame},
  uSparklineEdit in 'uSparklineEdit.pas' {frmSparklineEdit: TFrame},
  uSpinEdit in 'uSpinEdit.pas' {frmSpinEdit: TFrame},
  uTextEdit in 'uTextEdit.pas' {frmTextEdit: TFrame},
  uTimeEdit in 'uTimeEdit.pas' {frmTimeEdit: TFrame},
  uToggleSwitch in 'uToggleSwitch.pas' {frmToggleSwitch: TFrame},
  uTokenEdit in 'uTokenEdit.pas' {frmTokenEdit: TFrame},
  uTrackBar in 'uTrackBar.pas' {frmTrackBar: TFrame},
  uValidation in 'uValidation.pas' {frmValidation: TFrame},
  uWheelPicker in 'uWheelPicker.pas' {frmWheelPicker: TFrame},
  uZoomTrackBar in 'uZoomTrackBar.pas' {frmZoomTrackBar: TFrame},
  uUIAdorners in 'uUIAdorners.pas' {frmUIAdorners: TFrame},
  uFormattedLabel in 'uFormattedLabel.pas',
  uHyperlinkDialog in 'uHyperlinkDialog.pas',
  uTreeViewControl in 'uTreeViewControl.pas',
  uListViewControl in 'uListViewControl.pas' {frmListViewControl},
  uShellControls in 'uShellControls.pas' {frmShellControls: TFrame};

{$R *.res}
{$R EditorFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  cxFilter.dxFilterCriteriaDisplayStyle := fcdsTokens;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
