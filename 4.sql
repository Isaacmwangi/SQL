SELECT product_name
FROM products
GROUP BY product_name
HAVING COUNT(DISTINCT price) > 1;
