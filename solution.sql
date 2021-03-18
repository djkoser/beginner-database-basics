-- -- Table-Person
-- -- #1
-- CREATE TABLE person (
--   person_id SERIAL PRIMARY KEY,
--   age INTEGER,
--   name TEXT,
--   height INTEGER,
--   city TEXT,
--   favorite_color TEXT
-- );

-- -- #2
-- INSERT INTO person 
--   (name, age, height, city, favorite_color)
--   VALUES
--   ('Bob', 50, 180, 'Austin', 'purple'),
--   ('Joe', 20, 150, 'Shanghai', 'orange'),
--   ('Jen', 30, 140, 'New York', 'green'),
--   ('Kelly', 60, 145, 'London', 'red'),
--   ('Bill', 10, 190, 'Chicago', 'pink');

--   -- #3
--   SELECT *
--   FROM person
--   ORDER BY height DESC;

--   -- #4
--   SELECT *
--   FROM person
--   ORDER BY height;

--   -- #5
--   SELECT *
--   FROM person
--   ORDER BY age DESC;

--   -- #6
--   SELECT *
--   FROM person
--   WHERE age>20; 

--   -- #7
--   SELECT *
--   FROM person
--   WHERE age=18;

--   -- #8
--   SELECT *
--   FROM person
--   WHERE age <20 AND age >30; 

--   -- #9
--   SELECT *
--   FROM person
--   WHERE age != 27; 

--   -- #10
--   SELECT *
--   FROM person
--   WHERE favorite_color != 'red'; 

--   --#11
--   SELECT *
--   FROM person
--   WHERE favorite_color != 'red' 
--   AND favorite_color != 'blue';

--   -- #12
--   SELECT *
--   FROM person
--   WHERE favorite_color = 'orange' 
--   OR favorite_color = 'green';

--   -- #13
--   SELECT *
--   FROM person
--   WHERE favorite_color 
--   IN ('orange', 'green','blue');

--   -- #14
--   SELECT *
--   FROM person
--   WHERE favorite_color
--   IN ('yellow','purple');


-- -- Table - orders
-- -- #1
-- CREATE TABLE orders (
--   order_id SERIAL PRIMARY KEY,
--   person_id INTEGER,
--   product_name TEXT,
--   product_price FLOAT,
--   quantity INTEGER
--   );

-- -- #2
-- INSERT INTO orders
-- (person_id, product_name, product_price,quantity)
-- VALUES
-- (0, 'shoes', 99.99, 1),
-- (1, 'shirt', 20.99, 1),
-- (2, 'socks', 10.99, 6),
-- (3, 'bicycle', 700.50,1),
-- (4, 'soccer ball', 40.00, 1),
-- (5, 'ballooon', 2.99, 12);

-- -- #3
-- SELECT *
-- FROM orders;

-- -- #4
-- SELECT SUM(quantity)
-- FROM orders;

-- -- #5
-- SELECT SUM(quantity*product_price) 
-- FROM orders; 

-- -- #6
-- SELECT SUM(quantity*product_price) 
-- FROM orders
-- WHERE person_id = 5;

-- -- Table - artist
--   -- #1
-- INSERT INTO artist 
-- 	(name)
--   VALUES
--   ('Curt Cobain'),
--   ('Yo Yo Ma'),
--   ('Chris Thile');

-- -- #2
-- SELECT *
-- FROM artist 
-- ORDER BY name
-- DESC LIMIT 10;

-- -- #3
-- SELECT * 
-- FROM artist
-- ORDER BY name
-- LIMIT 5;

-- -- #4
-- SELECT *
-- FROM artist
-- WHERE name LIKE 'Black%';

-- -- #5
-- SELECT *
-- FROM artist
-- WHERE name LIKE '%Black%';

-- -- Table - employee
-- -- #1
-- SELECT first_name, last_name
-- FROM employee
-- WHERE city = 'Calgary'; 

-- -- #2
-- SELECT max(birth_date)
-- FROM employee;

-- -- #3
-- SELECT min(birth_date)
-- FROM employee;

-- -- #4

-- SELECT employee_id, last_name, first_name
-- from employee
-- WHERE first_name ='Nancy' AND last_name = 'Edwards';

-- -- Employee Id = 2

-- SELECT *
-- FROM employee
-- WHERE reports_to = 2;

-- -- #5
-- SELECT COUNT(employee_id)
-- FROM employee
-- WHERE city='Lethbridge';

-- Table - invoice

-- -- #1
-- SELECT *
-- FROM invoice;

-- SELECT COUNT(billing_country)
-- FROM invoice
-- WHERE billing_country = 'USA'; 

-- -- #2
-- SELECT MAX(total)
-- FROM invoice; 

-- -- #3
-- SELECT MIN(total)
-- FROM invoice;

-- -- #4
-- SELECT *
-- FROM invoice
-- WHERE total >5; 

-- -- #5
-- SELECT COUNT(total)
-- FROM invoice
-- WHERE total <5;

-- -- #6
-- SELECT COUNT(billing_state)
-- FROM invoice
-- WHERE billing_state 
-- IN ('CA', 'TX', 'AZ');

-- -- #7
-- SELECT AVG(total)
-- FROM invoice;

-- -- #8
-- SELECT SUM (total)
-- FROM invoice;


