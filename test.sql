/* Question Answer*/
SELECT name
FROM meal
where name ilike '%chicken%';
(
    SELECT name,
        meal.meal_id,
        count (ord.meal_id) as freq
    from order_details as ord
        LEFT JOIN meal On ord.meal_id = meal.meal_id
    GROUP BY name,
        meal.meal_id;
)
SELECT name,
    sum(total_amount) as Total_Revenue
from customers
    join orders on customers.customers_id = orders.customers_id
where customers.name = 'Jade Kosoko'
GROUP BY name;

ALTER TABLE meal
ADD COLUMN unit_price numeric(10, 2);

INSERT INTO meal
VALUES (22, 'Grilled Chicken Salad', 'English');
INSERT INTO meal
VALUES (45, 'Amala','Nigeria', 568.56);

UPDATE meal unit_price
SET unit_price = 4500
WHERE name = 'Grilled Chicken Salad';


SELECT * FROM customers LEFT JOIN orders ON customers.customers_id = orders.customers_id;

SELECT * FROM customers RIGHT JOIN orders ON customers.customers_id = orders.customers_id;

