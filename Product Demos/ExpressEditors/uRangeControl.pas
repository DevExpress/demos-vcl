unit uRangeControl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Generics.Collections, System.Generics.Defaults,
  dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer, cxClasses, dxCore,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxRangeControl, cxCheckBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCheckComboBox, cxTrackBar, cxGroupBox, cxRadioGroup, dxGDIPlusClasses, dxCoreGraphics, dxTypeHelpers,
  dxToggleSwitch, Vcl.ActnList;

type
  TChartData = record
    X: Variant;
    Y: Integer;
  end;

  TChartDataList = class(TList<TChartData>)
  public
    constructor Create;
  end;

  TfrmRangeControl = class(TdxCustomDemoFrame)
    cbAnimation: TcxCheckBox;
    dxLayoutItem1: TdxLayoutItem;
    cbShowRuler: TcxCheckBox;
    dxLayoutItem2: TdxLayoutItem;
    cbShowZoomAndScrollBar: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    rcNumericClient: TdxRangeControl;
    dxLayoutItem6: TdxLayoutItem;
    tbNumericClient: TcxTrackBar;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    dxLayoutItem7: TdxLayoutItem;
    rcDateTimeClient: TdxRangeControl;
    dxLayoutItem9: TdxLayoutItem;
    tbDateTimeClient: TcxTrackBar;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutItem10: TdxLayoutItem;
    rcDateTimeHeaderClient: TdxRangeControl;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem12: TdxLayoutItem;
    cxCheckComboBox1: TcxCheckComboBox;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutGroup3: TdxLayoutGroup;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    tsNumberClientContentType: TdxToggleSwitch;
    dxLayoutItem13: TdxLayoutItem;
    dxLayoutItem5: TdxLayoutItem;
    tsDateTimeClientContentType: TdxToggleSwitch;
    dxLayoutEmptySpaceItem7: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem8: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem9: TdxLayoutEmptySpaceItem;
    cbAutoFormatScaleCaptions: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    acAnimation: TAction;
    acShowRuler: TAction;
    acShowZoomAndScrollBar: TAction;
    procedure tbNumericClientPropertiesChange(Sender: TObject);
    procedure tbDateTimeClientPropertiesChange(Sender: TObject);
    procedure cxCheckComboBox1PropertiesEditValueChanged(Sender: TObject);
    procedure rcNumericClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
      AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);
    procedure rcDateTimeClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
      AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);
    procedure rcDateTimeHeaderClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
      AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);
    procedure tsNumberClientContentTypePropertiesChange(Sender: TObject);
    procedure tsDateTimeClientContentTypePropertiesChange(Sender: TObject);
    procedure cbAutoFormatScaleCaptionsPropertiesChange(Sender: TObject);
    procedure acAnimationExecute(Sender: TObject);
    procedure acShowRulerExecute(Sender: TObject);
    procedure acShowZoomAndScrollBarExecute(Sender: TObject);
  private
    FNumericClientData: TChartDataList;
    FDateTimeClientData2: TChartDataList;
    FDateTimeClientData1: TChartDataList;
    FDateTimeHeaderClientData1: TDictionary<TDateTime, Integer>;
    FDateTimeHeaderClientData2: TDictionary<TDateTime, Integer>;
  protected
    function GetDescription: string; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure AddPolygonPoint(var APolygon: TPoints; X, Y: Integer);
    procedure InitializeChartData;
    function IsDateTimeClientContentLineMode: Boolean;
    function IsNumberClientContentLineMode: Boolean;
  end;

implementation

uses
  uStrsConst, dxFrames, FrameIDs, System.Math, System.DateUtils, cxGeometry, System.Types;

{$R *.dfm}

constructor TfrmRangeControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FNumericClientData := TChartDataList.Create;
  FDateTimeClientData2 := TChartDataList.Create;
  FDateTimeClientData1 := TChartDataList.Create;
  FDateTimeHeaderClientData1 := TDictionary<TDateTime, Integer>.Create;
  FDateTimeHeaderClientData2 := TDictionary<TDateTime, Integer>.Create;
  rcNumericClient.SelectedRangeMinValue := 1;
  rcNumericClient.SelectedRangeMaxValue := 8;
  rcDateTimeClient.ClientProperties.MinValue := Date - 5;
  rcDateTimeClient.ClientProperties.MaxValue := Date + 5;
  rcDateTimeClient.SelectedRangeMinValue := Date - 2;
  rcDateTimeClient.SelectedRangeMaxValue := Date + 3;
  rcDateTimeHeaderClient.ClientProperties.MinValue := Date - 5;
  rcDateTimeHeaderClient.ClientProperties.MaxValue := Date + 5;
  rcDateTimeHeaderClient.SelectedRangeMinValue := Date - 1;
  rcDateTimeHeaderClient.SelectedRangeMaxValue := Date + 2;
  InitializeChartData;
end;

destructor TfrmRangeControl.Destroy;
begin
  FreeAndNil(FDateTimeHeaderClientData2);
  FreeAndNil(FDateTimeHeaderClientData1);
  FreeAndNil(FDateTimeClientData1);
  FreeAndNil(FDateTimeClientData2);
  FreeAndNil(FNumericClientData);
  inherited Destroy;
end;

function TfrmRangeControl.GetDescription: string;
begin
  Result := sdxFrameRangeControlDescription;
end;

procedure TfrmRangeControl.AddPolygonPoint(var APolygon: TPoints; X, Y: Integer);
begin
  SetLength(APolygon, Length(APolygon) + 1);
  APolygon[High(APolygon)].X := X;
  APolygon[High(APolygon)].Y := Y;
end;

procedure TfrmRangeControl.InitializeChartData;
var
  ADateTime: TDateTime;
  AData: TChartData;
  I: Integer;
begin
  Randomize;
  ADateTime := rcDateTimeClient.ClientProperties.MinValue;
  while ADateTime <= rcDateTimeClient.ClientProperties.MaxValue do
  begin
    AData.X := ADateTime;
    AData.Y := RandomRange(2, 50);
    FDateTimeClientData1.Add(AData);
    AData.Y := RandomRange(52, 100);
    FDateTimeClientData2.Add(AData);
    ADateTime := IncHour(ADateTime, 3);
  end;
  for I := rcNumericClient.ClientProperties.MinValue to rcNumericClient.ClientProperties.MaxValue do
  begin
    AData.X := I;
    AData.Y := RandomRange(2, 100);
    FNumericClientData.Add(AData);
  end;
  ADateTime := rcDateTimeHeaderClient.ClientProperties.MinValue;
  while ADateTime <= rcDateTimeHeaderClient.ClientProperties.MaxValue do
  begin
    FDateTimeHeaderClientData1.Add(ADateTime, RandomRange(10, 90));
    FDateTimeHeaderClientData2.Add(ADateTime, RandomRange(10, 90));
    ADateTime := IncDay(ADateTime);
  end;
end;

function TfrmRangeControl.IsDateTimeClientContentLineMode: Boolean;
begin
  Result := not tsDateTimeClientContentType.Checked;
end;

function TfrmRangeControl.IsNumberClientContentLineMode: Boolean;
begin
  Result := not tsNumberClientContentType.Checked;
end;

procedure TfrmRangeControl.acAnimationExecute(Sender: TObject);
begin
  rcNumericClient.Animation := acAnimation.Checked;
  rcDateTimeClient.Animation := acAnimation.Checked;
  rcDateTimeHeaderClient.Animation := acAnimation.Checked;
end;

procedure TfrmRangeControl.acShowRulerExecute(Sender: TObject);
begin
  rcNumericClient.ShowRuler := acShowRuler.Checked;
  rcDateTimeClient.ShowRuler := acShowRuler.Checked;
  rcDateTimeHeaderClient.ShowRuler := acShowRuler.Checked;
end;

procedure TfrmRangeControl.acShowZoomAndScrollBarExecute(Sender: TObject);
begin
  rcNumericClient.ShowZoomScrollBar := acShowZoomAndScrollBar.Checked;
  rcDateTimeClient.ShowZoomScrollBar := acShowZoomAndScrollBar.Checked;
  rcDateTimeHeaderClient.ShowZoomScrollBar := acShowZoomAndScrollBar.Checked;
end;

procedure TfrmRangeControl.tsNumberClientContentTypePropertiesChange(Sender: TObject);
begin
  rcNumericClient.ContentChanged;
end;

procedure TfrmRangeControl.tbNumericClientPropertiesChange(Sender: TObject);
begin
  (rcNumericClient.ClientProperties as TdxRangeControlNumericClientProperties).ScaleInterval := tbNumericClient.Position;
end;

procedure TfrmRangeControl.rcNumericClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
  AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);

  procedure DrawData(ADataSource: TChartDataList; const R: TRect; AColor: TdxAlphaColor);
  var
    AData: TChartData;
    APos, AValue: Integer;
    APolygon: TPoints;
  begin
    dxGPPaintCanvas.BeginPaint(ACanvas.Handle, AViewInfo.Bounds);
    dxGPPaintCanvas.SmoothingMode := smAntiAlias;
    try
      for AData in ADataSource do
        if InRange(AData.X, Sender.VisibleRangeMinValue - 1, Sender.VisibleRangeMaxValue + 1) then
        begin
          APos := Sender.GetPositionFromValue(AData.X);
          AValue := R.Bottom - AData.Y * R.Height div 100;
          if IsNumberClientContentLineMode then
            AddPolygonPoint(APolygon, APos, AValue)
          else
            dxGPPaintCanvas.Line(APos, R.Bottom, APos, AValue, AColor, 3);
        end;
      if IsNumberClientContentLineMode then
        dxGPPaintCanvas.Polyline(APolygon, AColor);
    finally
      dxGPPaintCanvas.EndPaint;
    end;
  end;

var
  R: TRect;
begin
  R := AViewInfo.Content.Bounds;
  DrawData(FNumericClientData, R, $FFEE8C4B);
end;

procedure TfrmRangeControl.rcDateTimeClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
  AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);

  procedure DrawData(ADataSource: TChartDataList; const R: TRect; AColor, ABrushColor: TdxAlphaColor);
  var
    AData: TChartData;
    APos, AValue: Integer;
    APolygon: TPoints;
  begin
    dxGPPaintCanvas.BeginPaint(ACanvas.Handle, AViewInfo.Bounds);
    dxGPPaintCanvas.SmoothingMode := smAntiAlias;
    try
      if not IsDateTimeClientContentLineMode then
        AddPolygonPoint(APolygon, R.Left, R.Bottom);
      for AData in ADataSource do
        if InRange(AData.X, Sender.VisibleRangeMinValue - 1, Sender.VisibleRangeMaxValue + 1) then
        begin
          APos := Sender.GetPositionFromValue(AData.X);
          AValue := R.Bottom - AData.Y * R.Height div 100;
          AddPolygonPoint(APolygon, APos, AValue);
        end;
      if IsDateTimeClientContentLineMode then
        dxGPPaintCanvas.Polyline(APolygon, AColor)
      else
      begin
        AddPolygonPoint(APolygon, R.Right, R.Bottom);
        dxGPPaintCanvas.Polygon(APolygon, AColor, ABrushColor);
      end;
    finally
      dxGPPaintCanvas.EndPaint;
    end;
  end;

var
  R: TRect;
begin
  R := AViewInfo.Content.Bounds;
  DrawData(FDateTimeClientData2, R, $FFEE8C4B, $70EE8C4B);
  DrawData(FDateTimeClientData1, R, $FF6AA4D9, $906AA4D9);
end;

procedure TfrmRangeControl.rcDateTimeHeaderClientDrawContent(Sender: TdxCustomRangeControl; ACanvas: TcxCanvas;
  AViewInfo: TdxRangeControlCustomClientViewInfo; var AHandled: Boolean);
var
  AContentElements: TList<TdxRangeControlDateTimeHeaderClientContentElementViewInfo>;
  AElement: TdxRangeControlDateTimeHeaderClientContentElementViewInfo;
  I: Integer;
  AValue: Integer;
  ARect: TRect;
begin
  AContentElements := (AViewInfo.Content as TdxRangeControlDateTimeHeaderClientContentViewInfo).Elements;
  dxGPPaintCanvas.BeginPaint(ACanvas.Handle, AViewInfo.Bounds);
  dxGPPaintCanvas.SmoothingMode := smAntiAlias;
  try
    for I := 0 to AContentElements.Count - 1 do
    begin
      AElement := AContentElements[I];
      dxGPPaintCanvas.SaveClipRegion;
      try
        dxGPPaintCanvas.SetClipRect(AElement.Bounds, gmIntersect);
        if FDateTimeHeaderClientData1.TryGetValue(AElement.MinDate, AValue) then
        begin
          ARect := AElement.Bounds;
          ARect.Right := cxRectCenter(ARect).X - 2;
          ARect.Left := ARect.Right - 15;
          Inc(ARect.Bottom);
          ARect.Top := ARect.Bottom - AValue * ARect.Height div 100;
          dxGPPaintCanvas.Rectangle(ARect, $FF6AA4D9, $646AA4D9);
        end;
        if FDateTimeHeaderClientData2.TryGetValue(AElement.MinDate, AValue) then
        begin
          ARect := AElement.Bounds;
          ARect.Left := cxRectCenter(ARect).X + 2;
          ARect.Right := ARect.Left + 15;
          Inc(ARect.Bottom);
          ARect.Top := ARect.Bottom - AValue * ARect.Height div 100;
          dxGPPaintCanvas.Rectangle(ARect, $FFEE8C4B, $64EE8C4B);
        end;
      finally
        dxGPPaintCanvas.RestoreClipRegion;
      end;
    end;
  finally
    dxGPPaintCanvas.EndPaint;
  end;
end;

procedure TfrmRangeControl.tsDateTimeClientContentTypePropertiesChange(Sender: TObject);
begin
  rcDateTimeClient.ContentChanged;
end;

procedure TfrmRangeControl.tbDateTimeClientPropertiesChange(Sender: TObject);
begin
  (rcDateTimeClient.ClientProperties as TdxRangeControlDateTimeClientProperties).ScaleInterval := tbDateTimeClient.Position;
end;

procedure TfrmRangeControl.cbAutoFormatScaleCaptionsPropertiesChange(Sender: TObject);
begin
  (rcDateTimeHeaderClient.ClientProperties as TdxRangeControlDateTimeHeaderClientProperties).AutoFormatScaleCaptions := cbAutoFormatScaleCaptions.Checked;
end;

procedure TfrmRangeControl.cxCheckComboBox1PropertiesEditValueChanged(Sender: TObject);
var
  AProperties: TdxRangeControlDateTimeHeaderClientProperties;
  AScales: TdxRangeControlDateTimeScales;
  I: Integer;
begin
  AProperties := (rcDateTimeHeaderClient.ClientProperties as TdxRangeControlDateTimeHeaderClientProperties);
  AScales := AProperties.Scales;
  for I := 0 to cxCheckComboBox1.Properties.Items.Count - 1 do
    AScales.GetScale(TdxRangeControlDateTimeScaleUnit(I + Ord(rcduDay))).Visible := cxCheckComboBox1.States[I] = cbsChecked;
end;

{ TChartDataList }

constructor TChartDataList.Create;
begin
  inherited Create{$IFDEF DELPHI12}(IComparer<TChartData>(TdxComparer<TChartData>.Default)){$ENDIF};
end;

initialization
  dxFrameManager.RegisterFrame(RangeControlFrameID, TfrmRangeControl, RangeControlFrameName, -1,
    RangeControlGroupIndex, -1, -1);

end.
