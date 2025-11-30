/* Question Answer*/
SELECT name
FROM meal
where name ilike '%chicken%';
SELECT name,
    meal.meal_id as meal_name,
    count (ord.meal_id) as freq
from order_details as ord
    LEFT JOIN meal On ord.meal_id = meal.meal_id
GROUP BY name,
    meal.meal_id
ORDER BY freq DESC
LIMIT 1;
SELECT name,
    sum(total_amount) as Total_Revenue
from customers
    join orders on customers.customers_id = orders.customers_id
where customers.name = 'Jade Kosoko'
GROUP BY name;
ALTER TABLE meal
ADD COLUMN unit_price INT;
INSERT INTO meal
VALUES (22, 'Grilled Chicken Salad', 'English');
INSERT INTO meal
VALUES (45, 'Amala', 'Nigeria', 568.56);
UPDATE meal unit_price
SET unit_price = 4500
WHERE name = 'Grilled Chicken Salad';
SELECT *
FROM customers
    LEFT JOIN orders ON customers.customers_id = orders.customers_id;
SELECT *
FROM customers
    RIGHT JOIN orders ON customers.customers_id = orders.customers_id;
SELECT name,
    LENGTH(name) AS Name_length,
    upper (name) as upp,
    lower(name) as low,
    concat(name, LENGTH(name))
from instructor;
select dept_name,
    avg (salary) as avg_salary
from instructor
group by dept_name;
Find the number of instructors in each department who teach a course in the Spring 2018 semester.”
SELECT dept_name,
    COUNT(instructor.id)
from instructor
    JOIN teaches ON instructor.id = teaches.id
WHERE year = 2010
    and semester = 'Spring'
GROUP BY dept_name;
ALTER TABLE meal
ALTER COLUMN unit_price TYPE numeric(7, 2);
SELECT DISTINCT customers_id
FROM customers
WHERE customers_id IN (
        SELECT orders.customers_id
        FROM rating
            JOIN orders ON rating.order_id = orders.order_id
        WHERE rating_score BETWEEN 3 AND 4
    )
SELECT orders.customers_id,
    rating_score
FROM rating
    JOIN orders ON rating.order_id = orders.order_id
WHERE rating_score BETWEEN 3 AND 4;
ALTER TABLE rating
    RENAME rating TO rating_score


ALTER TABLE order_details ALTER quantity TYPE INT CONSTRAINT check(quantity > 0);