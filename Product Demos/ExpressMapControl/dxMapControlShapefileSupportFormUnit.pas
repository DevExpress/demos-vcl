unit dxMapControlShapefileSupportFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, System.Math, dxMapControlBaseFormUnit,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxMapControlTypes, cxClasses,
  dxBar, dxMapControl, Vcl.StdCtrls, Vcl.ExtCtrls, cxGroupBox, dxMapItem, dxCoreGraphics,
  dxMapLayer, dxCustomMapItemLayer, dxMapItemFileLayer, Vcl.Menus, Vcl.ActnList,
  dxRibbonSkins, dxRibbonCustomizationForm, dxRibbon, cxLabel, cxRadioGroup,
  cxBarEditItem, dxLayoutContainer, dxLayoutControl, dxLayoutLookAndFeels, dxLayoutControlAdapters, System.Actions,
  dxCore;

type
  TCountryMapKind = (kmkPolitical, kmkGDP, kmkPopulation);

  TfrmShapefileSupport = class(TdxMapControlDemoUnitForm)
    dxMapControl1ItemFileLayer1: TdxMapItemFileLayer;
    ActionList1: TActionList;
    actPopulation: TAction;
    actGdp: TAction;
    actPolitical: TAction;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbon1: TdxRibbon;
    dxBarManager1Bar1: TdxBar;
    Political1: TdxBarButton;
    GDP1: TdxBarButton;
    Population1: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    procedure actPopulationExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxMapControl1ItemFileLayer1GetItemHint(
      Sender: TdxCustomMapItemLayer; Item: TdxMapItem; var AHint: string);
  private
    FMapKind: TCountryMapKind;
    function GetItemColor(AItem: TdxMapItem): TdxAlphaColor;
    procedure SetMapKind(const Value: TCountryMapKind);
    procedure UpdateMap;
  protected
    function GetDescription: string; override;
  public
    class function GetID: Integer; override;
    class function GetLoadingInfo: string; override;

    property MapKind: TCountryMapKind read FMapKind write SetMapKind;
  end;

implementation

{$R *.dfm}

var
  APoliticalMapColors: array [0..9] of TdxAlphaColor = (
    $FFFF5D6A,
    $FF417CD9,
    $FFFFDD74,
    $FF67BF58,
    $FF8C68C3,
    $FF36AACE,
    $FFFF8E60,
    $FF19CC7F,
    $FFE26E4A,
    $FF198AB8);

  AGdpRanges: array [0..10] of Integer = (0, 3000, 10000, 18000, 28000, 44000,
    82000, 185000, 1000000, 2500000, 15000000);
  AGdpMapColors: array [0..9] of TdxAlphaColor = (
    $FF5F8B95,
    $FF799689,
    $FFA2A875,
    $FFCEBB5F,
    $FFF2CB4E,
    $FFF1C149,
    $FFE5A84D,
    $FFD6864E,
    $FFC56450,
    $FFBA4D51);

  APopulationRanges: array [0..9] of Integer = (0, 1000000, 2000000, 5000000,
    10000000, 25000000, 50000000, 100000000, 1000000000, 1500000000);
  MapName: array [TCountryMapKind] of string = ('Political', 'GDP', 'Population');

function GetRange(ARanges: array of Integer; AValue: Double): Integer;
var
  I: Integer;
begin
  for I := 1 to High(ARanges) do
    if AValue < ARanges[I] then
    begin
      Result := I - 1;
      Exit;
    end;
  Result := High(ARanges) - 1;
end;

{ TfrmShapefileSupport }

procedure TfrmShapefileSupport.actPopulationExecute(Sender: TObject);
begin
  MapKind := TCountryMapKind((Sender as TComponent).Tag);
end;

procedure TfrmShapefileSupport.dxMapControl1ItemFileLayer1GetItemHint(
  Sender: TdxCustomMapItemLayer; Item: TdxMapItem; var AHint: string);
var
  AGDP: Double;
  APopulation: Integer;
begin
  case FMapKind of
    kmkPopulation:
      begin
        APopulation := Item.Attributes['POP_EST'];
        AHint := Format('%s: %.0nM', [AHint, APopulation / 1000000]);
      end;
    kmkGDP:
      begin
        AGDP := Item.Attributes['GDP_MD_EST'];
        AHint := Format('%s: $%.0nM', [AHint, AGDP]);
      end;
  end;
end;

procedure TfrmShapefileSupport.FormCreate(Sender: TObject);
begin
  inherited;
  MapKind := kmkGDP;
end;

function TfrmShapefileSupport.GetDescription: string;
begin
  Result := 'This demo illustrates how to generate a map from shape elements stored in a Shapefile.' +
    ' This file contains information on shape contours and additional information like country names, GDP, population, etc.' +
    ' You can use the mouse pointer to select or hover over any country on a map and see related information about this country in a tooltip. Note that the Map Control automatically highlights the currently selected/ hovered shape.';
end;

class function TfrmShapefileSupport.GetID: Integer;
begin
  Result := 4;
end;

function TfrmShapefileSupport.GetItemColor(AItem: TdxMapItem): TdxAlphaColor;
var
  AColorNum: Integer;
  AGdp: Double;
  APopulation: Double;
  R, G, B: Byte;
begin
  case FMapKind of
    kmkPolitical:
      begin
        AColorNum := Min(AItem.Attributes['MAP_COLOR'], 9);
        Result := APoliticalMapColors[AColorNum];
      end;
    kmkGDP:
      begin
        AGdp := AItem.Attributes['GDP_MD_EST'];
        AColorNum := GetRange(AGdpRanges, AGdp);
        Result := AGdpMapColors[AColorNum];
      end
  else // kmkPopulation
    APopulation := AItem.Attributes['POP_EST'];
    AColorNum := GetRange(APopulationRanges, APopulation);
    R := 54 + MulDiv(AColorNum, 255 - 54, 9 - 1);
    G := 170 + MulDiv(AColorNum, 93 - 170, 9 - 1);
    B := 206 + MulDiv(AColorNum, 106 - 206, 9 - 1);
    Result := dxMakeAlphaColor(R, G, B);
  end;
end;

class function TfrmShapefileSupport.GetLoadingInfo: string;
begin
  Result := 'Shapefile Support';
end;

procedure TfrmShapefileSupport.SetMapKind(const Value: TCountryMapKind);
begin
  if FMapKind <> Value then
  begin
    FMapKind := Value;
    UpdateMap;
  end;
end;

procedure TfrmShapefileSupport.UpdateMap;
var
  I: Integer;
  AColor: TdxAlphaColor;
begin
 //cxLabel1.Caption := MapName[FMapKind] + ' map';
 //cxLabel1.Left := 3;
 dxMapControl1ItemFileLayer1.MapItems.BeginUpdate;
 for I := 0 to dxMapControl1ItemFileLayer1.MapItems.Count - 1 do
 begin
   AColor := GetItemColor(dxMapControl1ItemFileLayer1.MapItems[I]);
   dxMapControl1ItemFileLayer1.MapItems[I].Style.Color := AColor;
   dxMapControl1ItemFileLayer1.MapItems[I].StyleHot.Color := AColor;
   dxMapControl1ItemFileLayer1.MapItems[I].StyleSelected.Color := AColor;
 end;
 dxMapControl1ItemFileLayer1.MapItems.EndUpdate;
end;

initialization
  TfrmShapefileSupport.Register;

end.
