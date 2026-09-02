program DockingMegaDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\..\Common\dxSplashUnit.pas',
  DockingMegaDemoMain in 'DockingMegaDemoMain.pas' {DockingMegaDemoMainForm},
  dxAboutDemo in '..\..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoUtils in '..\..\Common\dxDemoUtils.pas';

{$R *.res}
{$R ..\BarIcons.res}
{$R ..\..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressBars DockingMega Demo';
  Application.CreateForm(TDockingMegaDemoMainForm, DockingMegaDemoMainForm);
  Application.Run;
end.
