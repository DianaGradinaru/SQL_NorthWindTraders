SELECT
	products.product_name AS "name",
    round(sum(order_details.unit_price * (1 - order_details.discount) * order_details.quantity)) AS "sum"
FROM order_details
LEFT JOIN products ON
	products.product_id = order_details.product_id
GROUP BY name
ORDER BY sum ASC
LIMIT 10
;