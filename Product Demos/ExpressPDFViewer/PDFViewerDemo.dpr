program PDFViewerDemo;

{$SETPEOSVERSION 5.0}
{$SETPESUBSYSVERSION 5.0}

{$I cxVer.inc}

uses
  Vcl.Forms, dxUIAClasses,
  dxSplashUnit in '..\Common\dxSplashUnit.pas' {TfrmSplash},
  uPDFViewer in 'uPDFViewer.pas' {frmPDFViewer},
  dxAboutDemo in '..\Common\dxAboutDemo.pas' {dxAboutDemoForm},
  uDocumentEditor in '..\Common\uDocumentEditor.pas',
  uRichEditControlEditor in '..\Common\uRichEditControlEditor.pas' {RichEditControlEditor},
  uSpreadSheetEditor in '..\Common\uSpreadSheetEditor.pas' {SpreadSheetEditor},
  uPDFViewerEditor in '..\Common\uPDFViewerEditor.pas' {PDFViewer},
  dxDemoUtils in '..\Common\dxDemoUtils.pas',
  uSaveDialog in 'uSaveDialog.pas' {frmSaveDialogForm};

{$R *.res}
{$R PDFViewerIcon.res}
{$R ..\Common\dxDPIAwareManifestPM2.res}

begin
  dxUIAutomationEnabled := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPDFViewer, frmPDFViewer);
  Application.Run;
end.
