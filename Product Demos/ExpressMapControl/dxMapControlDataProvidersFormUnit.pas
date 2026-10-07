unit dxMapControlDataProvidersFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, dxMapControlBaseFormUnit, dxCore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxMapControlTypes,
  Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, cxClasses,
  dxMapControl, dxMapLayer, dxMapImageTileLayer, dxCustomMapItemLayer, dxMapItemLayer,
  dxMapItem, dxAzureMapImageryDataProvider, dxMapControlOpenStreetMapImageryDataProvider,
  dxRibbonSkins, dxRibbon, dxBar, Vcl.ImgList, dxRibbonCustomizationForm, dxLayoutContainer, dxLayoutControl, cxImageList,
  dxLayoutLookAndFeels, dxLayoutControlAdapters, dxAzureMapTypes;

type
  TfrmDataProviders = class(TdxMapControlDemoUnitForm)
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    dxMapControl1ItemLayer1CustomElement1: TdxMapCustomElement;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarBtnAzureSatellite: TdxBarLargeButton;
    dxBarBtnAzureHybrid: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarBtnAzureRoad: TdxBarLargeButton;
    ilSmallBarIcons: TcxImageList;
    ilLargeBarIcons: TcxImageList;
    dxMapControl1ImageTileLayer2: TdxMapImageTileLayer;
    procedure FormCreate(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
  private
    FTileset: TdxAzureMapTileset;
    FProviderId: Integer;
    procedure UpdateTileset;
    procedure UpdateProvider;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
  end;

implementation

{$R *.dfm}

{ TdxMapControlDemoUnitForm1 }

procedure TfrmDataProviders.dxBarLargeButton3Click(Sender: TObject);
begin
  if (Sender as TComponent).Tag > 0 then
  begin
    FProviderId := 1;
    FTileset := TdxAzureMapTileset((Sender as TComponent).Tag - 1);
  end
  else
    FProviderId := 0;
  UpdateProvider;
end;

procedure TfrmDataProviders.FormCreate(Sender: TObject);
begin
  inherited;

  dxBarBtnAzureSatellite.Tag := Ord(TdxAzureMapTileset.Satellite) + 1;
  dxBarBtnAzureHybrid.Tag := Ord(TdxAzureMapTileset.HybridRoad) + 1;
  dxBarBtnAzureRoad.Tag := Ord(TdxAzureMapTileset.Road) + 1;

  dxMapControl1.BeginUpdate;
  try
    dxMapControl1.CenterPoint := dxMapControl1ItemLayer1CustomElement1.Location;
    dxMapControl1.ZoomLevel := 10;
    dxMapControl1ItemLayer1CustomElement1.Selected := True;
    FProviderId := 1;
    FTileset := TdxAzureMapTileset.HybridRoad;
    UpdateProvider;
  finally
    dxMapControl1.EndUpdate;
  end;
end;

function TfrmDataProviders.GetDescription: string;
begin
  Result := 'This demo illustrates the Map Control displaying maps from different providers. You can use the Provide ' +
            'Demo Options group in the Ribbon UI to switch between "Open Street Map", "Azure Road", "Azure Satellite"' +
            ', and "Azure Hybrid" maps.';
end;

class function TfrmDataProviders.GetID: Integer;
begin
  Result := 0;
end;

class function TfrmDataProviders.GetLoadingInfo: string;
begin
  Result := 'Data Providers Demo';
end;

procedure TfrmDataProviders.UpdateTileset;
begin
  if dxMapControl1ImageTileLayer1.Provider is TdxMapControlAzureMapImageryDataProvider then
  begin
    dxMapControl1ImageTileLayer2.Visible := FTileset = TdxAzureMapTileset.HybridRoad;
    if FTileset = TdxAzureMapTileset.HybridRoad then
    begin
      TdxMapControlAzureMapImageryDataProvider(dxMapControl1ImageTileLayer1.Provider).Tileset := TdxAzureMapTileset.Satellite;
      TdxMapControlAzureMapImageryDataProvider(dxMapControl1ImageTileLayer2.Provider).Tileset := TdxAzureMapTileset.HybridRoad;
    end
    else
      TdxMapControlAzureMapImageryDataProvider(dxMapControl1ImageTileLayer1.Provider).Tileset := FTileset;
  end
  else
    dxMapControl1ImageTileLayer2.Visible := False;
end;

procedure TfrmDataProviders.UpdateProvider;
begin
  dxMapControl1.BeginUpdate;
  try
    if FProviderId = 1 then
    begin
      dxMapControl1ImageTileLayer1.ProviderClass := TdxMapControlAzureMapImageryDataProvider;
      TdxMapControlAzureMapImageryDataProvider(dxMapControl1ImageTileLayer1.Provider).AzureKey := DXAzureKey;
      TdxMapControlAzureMapImageryDataProvider(dxMapControl1ImageTileLayer2.Provider).AzureKey := DXAzureKey;
    end
    else
      dxMapControl1ImageTileLayer1.ProviderClass := TdxMapControlOpenStreetMapImageryDataProvider;
    UpdateTileset;
  finally
    dxMapControl1.EndUpdate;
  end;
end;

initialization
  TfrmDataProviders.Register;

end.
