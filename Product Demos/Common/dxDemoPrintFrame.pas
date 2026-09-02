unit dxDemoPrintFrame;

{$I cxVer.inc}

interface

uses
{$IFDEF DELPHI16}
  System.UITypes,
{$ENDIF}
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxClasses, dxBar, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxContainer, cxEdit, dxLayoutContainer, dxLayoutControlAdapters,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxSpinEdit, Vcl.StdCtrls, cxButtons, dxPSCore, dxPSPrVw, dxLayoutControl,
  dxLayoutLookAndFeels, dxRibbon, Vcl.ImgList, cxImageList, dxMessageDialog, System.ImageList;

type

  { TfrmPrinting }

  TfrmPrinting = class(TFrame)
    BarManager: TdxBarManager;
    bliCollation: TdxBarListItem;
    bliPageOrientation: TdxBarListItem;
    bliPrinters: TdxBarListItem;
    bliPrintRanges: TdxBarListItem;
    btnPageOrientation: TcxButton;
    btnPaperSize: TcxButton;
    btnPrint: TcxButton;
    btnPrintCollate: TcxButton;
    btnPrinter: TcxButton;
    btnPrintPages: TcxButton;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutLabeledItem1: TdxLayoutLabeledItem;
    dxLayoutLabeledItem2: TdxLayoutLabeledItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSeparatorItem1: TdxLayoutSeparatorItem;
    lcPrintPreview: TdxLayoutControl;
    lcPrintPreviewGroup_Root: TdxLayoutGroup;
    lcxLookAndFeel: TdxLayoutCxLookAndFeel;
    lcxLookAndFeelCaptions: TdxLayoutCxLookAndFeel;
    lcxLookAndFeelLinks: TdxLayoutCxLookAndFeel;
    lliPageSetup: TdxLayoutLabeledItem;
    lliPrinterProperties: TdxLayoutLabeledItem;
    pmPageOrientation: TdxRibbonPopupMenu;
    pmPrintCollate: TdxRibbonPopupMenu;
    pmPrinters: TdxRibbonPopupMenu;
    pmPrintRanges: TdxRibbonPopupMenu;
    PSPreviewWindow: TdxPSPreviewWindow;
    sePrintCopies: TcxSpinEdit;
    tePrintRange: TcxTextEdit;
    pmPaperSizes: TdxRibbonPopupMenu;
    bliPaperSizes: TdxBarListItem;
    bbCustomPaperSize: TdxBarButton;
    pmPreview: TdxRibbonPopupMenu;
    bbDesignReport: TdxBarButton;
    bbRebuildReport: TdxBarButton;
    ilSmall: TcxImageList;
    ilToolbarsLarge: TcxImageList;
    ilPageOrientation: TcxImageList;
    ilPageCollate: TcxImageList;
    ilPageRange: TcxImageList;

    procedure bliPrintersClick(Sender: TObject);
    procedure bliPrintRangesClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure lliPageSetupCaptionClick(Sender: TObject);
    procedure lliPrinterPropertiesCaptionClick(Sender: TObject);
    procedure PSPreviewWindowUpdateControls(Sender: TObject);
    procedure tePrintRangePropertiesChange(Sender: TObject);
    procedure bliPageOrientationClick(Sender: TObject);
    procedure bliCollationClick(Sender: TObject);
    procedure bliPaperSizesClick(Sender: TObject);
    procedure bbRebuildReportClick(Sender: TObject);
    procedure bbDesignReportClick(Sender: TObject);
  protected
    procedure PopulatePaperSizes;
    procedure UpdatePageOrientation;
    procedure UpdatePrintRanges;
  public
    constructor Create(AOwner: TComponent); override;
    procedure Initialize(APrinter: TdxComponentPrinter; ARibbon: TdxRibbon);
  end;

implementation

uses
  dxPrnDev, dxPrnDlg, dxPrintingStrs, dxPgsDlg, dxPSGlbl, dxPSUtl, System.Math, dxPSRes;

{$R *.dfm}

function GetPaperInfo(DMPaper: Integer; out APaperInfo: TdxPaperInfo): Boolean;
var
  APaperIndex: Integer;
begin
  APaperIndex := dxPrintDevice.FindPaper(DMPaper);
  Result := APaperIndex >= 0;
  if Result then
    APaperInfo := dxPrintDevice.Papers.Objects[APaperIndex] as TdxPaperInfo;
end;

{ TfrmPrinting }

constructor TfrmPrinting.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  dxGetPrinterList(bliPrinters.Items);
  tePrintRange.Hint := sdxPrintDialogRangeLegend;
  bliCollationClick(nil);
end;

procedure TfrmPrinting.Initialize(APrinter: TdxComponentPrinter; ARibbon: TdxRibbon);
begin
  pmPageOrientation.Ribbon := ARibbon;
  pmPaperSizes.Ribbon := ARibbon;
  pmPrintCollate.Ribbon := ARibbon;
  pmPrinters.Ribbon := ARibbon;
  pmPrintRanges.Ribbon := ARibbon;
  pmPreview.Ribbon := ARibbon;

  PSPreviewWindow.ComponentPrinter := APrinter;
  PSPreviewWindow.ThumbnailsPane.Visible := False;
  PSPreviewWindow.ThumbnailsSplitter.Visible := False;
end;

procedure TfrmPrinting.PopulatePaperSizes;
const
  DefaultPapers: array[0..6] of Integer = (
    DMPAPER_LETTER, DMPAPER_A3, DMPAPER_A4, DMPAPER_A4SMALL, DMPAPER_A5, DMPAPER_B4, DMPAPER_B5
  );
var
  APaperInfo: TdxPaperInfo;
  I: Integer;
begin
  bliPaperSizes.Items.BeginUpdate;
  try
    bliPaperSizes.Items.Clear;
    for I := Low(DefaultPapers) to High(DefaultPapers) do
      if GetPaperInfo(DefaultPapers[I], APaperInfo) then
      begin
        bliPaperSizes.Items.AddObject(
          Format('%s (%0.2f x %0.2f mm)', [APaperInfo.Name, APaperInfo.Width / 10, APaperInfo.Height / 10]),
          TObject(APaperInfo.DMPaper));
      end;
  finally
    bliPaperSizes.Items.EndUpdate;
  end;
end;

procedure TfrmPrinting.UpdatePageOrientation;
begin
  btnPageOrientation.Caption := bliPageOrientation.Items[bliPageOrientation.ItemIndex];
  btnPageOrientation.OptionsImage.ImageIndex := bliPageOrientation.ItemIndex;
end;

procedure TfrmPrinting.UpdatePrintRanges;
begin
  btnPrintPages.OptionsImage.ImageIndex := bliPrintRanges.ItemIndex;
  btnPrintPages.Caption := bliPrintRanges.Items[bliPrintRanges.ItemIndex];
end;

procedure TfrmPrinting.bbDesignReportClick(Sender: TObject);
begin
  PSPreviewWindow.DoDesignReport;
end;

procedure TfrmPrinting.bbRebuildReportClick(Sender: TObject);
begin
  PSPreviewWindow.RebuildReport;
end;

procedure TfrmPrinting.bliCollationClick(Sender: TObject);
const
  Descriptions: array[Boolean] of string = (
    '1,2,3    1,2,3    1,2,3',
    '1,1,1    2,2,2    3,3,3'
  );
begin
  btnPrintCollate.Caption := bliCollation.Items[bliCollation.ItemIndex];
  btnPrintCollate.Description := Descriptions[bliCollation.ItemIndex = 1];
  btnPrintCollate.OptionsImage.ImageIndex := Ord(bliCollation.ItemIndex = 0);
end;

procedure TfrmPrinting.bliPageOrientationClick(Sender: TObject);
begin
  PSPreviewWindow.PrinterPage.Orientation := TdxPrinterOrientation(bliPageOrientation.ItemIndex);
  UpdatePageOrientation;
end;

procedure TfrmPrinting.bliPaperSizesClick(Sender: TObject);
begin
  PSPreviewWindow.PrinterPage.DMPaper := Integer(bliPaperSizes.Items.Objects[bliPaperSizes.ItemIndex]);
end;

procedure TfrmPrinting.bliPrintersClick(Sender: TObject);
begin
  dxPrintDevice.PrinterIndex := bliPrinters.ItemIndex;
  PSPreviewWindow.UpdateControls;
end;

procedure TfrmPrinting.bliPrintRangesClick(Sender: TObject);
begin
  UpdatePrintRanges;
  if bliPrintRanges.ItemIndex = 2 then
    tePrintRange.SetFocus;
end;

procedure TfrmPrinting.btnPrintClick(Sender: TObject);
var
  APageIndexes: TdxPSPageIndexes;
  APageIndexesAsString: string;
begin
  case bliPrintRanges.ItemIndex of
    1: APageIndexesAsString := IntToStr(PSPreviewWindow.ReportLink.CurrentPage);
    2: APageIndexesAsString := tePrintRange.Text;
  else
    APageIndexesAsString := '1-' + IntToStr(PSPreviewWindow.ReportLink.PageCount);
  end;

  if DecodePageIndexes(APageIndexesAsString, APageIndexes) then
  begin
    PSPreviewWindow.ComponentPrinter.PrintPagesEx(APageIndexes, pnAll, sePrintCopies.Value, bliCollation.ItemIndex = 0);
    PSPreviewWindow.UpdateControls;
  end
  else
    dxMessageDlg(sdxPrintDialogInvalidPageRanges, mtWarning, [mbOK]);
end;

procedure TfrmPrinting.lliPageSetupCaptionClick(Sender: TObject);
begin
  PSPreviewWindow.DoPageSetupReport(PSPreviewWindow.Preview.SelPageIndex);
end;

procedure TfrmPrinting.lliPrinterPropertiesCaptionClick(Sender: TObject);
begin
  if dxDocumentProperties(Handle) then
    PSPreviewWindow.UpdateControls;
end;

procedure TfrmPrinting.PSPreviewWindowUpdateControls(Sender: TObject);
var
  APaperInfo: TdxPaperInfo;
  ACanPrint: Boolean;
begin
  ACanPrint := PSPreviewWindow.CanPrint;
  if ACanPrint then
    bliPrinters.ItemIndex := dxPrintDevice.PrinterIndex;
  btnPrinter.Caption := dxPrintDevice.CurrentDevice;
  btnPrint.Enabled := ACanPrint;
  btnPrintPages.Enabled := PSPreviewWindow.CanPageSetup;
  btnPrintCollate.Enabled := PSPreviewWindow.CanPageSetup;
  tePrintRange.Enabled := PSPreviewWindow.CanPageSetup;
  lliPageSetup.Enabled := PSPreviewWindow.CanPageSetup;
  lliPrinterProperties.Enabled := PSPreviewWindow.CanPrintDialog;

  sePrintCopies.Properties.MaxValue := dxPrintDevice.MaxCopies;
  sePrintCopies.Properties.MinValue := 1;
  sePrintCopies.Enabled := sePrintCopies.Properties.MaxValue > 1;
  UpdatePrintRanges;

  // Page Orientation
  btnPageOrientation.Enabled := PSPreviewWindow.CanPageSetup;
  if PSPreviewWindow.ReportLink <> nil then
    bliPageOrientation.ItemIndex := Ord(PSPreviewWindow.PrinterPage.Orientation);
  UpdatePageOrientation;

  // Paper Size
  PopulatePaperSizes;
  btnPaperSize.Enabled := PSPreviewWindow.CanPageSetup;
  if PSPreviewWindow.ReportLink <> nil then
  begin
    bliPaperSizes.ItemIndex := bliPaperSizes.Items.IndexOfObject(TObject(PSPreviewWindow.PrinterPage.DMPaper));
    if GetPaperInfo(PSPreviewWindow.PrinterPage.DMPaper, APaperInfo) then
    begin
      btnPaperSize.Caption := APaperInfo.Name;
      btnPaperSize.Description := Format('%0.2f x %0.2f mm', [APaperInfo.Width / 10, APaperInfo.Height / 10]);
    end;
  end;
end;

procedure TfrmPrinting.tePrintRangePropertiesChange(Sender: TObject);
begin
  bliPrintRanges.ItemIndex := 2;
  UpdatePrintRanges;
end;

end.
