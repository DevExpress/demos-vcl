{********************************************************************}
{                                                                    }
{           Developer Express Visual Component Library               }
{           ExpressReports Library                                   }
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
  cxClasses, dxReport, dxBackend, dxBackend.ConnectionString.SQL, dxBackend.ConnectionString.JSON.DataSet,
  dxBackend.ConnectionString.JSON;

type
  TDemoDataModule = class(TDataModule)
    dxReportDataConnectionManager: TdxBackendDataConnectionManager;
    ReportsNWindConnectionString: TdxBackendDatabaseSQLConnection;
    ReportsContactsConnectionString: TdxBackendDatabaseSQLConnection;
    ReportsCountriesConnectionString: TdxBackendDatabaseSQLConnection;
    ReportsHomesConnectionString: TdxBackendDatabaseSQLConnection;
    ReportsVehiclesDBConnectionString: TdxBackendDatabaseSQLConnection;
    ReportsDevAvConnectionString: TdxBackendDatabaseSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DemoDataModule: TDemoDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
