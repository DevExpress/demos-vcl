program RibbonNotepadDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\..\Common\dxSplashUnit.pas',
  RibbonNotepadMainForm in 'RibbonNotepadMainForm.pas' {frmRibbonNotepadMain},
  dxAboutDemo in '..\..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  NotepadChildForm in '..\NotepadChildForm.pas' {frmNotepadChild},
  NotepadMainForm in '..\NotepadMainForm.pas' {frmNotepadMain},
  RibbonNotepadDemoGallerySetup in 'RibbonNotepadDemoGallerySetup.pas' {ColorDialogSetupForm},
  RibbonNotepadDemoOptions in 'RibbonNotepadDemoOptions.pas' {RibbonDemoOptionsForm},
  RibbonNotepadChildForm in 'RibbonNotepadChildForm.pas' {frmRibbonNotepadChild},
  dxDemoUtils in '..\..\Common\dxDemoUtils.pas';

{$R *.res}
{$R ..\BarIcons.res}
{$R ..\..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRibbonNotepadMain, frmRibbonNotepadMain);
  Application.CreateForm(TColorDialogSetupForm, ColorDialogSetupForm);
  Application.Run;
end.
