EXERCISE-3
CREATE TABLE Player(
PId INTEGER PRIMARY KEY,
PName VARCHAR2(20) NOT NULL,
Ranking INTEGER);
---------------------------------------------
EXERCISE-4
CREATE TABLE Tournament(
TId INTEGER PRIMARY KEY,
TName VARCHAR2(30) NOT NULL,
StartDt DATE NOT NULL,
EndDt DATE NOT NULL,
Prize INTEGER NOT NULL
);
-----------------------------------------------
EXERCISE-5
CREATE TABLE Match(
MId INTEGER PRIMARY KEY,
TId REFERENCES Tournament(TId),
Player1 REFERENCES Player(PId),
Player2 REFERENCES Player(PId),
MatchDt DATE NOT NULL,
Winner INTEGER REFERENCES Player(PId),
Score VARCHAR2(30)
);
---------------------------------------------------------
EXERCISE-6
ALTER TABLE Player ADD (MatchesPlayed NUMBER, MatchesWon NUMBER )
-----------------------------------------------------------------
ALTER TABLE Player ADD(ContactNo NUMBER(10));

--------------------------------------------------------------------
EXERCISE-7
ALTER TABLE Player DROP (ContactNo);
---------------------------------------------------------------------
EXERCISE-8
ALTER TABLE Player RENAME COLUMN PId TO PlayerId
----------------------------------------------------------------------
EXERCISE-9
ALTER TABLE PLAYER MODIFY PName VARCHAR(20)
------------------------------------------------------------------
==================================================================================
ASSIGNMENT-2
 CREATE TABLE Shopper(Shopperid INTEGER PRIMARY KEY,
ShopperName VARCHAR2(20) NOT NULL,
Gender VARCHAR2(6) CONSTRAINT gender_chK CHECK (Gender IN ('Male','Female')),
MobileNo INTEGER NOT NULL,
Address VARCHAR2(50) )
insert- 
INSERT INTO Shopper VALUES(10,'RAJ','FEMALE',7749193255,'HI')
------------------------------------------------------------------------------
Truncate- TRUNCATE TABLE Shopper;
ASSIGNMENT-3
ALTER TABLE Shopper MODIFY MobileNo VARCHAR2(15);
--------------------------------------------------------------------------------
ASSIGNMENT-4
CREATE TABLE Article (
ArCode CHAR(5) PRIMARY KEY CONSTRAINT chk_starts_with_A CHECK (ArCode LIKE 'A%'),
ArName 	VARCHAR2(30) NOT NULL,
Rate NUMBER(8,2) ,
Quantity NUMBER(4) DEFAULT 0 CONSTRAINT chk_rate CHECK(Quantity>=0) ,
Class 	CHAR(1) CONSTRAINT ck_class CHECK(Class IN ('A','B','C'))
);
--------------------------------------------------------------------------------------
ASSIGNMENT-5
CREATE TABLE Store(
Name VARCHAR2(20) PRIMARY KEY,
Location VARCHAR2(30) NOT NULL,
ManagerName VARCHAR2(30) UNIQUE
)
-------------------------------------------------------
ASSIGNMENT-6
ALTER TABLE Store RENAME COLUMN Name TO StoreName;
-------------------------------------------------------
ASSIGNMENT-7
CREATE TABLE Bill(
BillNo	NUMBER PRIMARY KEY,
StoreName VARCHAR2(20) REFERENCES Store(StoreName),
Shopperid NUMBER REFERENCES Shopper(ShopperId),
ArCode	CHAR(5)	REFERENCES Article(ArCode),
Amount 	NUMBER,
BillDate DATE,
Quantity NUMBER(4) DEFAULT 1 CONSTRAINT chk_qnty CHECK(Quantity>0) 
);
----------------------------------------------------------------
ASSIGNMENT-8
CREATE TABLE SupplieR(
Supplierid VARCHAR2(6) PRIMARY KEY, 
Name	VARCHAR2(30),
ContactNo	VARCHAR2(15)	NOT NULL,
Emailid	VARCHAR2(30)	
)
---------------------------------------------------------------
ASSIGNMENT-9
ALTER TABLE Supplier ADD City VARCHAR2(10)
-----------------------------------------------------------
ASSIGNMENT-10
ALTER TABLE Supplier DROP (Emailid)
-----------------------------------------------------------
ASSIGNMENT-11
CREATE TABLE City(City VARCHAR2(20) UNIQUE)
-----------------------------------------------------------
ASSIGNMENT-12
ALTER TABLE CITY DROP(City)
------------------------------------------------------------
ASSIGNMENT-16
CREATE TABLE Address(
HouseNo	NUMBER,
Street	VARCHAR2(30) NOT NULL UNIQUE,
city	VARCHAR2(20) REFERENCES City(City),
zip	NUMBER(6) CONSTRAINT chk_zip CHECK(zip>=0),
State VARCHAR(5),
CONSTRAINT pk_house_street_city PRIMARY KEY(HouseNo,Street,City)
)
------------------------------------------------------------
ASSIGNMENT-14
ALTER TABLE Address MODIFY State VARCHAR(20)



