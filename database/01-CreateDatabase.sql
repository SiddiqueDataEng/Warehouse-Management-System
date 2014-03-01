/*
 * Warehouse Management System
 * Project #22 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, Indexing
 * Created: 2013
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'WarehouseDB')
BEGIN
    ALTER DATABASE WarehouseDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE WarehouseDB;
END
GO

CREATE DATABASE WarehouseDB
ON PRIMARY
(
    NAME = 'WarehouseDB_Data',
    FILENAME = 'C:\SQLData\WarehouseDB_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'WarehouseDB_Log',
    FILENAME = 'C:\SQLData\WarehouseDB_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE WarehouseDB SET RECOVERY SIMPLE;
ALTER DATABASE WarehouseDB SET AUTO_UPDATE_STATISTICS ON;
GO

USE WarehouseDB;
GO

PRINT 'Database WarehouseDB created successfully';
PRINT 'Project: Warehouse Management System';
PRINT 'Description: Inbound, outbound, and storage locations management';
GO
