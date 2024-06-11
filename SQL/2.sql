SELECT product_id, sale_date, sales_amount,
       AVG(sales_amount) OVER (PARTITION BY product_id ORDER BY sale_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg
FROM Sales;
