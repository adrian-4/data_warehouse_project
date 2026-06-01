/*
Script Purpose: 
    - checks if 'DataWarehouse' database exists.
    - if not, creates it otherwise dropped and recreated.
    - it also sets up 3 schemas within the database: 'bronze', 'silver' and 'gold'.
*/


USE master;
GO


 -- Drop and recreate the DataWarehouse database
 IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
 BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
 END;
 GO

 -- Create DataWarehouse database 
 CREATE DATABASE DataWarehouse;
 GO

 USE DataWarehouse;
 GO


 -- Create Schemas 
 CREATE SCHEMA bronze;
 GO
 CREATE SCHEMA silver;
 GO
 CREATE SCHEMA gold;
 GO






