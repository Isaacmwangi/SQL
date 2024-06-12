
create database Question3;
use Question3
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name NVARCHAR(50)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name NVARCHAR(50)
);

CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    category_id INT
);

INSERT INTO Customers (customer_id, customer_name)
VALUES 
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');

INSERT INTO Categories (category_id, category_name)
VALUES 
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Groceries');

INSERT INTO Purchases (purchase_id, customer_id, category_id)
VALUES 
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    (4, 2, 1),
    (5, 2, 2);


SELECT c.customer_name 
FROM customers c
JOIN purchases p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(DISTINCT p.category_id) = (SELECT COUNT(*) FROM categories);
