/***************************************************************************************************
FILENAME: RestoreAdventureWorks2016
***************************************************************************************************/
USE [master]
/***************************************************************************************************
NOTES:  IMPORTANT This assumes the SWFL folder is on the F Drive.  You need to modify the Path
"F:\SWFL\AdventureWorks2016\AdventureWorks2016BackupFile" accordingly for where you have the 
SWFL folder installed on your machine.
***************************************************************************************************/
RESTORE DATABASE [AdventureWorks2016]
FROM DISK = N'F:\SWFL\AdventureWorksBackups\AdventureWorks2016.bak'
WITH FILE = 1
	,MOVE N'AdventureWorks2016_Data' TO N'F:\SWFL\AdventureWorks2016\AdventureWorks2016BackupFile\AdventureWorks2016_Data.mdf'
	,MOVE N'AdventureWorks2016_Log' TO N'F:\SWFL\AdventureWorks2016\AdventureWorks2016BackupFile\AdventureWorks2016_Log.ldf'
	,NOUNLOAD
	,STATS = 5
GO
/***************************************************************************************************
NOTES:
***************************************************************************************************/




