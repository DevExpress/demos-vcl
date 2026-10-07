unit MainData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, dxmdaset, dxCore;

type
  TdmMain = class(TDataModule)
    mdPopulation: TdxMemData;
    mdPopulationYear: TIntegerField;
    mdOutsideVendorCosts: TdxMemData;
    mdSales: TdxMemData;
    mdOutsideVendorCostsYear: TIntegerField;
    dsOutsideVendorCosts: TDataSource;
    mdOutsideVendorCostsDevAVNorth: TFloatField;
    mdOutsideVendorCostsDevAVSouth: TFloatField;
    dsSales: TDataSource;
    mdSales2018: TFloatField;
    mdSales2019: TFloatField;
    mdSales2020: TFloatField;
    dsPopulation: TDataSource;
    mdPopulationEurope: TIntegerField;
    mdPopulationAfrica: TIntegerField;
    mdPopulationAmericas: TIntegerField;
    mdSalesRegion: TWideStringField;
    mdWebSite: TdxMemData;
    dsWebSite: TDataSource;
    mdWebSiteReportDate: TDateField;
    mdWebSiteTrafficTime: TIntegerField;
    mdWebSiteResponseTime: TIntegerField;
    mdWebSitePageLoadTime: TFloatField;
    mdWebSiteMemoryUsage: TIntegerField;
    mdWebSiteCPUUsage: TIntegerField;
    mdWebSiteClientErrors: TIntegerField;
    mdWebSiteServerErrors: TIntegerField;
    mdWebSiteNewVisitors: TIntegerField;
    mdWebSiteReturnVisitors: TIntegerField;
    mdInternetLanguages: TdxMemData;
    dsInternetLanguages: TDataSource;
    mdInternetLanguagesLanguage: TStringField;
    mdInternetLanguagesPercent: TFloatField;
    mdSales2: TdxMemData;
    mdSales2Month: TStringField;
    mdSales2Sales: TFloatField;
    mdSales2Price: TFloatField;
    mdSales2Income: TFloatField;
    dsSales2: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure mdSales2CalcFields(DataSet: TDataSet);
  private
    procedure PopulateOutsideVendorCosts;
    procedure PopulateSales;
    procedure PopulateWebSite;
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

uses System.DateUtils, System.Math;

{ TdmMain }

procedure TdmMain.DataModuleCreate(Sender: TObject);
begin
  mdInternetLanguages.Active := True;
  mdPopulation.Active := True;
  PopulateOutsideVendorCosts;
  PopulateSales;
  PopulateWebSite;
end;

procedure TdmMain.mdSales2CalcFields(DataSet: TDataSet);
begin
  mdSales2Income.Value := mdSales2Price.Value * mdSales2Sales.Value;
end;

procedure TdmMain.PopulateOutsideVendorCosts;

  procedure AddRecord(AYearOffset: Integer; const ACost1, ACost2: Double);
  begin
    mdOutsideVendorCosts.Append;
    mdOutsideVendorCostsYear.Value := Trunc(IncYear(Date, AYearOffset));
    mdOutsideVendorCostsDevAVNorth.Value := ACost1;
    mdOutsideVendorCostsDevAVSouth.Value := ACost2;
    mdOutsideVendorCosts.Post;
  end;

begin
  with mdOutsideVendorCosts do
  begin
    DisableControls;
    try
      While not Eof do 
        Delete;
      Active := True;
      AddRecord(-6, 362.5, 277.0);
      AddRecord(-5, 348.4, 328.5);
      AddRecord(-4, 279.0, 297.0);
      AddRecord(-3, 230.9, 255.3);
      AddRecord(-2, 203.5, 173.5);
      AddRecord(-1, 197.1, 131.8);
    finally
      EnableControls;
    end;
  end;
end;

procedure TdmMain.PopulateSales;

  procedure AddRecord(const ARegion: string; const V1, V2, V3: Double);
  begin
    mdSales.Append;
    mdSalesRegion.Value := ARegion;
    mdSales2018.Value := V1;
    mdSales2019.Value := V2;
    mdSales2020.Value := V3;
    mdSales.Post;
  end;

begin
  with mdSales do
  begin
    DisableControls;
    While not Eof do 
      Delete;
    try
      Active := True;
      AddRecord('Asia', 4.2372, 4.7685, 5.289);
      AddRecord('Australia', 1.7871, 1.9576, 2.2727);
      AddRecord('Europe', 3.0884, 3.3579, 3.7257);
      AddRecord('North America', 3.4855, 3.7477, 4.1825);
      AddRecord('South America', 1.6027, 1.8237, 2.1172);
    finally
      EnableControls;
    end;
  end;
end;

procedure TdmMain.PopulateWebSite;

  procedure AddRecord(AIndex: Integer);
  begin
    mdWebSite.Append;
    mdWebSiteReportDate.Value := Today - 100 + AIndex;
    mdWebSiteTrafficTime.Value := 3 + Random(9);
    mdWebSiteResponseTime.Value := 40 + Random(70);
    mdWebSitePageLoadTime.Value := 0.5 + Random(1000) / 1000 * 3;
    mdWebSiteMemoryUsage.Value := 500 + Random(1500);
    mdWebSiteCPUUsage.Value := 10 + Random(67);
    mdWebSiteClientErrors.Value := 2 + Random(43);
    mdWebSiteServerErrors.Value := 2 + Random(5);
    mdWebSiteNewVisitors.Value := 18 + Random(60);
    mdWebSiteReturnVisitors.Value := Random(mdWebSiteNewVisitors.Value);
    mdWebSite.Post;
  end;

var
  I: Integer;
begin
  mdWebSite.Active := True;
  mdWebSite.DisableControls;
  try
    while not mdWebSite.Eof do
      mdWebSite.Delete;
    for I := 0 to 30 do
      AddRecord(I);
  finally
    mdWebSite.EnableControls;
  end;
end;

end.
