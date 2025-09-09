CREATE TABLE EMP_TEST(name VARchar2(150));
INSERT INTO   EMP_TEST values('   ahmed   ');
INSERT INTO   EMP_TEST values('ahmed   ');
INSERT INTO   EMP_TEST values('   ahmed');
INSERT INTO   EMP_TEST values('***ahmed***');
INSERT INTO   EMP_TEST values('###ahmed###');
SELECT * FROM EMP_TEST;
SELECT TRIM(name) FROM EMP_TEST;
SELECT ltrim( name) FROM EMP_TEST;
SELECT rtrim( name) FROM EMP_TEST;
SELECT trim(BOTH '*'  FROM name ) FROM EMP_TEST;
SELECT trim(BOTH '#'  FROM name ) FROM EMP_TEST;

-----------------------

SELECT first_name , replace(first_name,'a','@') FROM Employees;
SELECT replace('a old shoes in old house','old','new') FROM dual;
SELECT first_name,lpad(first_name,15,'*') FROM employees;
SELECT first_name,rpad(first_name,15,'#') FROM employees;

--------------------------

SELECT hire_date , TO_CHAR(hire_date,'DD-MON-YYYY') FROM employees;
SELECT hire_date , TO_CHAR(hire_date,'Month YYYY') FROM employees;
SELECT to_char(12345.67,'99,999.99') FROM dual;
SELECT salary,TO_CHAR(salary,'99,999.99$') "fromatted salary" FROM employees;

---------------------------

CREATE TABLE students(name varchar2(120),marks number(5));
INSERT INTO students(name,marks) values('ahmed',90);
INSERT INTO students(name,marks) values('mohamed',80);
INSERT INTO students(name,marks) values('ali',70);
INSERT INTO students(name,marks) values('ahmed',50);
SELECT * FROM students;

SELECT name,marks,CASE 
       WHEN marks>=90 THEN 'A'
        WHEN marks BETWEEN 80 AND 89 THEN 'B'
         WHEN marks BETWEEN 700 AND 79 THEN 'C'
         ELSE 'F'
         END AS  grades
         FROM students;

------------------------------------------

SELECT name,
       marks,
       DECODE(
           SIGN(marks - 90), 1, 'A', 0, 'A',   
           SIGN(marks - 80), 1, 'B', 0, 'B',   
           SIGN(marks - 70), 1, 'C', 0, 'C',   
           'F'                                 
       ) AS grade
FROM students;


CREATE TABLE ORDERS(status varchar2(50));
INSERT INTO orders values('P');
INSERT INTO orders values('S');
INSERT INTO orders values('D');

SELECT status , decode(status,'P','Pending','S','Shipped','D','Delivered') AS display
FROM orders;

----------------------------------------------

CREATE TABLE customers(fullName varchar2(150));
INSERT INTO customers values('   ahmed mohamed  ');
INSERT INTO customers values('   ahmed mohamed');
INSERT INTO customers values('ahmed mohamed  ');
INSERT INTO customers values('***ahmed mohamed***');
INSERT INTO customers values('####ahmed mohamed####');
SELECT fullname,trim(fullname) FROM customers;
SELECT fullname,ltrim(fullname) FROM customers;
SELECT fullname,rtrim(fullname) FROM customers;
SELECT fullname,trim(BOTH '*' FROM fullname) FROM customers;
SELECT fullname,trim(BOTH '#' FROM fullname) FROM customers;

----------------------------------------------
SELECT replace('promotion','o',0)FROM dual;
SELECT replace('This is a basic course','basic','advanced')FROM dual;
CREATE TABLE department(dept_name varchar2(150));
INSERT INTO department values('cse');
INSERT INTO department values('ace');
INSERT INTO department values('ece');

SELECT dept_name , lpad(dept_name,15,'*') FROM department;
SELECT dept_name , rpad(dept_name,15,'-') FROM department;

-------------------------------------
SELECT hire_date,TO_CHAR(hire_date,'DD-MON-YYYY') FROM employees;
SELECT hire_date,TO_CHAR(hire_date,'Day, Month YYYY') FROM employees;
SELECT to_char(12345.67,'99,999.99') FROM dual;
SELECT salary,TO_CHAR(salary,'99,999.99$') "fromatted salary" FROM employees;
SELECT hire_date,TO_CHAR(hire_date,'YYYY/MM/DD HH24:MI:SS') FROM employees;

---------------------------------------------
SELECT name,
       marks,
       CASE 
           WHEN marks >= 60 THEN 'pass'
           ELSE 'fail'
       END AS status
FROM students;

SELECT hire_date , CASE 
	          WHEN hire_date IS NOT NULL THEN TO_CHAR(hire_date,'"today is" Day')
	          ELSE '0'
	          END AS weather
	          FROM employees;
---------------------------------
SELECT decode(1,0,'Out of Stock','Available') FROM dual;
SELECT decode('HR','HR',500,'IT',1000,'Sales',1500,300) FROM dual;

-----------------------------------------

SELECT * FROM employees;
SELECT avg(salary) FROM employees;
SELECT count(EMPLOYEE_ID) FROM employees;
SELECT max(salary) FROM employees;
SELECT min(salary) FROM employees;
SELECT sum(salary) FROM employees;
SELECT department_id, avg(salary) 
FROM employees
GROUP BY department_id;
SELECT JOB_ID, count(EMPLOYEE_ID ) 
FROM employees
GROUP BY JOB_ID;
SELECT department_id, sum(salary) 
FROM employees
GROUP BY department_id
HAVING sum(salary)>50000;
SELECT avg(nvl(COMMISSION_PCT,0)) FROM employees;

SELECT count(employee_id)
FROM employees 
WHERE employee_id in (SELECT employee_id FROM employees 
           WHERE salary>10000);

SELECT COUNT(employee_id)
FROM employees
WHERE salary > 10000;

SELECT JOB_ID, max(salary ) ,min(SALARY)
FROM employees
GROUP BY JOB_ID;

SELECT MANAGER_ID ,sum(salary)
FROM employees
GROUP BY MANAGER_ID ;

SELECT JOB_ID,DEPARTMENT_ID , sum(salary)
FROM employees
GROUP BY JOB_ID,DEPARTMENT_ID;

SELECT JOB_ID,count(EMPLOYEE_ID )
FROM employees
GROUP BY JOB_ID
HAVING count(EMPLOYEE_ID )>5 ;

SELECT DEPARTMENT_ID ,min(salary), max(salary),count(EMPLOYEE_ID ),avg(SALARY )
FROM employees
GROUP BY DEPARTMENT_ID;

SELECT DEPARTMENT_ID
FROM employees
GROUP BY DEPARTMENT_ID
HAVING avg(SALARY )>8000 AND count(EMPLOYEE_ID )<10 ;

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
HAVING SUM(salary) = (
    SELECT MAX(dept_total)
    FROM (
        SELECT SUM(salary) AS dept_total
        FROM employees
        GROUP BY department_id
    )
);

SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id
ORDER BY total_salary DESC
FETCH FIRST 1 ROWS ONLY;

SELECT department_id, SUM(salary) AS total_salary,avg(SALARY )AS Average_Salar
FROM employees
GROUP BY department_id
