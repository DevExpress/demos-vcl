program FlowChartFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  main in 'main.pas' {frmMain},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas',
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxFlowChartBaseFormUnit in 'dxFlowChartBaseFormUnit.pas' {dxFlowChartDemoUnitForm},
  dxFlowChartBaseDiagramDesignerFormUnit in 'dxFlowChartBaseDiagramDesignerFormUnit.pas' {dxFlowChartBaseDiagramDesignerForm},
  dxFlowChartCycleDiagram in 'dxFlowChartCycleDiagram.pas' {frmFlowChartCycleDiagram},
  dxFlowChartInformationFlow in 'dxFlowChartInformationFlow.pas' {frmFlowChartInformationFlow},
  dxFlowChartRelationshipDiagram in 'dxFlowChartRelationshipDiagram.pas' {frmFlowChartRelationshipDiagram},
  dxFlowChartDataModule in 'dxFlowChartDataModule.pas' {DataModule2: TDataModule},
  dxFlowChartProductFlowDiagram in 'dxFlowChartProductFlowDiagram.pas' {frmFlowChartProductFlowDiagram},
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {frmSplash},
  dxFlowChartFlowChartDemo in 'dxFlowChartFlowChartDemo.pas' {frmFlowChartFlowChartDemo},
  dxFlowChartCustomShapesDiagram in 'dxFlowChartCustomShapesDiagram.pas' {frmFlowChartCustomShapesDiagram},
  dxFlowChartShapesDiagram in 'dxFlowChartShapesDiagram.pas' {frmFlowChartShapesDiagram},
  dxFlowChartConnectors in 'dxFlowChartConnectors.pas' {frmFlowChartConnectors};

{$R *.res}
{$R FlowChartFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
