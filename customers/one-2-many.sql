CODE: Working With Foreign Keys
# -- Creating the customers and orders tables

# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     FOREIGN KEY(customer_id) REFERENCES customers(id)
# );
# -- Inserting some customers and orders

# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);
       
# -- This INSERT fails because of our fk constraint.  No user with id: 98



# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/06/06', 33.67, 98);

CODE: Inner Joins

-- IMPLICIT INNER JOIN

# SELECT * FROM customers, orders 
# WHERE customers.id = orders.customer_id;
# -- IMPLICIT INNER JOIN

# SELECT first_name, last_name, order_date, amount
# FROM customers, orders 
#     WHERE customers.id = orders.customer_id;
    
-- EXPLICIT INNER JOINS

# SELECT * FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;
    
# SELECT first_name, last_name, order_date, amount 
# FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id;
    
# SELECT *
# FROM orders
# JOIN customers
#     ON customers.id = orders.customer_id;
    
-- ARBITRARY JOIN - meaningless, but still possible 

# SELECT * FROM customers
# JOIN orders ON customers.id = orders.id;

# SELECT 
#     first_name,
#     last_name,
#     IFNULL(SUM(amount), 0) AS total_spent
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY customer_id
# ORDER BY total_spent;

CODE: Left Joins
-- Getting Fancier (Inner Joins Still)

# SELECT first_name, last_name, order_date, amount 
# FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id
# ORDER BY order_date;
# SELECT 
#     first_name, 
#     last_name, 
#     SUM(amount) AS total_spent
# FROM customers
# JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY orders.customer_id
# ORDER BY total_spent DESC;
# Note: please see here for an animated visual of how left/right joins work.

-- LEFT JOINS

# SELECT * FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id;
# SELECT first_name, last_name, order_date, amount
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id; 
# SELECT 
#     first_name, 
#     last_name,
#     IFNULL(SUM(amount), 0) AS total_spent
# FROM customers
# LEFT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY customers.id
# ORDER BY total_spent;

CODE: Right Joins Part 2
# Note: please see here for an animated visual of how left/right joins work.

# --A MORE COMPLEX RIGHT JOIN

# SELECT 
#     IFNULL(first_name,'MISSING') AS first, 
#     IFNULL(last_name,'USER') as last, 
#     order_date, 
#     amount, 
#     SUM(amount)
# FROM customers
# RIGHT JOIN orders
#     ON customers.id = orders.customer_id
# GROUP BY first_name, last_name;
# -- WORKING WITH ON DELETE CASCADE

# CREATE TABLE customers(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     first_name VARCHAR(100),
#     last_name VARCHAR(100),
#     email VARCHAR(100)
# );
 
# CREATE TABLE orders(
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     order_date DATE,
#     amount DECIMAL(8,2),
#     customer_id INT,
#     FOREIGN KEY(customer_id) 
#         REFERENCES customers(id)
#         ON DELETE CASCADE
# );
 
 
# INSERT INTO customers (first_name, last_name, email) 
# VALUES ('Boy', 'George', 'george@gmail.com'),
#        ('George', 'Michael', 'gm@gmail.com'),
#        ('David', 'Bowie', 'david@gmail.com'),
#        ('Blue', 'Steele', 'blue@gmail.com'),
#        ('Bette', 'Davis', 'bette@aol.com');
       
# INSERT INTO orders (order_date, amount, customer_id)
# VALUES ('2016/02/10', 99.99, 1),
#        ('2017/11/11', 35.50, 1),
#        ('2014/12/12', 800.67, 2),
#        ('2015/01/03', 12.50, 2),
#        ('1999/04/11', 450.25, 5);


