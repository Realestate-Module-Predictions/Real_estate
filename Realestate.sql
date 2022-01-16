CREATE TABLE PUBLIC."REALESTATE"(Id int,
								 Municipality VARCHAR,
								 Community VARCHAR,
								 List_Price money ,
								 Sold_Price money,
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
								 Lng numeric  )
								 
Select * from public."REALESTATE";

							 