unit uVertGridCustomDraw;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, System.Types, System.UITypes,
  Vcl.Dialogs, dxVertGridFrame, Vcl.StdCtrls, Vcl.ExtCtrls, cxStyles, cxGraphics,
  cxEdit, cxImageComboBox, cxHyperLinkEdit, cxCheckBox, cxBlobEdit,
  cxEditRepositoryItems, Vcl.ImgList, cxVGrid, cxDBVGrid, cxControls,
  cxInplaceContainer, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxColorComboBox, cxClasses, cxImage, cxMemo, 
  dxPSCore, dxPScxVGridLnk, cxLookAndFeels, cxLookAndFeelPainters, cxLabel, cxSpinEdit, cxCurrencyEdit,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, dxScrollbarAnnotations, dxLayoutLookAndFeels,
  cxFilter;

type

  TcxDemoVerticalGridControlPainter = class(TcxvgPainter)
  private
    FDefaultColor: TColor;
    procedure SetDefaultColor(Value: TColor);
  protected
  public
    constructor Create(AOwner: TcxEditingControl); override;
    function BeginBackgroundColor: TColor;
    function EndBackgroundColor: TColor;
    function BeginHeaderColor: TColor;
    function EndHeaderColor: TColor;
    function BeginCellColor: TColor;
    function EndCellColor: TColor;
    function TextColor: TColor;
    procedure DrawText(ACanvas: TcxCanvas; const AText: string; ATextBounds: TRect;
      const AFont: TFont; AlignHorz: TAlignment; AlignVert: TcxAlignmentVert);

    property DefaultColor: TColor read FDefaultColor write SetDefaultColor;
  end;

  TcxDemoVerticalGridControlPainterClass = class of TcxDemoVerticalGridControlPainter;

  TfrmVertGridCustomDraw = class(TVerticalGridFrame)
    cxEditRepository1: TcxEditRepository;
    eriTelephoneMaskEdit: TcxEditRepositoryMaskItem;
    dxLayoutItem1: TdxLayoutItem;
    DBVerticalGrid: TcxDBVerticalGrid;
    DBVerticalGridID: TcxDBMultiEditorRow;
    fldTrademark: TcxDBEditorRow;
    fldModel: TcxDBEditorRow;
    fldCategory: TcxDBEditorRow;
    rowPerformance_Attributes: TcxCategoryRow;
    fldHP: TcxDBEditorRow;
    fldLiter: TcxDBEditorRow;
    fldCyl: TcxDBEditorRow;
    fldTransmissSpeedCount: TcxDBEditorRow;
    fldTransmissAutomatic: TcxDBEditorRow;
    DBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow;
    rowNotes: TcxCategoryRow;
    fldDescription: TcxDBEditorRow;
    fldHyperlink: TcxDBEditorRow;
    rowOthers: TcxCategoryRow;
    fldPrice: TcxDBEditorRow;
    fldIcon: TcxDBEditorRow;
    fldPicture: TcxDBEditorRow;
    dxLayoutItem2: TdxLayoutItem;
    cbColor: TcxColorComboBox;
    procedure DBVerticalGridDrawBackground(Sender: TObject;
      ACanvas: TcxCanvas; const R: TRect; const AViewParams: TcxViewParams;
      var Done: Boolean);
    procedure DBVerticalGridDrawRowHeader(Sender: TObject;
      ACanvas: TcxCanvas; APainter: TcxvgPainter;
      AHeaderViewInfo: TcxCustomRowHeaderInfo; var Done: Boolean);
    procedure DBVerticalGridDrawValue(Sender: TObject;
      ACanvas: TcxCanvas; APainter: TcxvgPainter;
      AValueInfo: TcxRowValueInfo; var Done: Boolean);
    procedure cbColorPropertiesEditValueChanged(Sender: TObject);
  private
    FPainter: TcxDemoVerticalGridControlPainter;
    procedure PSCustomDrawRowHeaderCell(Sender: TcxCustomVerticalGridReportLink;
      ACanvas: TCanvas; ARow: TcxCustomRow; ACellIndex: Integer; AnItem: TdxReportCellImage; 
      var ADone: Boolean);
    procedure PSCustomDrawRowIndentCell(Sender: TcxCustomVerticalGridReportLink;
      ACanvas: TCanvas; ARow: TcxCustomRow; AnIndex: Integer; 
      AnItem: TdxReportCellExpandButton; var ADone: Boolean);
    procedure PSCustomDrawRowValueCell(Sender: TcxCustomVerticalGridReportLink;
      ACanvas: TCanvas; ARow: TcxCustomRow; ACellIndex, ARecordIndex: Integer; 
      AnItem: TAbstractdxReportCellData; var ADone: Boolean);
  protected
    function GetDescription: string; override;
    procedure PrepareLink(AReportLink: TBasedxReportLink); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure ChangeVisibility(AShow: Boolean); override;
  end;

implementation

uses
  maindata, dxFrames, FrameIDs, uStrsConst, Vcl.GraphUtil, dxOffice11, cxVGridUtils,
  cxVGridViewInfo, cxGeometry, dxThemeConsts, dxUxTheme, cxDrawTextUtils,
  dxThemeManager;

{$R *.dfm}

 { TcxDemoVerticalGridControlPainter }
constructor TcxDemoVerticalGridControlPainter.Create(AOwner: TcxEditingControl);
begin
  inherited Create(AOwner);
  FDefaultColor := cl3DLight;// clGradientActiveCaption;
end;

procedure TcxDemoVerticalGridControlPainter.SetDefaultColor(Value: TColor);
begin
  Value := ColorToRGB(Value);
  if FDefaultColor <> Value then
  begin
    FDefaultColor := Value;
    Control.Invalidate;
  end;
end;

function TcxDemoVerticalGridControlPainter.BeginBackgroundColor: TColor;
begin
  Result := GetHighLightColor(DefaultColor, 150);
end;

function TcxDemoVerticalGridControlPainter.EndBackgroundColor: TColor;
begin
  Result := GetHighLightColor(DefaultColor, 50);
end;

function TcxDemoVerticalGridControlPainter.BeginCellColor: TColor;
begin
  Result := GetHighLightColor(DefaultColor);
end;

function TcxDemoVerticalGridControlPainter.EndCellColor: TColor;
begin
  Result := GetShadowColor(DefaultColor);
end;

function TcxDemoVerticalGridControlPainter.TextColor: TColor;
var
  R, G, B: Byte;
begin
  R := GetRValue(DefaultColor);
  G := GetGValue(DefaultColor);
  B := GetBValue(DefaultColor);
  Result := RGB(R xor $FF, G xor $FF, B xor $FF);
end;

function TcxDemoVerticalGridControlPainter.BeginHeaderColor: TColor;
begin
  Result := GetHighLightColor(DefaultColor, 25);
end;

function TcxDemoVerticalGridControlPainter.EndHeaderColor: TColor;
begin
  Result := GetShadowColor(DefaultColor, -70);
end;

procedure TcxDemoVerticalGridControlPainter.DrawText(ACanvas: TcxCanvas; const AText: string; ATextBounds: TRect;
  const AFont: TFont; AlignHorz: TAlignment; AlignVert: TcxAlignmentVert);
const
  AlignmentsHorz: array[TAlignment] of Integer =
    (cxAlignLeft, cxAlignRight, cxAlignHCenter);
  AlignmentsVert: array[TcxAlignmentVert] of Integer =
    (cxAlignTop, cxAlignBottom, cxAlignVCenter);
begin
  ACanvas.Brush.Style := bsClear;
  ACanvas.Font := AFont;
  ACanvas.Font.Color := TextColor;
  ACanvas.DrawText(AText, ATextBounds, AlignmentsHorz[AlignHorz] or AlignmentsVert[AlignVert]);
  ACanvas.Brush.Style := bsSolid;
end;


constructor TfrmVertGridCustomDraw.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FPainter := TcxDemoVerticalGridControlPainter.Create(DBVerticalGrid);
  cbColor.ColorValue := FPainter.DefaultColor;
end;

destructor TfrmVertGridCustomDraw.Destroy;
begin
  FPainter.Free;
  inherited Destroy;
end;

procedure TfrmVertGridCustomDraw.ChangeVisibility(AShow: Boolean);
begin
  inherited;
  DBVerticalGrid.OptionsView.RowHeaderWidth := 200;
end;

procedure TfrmVertGridCustomDraw.DBVerticalGridDrawBackground(
  Sender: TObject; ACanvas: TcxCanvas; const R: TRect;
  const AViewParams: TcxViewParams; var Done: Boolean);
begin
  FillGradientRect(ACanvas.Handle, R, FPainter.BeginBackGroundColor, FPainter.EndBackGroundColor, True);
  Done := True;
end;

procedure TfrmVertGridCustomDraw.DBVerticalGridDrawRowHeader(
  Sender: TObject; ACanvas: TcxCanvas; APainter: TcxvgPainter;
  AHeaderViewInfo: TcxCustomRowHeaderInfo; var Done: Boolean);


  procedure DrawRowHeaderCell(
    ACaptionInfo: TcxRowCaptionInfo; ATransparent: Boolean);
  var
    R: TRect;
  begin
    with ACaptionInfo do
    begin
      cxApplyViewParams(ACanvas, ViewParams);
      FillGradientRect(ACanvas.Handle, CaptionRect, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);
      ACanvas.Brush.Style := bsClear;
      R := CaptionTextRect;
      cxTextOut(ACanvas.Canvas, PcxCaptionChar(Caption), R, TextFlags);
      ACanvas.Brush.Style := bsSolid;
      APainter.DrawImage(ACaptionInfo);
    end;
  end;

  procedure DrawRowIndent(ARowHeader: TcxCustomRowHeaderInfo);
  var
    I: Integer;
  begin
    if ARowHeader.Transparent then Exit;
    with ARowHeader do
    begin
      for I := 0 to CategoryIndents.Count - 1 do
        with CategoryIndents[I]^ do
        begin
          FillGradientRect(ACanvas.Handle, Bounds, FPainter.BeginCellColor, FPainter.EndCellColor, False);
        end;
      for I := 0 to RowIndents.Count - 1 do
        with RowIndents[I]^ do
        begin
          FillGradientRect(ACanvas.Handle, Bounds, FPainter.BeginCellColor, FPainter.EndCellColor, False);
        end;
    end;
    APainter.DrawButton(ARowHeader);
  end;


  procedure DrawRowHeader(ARowHeader: TcxCustomRowHeaderInfo);
  var
    I: Integer;
  begin
    DrawRowIndent(ARowHeader);
    with ARowHeader do
    begin
      for I := 0 to CaptionsInfo.Count - 1 do
        DrawRowHeaderCell(CaptionsInfo[I], Transparent);
      if not cxRectIsEmpty(FocusRect) then
        ACanvas.DrawFocusRect(FocusRect);
    end;
  end;

  procedure DrawCategoryRowIndent(ARowHeader: TcxCustomRowHeaderInfo);
  var
    I: Integer;
  begin
    with ARowHeader do
    begin
      if Transparent then Exit;
      for I := 0 to CategoryIndents.Count - 2 do
        with CategoryIndents[I]^ do
        begin
          FillGradientRect(ACanvas.Handle, Bounds, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);
        end;
      for I := 0 to RowIndents.Count - 1 do
        with RowIndents[I]^ do
        begin
          FillGradientRect(ACanvas.Handle, Bounds, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);
        end;
    end;
  end;


  procedure DrawCategoryRowHeader(ARowHeader: TcxCustomRowHeaderInfo);
  const
    Parts: array[Boolean, 0..1] of Integer = (
    (EBP_NORMALGROUPEXPAND, EBNGE_NORMAL),
    (EBP_NORMALGROUPCOLLAPSE, EBNGC_NORMAL));
  var
    R: TRect;
    ATheme: TdxTheme;
  begin
    if APainter.ViewInfo.UseCategoryExplorerStyle then
      with ARowHeader do
      begin
        DrawCategoryRowIndent(ARowHeader);
        ACanvas.Brush.Style := bsSolid;
        ACanvas.Brush.Color := ViewParams.Color;
        R := HeaderRect;
        with CategoryIndents do
          if Count > 0 then R.Left := CategoryIndents[Count - 1].Bounds.Left;
        with RowIndents do
          if Count > 0 then R.Left := Max(R.Left, RowIndents[Count - 1].Bounds.Left);

        FillGradientRect(ACanvas.Handle, R, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);

        ATheme := OpenTheme(totExplorerBar);
        if ATheme <> 0 then
        begin
          DrawThemeBackground(ATheme, ACanvas.Handle, EBP_NORMALGROUPHEAD, 0, @R);
          if not cxRectIsEmpty(ButtonRect) then
          begin
            R := ButtonRect;
            DrawThemeBackground(ATheme, ACanvas.Handle, Parts[Row.Expanded, 0],
              Parts[Row.Expanded, 1], @R);
          end;
          with CaptionsInfo[0] do
          begin
            ACanvas.Brush.Style := bsClear;
            ACanvas.Font := ViewParams.Font;
            ACanvas.Font.Color := ViewParams.TextColor;
            R := CaptionTextRect;
            cxTextOut(ACanvas.Canvas, PcxCaptionChar(Caption), R, TextFlags);
            ACanvas.Brush.Style := bsSolid;
            APainter.DrawImage(CaptionsInfo[0]);
          end;
          APainter.DrawLines(LinesInfo, cxNullRect);
          if not cxRectIsEmpty(FocusRect) then
            ACanvas.DrawFocusRect(FocusRect);
        end
        else
          DrawRowHeader(ARowHeader);
      end
    else
      DrawRowHeader(ARowHeader);
  end;


begin
  if AHeaderViewInfo is TcxEditorRowHeaderInfo then
  begin
    DrawRowHeader(AHeaderViewInfo);
    Done := True;
  end;
  if AHeaderViewInfo is TcxCategoryRowHeaderInfo then
  begin
    DrawCategoryRowHeader(AHeaderViewInfo);
    Done := True;
  end;
end;

procedure TfrmVertGridCustomDraw.DBVerticalGridDrawValue(Sender: TObject;
  ACanvas: TcxCanvas; APainter: TcxvgPainter; AValueInfo: TcxRowValueInfo;
  var Done: Boolean);
begin
  FillGradientRect(ACanvas.Handle, AValueInfo.VisibleRect, FPainter.BeginCellColor, FPainter.EndCellColor, True);
  AValueInfo.EditViewInfo.TextColor := FPainter.TextColor;
  AValueInfo.EditViewInfo.Transparent := True;
  Done := False;
end;
                                             
procedure TfrmVertGridCustomDraw.PSCustomDrawRowHeaderCell(Sender: TcxCustomVerticalGridReportLink;
  ACanvas: TCanvas; ARow: TcxCustomRow; ACellIndex: Integer; AnItem: TdxReportCellImage; 
  var ADone: Boolean);
begin
  FillGradientRect(ACanvas.Handle, AnItem.BoundsRect, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);
  AnItem.Transparent := True;
end;

procedure TfrmVertGridCustomDraw.PSCustomDrawRowIndentCell(Sender: TcxCustomVerticalGridReportLink;
  ACanvas: TCanvas; ARow: TcxCustomRow; AnIndex: Integer; AnItem: TdxReportCellExpandButton; 
  var ADone: Boolean);
begin
  FillGradientRect(ACanvas.Handle, AnItem.BoundsRect, FPainter.BeginHeaderColor, FPainter.EndHeaderColor, False);
  AnItem.Transparent := True;
end;
  
procedure TfrmVertGridCustomDraw.PSCustomDrawRowValueCell(Sender: TcxCustomVerticalGridReportLink;
  ACanvas: TCanvas; ARow: TcxCustomRow; ACellIndex, ARecordIndex: Integer; 
  AnItem: TAbstractdxReportCellData; var ADone: Boolean);
begin
  FillGradientRect(ACanvas.Handle, AnItem.BoundsRect, FPainter.BeginCellColor, FPainter.EndCellColor, True);
  SetBkMode(ACanvas.Handle, Winapi.Windows.TRANSPARENT);
  AnItem.Transparent := True;
end;
      
procedure TfrmVertGridCustomDraw.cbColorPropertiesEditValueChanged(
  Sender: TObject);
begin
  if FPainter <> nil then
    FPainter.DefaultColor := cbColor.ColorValue;
end;

function TfrmVertGridCustomDraw.GetDescription: string;
begin
  Result := sdxFrameVerticalGridCustomDraw;
end;

procedure TfrmVertGridCustomDraw.PrepareLink(AReportLink: TBasedxReportLink);
begin
  inherited;
  with TcxCustomVerticalGridReportLink(AReportLink) do
  begin
    SupportedCustomDraw := True;
    
    OnCustomDrawRowHeaderCell := PSCustomDrawRowHeaderCell;
    OnCustomDrawRowIndentCell := PSCustomDrawRowIndentCell;
    OnCustomDrawRowValueCell := PSCustomDrawRowValueCell;
  end;  
end;

initialization
  //dxFrameManager.RegisterFrame(VerticalGridCustomDrawFrameID, TfrmVertGridCustomDraw,
  //  VerticalGridCustomDrawName, VerticalGridCustomDrawImageIndex,
  //  -1, OutdatedGroupIndex);

end.
