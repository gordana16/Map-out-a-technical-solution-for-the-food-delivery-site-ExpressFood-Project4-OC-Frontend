//get order price per customer, status and date
SELECT c.first_name, c.last_name, sum(items.quantity*items.price)as total, o.status, DATE(o.ord_datetime) as date
FROM meal_order AS o
JOIN ordered_items AS items USING(order_id)
JOIN customer AS c USING(customer_id)
GROUP BY o.order_id

//get customer's order details
SELECT c.first_name, c.last_name, o.order_id, course.course_type, course.name as course, items.quantity, items.price, items.price*items.quantity AS total_price, DATE(o.ord_datetime) as date
FROM meal_order AS o
JOIN ordered_items AS items USING(order_id)
JOIN course USING(course_id)
JOIN customer AS c USING(customer_id)
WHERE c.customer_id=4
ORDER BY o.order_id, course.course_type

//get daily_menu
SELECT menu.date, course.course_type, course.name AS course
FROM daily_menu_items as menu
JOIN course USING(course_id)
ORDER BY date, course.course_type

//biker who served certain client
SELECT biker.first_name, biker.last_name
FROM delivery_biker AS biker
WHERE biker_id IN (
    SELECT biker_id FROM meal_order
    WHERE customer_id=4)
	
	SELECT biker.first_name, biker.last_name, o.order_id
FROM delivery_biker AS biker
JOIN meal_order AS o USING(biker_id)
WHERE biker_id IN (
    SELECT biker_id FROM meal_order
    WHERE customer_id=4)

