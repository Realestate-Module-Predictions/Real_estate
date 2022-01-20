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