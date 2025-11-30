
/* Question Answer*/
SELECT name
FROM meal
where name ilike '%chicken%';
/* (SELECT  meal_id, count(meal_id)
 FROM order_details
 GROUP BY meal_id)
 
 
 SELECT count (meal_id)
 from order_details LEFT JOIN meal, 
 on order_details.meal_id = meal.meal_id; */