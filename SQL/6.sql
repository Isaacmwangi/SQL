SELECT 
    c.customer_name, 
    COALESCE(SUM(s.sale_amount), 0) AS total_sales
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id, c.customer_name;
