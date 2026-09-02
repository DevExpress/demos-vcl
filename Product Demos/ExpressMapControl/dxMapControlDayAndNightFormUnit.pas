unit dxMapControlDayAndNightFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxMapControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxMapControlTypes, cxClasses,
  dxBar, dxMapControl, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, dxRibbonSkins,
  dxRibbonCustomizationForm, dxRibbon, Vcl.ActnList, cxCalendar, cxBarEditItem,
  dxMapItemLayer, dxMapLayer, dxCustomMapItemLayer, dxMapItemFileLayer,
  dxGDIPlusClasses, Vcl.ImgList, cxImageList, dxMapItem, cxListBox, dxMapControlProjections,
  dxCoreGraphics, dxMapControlViewInfo, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels,
  dxLayoutControlAdapters, dxGallery, dxGalleryControl, System.Actions, dxCore;

type
  TfmDayAndNight = class(TdxMapControlDemoUnitForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    actForward: TAction;
    actBackward: TAction;
    actSteadily: TAction;
    btnSteadily: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    beDateEdit: TcxBarEditItem;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton4: TdxBarLargeButton;
    actCurrentTime: TAction;
    dxMapControl1ItemFileLayer1: TdxMapItemFileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    ilSmallBarIcons: TcxImageList;
    ilLargeBarIcons: TcxImageList;
    miSun: TdxMapCustomElement;
    miMoon: TdxMapCustomElement;
    miDayAndNightPolygon: TdxMapPolygon;
    Timer1: TTimer;
    dxLayoutItem3: TdxLayoutItem;
    dxGalleryControl1: TdxGalleryControl;
    dxGalleryControl1Group1: TdxGalleryControlGroup;
    procedure actBackwardExecute(Sender: TObject);
    procedure actCurrentTimeExecute(Sender: TObject);
    procedure actForwardExecute(Sender: TObject);
    procedure actSteadilyExecute(Sender: TObject);
    procedure beDateEditChange(Sender: TObject);
    procedure dxGalleryControl1ItemClick(Sender: TObject; AItem:
        TdxGalleryControlItem);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    procedure ApplyProjection(AValue: TdxMapControlCustomProjectionClass);
    procedure UpdateDateAndNightInfo;
    procedure UpdateProjections;
    { Private declarations }
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    procedure StartTimer;
    procedure StopTimer;
  end;

var
  fmDayAndNight: TfmDayAndNight;

implementation

{$R *.dfm}

uses
  System.Math, System.DateUtils, cxGeometry, cxDateUtils;

type
  TCoords = record
    X: Double;
    Y: Double;
    Z: Double;
  end;

function DoubleMod(ADividend, ADivisor: Double): Double;
begin
  Result := ADividend - ADivisor * Trunc(ADividend / ADivisor);
end;

function CalculateCoordinates(T1, T2: Double; AEclipticalCoord: TCoords): TCoords;
var
  a1, a2, a3, a4, s0, nsec, ut1, x0, y0: Double;
  x, y, z: Double;
begin
  x := AEclipticalCoord.X;
  y := AEclipticalCoord.Y;
  z := AEclipticalCoord.Z;
  a1 := 24110.54841;
  a2 := 8640184.812;
  a3 := 0.093104;
  a4 := 0.0000062;
  s0 := a1 + a2 * T2 + a3 * T2 * T2 - a4 * T2 * T2 * T2;
  nSec := (T1 - Trunc(T1)) * 86400.0;
  ut1 := nSec * 366.2422 / 365.2422;
  s0 := DegToRad(DoubleMod((s0 + ut1) / 3600 * 15, 360));
  x0 := Cos(s0) * x + Sin(s0) * y;
  y0 := -Sin(s0) * x + Cos(s0) * y;

  Result.X := RadToDeg(ArcTan2(y0, x0));
  Result.Y := RadToDeg(ArcTan2(z, Sqrt(x0 * x0 + y0 * y0)));
  Result.Z := z;
end;

function CalculateSunEclipticalCoordinates(T1, T2: Double): TCoords;
var
  M, L, AAxisTilt: Double;
begin
  M := DoubleMod((357.528 + 35999.05 * T2 + 0.04107 * T1), 360.0);
  L := 280.46 + 36000.772 * T2 + 0.04107 * T1;
  L := DoubleMod((L + (1.915 - 0.0048 * T2) * Sin(DegToRad(M)) + 0.02 * Sin(2.0 * DegToRad(M))), 360);
  AAxisTilt := DegToRad(23.439281);
  Result.X := Cos(DegToRad(L));
  Result.Y := Sin(DegToRad(L)) * Cos(AAxisTilt);
  Result.Z := Sin(DegToRad(L)) * Sin(AAxisTilt);
end;

function GetJulianDateTime(dt: TDateTime; ut: Double): Double;
var
  mon, yr, varr, b: Double;
  AYear, AMonth, ADay: Word;
begin
  DecodeDate(dt, AYear, AMonth, ADay);
  mon := IfThen(AMonth > 2, AMonth, AMonth + 12);
  yr := IfThen(AMonth > 2, AYear, AYear - 1);
  varr := 365.0 * yr - 679004.0;
  b := Trunc(yr / 400) - Trunc(yr / 100) + Trunc(yr / 4);
  Result := varr + b + Trunc(306001.0 * (mon + 1) / 10000) + ADay;
  Result := Result + ut /24;
end;

function CalculateSunPosition(ADateTime: TDateTime): TCoords;
var
  AUtcTime: TDateTime;
  AJulianDate, AUniversalTime: Double;
  AHour, AMin, ASec, AMSec: Word;
  T0: Double;
  AEclipticalCoords: TCoords;
begin
  AUtcTime := TdxTimeZoneHelper.ConvertToGlobalTime(ADateTime);
  DecodeTime(AUtcTime, AHour, AMin, ASec, AMSec);
  AUniversalTime := AHour + AMin / 60 + ASec / 3600;
  AJulianDate := GetJulianDateTime(AUtcTime, AUniversalTime);
  T0 := (Trunc(AJulianDate) - 51544.5) / 36525;
  AEclipticalCoords := CalculateSunEclipticalCoordinates(AUniversalTime, T0);
  Result := CalculateCoordinates(AJulianDate, T0, AEclipticalCoords);
end;

function IsNorthNight(ASunPosition: TCoords): Boolean;
var
  lat, lon: Double;
  x, y, z: Double;
begin
  lat := PI / 2;
  lon := -PI;
  x := Cos(lon) * Cos(lat);
  y := Sin(lon) * Cos(lat);
  z := Sin(lat);
  Result := x * ASunPosition.X + y * ASunPosition.Y + z * ASunPosition.Z < 0;
end;

procedure AddNorthContour(dayAndNightLineVertices: TdxMapControlGeoPointCollection);
var
  initLat: Integer;
  latForward: Integer;
  lon: Integer;
  latBackward: Integer;
begin
  initLat := Ceil((dayAndNightLineVertices[dayAndNightLineVertices.Count - 1]).Latitude);
  for latForward := initLat to 90 do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(latForward, 180);
  for lon := 180 downto -180 do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(90, lon);
  initLat := Ceil(dayAndNightLineVertices[0].Latitude);
  for latBackward := 90 downto initLat do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(latBackward, -180);
end;

procedure AddSouthContour(dayAndNightLineVertices: TdxMapControlGeoPointCollection);
var
  initLat: Integer;
  lat: Integer;
  lon: Integer;
begin
  initLat := Ceil((dayAndNightLineVertices[dayAndNightLineVertices.Count - 1]).Latitude);
  for lat := initLat downto -90 do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(lat, 180);
  for lon := 180 downto -180 do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(-90, lon);
  initLat := Ceil(dayAndNightLineVertices[0].Latitude);
  for lat := -90 to initLat do
    dayAndNightLineVertices.Add.GeoPoint := dxMapControlGeoPoint(lat, -180);
end;

function GetMoonLocation(ASunLocation: TdxMapControlGeoPoint): TdxMapControlGeoPoint;
begin
  Result.Latitude := - ASunLocation.Latitude;
  Result.Longitude := ASunLocation.Longitude + 180;
  if Result.Longitude > 180 then
    Result.Longitude := Result.Longitude - 360;
end;

procedure TfmDayAndNight.actBackwardExecute(Sender: TObject);
begin
  StopTimer;
  beDateEdit.EditValue := IncMinute(beDateEdit.EditValue, -30);
end;

procedure TfmDayAndNight.actCurrentTimeExecute(Sender: TObject);
begin
  StopTimer;
  beDateEdit.EditValue := Now;
end;

procedure TfmDayAndNight.actForwardExecute(Sender: TObject);
begin
  StopTimer;
  beDateEdit.EditValue := IncMinute(beDateEdit.EditValue, 30);
end;

procedure TfmDayAndNight.actSteadilyExecute(Sender: TObject);
begin
  Timer1.Enabled := actSteadily.Checked;
end;

procedure TfmDayAndNight.ApplyProjection(AValue:
  TdxMapControlCustomProjectionClass);
var
  ALayers: TdxCustomMapItemLayerList;
begin
  dxMapControl1.BeginUpdate;
  try
    dxMapControl1ItemFileLayer1.ProjectionClass := AValue;
    dxMapControl1ItemLayer1.ProjectionClass := AValue;
    ALayers := TdxCustomMapItemLayerList.Create;
    try
      ALayers.Add(dxMapControl1ItemFileLayer1);
      dxMapControl1.ZoomToFitLayerItems(ALayers);
    finally
      ALayers.Free;
    end;
  finally
    dxMapControl1.EndUpdate;
  end;
end;

procedure TfmDayAndNight.beDateEditChange(Sender: TObject);
begin
  UpdateDateAndNightInfo;
end;

procedure TfmDayAndNight.dxGalleryControl1ItemClick(Sender: TObject; AItem:
    TdxGalleryControlItem);
begin
  ApplyProjection(TdxMapControlCustomProjectionClass(dxRegisteredMapProjections[AItem.Tag]));
end;

procedure TfmDayAndNight.FormCreate(Sender: TObject);
begin
  inherited;
  dxMapControl1.BeginUpdate;
  UpdateProjections;
  dxGalleryControl1Group1.Items[0].Checked := True;
  beDateEdit.EditValue := Now;
  dxMapControl1.EndUpdate;
  StartTimer;
end;

procedure TfmDayAndNight.FormResize(Sender: TObject);
begin
  inherited;
  ApplyProjection(TdxMapControlCustomProjectionClass(dxRegisteredMapProjections[dxGalleryControl1.Gallery.GetCheckedItem.Tag]));
end;

procedure TfmDayAndNight.FormShow(Sender: TObject);
begin
  inherited;
  ApplyProjection(TdxMapControlCustomProjectionClass(dxRegisteredMapProjections[dxGalleryControl1.Gallery.GetCheckedItem.Tag]));
end;

function TfmDayAndNight.GetDescription: string;
begin
  Result := 'The DevExpress VCL Map Control can display geographical data using various map projections. In this demo, it shows the day/night areas at a specific date and time.' +
    ' You can change the type of projection on the right, and specify the date/time using the date selector in the ribbon.';
end;

{ TfmDayAndNight }

class function TfmDayAndNight.GetID: Integer;
begin
  Result := 5;
end;

class function TfmDayAndNight.GetLoadingInfo: string;
begin
  Result := 'DayAndNight Demo';
end;

procedure TfmDayAndNight.StartTimer;
begin
  Timer1.Enabled := True;
  actSteadily.Checked := True;
end;

procedure TfmDayAndNight.StopTimer;
begin
  Timer1.Enabled := False;
  actSteadily.Checked := False;
end;

procedure TfmDayAndNight.Timer1Timer(Sender: TObject);
begin
  beDateEdit.EditValue := IncMinute(beDateEdit.EditValue, 24*60 + 30);
end;

procedure TfmDayAndNight.UpdateDateAndNightInfo;
var
  ASunPosition: TCoords;
  AGeoPoint: TdxMapControlGeoPointItem;
  ALongitude, ALatitude, T, CT, ACenterLat, ACenterLon: Double;
begin
  ASunPosition := CalculateSunPosition(beDateEdit.EditValue);
  miSun.Location.GeoPoint := dxMapControlGeoPoint(ASunPosition.Y, ASunPosition.X);
  miMoon.Location.GeoPoint := GetMoonLocation(miSun.Location.GeoPoint);
  ACenterLon := miSun.Location.Longitude;
  ACenterLat := miSun.Location.Latitude;
  miDayAndNightPolygon.GeoPoints.BeginUpdate;
  try
    miDayAndNightPolygon.GeoPoints.Clear;
    ALongitude := -180;
    CT := -1 / Tan(DegToRad(ACenterLat));
    while ALongitude <= 180 do
    begin
      T := CT * Cos(DegToRad(ALongitude) - DegToRad(ACenterLon));
      ALatitude := RadToDeg(ArcTan(T));
      AGeoPoint := miDayAndNightPolygon.GeoPoints.Add;
      AGeoPoint.Longitude := ALongitude;
      AGeoPoint.Latitude := ALatitude;
      ALongitude := ALongitude + 0.1;
    end;

    if IsNorthNight(ASunPosition) then
      AddNorthContour(miDayAndNightPolygon.GeoPoints)
    else
      AddSouthContour(miDayAndNightPolygon.GeoPoints);
  finally
    miDayAndNightPolygon.GeoPoints.EndUpdate;
  end;
end;

procedure TfmDayAndNight.UpdateProjections;
var
  I: Integer;
begin
  dxRegisteredMapProjections.Sorted := True;
  for I := 0 to dxRegisteredMapProjections.Count - 1 do
    with dxGalleryControl1Group1.Items.Add do
    begin
      Caption := dxRegisteredMapProjections.Hints[I];
      Tag := I;
    end;
end;

initialization
  TfmDayAndNight.Register;

end.
