program PivotGridFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  Vcl.Dialogs,
  cxFilter,
  cxPivotDataModule in 'cxPivotDataModule.pas' {dmPivot: TDataModule},
  cxPivotBaseFormUnit in 'cxPivotBaseFormUnit.pas' {cxPivotGridDemoUnitForm},
  cxPivotCustomerReportsFormUnit in 'cxPivotCustomerReportsFormUnit.pas' {cxPivotCustomerReports},
  cxPivotProductReportsFormUnit in 'cxPivotProductReportsFormUnit.pas' {cxPivotProductReports},
  cxPivotOrderReportsFormUnit in 'cxPivotOrderReportsFormUnit.pas' {cxPivotOrderReports},
  cxPivotSalesPersonFormUnit in 'cxPivotSalesPersonFormUnit.pas' {frmSalesPerson},
  cxPivotSingleTotalFormUnit in 'cxPivotSingleTotalFormUnit.pas' {frmSingleTotal},
  cxPivotMultipleTotalFormUnit in 'cxPivotMultipleTotalFormUnit.pas' {frmMultipleTotals},
  cxPivotSummaryVariationFormUnit in 'cxPivotSummaryVariationFormUnit.pas' {frmSummaryVariation},
  cxPivotTotalsLocationFormUnit in 'cxPivotTotalsLocationFormUnit.pas' {frmTotalsLocation},
  cxPivotCompactLayoutFormUnit in 'cxPivotCompactLayoutFormUnit.pas' {frmCompactLayout},
  cxPivotSortBySummaryFormUnit in 'cxPivotSortBySummaryFormUnit.pas' {frmSortBySummary},
  cxPivotTopValuesFormUnit in 'cxPivotTopValuesFormUnit.pas' {frmTopValues},
  cxPivotIntervalGroupingFormUnit in 'cxPivotIntervalGroupingFormUnit.pas' {frmIntervalGrouping},
  cxPivotFieldsCustomizationFormUnit in 'cxPivotFieldsCustomizationFormUnit.pas' {frmFieldsCustomization},
  cxPivotFieldsGroupsFormUnit in 'cxPivotFieldsGroupsFormUnit.pas' {frmGroups},
  cxPivotVisualStylesFormUnit in 'cxPivotVisualStylesFormUnit.pas' {frmVisualStyles},
  cxPivotCustomDrawFormUnit in 'cxPivotCustomDrawFormUnit.pas' {frmCustomDraw},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {frmSplash},
  cxPivotDrillDownFormUnit in 'cxPivotDrillDownFormUnit.pas' {frmDrillDown},
  cxPivotGridChartConnectionFormUnit in 'cxPivotGridChartConnectionFormUnit.pas' {fmPivotGridChartConnection},
  cxPivotPrefilterFormUnit in 'cxPivotPrefilterFormUnit.pas' {frmPrefilter},
  cxPivotGridInplaceEditorsFormUnit in 'cxPivotGridInplaceEditorsFormUnit.pas' {frmInplaceEditors},
  cxPivotOLAPBrowserFormUnit in 'cxPivotOLAPBrowserFormUnit.pas' {frmOLAPBrowser},
  cxCustomPivotBaseFormUnit in 'cxCustomPivotBaseFormUnit.pas' {cxCustomPivotGridDemoUnitForm},
  cxUnboundPivotBaseFormUnit in 'cxUnboundPivotBaseFormUnit.pas' {cxUnboundPivotGridDemoUnitForm},
  cxPivotGridSummaryDataSetFormUnit in 'cxPivotGridSummaryDataSetFormUnit.pas' {frmSummaryDataSet},
  cxPivotOLAPMultipleTotalsFormUnit in 'cxPivotOLAPMultipleTotalsFormUnit.pas' {frmOLAPMultipleTotals},
  cxPivotOLAPDrillDownFormUnit in 'cxPivotOLAPDrillDownFormUnit.pas' {frmOLAPDrillDown},
  cxPivotRuntimeSummaryChangeFormUnit in 'cxPivotRuntimeSummaryChangeFormUnit.pas' {frmRuntimeSummaryChange},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas',
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  Main in 'Main.pas' {frmMain},
  dxDemoUtils in '..\Common\dxDemoUtils.pas';

{$R *.res}
{$R PivotGridFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  cxFilter.dxFilterCriteriaDisplayStyle := fcdsTokens;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressPivotGrid Features Demo';
  if HasJet then
  begin
    Application.CreateForm(TdmPivot, dmPivot);
    Application.CreateForm(TfrmMain, frmMain);
    Application.Run;
  end
  else
    ShowMessage(ThereisNoMDACMessage);
end.
