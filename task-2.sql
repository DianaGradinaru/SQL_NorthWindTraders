SELECT
    categories.category_name AS category,
    count(products.product_id) AS number_of_products
FROM products
LEFT JOIN categories
	ON products.category_id = categories.category_id
GROUP By categories.category_name 
ORDER BY number_of_products DESC;