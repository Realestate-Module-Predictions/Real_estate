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

Select * from "StylePrice";

ALTER TABLE "StylePrice"
RENAME TO "StyleAndPrice";

Select "StylePrice"
(
ALTER "StylePrice",
RENAME "sold_price" TO "soldprice"
);

--Create Table to import the data into
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

--Drop the ID column
Alter Table "REALESTATE"
DROP COLUMN Id;

--Find real estate that was sold for under the list price

Select municipality, list_price, sold_price, community INTO "UnderAsking"
FROM "REALESTATE"
WHERE list_price > sold_price;

SELECT * from "UnderAsking";

Select COUNT(*)
FROM "UnderAsking";

--Find data that was sold for over the list price

Select municipality, list_price, sold_price, community INTO "OverAsking"
FROM "REALESTATE"
WHERE sold_price > list_price;

Select * from "OverAsking";

Select COUNT (*)
FROM "OverAsking";

--Create a table to show the prices with the Municipality, list price, sold price and community
Select municipality, list_price, sold_price, community INTO "MunicipalityPrice"
FROM "REALESTATE";

Select BR, Style, list_price, sold_price INTO "StylePrice"
FROM "REALESTATE";

--Find the average sold price for each municipality

SELECT
	AVG(sold_price),
	municipality
FROM "MunicipalityPrice"
GROUP BY municipality
ORDER BY AVG DESC;

--Find the average sold price for each community

SELECT AVG(sold_price),
	community
INTO Avg_Sold_Price
FROM "MunicipalityPrice"
GROUP BY community
ORDER BY AVG DESC;

Select community from Avg_Sold_Price;

--Create a new table that includes the average sold price for each Municipality

SELECT Distinct ON(ap.community) ap.avg, ap.community, mp.municipality
INTO New_MunPrice
FROM Avg_Sold_Price as ap
Inner Join "MunicipalityPrice" as mp ON (ap.community = mp.community);

ALTER TABLE Avg_Sold_Price
RENAME TO AvgSold$_Comm;

Select * FROM AvgSold$_Comm;

Select * from Avg_Sold_Price
ORDER BY AVG DESC;

--
SELECT AVG(sold_price),
	municipality
INTO AvgSold$_Mun
FROM "MunicipalityPrice"
GROUP BY municipality
ORDER BY AVG DESC;

Select * from AvgSold$_Mun;

SELECT AVG(sold_price),
	style
INTO Style_Price
FROM "REALESTATE"
GROUP BY style
ORDER BY AVG DESC;

SELECT AVG(sold_price),
	br
INTO AvgSold$_br
FROM "REALESTATE"
GROUP BY br
ORDER BY AVG DESC;

Select * from style_price
ORDER BY avg DESC;

Select * from avgsold$_mun;

--Create a new table for Active Predictions
CREATE TABLE PUBLIC."Active_Predictions" (
	municipality Varchar,
	community Varchar,
	list_price numeric,
	type Varchar,
	style Varchar,
	br numeric,
	er numeric,
	wr numeric,
	fr Varchar,
	kitchen numeric,
	gar_type VARCHAR,
	ac VARCHAR,
	heat VARCHAR,
	contract_date DATE,	
	mls_id Varchar,
	address Varchar,
	lat numeric,
	lng numeric,
	selling_price_predictions numeric
);

--Create a new table for Inactive Predictions
CREATE TABLE PUBLIC."Inactive_Predictions" (
	municipality Varchar,
	community Varchar,
	list_price numeric,
	sold_price numeric,
	type Varchar,
	style Varchar,
	br numeric,
	er numeric,
	wr numeric,
	fr Varchar,
	kitchen numeric,
	gar_type VARCHAR,
	ac VARCHAR,
	heat VARCHAR,
	contract_date DATE,	
	mls_id Varchar,
	address Varchar,
	lat numeric,
	lng numeric,
	sold_price_predictions numeric
);

Select * from "Active_Predictions";
Select * from "Inactive_Predictions";