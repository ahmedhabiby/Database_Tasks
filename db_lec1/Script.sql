CREATE TABLE Mangaer(id NUMBER(5),
name varchar2(50)
,age NUMBER(5)
,birth_date varchar2(50)  
,address varchar2(50));

ALTER TABLE Mangaer DROP COLUMN address;
--SELECT * FROM Mangaer;
ALTER TABLE Mangaer ADD (city_address varchar2(50),
							street varchar2(50));
SELECT * FROM Mangaer;

ALTER TABLE Mangaer RENAME COLUMN  name to  full_name;

ALTER TABLE Mangaer READ ONLY ;

CREATE TABLE Owner AS SELECT id,name,birth_date FROM Mangaer;
SELECT * FROM Owner;

RENAME Mangaer TO MAster;

DROP TABLE Master;

DROP TABLE Owner;