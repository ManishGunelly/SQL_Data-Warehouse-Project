/*
=====================================================
Create Database and Schemas
=====================================================
Script Purpose:
  This Script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within 
  the database: 'Bronze', 'Silver' , and 'Gold'.

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists. 
  All data in the database will be permanently deleted. Proceed with caution and 
  ensure you have proper backups before running this script.
*/

USE master;
Go

-- Drop and recreate the "DataWarehouse" database
  If Exists (Select 1 From sys.databases Where name = 'DataWarehouse')
  Begin
       Alter DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
       Drop DATABASE DataWarehouse;
END;
GO

USE DataWarehouse;
GO
    
-- Create Database 'DataWarehouse'

USE master;

Create Database DataWarehouse;

Use DataWarehouse;
GO

-- Create Schemas

Create SCHEMA Bronze;
Go
  
Create SCHEMA Silver;
Go
  
Create SCHEMA Gold;
Go
