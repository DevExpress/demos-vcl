program HybridApp;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  MidasLib,
  Vcl.Forms, dxUIAClasses,
  MainUnit in 'MainUnit.pas' {MainForm},
  HybridAppDM in 'HybridAppDM.pas' {DM: TDataModule},
  HybridAppBaseFrame in 'HybridAppBaseFrame.pas' {frmBase: TFrame},
  HybridAppFrameTasks in 'HybridAppFrameTasks.pas' {frmTasks: TFrame},
  HybridAppFrameEmployees in 'HybridAppFrameEmployees.pas' {frmEmployees: TFrame},
  HybridAppFrameProducts in 'HybridAppFrameProducts.pas' {frmProducts: TFrame},
  HybridAppFrameCustomers in 'HybridAppFrameCustomers.pas' {frmCustomers: TFrame},
  HybridAppFrameSales in 'HybridAppFrameSales.pas' {frmSales: TFrame},
  HybridAppFrameTasksPrint in 'HybridAppFrameTasksPrint.pas' {frmTasksPrint: TFrame},
  HybridAppFrameEmployeeEdit in 'HybridAppFrameEmployeeEdit.pas' {frmEmployeeEdit: TFrame},
  fmTaskEditUnit in 'fmTaskEditUnit.pas' {fmTaskEdit},
  HybridAppFrameCustomerEdit in 'HybridAppFrameCustomerEdit.pas' {frmCustomerEdit: TFrame},
  HybridAppFrameProductEdit in 'HybridAppFrameProductEdit.pas' {frmProductEdit: TFrame},
  HybridAppFrameSaleView in 'HybridAppFrameSaleView.pas' {frmSaleView: TFrame},
  HybridAppFrameSalesPrint in 'HybridAppFrameSalesPrint.pas' {frmSalesPrint: TFrame},
  HybridAppDataPath in 'HybridAppDataPath.pas',
  LocalizationStrs in 'LocalizationStrs.pas';

{$R *.res}
{$R HybridAppIcon.res}
{$R '..\..\Product Demos\Common\dxDPIAwareManifestPM2.res'}
{$R '..\..\Product Demos\Common\Demo_dxSplashResource.res'}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
