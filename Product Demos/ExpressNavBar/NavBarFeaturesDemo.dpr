program NavBarFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\Common\dxSplashUnit.pas',
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress},
  Main in 'Main.pas' {frmMain},
  dxNavBarControlBaseFormUnit in 'dxNavBarControlBaseFormUnit.pas' {dxNavBarControlDemoUnitForm},
  dxNavBarPhotoStudioFormUnit in 'dxNavBarPhotoStudioFormUnit.pas' {dxNavBarControlDemoUnitForm1},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxNavBarViewsFormUnit in 'dxNavBarViewsFormUnit.pas' {dxNavBarControlDemoUnitForm2},
  dxNavBarDragAndDropFormUnit in 'dxNavBarDragAndDropFormUnit.pas' {frmDragAndDrop},
  maindata in 'maindata.pas' {DataModule2: TDataModule},
  dxNavBarAutoTraderFormUnit in 'dxNavBarAutoTraderFormUnit.pas' {frmAutoTrader},
  dxNavBarNavigationPaneFormUnit in 'dxNavBarNavigationPaneFormUnit.pas' {frmNavigationPane},
  dxNavBarHamburgerMenuFormUnit in 'dxNavBarHamburgerMenuFormUnit.pas' {frmHamburgerMenu},
  LocalizationStrs in 'Data\LocalizationStrs.pas',
  dxDemoUtils in '..\Common\dxDemoUtils.pas';

{$R *.res}
{$R NavBarFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
