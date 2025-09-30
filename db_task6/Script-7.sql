CREATE TABLE Employees_test(
id number(5) PRIMARY KEY,
age number(6),
CONSTRAINT age_cons CHECK (age>=18)
);

ALTER TABLE Staff
ADD CONSTRAINT check_salary 
check(salary BETWEEN 3000 AND 10000);

ALTER TABLE Products
ADD CONSTRAINT check_price
check(price > 0);

CREATE TABLE Students_test(
id number(5) PRIMARY KEY,
age number(6),
grade varchar2(100),
CONSTRAINT grade_check 
CHECK (grade IN('A','B','C','D','E','F')));

ALTER TABLE Customers
MODIFY email VARCHAR2(255) NOT NULL;

ALTER TABLE Users
ADD CONSTRAINT check_Users unique(username);

ALTER TABLE Orders
ADD CONSTRAINT order_customer_fk FOREIGN key(customer_id)
REFERENCES Customers(id);

ALTER TABLE Accounts
ADD CONSTRAINT check_balance CHECK(balance>=0);

ALTER TABLE Departments
ADD CONSTRAINT add_pk PRIMARY KEY (dept_id);

ALTER TABLE Employees
DROP CONSTRAINT chk_salary;

ALTER TABLE Users
DROP CONSTRAINT check_Users;

ALTER TABLE Products
DROP PRIMARY KEY;

ALTER TABLE Orders
DROP CONSTRAINT fk_order_customer ;

ALTER TABLE Contacts
MODIFY phone number(13);

ALTER TABLE Students
RENAME CONSTRAINT chk_age to check_min_age;

ALTER TABLE Employees
RENAME CONSTRAINT fk_emp_dept to fk_employee_department;

ALTER TABLE Users
DROP PRIMARY KEY;

ALTER TABLE Users
ADD CONSTRAINT pk_users_id PRIMARY KEY (id);

ALTER TABLE Users
RENAME CONSTRAINT check_Users to uk_user_name;
--------------------------------

ALTER TABLE table_name
RENAME CONSTRAINT old_constraint_name TO new_constraint_name;

EXEC sp_rename 'table_name.old_constraint_name', 'new_constraint_name';


-----------------------------------------

ALTER TABLE Orders
DISABLE CONSTRAINT fk_customer_order;

ALTER TABLE Products DISABLE CONSTRAINT ALL;

ALTER TABLE Accounts
DISABLE CONSTRAINT check_balance;

ALTER TABLE Departments
DISABLE CONSTRAINT add_pk;

--ALTER TABLE table_name DISABLE CONSTRAINT ALL;


ALTER TABLE Orders
enable CONSTRAINT fk_customer_order;

ALTER TABLE Products enable CONSTRAINT ALL;

ALTER  TABLE Staff
enable CONSTRAINT check_salary;

ALTER TABLE Departments
enable CONSTRAINT add_pk;

--How do you enable a 
--constraint only if it's currently disabled?
--SELECT constraint_name, status
--FROM user_constraints
--WHERE table_name = 'TABLE_NAME';
--ALTER TABLE table_name ENABLE CONSTRAINT constraint_name;


