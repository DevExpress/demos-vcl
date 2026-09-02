program GaugeControlFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {TfrmSplash},
  Main in 'Main.pas' {frmMain},
  dxGaugeControlBaseFormUnit in 'dxGaugeControlBaseFormUnit.pas' {dxGaugeControlDemoUnitForm},
  dxGaugeControlStyles in 'dxGaugeControlStyles.pas' {frmGaugeStyles},
  dxGaugeControlWorldTime in 'dxGaugeControlWorldTime.pas' {frmWorldTime},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas',
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxGaugeControlCarBreakTester in 'dxGaugeControlCarBreakTester.pas' {frmGaugeControlCarBreakTester},
  dxGaugeControlTemperatureGauges in 'dxGaugeControlTemperatureGauges.pas' {frmGaugeControlTemperatureGauges},
  dxGaugeControlDataBinding in 'dxGaugeControlDataBinding.pas' {frmGaugeControlDataBinding},
  dxGaugeControlFullCircularGauges in 'dxGaugeControlFullCircularGauges.pas' {frmFullCircularGauges},
  dxGaugeControlHalfCircularGauges in 'dxGaugeControlHalfCircularGauges.pas' {frmHalfCircularGauges},
  dxGaugeControlLinearGauges in 'dxGaugeControlLinearGauges.pas' {frmLinearGauges},
  dxGaugeControlQuarterCircularGauges in 'dxGaugeControlQuarterCircularGauges.pas' {frmQuarterCircularGauges},
  dxGaugeControlDigitalGauges in 'dxGaugeControlDigitalGauges.pas' {frmDigitalGauges},
  dxGaugeControlSampleHybridGauges in 'dxGaugeControlSampleHybridGauges.pas' {frmSampleHybridGauges},
  dxGaugeControlThreeFourthCircularGauges in 'dxGaugeControlThreeFourthCircularGauges.pas' {frmThreeFourthCircularGauges},
  dxGaugeControlWideCircularGauges in 'dxGaugeControlWideCircularGauges.pas' {fmWideCircularGauges},
  dxGaugeControlSmartMeter in 'dxGaugeControlSmartMeter.pas' {frmSmartMeter},
  dxGaugeControlWeatherForecast in 'dxGaugeControlWeatherForecast.pas' {frmWeatherForecast},
  dxGaugeControlAnimation in 'dxGaugeControlAnimation.pas' {frmAnimation},
  dxGaugeControlDigitalScale in 'dxGaugeControlDigitalScale.pas' {frmLabelOrientation},
  dxGaugeControlDigitalScaleDisplayModes in 'dxGaugeControlDigitalScaleDisplayModes.pas' {frmGaugeControlDigitalGaugeDisplayModes},
  dxGaugeControlCircularScales in 'dxGaugeControlCircularScales.pas' {frmGaugeControlCircularScale},
  dxGaugeControlLinearScale in 'dxGaugeControlLinearScale.pas' {frmGaugeControlLinearScale};

{$R *.res}
{$R GaugeControlFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmGaugeControlCircularScale, frmGaugeControlCircularScale);
  Application.CreateForm(TfrmGaugeControlLinearScale, frmGaugeControlLinearScale);
  Application.Run;
end.
