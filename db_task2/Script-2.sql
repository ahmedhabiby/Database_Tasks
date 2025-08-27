CREATE TABLE Employees_1(EmployeeID NUMBER(5),
FirstName varchar2(100),
LastName varchar2(100),
Department varchar2(100),
Salary NUMBER(10,4));

INSERT INTO Employees_1 values(101      ,      'John1'   ,   'Doe1'   ,  'HR'      ,      20000);
INSERT INTO Employees_1 values(102    ,        'John2'   ,   'Doe2'  ,   'IT'  ,          50000);
INSERT INTO Employees_1 values(103        ,    'John3'   ,   'Doe3'    , 'CS'     ,       40000);
INSERT INTO Employees_1 values(104      ,      'John4' ,     'Doe4'   ,  'IT'    ,        10000);
INSERT INTO Employees_1 values(105       ,     'John5'    ,  'Doe5'   ,  'ZX'     ,       30000);

SELECT * FROM Employees_1;

UPDATE Employees_1
SET salary=600000
WHERE employeeid=101;

DELETE FROM Employees_1
WHERE employeeid=101;

SELECT * FROM Employees_1
WHERE department='IT';

SELECT  EmployeeID, FirstName||' '|| LastName AS "full name", Department, Salary FROM Employees_1;
