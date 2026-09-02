unit RibbonChartControlMainForm;

interface

{$I cxVer.inc}

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxDemoBaseMainForm, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxCore, dxRibbonSkins, dxRibbonCustomizationForm, cxGeometry, dxFramedControl, cxContainer,
  cxEdit, Vcl.Menus, dxLayoutcxEditAdapters, dxLayoutControlAdapters, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwRibbon, dxPSPrVwAdv, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxScreenTip, dxShellDialogs, dxCustomHint, cxHint, dxLayoutLookAndFeels, System.Actions,
  Vcl.ActnList, Vcl.ImgList, cxImageList, dxBar, dxBarApplicationMenu, dxRibbon, dxSkinsForm, dxPgsDlg, dxPSCore,
  dxBarExtItems, cxClasses, dxLayoutContainer, Vcl.StdCtrls, cxButtons, cxTextEdit, dxLayoutControl, dxNavBarCollns,
  dxNavBarStyles, dxNavBarBase, dxNavBar, Vcl.ExtCtrls, dxGalleryControl, dxRibbonBackstageViewGalleryControl, dxBevel,
  cxLabel, dxRibbonBackstageView, cxGroupBox, dxPanel, dxCustomDemoFrameUnit, dxChartCore, dxSkinsCore, dxDemoUtils,
  dxPSdxChartControlLnk, System.IOUtils, dxChartControl, dxRibbonGallery;

type
  TfrmMain = class(TfrmMainBase)
    nvgHighlightedFeatures: TdxNavBarGroup;
    NavBarItem1: TdxNavBarItem;
    btnDesigner: TdxBarLargeButton;
    biPalette: TdxRibbonGalleryItem;
    nvgViews: TdxNavBarGroup;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnDesignerClick(Sender: TObject);
    procedure actPrintPreviewExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actPageSetupExecute(Sender: TObject);
  private
    FFrameUpdating: Boolean;
    function GetActiveFrame: TdxCustomDemoFrame;
    function GetActiveChartControl: TdxChartControl;
    procedure PaletteSelectorItemClick(Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
    procedure TuneWorkArea;
    procedure UpdatePaletteGlyphs;
    procedure UpdateSelectedPalette;
  protected
    procedure ActivateDemo(AID: Integer); override;
    function IsApplicationButtonAvailable: Boolean; override;
    function IsExportOptionsAvailable: Boolean; override;
    function IsPrintOptionsAvailable: Boolean; override;
    function GetActiveObject: TPersistent; override;
    function GetActiveReportLink: TBasedxReportLink; override;
    function GetExportFileName: string; override;
    procedure GetSupportedExportTypes(AList: TList<TSupportedExportType>); override;
    procedure DoExportToFile(AExportType: TSupportedExportType; ADataOnly: Boolean; const AFileName: string; AHandler: TObject); override;
    procedure InitNavBar; override;
    procedure ScaleFactorChanged(M, D: Integer); override;
    procedure ShowFrame(FrameID: Integer);
  public
    { Public declarations }
    procedure UpdateColorScheme; override;

    property ActiveFrame: TdxCustomDemoFrame read GetActiveFrame;
    property ActiveChartControl: TdxChartControl read GetActiveChartControl;
    property ActiveReportLink: TBasedxReportLink read GetActiveReportLink;
  end;

var
  frmMain: TfrmMain;

implementation

uses System.UITypes, dxFrames, FrameIDs, dxChartCustomFrameUnit, dxChartPalette, dxCoreGraphics, System.Math, dxSkinInfo, dxSkinsdxRibbonPainter;

type
  TdxSkinRibbonPainterAccess = class(TdxSkinRibbonPainter);

{$R *.dfm}

{ TfrmMainBase1 }

procedure TfrmMain.ActivateDemo(AID: Integer);
var
  AActiveFrame: TdxCustomDemoFrame;
begin
  if AID > 0 then
  begin
    AActiveFrame := ActiveFrame;
    ShowFrame(AID);
    if ActiveFrame <> AActiveFrame then
      UpdateBaseMenuOptions;
  end;
end;

procedure TfrmMain.actPageSetupExecute(Sender: TObject);
begin
  ActiveReportLink.PageSetup;
end;

procedure TfrmMain.actPrintExecute(Sender: TObject);
begin
  ActiveReportLink.Print(True);
end;

procedure TfrmMain.actPrintPreviewExecute(Sender: TObject);
begin
  ActiveReportLink.Preview;
end;

procedure TfrmMain.btnDesignerClick(Sender: TObject);
begin
  if Assigned(ActiveFrame) then
    (ActiveFrame as TdxChartCustomFrame).ShowDesigner;
end;

procedure TfrmMain.DoExportToFile(AExportType: TSupportedExportType;
  ADataOnly: Boolean; const AFileName: string; AHandler: TObject);
begin
  case AExportType of
    exExcel: ActiveChartControl.ExportToXLSX(AFileName);
    exDOCX: ActiveChartControl.ExportToDOCX(AFileName);
    exSVG: ActiveChartControl.ExportToSVG(AFileName);
    exRasterImage: ActiveChartControl.ExportToImage(AFileName);
    exMetaFile: ActiveChartControl.ExportToImage(AFileName);
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);

  procedure CreatePaletteRibbonItem;
  var
    APalette: TdxChartPalette;
    AGroupItem: TdxRibbonGalleryGroupItem;
  begin
    biPalette.GalleryOptions.ColumnCount := 1;
    biPalette.GalleryOptions.SpaceBetweenItemsAndBorder := 0;
    biPalette.GalleryOptions.ItemTextKind := itkCaption;
    biPalette.GalleryGroups.Add;
    biPalette.OnGroupItemClick := PaletteSelectorItemClick;

    biPalette.BarManager.BeginUpdate;
    try
      for APalette in TdxChartStandardPaletteRepository.GetAll do
      begin
        AGroupItem := biPalette.GalleryGroups[0].Items.Add;
        AGroupItem.Caption := APalette.Name;
      end;
      UpdatePaletteGlyphs;
    finally
      biPalette.BarManager.EndUpdate;
    end;
  end;

begin
  inherited;
  Height := ScaleFactor.Apply(900);
  CreatePaletteRibbonItem;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  ActivateDemo(StartFrameID);
  SynchronizeFrameNavigation(StartFrameID);
end;

function TfrmMain.GetActiveChartControl: TdxChartControl;
begin
  Result := (ActiveFrame as TdxChartCustomFrame).ActiveChartControl;
end;

function TfrmMain.GetActiveFrame: TdxCustomDemoFrame;
begin
  Result := dxFrameManager.ActiveFrame;
end;

function TfrmMain.GetActiveObject: TPersistent;
begin
  Result := nil;
  if Assigned(ActiveFrame) then
    Result := (ActiveFrame as TdxChartCustomFrame).ccDemoChart;
end;

function TfrmMain.GetActiveReportLink: TBasedxReportLink;
begin
  if ActiveFrame <> nil then
  begin
    Result := ActiveFrame.ReportLink;
    Result.Caption := '';
    Result.ReportTitleText := '';
    Result.ShrinkToPageWidth := True;
    Result.PDFExportOptions.Title := GetExportFileName;
    Result.PDFExportOptions.JPEGQuality := 100;
    Result.PDFExportOptions.UseJPEGCompression := False;
  end
  else
    Result := nil;
end;

function TfrmMain.GetExportFileName: string;
begin
  Result := 'DevExpress VCL ExtraCharts';
  if Assigned(ActiveFrame) then
    Result := Result + ' ' + Trim((ActiveFrame as TdxChartCustomFrame).Caption);
end;

procedure TfrmMain.GetSupportedExportTypes(AList: TList<TSupportedExportType>);
begin
  AList.Add(TSupportedExportType.exPDF);
  AList.Add(TSupportedExportType.exDOCX);
  AList.Add(TSupportedExportType.exExcel);
  AList.Add(TSupportedExportType.exSVG);
  AList.Add(TSupportedExportType.exRasterImage);
  AList.Add(TSupportedExportType.exMetaFile);
end;

procedure TfrmMain.InitNavBar;
var
  I: Integer;
  AFrameInfo: TdxFrameInfo;
  AItem: TdxNavBarItem;

  procedure CheckSideBarGroup(AGroupIndex: Integer);
  begin
    if (AGroupIndex < NavBar.Groups.Count) and (AGroupIndex > -1) then
      NavBar.Groups[AGroupIndex].CreateLink(AItem);
  end;

begin
  inherited InitNavBar;
  for I := 0 to dxFrameManager.Count - 1 do
  begin
    AFrameInfo := dxFrameManager[I];
    AItem := NavBar.Items.Add;
    AItem.Caption := AFrameInfo.Caption;
    AItem.Tag := AFrameInfo.ID;
    AItem.CustomStyles.Item := nbsItemStyle;
    AItem.CustomStyles.ItemDisabled := nbsItemStyle;
    AItem.CustomStyles.ItemHotTracked := nbsItemStyle;
    AItem.CustomStyles.ItemPressed := nbsItemStyle;
    CheckSideBarGroup(AFrameInfo.SideBarGroupIndex);
    CheckSideBarGroup(AFrameInfo.SideBarFirstAdditionalGroupIndex);
    CheckSideBarGroup(AFrameInfo.SideBarSecondAdditionalGroupIndex);
  end;
  for I := NavBar.Groups.Count - 1 downto 0 do
    if not NavBar.Groups[I].Visible then
      NavBar.Groups[I].Free;
  NavBar.ActiveGroupIndex := 0;
end;

function TfrmMain.IsApplicationButtonAvailable: Boolean;
begin
  Result := False;
end;

function TfrmMain.IsExportOptionsAvailable: Boolean;
begin
  Result := True;
end;

function TfrmMain.IsPrintOptionsAvailable: Boolean;
begin
  Result := True;
end;

procedure TfrmMain.PaletteSelectorItemClick(Sender: TdxRibbonGalleryItem; AItem: TdxRibbonGalleryGroupItem);
var
  AChartFrame: TdxChartCustomFrame;
begin
  ActiveChartControl.Palette := TdxChartStandardPaletteRepository.FindPalette(AItem.Caption);
  if Safe.Cast<TdxChartCustomFrame>(ActiveFrame, AChartFrame) then
    AChartFrame.PaletteChanged;
end;

procedure TfrmMain.ScaleFactorChanged(M, D: Integer);
begin
  inherited ScaleFactorChanged(M, D);
  UpdatePaletteGlyphs;
end;

procedure TfrmMain.ShowFrame(FrameID: Integer);
var
  ANavBarDragDropFlags: TdxNavBarDragDropFlags;
begin
  if FFrameUpdating or (ActiveFrame <> nil) and not ActiveFrame.CanDeactivate then
    Exit;
  FFrameUpdating := True;
  try
    dxRibbon1.BeginUpdate;
    dxBarManager.BeginUpdate;
    try
      if (dxFrameManager.ActiveFrameInfo = nil) or (dxFrameManager.ActiveFrameInfo.ID <> FrameID) then
      begin
        ANavBarDragDropFlags := NavBar.DragDropFlags;
        NavBar.DragDropFlags := [];
        try
          LockWindowUpdate(Handle);
          dxFrameManager.ShowFrame(FrameID, plClient);
        finally
          LockWindowUpdate(0);
          NavBar.DragDropFlags := ANavBarDragDropFlags;
        end;

        if ActiveFrame <> nil then
        begin
          ActiveFrame.AfterShow;
          Application.ProcessMessages;
        end;
      end;
      UpdateInspectedObject;
      UpdateSelectedPalette;
      if ActiveFrame is TdxChartCustomFrame then
        if TdxChartCustomFrame(ActiveFrame).IsDesignerAvailable then
          btnDesigner.Visible := TdxBarItemVisible.ivAlways
        else
          btnDesigner.Visible := TdxBarItemVisible.ivNever;
    finally
      dxBarManager.EndUpdate;
      dxRibbon1.EndUpdate;
    end;
  finally
    FFrameUpdating := False;
  end;
  Caption := GetMainFormCaption + ' - ' + ActiveFrame.Caption + ' Demo';
  TuneWorkArea;
end;

procedure TfrmMain.UpdateColorScheme;
begin
  inherited UpdateColorScheme;
  TuneWorkArea;
end;

procedure TfrmMain.TuneWorkArea;

  function GetRibbonLeftAndRightMargins(out ALeftMargin, ARightMargin: Integer): Boolean;
  var
    APainter: TdxSkinRibbonPainterAccess;
  begin
    ALeftMargin := 0;
    ARightMargin := 0;
    Result := Assigned(dxRibbon1) and not (csLoading in ComponentState) and not (csReading in ComponentState) and not (csDestroying in ComponentState);
    if Result and (dxRibbon1.ColorScheme is TdxSkinRibbonPainter) then
    begin
      APainter := TdxSkinRibbonPainterAccess(dxRibbon1.ColorScheme);
      if Assigned(APainter.SkinInfo.RibbonTabPanelHorizontalMargin) then
      begin
        ALeftMargin := APainter.SkinInfo.RibbonTabPanelHorizontalMargin.Left;
        ARightMargin := APainter.SkinInfo.RibbonTabPanelHorizontalMargin.Right;
      end;
    end;
  end;

var
  ALeftMargin, ARightMargin: Integer;
begin
  if (ActiveFrame <> nil) and not (csDestroying in ComponentState) then
  begin
    if GetRibbonLeftAndRightMargins(ALeftMargin, ARightMargin) and (ALeftMargin > 0) and (ARightMargin > 0) then
      ActiveFrame.SetWorkAreaMargins(ALeftMargin, (ALeftMargin + ARightMargin) div 2, ARightMargin, (ALeftMargin + ARightMargin) div 2)
    else
      ActiveFrame.ResetWorkAreaMargins;
  end;
end;

procedure TfrmMain.UpdatePaletteGlyphs;
const
  ShownColorCount = 6;
  SpaceBetweenColors = 1;
var
  ABitmap: TBitmap;
  AColorGlyphSize: Integer;
  AColorGlyphRect: TRect;
  APalette: TdxChartPalette;
  AGroupItem: TdxRibbonGalleryGroupItem;
  I, J: Integer;
begin
  AColorGlyphSize := cxTextHeight(dxRibbon1.Fonts.Group);
  biPalette.BarManager.BeginUpdate;
  ABitmap := TBitmap.Create;
  ABitmap.Width := ShownColorCount * AColorGlyphSize + (ShownColorCount - 1) * SpaceBetweenColors;
  ABitmap.Height := AColorGlyphSize;
  ABitmap.PixelFormat := pf24bit;
  ABitmap.TransparentMode := tmFixed;
  ABitmap.TransparentColor := Cardinal(TdxAlphaColors.ConvertNotation(TdxAlphaColors.Default and $FFFFFF));
  try
    J := 0;
    for APalette in TdxChartStandardPaletteRepository.GetAll do
    begin
      FillRectByColor(ABitmap.Canvas.Handle, Rect(0, 0, ABitmap.Width, ABitmap.Height), ABitmap.TransparentColor);
      for I := 0 to Min(ShownColorCount, APalette.Count) - 1 do
      begin
        AColorGlyphRect := TRect.Create(TPoint.Create(I * (AColorGlyphSize + SpaceBetweenColors), 0), AColorGlyphSize, AColorGlyphSize);
        FillRectByColor(ABitmap.Canvas.Handle, AColorGlyphRect, TdxAlphaColors.ToColor(APalette.Items[I].Color));
        FrameRectByColor(ABitmap.Canvas.Handle, AColorGlyphRect, clGray);
      end;
      AGroupItem := biPalette.GalleryGroups[0].Items.Items[J];
      AGroupItem.Glyph.Assign(ABitmap);
      AGroupItem.Glyph.SourceDPI := ScaleFactor.Apply(96);
      Inc(J);
    end;
  finally
    biPalette.BarManager.EndUpdate;
    FreeAndNil(ABitmap);
  end;
end;

procedure TfrmMain.UpdateSelectedPalette;
var
  APaletteName: string;
  AGroup: TdxRibbonGalleryGroup;
  I: Integer;
begin
  APaletteName := ActiveChartControl.Palette.Name;
  AGroup := biPalette.GalleryGroups[0];
  for I := 0 to AGroup.Items.Count - 1 do
    if AGroup.Items[I].Caption = APaletteName then
    begin
      AGroup.Items[I].Selected := True;
      Break;
    end;
end;

initialization
  dxMegaDemoProductIndex := dxChartControlIndex;
  TdxVisualRefinements.LightBorders := True;
finalization

end.
