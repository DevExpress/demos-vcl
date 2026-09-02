unit uSparklineEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxFrameCustomControl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxSparkline, Vcl.ActnList, cxClasses, dxLayoutControl, cxCustomData, cxCheckBox,
  dxCore, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxColorEdit, cxSpinEdit;

type
  TfrmSparklineEdit = class(TfrmCustomControl)
    SparklineEdit: TdxSparklineEdit;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    cbAntialiasing: TcxCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    edColor1: TdxColorEdit;
    dxLayoutItem4: TdxLayoutItem;
    edLineWidth1: TcxSpinEdit;
    dxLayoutItem5: TdxLayoutItem;
    edMarkerSize1: TcxSpinEdit;
    dxLayoutEmptySpaceItem2: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem3: TdxLayoutEmptySpaceItem;
    dxLayoutEmptySpaceItem4: TdxLayoutEmptySpaceItem;
    dxLayoutItem6: TdxLayoutItem;
    cmbSeriesType1: TcxComboBox;
    liEndPointColor1: TdxLayoutItem;
    edEndPointColor1: TdxColorEdit;
    dxLayoutItem8: TdxLayoutItem;
    cbEndPoint1: TcxCheckBox;
    dxLayoutEmptySpaceItem5: TdxLayoutEmptySpaceItem;
    dxLayoutGroup4: TdxLayoutGroup;
    dxLayoutGroup5: TdxLayoutGroup;
    dxLayoutGroup6: TdxLayoutGroup;
    dxLayoutGroup8: TdxLayoutGroup;
    dxLayoutGroup9: TdxLayoutGroup;
    dxLayoutGroup10: TdxLayoutGroup;
    dxLayoutGroup11: TdxLayoutGroup;
    dxLayoutGroup12: TdxLayoutGroup;
    dxLayoutItem7: TdxLayoutItem;
    cbStartPoint1: TcxCheckBox;
    dxLayoutItem9: TdxLayoutItem;
    cbMinPoint1: TcxCheckBox;
    dxLayoutItem10: TdxLayoutItem;
    cbMaxPoint1: TcxCheckBox;
    dxLayoutItem11: TdxLayoutItem;
    cbShowMarkers1: TcxCheckBox;
    liStartPointColor1: TdxLayoutItem;
    edStartPointColor1: TdxColorEdit;
    liMinPointColor1: TdxLayoutItem;
    edMinPointColor1: TdxColorEdit;
    liMaxPointColor1: TdxLayoutItem;
    edMaxPointColor1: TdxColorEdit;
    liMarkerPointColor1: TdxLayoutItem;
    edMarkerPointColor1: TdxColorEdit;
    dxLayoutItem12: TdxLayoutItem;
    edColor2: TdxColorEdit;
    dxLayoutItem13: TdxLayoutItem;
    edLineWidth2: TcxSpinEdit;
    dxLayoutItem14: TdxLayoutItem;
    edMarkerSize2: TcxSpinEdit;
    dxLayoutItem15: TdxLayoutItem;
    cmbSeriesType2: TcxComboBox;
    dxLayoutEmptySpaceItem6: TdxLayoutEmptySpaceItem;
    dxLayoutGroup7: TdxLayoutGroup;
    dxLayoutGroup13: TdxLayoutGroup;
    dxLayoutGroup14: TdxLayoutGroup;
    dxLayoutGroup15: TdxLayoutGroup;
    dxLayoutGroup16: TdxLayoutGroup;
    dxLayoutItem16: TdxLayoutItem;
    cbStartPoint2: TcxCheckBox;
    dxLayoutItem17: TdxLayoutItem;
    cbEndPoint2: TcxCheckBox;
    dxLayoutItem18: TdxLayoutItem;
    cbMinPoint2: TcxCheckBox;
    dxLayoutItem19: TdxLayoutItem;
    cbMaxPoint2: TcxCheckBox;
    dxLayoutItem20: TdxLayoutItem;
    cbShowMarkers2: TcxCheckBox;
    liStartPointColor2: TdxLayoutItem;
    edStartPointColor2: TdxColorEdit;
    liEndPointColor2: TdxLayoutItem;
    edEndPointColor2: TdxColorEdit;
    liMinPointColor2: TdxLayoutItem;
    edMinPointColor2: TdxColorEdit;
    liMaxPointColor2: TdxLayoutItem;
    edMaxPointColor2: TdxColorEdit;
    liMarkerPointColor2: TdxLayoutItem;
    edMarkerPointColor2: TdxColorEdit;
    acAntialiasing: TAction;
    acStartPoint1: TAction;
    acEndPoint1: TAction;
    acMinPoint1: TAction;
    acMaxPoint1: TAction;
    acShowMarkers1: TAction;
    acStartPoint2: TAction;
    acEndPoint2: TAction;
    acMinPoint2: TAction;
    acMaxPoint2: TAction;
    acShowMarkers2: TAction;
    procedure acAntialiasingExecute(Sender: TObject);
    procedure acShowMarkers1Execute(Sender: TObject);
    procedure acShowMarkers2Execute(Sender: TObject);
  private
    FSettingPropertiesInProcess: Boolean;
    FShowMarkers1WasChanged: Boolean;
    FShowMarkers2WasChanged: Boolean;
    procedure InitializeData;
    procedure SetSparklineEditProperties;
  protected
    procedure CheckControlStartProperties; override;
    procedure DoCheckActualTouchMode; override;
    function GetDescription: string; override;
    function GetInspectedObject: TPersistent; override;
  end;

implementation

uses
  dxFrames, FrameIDs, uStrsConst, cxGeometry;

{$R *.dfm}

procedure TfrmSparklineEdit.CheckControlStartProperties;
begin
  InitializeData;
  SetSparklineEditProperties;
end;

procedure TfrmSparklineEdit.DoCheckActualTouchMode;
const
  ShowButtonsWidth: array[Boolean] of Integer = (250, 300);
begin
  inherited DoCheckActualTouchMode;
  dxLayoutGroup3.SizeOptions.Width := ScaleFactor.Apply(ShowButtonsWidth[ActualTouchMode]);
end;

function TfrmSparklineEdit.GetDescription: string;
begin
  Result := sdxFrameSparkLineEditDescription;
end;

function TfrmSparklineEdit.GetInspectedObject: TPersistent;
begin
  Result := SparklineEdit;
end;

procedure TfrmSparklineEdit.acAntialiasingExecute(Sender: TObject);
begin
  SetSparklineEditProperties;
end;

procedure TfrmSparklineEdit.acShowMarkers1Execute(Sender: TObject);
begin
  if FSettingPropertiesInProcess then
    Exit;
  FShowMarkers1WasChanged := True;
  SetSparklineEditProperties;
end;

procedure TfrmSparklineEdit.acShowMarkers2Execute(Sender: TObject);
begin
  if FSettingPropertiesInProcess then
    Exit;
  FShowMarkers2WasChanged := True;
  SetSparklineEditProperties;
end;

procedure TfrmSparklineEdit.InitializeData;

  function GetValue(X: Real; ASeriesIndex: Integer): Real;
  begin
    if ASeriesIndex = 0 then
      Result := 80 - Sqr(X - 10)
    else
      Result := -20 + Sqr(X - 8);
  end;

const
  ASeriesCount = 2;
  AIntervalCount = 20;
  Xmin = 0;
  Xmax = 20;
var
  AProperties: TdxSparklineProperties;
  ADataController: TcxCustomDataController;
  AIndex, ASeriesIndex: Integer;
  dX, ACurrentX: Real;
begin
  AProperties := SparklineEdit.Properties as TdxSparklineProperties;
  dX := (Xmax - Xmin) / AIntervalCount;
  for ASeriesIndex := 0 to ASeriesCount - 1 do
  begin
    AProperties.Series.Add;
    ADataController := AProperties.DataController;
    ADataController.BeginUpdate;
    try
      ADataController.RecordCount := AIntervalCount + 1;
      for AIndex := 0 to AIntervalCount do
      begin
        ACurrentX := Xmin + dX * AIndex;
        ADataController.Values[AIndex, AProperties.Series[ASeriesIndex].DataIndex] := GetValue(ACurrentX, ASeriesIndex);
      end;
    finally
      ADataController.EndUpdate;
    end;
  end;
end;

procedure TfrmSparklineEdit.SetSparklineEditProperties;

  function InternalGetColor(AEnabled: Boolean; AColorItem: TdxLayoutItem): TColor;
  begin
    Result := clNone;
    if AEnabled then
      Result := TdxColorEdit(AColorItem.Control).ColorValue;
    AColorItem.Enabled := AEnabled;
  end;

var
  ASeria: TdxSparklineSeries;
begin
  if FSettingPropertiesInProcess then
    Exit;

  FSettingPropertiesInProcess := True;
  try
    SparklineEdit.Properties.Antialiasing := acAntialiasing.Checked;

    ASeria := SparklineEdit.Properties.Series[0];
    ASeria.Color := edColor1.ColorValue;
    ASeria.LineWidth := ScaleFactor.Apply(edLineWidth1.Value);
    ASeria.MarkerSize := ScaleFactor.Apply(edMarkerSize1.Value);
    ASeria.SeriesType := TdxSparklineSeriesType(cmbSeriesType1.ItemIndex);
    ASeria.StartPointColor := InternalGetColor(acStartPoint1.Checked, liStartPointColor1);
    ASeria.EndPointColor := InternalGetColor(acEndPoint1.Checked, liEndPointColor1);
    ASeria.MinPointColor := InternalGetColor(acMinPoint1.Checked, liMinPointColor1);
    ASeria.MaxPointColor := InternalGetColor(acMaxPoint1.Checked, liMaxPointColor1);
    if not FShowMarkers1WasChanged then
      acShowMarkers1.Checked := cmbSeriesType1.ItemIndex = 1;
    ASeria.MarkerColor := InternalGetColor(acShowMarkers1.Checked, liMarkerPointColor1);

    ASeria := SparklineEdit.Properties.Series[1];
    ASeria.Color := edColor2.ColorValue;
    ASeria.LineWidth := ScaleFactor.Apply(edLineWidth2.Value);
    ASeria.MarkerSize := ScaleFactor.Apply(edMarkerSize2.Value);
    ASeria.SeriesType := TdxSparklineSeriesType(cmbSeriesType2.ItemIndex);
    ASeria.StartPointColor := InternalGetColor(acStartPoint2.Checked, liStartPointColor2);
    ASeria.EndPointColor := InternalGetColor(acEndPoint2.Checked, liEndPointColor2);
    ASeria.MinPointColor := InternalGetColor(acMinPoint2.Checked, liMinPointColor2);
    ASeria.MaxPointColor := InternalGetColor(acMaxPoint2.Checked, liMaxPointColor2);
    if not FShowMarkers2WasChanged then
      acShowMarkers2.Checked := cmbSeriesType2.ItemIndex = 1;
    ASeria.MarkerColor := InternalGetColor(acShowMarkers2.Checked, liMarkerPointColor2);
  finally
    FSettingPropertiesInProcess := False;
  end;
end;

initialization
  dxFrameManager.RegisterFrame(SparklineEditFrameID, TfrmSparklineEdit, SparklineEditFrameName, -1,
    EditorsWithoutTextBoxesGroupIndex, -1, -1);

end.
