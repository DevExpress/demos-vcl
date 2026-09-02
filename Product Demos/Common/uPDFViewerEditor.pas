unit uPDFViewerEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDocumentEditor, dxCloudStorage,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxPDFBase,
  dxPDFText, dxPDFRecognizedObject, dxPDFDocument, dxBarBuiltInMenu,
  dxRibbonCustomizationForm, dxRibbonSkins, dxPDFViewerActions, dxBar,
  cxClasses, dxRibbon, System.Actions, Vcl.ActnList, dxActions,
  Vcl.ImgList, cxImageList, dxCustomPreview,
  dxPDFDocumentViewer, dxPDFViewer, dxPDFCore, dxPrinting, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPSdxPDFViewerLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxX509Certificate, dxPDFForm, dxPDFFormData, dxPrintUtils, dxCore,
  dxPSRichEditControlLnk, dxPSdxSpreadSheetLnk;

type
  TPDFViewer = class(TDocumentEditor)
    dxPDFViewer1: TdxPDFViewer;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxPDFViewerReportLink;
    dxRibbon1: TdxRibbon;
    dxBarManager1: TdxBarManager;
    ActionList1: TActionList;
    cxImageList1: TcxImageList;
    cxImageList2: TcxImageList;
    dxPDFViewerOpenDocument: TdxPDFViewerOpenDocument;
    dxRibbonTabHome: TdxRibbonTab;
    dxBarFile: TdxBar;
    dxBarLargeButtonOpen: TdxBarLargeButton;
    dxPDFViewerCloseDocument: TdxPDFViewerCloseDocument;
    dxBarLargeButtonClose: TdxBarLargeButton;
    dxPDFViewerShowPrintForm: TdxPDFViewerShowPrintForm;
    dxBarLargeButtonPrint: TdxBarLargeButton;
    dxPDFViewerFind: TdxPDFViewerFind;
    dxBarFind: TdxBar;
    dxBarLargeButtonFind: TdxBarLargeButton;
    dxPDFViewerSelectTool: TdxPDFViewerSelectTool;
    dxBarTools: TdxBar;
    dxBarLargeButtonSelectTool: TdxBarLargeButton;
    dxPDFViewerHandTool: TdxPDFViewerHandTool;
    dxBarLargeButtonHandTool: TdxBarLargeButton;
    dxPDFViewerSelectAll: TdxPDFViewerSelectAll;
    dxBarLargeButtonSelectAll: TdxBarLargeButton;
    dxBarNavigation: TdxBar;
    dxBarSubItem1: TdxBarSubItem;
    dxPDFViewerGoToFirstPage: TdxPDFViewerGoToFirstPage;
    dxBarLargeButtonFirstPage: TdxBarLargeButton;
    dxPDFViewerGoToPrevPage: TdxPDFViewerGoToPrevPage;
    dxBarLargeButtonPreviousPage: TdxBarLargeButton;
    dxPDFViewerGoToNextPage: TdxPDFViewerGoToNextPage;
    dxBarLargeButtonNextPage: TdxBarLargeButton;
    dxPDFViewerGoToLastPage: TdxPDFViewerGoToLastPage;
    dxBarLargeButtonLastPage: TdxBarLargeButton;
    dxPDFViewerGoToPrevView: TdxPDFViewerGoToPrevView;
    dxBarLargeButtonPreviousView: TdxBarLargeButton;
    dxPDFViewerGoToNextView: TdxPDFViewerGoToNextView;
    dxBarLargeButtonNextView: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    dxPDFViewerRotateClockwise: TdxPDFViewerRotateClockwise;
    dxBarLargeButtonRotateClockwise: TdxBarLargeButton;
    dxPDFViewerRotateCounterClockwise: TdxPDFViewerRotateCounterClockwise;
    dxBarLargeButtonRotateCounterclockwise: TdxBarLargeButton;
    dxPDFViewerZoomOut: TdxPDFViewerZoomOut;
    dxBarZoom: TdxBar;
    dxBarLargeButtonZoomOut: TdxBarLargeButton;
    dxPDFViewerZoomIn: TdxPDFViewerZoomIn;
    dxBarLargeButtonZoomIn: TdxBarLargeButton;
    dxBarSubItem3: TdxBarSubItem;
    dxPDFViewerZoom10: TdxPDFViewerZoom10;
    dxBarLargeButton1: TdxBarLargeButton;
    dxPDFViewerZoom25: TdxPDFViewerZoom25;
    dxBarLargeButton2: TdxBarLargeButton;
    dxPDFViewerZoom50: TdxPDFViewerZoom50;
    dxBarLargeButton3: TdxBarLargeButton;
    dxPDFViewerZoom75: TdxPDFViewerZoom75;
    dxBarLargeButton4: TdxBarLargeButton;
    dxPDFViewerZoom100: TdxPDFViewerZoom100;
    dxBarLargeButton5: TdxBarLargeButton;
    dxPDFViewerZoom125: TdxPDFViewerZoom125;
    dxBarLargeButton6: TdxBarLargeButton;
    dxPDFViewerZoom150: TdxPDFViewerZoom150;
    dxBarLargeButton7: TdxBarLargeButton;
    dxPDFViewerZoom200: TdxPDFViewerZoom200;
    dxBarLargeButton8: TdxBarLargeButton;
    dxPDFViewerZoom400: TdxPDFViewerZoom400;
    dxBarLargeButton9: TdxBarLargeButton;
    dxPDFViewerZoom500: TdxPDFViewerZoom500;
    dxBarLargeButton10: TdxBarLargeButton;
    dxPDFViewerZoomActualSize: TdxPDFViewerZoomActualSize;
    dxBarLargeButtonActualSize: TdxBarLargeButton;
    dxPDFViewerZoomToPageLevel: TdxPDFViewerZoomToPageLevel;
    dxBarLargeButtonZoomtoPageLevel: TdxBarLargeButton;
    dxPDFViewerZoomFitWidth: TdxPDFViewerZoomFitWidth;
    dxBarLargeButtonFitWidth: TdxBarLargeButton;
  protected
    procedure Load(AStream: TStream); override;
  end;

implementation

{$R *.dfm}

{ TPDFViewer }

procedure TPDFViewer.Load(AStream: TStream);
begin
  AStream.Position := 0;
  dxPDFViewer1.LoadFromStream(AStream);
end;

initialization
  DocumentEditorFactory.RegisterEditor('.pdf', TPDFViewer);

finalization
  DocumentEditorFactory.UnregisterEditor('.pdf');

end.
