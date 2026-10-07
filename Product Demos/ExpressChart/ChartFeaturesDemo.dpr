program ChartFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {frmSplash},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress},
  RibbonChartControlMainForm in 'RibbonChartControlMainForm.pas' {frmMain},
  MainData in 'Common\MainData.pas' {dmMain: TDataModule},
  FrameIDs in 'FrameIDs.pas',
  dxFrames in 'dxFrames.pas',
  dxCustomDemoFrameUnit in 'dxCustomDemoFrameUnit.pas' {dxCustomDemoFrame: TFrame},
  dxChartCustomFrameUnit in 'dxChartCustomFrameUnit.pas' {dxChartCustomFrame: TFrame},
  uChartFrameLine in 'uChartFrameLine.pas' {dxChartLineFrame: TFrame},
  uChartFrameArea in 'uChartFrameArea.pas' {dxChartFrameArea: TFrame},
  uChartFrameBar in 'uChartFrameBar.pas' {dxChartFrameBar: TFrame},
  uChartFramePie in 'uChartFramePie.pas' {dxChartFramePie: TFrame},
  uChartFrameDoughnut in 'uChartFrameDoughnut.pas' {dxChartFrameDoughnut: TFrame},
  uChartFrameMultiple in 'uChartFrameMultiple.pas' {dxChartFrameMultiple: TFrame},
  uChartFrameSecondaryAxes in 'uChartFrameSecondaryAxes.pas' {dxChartFrameSecondaryAxes: TFrame},
  uChartFrameLogarithmicAxes in 'uChartFrameLogarithmicAxes.pas' {dxChartFrameLogarithmicAxes: TFrame};

{$R *.res}
{$R ChartFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressChartControl Features Demo';
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
