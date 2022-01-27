Select * from AvgSold$_Mun;
Select * from public."REALESTATE";
Select * from styleAndPrice;


SELECT COUNT(style),
	municipality
INTO MunicipalityStyleCount
FROM "REALESTATE"
GROUP BY municipality;

Select * from MunicipalityStyleCount;