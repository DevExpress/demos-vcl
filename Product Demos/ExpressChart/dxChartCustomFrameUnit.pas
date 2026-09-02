unit dxChartCustomFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,System.Classes, Vcl.Graphics,Vcl.Controls,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Menus, Vcl.ExtCtrls, System.RTLConsts,
  dxCore, dxCustomDemoFrameUnit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutContainer,
  dxLayoutControlAdapters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, cxClasses,
  dxLayoutLookAndFeels, cxSpinEdit, dxCoreClasses, dxLayoutControl, dxChartControl, dxChartStrs,
  dxChartDesigner, dxLayoutcxEditAdapters, cxGeometry, cxVariants, dxCustomData, cxCustomCanvas, dxCoreGraphics,
  dxChartCore, dxChartData, dxChartLegend, dxChartSimpleDiagram, dxChartXYDiagram, dxChartXYSeriesLineView,
  dxChartXYSeriesAreaView, dxChartMarkers, dxChartXYSeriesBarView, dxChartDBData, dxChartPalette;

const
  WM_RenderModeChanged = WM_APP + 1;

type
  TdxChartCustomFrame = class(TdxCustomDemoFrame)
    cmbAxisXLabelsPosition: TcxComboBox;
    lgOptions: TdxLayoutGroup;
    lfController: TcxLookAndFeelController;
    llfTabbedGroup: TdxLayoutCxLookAndFeel;
    cmbMarkerKind: TcxComboBox;
    cmbAxisXAlignment: TcxComboBox;
    seHoleRadius: TcxSpinEdit;
    cmbLegendAlignmentHorz: TcxComboBox;
    cmbLegendAlignmentVert: TcxComboBox;
    cmbLegendDirection: TcxComboBox;
    seLegendItemIndentHorz: TcxSpinEdit;
    seLegendItemIndentVert: TcxSpinEdit;
    seBarDistance: TcxSpinEdit;
    seTopNCount: TcxSpinEdit;
    cmbExplodedValue: TcxComboBox;
    cmbAxisYAlignment: TcxComboBox;
    cmbAxisYLabelsPosition: TcxComboBox;
    cmbLabelPosition: TcxComboBox;
    lgRenderMode: TdxLayoutGroup;
    liGDI: TdxLayoutRadioButtonItem;
    liGDIPlus: TdxLayoutRadioButtonItem;
    liDirectX: TdxLayoutRadioButtonItem;
    lgMarkers: TdxLayoutGroup;
    liMarkerVisible: TdxLayoutCheckBoxItem;
    liMarkerKind: TdxLayoutItem;
    liAxisXMinorGridlines: TdxLayoutCheckBoxItem;
    liAxisXInterlaced: TdxLayoutCheckBoxItem;
    lgAxes: TdxLayoutGroup;
    liAxisXVisible: TdxLayoutCheckBoxItem;
    liAxisXLabelsPosition: TdxLayoutItem;
    liAxisXAlignment: TdxLayoutItem;
    liRotated: TdxLayoutCheckBoxItem;
    liValueLabels: TdxLayoutCheckBoxItem;
    liAxisXReverse: TdxLayoutCheckBoxItem;
    liHoleRadius: TdxLayoutItem;
    lgLegend: TdxLayoutGroup;
    liLegendVisible: TdxLayoutCheckBoxItem;
    liLegendAlignmentHorz: TdxLayoutItem;
    liLegendAlignmentVert: TdxLayoutItem;
    liLegendDirection: TdxLayoutItem;
    dxLayoutItem3: TdxLayoutItem;
    liLegendShowCheckBoxes: TdxLayoutCheckBoxItem;
    liLegendShowCaptions: TdxLayoutCheckBoxItem;
    liLegendShowImages: TdxLayoutCheckBoxItem;
    dxLayoutItem4: TdxLayoutItem;
    liDiagramBorder: TdxLayoutCheckBoxItem;
    liBarDistance: TdxLayoutItem;
    lgTopN: TdxLayoutGroup;
    liTopNEnabled: TdxLayoutCheckBoxItem;
    liTopNCount: TdxLayoutItem;
    liTopNShowOthers: TdxLayoutCheckBoxItem;
    liExplodedValue: TdxLayoutItem;
    lgXAxis: TdxLayoutGroup;
    lgYAxis: TdxLayoutGroup;
    liAxisYVisible: TdxLayoutCheckBoxItem;
    liAxisXGridlines: TdxLayoutCheckBoxItem;
    liAxisYReverse: TdxLayoutCheckBoxItem;
    liAxisYAlignment: TdxLayoutItem;
    liAxisYLabelsPosition: TdxLayoutItem;
    liAxisYInterlaced: TdxLayoutCheckBoxItem;
    liAxisYGridlines: TdxLayoutCheckBoxItem;
    liAxisYMinorGridlines: TdxLayoutCheckBoxItem;
    liLabelPosition: TdxLayoutItem;
    lgGeneral: TdxLayoutGroup;
    ccDemoChart: TdxChartControl;
    lgValueLabelsResolveOverlapping: TdxLayoutGroup;
    liValueLabelsResolveOverlappingIndent: TdxLayoutItem;
    liValueLabelsResolveOverlappingMode: TdxLayoutItem;
    seValueLabelsResolveOverlappingIndent: TcxSpinEdit;
    cmbValueLabelsResolveOverlappingMode: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    lgToolTips: TdxLayoutGroup;
    cmbToolTipsMode: TcxComboBox;
    liToolTipsMode: TdxLayoutItem;
    liCrosshairArgumentLines: TdxLayoutCheckBoxItem;
    liCrosshairValueLines: TdxLayoutCheckBoxItem;
    liCrosshairArgumentLabels: TdxLayoutCheckBoxItem;
    liCrosshairValueLabels: TdxLayoutCheckBoxItem;
    cmbCrosshairSnapToPoint: TcxComboBox;
    liCrosshairSnapToPoint: TdxLayoutItem;
    liCrosshairSnapToMultipleSeries: TdxLayoutCheckBoxItem;
    liCrosshairHighlightPoints: TdxLayoutCheckBoxItem;
    cmbCrosshairStickyLines: TcxComboBox;
    liCrosshairStickyLines: TdxLayoutItem;
    lsCrosshairLines: TdxLayoutSeparatorItem;
    lsCrosshairLabels: TdxLayoutSeparatorItem;
    lsCrosshairSnapOptions: TdxLayoutSeparatorItem;
    procedure liGDIClick(Sender: TObject);
    procedure liMarkerVisibleClick(Sender: TObject);
    procedure cmbMarkerKindPropertiesChange(Sender: TObject);
    procedure liRotatedClick(Sender: TObject);
    procedure liAxisXInterlacedClick(Sender: TObject);
    procedure liAxisXMinorGridlinesClick(Sender: TObject);
    procedure liValueLabelsClick(Sender: TObject);
    procedure cmbAxisAlignmentPropertiesChange(Sender: TObject);
    procedure liAxisXReverseClick(Sender: TObject);
    procedure liDiagramBorderClick(Sender: TObject);
    procedure liTopNEnabledClick(Sender: TObject);
    procedure seBarDistancePropertiesEditValueChanged(Sender: TObject);
    procedure seHoleRadiusPropertiesEditValueChanged(Sender: TObject);
    procedure cmbLegendAlignmentHorzPropertiesChange(Sender: TObject);
    procedure cmbExplodedValuePropertiesChange(Sender: TObject);
    procedure cmbAxisXLabelsPositionPropertiesChange(Sender: TObject);
    procedure liAxisXGridlinesClick(Sender: TObject);
    procedure liAxisYReverseClick(Sender: TObject);
    procedure liAxisYVisibleClick(Sender: TObject);
    procedure liAxisXVisibleClick(Sender: TObject);
    procedure cmbAxisYAlignmentPropertiesChange(Sender: TObject);
    procedure cmbAxisYLabelsPositionPropertiesChange(Sender: TObject);
    procedure liAxisYInterlacedClick(Sender: TObject);
    procedure liAxisYGridlinesClick(Sender: TObject);
    procedure liAxisYMinorGridlinesClick(Sender: TObject);
    procedure cmbValueLabelsResolveOverlappingModePropertiesChange(Sender: TObject);
    procedure seValueLabelsResolveOverlappingIndentPropertiesEditValueChanged(Sender: TObject);
    procedure cmbToolTipsModePropertiesChange(Sender: TObject);
    procedure liCrosshairArgumentLabelsClick(Sender: TObject);
    procedure liCrosshairArgumentLinesClick(Sender: TObject);
    procedure liCrosshairValueLabelsClick(Sender: TObject);
    procedure liCrosshairValueLinesClick(Sender: TObject);
    procedure cmbCrosshairSnapToPointPropertiesChange(Sender: TObject);
    procedure liCrosshairHighlightPointsClick(Sender: TObject);
    procedure liCrosshairSnapToMultipleSeriesClick(Sender: TObject);
    procedure cmbCrosshairStickyLinesPropertiesChange(Sender: TObject);
    procedure cmbLabelPositionPropertiesChange(Sender: TObject);
  strict private
    FUpdateLocked: Integer;

    procedure ApplyLegendOptions;
    procedure ApplyTopNOptions;
    procedure ApplyValueLabelsResolveOverlappingOptions;
    function GetActiveDiagram: TdxChartCustomDiagram;
    function GetActiveLegend: TdxChartCustomLegend;
    function GetActiveSeries: TdxChartCustomSeries;
    function GetActiveView: TdxChartSeriesCustomView;
    procedure SecondaryAxisYVisibleClick(Sender: TObject);
    procedure SecondaryAxisYReverseClick(Sender: TObject);
    procedure SecondaryAxisYInterlacedClick(Sender: TObject);
    procedure SecondaryAxisYGridlinesClick(Sender: TObject);
    procedure SecondaryAxisYMinorGridlinesClick(Sender: TObject);
    procedure SecondaryAxisYAlignmentPropertiesChange(Sender: TObject);
    procedure SecondaryAxisYLabelsPositionPropertiesChange(Sender: TObject);
  protected
    procedure LocalizeItems(AItems: TStrings; AResourceStrings: TArray<TcxResourceStringID>);
    procedure PopulateValueLabelsPosition;
    procedure PopulateValueLabelsResolveOverlappingMode;
    procedure UpdateOptions; virtual;
    function GetMarkerKind: TdxChartXYMarkerKind;
    function GetMarkerVisibility: TcxCheckBoxState;
    function GetValueLabelVisibility: TcxCheckBoxState;
    procedure BeginUpdate;
    procedure EndUpdate;
    function IsUpdating: Boolean;
    function IsValueLabelsControlVisible: Boolean; virtual;
    function GetActiveChartControl: TdxChartControl; virtual;
    function GetPrintableComponent: TComponent; override;
  public
    { Public declarations }
    procedure AfterShow; override;
    function IsDesignerAvailable: Boolean; virtual;
    procedure PaletteChanged; reintroduce; virtual;
    procedure ShowDesigner;

    property ActiveChartControl: TdxChartControl read GetActiveChartControl;
    property ActiveDiagram: TdxChartCustomDiagram read GetActiveDiagram;
    property ActiveLegend: TdxChartCustomLegend read GetActiveLegend;
    property ActiveSeries: TdxChartCustomSeries read GetActiveSeries;
    property ActiveView: TdxChartSeriesCustomView read GetActiveView;
  end;

implementation

{$R *.dfm}

uses
  System.Math;

type
  TdxChartSeriesValueLabelsAccess = class(TdxChartSeriesValueLabels);

{ TdxChartCustomFrame }

procedure TdxChartCustomFrame.BeginUpdate;
begin
  Inc(FUpdateLocked);
end;

procedure TdxChartCustomFrame.EndUpdate;
begin
  Dec(FUpdateLocked);
end;

procedure TdxChartCustomFrame.PaletteChanged;
begin

end;

procedure TdxChartCustomFrame.PopulateValueLabelsPosition;
var
  AItems: TStrings;
begin
  AItems := cmbLabelPosition.Properties.Items;
  AItems.Clear;
  if ActiveView is TdxChartSimpleSeriesPieView then
    LocalizeItems(AItems,
      TArray<TcxResourceStringID>.Create(
        @sdxChartDesignerPieValueLabelsPositionInside,
        @sdxChartDesignerPieValueLabelsPositionOutside,
        @sdxChartDesignerPieValueLabelsPositionTwoColumns,
        @sdxChartDesignerPieValueLabelsPositionRadial,
        @sdxChartDesignerPieValueLabelsPositionTangent))
  else
    if ActiveView is TdxChartXYSeriesBarView then
      LocalizeItems(AItems,
        TArray<TcxResourceStringID>.Create(
          @sdxChartDesignerBarValueLabelsPositionCenter,
          @sdxChartDesignerBarValueLabelsPositionTopInside,
          @sdxChartDesignerBarValueLabelsPositionBottomInside,
          @sdxChartDesignerBarValueLabelsPositionTop))
    else
      if ActiveView is TdxChartXYSeriesStackedBarView then
        LocalizeItems(AItems,
          TArray<TcxResourceStringID>.Create(
            @sdxChartDesignerBarValueLabelsPositionCenter,
            @sdxChartDesignerBarValueLabelsPositionTopInside,
            @sdxChartDesignerBarValueLabelsPositionBottomInside))
end;

procedure TdxChartCustomFrame.PopulateValueLabelsResolveOverlappingMode;
var
  AItems: TStrings;
begin
  AItems := cmbValueLabelsResolveOverlappingMode.Properties.Items;
  AItems.Clear;
  if ActiveView is TdxChartXYSeriesLineView then
    LocalizeItems(AItems,
      TArray<TcxResourceStringID>.Create(
        @sdxChartDesignerValueLabelsResolveOverlappingNone,
        @sdxChartDesignerValueLabelsResolveOverlappingDefault,
        @sdxChartDesignerValueLabelsResolveOverlappingHideOverlapped,
        @sdxChartDesignerValueLabelsResolveOverlappingJustifyAroundPoint,
        @sdxChartDesignerValueLabelsResolveOverlappingJustifyAllAroundPoint))
  else
    if ActiveView is TdxChartXYSeriesCustomBarView then
      LocalizeItems(AItems,
        TArray<TcxResourceStringID>.Create(
          @sdxChartDesignerValueLabelsResolveOverlappingNone,
          @sdxChartDesignerValueLabelsResolveOverlappingDefault,
          @sdxChartDesignerValueLabelsResolveOverlappingHideOverlapped))
    else
      if ActiveView is TdxChartSimpleSeriesCustomView then
        LocalizeItems(AItems,
          TArray<TcxResourceStringID>.Create(
            @sdxChartDesignerValueLabelsResolveOverlappingNone,
            @sdxChartDesignerValueLabelsResolveOverlappingDefault));
end;

function TdxChartCustomFrame.IsDesignerAvailable: Boolean;
begin
  Result := True;
end;

function TdxChartCustomFrame.IsUpdating: Boolean;
begin
  Result := FUpdateLocked > 0;
end;

function TdxChartCustomFrame.IsValueLabelsControlVisible: Boolean;
begin
  Result := True;
end;

function TdxChartCustomFrame.GetMarkerKind: TdxChartXYMarkerKind;
begin
  Result := TdxChartXYMarkerKind.Circle;
  if ActiveView is TdxChartXYSeriesLineView then
    Result := TdxChartXYSeriesLineView(ActiveView).Markers.Kind;
end;

function TdxChartCustomFrame.GetMarkerVisibility: TcxCheckBoxState;
var
  I: Integer;
  AVisibleMarkers: Boolean;
begin
  Result := cbsGrayed;
  if ActiveDiagram <> nil then
  begin
    for I := 0 to ActiveDiagram.SeriesCount - 1 do
    begin
      if not (ActiveDiagram.Series[I].View is TdxChartXYSeriesLineView) then
        Continue;
      AVisibleMarkers := TdxChartXYSeriesLineView(ActiveDiagram.Series[I].View).Markers.Visible;
      if Result = cbsGrayed then
      begin
        if AVisibleMarkers then
          Result := cbsChecked
        else
          Result := cbsUnchecked;
      end
      else if (Result = cbsChecked) and not AVisibleMarkers then
        Exit(cbsGrayed)
      else if (Result = cbsUnchecked) and AVisibleMarkers then
        Exit(cbsGrayed);
    end;
  end;
end;

function TdxChartCustomFrame.GetPrintableComponent: TComponent;
begin
  Result := ActiveChartControl;
end;

function TdxChartCustomFrame.GetValueLabelVisibility: TcxCheckBoxState;
var
  I: Integer;
begin
  Result := cbsGrayed;
  if ActiveDiagram <> nil then
  begin
    if ActiveDiagram.Series[0].View.ValueLabels.Visible then
    begin
      Result := cbsChecked;
      for I := 1 to ActiveDiagram.SeriesCount - 1 do
        if not ActiveDiagram.Series[I].View.ValueLabels.Visible then
          Exit(cbsGrayed);
    end
    else
    begin
      Result := cbsUnchecked;
      for I := 1 to ActiveDiagram.SeriesCount - 1 do
        if ActiveDiagram.Series[I].View.ValueLabels.Visible then
          Exit(cbsGrayed);
    end;
  end;
end;

procedure TdxChartCustomFrame.liGDIClick(Sender: TObject);
begin
  if liGDI.Checked then
    lfController.RenderMode := rmGDI
  else
  if liGDIPlus.Checked then
    lfController.RenderMode := rmGDIPlus
  else
    lfController.RenderMode := rmDirectX;
  PostMessage(Handle, WM_RenderModeChanged, Integer(lfController.RenderMode), 0);
end;

procedure TdxChartCustomFrame.ApplyLegendOptions;
begin
  if IsUpdating then
    Exit;
  ActiveLegend.AlignmentHorz := TdxChartLegendAlignment(cmbLegendAlignmentHorz.ItemIndex);
  ActiveLegend.AlignmentVert := TdxChartLegendAlignment(cmbLegendAlignmentVert.ItemIndex);
  ActiveLegend.Direction := TdxChartLegendDirection(cmbLegendDirection.ItemIndex);
  ActiveLegend.Appearance.ItemIndent.Height := seLegendItemIndentVert.Value;
  ActiveLegend.Appearance.ItemIndent.Width := seLegendItemIndentHorz.Value;
  ActiveLegend.ShowCheckBoxes := liLegendShowCheckBoxes.Checked;
  ActiveLegend.ShowCaptions := liLegendShowCaptions.Checked;
  ActiveLegend.ShowImages := liLegendShowImages.Checked;
  ActiveLegend.Visible := liLegendVisible.Checked;
end;

procedure TdxChartCustomFrame.ApplyTopNOptions;
var
  ATopNOptions: TdxChartSeriesTopNOptions;
begin
  if IsUpdating or not (ActiveSeries is TdxChartSimpleSeries) then
    Exit;
  ATopNOptions := TdxChartSimpleSeries(ActiveSeries).TopNOptions;
  ATopNOptions.Enabled := liTopNEnabled.Checked;
  ATopNOptions.ShowOthers := liTopNShowOthers.Checked;
  ATopNOptions.Value := seTopNCount.Value
end;

procedure TdxChartCustomFrame.ApplyValueLabelsResolveOverlappingOptions;
var
  I, AIndex: Integer;
  AView: TdxChartSeriesCustomView;
begin
  if IsUpdating or (ActiveSeries = nil) then
    Exit;
  ActiveChartControl.BeginUpdate;
  try
    TdxChartCustomSeries(ActiveSeries).View.ValueLabels.ResolveOverlappingIndent := seValueLabelsResolveOverlappingIndent.Value;
    for I := 0 to ActiveDiagram.SeriesCount - 1 do
    begin
      AIndex := cmbValueLabelsResolveOverlappingMode.ItemIndex;
      AView := ActiveDiagram.Series[I].View;
      if (AView is TdxChartXYSeriesCustomBarView) and
        not (AIndex in [Integer(Low(TdxChartSeriesBarValueLabelsResolveOverlappingMode))..
                        Integer(High(TdxChartSeriesBarValueLabelsResolveOverlappingMode))]) then
        AIndex := Ord(TdxChartSeriesValueLabelsResolveOverlappingMode.Default);
      TdxChartSeriesValueLabelsAccess(AView.ValueLabels).SetResolveOverlappingModeByOrdinal(AIndex);
    end;
  finally
    ActiveChartControl.EndUpdate;
  end;
end;

procedure TdxChartCustomFrame.UpdateOptions;

  procedure AddAxisOptions(AName: string; AAxis: TdxChartSecondaryAxisY);
  var
    AGroup: TdxLayoutGroup;
    ALayoutItem: TdxLayoutItem;
    ACheckBox: TdxLayoutCheckBoxItem;
    AAlignmentComboBox: TcxComboBox;
    ALabelPositionComboBox: TcxComboBox;

  begin
    AGroup := lgAxes.CreateGroup;
    AGroup.CaptionOptions.Text := AName;

    ACheckBox := TdxLayoutCheckBoxItem(AGroup.CreateItem(TdxLayoutCheckBoxItem));
    ACheckBox.CaptionOptions.Text := liAxisYVisible.CaptionOptions.Text;
    ACheckBox.Checked := AAxis.Visible;
    ACheckBox.Tag := NativeInt(AAxis);
    ACheckBox.OnClick := SecondaryAxisYVisibleClick;

    AAlignmentComboBox := TcxComboBox.Create(AGroup);
    AAlignmentComboBox.Properties.Assign(cmbAxisYAlignment.Properties);
    AAlignmentComboBox.Properties.Items.Clear;
    AAlignmentComboBox.Properties.Items.Add('Near');
    AAlignmentComboBox.Properties.Items.Add('Far');
    AAlignmentComboBox.Style.HotTrack := False;
    AAlignmentComboBox.Style.TransparentBorder := False;
    ALayoutItem := AGroup.CreateItemForControl(AAlignmentComboBox);
    ALayoutItem.CaptionOptions.Text := liAxisYAlignment.CaptionOptions.Text;
    AAlignmentComboBox.Tag := NativeInt(AAxis);
    AAlignmentComboBox.ItemIndex := IfThen(AAxis.Alignment = TdxChartSecondaryAxisAlignment.Near, 0, 1);
    AAlignmentComboBox.Properties.OnChange := SecondaryAxisYAlignmentPropertiesChange;

    ALabelPositionComboBox := TcxComboBox.Create(AGroup);
    ALabelPositionComboBox.Properties.Assign(cmbAxisYLabelsPosition.Properties);
    ALabelPositionComboBox.Style.HotTrack := False;
    ALabelPositionComboBox.Style.TransparentBorder := False;
    ALayoutItem := AGroup.CreateItemForControl(ALabelPositionComboBox);
    ALayoutItem.CaptionOptions.Text := liAxisYLabelsPosition.CaptionOptions.Text;
    ALabelPositionComboBox.Tag := NativeInt(AAxis);
    ALabelPositionComboBox.ItemIndex := Integer(AAxis.ValueLabels.Position);
    ALabelPositionComboBox.Properties.OnChange := SecondaryAxisYLabelsPositionPropertiesChange;

    ACheckBox := TdxLayoutCheckBoxItem(AGroup.CreateItem(TdxLayoutCheckBoxItem));
    ACheckBox.CaptionOptions.Text := liAxisYReverse.CaptionOptions.Text;
    ACheckBox.Checked := AAxis.Reverse;
    ACheckBox.Tag := NativeInt(AAxis);
    ACheckBox.OnClick := SecondaryAxisYReverseClick;

    ACheckBox := TdxLayoutCheckBoxItem(AGroup.CreateItem(TdxLayoutCheckBoxItem));
    ACheckBox.CaptionOptions.Text := liAxisYInterlaced.CaptionOptions.Text;
    ACheckBox.Checked := AAxis.Interlaced;
    ACheckBox.Tag := NativeInt(AAxis);
    ACheckBox.OnClick := SecondaryAxisYInterlacedClick;

    ACheckBox := TdxLayoutCheckBoxItem(AGroup.CreateItem(TdxLayoutCheckBoxItem));
    ACheckBox.CaptionOptions.Text := liAxisYGridlines.CaptionOptions.Text;
    ACheckBox.Checked := AAxis.Gridlines.Visible;
    ACheckBox.Tag := NativeInt(AAxis);
    ACheckBox.OnClick := SecondaryAxisYGridlinesClick;

    ACheckBox := TdxLayoutCheckBoxItem(AGroup.CreateItem(TdxLayoutCheckBoxItem));
    ACheckBox.CaptionOptions.Text := liAxisYMinorGridlines.CaptionOptions.Text;
    ACheckBox.Checked := AAxis.Gridlines.MinorVisible;
    ACheckBox.Tag := NativeInt(AAxis);
    ACheckBox.OnClick := SecondaryAxisYMinorGridlinesClick;
  end;

  procedure RecreateSecondaryAxesTabs;
  var
    I: Integer;
    AAxisYItem: TdxChartSecondaryAxisYCollectionItem;
  begin
    if not (ActiveDiagram is TdxChartXYDiagram) then
      Exit;
    for I := lgAxes.Count - 1 downto 2 do
      lgAxes.Items[I].Free;
    for I := 0 to TdxChartXYDiagram(ActiveDiagram).SecondaryAxes.AxesY.Count - 1 do
    begin
      AAxisYItem := TdxChartXYDiagram(ActiveDiagram).SecondaryAxes.AxesY.Items[I];
      AddAxisOptions(Format('%s (Y)', [AAxisYItem.Name]), AAxisYItem.Axis);
    end;
  end;

  procedure CheckVisibility;
  var
    ACrosshairMode: Boolean;
  begin
    lgGeneral.Visible := ActiveChartControl.DiagramCount = 1;
    lgAxes.Visible := lgGeneral.Visible and (ActiveDiagram is TdxChartXYDiagram);
    lgMarkers.Visible := lgAxes.Visible and (ActiveSeries.View is TdxChartXYSeriesLineView);
    lgLegend.Visible := lgGeneral.Visible;
    lgTopN.Visible := lgGeneral.Visible and (ActiveDiagram is TdxChartSimpleDiagram);
    lgValueLabelsResolveOverlapping.Visible := lgGeneral.Visible and ActiveView.ValueLabels.Visible;
    lgToolTips.Visible := (ActiveChartControl.DiagramCount = 1) and (ActiveDiagram is TdxChartXYDiagram);

    ACrosshairMode := (ActiveDiagram is TdxChartXYDiagram) and ((ActiveDiagram as TdxChartXYDiagram).ToolTips.Mode = TdxChartToolTipMode.Crosshair);
    liCrosshairArgumentLines.Visible := ACrosshairMode;
    liCrosshairValueLines.Visible := ACrosshairMode;
    liCrosshairArgumentLabels.Visible := ACrosshairMode;
    liCrosshairValueLabels.Visible := ACrosshairMode;
    liCrosshairSnapToPoint.Visible := ACrosshairMode;
    liCrosshairSnapToMultipleSeries.Visible := ACrosshairMode;
    liCrosshairHighlightPoints.Visible := ACrosshairMode;
    liCrosshairStickyLines.Visible := ACrosshairMode;
    lsCrosshairLines.Visible := ACrosshairMode;
    lsCrosshairLabels.Visible := ACrosshairMode;
    lsCrosshairSnapOptions.Visible := ACrosshairMode;

    if lgGeneral.Visible then
    begin
      liRotated.Visible := ActiveDiagram is TdxChartXYDiagram;
      liValueLabels.Visible := IsValueLabelsControlVisible;
      liLabelPosition.Visible := (ActiveView is TdxChartSimpleSeriesPieView) or (ActiveView is TdxChartXYSeriesCustomBarView);
      liHoleRadius.Visible := ActiveView is TdxChartSimpleSeriesDoughnutView;
      liBarDistance.Visible := ActiveView is TdxChartXYSeriesCustomBarView;
      liExplodedValue.Visible := ActiveSeries is TdxChartSimpleSeries;
    end;
  end;

  procedure UpdateValues;
  begin
    if lgGeneral.Visible then
    begin
      liDiagramBorder.Checked := dxDefaultBooleanToBoolean(ActiveDiagram.Appearance.Border, True);
      if liRotated.Visible then
        liRotated.Checked := TdxChartXYDiagram(ActiveDiagram).Rotated;
      liValueLabels.State := GetValueLabelVisibility;
      if liLabelPosition.Visible then
      begin
        PopulateValueLabelsPosition;
        cmbLabelPosition.ItemIndex := TdxChartSeriesValueLabelsAccess(ActiveView.ValueLabels).GetPositionOrdinal;
      end;
      if liHoleRadius.Visible then
        seHoleRadius.Value := TdxChartSimpleSeriesDoughnutView(ActiveView).HoleRadius;
      if liBarDistance.Visible then
        seBarDistance.Value := TdxChartXYSeriesCustomBarView(ActiveView).BarDistance;
      if liExplodedValue.Visible then
        cmbExplodedValue.ItemIndex := Integer(TdxChartSimpleSeriesPieView(ActiveView).ExplodedValueOptions.Mode);
    end;

    if lgAxes.Visible then
    begin
      liAxisXVisible.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Visible;
      cmbAxisXAlignment.ItemIndex := Integer(TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Alignment);
      cmbAxisXLabelsPosition.ItemIndex := Integer(TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.ValueLabels.Position);
      liAxisXInterlaced.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Interlaced;
      liAxisXGridlines.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Gridlines.Visible;
      liAxisXMinorGridlines.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Gridlines.MinorVisible;
      liAxisYVisible.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Visible;
      cmbAxisYAlignment.ItemIndex := Integer(TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Alignment);
      cmbAxisYLabelsPosition.ItemIndex := Integer(TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.ValueLabels.Position);
      liAxisYInterlaced.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Interlaced;
      liAxisYGridlines.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Gridlines.Visible;
      liAxisYMinorGridlines.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Gridlines.MinorVisible;
      liAxisXReverse.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Reverse;
      liAxisYReverse.Checked := TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Reverse;
    end;
    if lgMarkers.Visible then
    begin
      liMarkerVisible.State := GetMarkerVisibility;
      cmbMarkerKind.ItemIndex := Integer(GetMarkerKind);
    end;
    if lgTopN.Visible then
    begin
      liTopNEnabled.Checked := TdxChartSimpleSeries(ActiveSeries).TopNOptions.Enabled;
      liTopNShowOthers.Checked := TdxChartSimpleSeries(ActiveSeries).TopNOptions.ShowOthers;
      seTopNCount.Value := TdxChartSimpleSeries(ActiveSeries).TopNOptions.Value;
    end;
    if lgValueLabelsResolveOverlapping.Visible then
    begin
      seValueLabelsResolveOverlappingIndent.Value := TdxChartCustomSeries(ActiveSeries).View.ValueLabels.ResolveOverlappingIndent;
      PopulateValueLabelsResolveOverlappingMode;
      cmbValueLabelsResolveOverlappingMode.ItemIndex := TdxChartSeriesValueLabelsAccess(ActiveSeries.View.ValueLabels).GetResolveOverlappingModeOrdinal;
    end;
    if lgLegend.Visible then
    begin
      cmbLegendAlignmentHorz.ItemIndex := Integer(ActiveLegend.AlignmentHorz);
      cmbLegendAlignmentVert.ItemIndex := Integer(ActiveLegend.AlignmentVert);
      cmbLegendDirection.ItemIndex := Integer(ActiveLegend.Direction);
      seLegendItemIndentVert.Value := ActiveLegend.Appearance.ItemIndent.Height;
      seLegendItemIndentHorz.Value := ActiveLegend.Appearance.ItemIndent.Width;
      liLegendShowCheckBoxes.Checked := ActiveLegend.ShowCheckBoxes;
      liLegendShowCaptions.Checked := ActiveLegend.ShowCaptions;
      liLegendShowImages.Checked := ActiveLegend.ShowImages;
      liLegendVisible.Checked := ActiveLegend.Visible;
    end;
    if lgToolTips.Visible then
    begin
      if TdxChartXYDiagram(ActiveDiagram).ToolTips.Mode = TdxChartToolTipMode.Default then
        cmbToolTipsMode.ItemIndex := Integer(ActiveChartControl.ToolTips.DefaultMode) - 1
      else
        cmbToolTipsMode.ItemIndex := Integer(TdxChartXYDiagram(ActiveDiagram).ToolTips.Mode) - 1;
      liCrosshairArgumentLines.Checked := ActiveChartControl.ToolTips.CrosshairOptions.ArgumentLines.Visible;
      liCrosshairValueLines.Checked := ActiveChartControl.ToolTips.CrosshairOptions.ValueLines.Visible;
      liCrosshairArgumentLabels.Checked := ActiveChartControl.ToolTips.CrosshairOptions.ShowArgumentLabels;
      liCrosshairValueLabels.Checked := ActiveChartControl.ToolTips.CrosshairOptions.ShowValueLabels;
      cmbCrosshairSnapToPoint.ItemIndex := Integer(ActiveChartControl.ToolTips.CrosshairOptions.SnapToPointMode);
      liCrosshairSnapToMultipleSeries.Checked := ActiveChartControl.ToolTips.CrosshairOptions.SnapToSeriesMode = TdxChartCrosshairSnapToSeriesMode.All;
      liCrosshairHighlightPoints.Checked := ActiveChartControl.ToolTips.CrosshairOptions.HighlightPoints;
    end;
  end;

begin
  BeginUpdate;
  lcFrame.BeginUpdate;
  try
    RecreateSecondaryAxesTabs;
    CheckVisibility;
    UpdateValues;
  finally
    lcFrame.EndUpdate(False);
    EndUpdate;
  end;
end;

procedure TdxChartCustomFrame.AfterShow;
begin
  inherited;
  dxCustomMarginsLayoutLookAndFeel.UseSkinOffsets := bFalse;
  UpdateOptions;
end;

function TdxChartCustomFrame.GetActiveChartControl: TdxChartControl;
begin
  Result := ccDemoChart;
end;

function TdxChartCustomFrame.GetActiveDiagram: TdxChartCustomDiagram;
begin
  Result := nil;
  if ActiveChartControl.DiagramCount > 0 then
    Result := ActiveChartControl.Diagrams[0];
end;

function TdxChartCustomFrame.GetActiveLegend: TdxChartCustomLegend;
begin
  Result := ActiveDiagram.Legend;
end;

function TdxChartCustomFrame.GetActiveSeries: TdxChartCustomSeries;
begin
  Result := nil;
  if (ActiveDiagram <> nil) and (ActiveDiagram.SeriesCount > 0) then
    Result := ActiveDiagram.Series[0];
end;

function TdxChartCustomFrame.GetActiveView: TdxChartSeriesCustomView;
begin
  Result := nil;
  if ActiveSeries <> nil then
    Result := ActiveSeries.View;
end;

procedure TdxChartCustomFrame.liDiagramBorderClick(Sender: TObject);
begin
  ActiveDiagram.Appearance.Border := dxBooleanToDefaultBoolean(liDiagramBorder.Checked);
end;

procedure TdxChartCustomFrame.liAxisXInterlacedClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisX.Interlaced := liAxisXInterlaced.Checked;
end;

procedure TdxChartCustomFrame.liAxisXGridlinesClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisX.Gridlines.Visible := liAxisXGridlines.Checked;
end;

procedure TdxChartCustomFrame.liAxisXMinorGridlinesClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisX.Gridlines.MinorVisible := liAxisXMinorGridlines.Checked;
end;

procedure TdxChartCustomFrame.liAxisXReverseClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Reverse := liAxisXReverse.Checked;
end;

procedure TdxChartCustomFrame.liAxisXVisibleClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveDiagram).Axes.AxisX.Visible := liAxisXVisible.Checked;
end;

procedure TdxChartCustomFrame.liAxisYGridlinesClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisY.Gridlines.Visible := liAxisYGridlines.Checked;
end;

procedure TdxChartCustomFrame.liAxisYInterlacedClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisY.Interlaced := liAxisYInterlaced.Checked;
end;

procedure TdxChartCustomFrame.liAxisYMinorGridlinesClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisY.Gridlines.MinorVisible := liAxisYMinorGridlines.Checked;
end;

procedure TdxChartCustomFrame.liAxisYReverseClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Reverse := liAxisYReverse.Checked;
end;

procedure TdxChartCustomFrame.liAxisYVisibleClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveDiagram).Axes.AxisY.Visible := liAxisYVisible.Checked;
end;

procedure TdxChartCustomFrame.liRotatedClick(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Rotated := liRotated.Checked;
end;

procedure TdxChartCustomFrame.liTopNEnabledClick(Sender: TObject);
begin
  ApplyTopNOptions;
end;

procedure TdxChartCustomFrame.liValueLabelsClick(Sender: TObject);
var
  I: Integer;
begin
  if liValueLabels.State = cbsGrayed then
    Exit;
  for I := 0 to ActiveDiagram.SeriesCount - 1 do
    ActiveDiagram.Series[I].View.ValueLabels.Visible := liValueLabels.Checked;
  UpdateOptions;
end;

procedure TdxChartCustomFrame.LocalizeItems(AItems: TStrings;
  AResourceStrings: TArray<TcxResourceStringID>);
var
  AString: TcxResourceStringID;
begin
  AItems.BeginUpdate;
  try
    AItems.Clear;
    for AString in AResourceStrings do
      AItems.Add(cxGetResourceString(AString));
  finally
    AItems.EndUpdate;
  end;
end;

procedure TdxChartCustomFrame.seBarDistancePropertiesEditValueChanged(Sender: TObject);
begin
  if ActiveView is TdxChartXYSeriesCustomBarView then
    TdxChartXYSeriesCustomBarView(ActiveView).BarDistance := seBarDistance.Value;
end;

procedure TdxChartCustomFrame.SecondaryAxisYAlignmentPropertiesChange(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TcxComboBox(Sender).Tag).Alignment :=
    TdxChartSecondaryAxisAlignment(TcxComboBox(Sender).ItemIndex);
end;

procedure TdxChartCustomFrame.SecondaryAxisYGridlinesClick(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TdxLayoutCheckBoxItem(Sender).Tag).Gridlines.Visible := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxChartCustomFrame.SecondaryAxisYInterlacedClick(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TdxLayoutCheckBoxItem(Sender).Tag).Interlaced := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxChartCustomFrame.SecondaryAxisYLabelsPositionPropertiesChange(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TcxComboBox(Sender).Tag).ValueLabels.Position :=
    TdxChartAxisValueLabelPosition(TcxComboBox(Sender).ItemIndex);
end;

procedure TdxChartCustomFrame.SecondaryAxisYMinorGridlinesClick(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TdxLayoutCheckBoxItem(Sender).Tag).Gridlines.MinorVisible := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxChartCustomFrame.SecondaryAxisYReverseClick(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TdxLayoutCheckBoxItem(Sender).Tag).Reverse := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxChartCustomFrame.SecondaryAxisYVisibleClick(Sender: TObject);
begin
  TdxChartSecondaryAxisY(TdxLayoutCheckBoxItem(Sender).Tag).Visible := TdxLayoutCheckBoxItem(Sender).Checked;
end;

procedure TdxChartCustomFrame.seHoleRadiusPropertiesEditValueChanged(Sender: TObject);
begin
  TdxChartSimpleSeriesDoughnutView(ActiveView).HoleRadius := seHoleRadius.Value;
end;

procedure TdxChartCustomFrame.seValueLabelsResolveOverlappingIndentPropertiesEditValueChanged(Sender: TObject);
begin
  ApplyValueLabelsResolveOverlappingOptions;
end;

procedure TdxChartCustomFrame.ShowDesigner;
begin
  dxShowChartDesigner(ActiveChartControl);
  UpdateOptions;
end;

procedure TdxChartCustomFrame.liMarkerVisibleClick(Sender: TObject);
var
  I: Integer;
begin
  if liMarkerVisible.State = cbsGrayed then
    Exit;
  for I := 0 to ActiveDiagram.SeriesCount - 1 do
    if ActiveDiagram.Series[I].View is TdxChartXYSeriesLineView then
      TdxChartXYSeriesLineView(ActiveDiagram.Series[I].View).Markers.Visible := liMarkerVisible.Checked;
end;

procedure TdxChartCustomFrame.cmbAxisAlignmentPropertiesChange(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisX.Alignment :=
    TdxChartAxisAlignment(cmbAxisXAlignment.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbAxisXLabelsPositionPropertiesChange(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisX.ValueLabels.Position :=
    TdxChartAxisValueLabelPosition(cmbAxisXLabelsPosition.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbAxisYAlignmentPropertiesChange(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisY.Alignment :=
    TdxChartAxisAlignment(cmbAxisYAlignment.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbAxisYLabelsPositionPropertiesChange(Sender: TObject);
begin
  TdxChartXYDiagram(ActiveChartControl.Diagrams[0]).Axes.AxisY.ValueLabels.Position :=
    TdxChartAxisValueLabelPosition(cmbAxisYLabelsPosition.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbCrosshairSnapToPointPropertiesChange(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.SnapToPointMode := TdxChartCrosshairSnapToPointMode(cmbCrosshairSnapToPoint.ItemIndex);
  cmbCrosshairStickyLines.ItemIndex := Integer(ActiveChartControl.ToolTips.CrosshairOptions.StickyLines);
end;

procedure TdxChartCustomFrame.cmbCrosshairStickyLinesPropertiesChange(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.StickyLines := TdxChartCrosshairStickyLines(cmbCrosshairStickyLines.ItemIndex);
  cmbCrosshairSnapToPoint.ItemIndex := Integer(ActiveChartControl.ToolTips.CrosshairOptions.SnapToPointMode);
end;

procedure TdxChartCustomFrame.cmbExplodedValuePropertiesChange(Sender: TObject);
begin
  TdxChartSimpleSeriesPieView(ActiveView).ExplodedValueOptions.Mode :=
    TdxChartExplodedValueMode(cmbExplodedValue.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbLabelPositionPropertiesChange(Sender: TObject);
var
  I: Integer;
begin
  if cmbLabelPosition.ItemIndex = -1 then
    Exit;
  for I := 0 to ActiveDiagram.SeriesCount - 1 do
    TdxChartSeriesValueLabelsAccess(ActiveDiagram.Series[I].View.ValueLabels).SetPositionByOrdinal(cmbLabelPosition.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbLegendAlignmentHorzPropertiesChange(Sender: TObject);
begin
  ApplyLegendOptions;
end;

procedure TdxChartCustomFrame.cmbMarkerKindPropertiesChange(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to ActiveDiagram.SeriesCount - 1 do
    TdxChartXYSeriesLineView(ActiveDiagram.Series[I].View).Markers.Kind :=
      TdxChartXYMarkerKind(cmbMarkerKind.ItemIndex);
end;

procedure TdxChartCustomFrame.cmbToolTipsModePropertiesChange(Sender: TObject);
var
  ACrosshairMode: Boolean;
begin
  inherited;
  (ActiveDiagram as TdxChartXYDiagram).ToolTips.Mode := TdxChartToolTipMode(cmbToolTipsMode.ItemIndex + 1);
  ACrosshairMode := (ActiveDiagram as TdxChartXYDiagram).ToolTips.Mode  = TdxChartToolTipMode.Crosshair;
  liCrosshairArgumentLines.Visible := ACrosshairMode;
  liCrosshairValueLines.Visible := ACrosshairMode;
  liCrosshairArgumentLabels.Visible := ACrosshairMode;
  liCrosshairValueLabels.Visible := ACrosshairMode;
  liCrosshairSnapToPoint.Visible := ACrosshairMode;
  liCrosshairSnapToMultipleSeries.Visible := ACrosshairMode;
  liCrosshairHighlightPoints.Visible := ACrosshairMode;
  liCrosshairStickyLines.Visible := ACrosshairMode;
  lsCrosshairLines.Visible := ACrosshairMode;
  lsCrosshairLabels.Visible := ACrosshairMode;
  lsCrosshairSnapOptions.Visible := ACrosshairMode;
end;

procedure TdxChartCustomFrame.cmbValueLabelsResolveOverlappingModePropertiesChange(Sender: TObject);
begin
  ApplyValueLabelsResolveOverlappingOptions;
end;

procedure TdxChartCustomFrame.liCrosshairArgumentLabelsClick(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.ShowArgumentLabels := liCrosshairArgumentLabels.Checked;
end;

procedure TdxChartCustomFrame.liCrosshairArgumentLinesClick(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.ArgumentLines.Visible := liCrosshairArgumentLines.Checked;
end;

procedure TdxChartCustomFrame.liCrosshairHighlightPointsClick(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.HighlightPoints := liCrosshairHighlightPoints.Checked;
end;

procedure TdxChartCustomFrame.liCrosshairSnapToMultipleSeriesClick(Sender:
    TObject);
begin
  if liCrosshairSnapToMultipleSeries.Checked then
    ActiveChartControl.ToolTips.CrosshairOptions.SnapToSeriesMode := TdxChartCrosshairSnapToSeriesMode.All
  else
    ActiveChartControl.ToolTips.CrosshairOptions.SnapToSeriesMode := TdxChartCrosshairSnapToSeriesMode.NearestToCursor;
end;

procedure TdxChartCustomFrame.liCrosshairValueLabelsClick(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.ShowValueLabels := liCrosshairValueLabels.Checked;
end;

procedure TdxChartCustomFrame.liCrosshairValueLinesClick(Sender: TObject);
begin
  ActiveChartControl.ToolTips.CrosshairOptions.ValueLines.Visible := liCrosshairValueLines.Checked;
end;

end.
