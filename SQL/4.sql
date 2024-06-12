--create a database Question4
create database Question4;
use Question4
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name NVARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO Products (product_id, product_name, price)
VALUES 
    (1, 'Laptop', 1000),
    (2, 'Laptop', 1200),
    (3, 'Phone', 800),
    (4, 'Tablet', 600),
    (5, 'Tablet', 650);

SELECT product_name
FROM products
GROUP BY product_name
HAVING COUNT(DISTINCT price) > 1;
