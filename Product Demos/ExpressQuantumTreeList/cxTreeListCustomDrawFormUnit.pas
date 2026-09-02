unit cxTreeListCustomDrawFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.Types,
  Vcl.Dialogs, cxTreeListCarsFormUnit, cxGraphics, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxCurrencyEdit, cxDropDownEdit, cxSpinEdit, cxBlobEdit,
  cxHyperLinkEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, 
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxEdit,
  cxEditRepositoryItems, Vcl.ImgList, Vcl.ExtCtrls, cxContainer, cxGroupBox,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, cxTextEdit, cxClasses,
  cxCustomDrawDemoConsts, cxGeometry, cxTreeListDataModule, cxCheckBox, dxCore,
  cxLookAndFeels, dxLayoutContainer, Vcl.ActnList, dxLayoutLookAndFeels, dxLayoutControl, dxLayoutControlAdapters,
  dxScrollbarAnnotations, System.ImageList, System.Actions,
  cxFilter;

type
  TcxItemCustomDrawInfo = class;

  TcxCustomDrawInfo = class
  private
    FBitmaps: TList;
    FDefaultFont: TFont;
    FCustomDrawData: TList;
    FOwnerDrawText: Boolean;
    function GetBkBitmap(ABkImage: TBkImage): TBitmap;
    function GetCount: Integer;
    function GetItem(ADrawArea: TCustomDrawArea): TcxItemCustomDrawInfo;
  protected
  public
    constructor Create;
    destructor Destroy; override;
    procedure AddNewItem(ADrawArea: TCustomDrawArea;
      AItemType: TcxItemCustomDrawType);
    function GetItemByIndex(AIndex: Integer): TcxItemCustomDrawInfo;
    property Bitmaps[ABkImage: TBkImage]: TBitmap read GetBkBitmap;
    property Count: Integer read GetCount;
    property DefaultFont: TFont read FDefaultFont;
    property Items[ADrawArea: TCustomDrawArea]: TcxItemCustomDrawInfo read GetItem; default;
    property OwnerDrawText: Boolean read FOwnerDrawText write FOwnerDrawText;
  end;

  TcxItemCustomDrawInfo = class
  private
    FOwner: TcxCustomDrawInfo;
    FBitmap: TBitmap;
    FBkImageType: TBkImage;
    FDrawArea: TCustomDrawArea;
    FDrawingStyle: TCustomDrawingStyle;
    FColorScheme: TColorScheme;
    FFont: TFont;
    FIsBitmapAssigned: Boolean;
    FIsFontAssigned: Boolean;
    FItemType: TcxItemCustomDrawType;
    FOwnerTextDraw: Boolean;
    function GetBitmap: TBitmap;
    function GetFont: TFont;
    procedure SetBitmap(const Value: TBitmap);
    procedure SetFont(const Value: TFont);
  public
    constructor Create(AOwner: TcxCustomDrawInfo; ADrawArea: TCustomDrawArea;
      AItemType: TcxItemCustomDrawType);
    destructor Destroy; override;
    property Owner: TcxCustomDrawInfo read FOwner;
    property Bitmap: TBitmap read GetBitmap write SetBitmap;
    property BkImageType: TBkImage read FBkImageType write FBkImageType;
    property DrawArea: TCustomDrawArea read FDrawArea;
    property DrawingStyle: TCustomDrawingStyle read FDrawingStyle write FDrawingStyle;
    property ColorScheme: TColorScheme read FColorScheme write FColorScheme;
    property Font: TFont read GetFont write SetFont;
    property ItemType: TcxItemCustomDrawType read FItemType;
    property OwnerTextDraw: Boolean read FOwnerTextDraw write FOwnerTextDraw;
  end;

  TfrmCustomDraw = class(TfrmCars)
    ilIndicatorImages: TImageList;
    ilMain: TImageList;
    cxEditRepository1: TcxEditRepository;
    eriTelephoneMaskEdit: TcxEditRepositoryMaskItem;
    StyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    styNoVacancy: TcxStyle;
    styVacancy: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    dxLayoutItem2: TdxLayoutItem;
    btnCustomDraw: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCustomDrawClick(Sender: TObject);
    procedure tlDBInitInsertingRecord(Sender: TcxCustomDBTreeList;
      AFocusedNode: TcxDBTreeListNode; var AHandled: Boolean);
    procedure tlDBCustomDrawBackgroundCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListCustomCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawBandHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawFooterCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListFooterCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawHeaderCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawBandCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListBandCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawIndentCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndentCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawIndicatorCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndicatorCellViewInfo;
      var ADone: Boolean);
    procedure tlDBCustomDrawPreviewCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
  private
    FCustomDrawInfo: TcxCustomDrawInfo;
    FTempCustomDrawItem: TcxItemCustomDrawInfo;
    function DrawCellItem(AItem: TcxItemCustomDrawInfo; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListEditCellViewInfo; Sender: TObject): Boolean;
    function DrawHeaderItem(AItem: TcxItemCustomDrawInfo; ACanvas: TcxCanvas;
      AViewInfo: TcxTreeListHeaderCellViewInfo; Sender: TObject): Boolean;
    function DrawItem(AItem: TcxItemCustomDrawInfo; ACanvas: TcxCanvas;
      const R: TRect): Boolean;
    function DrawItemOutside(ACanvas: TcxCanvas; const ABounds: TRect): Boolean;
  public
    function HasOptions: Boolean; override;
    class function GetID: Integer; override;
    property CustomDrawInfo: TcxCustomDrawInfo read FCustomDrawInfo;
  end;

implementation

{$R *.dfm}
{$R 'cxCustomDrawDemoImages.res'}

uses
  cxCustomDrawDemoEditor, cxTreeListFeaturesDemoStrConsts;

var
  FCustomDrawDemoEditorForm: TCustomDrawDemoEditorForm;

{ TcxCustomDrawInfo }


destructor TcxCustomDrawInfo.Destroy;
var
  I: Integer;
begin
  for I := 0 to FCustomDrawData.Count - 1 do
    TcxItemCustomDrawInfo(FCustomDrawData[I]).Free;
  for I := 0 to FBitmaps.Count - 1 do
    TBitmap(FBitmaps[I]).Free;
  FCustomDrawData.Free;
  FBitmaps.Free;
  FDefaultFont.Free;
end;

constructor TcxCustomDrawInfo.Create;
  procedure LoadResourceBitmaps;
  var
    I: TBkImage;
    ABitmap: TBitmap;
  begin
    for I := Low(BkImageResNames) to High(BkImageResNames) do
    begin
      ABitmap := TBitmap.Create;
      LoadImageFromRes(ABitmap, BkImageResNames[I]);
      FBitmaps.Add(ABitmap);
    end;
  end;
begin
  FBitmaps := TList.Create;
  LoadResourceBitmaps;
  FDefaultFont := TFont.Create;
  FCustomDrawData := TList.Create;
  FOwnerDrawText := True;
end;

procedure TcxCustomDrawInfo.AddNewItem(ADrawArea: TCustomDrawArea;
  AItemType: TcxItemCustomDrawType);
begin
  FCustomDrawData.Add(TcxItemCustomDrawInfo.Create(Self, ADrawArea, AItemType));
end;

function TcxCustomDrawInfo.GetItemByIndex(
  AIndex: Integer): TcxItemCustomDrawInfo;
begin
  Result := TcxItemCustomDrawInfo(FCustomDrawData[AIndex]);
end;

function TcxCustomDrawInfo.GetBkBitmap(ABkImage: TBkImage): TBitmap;
begin
  Result := TBitmap(FBitmaps[Integer(ABkImage)]);
end;

function TcxCustomDrawInfo.GetCount: Integer;
begin
  Result := FCustomDrawData.Count;
end;

function TcxCustomDrawInfo.GetItem(ADrawArea: TCustomDrawArea): TcxItemCustomDrawInfo;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to FCustomDrawData.Count - 1 do
    if TcxItemCustomDrawInfo(FCustomDrawData[I]).DrawArea = ADrawArea then
    begin
      Result := TcxItemCustomDrawInfo(FCustomDrawData[I]);
      Break;
    end;
end;

{ TcxItemCustomDrawInfo }

constructor TcxItemCustomDrawInfo.Create(AOwner: TcxCustomDrawInfo;
  ADrawArea: TCustomDrawArea; AItemType: TcxItemCustomDrawType);
begin
  FOwner := AOwner;
  FDrawArea := ADrawArea;
  FItemType := AItemType;
  if FOwner <> nil then
    FBitmap := AOwner.Bitmaps[TBkImage(0)]
  else
    FBitmap := nil;
  if FOwner <> nil then
    FFont := AOwner.DefaultFont
  else
    FBitmap := nil;
  FBkImageType := TBkImage(0);
  FDrawingStyle := TCustomDrawingStyle(0);
  FColorScheme := TColorScheme(0);
  FIsBitmapAssigned := False;
  FIsFontAssigned := False;
  FOwnerTextDraw := False;
end;

destructor TcxItemCustomDrawInfo.Destroy;
begin
  if FIsBitmapAssigned then
    FBitmap.Free;
  if FIsFontAssigned then
    FFont.Free;
  inherited Destroy;
end;

function TcxItemCustomDrawInfo.GetBitmap: TBitmap;
begin
  if ((FBkImageType <> bkiUserDefined) or not FIsBitmapAssigned) and
    (FOwner <> nil) then
    Result := FOwner.Bitmaps[FBkImageType]
  else
    Result := FBitmap;
end;

function TcxItemCustomDrawInfo.GetFont: TFont;
begin
  Result := FFont;
end;

procedure TcxItemCustomDrawInfo.SetBitmap(const Value: TBitmap);
begin
  if FIsBitmapAssigned then
    FBitmap.Free;
  FBitmap := Value;
  FIsBitmapAssigned := True;
  FBkImageType := bkiUserDefined;
end;

procedure TcxItemCustomDrawInfo.SetFont(const Value: TFont);
begin
  if FIsFontAssigned then
    FFont.Free;
  FFont := Value;
  FIsFontAssigned := True;
end;

{ TfrmCustomDraw }

function TfrmCustomDraw.HasOptions: Boolean;
begin
  Result := True;
end;

class function TfrmCustomDraw.GetID: Integer;
begin
  Result := 25;
end;

procedure TfrmCustomDraw.btnCustomDrawClick(Sender: TObject);
begin
  FCustomDrawDemoEditorForm.Show;
end;

procedure TfrmCustomDraw.FormCreate(Sender: TObject);
  procedure AddCustomDrawInfos;
  begin
    FCustomDrawInfo.AddNewItem(cdaBackground, itNormal);
    FCustomDrawInfo.AddNewItem(cdaBandHeader, itText);
    FCustomDrawInfo.AddNewItem(cdaCell, itCell);
    FCustomDrawInfo.AddNewItem(cdaCellsGroup, itNormal);
    FCustomDrawInfo.AddNewItem(cdaFooter, itNormal);
    FCustomDrawInfo.AddNewItem(cdaFooterCell, itText);
    FCustomDrawInfo.AddNewItem(cdaGroupFooter, itNormal);
    FCustomDrawInfo.AddNewItem(cdaHeader, itNormal);
    FCustomDrawInfo.AddNewItem(cdaHeaderCell, itText);
    FCustomDrawInfo.AddNewItem(cdaIndentCell, itNormal);
    FCustomDrawInfo.AddNewItem(cdaIndicatorCell, itNormal);
    FCustomDrawInfo.AddNewItem(cdaPreview, itCell);
  end;
  procedure AdjustCustomDrawItems;
  begin
    FCustomDrawInfo[cdaHeaderCell].DrawingStyle := cdsBkImage;
    FCustomDrawInfo[cdaBackground].BkImageType := bkiEgypt;
    FCustomDrawInfo[cdaIndentCell].BkImageType := bkiEgypt;
    FCustomDrawInfo[cdaFooter].BkImageType := bkiMyFace;
    FCustomDrawInfo[cdaFooterCell].BkImageType := bkiMyFace;
    FCustomDrawInfo[cdaPreview].BkImageType := bkiMyFace;
    FCustomDrawInfo[cdaHeaderCell].DrawingStyle := cdsGradient;
    FCustomDrawInfo[cdaBandHeader].DrawingStyle := cdsGradient;
    FCustomDrawInfo[cdaBandHeader].ColorScheme := csBlue;
    FCustomDrawInfo[cdaIndicatorCell].DrawingStyle := cdsGradient;
    FCustomDrawInfo[cdaGroupFooter].BkImageType := bkiMyFace;
  end;
begin
  FCustomDrawInfo := TcxCustomDrawInfo.Create;
  AddCustomDrawInfos;
  AdjustCustomDrawItems;
end;

procedure TfrmCustomDraw.FormDestroy(Sender: TObject);
begin
  FCustomDrawDemoEditorForm.Free;
  FCustomDrawInfo.Free;
end;

procedure TfrmCustomDraw.FormShow(Sender: TObject);
begin
//  TreeList.OptionsCustomizing.NestedBands := True;
  TreeList.FullExpand;
  FCustomDrawDemoEditorForm := TCustomDrawDemoEditorForm.Create(Self);
  FCustomDrawDemoEditorForm.Show;
end;

procedure TfrmCustomDraw.tlDBCustomDrawBackgroundCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListCustomCellViewInfo;
  var ADone: Boolean);
begin
  ADone := DrawItem(FCustomDrawInfo[cdaBackground], ACanvas, AViewInfo.BoundsRect);
end;

procedure TfrmCustomDraw.tlDBCustomDrawBandCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListBandCellViewInfo;
  var ADone: Boolean);
const
  ADrawArea: array [tlbpHeader..tlbpFooter] of TCustomDrawArea = (cdaHeader,
    cdaCellsGroup, cdaGroupFooter, cdaFooter);
begin
  ADone := DrawItem(FCustomDrawInfo[ADrawArea[AViewInfo.Part]], ACanvas, AViewInfo.BoundsRect);
end;

procedure TfrmCustomDraw.tlDBCustomDrawBandHeaderCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
  var ADone: Boolean);
begin
  ADone := DrawHeaderItem(FCustomDrawInfo[cdaBandHeader], ACanvas, AViewInfo, Self);
end;

procedure TfrmCustomDraw.tlDBCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  ADone := DrawCellItem(FCustomDrawInfo[cdaCell], ACanvas, AViewInfo, Sender);
end;

procedure TfrmCustomDraw.tlDBCustomDrawFooterCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListFooterCellViewInfo;
  var ADone: Boolean);
var
 AItem: TcxItemCustomDrawInfo;
begin
  if AViewInfo.Hidden then Exit;

  AItem := FCustomDrawInfo[cdaFooterCell];
  if AItem.DrawingStyle = cdsDefaultDrawing then Exit;
  if AItem.OwnerTextDraw then
  begin
    ADone := DrawItem(AItem, ACanvas, AViewInfo.BoundsRect);
    AViewInfo.Painter.DrawFooterCellBorder(ACanvas, AViewInfo.BoundsRect, AViewInfo.Borders, ScaleFactor);
    ACanvas.Font := AItem.Font;
    ACanvas.Brush.Style := bsClear;
    ACanvas.DrawTexT(AViewInfo.Text, cxRectInflate(AViewInfo.BoundsRect, -2, -2), 0);
  end
  else
  begin
    FTempCustomDrawItem := AItem;
    AViewInfo.Transparent := True;
    AViewInfo.Painter.DrawFooterCellContent(ACanvas, AViewInfo.BoundsRect, AViewInfo.AlignHorz, AViewInfo.AlignVert,
      AViewInfo.MultiLine, '', AViewInfo.ViewParams.Font, AViewInfo.ViewParams.TextColor, AViewInfo.ViewParams.Color,
      DrawItemOutside, AViewInfo.Borders, ScaleFactor, Sender.BordersScaleFactor);
    ADone := False;
  end;
end;

procedure TfrmCustomDraw.tlDBCustomDrawHeaderCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListHeaderCellViewInfo;
  var ADone: Boolean);
begin
  ADone := DrawHeaderItem(FCustomDrawInfo[cdaHeaderCell], ACanvas, AViewInfo, Sender);
end;

procedure TfrmCustomDraw.tlDBCustomDrawIndentCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndentCellViewInfo;
  var ADone: Boolean);

  procedure DrawTreeLines;
  begin
    with AViewInfo do
    begin
      if [ilVertUp, ilVertDown] * Lines <> [] then
        cxFillHalfToneRect(ACanvas.Canvas, VertTreeLine, ViewParams.Color,
          TcxTreeList(Sender).OptionsView.TreeLineColor);
      if ilHorz in Lines then
        cxFillHalfToneRect(ACanvas.Canvas, HorzTreeLine, ViewParams.Color,
          TcxTreeList(Sender).OptionsView.TreeLineColor);
    end;
  end;

  procedure DrawRectWithBorders;
  begin
    ACanvas.Brush.Color := TcxTreeList(Sender).OptionsView.GridLineColor;
    with AViewInfo, AViewInfo.BoundsRect  do
    begin
      if bLeft in Borders then
        ACanvas.FillRect(cxRect(Left, Top, Left + 1, Bottom));
      if bRight in Borders then
        ACanvas.FillRect(cxRect(Right - 1, Top, Right, Bottom));
      if bTop in Borders then
        ACanvas.FillRect(cxRect(Left, Top, Right, Top + 1));
      if bBottom in Borders then
        ACanvas.FillRect(cxRect(Left, Bottom - 1, Right, Bottom));
    end;
  end;

begin
  ADone := DrawItem(FCustomDrawInfo[cdaIndentCell], ACanvas, AViewInfo.BoundsRect);
  if not ADone then Exit;
  with AViewInfo do
  begin
    DrawRectWithBorders;
    DrawTreeLines;
    if Button then
    begin
      DrawItem(FCustomDrawInfo[cdaIndentCell], ACanvas, GlyphRect);
      ACanvas.Brush.Color := TcxTreeList(Sender).OptionsView.TreeLineColor;
      Painter.DrawSmallExpandButton(ACanvas, GlyphRect, IsExpanded, clBtnFace);
    end;
  end;
end;

procedure TfrmCustomDraw.tlDBCustomDrawIndicatorCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListIndicatorCellViewInfo;
  var ADone: Boolean);
begin
  FTempCustomDrawItem := FCustomDrawInfo[cdaIndicatorCell];
  if FTempCustomDrawItem.DrawingStyle = cdsDefaultDrawing then Exit;
  with AViewInfo do
    Painter.DrawIndicatorItemEx(ACanvas, BoundsRect, Kind, ViewParams.Color, DrawItemOutside);
  ADone := True;
end;

procedure TfrmCustomDraw.tlDBCustomDrawPreviewCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin
  ADone := DrawCellItem(FCustomDrawInfo[cdaPreview], ACanvas, AViewInfo, Sender);
end;

procedure TfrmCustomDraw.tlDBInitInsertingRecord(Sender: TcxCustomDBTreeList;
  AFocusedNode: TcxDBTreeListNode; var AHandled: Boolean);
begin
  if AFocusedNode <> nil then
    dmTreeList.SetParentValue(AFocusedNode.ParentKeyValue);
end;

function TfrmCustomDraw.DrawHeaderItem(
  AItem: TcxItemCustomDrawInfo; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListHeaderCellViewInfo; Sender: TObject): Boolean;
begin
  Result := False;
  if AItem.DrawingStyle = cdsDefaultDrawing then Exit;
  if AItem.OwnerTextDraw then
  begin
    Result := DrawItem(AItem, ACanvas, AViewInfo.BoundsRect);
    AViewInfo.Painter.DrawHeaderBorder(ACanvas,
      cxRectInflate(AViewInfo.BoundsRect, -1, -1),
      AViewInfo.Neighbors, AViewInfo.Borders);
    ACanvas.Font := AItem.Font;
    ACanvas.Brush.Style := bsClear;
    ACanvas.DrawTexT(AViewInfo.Text, cxRectInflate(AViewInfo.TextBounds, -2, 0), cxAlignCenter);
  end
  else
  begin
    FTempCustomDrawItem := AItem;
    with AViewInfo do
      Painter.DrawHeaderEx(ACanvas,
        BoundsRect, TextBounds, Neighbors, Borders, State, AlignHorz, AlignVert,
        MultiLine, ShowEndEllipsis, Text, ViewParams.Font, ViewParams.TextColor,
        ViewParams.Color, DrawItemOutside);
    Result := True;
  end;
  if AViewInfo is TcxTreeListColumnHeaderCellViewInfo then
    with TcxTreeListColumnHeaderCellViewInfo(AViewInfo) do
      if SortOrder <> soNone then
        TcxDBTreeList(Sender).LookAndFeel.Painter.DrawSortingMark(ACanvas,
          SortMarkBounds, SortOrder = soAscending);
  if AViewInfo.State = cxbsPressed then
     AViewInfo.Painter.DrawHeaderPressed(ACanvas, AViewInfo.BoundsRect);
end;

function TfrmCustomDraw.DrawItem(AItem: TcxItemCustomDrawInfo;
  ACanvas: TcxCanvas; const R: TRect): Boolean;
begin
  case AItem.DrawingStyle of
    cdsBkImage:
       ACanvas.FillRect(R, AItem.Bitmap);
    cdsGradient:
       DrawGradient(ACanvas.Canvas, R,
        ColorScheme[Integer(AItem.ColorScheme), 1],
        ColorScheme[Integer(AItem.ColorScheme), 0], 40,
        Integer(AItem.ColorScheme) > 1);
  end;
  Result := (AItem.DrawingStyle <> cdsDefaultDrawing);
end;

function TfrmCustomDraw.DrawItemOutside(ACanvas: TcxCanvas;
  const ABounds: TRect): Boolean;
begin
  DrawItem(FTempCustomDrawItem, ACanvas, ABounds);
  Result := True;
end;

function TfrmCustomDraw.DrawCellItem(AItem: TcxItemCustomDrawInfo;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  Sender: TObject): Boolean;

  procedure OwnerDrawText(ALinesColor: TColor; AFont: TFont);
  var
    ARect: TRect;
  begin
    ACanvas.Pen.Color := ALinesColor;
    ACanvas.Brush.Style := bsClear;
    ACanvas.Font := AFont;
    ARect := cxRectInflate(AViewInfo.BoundsRect, 0, 1, 0, 0);
    with ARect do
      ACanvas.Canvas.Rectangle(Left, Top, Right, Bottom);
    if AViewInfo.EditViewInfo is TcxCustomCheckBoxViewInfo then
      with TcxCustomCheckBoxViewInfo(AViewInfo.EditViewInfo) do
      AViewInfo.Painter.DrawCheckButton(ACanvas,
        cxRectOffset(CheckBoxRect, AViewInfo.BoundsRect.Left, AViewInfo.BoundsRect.Top),
        cxbsDefault, State = cbsChecked)
    else
      if AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo then
        with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo) do
          ACanvas.DrawTexT(Text, cxRectInflate(AViewInfo.BoundsRect, -2, -2), 0);
  end;

var
 AStyle: TcxStyle;
begin
  Result := False;
  AViewInfo.Transparent := (AViewInfo.ViewParams.Bitmap <> nil) and
    (not AViewInfo.ViewParams.Bitmap.Empty);
  if AViewInfo.Selected then Exit;
  if AItem.DrawingStyle = cdsDefaultDrawing then Exit;
  if AItem.DrawingStyle = cdsDependsOnData then
    with dmTreeList do
    begin
      if AViewInfo.Node.Values[clnHP.ItemIndex] then
        AStyle := styVacancy
      else
        AStyle := styNoVacancy;
      ACanvas.Brush.Color := AStyle.Color;
      ACanvas.FillRect(AViewInfo.BoundsRect);
      OwnerDrawText(AStyle.TextColor, AStyle.Font);
      Result := True;
    end
  else
  begin
    Result := DrawItem(AItem, ACanvas, AViewInfo.BoundsRect);
    if AItem.OwnerTextDraw then
      OwnerDrawText(TcxTreeList(Sender).OptionsView.GridLineColor, AItem.Font)
    else
    begin
      AViewInfo.Transparent := True;
      Result := False;
    end;
  end;
end;

initialization
  TfrmCustomDraw.Register;

end.
