SELECT 
	EXTRACT(YEAR FROM order_date) AS year,
	EXTRACT(MONTH FROM order_date) AS month,
	COUNT(order_id) AS order_count,
  round(sum(order_details.unit_price * (1 - order_details.discount) * order_details.quantity)) AS revenue
  FROM order_details
  LEFT JOIN orders
  ON order_details.order_id = orders.order_id
FROM orders
GROUP BY order_date
ORDER BY month ASC