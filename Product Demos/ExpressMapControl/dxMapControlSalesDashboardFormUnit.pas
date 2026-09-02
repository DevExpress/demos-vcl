unit dxMapControlSalesDashboardFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.Generics.Collections, System.StrUtils,
  dxMapControlBaseFormUnit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxMapControlTypes, cxClasses,
  dxBar, dxMapControl, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, dxCore,
  dxCustomMapItemLayer, dxMapItemLayer, dxAzureMapImageryDataProvider,
  dxMapLayer, dxMapImageTileLayer, cxStyles, cxCustomData, dxGaugeCustomScale,
  dxGaugeQuantitativeScale, dxGaugeCircularScale, dxGaugeControl, cxGridLevel,
  cxGridChartView, cxGridCustomView, cxGrid, cxLabel, dxScreenTip, dxCustomHint,
  cxHint, dxGDIPlusClasses, dxMapItem,
  Sales, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxLayoutControlAdapters, dxAzureMapTypes;

type
  TfrmSalesDashboard = class(TdxMapControlDemoUnitForm)
    dxMapControl1ImageTileLayer1: TdxMapImageTileLayer;
    dxMapControl1ItemLayer1: TdxMapItemLayer;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxImageCollection1: TcxImageCollection;
    icShopImage: TcxImageCollectionItem;
    ShopA: TcxImageCollectionItem;
    ShopB: TcxImageCollectionItem;
    ShopC: TcxImageCollectionItem;
    ShopD: TcxImageCollectionItem;
    ShopE: TcxImageCollectionItem;
    dxScreenTipRepository1: TdxScreenTipRepository;
    dxScreenTipRepository1ScreenTip1: TdxScreenTip;
    cxHintStyleController1: TcxHintStyleController;
    liGrid: TdxLayoutItem;
    cxGrid1: TcxGrid;
    cxGrid1ChartView1: TcxGridChartView;
    cxGrid1ChartView1Series1: TcxGridChartSeries;
    cxGridLevel1: TcxGridLevel;
    liTotalSales: TdxLayoutItem;
    dxGaugeControl1: TdxGaugeControl;
    dxGaugeControl1CircularHalfScale1: TdxGaugeCircularHalfScale;
    liDoSelectShopCaption: TdxLayoutLabeledItem;
    dxLayoutEmptySpaceItem1: TdxLayoutEmptySpaceItem;
    procedure FormCreate(Sender: TObject);
    procedure dxMapControl1SelectionChanged(Sender: TObject);
    procedure cxGrid1ChartView1GetValueHint(Sender: TcxGridChartView;
      ASeries: TcxGridChartSeries; AValueIndex: Integer; var AHint: string);
  private
    FSalesType: IXMLSalesType;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;
    procedure ShopSelected(AShops: TInterfaceList);
  end;

implementation

{$R *.dfm}

{ TdxMapControlDemoUnitForm1 }

procedure TfrmSalesDashboard.cxGrid1ChartView1GetValueHint(
  Sender: TcxGridChartView; ASeries: TcxGridChartSeries; AValueIndex: Integer;
  var AHint: string);
begin
  AHint := Format('%s: %s',
    [Sender.Categories.VisibleDisplayTexts[AValueIndex],
    FormatFloat('$,0', ASeries.Values[AValueIndex])]);
end;

procedure TfrmSalesDashboard.dxMapControl1SelectionChanged(Sender: TObject);
var
  AShops: TInterfaceList;
  I: Integer;
begin
  AShops := TInterfaceList.Create;
  for I := 0 to dxMapControl1.SelectedMapItemCount - 1 do
    AShops.Add(FSalesType.Shop[(dxMapControl1.SelectedMapItems[I] as TdxMapCustomElement).Tag]);
  ShopSelected(AShops);
  AShops.Free;
end;

procedure TfrmSalesDashboard.FormCreate(Sender: TObject);
var
  I: Integer;
  AItem: TdxMapCustomElement;
  AScreenTip: TdxScreenTip;
  AText: string;
  AImageCollectionItem: TcxImageCollectionItem;
begin
  FSalesType := LoadSales('Sales.xml');
  dxMapControl1.OptionsBehavior.Animation := False;
  dxMapControl1ItemLayer1.MapItems.BeginUpdate;
  try
    for I := 0 to FSalesType.Count - 1 do
    begin
      AItem := dxMapControl1ItemLayer1.AddItem(TdxMapCustomElement) as TdxMapCustomElement;
      AItem.Image.Assign(icShopImage.Picture.Graphic);
      AItem.Location.Latitude := dxStrToFloat(FSalesType.Shop[I].Latitude);
      AItem.Location.Longitude := dxStrToFloat(FSalesType.Shop[I].Longitude);
      AItem.Text := FSalesType.Shop[I].ShopName;
      AItem.Tag := I;
      AScreenTip := dxScreenTipRepository1.Items.Add;
      AItem.ScreenTip := AScreenTip;
      AScreenTip.Header.Text := FSalesType.Shop[I].ShopName;
      if cxImageCollection1.Items.FindItemByName(StringReplace(FSalesType.Shop[I].ShopName, ' ', '', []), AImageCollectionItem) then
        AScreenTip.Description.Glyph.Assign(AImageCollectionItem.Picture.Graphic);

      AScreenTip.Description.GlyphFixedWidth := False;
      AScreenTip.Width := 400;
      AScreenTip.Description.PlainText := False;
      AText := dxScreenTipRepository1.Items[0].Description.Text;
      AText := StringReplace(AText, '[Address]', FSalesType.Shop[I].ShopAddr, []);
      AText := StringReplace(AText, '[Phone]', FSalesType.Shop[I].ShopPhone, []);
      AText := StringReplace(AText, '[Fax]', FSalesType.Shop[I].ShopFax, []);
      AScreenTip.Description.Text := AText;
    end;
  finally
    dxMapControl1ItemLayer1.MapItems.EndUpdate;
  end;
  dxMapControl1.ZoomLevel := 11;
  dxMapControl1.CenterPoint.GeoPoint := dxMapControlGeoPoint(37.6837779702101, -122.453776121861);
  dxMapControl1ItemLayer1.MapItems[3].Selected := True;
  (dxMapControl1ImageTileLayer1.Provider as TdxMapControlAzureMapImageryDataProvider).AzureKey := DXAzureKey;
  (dxMapControl1ImageTileLayer1.Provider as TdxMapControlAzureMapImageryDataProvider).Tileset := TdxAzureMapTileset.Road;
  dxMapControl1.OptionsBehavior.Animation := True;
end;

function TfrmSalesDashboard.GetDescription: string;
begin
  Result := 'This demo illustrates how to use the Map control to create a dashboard.' +
   ' This dashboard provides information about the previous month''s sales from five shops, and the location of each shop on the map.' +
   ' You can click a shop''s icon to get information about its sales from the previous month and display the shop''s statistics on a chart. The gauge needle displays an individual shop''s current total sales.';
end;

class function TfrmSalesDashboard.GetID: Integer;
begin
  Result := 2;
end;

class function TfrmSalesDashboard.GetLoadingInfo: string;
begin
  Result := 'Sales Dashboard Demo';
end;

procedure TfrmSalesDashboard.ShopSelected(AShops: TInterfaceList);
var
  I, J: Integer;
  ACategoryIndex: Integer;
  ATotalSales: Single;
  AProductSale, ACurrentShopProductSale: Single;
  AProductName: string;
  AShop: IXMLShopType;
  AProductSales: TDictionary<string, Single>;
  AShopNames: string;
begin
  AProductSales := TDictionary<string, Single>.Create;
  try
    liGrid.Visible := AShops.Count > 0;
    liTotalSales.Visible := liGrid.Visible;
    liDoSelectShopCaption.Visible := not liGrid.Visible;
    AShopNames := '';
    for I := 0 to AShops.Count - 1 do
    begin
      AShop := AShops[I] as IXMLShopType;
      for J := 0 to AShop.ShopStatistics.Count - 1 do
      begin
        AProductName := AShop.ShopStatistics.Statistic[J].ProductsGroupName;
        ACurrentShopProductSale := dxStrToFloat(AShop.ShopStatistics.Statistic[J].ProductGroupSales);
        if AProductSales.TryGetValue(AProductName, AProductSale) then
          AProductSales[AProductName] := AProductSale + ACurrentShopProductSale
        else
          AProductSales.Add(AProductName, ACurrentShopProductSale);
      end;
      AShopNames := AShopNames + AShop.ShopName + IfThen(I < AShops.Count - 1, ', ');
    end;
    if AShops.Count = FSalesType.Count then
      AShopNames := 'All Shops';
    cxGrid1ChartView1.Title.Text := 'Sales: ' + AShopNames;

    ATotalSales := 0;
    cxGrid1ChartView1.DataController.RecordCount := 0;
    for AProductName in AProductSales.Keys do
    begin
      AProductSale := AProductSales[AProductName];
      ACategoryIndex := cxGrid1ChartView1Series1.AddValue(AProductSale);
      cxGrid1ChartView1.Categories.Values[ACategoryIndex] := AProductName;
      ATotalSales := ATotalSales + AProductSale;
    end;

    dxGaugeControl1CircularHalfScale1.Value := ATotalSales / 1000;
  finally
    AProductSales.Free;
  end;
end;

initialization
  TfrmSalesDashboard.Register;

end.
