unit dxMapControlAzureServicesFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, System.DateUtils, Vcl.Graphics, Vcl.Controls, Vcl.ExtCtrls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.StrUtils, System.Generics.Collections, Vcl.ActnList, Vcl.Menus, System.Math, System.Types, dxMapControlBaseFormUnit, cxGraphics, cxControls,
  cxLookAndFeels, dxCore, cxLookAndFeelPainters, cxContainer, cxEdit, dxMapControlTypes, cxClasses, dxBar, dxMapControl,
  cxGroupBox, cxTextEdit, cxSplitter, cxGeometry, dxGdiPlusClasses, cxImage, cxMaskEdit, cxDropDownEdit, cxButtons,
  cxListBox, dxCoreGraphics, dxMapControlInformationProvider, dxCustomMapItemLayer, dxMapItemLayer, dxMapLayer,
  dxMapImageTileLayer, dxMapItem, dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, dxLayoutContainer,
  dxLayoutControl, dxLayoutLookAndFeels, dxLayoutcxEditAdapters, dxLayoutControlAdapters, System.Actions,
  cxCustomListBox, dxAzureMapInformationProviders, dxAzureMapTypes, dxAzureMapInterfaces, dxAzureMapRESTService,
  dxAzureMapDTO, dxAzureMapImageryDataProvider, dxAzureMapInformationServices, dxMessageDialog, dxListView;

type
  TfrmAzureServices = class(TdxMapControlDemoUnitForm)
    imgSearchBackground: TcxImage;
    edSearch: TcxTextEdit;
    ActionList1: TActionList;
    actAddStartPoint: TAction;
    actAddEndPoint: TAction;
    actDeletePoint: TAction;
    actChangeStartPoint: TAction;
    actClear: TAction;
    actSetAsStartPoint: TAction;
    actSetAsEndPoint: TAction;
    dxMapControl1AzureMapGeocodeProvider1: TdxMapControlAzureMapGeocodeProvider;
    dxMapControl1AzureMapReverseGeocodeProvider1: TdxMapControlAzureMapReverseGeocodeProvider;
    dxMapControl1AzureMapRouteProvider1: TdxMapControlAzureMapRouteProvider;
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    miManeuverPoint: TdxMapDot;
    miNewPointPointer: TdxMapDot;
    pmItemSetStartPoint: TdxBarButton;
    pmItemSetAsStartPoint: TdxBarButton;
    pmItemChangeStartPoint: TdxBarButton;
    pmItemAddRoutePoint: TdxBarButton;
    pmItemSetAsRoutePoint: TdxBarButton;
    pmItemDeletePoint: TdxBarButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    liSelectedRouteCombo: TdxLayoutItem;
    cbRoutes: TcxComboBox;
    liWaypointsList: TdxLayoutItem;
    liShowAllRouteBtn: TdxLayoutItem;
    btnShowAllRoute: TcxButton;
    liClearRouteBtn: TdxLayoutItem;
    btnClearRoute: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxBarButtonDriving: TdxBarButton;
    dxBarButtonWalking: TdxBarButton;
    dxBarButtonBicycle: TdxBarButton;
    liSelectedRouteLabel: TdxLayoutLabeledItem;
    liWaypointsLabel: TdxLayoutLabeledItem;
    lvWaypoints: TdxListViewControl;
    lvWaypointsColumn1: TdxListColumn;
    actStartNewRoute: TAction;
    pmItemStartNewRoute: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure actAddStartPointExecute(Sender: TObject);
    procedure actAddEndPointExecute(Sender: TObject);
    procedure actDeletePointExecute(Sender: TObject);
    procedure actChangeStartPointExecute(Sender: TObject);
    procedure actClearExecute(Sender: TObject);
    procedure actSetAsStartPointExecute(Sender: TObject);
    procedure actSetAsEndPointExecute(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure btnShowAllRouteClick(Sender: TObject);
    procedure cbRoutesPropertiesEditValueChanged(Sender: TObject);
    procedure dxMapControl1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dxMapControl1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure dxMapControl1AzureMapGeocodeProvider1Response(ASender: TdxMapControlAzureMapGeocodeProvider;
      AResponse: TdxAzureMapGeocodeRequestResponse; var ADestroyResponse: Boolean);
    procedure dxMapControl1AzureMapRouteProvider1Response(ASender: TdxMapControlAzureMapRouteProvider;
      AResponse: TdxAzureMapRouteRequestResponse; var ADestroyResponse: Boolean);
    procedure FormShow(Sender: TObject);
    procedure lvWaypointsSelectItem(Sender: TdxCustomListView; AItem: TdxListItem; ASelected: Boolean);
    procedure lvWaypointsResize(Sender: TObject);
    procedure actStartNewRouteExecute(Sender: TObject);
    procedure edSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FCurrentCursorPos: TPoint;
    FHotPushpin: TdxMapPushpin;
    FRouteDataServiceResponse: TdxAzureMapRouteRequestResponse;
    FRoutePins: TList<TdxMapPushpin>;
    FRoutes: TList<TdxMapPolyline>;
    FSearchPins: TList<TdxMapPushpin>;
    FWndProcLinkedObj: TcxWindowProcLinkedObject;
    FRouteQueryParams: IdxAzureMapRouteQueryParams;
    FLongRequestDialog: TdxMessageDialogForm;
    FDefaultRoute: Boolean;
    FDefaultRouteStartQuery: IdxAzureMapGeocodeQueryParams;
    FDefaultRouteFinishQuery: IdxAzureMapGeocodeQueryParams;
    FDefaultRouteStart: TdxMapControlGeoPoint;
    FDefaultRouteFinish: TdxMapControlGeoPoint;
    procedure AddStartPoint(AGeoPoint: TdxMapControlGeoPoint);
    procedure AddEndPoint(AGeoPoint: TdxMapControlGeoPoint);
    function CreatePushpin: TdxMapPushpin;
    function GetCurrentCursorGeoPoint: TdxMapControlGeoPoint;
    function GetPinLetter(ANumber: Integer): string;
    function GetTravelDistanceStr(ADistanceInKilometers: Double): string;
    function GetTravelDurationStr(ATimeInSeconds: Double): string;
    procedure CalculateRoute;
    procedure ClearMapItems<T:TdxMapItem>(AItems: TList<T>);
    function CheckResponse(AResponse: TdxAzureMapResponse): Boolean;
    procedure CheckWaypointTexts(AItems: TList<TdxMapPushpin>);
    procedure ClearRoutePath;
    procedure ZoomToCurrentRoute;
    procedure ZoomToGeoRect(const ABoundingBox: TdxMapControlGeoRect);
    procedure ClearAllPins;
    procedure ClearAllRouteInfo;
    procedure StopRouteProviders;
    procedure MapControlWndProc(var Message: TMessage);
    procedure CreateRouteLine(ARoute: TdxAzureMapRouteItem);
    function GetRouteQueryParams: IdxAzureMapRouteQueryParams;
    procedure BuildDefaultRoute;
    procedure edSearchResize(Sender: TObject);
  protected
    function GetDescription: string; override;

    property RouteQueryParams: IdxAzureMapRouteQueryParams read GetRouteQueryParams write FRouteQueryParams;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    property CurrentCursorGeoPoint: TdxMapControlGeoPoint read GetCurrentCursorGeoPoint;
  end;

implementation

{$R *.dfm}

type
  TcxTextEditAccess = class(TcxTextEdit);

{ TfrmAzureServices }

procedure TfrmAzureServices.actAddEndPointExecute(Sender: TObject);
begin
  AddEndPoint(CurrentCursorGeoPoint);
end;

procedure TfrmAzureServices.AddEndPoint(AGeoPoint: TdxMapControlGeoPoint);
var
  APushpin: TdxMapPushpin;
  AParams: IdxAzureMapReverseGeocodeQueryParams;
  AResponse: TdxAzureMapReverseGeocodeRequestResponse;
begin
  StopRouteProviders;
  APushpin := CreatePushpin;
  APushpin.Location.GeoPoint := AGeoPoint;
  FRoutePins.Add(APushpin);
  CheckWaypointTexts(FRoutePins);
  AParams := dxMapControl1AzureMapReverseGeocodeProvider1.CreateQueryParams;
  AParams.Coordinates := APushpin.Location.GeoPoint;
  dxMapControl1AzureMapReverseGeocodeProvider1.Execute(AParams, AResponse);
  try
    if CheckResponse(AResponse) and (AResponse.Features.Count > 0) then
      APushpin.Hint := AResponse.Features.First.Properties.Address.FormattedAddress;
    CalculateRoute;
  finally
    FreeAndNil(AResponse);
  end;
end;

procedure TfrmAzureServices.actAddStartPointExecute(Sender: TObject);
begin
  AddStartPoint(CurrentCursorGeoPoint);
end;

procedure TfrmAzureServices.AddStartPoint(AGeoPoint: TdxMapControlGeoPoint);
var
  APushpin: TdxMapPushpin;
  AParams: IdxAzureMapReverseGeocodeQueryParams;
  AResponse: TdxAzureMapReverseGeocodeRequestResponse;
begin
  ClearAllRouteInfo;
  APushpin := CreatePushpin;
  APushpin.Location.GeoPoint := AGeoPoint;
  FRoutePins.Insert(0, APushpin);
  CheckWaypointTexts(FRoutePins);
  AParams := dxMapControl1AzureMapReverseGeocodeProvider1.CreateQueryParams;
  AParams.Coordinates := APushpin.Location.GeoPoint;
  dxMapControl1AzureMapReverseGeocodeProvider1.Execute(AParams, AResponse);
  try
    if CheckResponse(AResponse) and (AResponse.Features.Count > 0) then
      APushpin.Hint := AResponse.Features.First.Properties.Address.FormattedAddress;
  finally
    FreeAndNil(AResponse);
  end;
end;

procedure TfrmAzureServices.actChangeStartPointExecute(Sender: TObject);
var
  AParams: IdxAzureMapReverseGeocodeQueryParams;
  AResponse: TdxAzureMapReverseGeocodeRequestResponse;
begin
  StopRouteProviders;
  FRoutePins[0].Location.GeoPoint := CurrentCursorGeoPoint;
  AParams := dxMapControl1AzureMapReverseGeocodeProvider1.CreateQueryParams;
  AParams.Coordinates := FRoutePins[0].Location.GeoPoint;
  dxMapControl1AzureMapReverseGeocodeProvider1.Execute(AParams, AResponse);
  try
    if CheckResponse(AResponse) and (AResponse.Features.Count > 0) then
      FRoutePins[0].Hint := AResponse.Features.First.Properties.Address.FormattedAddress
    else
      FRoutePins[0].Hint := '';
    CalculateRoute;
  finally
    FreeAndNil(AResponse);
  end;
end;

procedure TfrmAzureServices.actClearExecute(Sender: TObject);
begin
  ClearAllRouteInfo;
end;

procedure TfrmAzureServices.actDeletePointExecute(Sender: TObject);
begin
  if FHotPushpin <> nil then
  begin
    StopRouteProviders;
    FRoutePins.Remove(FHotPushpin);
    FSearchPins.Remove(FHotPushpin);
    dxMapControl1ItemLayer1.MapItems.Remove(FHotPushpin);
    CheckWaypointTexts(FRoutePins);
    CalculateRoute;
  end;
end;

procedure TfrmAzureServices.actSetAsEndPointExecute(Sender: TObject);
begin
  if FHotPushpin <> nil then
  begin
    StopRouteProviders;
    FSearchPins.Remove(FHotPushpin);
    FRoutePins.Remove(FHotPushpin);
    FRoutePins.Add(FHotPushpin);
    CheckWaypointTexts(FRoutePins);
    CalculateRoute;
  end;
end;

procedure TfrmAzureServices.actSetAsStartPointExecute(Sender: TObject);
begin
  if FHotPushpin <> nil then
  begin
    StopRouteProviders;
    FSearchPins.Remove(FHotPushpin);
    FRoutePins.Remove(FHotPushpin);
    FRoutePins.Insert(0, FHotPushpin);
    CheckWaypointTexts(FRoutePins);
    CalculateRoute;
  end;
end;

procedure TfrmAzureServices.actStartNewRouteExecute(Sender: TObject);
begin
  ClearAllRouteInfo;
  actAddStartPoint.Execute;
end;

procedure TfrmAzureServices.BuildDefaultRoute;
const
  DefaultRouteStart = 'Herbert Hoover High School CA';
  DefaultRouteEnd = 'Glendale Adventist Medical Center CA';
begin
  FDefaultRoute := True;
  FDefaultRouteStart := TdxMapControlGeoPoint.Create(0, 0);
  FDefaultRouteFinish := TdxMapControlGeoPoint.Create(0, 0);

  FDefaultRouteStartQuery := dxMapControl1AzureMapGeocodeProvider1.CreateQueryParams;
  FDefaultRouteStartQuery.Query := DefaultRouteStart;
  FDefaultRouteStartQuery.Top := 1;
  dxMapControl1AzureMapGeocodeProvider1.ExecuteAsync(FDefaultRouteStartQuery);

  FDefaultRouteFinishQuery := dxMapControl1AzureMapGeocodeProvider1.CreateQueryParams;
  FDefaultRouteFinishQuery.Query := DefaultRouteEnd;
  FDefaultRouteFinishQuery.Top := 1;
  dxMapControl1AzureMapGeocodeProvider1.ExecuteAsync(FDefaultRouteFinishQuery);
end;

procedure TfrmAzureServices.dxBarLargeButton1Click(Sender: TObject);
begin
  if FRoutePins.Count > 0 then
  begin
    StopRouteProviders;
    CalculateRoute;
  end;
end;

procedure TfrmAzureServices.dxBarPopupMenu1Popup(Sender: TObject);
var
  AViewInfo: TdxMapPointerViewInfo;
begin
  if Safe.Cast<TdxMapPointerViewInfo>(dxMapControl1.HitTest.HitObject, AViewInfo) then
    FHotPushpin := TdxMapPushpin(AViewInfo.Item)
  else
    FHotPushpin := nil;
  miNewPointPointer.Location.GeoPoint := GetCurrentCursorGeoPoint;
  miNewPointPointer.Visible := FHotPushpin = nil;
  actDeletePoint.Enabled := (FHotPushpin <> nil);
  actAddEndPoint.Enabled := (FHotPushpin = nil) and (FRoutePins.Count > 0);
  actAddStartPoint.Visible := (FHotPushpin = nil) and (FRoutePins.Count = 0);
  actChangeStartPoint.Visible := (FHotPushpin = nil) and (FRoutePins.Count > 0);
  actSetAsEndPoint.Visible := (FHotPushpin <> nil) and (FRoutePins.Count > 0) and (FRoutePins[FRoutePins.Count - 1] <> FHotPushpin);
  actSetAsStartPoint.Visible := (FHotPushpin <> nil) and ((FRoutePins.Count = 0) or (FRoutePins[0] <> FHotPushpin));
  actStartNewRoute.Visible := True;
  actStartNewRoute.Enabled := (FHotPushpin = nil) and (FRoutePins.Count > 0);
end;

procedure TfrmAzureServices.dxMapControl1AzureMapGeocodeProvider1Response(ASender: TdxMapControlAzureMapGeocodeProvider;
  AResponse: TdxAzureMapGeocodeRequestResponse; var ADestroyResponse: Boolean);
var
  APushpin: TdxMapPushpin;
  AFeature: TdxAzureMapFeaturesItem;
  AFirstGeometry: TGeoJSONGeometry;
begin
  FLongRequestDialog.Close;
  if CheckResponse(AResponse) and (AResponse.Features.Count > 0) then
  begin
    if FDefaultRoute then
    begin
      if AResponse.QueryParams = FDefaultRouteStartQuery then
      begin
        AFirstGeometry := AResponse.Features.First.Geometry;
        FDefaultRouteStart := TdxMapControlGeoPoint.Create(AFirstGeometry.Coordinates[1], AFirstGeometry.Coordinates[0]);
      end
      else
      if AResponse.QueryParams = FDefaultRouteFinishQuery then
      begin
        AFirstGeometry := AResponse.Features.First.Geometry;
        FDefaultRouteFinish := TdxMapControlGeoPoint.Create(AFirstGeometry.Coordinates[1], AFirstGeometry.Coordinates[0]);
      end;

      if (FDefaultRouteStart.Latitude <> 0) and (FDefaultRouteFinish.Latitude <> 0) then
      begin
        AddStartPoint(FDefaultRouteStart);
        AddEndPoint(FDefaultRouteFinish);
      end;

      Exit;
    end;

    for AFeature in AResponse.Features do
    begin
      APushpin := CreatePushpin;
      APushpin.Location.GeoPoint := TdxMapControlGeoPoint.Create(AFeature.Geometry.Coordinates[1], AFeature.Geometry.Coordinates[0]);
      APushpin.Hint := AFeature.Properties.Address.FormattedAddress;
      FSearchPins.Add(APushpin);
    end;
    AFirstGeometry := AResponse.Features.First.Geometry;
    dxMapControl1.CenterPoint.GeoPoint := TdxMapControlGeoPoint.Create(AFirstGeometry.Coordinates[1], AFirstGeometry.Coordinates[0]);
    dxMapControl1.ZoomToFitItems<TdxMapPushpin>(FSearchPins);
  end;
end;

procedure TfrmAzureServices.dxMapControl1AzureMapRouteProvider1Response(ASender: TdxMapControlAzureMapRouteProvider;
  AResponse: TdxAzureMapRouteRequestResponse; var ADestroyResponse: Boolean);
var
  ARoute: TdxAzureMapRouteItem;
  ARouteIndex: Integer;
  I: Integer;
begin
  FLongRequestDialog.Close;
  if CheckResponse(AResponse) then
  begin
    MapControl.BeginUpdate;
    try
      cbRoutes.Properties.Items.Clear;
      lvWaypoints.Clear;
      FreeAndNil(FRouteDataServiceResponse);
      FRouteDataServiceResponse := AResponse;
      ADestroyResponse := False;
      for ARouteIndex := 0 to AResponse.Routes.Count - 1 do
      begin
        ARoute := AResponse.Routes[ARouteIndex];
        CreateRouteLine(ARoute);
        cbRoutes.Properties.Items.AddObject('Route ' + IntToStr(ARouteIndex + 1), ARoute);
        if ARoute.Legs.Count > 0 then
        begin
          for I := 0 to ARoute.Legs.Count - 1 do
            if ARoute.Legs[I].Points.Count > 0 then
              FRoutePins[I].Location.GeoPoint := ARoute.Legs[I].Points.First;

          FRoutePins.Last.Location.GeoPoint := ARoute.Legs.Last.Points.Last;
        end;
      end;
      if cbRoutes.Properties.Items.Count > 0 then
        cbRoutes.ItemIndex := 0;

      if FDefaultRoute then
      begin
        ZoomToCurrentRoute;
        FDefaultRoute := False;
      end;
    finally
      MapControl.EndUpdate;
    end;
  end;
end;

procedure TfrmAzureServices.dxMapControl1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FCurrentCursorPos := Point(X, Y);
end;

procedure TfrmAzureServices.dxMapControl1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  miNewPointPointer.Visible := False;
end;

procedure TfrmAzureServices.FormCreate(Sender: TObject);
begin
  (dxMapControl1ImageTileLayer1.Provider as TdxMapControlAzureMapImageryDataProvider).AzureKey := DXAzureKey;
  FRoutePins := TList<TdxMapPushpin>.Create;
  FSearchPins := TList<TdxMapPushpin>.Create;
  FRoutes := TList<TdxMapPolyline>.Create;
  dxMapControl1AzureMapGeocodeProvider1.AzureKey := DXAzureKey;
  dxMapControl1AzureMapReverseGeocodeProvider1.AzureKey := DXAzureKey;
  dxMapControl1AzureMapRouteProvider1.AzureKey := DXAzureKey;
  FWndProcLinkedObj := cxWindowProcController.Add(dxMapControl1, MapControlWndProc);
  FLongRequestDialog := dxCreateMessageDialog('Request is being processed...', TMsgDlgType.mtInformation, [mbAbort]);
  TcxTextEditAccess(edSearch).OnResize := edSearchResize;
end;

procedure TfrmAzureServices.FormDestroy(Sender: TObject);
begin
  cxWindowProcController.Remove(FWndProcLinkedObj);
  FreeAndNil(FRouteDataServiceResponse);
  FreeAndNil(FRoutes);
  FreeAndNil(FSearchPins);
  FreeAndNil(FRoutePins);
  FreeAndNil(FLongRequestDialog);
end;

procedure TfrmAzureServices.FormShow(Sender: TObject);
begin
  inherited FormShow(Sender);
  BuildDefaultRoute;
end;

class function TfrmAzureServices.GetID: Integer;
begin
  Result := 6;
end;

class function TfrmAzureServices.GetLoadingInfo: string;
begin
  Result := 'Azure Services Demo';
end;

function TfrmAzureServices.CreatePushpin: TdxMapPushpin;
begin
  Result := dxMapControl1ItemLayer1.MapItems.Add(TdxMapPushpin) as TdxMapPushpin;
end;

function TfrmAzureServices.GetCurrentCursorGeoPoint: TdxMapControlGeoPoint;
begin
  Result := dxMapControl1ImageTileLayer1.ScreenPointToGeoPoint(dxPointDouble(FCurrentCursorPos));
end;

function TfrmAzureServices.GetPinLetter(ANumber: Integer): string;
begin
  Result := Chr(Ord('A') + ANumber);
end;

function TfrmAzureServices.GetRouteQueryParams: IdxAzureMapRouteQueryParams;
begin
  if FRouteQueryParams = nil then
    FRouteQueryParams := dxMapControl1AzureMapRouteProvider1.CreateQueryParams;
  Result := FRouteQueryParams;
end;

function TfrmAzureServices.GetTravelDistanceStr(ADistanceInKilometers: Double): string;
begin
  Result := Format('%f km', [ADistanceInKilometers]);
end;

function TfrmAzureServices.GetTravelDurationStr(ATimeInSeconds: Double): string;
var
  ATimeInt: Cardinal;
  AHour: Cardinal;
  AMinute: Word;
begin
  Result := '';
  ATimeInt := Round(ATimeInSeconds);
  AHour := ATimeInt div 3600;
  AMinute := (ATimeInt mod 3600) div 60;
  Result := IfThen(AHour > 0, IntToStr(AHour) + ' h ');
  if AMinute > 0 then
    Result := Result + IntToStr(AMinute) + ' min'
  else
    if AHour = 0 then
      Result := Result + '< 1' + ' min';
end;

procedure TfrmAzureServices.MapControlWndProc(var Message: TMessage);
begin
  FWndProcLinkedObj.DefaultProc(Message);
  if Message.Msg = WM_PAINT then
    imgSearchBackground.Invalidate;
end;

procedure TfrmAzureServices.CalculateRoute;
var
  ARouteWaypoints: TdxMapControlGeoPoints;
  I: Integer;
begin
  ClearRoutePath;
  if FRoutePins.Count > 1 then
  begin
    SetLength(ARouteWaypoints, FRoutePins.Count);
    for I := 0 to FRoutePins.Count - 1 do
      ARouteWaypoints[I] := FRoutePins[I].Location.GeoPoint;

    RouteQueryParams.WayPoints := ARouteWaypoints;
    RouteQueryParams.InstructionsType := TdxAzureMapRouteInstructionsType.Text;
    RouteQueryParams.MaxAlternatives := 2;

    if dxBarButtonDriving.Down then
      RouteQueryParams.TravelMode := TdxAzureMapRouteTravelMode.Car
    else
    if dxBarButtonWalking.Down then
      RouteQueryParams.TravelMode := TdxAzureMapRouteTravelMode.Pedestrian
    else
    if dxBarButtonBicycle.Down then
      RouteQueryParams.TravelMode := TdxAzureMapRouteTravelMode.Bicycle;

    dxMapControl1AzureMapRouteProvider1.ExecuteAsync(RouteQueryParams);
    if FLongRequestDialog.ShowModal = mrAbort then
      dxMapControl1AzureMapRouteProvider1.CancelRequests;
    RouteQueryParams := nil;
  end;
end;

procedure TfrmAzureServices.ClearMapItems<T>(AItems: TList<T>);
var
  I: Integer;
  AMapItem: T;
begin
  for I := AItems.Count - 1 downto 0 do
  begin
    AMapItem := AItems[I];
    AItems.Delete(I);
    dxMapControl1ItemLayer1.MapItems.Remove(AMapItem);
  end;
end;

function TfrmAzureServices.CheckResponse(AResponse: TdxAzureMapResponse): Boolean;
begin
  if AResponse <> nil then
  begin
    Result := AResponse.IsSuccess;
    if not Result and Assigned(AResponse.ErrorInfo) then
      dxMessageDlg(AResponse.ErrorInfo.Message, TMsgDlgType.mtError, [mbOK]);
  end else
    Result := False;
end;

procedure TfrmAzureServices.CheckWaypointTexts(AItems: TList<TdxMapPushpin>);
var
  I: Integer;
begin
  for I := 0 to AItems.Count - 1 do
    AItems[I].Text := GetPinLetter(I);
end;

procedure TfrmAzureServices.ClearRoutePath;
begin
  miManeuverPoint.Visible := False;
  ClearMapItems<TdxMapPolyline>(FRoutes);
  lvWaypoints.Clear;
  cbRoutes.Properties.Items.Clear;
  FreeAndNil(FRouteDataServiceResponse);
end;

procedure TfrmAzureServices.ZoomToCurrentRoute;
var
  ABoundingBox: TdxMapControlGeoRect;
  ALeg: TdxAzureMapRouteLeg;
  APoint: TdxMapControlGeoPoint;
  ARoute: TdxAzureMapRouteItem;
begin
  lvWaypoints.ClearSelection;
  if (FRouteDataServiceResponse <> nil) and (FRouteDataServiceResponse.Routes.Count > 0) then
  begin
    ABoundingBox.NorthLatitude := Double.NaN;
    ABoundingBox.WestLongitude := Double.NaN;
    ABoundingBox.SouthLatitude := Double.NaN;
    ABoundingBox.EastLongitude := Double.NaN;

    ARoute := TdxAzureMapRouteItem(cbRoutes.ItemObject);

    for ALeg in ARoute.Legs do
      for APoint in ALeg.Points do
      begin
        if ABoundingBox.NorthLatitude.IsNan or (ABoundingBox.NorthLatitude < APoint.Latitude) then
          ABoundingBox.NorthLatitude := APoint.Latitude;

        if ABoundingBox.EastLongitude.IsNan or (ABoundingBox.EastLongitude < APoint.Longitude) then
          ABoundingBox.EastLongitude := APoint.Longitude;

        if ABoundingBox.SouthLatitude.IsNan or (ABoundingBox.SouthLatitude > APoint.Latitude) then
          ABoundingBox.SouthLatitude := APoint.Latitude;

        if ABoundingBox.WestLongitude.IsNan or (ABoundingBox.WestLongitude > APoint.Longitude) then
          ABoundingBox.WestLongitude := APoint.Longitude;
      end;

    ZoomToGeoRect(ABoundingBox);
  end;
end;

procedure TfrmAzureServices.ZoomToGeoRect(const ABoundingBox: TdxMapControlGeoRect);
begin
  dxMapControl1.BeginUpdate;
  try
    miManeuverPoint.Visible := False;
    dxMapControl1.ZoomToGeoRect(ABoundingBox, dxMapControlDefaultZoomPaddingFactor);
  finally
    dxMapControl1.EndUpdate;
  end;
end;

procedure TfrmAzureServices.StopRouteProviders;
begin
  dxMapControl1AzureMapRouteProvider1.CancelRequests;
end;

procedure TfrmAzureServices.edSearchResize(Sender: TObject);
var
  R: TRect;
begin
  if imgSearchBackground <> nil then
  begin
    R := edSearch.BoundsRect;
    R.Inflate(ScaleFactor.Apply(12), ScaleFactor.Apply(12));
    imgSearchBackground.BoundsRect := R;
  end;
end;

procedure TfrmAzureServices.CreateRouteLine(ARoute: TdxAzureMapRouteItem);
var
  APolyline: TdxMapPolyline;
  ALeg: TdxAzureMapRouteLeg;
  APoint: TdxMapControlGeoPoint;
begin
  APolyline := dxMapControl1ItemLayer1.AddItem(TdxMapPolyline) as TdxMapPolyline;
  for ALeg in ARoute.Legs do
    for APoint in ALeg.Points do
      APolyline.GeoPoints.Add.GeoPoint := APoint;
  APolyline.Style.BorderColor := $9F0000FF;
  APolyline.Style.BorderWidth := 4;
  APolyline.Hint := Format('Distance: %s, Duration: %s', [GetTravelDistanceStr(ARoute.Summary.LengthInMeters / 1000),
    GetTravelDurationStr(ARoute.Summary.TravelTimeInSeconds)]);
  APolyline.Tag := TdxNativeInt(ARoute);
  FRoutes.Add(APolyline);
end;

procedure TfrmAzureServices.btnShowAllRouteClick(Sender: TObject);
begin
  ZoomToCurrentRoute;
end;

procedure TfrmAzureServices.cbRoutesPropertiesEditValueChanged(Sender: TObject);
var
  I: Integer;
  ARoute: TdxAzureMapRouteItem;
  AInstruction: TdxAzureMapRouteInstruction;
  AInstructionGroup: TdxAzureMapRouteInstructionGroup;
begin
  if cbRoutes.ItemIndex = -1 then
    Exit;
  ARoute := cbRoutes.ItemObject as TdxAzureMapRouteItem;
  lvWaypoints.Clear;
  if ARoute <> nil then
  begin
    for AInstructionGroup in ARoute.Guidance.InstructionGroups do
      for I := AInstructionGroup.FirstInstructionIndex to AInstructionGroup.LastInstructionIndex do
      begin
        AInstruction := ARoute.Guidance.Instructions[I];
        lvWaypoints.AddItem(AInstruction.Message, AInstruction);
      end;
    dxMapControl1ItemLayer1.MapItems.BeginUpdate;
    try
      for I := 0 to FRoutes.Count - 1 do
        FRoutes[I].Visible := FRoutes[I].Tag = TdxNativeInt(ARoute);
    finally
      dxMapControl1ItemLayer1.MapItems.EndUpdate;
    end;
  end;
end;

procedure TfrmAzureServices.lvWaypointsResize(Sender: TObject);
begin
  lvWaypointsColumn1.Width := lvWaypoints.ClientWidth - ScaleFactor.Apply(4);
end;

procedure TfrmAzureServices.lvWaypointsSelectItem(Sender: TdxCustomListView; AItem: TdxListItem; ASelected: Boolean);
var
  AInstruction: TdxAzureMapRouteInstruction;
begin
  if not ASelected then
    Exit;
  AInstruction := AItem.Data;
  miManeuverPoint.Location.GeoPoint := AInstruction.Point;
  dxMapControl1.BeginUpdate;
  try
    dxMapControl1.CenterPoint := miManeuverPoint.Location;
    dxMapControl1.ZoomLevel := 17;
  finally
    dxMapControl1.EndUpdate;
  end;
  miManeuverPoint.Visible := True;
end;

procedure TfrmAzureServices.edSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  AParams: IdxAzureMapGeocodeQueryParams;
begin
  if (Key = VK_RETURN) and (Trim(edSearch.Text) <> '') then
  begin
    dxMapControl1AzureMapGeocodeProvider1.CancelRequests;
    ClearMapItems<TdxMapPushpin>(FSearchPins);

    AParams := dxMapControl1AzureMapGeocodeProvider1.CreateQueryParams;
    AParams.Query := Trim(edSearch.Text);
    dxMapControl1AzureMapGeocodeProvider1.ExecuteAsync(AParams);
    if FLongRequestDialog.ShowModal = mrAbort then
      dxMapControl1AzureMapGeocodeProvider1.CancelRequests;
  end;
end;

procedure TfrmAzureServices.ClearAllPins;
begin
  ClearMapItems<TdxMapPushpin>(FRoutePins);
  ClearMapItems<TdxMapPushpin>(FSearchPins);
end;

procedure TfrmAzureServices.ClearAllRouteInfo;
begin
  ClearAllPins;
  ClearRoutePath;
end;

function TfrmAzureServices.GetDescription: string;
begin
  Result := 'This demo illustrates how to create a route between points on the map using the Map Control and data from Azure Services';
end;

initialization
  TfrmAzureServices.Register;

end.
