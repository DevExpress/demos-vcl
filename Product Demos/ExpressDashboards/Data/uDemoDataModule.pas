{********************************************************************}
{                                                                    }
{           Developer Express Visual Component Library               }
{           ExpressDashboards Library                                }
{                                                                    }
{           Copyright (c) 1998-2026 Developer Express Inc.           }
{           ALL RIGHTS RESERVED                                      }
{                                                                    }
{   The entire contents of this file is protected by U.S. and        }
{   International Copyright Laws. Unauthorized reproduction,         }
{   reverse-engineering, and distribution of all or any portion of   }
{   the code contained in this file is strictly prohibited and may   }
{   result in severe civil and criminal penalties and will be        }
{   prosecuted to the maximum extent possible under the law.         }
{                                                                    }
{   RESTRICTIONS                                                     }
{                                                                    }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES            }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE     }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS    }
{   LICENSED TO DISTRIBUTE THE EXPRESSCORE LIBRARY AND ALL           }
{   ACCOMPANYING VCL CONTROLS AS PART OF AN EXECUTABLE PROGRAM ONLY. }
{                                                                    }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED       }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE         }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE        }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT   }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                       }
{                                                                    }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON        }
{   ADDITIONAL RESTRICTIONS.                                         }
{                                                                    }
{********************************************************************}

unit uDemoDataModule;

{$I cxVer.inc}

interface

uses
  System.Classes, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.UI, FireDAC.Phys.SQLite, FireDAC.Stan.Def,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.Phys.SQLiteDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys,
  cxClasses, dxBackend, dxBackend.ConnectionString.SQL, dxBackend.ConnectionString.JSON.DataSet,
  dxBackend.ConnectionString.JSON, dxDashboard, dxmdaset;

type
  TDemoDataModule = class(TDataModule)
    dxBackendDataConnectionManager: TdxBackendDataConnectionManager;
    RevenueAnalysisConnection: TdxBackendInMemoryJSONConnection;
    TotalSalesConnection: TdxBackendInMemoryJSONConnection;
    HumanResourcesConnection: TdxBackendInMemoryJSONConnection;
    CustomerSupportConnection: TdxBackendInMemoryJSONConnection;
    WebsiteStatisticsConnection: TdxBackendInMemoryJSONConnection;
    SalesConnection: TdxBackendInMemoryJSONConnection;
    SalesDetailsConnection: TdxBackendInMemoryJSONConnection;
    mdSalesOverview: TdxMemData;
    mdSalesOverviewState: TStringField;
    mdSalesOverviewCategory: TStringField;
    mdSalesOverviewCurrentDate: TDateTimeField;
    mdSalesOverviewSales: TCurrencyField;
    mdSalesOverviewSalesTarget: TCurrencyField;
    mdSalesDetails: TdxMemData;
    mdSalesDetailsState: TStringField;
    mdSalesDetailsCategory: TStringField;
    mdSalesDetailsProduct: TStringField;
    mdSalesDetailsCurrentDate: TDateTimeField;
    mdSalesDetailsRevenue: TCurrencyField;
    mdSalesDetailsRevenueTarget: TCurrencyField;
    mdSalesDetailsUnitsSold: TWordField;
    mdSalesDetailsUnitsSoldTarget: TIntegerField;
    mdSalesDetailsReturns: TIntegerField;
    mdSalesDetailsReturnsTarget: TIntegerField;
    mdSalesDetailsUnitsReceived: TIntegerField;
    mdRevenueByIndustry: TdxMemData;
    mdRevenueByIndustryCity: TStringField;
    mdRevenueByIndustryIndustry: TStringField;
    mdRevenueByIndustryState: TStringField;
    mdRevenueByIndustryLatitude: TFloatField;
    mdRevenueByIndustryLongitude: TFloatField;
    mdRevenueByIndustryRevenue: TCurrencyField;
    RevenueByIndustryConnection: TdxBackendDataSetJSONConnection;
    RevenueByIndustryConnectionItem1: TdxBackendDataSetCollectionItem;
    mdCountriesTotal: TdxMemData;
    mdCountriesTotalCountry: TStringField;
    mdCountriesTotalLatitude: TFloatField;
    mdCountriesTotalLongitude: TFloatField;
    mdCountriesTotalYear: TDateTimeField;
    mdCountriesTotalProduction: TFloatField;
    mdCountriesTotalConsumption: TFloatField;
    mdCountriesBySector: TdxMemData;
    mdCountriesBySectorCountry: TStringField;
    mdCountriesBySectorLatitude: TFloatField;
    mdCountriesBySectorLongitude: TFloatField;
    mdCountriesBySectorYear: TDateTimeField;
    mdCountriesBySectorSector: TStringField;
    mdCountriesBySectorConsumption: TFloatField;
    EnergyConsumptionConnection: TdxBackendDataSetJSONConnection;
    EnergyConsumptionConnectionItem1: TdxBackendDataSetCollectionItem;
    EnergyConsumptionConnectionItem2: TdxBackendDataSetCollectionItem;
    EnergyStatisticsConnection: TdxBackendDataSetJSONConnection;
    mdCountries: TdxMemData;
    mdCountriesCountry: TStringField;
    mdCountriesLatitude: TFloatField;
    mdCountriesLongitude: TFloatField;
    mdCountriesYear: TDateTimeField;
    mdCountriesEnergyType: TStringField;
    mdCountriesProduction: TFloatField;
    mdCountriesImport: TFloatField;
    EnergyStatisticsConnectionItem1: TdxBackendDataSetCollectionItem;
    procedure DataModuleCreate(Sender: TObject);
  private
  public
  end;

var
  DemoDataModule: TDemoDataModule;

implementation

{$R *.dfm}
uses
  WebsiteStatisticsDataGenerator,
  System.SysUtils,
  System.IOUtils;

procedure TDemoDataModule.DataModuleCreate(Sender: TObject);
var
  ADataGenerator: TWebsiteStatisticsDataGenerator;
begin
  ADataGenerator := TWebsiteStatisticsDataGenerator.Create;
  WebsiteStatisticsConnection.SetJSONValue(ADataGenerator.JSONString);
  ADataGenerator.Free;
end;

end.
