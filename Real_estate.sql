Select * from REALESTATE;

CREATE TABLE PUBLIC."MunicipalityPrice"(ID int,
	municipality VARCHAR,
	list_price money,
	sold_price money,
	PRIMARY KEY (municipality)
);

ALTER TABLE "MunicipalityPrice"
Add community VARCHAR;

CREATE TABLE PUBLIC."StylePrice"(Id int,

	List_price money,
	Sold_price money,
	Style Varchar,
	BR numeric
);

Select "StylePrice"
(
ALTER "StylePrice",
RENAME "sold_price" TO "soldprice"
);

CREATE TABLE PUBLIC."REALESTATE"(Id int,
								 Municipality VARCHAR,
								 Community VARCHAR,
								 List_Price numeric ,
								 Sold_Price numeric,
								 Type VARCHAR,
								 Style VARCHAR,
								 BR numeric,
								 ER numeric,
								 WR numeric,
								 FR VARCHAR,
								 Kitchen numeric,
								 Gar_Type VARCHAR,
								 AC VARCHAR,
								 Heat VARCHAR,
								 Contract_Date DATE,
								 MLS_ID VARCHAR,
								 Address VARCHAR,
								 Lat numeric,
								 Lng numeric  
);
								 
Select * from public."REALESTATE";

Alter Table "REALESTATE"
DROP COLUMN Id;

Select municipality, list_price, sold_price, community INTO "UnderAsking"
FROM "REALESTATE"
WHERE list_price > sold_price;

SELECT * from "UnderAsking";

Select COUNT(*)
FROM "UnderAsking";

Select municipality, list_price, sold_price, community INTO "OverAsking"
FROM "REALESTATE"
WHERE sold_price > list_price;

Select * from "OverAsking";

Select COUNT (*)
FROM "OverAsking";

Select municipality, list_price, sold_price, community INTO "MunicipalityPrice"
FROM "REALESTATE";

Select BR, Style, list_price, sold_price INTO "StylePrice"
FROM "REALESTATE";

SELECT
	AVG(sold_price),
	community
FROM "MunicipalityPrice"
GROUP BY community
ORDER BY AVG DESC;

SELECT AVG(sold_price),
	community
INTO Avg_Sold_Price
FROM "MunicipalityPrice"
GROUP BY community
ORDER BY AVG DESC;

Select community from Avg_Sold_Price;

SELECT Distinct ON(ap.community) ap.avg, ap.community, mp.municipality
INTO New_MunPrice
FROM Avg_Sold_Price as ap
Inner Join "MunicipalityPrice" as mp ON (ap.community = mp.community);


Select * FROM Avg_Sold_Price;

Select * from New_MunPrice
ORDER BY AVG DESC;