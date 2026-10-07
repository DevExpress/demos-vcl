unit dxMapControlWorldWeatherFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.StrUtils, Vcl.StdCtrls, Vcl.ExtCtrls, System.RTLConsts, System.Types,
  cxGraphics, cxControls, cxLookAndFeels, dxXmlDoc, dxCore, cxGeometry,
  dxCoreClasses, cxLookAndFeelPainters, cxContainer, cxEdit, dxGdiPlusClasses,
  cxGroupBox, cxClasses, dxBar, dxRibbonSkins, dxRibbon,
  dxMapControlTypes, dxMapControl, dxMapControlOpenStreetMapImageryDataProvider,
  dxCustomMapItemLayer, dxMapItemLayer, dxMapLayer, dxMapImageTileLayer, dxMapItem,
  dxMapControlHttpRequest,
  dxMapControlBaseFormUnit, dxScreenTip, dxCustomHint, cxHint, Vcl.ImgList,
  OpenWeatherMapService, dxRibbonCustomizationForm, dxLayoutContainer, dxLayoutControl, cxImageList,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, dxInputDialogs, dxMessageDialog, System.Net.URLClient, System.ImageList;

type
  TfrmWorldWeather = class(TdxMapControlDemoUnitForm)
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ImageTileLayer2: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    cxHintStyleController1: TcxHintStyleController;
    dxScreenTipRepository1: TdxScreenTipRepository;
    dxScreenTipRepository1ScreenTip1: TdxScreenTip;
    ListBox1: TListBox;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxRibbonPopupMenu1: TdxRibbonPopupMenu;
    ShowWeatherForGeoPoint: TdxBarButton;
    Hidecity1: TdxBarButton;
    ilSmallBarIcons: TcxImageList;
    ilLargeBarIcons: TcxImageList;
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure ShowWeatherForGeoPointClick(Sender: TObject);
    procedure Hidecity1Click(Sender: TObject);
    procedure dxRibbonPopupMenu1Popup(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FCelsius: Boolean;
    FWeatherInfos: TWeatherInfos;
    FHotCityName: string;
    FNewGeoPoint: TdxMapControlGeoPoint;
    function GetHottrackedMapItem: TdxMapCustomElement;
    procedure WeatherInfoAdded(ASender: TObject; AInfo: TWeatherInfo);
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
  end;

implementation

uses
  WorldWeatherChangeVisibilityDialog;

{$R *.dfm}

procedure TfrmWorldWeather.ShowWeatherForGeoPointClick(Sender: TObject);
var
  AWeatherInfo, AExistingWeatherInfo: TWeatherInfo;
begin
  if FWeatherInfos.GetInfo(FNewGeoPoint, AWeatherInfo) then
    if FWeatherInfos.IsInfoExists(AWeatherInfo.CityId, AExistingWeatherInfo) then
    begin
      AWeatherInfo.Free;
      AExistingWeatherInfo.Visible := True;
    end
    else
    begin
      FWeatherInfos.AddInfo(AWeatherInfo);
      dxMapControl1.Select(AWeatherInfo.MapItem);
    end;
end;

procedure TfrmWorldWeather.WeatherInfoAdded(ASender: TObject;
  AInfo: TWeatherInfo);
var
  AItem: TdxMapCustomElement;
  AScreenTip: TdxScreenTip;
  AText: string;
begin
  dxMapControl1ItemLayer1.MapItems.BeginUpdate;
  try
    AItem := dxMapControl1ItemLayer1.AddItem(TdxMapCustomElement) as TdxMapCustomElement;
    AScreenTip := dxScreenTipRepository1.Items.Add;
    AItem.ScreenTip := AScreenTip;
    AInfo.MapItem := AItem;
    AItem.Location.GeoPoint := AInfo.GeoPoint;
    AInfo.UpdateItemText(FCelsius);
    with AScreenTip do
    begin
      Header.Text := AInfo.FullCityName;
      Description.GlyphFixedWidth := False;
      Description.PlainText := False;
      AText := dxScreenTipRepository1ScreenTip1.Description.Text;
      AText := StringReplace(AText, '%Pressure%', AInfo.Pressure, []);
      AText := StringReplace(AText, '%Wind%', AInfo.Wind, []);
      AText := StringReplace(AText, '%Humidity%', AInfo.Humidity, []);
      Description.Text := AText;
    end;
    AInfo.UpdateItemImage;
  finally
    dxMapControl1ItemLayer1.MapItems.EndUpdate;
  end;
end;

procedure TfrmWorldWeather.Hidecity1Click(Sender: TObject);
begin
  FWeatherInfos.HideInfo(FHotCityName);
end;

procedure TfrmWorldWeather.dxBarButton10Click(Sender: TObject);
var
  AWeatherInfo: TWeatherInfo;
  ACityName: string;
begin
  if dxInputQuery(Application.Title, 'Enter city name:', ACityName) then
    if not FWeatherInfos.IsInfoExists(ACityName, AWeatherInfo) then
      if FWeatherInfos.GetInfo(ACityName, AWeatherInfo) then
      begin
        FWeatherInfos.AddInfo(AWeatherInfo);
        AWeatherInfo.MapItem.Selected := True;
        dxMapControl1.CenterPoint := AWeatherInfo.MapItem.Location;
      end
      else
        dxShowMessage(Format('Cannot find weather info for ''%s''', [ACityName]))
    else
      AWeatherInfo.Visible := True;
end;

procedure TfrmWorldWeather.dxBarButton11Click(Sender: TObject);
var
  I: Integer;
  AWeatherInfo: TWeatherInfo;
begin
  WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items.Clear;
  for I := 0 to FWeatherInfos.Items.Count - 1 do
  begin
    AWeatherInfo := FWeatherInfos.Items[I];
    WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items.Add.Text := AWeatherInfo.FullCityName;
    if AWeatherInfo.Visible then
      WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items[I].State := cbsChecked
    else
      WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items[I].State := cbsUnchecked;
  end;
  if WorldWeatherChangeVisibilityDialogForm.ShowModal = mrOk then
    for I := 0 to WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items.Count - 1 do
      if FWeatherInfos.IsInfoExists(WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items[I].Text, AWeatherInfo) then
        AWeatherInfo.Visible := (WorldWeatherChangeVisibilityDialogForm.cxCheckListBox1.Items[I].State = cbsChecked);
end;

procedure TfrmWorldWeather.dxBarButton1Click(Sender: TObject);
var
  ATag: Integer;
begin
  ATag := (Sender as TComponent).Tag;
  dxMapControl1ImageTileLayer2.Visible := ATag > 0;
  if ATag > 0 then
  begin
    (dxMapControl1ImageTileLayer2.Provider as TdxMapControlOpenStreetMapImageryDataProvider).UrlTemplate :=
      Format(AdditionalLayerUri, [AdditionalLayerSubUri[ATag - 1], GetKey]);
    dxMapControl1ImageTileLayer2.Visible := True;
  end;
end;

procedure TfrmWorldWeather.dxBarButton8Click(Sender: TObject);
begin
  FCelsius := (Sender as TComponent).Tag = 0;
  dxMapControl1ItemLayer1.MapItems.BeginUpdate;
  FWeatherInfos.UpdateItemText(FCelsius);
  dxMapControl1ItemLayer1.MapItems.EndUpdate;
end;

procedure TfrmWorldWeather.dxRibbonPopupMenu1Popup(Sender: TObject);
var
  AMapItem: TdxMapCustomElement;
begin
  inherited;

  if not dxMapControl1.HitTest.HitAtNavigationPanel then
  begin
    ShowWeatherForGeoPoint.Visible := ivAlways;
    FNewGeoPoint := dxMapControl1ImageTileLayer1.ScreenPointToGeoPoint(dxPointDouble(dxMapControl1.HitTest.HitPoint));
    ShowWeatherForGeoPoint.Caption := Format('Show weather info for (%.6f, %.6f)',
      [FNewGeoPoint.Latitude, FNewGeoPoint.Longitude]);
  end
  else
    ShowWeatherForGeoPoint.Visible := ivNever;
  AMapItem := GetHottrackedMapItem;
  if AMapItem <> nil then
    Hidecity1.Visible := ivAlways
  else
    Hidecity1.Visible := ivNever;
  if Hidecity1.Visible = ivAlways then
  begin
    FHotCityName := FWeatherInfos.GetInfoByMapItem(AMapItem).FullCityName;
    Hidecity1.Caption := Format('Hide weather info for %s', [FHotCityName]);
  end;
end;

procedure TfrmWorldWeather.FormCreate(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  FCelsius := True;
  FWeatherInfos := TWeatherInfos.Create;
  FWeatherInfos.OnItemAdded := WeatherInfoAdded;
  for I := 0 to ListBox1.Count - 1 do
  begin
    FWeatherInfos.LoadInfoAsync(ListBox1.Items[I]);

  end;
  CheckSynchronize;
end;

procedure TfrmWorldWeather.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FWeatherInfos);
  inherited;
end;

function TfrmWorldWeather.GetDescription: string;
begin
  Result := 'The map control allows you to visualize different georeferenced data.' +
    ' For example, you can display weather data from various weather services. In this demo, you can see the current weather in the world''s largest cities. ' +
    'This demo''s weather data is from the OpenWeatherMap service (http://www.openweathermap.org).';
end;

class function TfrmWorldWeather.GetID: Integer;
begin
  Result := 1;
end;

class function TfrmWorldWeather.GetLoadingInfo: string;
begin
  Result := 'World Weather Demo';
end;

function TfrmWorldWeather.GetHottrackedMapItem: TdxMapCustomElement;
begin
  Result := nil;
  if (dxMapControl1.HitTest.HitObject <> nil) and
    (dxMapControl1.HitTest.HitObject is TdxMapCustomElementViewInfo) then
    Result := TdxMapCustomElementViewInfo(dxMapControl1.HitTest.HitObject).Item as TdxMapCustomElement;
end;

initialization
  TfrmWorldWeather.Register;

end.
