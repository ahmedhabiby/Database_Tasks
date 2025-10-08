SELECT * FROM orders 
WHERE customer_id=(
SELECT customer_id FROM CUSTOMERS 
WHERE city='New York'
);