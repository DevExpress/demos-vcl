program OrgChartFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {TfrmSplash},
  main in 'main.pas' {MainForm},
  Options in 'Options.pas' {OptionsForm},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  DBDataEditor in 'DBDataEditor.pas' {fmDBDataEditor};

{$R *.res}
{$R OrgChartFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressOrgChart Demo';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TOptionsForm, OptionsForm);
  Application.Run;
end.
