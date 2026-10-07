unit uGridOfficeCompactView;

interface

uses
  System.Types, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, System.Actions, Vcl.ActnList, Vcl.Forms,
  Data.DB, Vcl.ExtCtrls, Vcl.ImgList, System.ImageList,
  cxClasses, cxGraphics, cxStyles, dxCore, dxCoreClasses, dxGDIPlusAPI, dxGDIPlusClasses, dxBar, dxBarBuiltInMenu,
  cxCustomData, cxData, cxDBData, cxDataStorage, dxDateRanges, cxFilter, dxScrollbarAnnotations, cxNavigator,
  cxContainer, cxControls, cxEdit, cxTextEdit, cxCheckBox, dxToggleSwitch, cxImageList, cxCalendar, cxLabel, cxDBLabel,
  cxLookAndFeels, cxLookAndFeelPainters, dxLayoutLookAndFeels, dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters,
  dxRichEdit.Platform.Win.Control, dxRichEdit.Control.Core, dxGridFrame, maindata,
  cxGrid, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, dxPSCore,
  dxRichEdit.NativeApi, dxRichEdit.Options, dxRichEdit.Control, dxRichEdit.Control.SpellChecker, dxRichEdit.Dialogs.EventArgs,
  cxGroupBox, dxPanel, cxGeometry, dxFramedControl, dxRichEdit.Types;

type
  TfrmGridOfficeCompactView = class(TdxGridFrame)
    Level: TcxGridLevel;
    TableView: TcxGridDBTableView;
    TableViewSubject: TcxGridDBColumn;
    TableViewPlainText: TcxGridDBColumn;
    TableViewSender: TcxGridDBColumn;
    TableViewDate: TcxGridDBColumn;
    strStyles: TcxStyleRepository;
    stSender: TcxStyle;
    lgGrid: TdxLayoutGroup;
    acItemAutoHeight: TAction;
    rchMessage: TdxRichEditControl;
    liMessage: TdxLayoutItem;
    lgFilter: TdxLayoutGroup;
    tgsItemAutoHeight: TdxToggleSwitch;
    liItemAutoHeight: TdxLayoutItem;
    pbSenderPhoto: TPaintBox;
    liSenderPhoto: TdxLayoutItem;
    lbSubject: TcxDBLabel;
    liSubject: TdxLayoutItem;
    lbSender: TcxDBLabel;
    liSender: TdxLayoutItem;
    lbDate: TcxDBLabel;
    liDate: TdxLayoutItem;
    lgSendInfo: TdxLayoutGroup;
    lgSender_Date: TdxLayoutGroup;
    TableViewPriority: TcxGridDBColumn;
    TableViewRemove: TcxGridDBColumn;
    TableViewEdit: TcxGridDBColumn;
    TableViewShow: TcxGridDBColumn;
    ilImages: TcxImageList;
    stUnread: TcxStyle;
    stPriority: TcxStyle;
    TableViewRead: TcxGridDBColumn;
    bmFilters: TdxBarManager;
    bpmFilters: TdxBarPopupMenu;
    bbAll: TdxBarLargeButton;
    bbUnread: TdxBarLargeButton;
    bbImportant: TdxBarLargeButton;
    bbToday: TdxBarLargeButton;
    bbYesterday: TdxBarLargeButton;
    stRead: TcxStyle;
    stDisabled: TcxStyle;
    PanelFilter: TdxPanel;
    dxPanel2: TdxPanel;
    dxToggleSwitch1: TdxToggleSwitch;
    pbFilterButton: TPaintBox;
    procedure acItemAutoHeightExecute(Sender: TObject);
    procedure DrawSenderPhoto(Sender: TObject);
    procedure DrawFilterButton(Sender: TObject);
    procedure FilterButtonClick(Sender: TObject);
    procedure FilterButtonMouseEnter(Sender: TObject);
    procedure FilterButtonMouseLeave(Sender: TObject);
    procedure SelectFilter(Sender: TObject);
    procedure TableViewCanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
    procedure TableViewFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure TableViewTopRecordIndexChanged(Sender: TObject);
    procedure TableViewDrawButton(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TableViewDrawGroupRow(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
    procedure TableViewDrawPriority(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TableViewDrawRead(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TableViewDrawRowText(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TableViewDrawRowHotTrack(Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
  strict private
    FFilterButtonState: TcxImageDrawMode;
    FNeedCheckTopRow: Boolean;
    FSavedGroupRowSeparatorWidth: Integer;
    FSenderMask: TcxBitmap32;
    FSenderPhoto: TcxBitmap32;

    function GetSenderMask: TcxBitmap32;
    function GetSenderPhoto: TcxBitmap32;
    function TryCreateRowCellFont(AViewInfo: TcxGridTableDataCellViewInfo; out AFont: TFont): Boolean;
    procedure SetFilterButtonState(const AValue: TcxImageDrawMode);
  protected
    function AllowToggleBetweenCheckBoxesAndToggleSwitches: Boolean; override;
    procedure ApplySenderMask; virtual;
    procedure CheckTopRowIndex; virtual;
    function GetDescription: string; override;
    function GetReportLink: TBasedxReportLink; override;
    procedure InitSenderMask; virtual;
    procedure InitSenderPhoto; virtual;
    procedure InvalidateSenderPhoto; virtual;
    function IsRead(ARecord: TcxCustomGridRecord): Boolean; virtual;
    function NeedSetup: Boolean; override;
    procedure UpdateMessage; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function CanToggleScrollbars: Boolean; override;
    function CanToggleSetup: Boolean; override;
    procedure ChangeVisibility(AShow: Boolean); override;
    function IsApplicationButtonVisible: Boolean; override;
    function IsOptionsVisible: Boolean; override;
    function IsSupportExport: Boolean; override;
    procedure LookAndFeelChanged; override;
    procedure ScaleFactorChanged(M: Integer; D: Integer); override;

    property FilterButtonState: TcxImageDrawMode read FFilterButtonState write SetFilterButtonState;
    property SenderMask: TcxBitmap32 read GetSenderMask;
    property SenderPhoto: TcxBitmap32 read GetSenderPhoto;
  end;

implementation

{$R *.dfm}

uses
  Winapi.Windows,
  System.UITypes, dxFrames, FrameIDs, uStrsConst, cxDrawTextUtils, dxCoreGraphics, dxDPIAwareUtils, dxTypeHelpers;

constructor TfrmGridOfficeCompactView.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FFilterButtonState := idmDisabled;
  TableView.DataController.Groups.FullExpand;
  TableView.Controller.FocusRecord(1, True);
  CheckTopRowIndex;
end;

destructor TfrmGridOfficeCompactView.Destroy;
begin
  FreeAndNil(FSenderMask);
  FreeAndNil(FSenderPhoto);
  inherited Destroy;
end;

function TfrmGridOfficeCompactView.CanToggleScrollbars: Boolean;
begin
  Result := False;
end;

function TfrmGridOfficeCompactView.CanToggleSetup: Boolean;
begin
  Result := False;
end;

procedure TfrmGridOfficeCompactView.ChangeVisibility(AShow: Boolean);
begin
  inherited ChangeVisibility(AShow);
  if AShow then
  begin
    FSavedGroupRowSeparatorWidth := cxGridOffice11GroupRowSeparatorWidth;
    cxGridOffice11GroupRowSeparatorWidth := 1;
    Grid.SetFocus;
  end
  else
    cxGridOffice11GroupRowSeparatorWidth := FSavedGroupRowSeparatorWidth;
end;

function TfrmGridOfficeCompactView.IsApplicationButtonVisible: Boolean;
begin
  Result := False;
end;

function TfrmGridOfficeCompactView.IsOptionsVisible: Boolean;
begin
  Result := False;
end;

function TfrmGridOfficeCompactView.IsSupportExport: Boolean;
begin
  Result := False;
end;

procedure TfrmGridOfficeCompactView.LookAndFeelChanged;
begin
  inherited LookAndFeelChanged;
  rchMessage.Views.Simple.BackColor := TdxAlphaColors.FromColor(TableView.LookAndFeelPainter.LayoutControlEmptyAreaColor);
  lbDate.Style.TextColor := TableView.LookAndFeelPainter.DefaultEditorTextColorEx(esckDisabled);
  stDisabled.Font.Color := TableView.LookAndFeelPainter.DefaultEditorTextColorEx(esckDisabled);
end;

procedure TfrmGridOfficeCompactView.ScaleFactorChanged(M: Integer; D: Integer);
begin
  inherited ScaleFactorChanged(M, D);
  InvalidateSenderPhoto;
end;

function TfrmGridOfficeCompactView.AllowToggleBetweenCheckBoxesAndToggleSwitches: Boolean;
begin
  Result := False;
end;

procedure TfrmGridOfficeCompactView.ApplySenderMask;
var
  I: Integer;
  AColors, AMaskColors: TRGBColors;
begin
  GetBitmapBits(SenderPhoto, AColors, True);
  GetBitmapBits(SenderMask, AMaskColors, True);
  for I := 0 to Length(AMaskColors) - 1 do
    AColors[I].rgbReserved := AMaskColors[I].rgbReserved;
  SetBitmapBits(SenderPhoto, AColors, True);
end;

procedure TfrmGridOfficeCompactView.CheckTopRowIndex;
var
  ATopRow: TcxCustomGridRow;
begin
  ATopRow := TableView.ViewData.Rows[TableView.Controller.TopRowIndex];
  if ATopRow.IsData and not ATopRow.IsFirst and ATopRow.Focused and
    not TableView.ViewData.Records[ATopRow.Index - 1].IsData then
      TableView.Controller.TopRowIndex := ATopRow.Index - 1;
end;

function TfrmGridOfficeCompactView.GetDescription: string;
begin
  Result := sdxFrameOfficeCompactViewDescription;
end;

function TfrmGridOfficeCompactView.GetReportLink: TBasedxReportLink;
begin
  Result := nil;
end;

procedure TfrmGridOfficeCompactView.InitSenderMask;
const
  AOpaqueColor = $FF000000;
var
  AGPGraphics: TdxGPGraphics;
begin
  SenderMask.Clear;
  SenderMask.SetSize(pbSenderPhoto.ClientRect);
  AGPGraphics := dxGpBeginPaint(SenderMask.cxCanvas.Handle, SenderMask.ClientRect);
  try
    AGPGraphics.SmoothingMode := smAntiAlias;
    AGPGraphics.Ellipse(SenderMask.ClientRect, AOpaqueColor, AOpaqueColor);
  finally
    dxGpEndPaint(AGPGraphics);
  end;
end;

procedure TfrmGridOfficeCompactView.InitSenderPhoto;
var
  ARect: TRect;
  APicture: TArray<Byte>;
  ASmartImage: TdxSmartImage;
begin
  ASmartImage := TdxSmartImage.Create;
  try
    dmMain.GetMessagePicture(dmMain.mdMessagesFrom.AsString, APicture);
    ASmartImage.LoadFromFieldValue(APicture);
    ARect := pbSenderPhoto.ClientRect;
    ARect.Height := MaxInt;
    ARect := cxGetImageRect(ARect, dxGetImageSize(ASmartImage), ifmProportionalStretch, True, 100);
    SenderPhoto.SetSize(ARect);
    SenderPhoto.cxCanvas.StretchDraw(SenderPhoto.ClientRect, ASmartImage);
    SenderPhoto.Height := pbSenderPhoto.ClientRect.Height;
    ApplySenderMask;
  finally
    ASmartImage.Free;
  end;
end;

procedure TfrmGridOfficeCompactView.InvalidateSenderPhoto;
begin
  FreeAndNil(FSenderPhoto);
  FreeAndNil(FSenderMask);
  pbSenderPhoto.Invalidate;
end;

function TfrmGridOfficeCompactView.IsRead(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := ARecord.Values[TableViewRead.Index]
end;

function TfrmGridOfficeCompactView.NeedSetup: Boolean;
begin
  Result := True;
end;

procedure TfrmGridOfficeCompactView.UpdateMessage;
begin
  rchMessage.Document.RtfText := dmMain.mdMessagesText.AsString;
end;

function TfrmGridOfficeCompactView.GetSenderMask: TcxBitmap32;
begin
  if FSenderMask = nil then
  begin
    FSenderMask := TcxBitmap32.Create;
    InitSenderMask;
  end;
  Result := FSenderMask;
end;

function TfrmGridOfficeCompactView.GetSenderPhoto: TcxBitmap32;
begin
  if FSenderPhoto = nil then
  begin
    FSenderPhoto := TcxBitmap32.Create;
    InitSenderPhoto;
  end;
  Result := FSenderPhoto;
end;

function TfrmGridOfficeCompactView.TryCreateRowCellFont(AViewInfo: TcxGridTableDataCellViewInfo; out AFont: TFont): Boolean;
var
  ASourceFont: TFont;
begin
  if AViewInfo.Item = TableViewPlainText then
    ASourceFont := stDisabled.Font
  else
    if (AViewInfo.Item = TableViewSubject) or (AViewInfo.Item = TableViewDate) then
      if not IsRead(AViewInfo.GridRecord) then
        ASourceFont := stUnread.Font
      else
        if AViewInfo.Item = TableViewSubject then
          ASourceFont := stRead.Font
        else
          ASourceFont := stDisabled.Font
    else
      ASourceFont := nil;
  AFont := nil;
  Result := ASourceFont <> nil;
  if Result then
  begin
    AFont := TFont.Create;
    AFont.Assign(ASourceFont);
  end
end;

procedure TfrmGridOfficeCompactView.SetFilterButtonState(const AValue: TcxImageDrawMode);
begin
  if FilterButtonState <> AValue then
  begin
    FFilterButtonState := AValue;
    pbFilterButton.Invalidate;
  end;
end;

procedure TfrmGridOfficeCompactView.acItemAutoHeightExecute(Sender: TObject);
begin
  TableView.OptionsView.CellAutoHeight := acItemAutoHeight.Checked;
end;

procedure TfrmGridOfficeCompactView.DrawSenderPhoto(Sender: TObject);
begin
  cxAlphaBlend(pbSenderPhoto.Canvas.Handle, SenderPhoto, pbSenderPhoto.ClientRect, SenderPhoto.ClientRect);
end;

procedure TfrmGridOfficeCompactView.DrawFilterButton(Sender: TObject);
const
  AFontSize = 14;
  AText = 'Filter';
  ADownButtonSize = 8;
  ADownButtonIndent = 4;
  AFlags = CXTO_LEFT or CXTO_CENTER_VERTICALLY or CXTO_SINGLELINE;
var
  ARect: TRect;
  AUnreadFontSize: Integer;
  AScaleFactor: TdxScaleFactor;
begin
  AScaleFactor := dxGetScaleFactor(TableView);
  ARect := pbFilterButton.ClientRect;
  AUnreadFontSize := stUnread.Font.Size;
  try
    stUnread.Font.Size := AScaleFactor.Apply(AFontSize, stUnread.Font.PixelsPerInch, dxDefaultDPI);
    cxTextOut(pbFilterButton.Canvas, AText, ARect, AFlags or CXTO_CALCRECT, stUnread.Font);
    cxTextOut(pbFilterButton.Canvas, AText, ARect, AFlags, stUnread.Font);
  finally
    stUnread.Font.Size := AUnreadFontSize;
  end;
  ARect := cxRectSetLeft(ARect, ARect.Right + AScaleFactor.Apply(ADownButtonIndent), AScaleFactor.Apply(ADownButtonSize));
  ARect := cxRectCenterVertically(ARect, AScaleFactor.Apply(ADownButtonSize));
  TdxImageDrawer.DrawUncachedImage(pbFilterButton.Canvas.Handle, ARect, ARect, nil, ilImages, pbFilterButton.Tag, FilterButtonState);
end;

procedure TfrmGridOfficeCompactView.FilterButtonClick(Sender: TObject);
var
  ARect: TRect;
begin
  ARect := dxMapWindowRect(pbFilterButton.Parent.Handle, 0, pbFilterButton.BoundsRect);
  bpmFilters.Popup(ARect.Left, ARect.Bottom);
end;

procedure TfrmGridOfficeCompactView.FilterButtonMouseEnter(Sender: TObject);
begin
  FilterButtonState := idmNormal;
end;

procedure TfrmGridOfficeCompactView.FilterButtonMouseLeave(Sender: TObject);
begin
  FilterButtonState := idmDisabled;
end;

procedure TfrmGridOfficeCompactView.SelectFilter(Sender: TObject);
var
  AComponent: TComponent absolute Sender;
begin
  TableView.DataController.Filter.BeginUpdate;
  try
    TableView.DataController.Filter.Active := AComponent.Tag <> 0;
    TableView.DataController.Filter.Clear;
    case AComponent.Tag of
      1:
        TableView.DataController.Filter.AddItem(nil, TableViewRead, foEqual, False, '');
      2:
        TableView.DataController.Filter.AddItem(nil, TableViewPriority, foEqual, 2, '');
      3:
        TableView.DataController.Filter.AddItem(nil, TableViewDate, foToday, '', '');
      4:
        TableView.DataController.Filter.AddItem(nil, TableViewDate, foYesterday, '', '');
    end;
  finally
    TableView.DataController.Filter.EndUpdate;
  end;
end;

procedure TfrmGridOfficeCompactView.TableViewCanFocusRecord(Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
  AAllow := ARecord.IsData;
end;

procedure TfrmGridOfficeCompactView.TableViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
  APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  UpdateMessage;
  InvalidateSenderPhoto;
  FNeedCheckTopRow := True;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawRowHotTrack(
  Sender: TcxGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxCustomGridCellViewInfo; var ADone: Boolean);
var
  AGPGraphics: TdxGPGraphics;
begin
  AGPGraphics := dxGpBeginPaint(ACanvas.Handle, AViewInfo.Bounds);
  try
    AGPGraphics.FillRectangle(AViewInfo.Bounds, dxColorToAlphaColor(stUnread.Font.Color, 40));
  finally
    dxGpEndPaint(AGPGraphics);
  end;
  ADone := True;
end;

procedure TfrmGridOfficeCompactView.TableViewTopRecordIndexChanged(Sender: TObject);
begin
  if FNeedCheckTopRow then
  begin
    CheckTopRowIndex;
    FNeedCheckTopRow := False;
  end;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawButton(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  ASateMap: array[Boolean] of TcxImageDrawMode = (idmDisabled, idmNormal);
var
  ASize: TSize;
  ARect: TRect;
  ABitmap: TcxAlphaBitmap;
begin
  if AViewInfo.RecordViewInfo.HotTracked then
  begin
    ADone := True;
    ACanvas.SaveClipRegion;
    try
      ASize := cxSize(ilImages.Width, ilImages.Height);
      ARect := cxRectCenter(AViewInfo.Bounds, AViewInfo.ScaleFactor.Apply(ASize));
      ACanvas.IntersectClipRect(ARect);
      ABitmap := TcxAlphaBitmap.CreateSize(ARect.Width, ARect.Height, True);
      try
        TdxImageDrawer.DrawUncachedImage(ABitmap.Canvas.Handle, ABitmap.ClientRect, ABitmap.ClientRect,
          nil, ilImages, AViewInfo.Item.Tag, ASateMap[AViewInfo.IsHotTracked]);
        cxMakeColoredBitmap(ABitmap, AViewInfo.Params.TextColor);
        cxAlphaBlend(ACanvas.Handle, ABitmap, ARect, ABitmap.ClientRect);
      finally
        ABitmap.Free;
      end;
    finally
      ACanvas.RestoreClipRegion;
    end;
  end;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawGroupRow(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
const
  ATextOffset = 30;
  AFontStyle = [fsBold];
  AFlags = CXTO_LEFT or CXTO_CENTER_VERTICALLY or CXTO_SINGLELINE;
var
  ARect: TRect;
  AText: string;
  AUnreadFontStyle: TFontStyles;
begin
  ACanvas.FillRect(AViewInfo.Bounds, AViewInfo.Params.Color);
  ARect := cxRectOffset(AViewInfo.Bounds, AViewInfo.ScaleFactor.Apply(ATextOffset), 0);
  AText := Sender.ViewData.GetCustomDataDisplayText(AViewInfo.GridRecord.RecordIndex,
    TableViewDate.Index, TcxGridDataOperation.doGrouping);
  AUnreadFontStyle := stUnread.Font.Style;
  try
    stUnread.Font.Style := AFontStyle;
    cxTextOut(ACanvas.Canvas, AText, ARect, AFlags, stUnread.Font);
  finally
    stUnread.Font.Style := AUnreadFontStyle;
  end;
  ADone := True;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawPriority(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
const
  AFlags = CXTO_CENTER_HORIZONTALLY or CXTO_CENTER_VERTICALLY or CXTO_SINGLELINE;
begin
  if AViewInfo.Value = 2 then
  begin
    ACanvas.SaveClipRegion;
    try
      ACanvas.IntersectClipRect(AViewInfo.Bounds);
      cxTextOut(ACanvas.Canvas, '!', AViewInfo.Bounds, AFlags, stPriority.Font);
    finally
      ACanvas.RestoreClipRegion;
    end;
  end;
  ADone := True;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawRead(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Value then
    ACanvas.FillRect(AViewInfo.Bounds, stUnread.Font.Color);
  ADone := True;
end;

procedure TfrmGridOfficeCompactView.TableViewDrawRowText(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  AFont: TFont;
begin
  if not TryCreateRowCellFont(AViewInfo, AFont) then Exit;
  AViewInfo.Item.OnCustomDrawCell := nil;
  try
    if (AViewInfo.Item = TableViewSubject) and not IsRead(AViewInfo.GridRecord) then
      AFont.Style := [fsBold];
    AViewInfo.EditViewInfo.Font := AFont;
    if AFont.Color <> clDefault then
      AViewInfo.EditViewInfo.TextColor := AFont.Color;
    AViewInfo.Paint(ACanvas);
    ADone := True;
  finally
    AViewInfo.Item.OnCustomDrawCell := TableViewDrawRowText;
    AFont.Free;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(OfficeCompactViewFrameID, TfrmGridOfficeCompactView, OfficeCompactViewFrameName,
    -1, NewUpdatedGroupIndex, GridViewGroupIndex, -1);

end.
