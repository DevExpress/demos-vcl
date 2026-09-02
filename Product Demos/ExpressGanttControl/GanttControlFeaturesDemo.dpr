program GanttControlFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {TfrmSplash},
  Main in 'Main.pas' {frmMain},
  dxGanttControlFeaturesDemoStrConsts in 'dxGanttControlFeaturesDemoStrConsts.pas',
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress},
  dxGanttControlSoftwareDevelopmentFormUnit in 'dxGanttControlSoftwareDevelopmentFormUnit.pas' {frmSoftwareDevelopment},
  dxGanttControlLargeDataFormUnit in 'dxGanttControlLargeDataFormUnit.pas' {frmLargeData},
  dxGanttControlSchedulerDataImportFormUnit in 'dxGanttControlSchedulerDataImportFormUnit.pas' {frmSchedulerDataImport},
  dxGanttControlBaseFormUnit in 'dxGanttControlBaseFormUnit.pas' {dxGanttControlBaseDemoForm},
  dxGanttControlExtendedAttributesFormUnit in 'dxGanttControlExtendedAttributesFormUnit.pas' {frmExtendedAttributes},
  dxGanttControlBaselineFormUnit in 'dxGanttControlBaselineFormUnit.pas' {frmBaselines: TfrmBaselines};

{$R *.res}
{$R GanttControlFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressQuantumTreeList Features Demo';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
