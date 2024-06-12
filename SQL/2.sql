

create database Question2;
use Question2

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    sale_date DATE,
    sales_amount DECIMAL(10, 2)
);

INSERT INTO Sales (sale_id, product_id, sale_date, sales_amount)
VALUES 
    (1, 1, '2023-06-01', 100),
    (2, 1, '2023-06-02', 150),
    (3, 1, '2023-06-03', 200),
    (4, 1, '2023-06-04', 250),
    (5, 2, '2023-06-01', 300),
    (6, 2, '2023-06-02', 350),
    (7, 2, '2023-06-03', 400),
    (8, 2, '2023-06-04', 450);

	SELECT product_id, sale_date, sales_amount,
       AVG(sales_amount) OVER (PARTITION BY product_id ORDER BY sale_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg
FROM Sales;
