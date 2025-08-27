CREATE TABLE Doctor( id number(2),
					 name varchar2(90),
					 salary number(9,4),
					 address varchar2(100)
);

SELECT * FROM Doctor;

INSERT INTO Doctor VALUES(1,'ahmed',5000.40,'menofya');
INSERT INTO Doctor VALUES(2,'mohamed',6000.40,'menofya'); 
INSERT INTO Doctor VALUES(3,'hazem',2000.40,'menofya'); 
INSERT INTO Doctor VALUES(4,'ali',4000.40,'menofya'); 
INSERT INTO Doctor VALUES(5,'mazen',3000.40,'menofya'); 
INSERT INTO Doctor VALUES(6,'hosam',2500.40,'menofya'); 
INSERT INTO Doctor VALUES(7,'hesham',7000.40,'menofya'); 
INSERT INTO Doctor VALUES(8,'mohand',9000.40,'menofya'); 
INSERT INTO Doctor VALUES(9,'mohsen',4000.50,'menofya'); 
INSERT INTO Doctor VALUES(10,'marwa',5000.40,'menofya'); 

UPDATE  Doctor
SET salary=20000
WHERE id=3;

SELECT name ||' '||salary AS "name with salary" FROM Doctor;

SELECT id , name , salary*2, address FROM Doctor;

RENAME Doctor TO PRD_DOCTOR;

SELECT * FROM PRD_DOCTOR;