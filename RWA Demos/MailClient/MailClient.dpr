program MailClient;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  MidasLib,
  Vcl.Controls,
  Vcl.Forms,
  dxUIAClasses,
  System.SysUtils,
  dxPrnPg,
  dxPrnDev,
  dxCore,
  dxSplashForms,
  dxAboutDemo in '..\..\Product Demos\Common\dxAboutDemo.pas',
  dxDemoUtils in '..\..\Product Demos\Common\dxDemoUtils.pas',
  MailClientDemoBase in 'MailClientDemoBase.pas' {MailClientDemoBaseFrame: TFrame},
  MailClientDemoCalendar in 'MailClientDemoCalendar.pas' {MailClientDemoCalendarFrame: TFrame},
  MailClientDemoMain in 'MailClientDemoMain.pas' {fmMailClientDemoMain},
  MailClientDemoData in 'MailClientDemoData.pas' {DM: TDataModule},
  MailClientDemoBaseGrid in 'MailClientDemoBaseGrid.pas' {MailClientDemoBaseGridFrame: TFrame},
  MailClientDemoMails in 'MailClientDemoMails.pas' {MailClientDemoMailsFrame: TFrame},
  MailClientDemoContacts in 'MailClientDemoContacts.pas' {MailClientDemoContactsFrame: TFrame},
  MailClientDemoTasks in 'MailClientDemoTasks.pas' {MailClientDemoTasksFrame: TFrame},
  fmMailUnit in 'fmMailUnit.pas' {fmMail},
  fmWhomSelectUnit in 'fmWhomSelectUnit.pas' {fmWhomSelect},
  fmBaseEditUnit in 'fmBaseEditUnit.pas' {fmBaseEdit},
  fmContactUnit in 'fmContactUnit.pas' {fmContact},
  fmTaskUnit in 'fmTaskUnit.pas' {fmTask},
  dxMailClientDemoUtils in 'dxMailClientDemoUtils.pas',
  fmTaskCustomDateUnit in 'fmTaskCustomDateUnit.pas' {fmTaskCustomDate},
  MailCloseDialog in 'MailCloseDialog.pas' {fmMailCloseDialog},
  MailClientDateNavigator in 'MailClientDateNavigator.pas' {Frame1: TFrame},
  MainClientDemoPrinting in 'MainClientDemoPrinting.pas' {frmPrinting: TFrame},
  LocalizationStrs in 'LocalizationStrs.pas',
  SelectLanguageUnit in 'SelectLanguageUnit.pas' {fmSelectLanguage},
  dxSkinsDefaultPainters,
  cxLookAndFeels,
  dxThreading;

{$R *.res}
{$R MailClientIcon.res}
{$R '..\..\Product Demos\Common\dxDPIAwareManifestPM2.res'}
{$R '..\..\Product Demos\Common\Demo_dxSplashResource.res'}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  if not SelectLanguage then
    Exit;
  TdxSplashFormManager.SplashForm.Show;
  RereadDefaultPrinterPage;
  dxInitPrintDevice(False);
  Application.CreateForm(TfmMailClientDemoMain, fmMailClientDemoMain);
  dxThreading.TdxUIThreadSyncService.EnqueueInvokeInUIThread(nil, TdxSplashFormManager.SplashForm.Hide);
  Application.Run;
end.
