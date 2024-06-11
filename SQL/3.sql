SELECT c.customer_name 
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT p.category_id) = (SELECT COUNT(*) FROM categories);
