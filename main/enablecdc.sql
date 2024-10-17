USE master
GO

ALTER DATABASE central
SET ALLOW_SNAPSHOT_ISOLATION ON;
GO

ALTER DATABASE sucursal1
SET ALLOW_SNAPSHOT_ISOLATION ON;
GO

ALTER DATABASE sucursal2
SET ALLOW_SNAPSHOT_ISOLATION ON;
GO

USE central;
GO
EXEC sys.sp_cdc_enable_db;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'CatLineasAereas',
    @role_name = NULL,
    @supports_net_changes = 1;
GO

USE sucursal1;
GO
EXEC sys.sp_cdc_enable_db;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Pasajeros',
    @role_name = NULL,
    @supports_net_changes = 1;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Vuelos',
    @role_name = NULL,
    @supports_net_changes = 1;
GO

USE sucursal2;
GO
EXEC sys.sp_cdc_enable_db;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Pasajeros',
    @role_name = NULL,
    @supports_net_changes = 1;
GO

EXEC sys.sp_cdc_enable_table
    @source_schema = N'dbo',
    @source_name = N'Vuelos',
    @role_name = NULL,
    @supports_net_changes = 1;
GO