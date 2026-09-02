program BarNotepadDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\..\Common\dxSplashUnit.pas' {TfrmSplash},
  NotepadMainForm in '..\NotepadMainForm.pas' {frmNotepadMain},
  NotepadChildForm in '..\NotepadChildForm.pas' {frmNotepadChild},
  BarNotepadMainForm in 'BarNotepadMainForm.pas' {frmBarsNotepadMain},
  dxAboutDemo in '..\..\Common\dxAboutDemo.pas' {formAboutDemo},
  dxDemoUtils in '..\..\Common\dxDemoUtils.pas';

{$R *.res}
{$R ..\BarIcons.res}
{$R ..\..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBarsNotepadMain, frmBarsNotepadMain);
  Application.Run;
end.
