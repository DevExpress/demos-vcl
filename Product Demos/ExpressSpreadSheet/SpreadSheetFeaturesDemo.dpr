program SpreadSheetFeaturesDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  System.SysUtils,
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {TfrmSplash},
  dxDemoPrintFrame in '..\Common\dxDemoPrintFrame.pas' {frmPrinting: TFrame},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  dxDemoBaseMainForm in '..\Common\dxDemoBaseMainForm.pas' {frmMainBase},
  dxExportProgressDialog in '..\Common\dxExportProgressDialog.pas' {frmExportProgress},
  dxDemoObjectInspector in '..\Common\dxDemoObjectInspector.pas' {frmInspector},
  dxCustomSpreadSheetBaseFormUnit in 'dxCustomSpreadSheetBaseFormUnit.pas' {dxCustomSpreadSheetDemoUnitForm: TFrame},
  dxSpreadSheetCustomFormUnit in 'dxSpreadSheetCustomFormUnit.pas' {dxSpreadSheetDemoCustomForm: TFrame},
  dxSpreadSheetBaseFormUnit in 'dxSpreadSheetBaseFormUnit.pas' {dxSpreadSheetDemoUnitForm: TFrame},
  ReportDesignerBaseUnit in 'ReportDesignerBaseUnit.pas' {dxSpreadSheetReportBaseForm: TFrame},
  LoanAmortizationScheduleFormUnit in 'LoanAmortizationScheduleFormUnit.pas' {frmLoanAmortizationSchedule: TFrame},
  InvoiceFormUnit in 'InvoiceFormUnit.pas' {frmInvoice: TFrame},
  RenameSheetFormUnit in 'RenameSheetFormUnit.pas' {frmRenameSheet},
  CommentsUnit in 'CommentsUnit.pas',
  Main in 'Main.pas' {frmMain},
  ExpenseReportFormUnit in 'ExpenseReportFormUnit.pas' {frmExpenseReport: TFrame},
  EmployeeInformationFormUnit in 'EmployeeInformationFormUnit.pas' {frmEmployeeInformation: TFrame},
  CellPropertiesViewerFormUnit in 'CellPropertiesViewerFormUnit.pas' {frmCellPropertiesViewer: TFrame},
  CustomDrawFormUnit in 'CustomDrawFormUnit.pas' {frmCustomDraw: TFrame},
  CustomFunctionFormUnit in 'CustomFunctionFormUnit.pas' {frmCustomFunction: TFrame},
  ShiftScheduleFormUnit in 'ShiftScheduleFormUnit.pas' {frmShiftSchedule: TFrame},
  HyperlinksUnit in 'HyperlinksUnit.pas' {frmHyperlinks: TFrame},
  OutlineFormUnit in 'OutlineFormUnit.pas' {frmOutline: TFrame},
  ConditionalFormattingUnit in 'ConditionalFormattingUnit.pas' {frmConditionalFormatting: TFrame},
  GroupingOptionsFormUnit in 'GroupingOptionsFormUnit.pas' {frmGroupingOptions},
  EmbeddedImagesFormUnit in 'EmbeddedImagesFormUnit.pas' {frmEmbeddedImages: TFrame},
  MasterDetailReportsFormUnit in 'MasterDetailReportsFormUnit.pas' {frmMasterDetailReports: TFrame},
  InvoiceReportFormUnit in 'InvoiceReportFormUnit.pas' {frmInvoiceReport: TFrame},
  SimpleReportFormUnit in 'SimpleReportFormUnit.pas' {frmSimpleReport: TFrame},
  ReportPreviewFormUnit in 'ReportPreviewFormUnit.pas' {frmPreview},
  dxSpreadSheetReportFilterForm in 'dxSpreadSheetReportFilterForm.pas' {frmFilter},
  SortedFieldsEditor in 'SortedFieldsEditor.pas' {frmSortedFieldsEditor},
  SelectDatasetForm in 'SelectDatasetForm.pas' {frmSeelctDataset},
  PrintOptionsUnit in 'PrintOptionsUnit.pas' {frmPrintOptions},
  RightToLeftLayoutFormUnit in 'RightToLeftLayoutFormUnit.pas' {frmRightToLeftLayout};

{$R *.res}
{$R SpreadSheetFeaturesIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  DemoFolder := GetCurrentDir + '\';
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'ExpressSpreadSheet Features Demo';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
