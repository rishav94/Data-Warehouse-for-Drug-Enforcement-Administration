truncate table Fact_Death_Report;
delete from Dim_Calendar;
delete from Dim_Drug ;
delete from Dim_County ;
delete from Drug_Incident_Mapping;
delete from Source_Data;

DBCC CHECKIDENT ('[Dim_Drug]', RESEED, 0);
DBCC CHECKIDENT ('[Dim_County]', RESEED, 0);
DBCC CHECKIDENT ('[Dim_Calendar]', RESEED, 0);

select * from Source_Data order by AgeCategory