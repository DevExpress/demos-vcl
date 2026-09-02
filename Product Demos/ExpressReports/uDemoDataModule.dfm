object DemoDataModule: TDemoDataModule
  Height = 182
  Width = 301
  object dxReportDataConnectionManager: TdxBackendDataConnectionManager
    Left = 128
    Top = 24
    object ReportsNWindConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'NWindConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\nwind.db; M' +
        'ode=ReadOnly'
    end
    object ReportsContactsConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'ContactsConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\Contacts.db' +
        '; Mode=ReadOnly'
    end
    object ReportsCountriesConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'CountriesConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\Countries.d' +
        'b; Mode=ReadOnly'
    end
    object ReportsHomesConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'HomesConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\homes.db; M' +
        'ode=ReadOnly'
    end
    object ReportsVehiclesDBConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'VehiclesDBConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\vehicles.db' +
        '; Mode=ReadOnly'
    end
    object ReportsDevAvConnectionString: TdxBackendDatabaseSQLConnection
      DisplayName = 'DevAvConnectionString'
      ConnectionString = 
        'XpoProvider=SQLite; Data Source=|DataDirectory|\Data\devav.sqlit' +
        'e3; Mode=ReadOnly'
    end
  end
end
