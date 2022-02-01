Select * from AvgSold$_Mun;
Select * from public."REALESTATE";
Select * from styleAndPrice;


SELECT municipality, style , COUNT(style)
INTO Stylecount
FROM "REALESTATE"
GROUP BY municipality, style;

SELECT municipality, COUNT(style)
INTO Stylecount
FROM "REALESTATE"
GROUP BY municipality;

Select * from Stylecount;


Select * from MunicipalityStyleCount;

