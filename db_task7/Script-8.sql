SELECT first_name FROM 	EMPLOYEES NATURAL JOIN DEPARTMENTS ;

SELECT * FROM ORDERS 
NATURAL JOIN CUSTOMERS ; --column status

SELECT name ,course_name FROM STUDENTS 
NATURAL JOIN course  ;  -- table course not exist

SELECT project_name, FIRST_NAME  FROM EMPLOYEES
NATURAL JOIN  project ;


SELECT invoice_id, product_name, quantity, price, total_amount
FROM invoices
NATURAL JOIN products;

SELECT book_id, book_title, author_name
FROM books
NATURAL JOIN authors;

SELECT class_id, class_name, schedule_time, instructor_name
FROM class_schedule
NATURAL JOIN instructors;

SELECT supplier_id, supplier_name, product_name
FROM suppliers
NATURAL JOIN products;

SELECT FULLNAME , status
FROM orders
NATURAL JOIN CUSTOMERS ;

SELECT employee_id, FIRST_NAME , job_title
FROM employees
NATURAL JOIN jobs;

SELECT FIRST_NAME ,DEPARTMENT_NAME  FROM EMPLOYEES 
 JOIN DEPARTMENTS 
using(DEPARTMENT_ID);

SELECT FULLNAME  ,STATUS   FROM ORDERS  
 JOIN CUSTOMERS  
using(customer_id); -- no column named customer_id

SELECT product_names , supplier_names  FROM products  
 JOIN suppliers  
using(supplier_id);-- no tables named suppliers and products

SELECT student_names , course_titles  FROM students  
 JOIN enrollments  
using(student_id);-- no tables named enrollments and students

SELECT  product_name, quantity
FROM invoices
 JOIN products;
using(product_id)-- no tables named invoices and products

SELECT project_name, employee_name
FROM projects
JOIN employees
USING (project_id);-- no tables named   products

SELECT author_name, book_title
FROM authors
JOIN books
USING (author_id);-- no tables named books and authors

SELECT order_id, order_date, employee_name, total_amount
FROM sales_orders
JOIN employees
USING (employee_id);-- no tables named sales_orders 

SELECT course_name, schedule_time, instructor_name
FROM courses
JOIN instructors
USING (instructor_id);-- no tables named instructors and courses

SELECT transaction_id, transaction_date, amount, account_holder_name
FROM transactions
JOIN accounts
USING (account_id);-- no tables named accounts and transactions

SELECT e.employee_name AS employee_name,
       m.employee_name AS manager_name
FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id;

SELECT c.name AS customer_name,
       e.name AS salesperson_name
FROM customers c
JOIN employees e
ON c.salesperson_id = e.employee_id;

SELECT o.order_id,
       od.product_id
FROM orders o
JOIN order_details od
ON o.order_id = od.order_id;

SELECT s.name AS student_name,
       i.name AS instructor_name
FROM students s
JOIN instructors i
ON s.instructor_id = i.instructor_id;

SELECT e.employee_name,
       e.salary,
       d.department_name,
       d.budget
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT p.name AS project_name,
       t.name AS task_name
FROM projects p
JOIN tasks t
ON p.project_id = t.project_id;

SELECT c.course_name,
       c.start_date AS course_start_date,
       e.exam_date AS exam_date
FROM courses c
JOIN exams e
ON c.course_id = e.course_id;

SELECT p.name AS product_name,
       c.name AS category_name
FROM products p
JOIN categories c
ON p.category_id = c.category_id;

SELECT b.title AS book_title,
       p.name AS publisher_name
FROM books b
JOIN publishers p
ON b.publisher_id = p.publisher_id;

SELECT e.employee_name,
       d.location AS department_location
FROM employees e
JOIN departments d
ON e.department_id = d.department_id;

SELECT e.employee_name,
       d.department_name
FROM employees e
LEFT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT p.product_name,
       c.category_name
FROM products p
LEFT OUTER JOIN categories c
ON p.category_id = c.category_id;

SELECT s.student_name,
       c.course_name
FROM students s
LEFT OUTER JOIN enrollments e
ON s.student_id = e.student_id
LEFT OUTER JOIN courses c
ON e.course_id = c.course_id;

SELECT o.order_id,
       o.order_date,
       c.customer_name
FROM orders o
LEFT OUTER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT d.department_name,
       m.employee_name AS manager_name
FROM departments d
LEFT OUTER JOIN employees m
ON d.manager_id = m.employee_id;

SELECT b.title AS book_title,
       a.author_name
FROM books b
LEFT OUTER JOIN authors a
ON b.author_id = a.author_id;

SELECT i.invoice_id,
       i.invoice_date,
       p.payment_status
FROM invoices i
LEFT OUTER JOIN payments p
ON i.invoice_id = p.invoice_id;

SELECT e.employee_name,
       p.project_name
FROM employees e
LEFT OUTER JOIN projects_assigned pa
ON e.employee_id = pa.employee_id
LEFT OUTER JOIN projects p
ON pa.project_id = p.project_id;

SELECT e.employee_name,
       d.department_name
FROM employees e
RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT o.order_id,
       c.customer_name
FROM orders o
RIGHT OUTER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT s.student_name,
       c.course_name
FROM students s
RIGHT OUTER JOIN courses c
ON s.course_id = c.course_id;

SELECT e.employee_name,
       p.project_name
FROM employees e
RIGHT OUTER JOIN projects p
ON e.project_id = p.project_id;

SELECT t.transaction_id,
       pm.payment_method_name
FROM transactions t
RIGHT OUTER JOIN payment_methods pm
ON t.payment_method_id = pm.payment_method_id;

SELECT b.title AS book_title,
       a.author_name
FROM books b
RIGHT OUTER JOIN authors a
ON b.author_id = a.author_id;

SELECT p.product_name,
       c.category_name
FROM products p
RIGHT OUTER JOIN categories c
ON p.category_id = c.category_id;

SELECT s.student_name,
       d.room_number
FROM students s
RIGHT OUTER JOIN dorms d
ON s.dorm_id = d.dorm_id;

SELECT c.customer_name,
       o.order_id
FROM customers c
FULL OUTER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT e.employee_name,
       p.project_name
FROM employees e
FULL OUTER JOIN projects p
ON e.project_id = p.project_id;

SELECT pr.product_name,
       s.supplier_name
FROM products pr
FULL OUTER JOIN suppliers s
ON pr.supplier_id = s.supplier_id;

SELECT s.student_name,
       c.course_name
FROM students s
FULL OUTER JOIN courses c
ON s.course_id = c.course_id;

SELECT a.author_name,
       b.title AS book_title
FROM authors a
FULL OUTER JOIN books b
ON a.author_id = b.author_id;

SELECT e.employee_name,
       d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT t.transaction_id,
       pm.payment_method_name
FROM transactions t
FULL OUTER JOIN payment_methods pm
ON t.payment_method_id = pm.payment_method_id;

SELECT r1.customer_name AS region1_customer,
       r2.customer_name AS region2_customer
FROM region1_customers r1
FULL OUTER JOIN region2_customers r2
ON r1.customer_id = r2.customer_id;

SELECT employee_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT customer_id, customer_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(order_id) = (
    SELECT MAX(order_count)
    FROM (
      SELECT COUNT(order_id) AS order_count
      FROM orders
      GROUP BY customer_id
    )
  )
);

SELECT product_name, price
FROM products
WHERE price > ANY (
  SELECT price
  FROM products
  WHERE category = 'Accessories'
);

SELECT employee_name
FROM employees
WHERE department_id = (
  SELECT department_id
  FROM employees
  WHERE employee_name = 'John Smith'
);

SELECT *
FROM orders
WHERE customer_id IN (
  SELECT customer_id
  FROM customers
  WHERE city = 'New York'
);

SELECT department_id, department_name
FROM departments d
WHERE NOT EXISTS (
  SELECT 1
  FROM employees e
  WHERE e.department_id = d.department_id
);

SELECT student_id, student_name
FROM students s
WHERE NOT EXISTS (
  SELECT 1
  FROM enrollments e
  WHERE e.student_id = s.student_id
);

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT c.customer_id, c.customer_name
FROM customers c
WHERE NOT EXISTS (
  SELECT p.product_id
  FROM products p
  WHERE p.category = 'A'
  AND NOT EXISTS (
    SELECT 1
    FROM orders o
    WHERE o.customer_id = c.customer_id
    AND o.product_id = p.product_id
  )
);

SELECT employee_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT employee_name
FROM employees
WHERE department_id = (
  SELECT department_id
  FROM employees
  WHERE employee_name = 'Alice'
);

SELECT *
FROM products
WHERE price = (SELECT MIN(price) FROM products);

SELECT department_name
FROM departments
WHERE department_id = (
  SELECT department_id
  FROM employees
  WHERE salary = (SELECT MAX(salary) FROM employees)
);

SELECT manager_id
FROM employees
WHERE employee_id = (
  SELECT employee_id
  FROM employees
  WHERE hire_date = (SELECT MAX(hire_date) FROM employees)
);

SELECT employee_name, salary
FROM employees
WHERE salary = (SELECT AVG(salary) FROM employees);

SELECT *
FROM orders
WHERE order_date = (SELECT MIN(order_date) FROM orders);

SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE employee_id = 101);

SELECT student_name
FROM students
WHERE gpa = (SELECT gpa FROM students WHERE student_name = 'John Doe');

SELECT title, price
FROM books
WHERE price = (
  SELECT MAX(price)
  FROM books
  WHERE category = 'Science'
);

SELECT employee_name, salary
FROM employees
WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 10);

SELECT employee_name, salary
FROM employees
WHERE salary < ALL (SELECT salary FROM employees WHERE department_id = 20);

SELECT product_name, price
FROM products
WHERE price IN (SELECT price FROM products WHERE category = 'Electronics');

SELECT customer_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  WHERE product_id IN (SELECT product_id FROM products WHERE price > 1000)
);

SELECT employee_name
FROM employees
WHERE job_title IN (
  SELECT job_title
  FROM employees
  GROUP BY job_title
  HAVING COUNT(*) > 1
);

SELECT department_name
FROM departments
WHERE department_id IN (
  SELECT department_id
  FROM employees
  GROUP BY department_id
  HAVING COUNT(*) > 1
);

SELECT order_id
FROM orders
WHERE customer_id IN (
  SELECT customer_id
  FROM customers
  WHERE city IN (
    SELECT city
    FROM customers
    GROUP BY city
    HAVING COUNT(*) > 1
  )
);

SELECT title
FROM books
WHERE author_id IN (
  SELECT author_id
  FROM books
  GROUP BY author_id
  HAVING COUNT(*) > 1
);

SELECT student_name
FROM students
WHERE course_id IN (
  SELECT course_id
  FROM courses
  WHERE instructor_name = 'Dr. Smith'
);

SELECT employee_name
FROM employees
WHERE salary IN (
  SELECT salary
  FROM employees
  WHERE department_id = 30
);

